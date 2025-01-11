import 'package:brebeuf_hx/pages/home_page.dart';
import 'package:flutter/material.dart';

class ResultDisplay extends StatefulWidget {
  final List<double> finalScore;// 0.4[0],0.6[1],0.2[2]
  //0.6[1],0.4[0],0.2[2]

  ResultDisplay({
    super.key,
    required this.finalScore,
  });

  @override
  State<ResultDisplay> createState() => _ResultDisplayState();
}

class _ResultDisplayState extends State<ResultDisplay> {
  late String result;

  /// 根据得分计算结果
  String getResultFromScore() {
    // 原始分数列表
    List<double> finalScore = widget.finalScore;

    // 创建一个带有分数和索引的列表
    List<List<dynamic>> scoreWithIndex = [
      [finalScore[0], 0],
      [finalScore[1], 1],
      [finalScore[2], 2]
    ];

    // 按分数从高到低排序
    scoreWithIndex.sort((a, b) => b[0].compareTo(a[0]));

    // 生成结果字段
    Map<int, String> fieldDictionary = {
      0: 'science',
      1: 'humanities',
      2: 'art',
    };

    // 根据排序后的索引，映射到领域名称
    List<String> sortedFields = scoreWithIndex.map((item) => fieldDictionary[item[1]]!).toList();

    // 返回结果（前两个领域组合）
    String result = '${sortedFields[0]}-${sortedFields[1]}';

    // 调试输出
    print('排序后的分数和索引: $scoreWithIndex');
    print('生成的结果: $result');

    return result;
  }

  @override
  void initState() {
    super.initState();
    // 初始化结果
    result = getResultFromScore();
  }

  @override
  Widget build(BuildContext context) {
    print("Rendering UI with result: $result"); // 调试 UI 渲染的 result 值

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Color(0xFFBDC7CB),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => HomePage()
             )
            );
          }
        ),
      ),
      body: ListView(
        children: [
          _getProfileDisplay(result), // 确保 result 正确传递到 UI
        ],
      ),
    );
  }
}

/// 渲染结果对应的 UI
Widget _getProfileDisplay(String result) {
  switch (result) {
    case 'art-science':
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Text(
            "Art-Science",
            style: TextStyle(fontSize: 45),
          ),
          SizedBox(height: 60),
          Icon(
            Icons.brush,
            size: 120,
          ),
          SizedBox(height: 60),
          Text(
            "A main focus on art, with a secondary interest in science! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Graphic Design \n3D modeling \nAnimation and VFX \nScientific Illustrator \nSound Engineer",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ],
      );

    //case 2 of 6
    case 'art-humanities' :
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
                "Art-Humanities",
                style: TextStyle(fontSize: 45)
            ),
            Icon(
              Icons.festival,
              size: 120,
            ),
            SizedBox(height:10),
            Text(
                "A main focus on art, with a secondary interest in humanities! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Comic Artist \nInterior Design \nWriter \nFilm Director \nMusician",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
            ),

        ],
      );

    //case 3 of 6
    case 'science-art' :
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
                "Science-Art",
                style: TextStyle(fontSize: 45)
            ),
            Icon(
              Icons.handyman,
              size: 120,
            ),
            SizedBox(height:10),
            Text(
                "A main focus on Science, with a secondary interest in art! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Engineer \nVideo Game designer \nSoftware dev \nArchitect \nData Visualist",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
            ),

        ],
      );

    //case 4 of 6
    case 'science-humanities' :
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
                "Science-Humanities",
                style: TextStyle(fontSize: 45),
                textAlign: TextAlign.center,
            ),
            Icon(
              Icons.biotech,
              size: 120,
            ),
            SizedBox(height:10),
            Text(
                "A main focus on Science, with a secondary interest in humanities! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Doctor \nPhysiotherapist \nVeterenarian \nPharmacist \nCivil Engineering",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
            ),

        ],
      );

    //case 5 of 6
    case 'humanities-art' :
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
                "Humanities-Art",
                style: TextStyle(fontSize: 45),
                textAlign: TextAlign.center,
            ),
            Icon(
              Icons.diversity_3,
              size: 120,
            ),
            SizedBox(height:10),
            Text(
                "A main focus on Humanities, with a secondary interest in art! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Educator \nMarketer \nArt Therapist \nJournalist \nHR worker",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
            ),

        ],
      );

    //case 6 of 6
    case 'humanities-science' :
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
                "Humanities-Science",
                style: TextStyle(fontSize: 45),
                textAlign: TextAlign.center,
            ),
            Icon(
              Icons.balance,
              size: 120,
            ),
            SizedBox(height:10),
            Text(
                "A main focus on Humanities, with a secondary interest in science! "
                "\nWhat an excellent field! \nJobs that fit your profile include:\n"
                "Social worker \nPsychologist \nEntrepreneur \nNurse \nLawyer",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
            ),

        ],
      );

    //default
    default:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 20,
            ),
            SizedBox(height: 10),
            Text(
              'Default Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Default profile information.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        );

  }


}