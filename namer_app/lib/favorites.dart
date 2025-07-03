import 'package:flutter/material.dart';
import 'package:namer_app/main.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          padding: const EdgeInsets.all(20),
          children: appState.favorites
              .map((favorite) => Text(favorite.asLowerCase))
              .toList(),
        ),
      ),
    );
  }
}
