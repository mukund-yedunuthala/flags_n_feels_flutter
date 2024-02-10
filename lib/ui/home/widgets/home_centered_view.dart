import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:go_router/go_router.dart';

class HomeCenteredView extends StatelessWidget {
  const HomeCenteredView({super.key});

  @override
  Widget build(BuildContext context) {
    final boxText = lorem(paragraphs: 1, words: 50);
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 200),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Text(
              "Title again!",
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ),
          const SizedBox(height: 50),
          Text(
            boxText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 150),
          FilledButton(
            onPressed: () => context.go("/play"), 
            child: const Text("Let's play!", style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}