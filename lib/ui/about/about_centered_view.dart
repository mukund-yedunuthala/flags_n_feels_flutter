import 'package:flutter/material.dart';
import 'package:guess_the_event_emoji_edition/ui/about/widgets/about_body_text.dart';

class AboutCenteredView extends StatelessWidget {
  const AboutCenteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 250),
          aboutBodyText(context),
        ],
      ),
    );
  }
}