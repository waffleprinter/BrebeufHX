import 'package:flutter/cupertino.dart';

class Quiz {
  final List<List<List<int>>> totalScore;
  final List<double> weightList;
  List<double> finaleScore =[];

  Quiz({
    required this.totalScore,
    required this.weightList,
  });

  void calculateSectionsPoint() {
    var masterList = [];

    // Iterate over each section in totalScore
    for (List<List<int>> sectionScoreList in totalScore) {
      // Create a list to store accumulated scores for each question in the section
      var list = List.generate(totalScore[0][0].length, (index) => 0);

      // Iterate over each question's score in the section
      for (int i = 0; i < totalScore[0][0].length; i++) {
        for (List<int> questionScoreList in sectionScoreList) {
          list[i] += questionScoreList[i];
        }
      }

      // Create a list to store the weighted scores for each item in 'list'
      List<double> listdouble = [];

      // Make sure to only loop through the available indices
      for (int i = 0; i < list.length && i < weightList.length; i++) {
        listdouble.add(list[i] * weightList[i]);
      }

      // Add the weighted scores for the current section to masterList
      masterList.add(listdouble);
    }

    // Now perform the corresponding index sum of the masterList
    List<double> summedList = List.generate(masterList[0].length, (index) => 0.0);

    for (var list in masterList) {
      for (int i = 0; i < list.length; i++) {
        summedList[i] += list[i];
      }
    }

    // Printing the summed result
    print("Summed result: $summedList");
    finaleScore = summedList;
  }
}

