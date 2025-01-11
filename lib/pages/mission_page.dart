import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 250),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
