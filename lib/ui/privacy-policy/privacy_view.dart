import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:inciguesser_game/ui/home/widgets/home_footer.dart';
import 'package:inciguesser_game/ui/privacy-policy/privacy_centered_view.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.privacyPolicyLead),),
      body: const Center(
        child: PrivacyPolicyCenteredView()
      ),
      bottomNavigationBar: homeFooter(context),
    );
  }
}