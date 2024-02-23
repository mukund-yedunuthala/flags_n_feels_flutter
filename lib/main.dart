import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inciguesser_game/ui/about/about_view.dart';
import 'package:inciguesser_game/ui/home/home_view.dart';
import 'package:inciguesser_game/ui/imprint/imprint_view.dart';
import 'package:inciguesser_game/ui/play/play_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:inciguesser_game/ui/privacy-policy/privacy_view.dart';
Future<void> main() async{
  await dotenv.load(fileName: ".env");
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
      ),
      GoRoute(
        name: "imprint",
        path: "/imprint",
        builder: (context, state) => const ImprintView(),
      ),
      GoRoute(
        name: "privacy-policy",
        path: "/privacy-policy",
        builder: (context, state) => const PrivacyPolicyView(),
      )
    ]
  );

  MyApp({super.key});
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
