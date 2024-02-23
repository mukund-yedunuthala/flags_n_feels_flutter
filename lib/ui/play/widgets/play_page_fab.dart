import 'package:flutter/material.dart';
Widget playPageFAB(Function onPressed) {
  return FloatingActionButton.large(
    onPressed: () {
      onPressed();
    },
    tooltip: 'Refresh',
    child: const Icon(Icons.refresh),
  );
}