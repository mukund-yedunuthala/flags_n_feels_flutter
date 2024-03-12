import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget customAppBar(BuildContext context, String leadTitle, String backPressRoute) {
  return AppBar(
    title: Text(leadTitle),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back), onPressed: () {
        context.go(backPressRoute);
    },),
    centerTitle: true,
    titleTextStyle: Theme.of(context).textTheme.displaySmall,
  );
}