import 'package:flutter/material.dart';
import 'package:note_app/widget/app_bar.dart';

class Notes_body extends StatelessWidget {
  const Notes_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Appbar_widget(),
        ]),
      ),
    );
  }
}
