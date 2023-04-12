// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_pair.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayPairAdapter extends TypeAdapter<DayPair> {
  @override
  final int typeId = 1;

  @override
  DayPair read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayPair(
      fields[0] as Day,
      fields[1] as Day,
    );
  }

  @override
  void write(BinaryWriter writer, DayPair obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.first)
      ..writeByte(1)
      ..write(obj.second);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayPairAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
