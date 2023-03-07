import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/menu-img.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.ice_skating_rounded),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.abc_rounded),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.wallet_giftcard),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'settings');
            },
          ),
        ],
      ),
    );
  }
}
