// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(SignupResponse data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(SignupResponse data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(SignupResponse data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupError value) signupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupError value)? signupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupError value)? signupError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(SignupResponse data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(SignupResponse data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(SignupResponse data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupError value) signupError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupError value)? signupError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupError value)? signupError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignupLoadingImplCopyWith<$Res> {
  factory _$$SignupLoadingImplCopyWith(
          _$SignupLoadingImpl value, $Res Function(_$SignupLoadingImpl) then) =
      __$$SignupLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupLoadingImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupLoadingImpl>
    implements _$$SignupLoadingImplCopyWith<$Res> {
  __$$SignupLoadingImplCopyWithImpl(
      _$SignupLoadingImpl _value, $Res Function(_$SignupLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupLoadingImpl implements SignupLoading {
  const _$SignupLoadingImpl();

  @override
  String toString() {
    return 'SignupState.signupLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(SignupResponse data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupError,
  }) {
    return signupLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(SignupResponse data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupError,
  }) {
    return signupLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(SignupResponse data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupError,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupError value) signupError,
  }) {
    return signupLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupError value)? signupError,
  }) {
    return signupLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupError value)? signupError,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading(this);
    }
    return orElse();
  }
}

abstract class SignupLoading implements SignupState {
  const factory SignupLoading() = _$SignupLoadingImpl;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
          _$SignupSuccessImpl value, $Res Function(_$SignupSuccessImpl) then) =
      __$$SignupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse data});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
      _$SignupSuccessImpl _value, $Res Function(_$SignupSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SignupSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl implements SignupSuccess {
  const _$SignupSuccessImpl(this.data);

  @override
  final SignupResponse data;

  @override
  String toString() {
    return 'SignupState.signupSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<_$SignupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(SignupResponse data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupError,
  }) {
    return signupSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(SignupResponse data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupError,
  }) {
    return signupSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(SignupResponse data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupError,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupError value) signupError,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupError value)? signupError,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupError value)? signupError,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements SignupState {
  const factory SignupSuccess(final SignupResponse data) = _$SignupSuccessImpl;

  SignupResponse get data;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupErrorImplCopyWith<$Res> {
  factory _$$SignupErrorImplCopyWith(
          _$SignupErrorImpl value, $Res Function(_$SignupErrorImpl) then) =
      __$$SignupErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignupErrorImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupErrorImpl>
    implements _$$SignupErrorImplCopyWith<$Res> {
  __$$SignupErrorImplCopyWithImpl(
      _$SignupErrorImpl _value, $Res Function(_$SignupErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SignupErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SignupErrorImpl implements SignupError {
  const _$SignupErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignupState.signupError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupErrorImplCopyWith<_$SignupErrorImpl> get copyWith =>
      __$$SignupErrorImplCopyWithImpl<_$SignupErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(SignupResponse data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupError,
  }) {
    return signupError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(SignupResponse data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupError,
  }) {
    return signupError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(SignupResponse data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupError,
    required TResult orElse(),
  }) {
    if (signupError != null) {
      return signupError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupError value) signupError,
  }) {
    return signupError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupError value)? signupError,
  }) {
    return signupError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupError value)? signupError,
    required TResult orElse(),
  }) {
    if (signupError != null) {
      return signupError(this);
    }
    return orElse();
  }
}

abstract class SignupError implements SignupState {
  const factory SignupError(final ApiErrorModel apiErrorModel) =
      _$SignupErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupErrorImplCopyWith<_$SignupErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
