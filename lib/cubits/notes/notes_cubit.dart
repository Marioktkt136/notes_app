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
      try{
        var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
      throw  Exception('This is my first custom exception');
      emit(NotesSuccess());
      }
      catch(e){
        var errorsBox = Hive.box<ErrorModel>(kErrorsBox);
       await errorsBox.add(ErrorModel(
          errMessage: 'there is message at fetch messages ',
          fnName: 'fetchAllNotes',
          date: DateTime.now().toString(),
          userName: 'Mario',
       ));
        emit(NotesFailure(e.toString()));
      }
  }
}
