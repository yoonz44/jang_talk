import 'package:flutter/material.dart';

class Free extends StatefulWidget {
  const Free({Key? key}) : super(key: key);

  @override
  _FreeState createState() => _FreeState();
}

class _FreeState extends State<Free> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '자유롭게 작성해주세요'
      ),
    );
  }
}
