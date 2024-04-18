// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ErrorModelAdapter extends TypeAdapter<ErrorModel> {
  @override
  final int typeId = 1;

  @override
  ErrorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ErrorModel(
      errMessage: fields[0] as String,
      fnName: fields[1] as String,
      date: fields[2] as String,
      userName: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ErrorModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.errMessage)
      ..writeByte(1)
      ..write(obj.fnName)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.userName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
