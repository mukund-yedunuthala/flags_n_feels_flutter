import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

Widget homeLeadTitleText(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child:Text(
      "Flags & Feels!",
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w600 
      ),
    )
  );
}

Text homeBodyText(BuildContext context) {
  final boxText = lorem(paragraphs: 1, words: 50);
  return Text(
      boxText,
      style: Theme.of(context).textTheme.bodyLarge,
  );
}