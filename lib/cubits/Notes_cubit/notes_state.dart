part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Noteloading extends NotesState {}

final class Notesuccess extends NotesState {
  final List<notes_model> list_data;

  Notesuccess(this.list_data);
}

final class Notefaild extends NotesState {
  final String erroremsg;

  Notefaild(this.erroremsg);
}
