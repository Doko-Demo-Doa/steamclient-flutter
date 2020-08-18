import 'package:flutter/material.dart';
import 'package:steamclient/main.dart';

class DuoPage extends StatelessWidget {
void _updateDualScreenInfo() async {
    final bool isDual = await platform.invokeMethod('isDualScreenDevice');
    final bool isSpanned = await platform.invokeMethod('isAppSpanned');
    final double hingeAngle = await platform.invokeMethod('getHingeAngle');
    
    print('isDualScreenDevice : $isDual');
    print('isAppSpanned : $isSpanned');
    print('hingeAngle : $hingeAngle');
}

  @override
  Widget build(BuildContext context) {
    _updateDualScreenInfo();
    return Container(
      
    );
  }
}