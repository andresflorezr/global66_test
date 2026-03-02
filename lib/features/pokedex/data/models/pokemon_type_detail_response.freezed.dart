// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonTypeDetailResponse {
  @JsonKey(name: 'damage_relations')
  DamageRelationsModel get damageRelations;

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonTypeDetailResponseCopyWith<PokemonTypeDetailResponse> get copyWith =>
      _$PokemonTypeDetailResponseCopyWithImpl<PokemonTypeDetailResponse>(
          this as PokemonTypeDetailResponse, _$identity);

  /// Serializes this PokemonTypeDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonTypeDetailResponse &&
            (identical(other.damageRelations, damageRelations) ||
                other.damageRelations == damageRelations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, damageRelations);

  @override
  String toString() {
    return 'PokemonTypeDetailResponse(damageRelations: $damageRelations)';
  }
}

/// @nodoc
abstract mixin class $PokemonTypeDetailResponseCopyWith<$Res> {
  factory $PokemonTypeDetailResponseCopyWith(PokemonTypeDetailResponse value,
          $Res Function(PokemonTypeDetailResponse) _then) =
      _$PokemonTypeDetailResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'damage_relations')
      DamageRelationsModel damageRelations});

  $DamageRelationsModelCopyWith<$Res> get damageRelations;
}

/// @nodoc
class _$PokemonTypeDetailResponseCopyWithImpl<$Res>
    implements $PokemonTypeDetailResponseCopyWith<$Res> {
  _$PokemonTypeDetailResponseCopyWithImpl(this._self, this._then);

  final PokemonTypeDetailResponse _self;
  final $Res Function(PokemonTypeDetailResponse) _then;

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damageRelations = null,
  }) {
    return _then(_self.copyWith(
      damageRelations: null == damageRelations
          ? _self.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsModel,
    ));
  }

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsModelCopyWith<$Res> get damageRelations {
    return $DamageRelationsModelCopyWith<$Res>(_self.damageRelations, (value) {
      return _then(_self.copyWith(damageRelations: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonTypeDetailResponse].
extension PokemonTypeDetailResponsePatterns on PokemonTypeDetailResponse {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonTypeDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonTypeDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonTypeDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'damage_relations')
            DamageRelationsModel damageRelations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse() when $default != null:
        return $default(_that.damageRelations);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'damage_relations')
            DamageRelationsModel damageRelations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse():
        return $default(_that.damageRelations);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'damage_relations')
            DamageRelationsModel damageRelations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeDetailResponse() when $default != null:
        return $default(_that.damageRelations);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonTypeDetailResponse implements PokemonTypeDetailResponse {
  const _PokemonTypeDetailResponse(
      {@JsonKey(name: 'damage_relations') required this.damageRelations});
  factory _PokemonTypeDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDetailResponseFromJson(json);

  @override
  @JsonKey(name: 'damage_relations')
  final DamageRelationsModel damageRelations;

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonTypeDetailResponseCopyWith<_PokemonTypeDetailResponse>
      get copyWith =>
          __$PokemonTypeDetailResponseCopyWithImpl<_PokemonTypeDetailResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonTypeDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonTypeDetailResponse &&
            (identical(other.damageRelations, damageRelations) ||
                other.damageRelations == damageRelations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, damageRelations);

  @override
  String toString() {
    return 'PokemonTypeDetailResponse(damageRelations: $damageRelations)';
  }
}

/// @nodoc
abstract mixin class _$PokemonTypeDetailResponseCopyWith<$Res>
    implements $PokemonTypeDetailResponseCopyWith<$Res> {
  factory _$PokemonTypeDetailResponseCopyWith(_PokemonTypeDetailResponse value,
          $Res Function(_PokemonTypeDetailResponse) _then) =
      __$PokemonTypeDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'damage_relations')
      DamageRelationsModel damageRelations});

  @override
  $DamageRelationsModelCopyWith<$Res> get damageRelations;
}

/// @nodoc
class __$PokemonTypeDetailResponseCopyWithImpl<$Res>
    implements _$PokemonTypeDetailResponseCopyWith<$Res> {
  __$PokemonTypeDetailResponseCopyWithImpl(this._self, this._then);

  final _PokemonTypeDetailResponse _self;
  final $Res Function(_PokemonTypeDetailResponse) _then;

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? damageRelations = null,
  }) {
    return _then(_PokemonTypeDetailResponse(
      damageRelations: null == damageRelations
          ? _self.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsModel,
    ));
  }

  /// Create a copy of PokemonTypeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsModelCopyWith<$Res> get damageRelations {
    return $DamageRelationsModelCopyWith<$Res>(_self.damageRelations, (value) {
      return _then(_self.copyWith(damageRelations: value));
    });
  }
}

/// @nodoc
mixin _$DamageRelationsModel {
  @JsonKey(name: 'double_damage_from')
  List<TypeLinkModel> get doubleDamageFrom;

  /// Create a copy of DamageRelationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DamageRelationsModelCopyWith<DamageRelationsModel> get copyWith =>
      _$DamageRelationsModelCopyWithImpl<DamageRelationsModel>(
          this as DamageRelationsModel, _$identity);

  /// Serializes this DamageRelationsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DamageRelationsModel &&
            const DeepCollectionEquality()
                .equals(other.doubleDamageFrom, doubleDamageFrom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(doubleDamageFrom));

  @override
  String toString() {
    return 'DamageRelationsModel(doubleDamageFrom: $doubleDamageFrom)';
  }
}

