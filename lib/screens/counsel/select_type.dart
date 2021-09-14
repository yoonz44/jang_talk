import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jang_talk/screens/counsel/counsel.dart';

class SelectType extends StatelessWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _typeButton('질문 & 답변 형식', () => Get.to(Qna())),
              ],
            )
        )
    );
  }

  Widget _typeButton(title, Function _onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          _onPressed();
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(vertical: 30),
          ),
        ),
        child: Text(
          title,
        ),
      ),
    );
  }
}


