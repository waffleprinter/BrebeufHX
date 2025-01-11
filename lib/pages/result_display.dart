// import 'package:flutter/material.dart';
//
// class ResultDisplay extends StatefulWidget {
//
//   final String result; // This is your quiz profile result being sent over!!
//   const ProfilePage({super.key, required this.result});
//
//   /*
//   Formatting for answers:
//   science-art
//   humanities-science
//
//   etc..
//   */
//
//   @override
//   State<ResultDisplay> createState() => _ResultDisplayState();
// }
//
// class _ResultDisplayState extends State<ResultDisplay> {
//   @override
//   //temporary variable
//   //var result = "humanities-science";
//
//   Widget build(BuildContext context){
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         title: Text("Results"),
//         backgroundColor: Colors.amber[700],
//       ),
//
//       body: ListView(
//         children: [
//           // profile display based on result
//           _getProfileDisplay(result),
//
//         ],
//       )
//     );
//   }
// }
//
// Widget _getProfileDisplay (String result){
//   switch (result) {
//     //case 1 of 6
//     case 'art-science' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Art-Science",
//                 style: TextStyle(fontSize: 45)
//             ),
//             Icon(
//               Icons.brush,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on art, with a secondary interest in science! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Graphic Design \n3D modeling \nAnimation and VFX \nScientific Illustrator \nSound Engineer",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //case 2 of 6
//     case 'art-humanities' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Art-Humanities",
//                 style: TextStyle(fontSize: 45)
//             ),
//             Icon(
//               Icons.festival,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on art, with a secondary interest in humanities! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Comic Artist \nInterior Design \nWriter \nFilm Director \nMusician",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //case 3 of 6
//     case 'science-art' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Science-Art",
//                 style: TextStyle(fontSize: 45)
//             ),
//             Icon(
//               Icons.handyman,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on Science, with a secondary interest in art! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Engineer \nVideo Game designer \nSoftware dev \nArchitect \nData Visualist",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //case 4 of 6
//     case 'science-humanities' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Science-Humanities",
//                 style: TextStyle(fontSize: 45),
//                 textAlign: TextAlign.center,
//             ),
//             Icon(
//               Icons.biotech,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on Science, with a secondary interest in humanities! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Doctor \nPhysiotherapist \nVeterenarian \nPharmacist \nCivil Engineering",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //case 5 of 6
//     case 'humanities-art' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Humanities-Art",
//                 style: TextStyle(fontSize: 45),
//                 textAlign: TextAlign.center,
//             ),
//             Icon(
//               Icons.diversity_3,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on Humanities, with a secondary interest in art! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Educator \nMarketer \nArt Therapist \nJournalist \nHR worker",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //case 6 of 6
//     case 'humanities-science' :
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             Text(
//                 "Humanities-Science",
//                 style: TextStyle(fontSize: 45),
//                 textAlign: TextAlign.center,
//             ),
//             Icon(
//               Icons.balance,
//               size: 120,
//             ),
//             SizedBox(height:10),
//             Text(
//                 "A main focus on Humanities, with a secondary interest in science! "
//                 "\nWhat an excellent field! \nJobs that fit your profile include:\n"
//                 "Social worker \nPsychologist \nEntrepreneur \nNurse \nLawyer",
//                 style: TextStyle(fontSize: 25),
//                 textAlign: TextAlign.center,
//             ),
//
//         ],
//       );
//
//     //default
//     default:
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.person,
//               size: 20,
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Default Profile',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 5),
//             Text(
//               'Default profile information.',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         );
//
//   }
//
//
// }