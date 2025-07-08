// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoCallStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCallStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallStates()';
}


}

/// @nodoc
class $VideoCallStatesCopyWith<$Res>  {
$VideoCallStatesCopyWith(VideoCallStates _, $Res Function(VideoCallStates) __);
}


/// Adds pattern-matching-related methods to [VideoCallStates].
extension VideoCallStatesPatterns on VideoCallStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Connecting value)?  connecting,TResult Function( Connected value)?  connected,TResult Function( CallEnded value)?  callEnded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case CallEnded() when callEnded != null:
return callEnded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Connecting value)  connecting,required TResult Function( Connected value)  connected,required TResult Function( CallEnded value)  callEnded,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Connecting():
return connecting(_that);case Connected():
return connected(_that);case CallEnded():
return callEnded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Connecting value)?  connecting,TResult? Function( Connected value)?  connected,TResult? Function( CallEnded value)?  callEnded,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case CallEnded() when callEnded != null:
return callEnded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  connecting,TResult Function( RtcEngine? engine,  bool? localUserJoined,  int? remoteUid)?  connected,TResult Function()?  callEnded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Connecting() when connecting != null:
return connecting();case Connected() when connected != null:
return connected(_that.engine,_that.localUserJoined,_that.remoteUid);case CallEnded() when callEnded != null:
return callEnded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  connecting,required TResult Function( RtcEngine? engine,  bool? localUserJoined,  int? remoteUid)  connected,required TResult Function()  callEnded,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Connecting():
return connecting();case Connected():
return connected(_that.engine,_that.localUserJoined,_that.remoteUid);case CallEnded():
return callEnded();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  connecting,TResult? Function( RtcEngine? engine,  bool? localUserJoined,  int? remoteUid)?  connected,TResult? Function()?  callEnded,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Connecting() when connecting != null:
return connecting();case Connected() when connected != null:
return connected(_that.engine,_that.localUserJoined,_that.remoteUid);case CallEnded() when callEnded != null:
return callEnded();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements VideoCallStates {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallStates.initial()';
}


}




/// @nodoc


class Connecting implements VideoCallStates {
  const Connecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallStates.connecting()';
}


}




/// @nodoc


class Connected implements VideoCallStates {
  const Connected({this.engine, this.localUserJoined, this.remoteUid});
  

 final  RtcEngine? engine;
 final  bool? localUserJoined;
 final  int? remoteUid;

/// Create a copy of VideoCallStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedCopyWith<Connected> get copyWith => _$ConnectedCopyWithImpl<Connected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connected&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.localUserJoined, localUserJoined) || other.localUserJoined == localUserJoined)&&(identical(other.remoteUid, remoteUid) || other.remoteUid == remoteUid));
}


@override
int get hashCode => Object.hash(runtimeType,engine,localUserJoined,remoteUid);

@override
String toString() {
  return 'VideoCallStates.connected(engine: $engine, localUserJoined: $localUserJoined, remoteUid: $remoteUid)';
}


}

/// @nodoc
abstract mixin class $ConnectedCopyWith<$Res> implements $VideoCallStatesCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) _then) = _$ConnectedCopyWithImpl;
@useResult
$Res call({
 RtcEngine? engine, bool? localUserJoined, int? remoteUid
});




}
/// @nodoc
class _$ConnectedCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(this._self, this._then);

  final Connected _self;
  final $Res Function(Connected) _then;

/// Create a copy of VideoCallStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? engine = freezed,Object? localUserJoined = freezed,Object? remoteUid = freezed,}) {
  return _then(Connected(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as RtcEngine?,localUserJoined: freezed == localUserJoined ? _self.localUserJoined : localUserJoined // ignore: cast_nullable_to_non_nullable
as bool?,remoteUid: freezed == remoteUid ? _self.remoteUid : remoteUid // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class CallEnded implements VideoCallStates {
  const CallEnded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CallEnded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallStates.callEnded()';
}


}




// dart format on
