import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:guess_the_event_emoji_edition/ui/about/about_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:guess_the_event_emoji_edition/ui/home/home_view.dart';
import 'package:guess_the_event_emoji_edition/ui/imprint/imprint_view.dart';
import 'package:guess_the_event_emoji_edition/ui/play/play_view.dart';
import 'package:guess_the_event_emoji_edition/ui/privacy-policy/privacy_view.dart';
Future<void> main() async{
  await dotenv.load(fileName: "keys.env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) => HomePageState(title: AppLocalizations.of(context)!.appName),
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
      title: "Guess the Event: Emoji edition",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
