// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatSend value)?  send,TResult Function( ChatReceive value)?  receive,TResult Function( tokengen value)?  tokengenrate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatSend() when send != null:
return send(_that);case ChatReceive() when receive != null:
return receive(_that);case tokengen() when tokengenrate != null:
return tokengenrate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatSend value)  send,required TResult Function( ChatReceive value)  receive,required TResult Function( tokengen value)  tokengenrate,}){
final _that = this;
switch (_that) {
case ChatSend():
return send(_that);case ChatReceive():
return receive(_that);case tokengen():
return tokengenrate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatSend value)?  send,TResult? Function( ChatReceive value)?  receive,TResult? Function( tokengen value)?  tokengenrate,}){
final _that = this;
switch (_that) {
case ChatSend() when send != null:
return send(_that);case ChatReceive() when receive != null:
return receive(_that);case tokengen() when tokengenrate != null:
return tokengenrate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ChatMessage message)?  send,TResult Function( ChatMessage message)?  receive,TResult Function( String userid)?  tokengenrate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatSend() when send != null:
return send(_that.message);case ChatReceive() when receive != null:
return receive(_that.message);case tokengen() when tokengenrate != null:
return tokengenrate(_that.userid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ChatMessage message)  send,required TResult Function( ChatMessage message)  receive,required TResult Function( String userid)  tokengenrate,}) {final _that = this;
switch (_that) {
case ChatSend():
return send(_that.message);case ChatReceive():
return receive(_that.message);case tokengen():
return tokengenrate(_that.userid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ChatMessage message)?  send,TResult? Function( ChatMessage message)?  receive,TResult? Function( String userid)?  tokengenrate,}) {final _that = this;
switch (_that) {
case ChatSend() when send != null:
return send(_that.message);case ChatReceive() when receive != null:
return receive(_that.message);case tokengen() when tokengenrate != null:
return tokengenrate(_that.userid);case _:
  return null;

}
}

}

/// @nodoc


class ChatSend implements ChatEvent {
  const ChatSend(this.message);
  

 final  ChatMessage message;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatSendCopyWith<ChatSend> get copyWith => _$ChatSendCopyWithImpl<ChatSend>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatSend&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatEvent.send(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatSendCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatSendCopyWith(ChatSend value, $Res Function(ChatSend) _then) = _$ChatSendCopyWithImpl;
@useResult
$Res call({
 ChatMessage message
});




}
/// @nodoc
class _$ChatSendCopyWithImpl<$Res>
    implements $ChatSendCopyWith<$Res> {
  _$ChatSendCopyWithImpl(this._self, this._then);

  final ChatSend _self;
  final $Res Function(ChatSend) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChatSend(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,
  ));
}


}

/// @nodoc


class ChatReceive implements ChatEvent {
  const ChatReceive(this.message);
  

 final  ChatMessage message;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatReceiveCopyWith<ChatReceive> get copyWith => _$ChatReceiveCopyWithImpl<ChatReceive>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatReceive&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatEvent.receive(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatReceiveCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatReceiveCopyWith(ChatReceive value, $Res Function(ChatReceive) _then) = _$ChatReceiveCopyWithImpl;
@useResult
$Res call({
 ChatMessage message
});




}
/// @nodoc
class _$ChatReceiveCopyWithImpl<$Res>
    implements $ChatReceiveCopyWith<$Res> {
  _$ChatReceiveCopyWithImpl(this._self, this._then);

  final ChatReceive _self;
  final $Res Function(ChatReceive) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChatReceive(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,
  ));
}


}

/// @nodoc


class tokengen implements ChatEvent {
  const tokengen(this.userid);
  

 final  String userid;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$tokengenCopyWith<tokengen> get copyWith => _$tokengenCopyWithImpl<tokengen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is tokengen&&(identical(other.userid, userid) || other.userid == userid));
}


@override
int get hashCode => Object.hash(runtimeType,userid);

@override
String toString() {
  return 'ChatEvent.tokengenrate(userid: $userid)';
}


}

/// @nodoc
abstract mixin class $tokengenCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $tokengenCopyWith(tokengen value, $Res Function(tokengen) _then) = _$tokengenCopyWithImpl;
@useResult
$Res call({
 String userid
});




}
/// @nodoc
class _$tokengenCopyWithImpl<$Res>
    implements $tokengenCopyWith<$Res> {
  _$tokengenCopyWithImpl(this._self, this._then);

  final tokengen _self;
  final $Res Function(tokengen) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userid = null,}) {
  return _then(tokengen(
null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
