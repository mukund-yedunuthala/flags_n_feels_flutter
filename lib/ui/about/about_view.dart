import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:inciguesser_game/ui/about/about_centered_view.dart';
import 'package:inciguesser_game/ui/home/widgets/home_footer.dart';

class AboutViewState extends StatefulWidget {
  const AboutViewState({super.key});

  @override
  State<AboutViewState> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutViewState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.aboutLeadText)),
      body: const Center(
        child: AboutCenteredView()
      ),
      bottomNavigationBar: homeFooter(context),
    );
  }
}