import 'package:brebeuf_hx/components/shared_preferences_utils.dart';
import 'package:brebeuf_hx/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/profile_display.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:brebeuf_hx/components/shared_preferences_utils.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState1();
}

class _ProfileState1 extends State<Profile> {
  TextEditingController myController = TextEditingController();
  TextEditingController myController2 = TextEditingController();

  String first_prompt = "Please enter your username";
  String second_prompt = "Please enter your pronouns";

  /*
  String name_variable = "Placeholder name";
  String pronoun_variable = "Placeholder name";


  
  String name_varible = "Placeholder";
  String pronoun_variable = "Placeholder";
 

  void newUser(){
    String name_variable = myController.text;
  }
  void pronouns(){
    String pronoun_variable = myController2.text;
  }

  */
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Create a profile"),
        backgroundColor: Colors.amber[700],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 72,
                color: Colors.amber[900],
              ),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: first_prompt
                ),
                onSubmitted: (String value){
                  //newUser;
                }
              ),

              TextField(
                controller: myController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: second_prompt
                ),
                onSubmitted: (String value){
                  //pronouns();
                }
              ),

              ElevatedButton(
                onPressed: () async {
                  String name_variable = myController.text;
                  String pronoun_variable = myController2.text;

                  // Get the singleton instance
                  final prefs = await SharedPreferencesUtils.getInstance();

                  // Save the values using the instance
                  await prefs.saveString("name", name_variable);
                  await prefs.saveString("pronouns", pronoun_variable);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage()
                      ),
                  );
                },
                child: Text("Create account"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

