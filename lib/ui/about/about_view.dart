import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:guess_the_event_emoji_edition/ui/about/about_centered_view.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_app_bar.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_footer.dart';

class AboutViewState extends StatefulWidget {
  const AboutViewState({super.key});

  @override
  State<AboutViewState> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutViewState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 
      AppLocalizations.of(context)!.aboutLeadText, "/"),
      body: const Center(
        child: AboutCenteredView()
      ),
      bottomNavigationBar: customFooter(context),
    );
  }
}