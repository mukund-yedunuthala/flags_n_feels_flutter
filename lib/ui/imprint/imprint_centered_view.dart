import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImprintCenteredView extends StatelessWidget {
  const ImprintCenteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 250),
          imprintBodyText(context),
        ],
      ),
    );
  }
}

Text imprintBodyText(BuildContext context) {
  return Text(
      AppLocalizations.of(context)!.imprintText,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.justify,
  );
}