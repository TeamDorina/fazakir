// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adhantimes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdhanTimesModel _$$_AdhanTimesModelFromJson(Map<String, dynamic> json) =>
    _$_AdhanTimesModel(
      fajr: json['fajr'] as String,
      sunrise: json['sunrise'] as String,
      dhuhr: json['dhuhr'] as String,
      asr: json['asr'] as String,
      maghrib: json['maghrib'] as String,
      isha: json['isha'] as String,
    );

Map<String, dynamic> _$$_AdhanTimesModelToJson(_$_AdhanTimesModel instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
    };