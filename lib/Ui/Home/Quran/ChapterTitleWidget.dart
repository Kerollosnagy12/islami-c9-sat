import 'package:flutter/material.dart';
import 'package:islami_practice/Ui/chapterDetails/ChapterDetailsScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetalisArgs(title, index));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            title,
            style: TextStyle(fontSize: 25),
          )),
    );
  }
}
