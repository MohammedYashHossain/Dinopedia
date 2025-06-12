import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _toggleNotifications(bool value) {
    // Placeholder for notifications toggle
  }

  void _toggleDarkMode(bool value) {
    // Placeholder for dark mode toggle
  }

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'Dinopedia',
      applicationVersion: '1.0.0',
      applicationIcon: const FlutterLogo(size: 64),
      children: const [
        Text('A dinosaur card collection app inspired by Pokémon TCG Pocket.'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            subtitle: const Text('Manage pack opening reminders'),
            trailing: Switch(
              value: true,
              onChanged: _toggleNotifications,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            subtitle: const Text('Toggle dark theme'),
            trailing: Switch(
              value: false,
              onChanged: _toggleDarkMode,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            subtitle: const Text('App version and credits'),
            onTap: () => _showAboutDialog(context),
          ),
        ],
      ),
    );
  }
} 