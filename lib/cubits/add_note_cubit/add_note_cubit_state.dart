part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteloading extends AddNoteCubitState {}

final class AddNotesuccess extends AddNoteCubitState {}

final class AddNotefaild extends AddNoteCubitState {
  final String erroremsg;

  AddNotefaild(this.erroremsg);
}
