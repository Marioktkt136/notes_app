import 'package:hive_flutter/adapters.dart';

part 'error_model.g.dart';

@HiveType(typeId: 1)
class ErrorModel extends HiveObject {
  @HiveField(0)
  final String errMessage;
  @HiveField(1)
  final String fnName;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String userName;

  ErrorModel(
      {required this.errMessage,
      required this.fnName,
      required this.date,
      required this.userName});
}
