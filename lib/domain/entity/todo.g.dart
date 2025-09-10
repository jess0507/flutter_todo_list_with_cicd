// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
  id: (json['id'] as num?)?.toInt() ?? -1,
  content: json['content'] as String? ?? '',
  importance:
      $enumDecodeNullable(_$ImportanceEnumMap, json['importance']) ??
      Importance.none,
  isCompleted: json['isCompleted'] as bool? ?? false,
  createAt: (json['createAt'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'importance': _$ImportanceEnumMap[instance.importance]!,
      'isCompleted': instance.isCompleted,
      'createAt': instance.createAt,
    };

const _$ImportanceEnumMap = {
  Importance.none: 'none',
  Importance.low: 'low',
  Importance.medium: 'medium',
  Importance.high: 'high',
};
