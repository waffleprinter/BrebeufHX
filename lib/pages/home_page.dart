import 'package:brebeuf_hx/pages/page1.dart';
import 'package:brebeuf_hx/pages/page2.dart';
import 'package:brebeuf_hx/pages/page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: TabBar(
              onTap: (index) {
                switch (index) {
                  case 0:
                    // DOES NOTHING SINCE WE ARE ALREADY ON THE HOME PAGE
                    break;

                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()), // SWITCH TO QUIZ
                    );
                    break;

                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()), // SWITCH TO RESOURCES
                    );
                    break;

                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()), // SWITCH TO PROFILE
                    );
                    break;
                }
              },
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.question_mark), text: "Quiz"),
                  Tab(icon: Icon(Icons.book), text: "Res."),
                  Tab(icon: Icon(Icons.face), text: "Profile")
                ]
            ),
          ),
        )
    );
  }
}
