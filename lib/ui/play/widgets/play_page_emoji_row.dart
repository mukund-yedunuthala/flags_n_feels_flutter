import 'package:flutter/material.dart';

RichText emojiRow(final String questionSet) {
  return RichText(
    text: TextSpan(
      text: questionSet,
      style: const TextStyle(fontFamily: 'OpenMoji', fontSize: 40.0),
    )
  );
}