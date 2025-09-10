// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_todo_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddTodoViewModelState _$AddTodoViewModelStateFromJson(
  Map<String, dynamic> json,
) {
  return _AddTodoViewModelState.fromJson(json);
}

/// @nodoc
mixin _$AddTodoViewModelState {
  Todo get todo => throw _privateConstructorUsedError;

  /// Serializes this AddTodoViewModelState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTodoViewModelStateCopyWith<AddTodoViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoViewModelStateCopyWith<$Res> {
  factory $AddTodoViewModelStateCopyWith(
    AddTodoViewModelState value,
    $Res Function(AddTodoViewModelState) then,
  ) = _$AddTodoViewModelStateCopyWithImpl<$Res, AddTodoViewModelState>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$AddTodoViewModelStateCopyWithImpl<
  $Res,
  $Val extends AddTodoViewModelState
>
    implements $AddTodoViewModelStateCopyWith<$Res> {
  _$AddTodoViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _value.copyWith(
            todo: null == todo
                ? _value.todo
                : todo // ignore: cast_nullable_to_non_nullable
                      as Todo,
          )
          as $Val,
    );
  }

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTodoViewModelStateImplCopyWith<$Res>
    implements $AddTodoViewModelStateCopyWith<$Res> {
  factory _$$AddTodoViewModelStateImplCopyWith(
    _$AddTodoViewModelStateImpl value,
    $Res Function(_$AddTodoViewModelStateImpl) then,
  ) = __$$AddTodoViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddTodoViewModelStateImplCopyWithImpl<$Res>
    extends
        _$AddTodoViewModelStateCopyWithImpl<$Res, _$AddTodoViewModelStateImpl>
    implements _$$AddTodoViewModelStateImplCopyWith<$Res> {
  __$$AddTodoViewModelStateImplCopyWithImpl(
    _$AddTodoViewModelStateImpl _value,
    $Res Function(_$AddTodoViewModelStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _$AddTodoViewModelStateImpl(
        todo: null == todo
            ? _value.todo
            : todo // ignore: cast_nullable_to_non_nullable
                  as Todo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTodoViewModelStateImpl implements _AddTodoViewModelState {
  const _$AddTodoViewModelStateImpl({this.todo = const Todo()});

  factory _$AddTodoViewModelStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTodoViewModelStateImplFromJson(json);

  @override
  @JsonKey()
  final Todo todo;

  @override
  String toString() {
    return 'AddTodoViewModelState(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoViewModelStateImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoViewModelStateImplCopyWith<_$AddTodoViewModelStateImpl>
  get copyWith =>
      __$$AddTodoViewModelStateImplCopyWithImpl<_$AddTodoViewModelStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTodoViewModelStateImplToJson(this);
  }
}

abstract class _AddTodoViewModelState implements AddTodoViewModelState {
  const factory _AddTodoViewModelState({final Todo todo}) =
      _$AddTodoViewModelStateImpl;

  factory _AddTodoViewModelState.fromJson(Map<String, dynamic> json) =
      _$AddTodoViewModelStateImpl.fromJson;

  @override
  Todo get todo;

  /// Create a copy of AddTodoViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTodoViewModelStateImplCopyWith<_$AddTodoViewModelStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
