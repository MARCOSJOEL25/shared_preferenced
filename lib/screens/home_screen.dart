import 'package:flutter/material.dart';
import 'package:shared_preferenced/widget/widget.dart';
import 'package:shared_preferenced/share_preference/preferences.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(),
          Text('IsDarkMode ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Genero ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de Usuario ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
