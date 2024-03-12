import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:inciguesser_game/ui/home/widgets/home_footer.dart';
import 'package:inciguesser_game/ui/play/play_viewmodel.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_app_bar.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_emoji_row.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_fab.dart';
import 'package:inciguesser_game/ui/play/widgets/play_page_text_constants.dart';

import 'widgets/play_page_options_button.dart';

class PlayView extends StatefulWidget {
  const PlayView({super.key});

  @override
  State<PlayView> createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  late Future<List> result;
  @override
  void initState() {
    super.initState();
    result = getDataFromAppWrite();
  } 
  void _refreshPage() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: playPageAppBar(context, AppLocalizations.of(context)!.playLeadTitle, "/"),
      body: FutureBuilder(
        future: result,
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final emojiSet = snapshot.data?[0];
            final answersSet = snapshot.data?[1];
            final questionSetIdx = pickRandomIndices(emojiSet);
            final questionSet = emojiSet[questionSetIdx[0]];
            final answerString = answersSet[questionSetIdx[0]];
            final options = questionSetIdx[1].map((index) 
                        => answersSet[index]).toList();
            List<Widget> children = [
              bodyTextRow(AppLocalizations.of(context)!.playBodyText),
              const SizedBox(height: 40),
              emojiRow(questionSet),
              const SizedBox(height: 40),
            ];
            for (var i = 0; i < options.length; i++) {
                children.add(optionButton(options[i], answerString, _refreshPage));
                children.add(const SizedBox(height: 20));
            }
            return Container(
              alignment: Alignment.center,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children
            ),
          );
          }
        }
      ),
      floatingActionButton: playPageFAB(_refreshPage),
      bottomNavigationBar: homeFooter(context),
    );
  }
}