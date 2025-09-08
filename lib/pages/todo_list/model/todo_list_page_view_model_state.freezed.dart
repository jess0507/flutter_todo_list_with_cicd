// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_page_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TodoListPageViewModelState _$TodoListPageViewModelStateFromJson(
  Map<String, dynamic> json,
) {
  return _TodoListPageViewModelState.fromJson(json);
}

/// @nodoc
mixin _$TodoListPageViewModelState {
  List<Todo> get todos => throw _privateConstructorUsedError;

  /// Serializes this TodoListPageViewModelState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoListPageViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListPageViewModelStateCopyWith<TodoListPageViewModelState>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListPageViewModelStateCopyWith<$Res> {
  factory $TodoListPageViewModelStateCopyWith(
    TodoListPageViewModelState value,
    $Res Function(TodoListPageViewModelState) then,
  ) =
      _$TodoListPageViewModelStateCopyWithImpl<
        $Res,
        TodoListPageViewModelState
      >;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodoListPageViewModelStateCopyWithImpl<
  $Res,
  $Val extends TodoListPageViewModelState
>
    implements $TodoListPageViewModelStateCopyWith<$Res> {
  _$TodoListPageViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoListPageViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todos = null}) {
    return _then(
      _value.copyWith(
            todos: null == todos
                ? _value.todos
                : todos // ignore: cast_nullable_to_non_nullable
                      as List<Todo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoListPageViewModelStateImplCopyWith<$Res>
    implements $TodoListPageViewModelStateCopyWith<$Res> {
  factory _$$TodoListPageViewModelStateImplCopyWith(
    _$TodoListPageViewModelStateImpl value,
    $Res Function(_$TodoListPageViewModelStateImpl) then,
  ) = __$$TodoListPageViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$TodoListPageViewModelStateImplCopyWithImpl<$Res>
    extends
        _$TodoListPageViewModelStateCopyWithImpl<
          $Res,
          _$TodoListPageViewModelStateImpl
        >
    implements _$$TodoListPageViewModelStateImplCopyWith<$Res> {
  __$$TodoListPageViewModelStateImplCopyWithImpl(
    _$TodoListPageViewModelStateImpl _value,
    $Res Function(_$TodoListPageViewModelStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoListPageViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todos = null}) {
    return _then(
      _$TodoListPageViewModelStateImpl(
        todos: null == todos
            ? _value._todos
            : todos // ignore: cast_nullable_to_non_nullable
                  as List<Todo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoListPageViewModelStateImpl implements _TodoListPageViewModelState {
  const _$TodoListPageViewModelStateImpl({final List<Todo> todos = const []})
    : _todos = todos;

  factory _$TodoListPageViewModelStateImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$TodoListPageViewModelStateImplFromJson(json);

  final List<Todo> _todos;
  @override
  @JsonKey()
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoListPageViewModelState(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListPageViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  /// Create a copy of TodoListPageViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListPageViewModelStateImplCopyWith<_$TodoListPageViewModelStateImpl>
  get copyWith =>
      __$$TodoListPageViewModelStateImplCopyWithImpl<
        _$TodoListPageViewModelStateImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListPageViewModelStateImplToJson(this);
  }
}

abstract class _TodoListPageViewModelState
    implements TodoListPageViewModelState {
  const factory _TodoListPageViewModelState({final List<Todo> todos}) =
      _$TodoListPageViewModelStateImpl;

  factory _TodoListPageViewModelState.fromJson(Map<String, dynamic> json) =
      _$TodoListPageViewModelStateImpl.fromJson;

  @override
  List<Todo> get todos;

  /// Create a copy of TodoListPageViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListPageViewModelStateImplCopyWith<_$TodoListPageViewModelStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
