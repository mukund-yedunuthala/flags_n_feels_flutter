import 'package:flutter/material.dart';
import 'package:inciguesser_game/ui/home/widgets/home_footer.dart';
import 'package:inciguesser_game/ui/imprint/imprint_centered_view.dart';

class ImprintView extends StatelessWidget {
  const ImprintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imprint"),),
      body: const Center(
        child: ImprintCenteredView()
      ),
      bottomNavigationBar: homeFooter(context),
    );
  }
}