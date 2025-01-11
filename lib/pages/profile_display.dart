import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/profile.dart';

import '../components/shared_preferences_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Loading...";
  String pronouns = "Loading...";

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final prefs = await SharedPreferencesUtils.getInstance();
    setState(() {
      name = prefs.getString('name') ?? "No Name"; // Fallback if no data
      pronouns = prefs.getString('pronouns') ?? "No Pronouns";
    });
  }

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
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            pronouns,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ],
      )
    );
  }
}

//NOTE: this code is still missing the displaying of old results