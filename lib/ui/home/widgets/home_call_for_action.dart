import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

FilledButton homeCallForAction(BuildContext context) {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(400, 100),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  return FilledButton(
    style: raisedButtonStyle,
    onPressed: () => context.go("/play"),
    child: const Text(
      "Let's play!", 
      style: TextStyle(fontSize: 30),
    ),
  );
}