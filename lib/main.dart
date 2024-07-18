import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = simple_bloc_observer();

  Hive.registerAdapter(notesmodelAdapter());
  await Hive.openBox<notes_model>(Kboxname);

  runApp(
    // DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp_Notes()),
    MyApp_Notes(),
  );
}

class MyApp_Notes extends StatelessWidget {
  const MyApp_Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: const Notes_page(),
    );
  }
}
