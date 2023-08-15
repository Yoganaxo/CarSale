import 'package:flutter/material.dart';

class UserProfile {
  String name;
  String email;

  UserProfile({required this.name, required this.email});
}

class UserSettings {
  String theme;
  bool notifications;

  UserSettings({required this.theme, required this.notifications});
}

class ProfileSettingsPage extends StatefulWidget {
  final UserProfile userProfile;
  final UserSettings userSettings;

  ProfileSettingsPage({required this.userProfile, required this.userSettings});

  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  void _updateProfile() {
    // Perform the profile update logic here
  }

  void _changeTheme(String newTheme) {
    // Perform the theme change logic here
  }

  void _toggleNotifications(bool value) {
    // Perform the notifications toggle logic here
  }

  void _logout() {
     Navigator.pushNamed(context, '/loginPage');
    // Perform the logout logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile and Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            title: Text('Username'),
            subtitle: Text(widget.userProfile.name),
            onTap: () {
              // Navigate to the profile editing screen
            },
          ),
          ListTile(
            title: Text('Email'),
            subtitle: Text(widget.userProfile.email),
          ),
          Divider(),
          ListTile(
            title: Text('Theme'),
            subtitle: Text(widget.userSettings.theme),
            onTap: () {
              // Navigate to the theme selection screen
            },
          ),
          ListTile(
            title: Text('Notifications'),
            subtitle: Text(widget.userSettings.notifications ? 'On' : 'Off'),
            trailing: Switch(
              value: widget.userSettings.notifications,
              onChanged: (value) {
                setState(() {
                  _toggleNotifications(value);
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: Text('Logout'),
            onPressed: _logout,
          ),
        ],
      ),
    );
  }
}

// Example usage
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProfile = UserProfile(name: 'John Doe', email: 'john@example.com');
    final userSettings = UserSettings(theme: 'Default', notifications: true);

    return MaterialApp(
      title: 'User Profile and Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileSettingsPage(userProfile: userProfile, userSettings: userSettings),
    );
  }
}
