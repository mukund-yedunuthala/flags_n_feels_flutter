import 'package:flutter/material.dart';

Widget optionButton(
  String leadText, 
  String answerString, 
  void Function() refreshPage
) {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(500, 75),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  return FilledButton(
    style: raisedButtonStyle,
    onPressed: () => {checkCorrect(leadText, answerString, refreshPage)},
    child: Text(
      leadText, 
      style: const TextStyle(fontSize: 18),
    ),
  );
}

void checkCorrect(
  String leadText, 
  String answerString, 
  void Function() refreshPage
) {
  if (leadText == answerString) {
    refreshPage();
  }
}



  