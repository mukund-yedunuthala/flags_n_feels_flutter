import 'package:flutter/material.dart';
import 'package:inciguesser_game/ui/home/widgets/home_centered_view.dart';
import 'package:inciguesser_game/ui/home/widgets/home_top_bar.dart';

class HomePageState extends StatefulWidget {
  final String title;
  const HomePageState({super.key, required this.title});

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeTopBar(widget.title, context),
      body: const Center(
        child: HomeCenteredView(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}