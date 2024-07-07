import 'package:flutter/material.dart';
import 'package:note_app/views/notes.dart';

void main() {
  runApp(MyApp_Notes());
}

class MyApp_Notes extends StatelessWidget {
  const MyApp_Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Notes_page(),
    );
  }
}
