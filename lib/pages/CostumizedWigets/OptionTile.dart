import 'package:flutter/material.dart';

class OptionTile extends StatefulWidget {
  final int itemIndex;
  final String option;
  final List<int> score;
  final bool isSelected; // 是否当前选中
  final Function(int,List<int>, bool isChecked) onCheckedChange; // 新增回调函数

  const OptionTile({
    super.key,
    required this.itemIndex,
    required this.option,
    required this.score,
    required this.isSelected,

    required this.onCheckedChange, // 必填
  });

  @override
  State<OptionTile> createState() => _OptionTileTileState();
}

class _OptionTileTileState extends State<OptionTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: GestureDetector(
        onTap: () {
          print('taped');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Checkbox(
                      value: widget.isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          widget.onCheckedChange(widget.itemIndex, widget.score,value ?? false);
                        });
                      },
                    ),
                    Text(widget.option,
                    style: TextStyle(
                      fontSize: 10
                    ),),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
