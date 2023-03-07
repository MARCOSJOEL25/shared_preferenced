import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferenced/providers.dart';
import 'package:shared_preferenced/share_preference/preferences.dart';

import '../widget/widget.dart';

class settings_screens extends StatefulWidget {
  const settings_screens({super.key});

  @override
  State<settings_screens> createState() => _settings_screensState();
}

class _settings_screensState extends State<settings_screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                value: Preferences.isDarkMode,
                title: const Text('DarkMode'),
                onChanged: (value) {
                  Preferences.isDarkMode = value;

                  final provider = Provider.of<ProviderTheme>(context);

                  value ? provider.setDarkMode : provider.setLightMode;

                  setState(() {});
                },
              ),
              RadioListTile<int>(
                value: 1,
                title: const Text('Masculino'),
                groupValue: Preferences.gender,
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                title: const Text('Femenino'),
                groupValue: Preferences.gender,
                onChanged: (value) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
