import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_app/modules/home/home_state.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }
    return ListView(
      children: [
        for (var msg in appState.favorites)
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.favorite),
                title: Text(msg.asLowerCase),
              ))
      ],
    );
  }
}
