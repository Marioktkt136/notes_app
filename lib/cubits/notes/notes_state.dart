part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {}
