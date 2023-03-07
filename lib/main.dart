import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferenced/providers.dart';
import 'package:shared_preferenced/screens/screens.dart';
import 'package:shared_preferenced/share_preference/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => ProviderTheme(isDarkMode: Preferences.isDarkMode))
      ],
      child: const MainApp(),
      )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const home_screen(),
        'settings': (_) => const settings_screens(),
      },
      theme: Provider.of<ProviderTheme>(context).currentTheme,
    );
  }
}
