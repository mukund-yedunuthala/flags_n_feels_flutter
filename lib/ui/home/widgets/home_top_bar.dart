import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';


PreferredSizeWidget homeTopBar(String title, BuildContext context) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontSize: 30),  
    ),
    actions: [
      const TextButton(
        onPressed: _launchSource, 
        child: Text("Source")
        ),
      TextButton(
        onPressed: () => context.go("/about"), 
        child: const Text("About")),
    ],
    centerTitle: true,
  );
}

_launchSource() async {
  final Uri _source_uri = Uri.parse("https://git.mukund-yedunuthala.de/mukund-yedunuthala/flags_n_feels_flutter");
  if (!await launchUrl(_source_uri)) {
    throw Exception('Could not launch $_source_uri');
  }
}