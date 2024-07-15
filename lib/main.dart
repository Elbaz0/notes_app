import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes.dart';

void main() async {
  Bloc.observer = simple_bloc_observer();
  await Hive.initFlutter();
  Hive.registerAdapter(notesmodelAdapter());
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
