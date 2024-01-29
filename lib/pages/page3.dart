import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/theme.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page3> {
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.navbarColor,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () {
              // Handle account option click
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: const Text('Notifications'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: const Text('Language'),
            trailing: DropdownButton<String>(
              value: 'English',
              onChanged: (value) {
                // Handle language selection
              },
              items: <String>['English', 'French', 'Spanish']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          // Add more list items here
        ],
      ),
    );
  }
}

