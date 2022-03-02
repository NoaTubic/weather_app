// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherDataModelAdapter extends TypeAdapter<WeatherDataModel> {
  @override
  final int typeId = 2;

  @override
  WeatherDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherDataModel(
      weatherModel: fields[0] as WeatherModel,
      forecastDay: (fields[1] as List).cast<ForecastDay>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeatherDataModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.weatherModel)
      ..writeByte(1)
      ..write(obj.forecastDay);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ForecastDayAdapter extends TypeAdapter<ForecastDay> {
  @override
  final int typeId = 3;

  @override
  ForecastDay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastDay(
      date: fields[0] as DateTime,
      day: fields[1] as Day,
      hour: (fields[2] as List).cast<Hour>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForecastDay obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.hour);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastDayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DayAdapter extends TypeAdapter<Day> {
  @override
  final int typeId = 4;

  @override
  Day read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Day(
      avgTemp: fields[0] as double,
      conditionIcon: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Day obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.avgTemp)
      ..writeByte(1)
      ..write(obj.conditionIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HourAdapter extends TypeAdapter<Hour> {
  @override
  final int typeId = 5;

  @override
  Hour read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hour(
      hour: fields[0] as DateTime,
      temp: fields[1] as double,
      conditionIcon: fields[2] as String,
      chanceOfRain: fields[3] as int,
      precipMm: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Hour obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.hour)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.conditionIcon)
      ..writeByte(3)
      ..write(obj.chanceOfRain)
      ..writeByte(4)
      ..write(obj.precipMm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
