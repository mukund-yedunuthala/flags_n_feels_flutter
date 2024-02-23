import 'package:flutter/material.dart';

Widget homeFooter() {
  List<Widget> row_children = [
    TextButton(
      onPressed: () => {}, 
      child: Text("Imprint")
    ),
    TextButton(
      onPressed: () => {}, 
      child: Text("Privacy Policy")
    ),
    TextButton(
      onPressed: () => {}, 
      child: Text("License")
    ),
  ];
  return Container(
    padding: const EdgeInsets.all(12),
    height: 100.0,
    color: Colors.grey[200],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: row_children,
        ),
        const Text(
          "Copyright © 2024 Venkata Mukund Kashyap Yedunuthala"
        )
      ],
    )
  );
}