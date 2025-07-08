// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoCallEvents {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCallEvents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallEvents()';
}


}

/// @nodoc
class $VideoCallEventsCopyWith<$Res>  {
$VideoCallEventsCopyWith(VideoCallEvents _, $Res Function(VideoCallEvents) __);
}


/// Adds pattern-matching-related methods to [VideoCallEvents].
extension VideoCallEventsPatterns on VideoCallEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( RemoteJoined value)?  remoteJoined,TResult Function( RemoteLeft value)?  remoteLeft,TResult Function( Ended value)?  ended,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case RemoteJoined() when remoteJoined != null:
return remoteJoined(_that);case RemoteLeft() when remoteLeft != null:
return remoteLeft(_that);case Ended() when ended != null:
return ended(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( RemoteJoined value)  remoteJoined,required TResult Function( RemoteLeft value)  remoteLeft,required TResult Function( Ended value)  ended,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case RemoteJoined():
return remoteJoined(_that);case RemoteLeft():
return remoteLeft(_that);case Ended():
return ended(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( RemoteJoined value)?  remoteJoined,TResult? Function( RemoteLeft value)?  remoteLeft,TResult? Function( Ended value)?  ended,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case RemoteJoined() when remoteJoined != null:
return remoteJoined(_that);case RemoteLeft() when remoteLeft != null:
return remoteLeft(_that);case Ended() when ended != null:
return ended(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int uid)?  remoteJoined,TResult Function()?  remoteLeft,TResult Function()?  ended,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case RemoteJoined() when remoteJoined != null:
return remoteJoined(_that.uid);case RemoteLeft() when remoteLeft != null:
return remoteLeft();case Ended() when ended != null:
return ended();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int uid)  remoteJoined,required TResult Function()  remoteLeft,required TResult Function()  ended,}) {final _that = this;
switch (_that) {
case Started():
return started();case RemoteJoined():
return remoteJoined(_that.uid);case RemoteLeft():
return remoteLeft();case Ended():
return ended();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int uid)?  remoteJoined,TResult? Function()?  remoteLeft,TResult? Function()?  ended,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case RemoteJoined() when remoteJoined != null:
return remoteJoined(_that.uid);case RemoteLeft() when remoteLeft != null:
return remoteLeft();case Ended() when ended != null:
return ended();case _:
  return null;

}
}

}

/// @nodoc


class Started implements VideoCallEvents {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallEvents.started()';
}


}




/// @nodoc


class RemoteJoined implements VideoCallEvents {
  const RemoteJoined(this.uid);
  

 final  int uid;

/// Create a copy of VideoCallEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteJoinedCopyWith<RemoteJoined> get copyWith => _$RemoteJoinedCopyWithImpl<RemoteJoined>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteJoined&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'VideoCallEvents.remoteJoined(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $RemoteJoinedCopyWith<$Res> implements $VideoCallEventsCopyWith<$Res> {
  factory $RemoteJoinedCopyWith(RemoteJoined value, $Res Function(RemoteJoined) _then) = _$RemoteJoinedCopyWithImpl;
@useResult
$Res call({
 int uid
});




}
/// @nodoc
class _$RemoteJoinedCopyWithImpl<$Res>
    implements $RemoteJoinedCopyWith<$Res> {
  _$RemoteJoinedCopyWithImpl(this._self, this._then);

  final RemoteJoined _self;
  final $Res Function(RemoteJoined) _then;

/// Create a copy of VideoCallEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(RemoteJoined(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RemoteLeft implements VideoCallEvents {
  const RemoteLeft();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteLeft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallEvents.remoteLeft()';
}


}




/// @nodoc


class Ended implements VideoCallEvents {
  const Ended();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ended);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCallEvents.ended()';
}


}




// dart format on
