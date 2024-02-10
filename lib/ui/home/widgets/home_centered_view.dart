import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:inciguesser_game/ui/home/widgets/home_call_for_action.dart';
import 'package:inciguesser_game/ui/home/widgets/home_text_wall.dart';

class HomeCenteredView extends StatelessWidget {
  const HomeCenteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 200),
          homeLeadTitleText(context),
          const SizedBox(height: 50),
          homeBodyText(context),
          const SizedBox(height: 150),
          homeCallForAction(context)
        ],
      ),
    );
  }
}