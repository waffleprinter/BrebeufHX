import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/profile.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String pronouns;

  const ProfilePage({super.key, required this.name, required this.pronouns});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.amber[700],
      ),

      body: ListView(
        children: [
          // profile
          Icon(
            Icons.person,
            size: 72
          ),

          Text(
            widget.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            widget.pronouns,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ],
      )
    );
  }
}

//NOTE: this code is still missing the displaying of old results