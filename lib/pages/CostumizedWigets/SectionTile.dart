import 'package:brebeuf_hx/pages/CostumizedWigets/OptionTile.dart';
import 'package:brebeuf_hx/pages/CostumizedWigets/QuestionTile.dart';
import 'package:flutter/material.dart';

class SectionTile extends StatefulWidget {
  final int itemIndex;
  final List<List<String>> optionItemIndex;
  final List<String> question;
  final String section;
  final double weight;
  final List<List<List<int>>> scores;
  final Function(List<List<int>>) onScoresChanged; // 回调函数

  const SectionTile({
    super.key,
    required this.itemIndex,
    required this.optionItemIndex,
    required this.question,
    required this.section,
    required this.weight,
    required this.scores,
    required this.onScoresChanged, // 必填
  });

  @override
  State<SectionTile> createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  List<List<int>> selectedScores = [];

  void handleQuestionScoresChanged(int questionIndex, List<List<int>> questionScores) {
    setState(() {
      // 如果用户没有选择分数（例如取消了选择），确保不会添加空列表
      if (questionScores.isNotEmpty) {
        // 更新对应问题的分数
        if (selectedScores.length > questionIndex) {
          selectedScores[questionIndex] = questionScores.first;
        } else {
          selectedScores.add(questionScores.first);
        }
      } else {
        // 处理取消选择的情况，确保不存储空的分数
        if (selectedScores.length > questionIndex) {
          selectedScores[questionIndex] = [];
        }
      }
    });
    widget.onScoresChanged(selectedScores); // 通知父组件
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 2, bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Section: ${widget.section}',
                  style: TextStyle(fontSize: 36),
                ),
                Text('Weight: ${widget.weight * 100}%'),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF8C8C8C),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.question.length,
                itemBuilder: (context, index) {
                  return QuestionTile(
                    itemIndex: index,
                    optionItemIndex: widget.optionItemIndex[index],
                    question: widget.question[index],
                    section: widget.section,
                    scores: widget.scores[index],
                    onScoresChanged: (scores) => handleQuestionScoresChanged(index, scores),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}