/// @nodoc
abstract mixin class $DamageRelationsModelCopyWith<$Res> {
  factory $DamageRelationsModelCopyWith(DamageRelationsModel value,
          $Res Function(DamageRelationsModel) _then) =
      _$DamageRelationsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'double_damage_from')
      List<TypeLinkModel> doubleDamageFrom});
}

/// @nodoc
class _$DamageRelationsModelCopyWithImpl<$Res>
    implements $DamageRelationsModelCopyWith<$Res> {
  _$DamageRelationsModelCopyWithImpl(this._self, this._then);

  final DamageRelationsModel _self;
  final $Res Function(DamageRelationsModel) _then;

  /// Create a copy of DamageRelationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
  }) {
    return _then(_self.copyWith(
      doubleDamageFrom: null == doubleDamageFrom
          ? _self.doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<TypeLinkModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [DamageRelationsModel].
extension DamageRelationsModelPatterns on DamageRelationsModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DamageRelationsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DamageRelationsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DamageRelationsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'double_damage_from')
            List<TypeLinkModel> doubleDamageFrom)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel() when $default != null:
        return $default(_that.doubleDamageFrom);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'double_damage_from')
            List<TypeLinkModel> doubleDamageFrom)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel():
        return $default(_that.doubleDamageFrom);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'double_damage_from')
            List<TypeLinkModel> doubleDamageFrom)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DamageRelationsModel() when $default != null:
        return $default(_that.doubleDamageFrom);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DamageRelationsModel implements DamageRelationsModel {
  const _DamageRelationsModel(
      {@JsonKey(name: 'double_damage_from')
      required final List<TypeLinkModel> doubleDamageFrom})
      : _doubleDamageFrom = doubleDamageFrom;
  factory _DamageRelationsModel.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsModelFromJson(json);

  final List<TypeLinkModel> _doubleDamageFrom;
  @override
  @JsonKey(name: 'double_damage_from')
  List<TypeLinkModel> get doubleDamageFrom {
    if (_doubleDamageFrom is EqualUnmodifiableListView)
      return _doubleDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageFrom);
  }

  /// Create a copy of DamageRelationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DamageRelationsModelCopyWith<_DamageRelationsModel> get copyWith =>
      __$DamageRelationsModelCopyWithImpl<_DamageRelationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DamageRelationsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DamageRelationsModel &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageFrom, _doubleDamageFrom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doubleDamageFrom));

  @override
  String toString() {
    return 'DamageRelationsModel(doubleDamageFrom: $doubleDamageFrom)';
  }
}

/// @nodoc
abstract mixin class _$DamageRelationsModelCopyWith<$Res>
    implements $DamageRelationsModelCopyWith<$Res> {
  factory _$DamageRelationsModelCopyWith(_DamageRelationsModel value,
          $Res Function(_DamageRelationsModel) _then) =
      __$DamageRelationsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'double_damage_from')
      List<TypeLinkModel> doubleDamageFrom});
}

/// @nodoc
class __$DamageRelationsModelCopyWithImpl<$Res>
    implements _$DamageRelationsModelCopyWith<$Res> {
  __$DamageRelationsModelCopyWithImpl(this._self, this._then);

  final _DamageRelationsModel _self;
  final $Res Function(_DamageRelationsModel) _then;

  /// Create a copy of DamageRelationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? doubleDamageFrom = null,
  }) {
    return _then(_DamageRelationsModel(
      doubleDamageFrom: null == doubleDamageFrom
          ? _self._doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<TypeLinkModel>,
    ));
  }
}

/// @nodoc
mixin _$TypeLinkModel {
  String get name;
  String get url;

  /// Create a copy of TypeLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeLinkModelCopyWith<TypeLinkModel> get copyWith =>
      _$TypeLinkModelCopyWithImpl<TypeLinkModel>(
          this as TypeLinkModel, _$identity);

  /// Serializes this TypeLinkModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeLinkModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'TypeLinkModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $TypeLinkModelCopyWith<$Res> {
  factory $TypeLinkModelCopyWith(
          TypeLinkModel value, $Res Function(TypeLinkModel) _then) =
      _$TypeLinkModelCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeLinkModelCopyWithImpl<$Res>
    implements $TypeLinkModelCopyWith<$Res> {
  _$TypeLinkModelCopyWithImpl(this._self, this._then);

  final TypeLinkModel _self;
  final $Res Function(TypeLinkModel) _then;

  /// Create a copy of TypeLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TypeLinkModel].
extension TypeLinkModelPatterns on TypeLinkModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeLinkModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeLinkModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeLinkModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel() when $default != null:
        return $default(_that.name, _that.url);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel():
        return $default(_that.name, _that.url);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeLinkModel() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TypeLinkModel implements TypeLinkModel {
  const _TypeLinkModel({required this.name, required this.url});
  factory _TypeLinkModel.fromJson(Map<String, dynamic> json) =>
      _$TypeLinkModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  /// Create a copy of TypeLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeLinkModelCopyWith<_TypeLinkModel> get copyWith =>
      __$TypeLinkModelCopyWithImpl<_TypeLinkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeLinkModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeLinkModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'TypeLinkModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$TypeLinkModelCopyWith<$Res>
    implements $TypeLinkModelCopyWith<$Res> {
  factory _$TypeLinkModelCopyWith(
          _TypeLinkModel value, $Res Function(_TypeLinkModel) _then) =
      __$TypeLinkModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$TypeLinkModelCopyWithImpl<$Res>
    implements _$TypeLinkModelCopyWith<$Res> {
  __$TypeLinkModelCopyWithImpl(this._self, this._then);

  final _TypeLinkModel _self;
  final $Res Function(_TypeLinkModel) _then;

  /// Create a copy of TypeLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_TypeLinkModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
