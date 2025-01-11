import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  bool _hasTakenQuiz = false;
  bool _hasVisitedResourcePage = false;
  bool _hasTalkedToMentor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.lightbulb, size: 30),
                  Icon(Icons.circle_outlined, size: 100)
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "OUR ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36
                        )
                      ),
                      TextSpan(
                        text: "MISSION",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 36
                        )
                      )
                    ]
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                child: Text(
                  "We know that choosing a career path can be overwhelming. "
                      "We're here to help individuals choose a career by "
                      "discovering their true passions, strengths, and values.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 20), // PADDING

              CheckboxListTile(
                value: _hasTakenQuiz,
                onChanged: (bool? value) {
                  setState(() {
                    _hasTakenQuiz = !_hasTakenQuiz;
                  });
                },
                title: Text("Take the quiz to help you find your dream job"),
                controlAffinity: ListTileControlAffinity.leading,
              ),

              CheckboxListTile(
                value: _hasVisitedResourcePage,
                onChanged: (bool? value) {
                  setState(() {
                    _hasVisitedResourcePage = !_hasVisitedResourcePage;
                  });
                },
                title: Text("Check out the resources page"),
                controlAffinity: ListTileControlAffinity.leading,
              ),

              CheckboxListTile(
                value: _hasTalkedToMentor,
                onChanged: (bool? value) {
                  setState(() {
                    _hasTalkedToMentor = !_hasTalkedToMentor;
                  });
                },
                title: Text("Talk to a mentor"),
                controlAffinity: ListTileControlAffinity.leading,
              )
            ],
          ),
        ),
      ),
    );
  }
}
