import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inciguesser_game/ui/about/about_view.dart';
import 'package:inciguesser_game/ui/home/home_view.dart';
import 'package:inciguesser_game/ui/play/play_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) => const HomePageState(title: "Flags & Feels"),
      ),
      GoRoute(
        name: "play",
        path: "/play",
        builder: (context, state) => const PlayView(),
      ),
      GoRoute(
        name: "about",
        path: "/about",
        builder: (context, state) => const AboutViewState(),
      )
    ]
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flags & Feels',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
