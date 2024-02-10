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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Guess the incident based on this set of emoji:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            RichText(
              text: const TextSpan(
                text: "🇨🇺 🚀 ☢️ 🤯",
                style: TextStyle(fontFamily: 'OpenMoji', fontSize: 40.0),
              )
            )
          ]
        ),
      )
    );
  }
}