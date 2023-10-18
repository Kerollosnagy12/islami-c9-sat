import 'package:flutter/material.dart';
import 'package:islami_practice/Ui/chapterDetails/ChapterDetailsScreen.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text(
          '$content { ${index + 1} } ',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ));
  }
}
