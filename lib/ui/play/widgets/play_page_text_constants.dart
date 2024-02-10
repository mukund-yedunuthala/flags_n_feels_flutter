import 'package:flutter/material.dart';

const String leadTitle = "Guess the incident!";
const String bodyText = 'Guess the incident based on this set of emoji:';

Text bodyTextRow(final String bodyText) {
  return Text(
              bodyText,
              style: const TextStyle(
                fontSize: 30,
              ),
            );
}