import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/error_model.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  List<ErrorModel>? errors;
  fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
      emit(NotesSuccess());
    } catch (e) {
      var errorsBox = Hive.box<ErrorModel>(kErrorsBox);
      errors = errorsBox.values.toList();
      emit(NotesFailure(e.toString()));
    }
  }
}
