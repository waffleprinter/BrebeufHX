import 'package:brebeuf_hx/pages/CostumizedWigets/SectionTile.dart';
import 'package:flutter/material.dart';

import '../class/Quiz.dart';
import '../home_page.dart';
class QuizInterface extends StatefulWidget {
  final List<double> weight = [0.2, 0.3, 0.3, 0.2];
  final options = [[
    // Interests
    ['Creating something', 'Meeting new people', 'Learning something new'],
    ['Art class', 'ECR/languages', 'Science class'],
    ['Making something with your hands', 'Making something with other people', 'Making something with your computer'],
    ['Through visual means (e.g., drawings, layouts)', 'By talking about it with others', 'By writing about it'],
    ['Starting it on your own', 'After a technical program', 'After a university degree'],
    ['Yourself', 'The government', 'A private company']],

    // Competency
    [['Arts', 'Humanities', 'Science'],
    ['Alone', 'Small team', 'Large team'],
    ['Making the project look good', 'Making the project fun for viewers', 'Writing the info for the project'],
    ['Creative', 'Social', 'Hardworking'],
    ['Emotions', 'Logic', 'Consulting others'],
    ['CST', 'SN', 'other/neither']],

    // Values
    [['With creativity', 'With teamwork', 'With logic'],
    ['A beautiful art piece', 'A project that helps your community', 'A technological innovation'],
    ['Expressing yourself', 'Helping people', 'Making money'],
    ['Human rights', 'Poverty', 'Climate change'],
    ['Community', 'Expression', 'Innovation'],
    ['Shorter projects', 'Mid-length projects', 'Long term projects']]
  ];

  final question = [[
    // Interests
    'Which of these activities sounds the most fun to you?',
    'Which of these classes did you like best in highschool?',
    'Which of these do you prefer doing?',
    'How do you like communicating your ideas?',
    'How would you like to get into your career?',
    'Which would you rather work for?'],

    // Competency
    ['Which domain are you most skilled in?',
    'What size team would you rather work with?',
    'Which role do you normally occupy on a group project?',
    'How would you describe yourself?',
    'What do you make decisions based on?',
    'What profile did you take in highschool in sec 4 and 5?'],

    // Values
    ['How do you prefer solving problems?',
    'What kind of project would you be more proud of making?',
    'Which of these is most important to you in your career?',
    'What problem would you rather help solve?',
    'What is more important to you?',
    'What kind of project do you work best on?']
  ];

  final section = ['Interests', 'Competancy','Values'];

  final scores = [
    // Scores for the first section
    [
      [7, 2, 9], // Creating something
      [6, 10, 2], // Meeting new people
      [10, 4, 4]  // Learning something new
    ],
    // Scores for the second section
    [
      [10, 4, 4], // Art class
      [4, 10, 4], // ECR/languages
      [10, 2, 2]  // Science class
    ],
    // Scores for the third section
    [
      [6, 2, 10], // Making something with your hands
      [5, 10, 3], // Making something with other people
      [10, 2, 6]  // Making something with your computer
    ],
    // Scores for the fourth section
    [
      [6, 2, 10], // Through visual means (ex: drawings, layouts)
      [6, 10, 2], // By talking about it with others
      [10, 4, 4]  // By writing about it
    ],
    // Scores for the fifth section
    [
      [2, 3, 9],  // Starting it on your own
      [4, 10, 6], // After a technical program
      [10, 6, 4]  // After a university degree
    ],
    // Scores for the sixth section
    [
      [4, 2, 9],  // Yourself
      [6, 9, 3],  // The government
      [9, 6, 7]   // A private company
    ],
    // Scores for the seventh section
    [
      [1, 1, 10], // Arts
      [1, 10, 1], // Humanities
      [10, 1, 1]  // Science
    ],
    // Scores for the eighth section
    [
      [2, 4, 10], // Alone
      [8, 5, 4],  // Small team
      [7, 8, 2]   // Large team
    ],
    // Scores for the ninth section
    [
      [4, 6, 10], // Making the project look good
      [4, 8, 6],  // Making the project fun for viewers
      [9, 5, 5]   // Writing the info for the project
    ],
    // Scores for the tenth section
    [
      [8, 3, 10], // Creative
      [6, 10, 2], // Social
      [10, 4, 4]  // Hardworking
    ],
    // Scores for the eleventh section
    [
      [2, 9, 8],  // Emotions
      [10, 7, 3], // Logic
      [7, 10, 7]  // Consulting others
    ],
    // Scores for the twelfth section
    [
      [1, 10, 10], // CST
      [10, 3, 1],  // SN
      [1, 1, 1]    // other/neither
    ],
    // Scores for the thirteenth section
    [
      [10, 3, 10], // With creativity
      [6, 10, 2],  // With teamwork
      [10, 6, 2]   // With logic
    ],
    // Scores for the fourteenth section
    [
      [2, 4, 10], // A beautiful art piece
      [7, 10, 3], // A project that helps your community
      [10, 4, 4]  // A technological innovation
    ],
    // Scores for the fifteenth section
    [
      [0, 7, 10], // Expressing yourself
      [8, 10, 3], // Helping people
      [10, 6, 2]  // Making money
    ],
    // Scores for the sixteenth section
    [
      [1, 10, 8], // Human rights
      [1, 10, 4], // Poverty
      [10, 6, 4]  // Climate change
    ],
    // Scores for the seventeenth section
    [
      [4, 9, 6],  // Community
      [2, 10, 10], // Expression
      [10, 2, 2]   // Innovation
    ],
    // Scores for the eighteenth section
    [
      [3, 6, 8],  // Shorter projects
      [5, 8, 5],  // Mid-length projects
      [10, 2, 8]  // Long term projects
    ]
  ];


  List<double> finalScore = [];
  final Function(List<double>) onFinalScoreChanged; // 回调函数

  QuizInterface({required this.onFinalScoreChanged}); // 接收回调函数

  @override
  _QuizInterfaceState createState() => _QuizInterfaceState();
}

class _QuizInterfaceState extends State<QuizInterface> {
  final ScrollController _scrollController = ScrollController();
  bool _showButton = false;
  List<List<List<int>>> sectionScores = [];

  @override
  void initState() {
    super.initState();
    sectionScores = List.generate(widget.section.length, (index) => []);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        setState(() {
          _showButton = true;
        });
      } else {
        setState(() {
          _showButton = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAA5151),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: widget.section.length,
                itemBuilder: (context, index) {
                  return SectionTile(
                    itemIndex: index,
                    optionItemIndex: widget.options[index],
                    question: widget.question[index],
                    section: widget.section[index],
                    weight: widget.weight[index],
                    scores: widget.scores,
                    onScoresChanged: (selectedScores) {
                      setState(() {
                        sectionScores[index] = selectedScores;
                      });
                    },
                  );
                },
              ),
            ),
            if (_showButton)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    var quiz = Quiz(
                      totalScore: sectionScores,
                      weightList: widget.weight,
                    );
                    quiz.calculateSectionsPoint();
                    widget.finalScore = quiz.finaleScore;

                    // 调用回调函数，将 finalScore 传递给 QuizPage
                    widget.onFinalScoreChanged(widget.finalScore);

                    print('Quiz completed! Final score: ${widget.finalScore}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                  child: Text('Finish Quiz'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}