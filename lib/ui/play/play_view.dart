import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PlayView extends StatefulWidget {
  const PlayView({super.key});

  @override
  State<PlayView> createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  final boxText = lorem(paragraphs: 1, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Guess the incident!"),),
      body: Center(
        child: Text(
            boxText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
      ),
    );
  }
}