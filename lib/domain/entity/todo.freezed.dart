// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Importance get importance => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get createAt => throw _privateConstructorUsedError;

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call({
    int id,
    String content,
    Importance importance,
    bool isCompleted,
    int createAt,
  });
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? importance = null,
    Object? isCompleted = null,
    Object? createAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            importance: null == importance
                ? _value.importance
                : importance // ignore: cast_nullable_to_non_nullable
                      as Importance,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            createAt: null == createAt
                ? _value.createAt
                : createAt // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
    _$TodoImpl value,
    $Res Function(_$TodoImpl) then,
  ) = __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String content,
    Importance importance,
    bool isCompleted,
    int createAt,
  });
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
    : super(_value, _then);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? importance = null,
    Object? isCompleted = null,
    Object? createAt = null,
  }) {
    return _then(
      _$TodoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        importance: null == importance
            ? _value.importance
            : importance // ignore: cast_nullable_to_non_nullable
                  as Importance,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        createAt: null == createAt
            ? _value.createAt
            : createAt // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl implements _Todo {
  const _$TodoImpl({
    this.id = -1,
    this.content = '',
    this.importance = Importance.none,
    this.isCompleted = false,
    this.createAt = 0,
  });

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final Importance importance;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int createAt;

  @override
  String toString() {
    return 'Todo(id: $id, content: $content, importance: $importance, isCompleted: $isCompleted, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, content, importance, isCompleted, createAt);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(this);
  }
}

abstract class _Todo implements Todo {
  const factory _Todo({
    final int id,
    final String content,
    final Importance importance,
    final bool isCompleted,
    final int createAt,
  }) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  Importance get importance;
  @override
  bool get isCompleted;
  @override
  int get createAt;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
