part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class Noteloading extends NotesCubitState {}

final class Notesuccess extends NotesCubitState {
  final List<dynamic> List_note;

  Notesuccess(this.List_note);
}

final class Notefaild extends NotesCubitState {
  final String erroremsg;

  Notefaild(this.erroremsg);
}
