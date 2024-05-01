import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/error_model.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
     try{
       var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
     }
     catch(e){
       var errorsBox = Hive.box<ErrorModel>(kErrorsBox);
       await errorsBox.add(ErrorModel(
          errMessage: 'there is message at Add message ',
          fnName: 'addNote',
          date: DateTime.now().toString(),
          userName: 'Mario',
       ));
       emit(AddNoteFailure(e.toString()));
     }
    }
  }
