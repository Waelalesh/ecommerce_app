// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function(OtpResponse data) otpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) otpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function(OtpResponse data)? otpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? otpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function(OtpResponse data)? otpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? otpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OtpLoading value) otpLoading,
    required TResult Function(OtpSuccess value) otpSuccess,
    required TResult Function(OtpError value) otpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OtpLoading value)? otpLoading,
    TResult? Function(OtpSuccess value)? otpSuccess,
    TResult? Function(OtpError value)? otpError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OtpLoading value)? otpLoading,
    TResult Function(OtpSuccess value)? otpSuccess,
    TResult Function(OtpError value)? otpError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpState
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
    extends _$OtpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OtpState.initial()';
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
    required TResult Function() otpLoading,
    required TResult Function(OtpResponse data) otpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) otpError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function(OtpResponse data)? otpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? otpError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function(OtpResponse data)? otpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? otpError,
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
    required TResult Function(OtpLoading value) otpLoading,
    required TResult Function(OtpSuccess value) otpSuccess,
    required TResult Function(OtpError value) otpError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OtpLoading value)? otpLoading,
    TResult? Function(OtpSuccess value)? otpSuccess,
    TResult? Function(OtpError value)? otpError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OtpLoading value)? otpLoading,
    TResult Function(OtpSuccess value)? otpSuccess,
    TResult Function(OtpError value)? otpError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OtpState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OtpLoadingImplCopyWith<$Res> {
  factory _$$OtpLoadingImplCopyWith(
          _$OtpLoadingImpl value, $Res Function(_$OtpLoadingImpl) then) =
      __$$OtpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpLoadingImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpLoadingImpl>
    implements _$$OtpLoadingImplCopyWith<$Res> {
  __$$OtpLoadingImplCopyWithImpl(
      _$OtpLoadingImpl _value, $Res Function(_$OtpLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpLoadingImpl implements OtpLoading {
  const _$OtpLoadingImpl();

  @override
  String toString() {
    return 'OtpState.otpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function(OtpResponse data) otpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) otpError,
  }) {
    return otpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function(OtpResponse data)? otpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? otpError,
  }) {
    return otpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function(OtpResponse data)? otpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? otpError,
    required TResult orElse(),
  }) {
    if (otpLoading != null) {
      return otpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OtpLoading value) otpLoading,
    required TResult Function(OtpSuccess value) otpSuccess,
    required TResult Function(OtpError value) otpError,
  }) {
    return otpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OtpLoading value)? otpLoading,
    TResult? Function(OtpSuccess value)? otpSuccess,
    TResult? Function(OtpError value)? otpError,
  }) {
    return otpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OtpLoading value)? otpLoading,
    TResult Function(OtpSuccess value)? otpSuccess,
    TResult Function(OtpError value)? otpError,
    required TResult orElse(),
  }) {
    if (otpLoading != null) {
      return otpLoading(this);
    }
    return orElse();
  }
}

abstract class OtpLoading implements OtpState {
  const factory OtpLoading() = _$OtpLoadingImpl;
}

/// @nodoc
abstract class _$$OtpSuccessImplCopyWith<$Res> {
  factory _$$OtpSuccessImplCopyWith(
          _$OtpSuccessImpl value, $Res Function(_$OtpSuccessImpl) then) =
      __$$OtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpResponse data});
}

/// @nodoc
class __$$OtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpSuccessImpl>
    implements _$$OtpSuccessImplCopyWith<$Res> {
  __$$OtpSuccessImplCopyWithImpl(
      _$OtpSuccessImpl _value, $Res Function(_$OtpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OtpSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtpResponse,
    ));
  }
}

/// @nodoc

class _$OtpSuccessImpl implements OtpSuccess {
  const _$OtpSuccessImpl(this.data);

  @override
  final OtpResponse data;

  @override
  String toString() {
    return 'OtpState.otpSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSuccessImplCopyWith<_$OtpSuccessImpl> get copyWith =>
      __$$OtpSuccessImplCopyWithImpl<_$OtpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function(OtpResponse data) otpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) otpError,
  }) {
    return otpSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function(OtpResponse data)? otpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? otpError,
  }) {
    return otpSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function(OtpResponse data)? otpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? otpError,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OtpLoading value) otpLoading,
    required TResult Function(OtpSuccess value) otpSuccess,
    required TResult Function(OtpError value) otpError,
  }) {
    return otpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OtpLoading value)? otpLoading,
    TResult? Function(OtpSuccess value)? otpSuccess,
    TResult? Function(OtpError value)? otpError,
  }) {
    return otpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OtpLoading value)? otpLoading,
    TResult Function(OtpSuccess value)? otpSuccess,
    TResult Function(OtpError value)? otpError,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpSuccess implements OtpState {
  const factory OtpSuccess(final OtpResponse data) = _$OtpSuccessImpl;

  OtpResponse get data;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSuccessImplCopyWith<_$OtpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpErrorImplCopyWith<$Res> {
  factory _$$OtpErrorImplCopyWith(
          _$OtpErrorImpl value, $Res Function(_$OtpErrorImpl) then) =
      __$$OtpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$OtpErrorImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpErrorImpl>
    implements _$$OtpErrorImplCopyWith<$Res> {
  __$$OtpErrorImplCopyWithImpl(
      _$OtpErrorImpl _value, $Res Function(_$OtpErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$OtpErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$OtpErrorImpl implements OtpError {
  const _$OtpErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'OtpState.otpError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      __$$OtpErrorImplCopyWithImpl<_$OtpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() otpLoading,
    required TResult Function(OtpResponse data) otpSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) otpError,
  }) {
    return otpError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? otpLoading,
    TResult? Function(OtpResponse data)? otpSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? otpError,
  }) {
    return otpError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? otpLoading,
    TResult Function(OtpResponse data)? otpSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? otpError,
    required TResult orElse(),
  }) {
    if (otpError != null) {
      return otpError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(OtpLoading value) otpLoading,
    required TResult Function(OtpSuccess value) otpSuccess,
    required TResult Function(OtpError value) otpError,
  }) {
    return otpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(OtpLoading value)? otpLoading,
    TResult? Function(OtpSuccess value)? otpSuccess,
    TResult? Function(OtpError value)? otpError,
  }) {
    return otpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(OtpLoading value)? otpLoading,
    TResult Function(OtpSuccess value)? otpSuccess,
    TResult Function(OtpError value)? otpError,
    required TResult orElse(),
  }) {
    if (otpError != null) {
      return otpError(this);
    }
    return orElse();
  }
}

abstract class OtpError implements OtpState {
  const factory OtpError(final ApiErrorModel apiErrorModel) = _$OtpErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
