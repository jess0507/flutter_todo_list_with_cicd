// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      content: json['content'] as String? ?? '',
      importance: json['importance'] as String? ?? 'none',
      isCompleted: json['isCompleted'] as bool? ?? false,
      createAt: (json['createAt'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'importance': instance.importance,
      'isCompleted': instance.isCompleted,
      'createAt': instance.createAt,
    };
