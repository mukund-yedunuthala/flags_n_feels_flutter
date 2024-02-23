import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PrivacyPolicyCenteredView extends StatelessWidget {
  const PrivacyPolicyCenteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 250),
          policyBodyText(context),
        ],
      ),
    );
  }
}

Text policyBodyText(BuildContext context) {
  final boxText = lorem(paragraphs: 1, words: 50);
  return Text(
      boxText,
      style: Theme.of(context).textTheme.bodyLarge,
  );
}