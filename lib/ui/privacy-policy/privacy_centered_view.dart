import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  return Text(
      AppLocalizations.of(context)!.privacyPolicy,
      style: Theme.of(context).textTheme.titleLarge,
  );
}