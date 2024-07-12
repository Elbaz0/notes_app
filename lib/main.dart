import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/notes.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(Kboxname);
  runApp(MyApp_Notes());
}

class MyApp_Notes extends StatelessWidget {
  const MyApp_Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: Notes_page(),
    );
  }
}
