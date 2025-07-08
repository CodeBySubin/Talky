// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendOtpEvent value)?  sendOtp,TResult Function( VerifyOtpEvent value)?  verifyOtp,TResult Function( SaveUserEvent value)?  saveUser,TResult Function( LoginWithMobileEvent value)?  loginWithUsername,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendOtpEvent() when sendOtp != null:
return sendOtp(_that);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that);case SaveUserEvent() when saveUser != null:
return saveUser(_that);case LoginWithMobileEvent() when loginWithUsername != null:
return loginWithUsername(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendOtpEvent value)  sendOtp,required TResult Function( VerifyOtpEvent value)  verifyOtp,required TResult Function( SaveUserEvent value)  saveUser,required TResult Function( LoginWithMobileEvent value)  loginWithUsername,}){
final _that = this;
switch (_that) {
case SendOtpEvent():
return sendOtp(_that);case VerifyOtpEvent():
return verifyOtp(_that);case SaveUserEvent():
return saveUser(_that);case LoginWithMobileEvent():
return loginWithUsername(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendOtpEvent value)?  sendOtp,TResult? Function( VerifyOtpEvent value)?  verifyOtp,TResult? Function( SaveUserEvent value)?  saveUser,TResult? Function( LoginWithMobileEvent value)?  loginWithUsername,}){
final _that = this;
switch (_that) {
case SendOtpEvent() when sendOtp != null:
return sendOtp(_that);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that);case SaveUserEvent() when saveUser != null:
return saveUser(_that);case LoginWithMobileEvent() when loginWithUsername != null:
return loginWithUsername(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  sendOtp,TResult Function( String smsCode)?  verifyOtp,TResult Function( String name,  String phone,  String passowrd)?  saveUser,TResult Function( String phone,  String password)?  loginWithUsername,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendOtpEvent() when sendOtp != null:
return sendOtp(_that.phoneNumber);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that.smsCode);case SaveUserEvent() when saveUser != null:
return saveUser(_that.name,_that.phone,_that.passowrd);case LoginWithMobileEvent() when loginWithUsername != null:
return loginWithUsername(_that.phone,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  sendOtp,required TResult Function( String smsCode)  verifyOtp,required TResult Function( String name,  String phone,  String passowrd)  saveUser,required TResult Function( String phone,  String password)  loginWithUsername,}) {final _that = this;
switch (_that) {
case SendOtpEvent():
return sendOtp(_that.phoneNumber);case VerifyOtpEvent():
return verifyOtp(_that.smsCode);case SaveUserEvent():
return saveUser(_that.name,_that.phone,_that.passowrd);case LoginWithMobileEvent():
return loginWithUsername(_that.phone,_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  sendOtp,TResult? Function( String smsCode)?  verifyOtp,TResult? Function( String name,  String phone,  String passowrd)?  saveUser,TResult? Function( String phone,  String password)?  loginWithUsername,}) {final _that = this;
switch (_that) {
case SendOtpEvent() when sendOtp != null:
return sendOtp(_that.phoneNumber);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that.smsCode);case SaveUserEvent() when saveUser != null:
return saveUser(_that.name,_that.phone,_that.passowrd);case LoginWithMobileEvent() when loginWithUsername != null:
return loginWithUsername(_that.phone,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class SendOtpEvent implements AuthEvent {
  const SendOtpEvent(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpEventCopyWith<SendOtpEvent> get copyWith => _$SendOtpEventCopyWithImpl<SendOtpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'AuthEvent.sendOtp(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $SendOtpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SendOtpEventCopyWith(SendOtpEvent value, $Res Function(SendOtpEvent) _then) = _$SendOtpEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$SendOtpEventCopyWithImpl<$Res>
    implements $SendOtpEventCopyWith<$Res> {
  _$SendOtpEventCopyWithImpl(this._self, this._then);

  final SendOtpEvent _self;
  final $Res Function(SendOtpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(SendOtpEvent(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerifyOtpEvent implements AuthEvent {
  const VerifyOtpEvent(this.smsCode);
  

 final  String smsCode;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpEventCopyWith<VerifyOtpEvent> get copyWith => _$VerifyOtpEventCopyWithImpl<VerifyOtpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpEvent&&(identical(other.smsCode, smsCode) || other.smsCode == smsCode));
}


@override
int get hashCode => Object.hash(runtimeType,smsCode);

@override
String toString() {
  return 'AuthEvent.verifyOtp(smsCode: $smsCode)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $VerifyOtpEventCopyWith(VerifyOtpEvent value, $Res Function(VerifyOtpEvent) _then) = _$VerifyOtpEventCopyWithImpl;
@useResult
$Res call({
 String smsCode
});




}
/// @nodoc
class _$VerifyOtpEventCopyWithImpl<$Res>
    implements $VerifyOtpEventCopyWith<$Res> {
  _$VerifyOtpEventCopyWithImpl(this._self, this._then);

  final VerifyOtpEvent _self;
  final $Res Function(VerifyOtpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? smsCode = null,}) {
  return _then(VerifyOtpEvent(
null == smsCode ? _self.smsCode : smsCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SaveUserEvent implements AuthEvent {
  const SaveUserEvent(this.name, this.phone, this.passowrd);
  

 final  String name;
 final  String phone;
 final  String passowrd;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveUserEventCopyWith<SaveUserEvent> get copyWith => _$SaveUserEventCopyWithImpl<SaveUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveUserEvent&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.passowrd, passowrd) || other.passowrd == passowrd));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,passowrd);

@override
String toString() {
  return 'AuthEvent.saveUser(name: $name, phone: $phone, passowrd: $passowrd)';
}


}

/// @nodoc
abstract mixin class $SaveUserEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SaveUserEventCopyWith(SaveUserEvent value, $Res Function(SaveUserEvent) _then) = _$SaveUserEventCopyWithImpl;
@useResult
$Res call({
 String name, String phone, String passowrd
});




}
/// @nodoc
class _$SaveUserEventCopyWithImpl<$Res>
    implements $SaveUserEventCopyWith<$Res> {
  _$SaveUserEventCopyWithImpl(this._self, this._then);

  final SaveUserEvent _self;
  final $Res Function(SaveUserEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? passowrd = null,}) {
  return _then(SaveUserEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,null == passowrd ? _self.passowrd : passowrd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginWithMobileEvent implements AuthEvent {
  const LoginWithMobileEvent(this.phone, this.password);
  

 final  String phone;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithMobileEventCopyWith<LoginWithMobileEvent> get copyWith => _$LoginWithMobileEventCopyWithImpl<LoginWithMobileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithMobileEvent&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,phone,password);

@override
String toString() {
  return 'AuthEvent.loginWithUsername(phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginWithMobileEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginWithMobileEventCopyWith(LoginWithMobileEvent value, $Res Function(LoginWithMobileEvent) _then) = _$LoginWithMobileEventCopyWithImpl;
@useResult
$Res call({
 String phone, String password
});




}
/// @nodoc
class _$LoginWithMobileEventCopyWithImpl<$Res>
    implements $LoginWithMobileEventCopyWith<$Res> {
  _$LoginWithMobileEventCopyWithImpl(this._self, this._then);

  final LoginWithMobileEvent _self;
  final $Res Function(LoginWithMobileEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? password = null,}) {
  return _then(LoginWithMobileEvent(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
