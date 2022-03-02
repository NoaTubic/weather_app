// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherModelAdapter extends TypeAdapter<WeatherModel> {
  @override
  final int typeId = 1;

  @override
  WeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherModel(
      temperature: fields[0] as double,
      conditionIcon: fields[1] as String,
      cityName: fields[2] as String,
      countryName: fields[3] as String,
      date: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.temperature)
      ..writeByte(1)
      ..write(obj.conditionIcon)
      ..writeByte(2)
      ..write(obj.cityName)
      ..writeByte(3)
      ..write(obj.countryName)
      ..writeByte(4)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
