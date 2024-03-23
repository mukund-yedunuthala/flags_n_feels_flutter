import 'package:flutter/material.dart';

Text bodyTextRow(final String bodyText) {
  return Text(
              bodyText,
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            );
}