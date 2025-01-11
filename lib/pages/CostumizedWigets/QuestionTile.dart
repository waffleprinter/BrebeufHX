import 'package:brebeuf_hx/pages/CostumizedWigets/OptionTile.dart';
import 'package:flutter/material.dart';

import 'package:brebeuf_hx/pages/CostumizedWigets/OptionTile.dart';
import 'package:flutter/material.dart';
class QuestionTile extends StatefulWidget {
  final int itemIndex;
  final List<String> optionItemIndex;
  final String question;
  final String section;
  final List<List<int>> scores;
  final Function(List<List<int>>) onScoresChanged;

  QuestionTile({
    super.key,
    required this.itemIndex,
    required this.optionItemIndex,
    required this.question,
    required this.section,
    required this.scores,
    required this.onScoresChanged,
  });

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  List<List<int>> selectedScores = [];

  void handleCheckedChange(int itemIndex, List<int> score, bool isChecked) {
    setState(() {
      if (isChecked) {
        selectedScores = [score]; // 选择项
      } else {
        selectedScores = []; // 取消选择时清空
      }
    });
    widget.onScoresChanged(selectedScores); // 通知父组件
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          print('Tapped :${widget.itemIndex}');
        },
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
              // Question
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Use Expanded to handle overflow issue
                  Expanded(
                    child: Text(
                      'Question: ${widget.question}',
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis, // Ensure overflow is handled
                      maxLines: 1, // Limit to one line
                    ),
                  ),
                  Text('${widget.section} Section'),
                ],
              ),
              SizedBox(height: 10),
              // Options
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF8C8C8C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.optionItemIndex.length,
                    itemBuilder: (context, index) {
                      return OptionTile(
                        itemIndex: index,
                        option: widget.optionItemIndex[index],
                        score: widget.scores[index],
                        isSelected: selectedScores.isNotEmpty && selectedScores.contains(widget.scores[index]),
                        onCheckedChange: handleCheckedChange,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
