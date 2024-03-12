import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:inciguesser_game/ui/common/custom_app_bar.dart';
import 'package:inciguesser_game/ui/home/widgets/home_footer.dart';
import 'package:inciguesser_game/ui/imprint/imprint_centered_view.dart';

class ImprintView extends StatelessWidget {
  const ImprintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context, 
        AppLocalizations.of(context)!.imprint, "/"),
      body: const Center(
        child: ImprintCenteredView()
      ),
      bottomNavigationBar: homeFooter(context),
    );
  }
}