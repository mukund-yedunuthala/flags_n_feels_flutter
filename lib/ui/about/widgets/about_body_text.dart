import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

Text aboutBodyText(BuildContext context) {
  final boxText = lorem(paragraphs: 1, words: 50);
  return Text(
      boxText,
      style: Theme.of(context).textTheme.bodyLarge,
  );
}