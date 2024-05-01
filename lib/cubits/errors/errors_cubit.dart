import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/errors/errors_states.dart';
import 'package:notes_app/models/error_model.dart';

class ErrorCubit extends Cubit<ErrorsLogsState>{
  ErrorCubit(): super(ErrorLogsInitial());
  List<ErrorModel>? errors;
  ErrorModel? errorModel;
  void getErrorLogs(){
    emit(ErrorLogsLoading());
      var errorsBox = Hive.box<ErrorModel>(kErrorsBox);
      errors = errorsBox.values.toList();
      emit(ErrorLogsSuccess());
  }
}