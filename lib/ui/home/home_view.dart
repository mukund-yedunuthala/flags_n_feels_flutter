import 'package:flutter/material.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_centered_view.dart';

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return HomeViewMobile(title: widget.title);
          } else {
            return HomeViewLarge(title: widget.title);
          }
        },
      ),
    );
  }
}