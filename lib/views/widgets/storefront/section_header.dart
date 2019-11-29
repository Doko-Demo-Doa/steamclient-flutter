import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final text;
  SectionHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      alignment: Alignment.centerLeft,
      child: Text('FEATURED & RECOMMENDED', style: TextStyle(color: Colors.white)),
    );
  }
}