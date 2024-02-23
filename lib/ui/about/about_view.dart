import 'package:flutter/material.dart';
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
      appBar: AppBar(title: const Text("About this app"),),
      body: const Center(
        child: AboutCenteredView()
      ),
      bottomNavigationBar: homeFooter(),
    );
  }
}