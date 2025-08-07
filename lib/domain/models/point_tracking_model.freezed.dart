// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointTrackingModel {

 int get currentPoints; List<Transaction> get transactions;
/// Create a copy of PointTrackingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointTrackingModelCopyWith<PointTrackingModel> get copyWith => _$PointTrackingModelCopyWithImpl<PointTrackingModel>(this as PointTrackingModel, _$identity);

  /// Serializes this PointTrackingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointTrackingModel&&(identical(other.currentPoints, currentPoints) || other.currentPoints == currentPoints)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPoints,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'PointTrackingModel(currentPoints: $currentPoints, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $PointTrackingModelCopyWith<$Res>  {
  factory $PointTrackingModelCopyWith(PointTrackingModel value, $Res Function(PointTrackingModel) _then) = _$PointTrackingModelCopyWithImpl;
@useResult
$Res call({
 int currentPoints, List<Transaction> transactions
});




}
/// @nodoc
class _$PointTrackingModelCopyWithImpl<$Res>
    implements $PointTrackingModelCopyWith<$Res> {
  _$PointTrackingModelCopyWithImpl(this._self, this._then);

  final PointTrackingModel _self;
  final $Res Function(PointTrackingModel) _then;

/// Create a copy of PointTrackingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPoints = null,Object? transactions = null,}) {
  return _then(_self.copyWith(
currentPoints: null == currentPoints ? _self.currentPoints : currentPoints // ignore: cast_nullable_to_non_nullable
as int,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [PointTrackingModel].
extension PointTrackingModelPatterns on PointTrackingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointTrackingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointTrackingModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointTrackingModel value)  $default,){
final _that = this;
switch (_that) {
case _PointTrackingModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointTrackingModel value)?  $default,){
final _that = this;
switch (_that) {
case _PointTrackingModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPoints,  List<Transaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointTrackingModel() when $default != null:
return $default(_that.currentPoints,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPoints,  List<Transaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _PointTrackingModel():
return $default(_that.currentPoints,_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPoints,  List<Transaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _PointTrackingModel() when $default != null:
return $default(_that.currentPoints,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PointTrackingModel implements PointTrackingModel {
  const _PointTrackingModel({required this.currentPoints, required final  List<Transaction> transactions}): _transactions = transactions;
  factory _PointTrackingModel.fromJson(Map<String, dynamic> json) => _$PointTrackingModelFromJson(json);

@override final  int currentPoints;
 final  List<Transaction> _transactions;
@override List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of PointTrackingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointTrackingModelCopyWith<_PointTrackingModel> get copyWith => __$PointTrackingModelCopyWithImpl<_PointTrackingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointTrackingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointTrackingModel&&(identical(other.currentPoints, currentPoints) || other.currentPoints == currentPoints)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPoints,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'PointTrackingModel(currentPoints: $currentPoints, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$PointTrackingModelCopyWith<$Res> implements $PointTrackingModelCopyWith<$Res> {
  factory _$PointTrackingModelCopyWith(_PointTrackingModel value, $Res Function(_PointTrackingModel) _then) = __$PointTrackingModelCopyWithImpl;
@override @useResult
$Res call({
 int currentPoints, List<Transaction> transactions
});




}
/// @nodoc
class __$PointTrackingModelCopyWithImpl<$Res>
    implements _$PointTrackingModelCopyWith<$Res> {
  __$PointTrackingModelCopyWithImpl(this._self, this._then);

  final _PointTrackingModel _self;
  final $Res Function(_PointTrackingModel) _then;

/// Create a copy of PointTrackingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPoints = null,Object? transactions = null,}) {
  return _then(_PointTrackingModel(
currentPoints: null == currentPoints ? _self.currentPoints : currentPoints // ignore: cast_nullable_to_non_nullable
as int,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}


}

// dart format on
