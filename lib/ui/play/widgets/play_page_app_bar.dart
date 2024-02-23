import 'package:flutter/material.dart';

PreferredSizeWidget playPageAppBar(String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontSize: 30
    ),
  );
}