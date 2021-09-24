import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jang_talk/screens/home/home.dart';

class Qna extends StatefulWidget {
  const Qna({Key? key}) : super(key: key);

  @override
  _QnaState createState() => _QnaState();
}

class _QnaState extends State<Qna> {
  final _key = GlobalKey<QuestionFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ConditionalQuestions(
          key: _key,
          children: questions(),
          trailing: [
            MaterialButton(
              color: Colors.deepOrange,
              splashColor: Colors.orangeAccent,
              onPressed: () async {
                // if (_key.currentState!.validate()) {
                //   print("validated!");
                // }
                Get.off(() => HomeMain());
              },
              child: Text("Submit"),
            )
          ],
          leading: [Text("TITLE")],
        ),
      ),
    );
  }

  List<Question> questions() {
    return [
      Question(
        question: "What is your name?",
        //isMandatory: true,
        validate: (field) {
          if (field.isEmpty) return "Field cannot be empty";
          return null;
        },
      ),
      PolarQuestion(
          question: "Have you made any donations in the past?",
          answers: ["Yes", "No"],
          isMandatory: true),
      PolarQuestion(
          question: "In the last 3 months have you had a vaccination?",
          answers: ["Yes", "No"]),
      PolarQuestion(
          question: "Have you ever taken medication for HIV?",
          answers: ["Yes", "No"]),
      NestedQuestion(
        question: "The series will depend on your answer",
        answers: ["Yes", "No"],
        children: {
          'Yes': [
            PolarQuestion(
                question: "Have you ever taken medication for H1n1?",
                answers: ["Yes", "No"]),
            PolarQuestion(
                question: "Have you ever taken medication for Rabies?",
                answers: ["Yes", "No"]),
            Question(
              question: "Comments",
            ),
          ],
          'No': [
            NestedQuestion(
                question: "Have you sustained any injuries?",
                answers: [
                  "Yes",
                  "No"
                ],
                children: {
                  'Yes': [
                    PolarQuestion(
                        question: "Did it result in a disability?",
                        answers: ["Yes", "No", "I prefer not to say"]),
                  ],
                  'No': [
                    PolarQuestion(
                        question:
                            "Have you ever been infected with chicken pox?",
                        answers: ["Yes", "No"]),
                  ]
                }),
          ],
        },
      )
    ];
  }
}
