import 'package:flutter/material.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_call_for_action.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_text_wall.dart';

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
          // homeLeadTitleText(context),
          const SizedBox(height: 50),
          homeBodyText(context),
          const SizedBox(height: 50),
          homeCallForAction(context)
        ],
      ),
    );
  }
}