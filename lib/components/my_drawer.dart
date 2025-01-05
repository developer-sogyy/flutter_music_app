import 'package:flutter/material.dart';
import 'package:flutter_music_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //Note: logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //Note: home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("HOME"),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),

          //Note: settings title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("SETTINGS"),
              leading: const Icon(Icons.settings),
              onTap: () {
                //Note: pop drawer
                Navigator.pop(context);

                //Note: navigate to settings page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}