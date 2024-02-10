import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class AboutViewState extends StatefulWidget {
  const AboutViewState({super.key});

  @override
  State<AboutViewState> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutViewState> {
  final boxText = lorem(paragraphs: 1, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About this app"),),
      body: Center(
        child: Text(
            boxText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
      ),
    );
  }
}