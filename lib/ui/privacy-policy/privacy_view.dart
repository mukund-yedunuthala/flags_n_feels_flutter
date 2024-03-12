import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_app_bar.dart';
import 'package:guess_the_event_emoji_edition/ui/home/widgets/home_footer.dart';
import 'package:guess_the_event_emoji_edition/ui/privacy-policy/privacy_centered_view.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context, 
        AppLocalizations.of(context)!.privacyPolicyLead, "/"),
      body: const Center(
        child: PrivacyPolicyCenteredView()
      ),
      bottomNavigationBar: homeFooter(context),
    );
  }
}