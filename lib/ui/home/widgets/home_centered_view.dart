import 'package:flutter/material.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_footer.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_call_for_action.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_text_wall.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_top_bar.dart';


class HomeViewLarge extends StatelessWidget {
  final String title;
  const HomeViewLarge({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeTopBarLarge(title, context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            const SizedBox(height: 50),
            homeBodyTextLarge(context),
            const SizedBox(height: 50),
            homeCallForActionLarge(context)
          ],
        ),
      ),
      bottomNavigationBar: customFooter(context),
    );
  }
}


class HomeViewMobile extends StatelessWidget {
  final String title;
  const HomeViewMobile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            homeTopBarMobile(title, context),
            const SizedBox(height: 50),
            homeBodyTextMobile(context),
            homeCallForActionMobile(context)
          ],
        ),
      ),
      bottomNavigationBar: customFooter(context),
    );
  }
}