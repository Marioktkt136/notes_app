import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/errors/errors_states.dart';
import 'package:notes_app/models/error_model.dart';
import 'package:notes_app/sqlDb.dart';

class ErrorCubit extends Cubit<ErrorsLogsState>{
  ErrorCubit(): super(ErrorLogsInitial());
  List<ErrorModel>? errors;
  ErrorModel? errorModel;
  SqlDb  sqlDb = SqlDb();

  void getErrorLogs()async{
    emit(ErrorLogsLoading());
    List<Map> response = await sqlDb.readData(''' 
    "SELECT * FROM 'notes'"
    ''');
    errors = response.map((e) => ErrorModel.fromJson(e)).cast<ErrorModel>().toList();
    emit(ErrorLogsSuccess());
  }
}