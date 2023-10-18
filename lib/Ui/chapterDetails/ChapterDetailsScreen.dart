import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_practice/Ui/chapterDetails/VerseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter_details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetalisArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetalisArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : Card(
                  margin: EdgeInsets.symmetric(vertical: 46, horizontal: 24),
                  elevation: 18,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return VerseWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    ),
                  ),
                )),
    );
  }

  List<String> verses = [];

  void loadfile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterDetalisArgs {
  String title;
  int index;

  ChapterDetalisArgs(this.title, this.index);
}
