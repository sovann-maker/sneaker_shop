import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('General')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Title(
                color: Colors.white,
                child: const Text(
                  'General',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          ListTile(
            title: const Text('Appearance'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThemeTile(),
                )),
          )
        ],
      ),
    );
  }
}

class ThemeTile extends StatefulWidget {
  const ThemeTile({super.key});

  @override
  State<ThemeTile> createState() => _ThemeTileState();
}

class _ThemeTileState extends State<ThemeTile> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appearance',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Dark theme'),
            trailing: _selectedIndex == 0 ? Icon(Icons.check) : null,
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
          ListTile(
            title: Text('Light theme'),
            trailing: _selectedIndex == 1 ? Icon(Icons.check) : null,
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          )
        ],
      ),
    );
  }
}
