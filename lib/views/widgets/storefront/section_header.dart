import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final text;
  SectionHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 12, 20, 12),
      alignment: Alignment.centerLeft,
      child: Text('Featured & Recommended',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
    );
  }
}
