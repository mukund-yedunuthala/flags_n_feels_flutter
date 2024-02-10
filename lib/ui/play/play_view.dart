import 'package:flutter/material.dart';
import 'package:inciguesser_game/ui/play/play_viewmodel.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_fab.dart';

class PlayView extends StatefulWidget {
  const PlayView({super.key});

  @override
  State<PlayView> createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  void _refreshPage() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final questionSet = pickRandom(EMOJI_SET);
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
              text: TextSpan(
                text: questionSet,
                style: const TextStyle(fontFamily: 'OpenMoji', fontSize: 40.0),
              )
            )
          ]
        ),
      ),
      floatingActionButton: playPageFAB(_refreshPage),
    );
  }
}