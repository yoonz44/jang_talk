import 'package:flutter/material.dart';

class Qna extends StatefulWidget {
  const Qna({Key? key}) : super(key: key);

  @override
  _QnaState createState() => _QnaState();
}

class _QnaState extends State<Qna> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '질문에 답변을 해주세요'
      ),
    );
  }
}
