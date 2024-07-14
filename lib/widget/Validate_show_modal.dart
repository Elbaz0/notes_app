import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custem_button.dart';
import 'package:note_app/widget/custem_text_fild.dart';

class Validate_show_modal extends StatefulWidget {
  const Validate_show_modal({
    super.key,
  });

  @override
  State<Validate_show_modal> createState() => _Validate_show_modalState();
}

class _Validate_show_modalState extends State<Validate_show_modal> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          custem_text_fild(
            hinttext: 'title',
            onsave: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          custem_text_fild(
            hinttext: 'content',
            maxline: 5,
            onsave: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          custem_Bottom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context).add_note(
                  notes_model(
                    title: title!,
                    sub_title: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value,
                  ),
                );
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
