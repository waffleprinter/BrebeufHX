import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/profile_display.dart';

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
                onPressed: () {
                  String name_variable = myController.text;
                  String pronoun_variable = myController2.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(
                        name: name_variable,
                        pronouns: pronoun_variable,
              
                      ),
        
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

