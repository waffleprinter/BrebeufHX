import 'package:brebeuf_hx/components/shared_preferences_utils.dart';
import 'package:brebeuf_hx/pages/home_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState1();
}

class _ProfileState1 extends State<Profile> {
  TextEditingController myController = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();

  String first_prompt = "Please enter your username";
  String second_prompt = "Please enter your pronouns";
  String third_prompt = "Please write a short bio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a profile"),
        backgroundColor: Colors.grey.shade300,
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

              TextField(
                  controller: myController3,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: third_prompt
                  ),
                  onSubmitted: (String value){
                    //pronouns();
                  }
              ),

              ElevatedButton(
                onPressed: () async {
                  String name_variable = myController.text;
                  String pronoun_variable = myController2.text;
                  String bio_variable = myController3.text;

                  // Get the singleton instance
                  final prefs = await SharedPreferencesUtils.getInstance();

                  // Save the values using the instance
                  await prefs.saveString("name", name_variable);
                  await prefs.saveString("pronouns", pronoun_variable);
                  await prefs.saveString("bio", bio_variable);

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

