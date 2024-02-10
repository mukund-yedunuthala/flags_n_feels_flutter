import 'package:flutter/material.dart';
import 'package:inciguesser_game/ui/play/play_viewmodel.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_app_bar.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_emoji_row.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_fab.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_text_constants.dart';

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
      appBar: playPageAppBar(leadTitle),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bodyTextRow(bodyText),
            const SizedBox(height: 40),
            emojiRow(questionSet)
          ]
        ),
      ),
      floatingActionButton: playPageFAB(_refreshPage),
    );
  }
}