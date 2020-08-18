import 'package:flutter/widgets.dart';
import 'package:steamclient/utils/utils_numeric.dart';

class SVGHelper {
  // Extract an instruction from an SVG command string
  RegExp _svgInstructionPattern = new RegExp("([a-zA-Z])([^a-zA-Z]+)");
  // Extract coordinates
  RegExp _svgCoordinatesPattern = new RegExp("-?\\d*\\.?\\d*");
  // Extract SVG path data fields from an SVG input
  RegExp _svgPathPattern = new RegExp("""<path .*(?<= )d="([^"]+)".*/>""");

  String extractPathData(String input) {
    return _svgPathPattern.allMatches(input).map((e) => e.group(0)).join();
  }

  List<double> getCoordinatesGroup(String input, [int groupSize = 4]) {
    var listMatched = _svgCoordinatesPattern
        .allMatches(input)
        .toList()
        .where((e) => isNumeric(e.group(0)))
        .map((e) => double.parse(e.group(0)))
        .toList();

    return listMatched;
  }

  Path buildPath(String inputData) {
    Path p = Path();
    // print(getCoordinatesGroup(inputData));
    try {
      var matcher = _svgInstructionPattern.allMatches(inputData).toList();

      var lastX = 0.0;
      var lastY = 0.0;
      var lastX1 = 0.0;
      var lastY1 = 0.0;
      var subPathStartX = 0.0;
      var subPathStartY = 0.0;
      var curve = false;

      matcher.forEach((matchElem) {
        var command = matchElem.group(1);
        var coordinateStr = matchElem.group(2);
        // print("[$command]: $coordinateStr");

        switch (command.toLowerCase()) {
          case 'm':
            var it = coordinateStr.split(',');
            var x = double.parse(it[0]);
            var y = double.parse(it[1]);

            // Check if command is uppercase:
            if (command == command.toUpperCase()) {
              subPathStartX = x;
              subPathStartY = y;
              p.moveTo(x, y);
              lastX = x;
              lastY = y;
            } else {
              subPathStartX += x;
              subPathStartY += y;
              p.moveTo(x, y);
              lastX += x;
              lastY += y;
            }
            break;
          case 'l':
            var it = coordinateStr.split(',');
            var x = double.parse(it[0]);
            var y = double.parse(it[1]);
            if (command == command.toUpperCase()) {
              p.lineTo(x, y);
              lastX = x;
              lastY = y;
            } else {
              p.relativeLineTo(x, y);
              lastX += x;
              lastY += y;
            }
            break;
          case 'v':
            List<double> coordinates = getCoordinatesGroup(coordinateStr);
            var y = coordinates.first;
            if (command == command.toUpperCase()) {
              p.lineTo(lastX, y);
              lastY = y;
            } else {
              p.relativeLineTo(0.0, y);
              lastY += y;
            }
            break;
          case 'h':
            List<double> coordinates = getCoordinatesGroup(coordinateStr);
            var x = coordinates.first;
            if (command == command.toUpperCase()) {
              p.lineTo(x, lastY);
              lastX = x;
            } else {
              p.relativeLineTo(x, 0.0);
              lastX += x;
            }
            break;
          case 'c':
            curve = true;
            List<double> coordinates = getCoordinatesGroup(coordinateStr);
            var x1 = coordinates[0];
            var y1 = coordinates[1];

            var x2 = coordinates[2];
            var y2 = coordinates[3];

            var x = coordinates[4];
            var y = coordinates[5];

            if (command == command.toLowerCase()) {
              x1 += lastX;
              x2 += lastX;
              x += lastX;
              y1 += lastY;
              y2 += lastY;
              y += lastY;
            }

            p.cubicTo(x1, y1, x2, y2, x, y);

            lastX1 = x2;
            lastY1 = y2;
            lastX = x;
            lastY = y;

            break;
          case 's':
            curve = true;
            List<double> coordinates = getCoordinatesGroup(coordinateStr);
            var x2 = coordinates[0];
            var y2 = coordinates[1];

            var x = coordinates[2];
            var y = coordinates[3];

            if (command == command.toLowerCase()) {
              x2 += lastX;
              x += lastX;
              y2 += lastY;
              y += lastY;
            }

            var x1 = 2 * lastX - lastX1;
            var y1 = 2 * lastY - lastY1;

            p.cubicTo(x1, y1, x2, y2, x, y);
            lastX1 = x2;
            lastY1 = y2;
            lastX = x;
            lastY = y;

            break;
          case 'z':
            p.close();
            p.moveTo(subPathStartX, subPathStartY);
            lastX = subPathStartX;
            lastY = subPathStartY;
            lastX1 = subPathStartX;
            lastY1 = subPathStartY;
            break;
          default:
            throw Error();
        }
      });

      if (!curve) {
        lastX1 = lastX;
        lastY1 = lastY;
      }

      return p;
    } catch (_) {
      print(_);
      return null;
    }
  }
}
