import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/profile.dart';

import '../components/shared_preferences_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "";
  String pronouns = "";
  String bio = "";

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
      bio = prefs.getString('bio') ?? "No bio";
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
            children: [
              // profile
              Icon(
                Icons.person,
                size: 72
              ),

              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                pronouns,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      bio,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text("Recreate Profile"),
              ),
            ],
          ),
        ),
      )
    );
  }
}

//NOTE: this code is still missing the displaying of old results


// TO DO
// ADD A TO DO LIST TO THE HOME PAGE
// ADD PROFILE EDITING BUTTON
// ADD BIO