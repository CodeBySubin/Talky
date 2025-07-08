// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSatate {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSatate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSatate()';
}


}

/// @nodoc
class $UserSatateCopyWith<$Res>  {
$UserSatateCopyWith(UserSatate _, $Res Function(UserSatate) __);
}


/// Adds pattern-matching-related methods to [UserSatate].
extension UserSatatePatterns on UserSatate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Intial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Intial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Intial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case Intial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Intial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case Intial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<UserEntity> users)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Intial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<UserEntity> users)  loaded,}) {final _that = this;
switch (_that) {
case Intial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<UserEntity> users)?  loaded,}) {final _that = this;
switch (_that) {
case Intial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class Intial implements UserSatate {
  const Intial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Intial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSatate.initial()';
}


}




/// @nodoc


class Loading implements UserSatate {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSatate.loading()';
}


}




/// @nodoc


class Loaded implements UserSatate {
  const Loaded(final  List<UserEntity> users): _users = users;
  

 final  List<UserEntity> _users;
 List<UserEntity> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserSatate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserSatate.loaded(users: $users)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $UserSatateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<UserEntity> users
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of UserSatate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(Loaded(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,
  ));
}


}

// dart format on
