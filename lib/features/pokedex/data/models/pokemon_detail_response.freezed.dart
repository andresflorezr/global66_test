// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDetailResponse {
  int get id;
  String get name;
  int get weight;
  int get height;
  List<TypeSlotModel> get types;
  SpritesModel get sprites;
  List<AbilitySlotModel> get abilities;
  SpeciesModel get species;

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonDetailResponseCopyWith<PokemonDetailResponse> get copyWith =>
      _$PokemonDetailResponseCopyWithImpl<PokemonDetailResponse>(
          this as PokemonDetailResponse, _$identity);

  /// Serializes this PokemonDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonDetailResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other.abilities, abilities) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      weight,
      height,
      const DeepCollectionEquality().hash(types),
      sprites,
      const DeepCollectionEquality().hash(abilities),
      species);

  @override
  String toString() {
    return 'PokemonDetailResponse(id: $id, name: $name, weight: $weight, height: $height, types: $types, sprites: $sprites, abilities: $abilities, species: $species)';
  }
}

/// @nodoc
abstract mixin class $PokemonDetailResponseCopyWith<$Res> {
  factory $PokemonDetailResponseCopyWith(PokemonDetailResponse value,
          $Res Function(PokemonDetailResponse) _then) =
      _$PokemonDetailResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int height,
      List<TypeSlotModel> types,
      SpritesModel sprites,
      List<AbilitySlotModel> abilities,
      SpeciesModel species});

  $SpritesModelCopyWith<$Res> get sprites;
  $SpeciesModelCopyWith<$Res> get species;
}

/// @nodoc
class _$PokemonDetailResponseCopyWithImpl<$Res>
    implements $PokemonDetailResponseCopyWith<$Res> {
  _$PokemonDetailResponseCopyWithImpl(this._self, this._then);

  final PokemonDetailResponse _self;
  final $Res Function(PokemonDetailResponse) _then;

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? height = null,
    Object? types = null,
    Object? sprites = null,
    Object? abilities = null,
    Object? species = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeSlotModel>,
      sprites: null == sprites
          ? _self.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesModel,
      abilities: null == abilities
          ? _self.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilitySlotModel>,
      species: null == species
          ? _self.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesModel,
    ));
  }

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpritesModelCopyWith<$Res> get sprites {
    return $SpritesModelCopyWith<$Res>(_self.sprites, (value) {
      return _then(_self.copyWith(sprites: value));
    });
  }

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesModelCopyWith<$Res> get species {
    return $SpeciesModelCopyWith<$Res>(_self.species, (value) {
      return _then(_self.copyWith(species: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonDetailResponse].
extension PokemonDetailResponsePatterns on PokemonDetailResponse {
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
    TResult Function(_PokemonDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse() when $default != null:
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
    TResult Function(_PokemonDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse():
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
    TResult? Function(_PokemonDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse() when $default != null:
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
            int id,
            String name,
            int weight,
            int height,
            List<TypeSlotModel> types,
            SpritesModel sprites,
            List<AbilitySlotModel> abilities,
            SpeciesModel species)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse() when $default != null:
        return $default(_that.id, _that.name, _that.weight, _that.height,
            _that.types, _that.sprites, _that.abilities, _that.species);
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
            int id,
            String name,
            int weight,
            int height,
            List<TypeSlotModel> types,
            SpritesModel sprites,
            List<AbilitySlotModel> abilities,
            SpeciesModel species)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse():
        return $default(_that.id, _that.name, _that.weight, _that.height,
            _that.types, _that.sprites, _that.abilities, _that.species);
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
            int id,
            String name,
            int weight,
            int height,
            List<TypeSlotModel> types,
            SpritesModel sprites,
            List<AbilitySlotModel> abilities,
            SpeciesModel species)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailResponse() when $default != null:
        return $default(_that.id, _that.name, _that.weight, _that.height,
            _that.types, _that.sprites, _that.abilities, _that.species);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonDetailResponse implements PokemonDetailResponse {
  const _PokemonDetailResponse(
      {required this.id,
      required this.name,
      required this.weight,
      required this.height,
      required final List<TypeSlotModel> types,
      required this.sprites,
      required final List<AbilitySlotModel> abilities,
      required this.species})
      : _types = types,
        _abilities = abilities;
  factory _PokemonDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  @override
  final int height;
  final List<TypeSlotModel> _types;
  @override
  List<TypeSlotModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final SpritesModel sprites;
  final List<AbilitySlotModel> _abilities;
  @override
  List<AbilitySlotModel> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final SpeciesModel species;

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonDetailResponseCopyWith<_PokemonDetailResponse> get copyWith =>
      __$PokemonDetailResponseCopyWithImpl<_PokemonDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonDetailResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      weight,
      height,
      const DeepCollectionEquality().hash(_types),
      sprites,
      const DeepCollectionEquality().hash(_abilities),
      species);

  @override
  String toString() {
    return 'PokemonDetailResponse(id: $id, name: $name, weight: $weight, height: $height, types: $types, sprites: $sprites, abilities: $abilities, species: $species)';
  }
}

/// @nodoc
abstract mixin class _$PokemonDetailResponseCopyWith<$Res>
    implements $PokemonDetailResponseCopyWith<$Res> {
  factory _$PokemonDetailResponseCopyWith(_PokemonDetailResponse value,
          $Res Function(_PokemonDetailResponse) _then) =
      __$PokemonDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int height,
      List<TypeSlotModel> types,
      SpritesModel sprites,
      List<AbilitySlotModel> abilities,
      SpeciesModel species});

  @override
  $SpritesModelCopyWith<$Res> get sprites;
  @override
  $SpeciesModelCopyWith<$Res> get species;
}

/// @nodoc
class __$PokemonDetailResponseCopyWithImpl<$Res>
    implements _$PokemonDetailResponseCopyWith<$Res> {
  __$PokemonDetailResponseCopyWithImpl(this._self, this._then);

  final _PokemonDetailResponse _self;
  final $Res Function(_PokemonDetailResponse) _then;

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? height = null,
    Object? types = null,
    Object? sprites = null,
    Object? abilities = null,
    Object? species = null,
  }) {
    return _then(_PokemonDetailResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeSlotModel>,
      sprites: null == sprites
          ? _self.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesModel,
      abilities: null == abilities
          ? _self._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilitySlotModel>,
      species: null == species
          ? _self.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesModel,
    ));
  }

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpritesModelCopyWith<$Res> get sprites {
    return $SpritesModelCopyWith<$Res>(_self.sprites, (value) {
      return _then(_self.copyWith(sprites: value));
    });
  }

  /// Create a copy of PokemonDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesModelCopyWith<$Res> get species {
    return $SpeciesModelCopyWith<$Res>(_self.species, (value) {
      return _then(_self.copyWith(species: value));
    });
  }
}

/// @nodoc
mixin _$SpeciesModel {
  String get url;

  /// Create a copy of SpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpeciesModelCopyWith<SpeciesModel> get copyWith =>
      _$SpeciesModelCopyWithImpl<SpeciesModel>(
          this as SpeciesModel, _$identity);

  /// Serializes this SpeciesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpeciesModel &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'SpeciesModel(url: $url)';
  }
}

/// @nodoc
abstract mixin class $SpeciesModelCopyWith<$Res> {
  factory $SpeciesModelCopyWith(
          SpeciesModel value, $Res Function(SpeciesModel) _then) =
      _$SpeciesModelCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$SpeciesModelCopyWithImpl<$Res> implements $SpeciesModelCopyWith<$Res> {
  _$SpeciesModelCopyWithImpl(this._self, this._then);

  final SpeciesModel _self;
  final $Res Function(SpeciesModel) _then;

  /// Create a copy of SpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpeciesModel].
extension SpeciesModelPatterns on SpeciesModel {
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
    TResult Function(_SpeciesModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel() when $default != null:
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
    TResult Function(_SpeciesModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel():
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
    TResult? Function(_SpeciesModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel() when $default != null:
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
    TResult Function(String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel() when $default != null:
        return $default(_that.url);
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
    TResult Function(String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel():
        return $default(_that.url);
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
    TResult? Function(String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpeciesModel() when $default != null:
        return $default(_that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SpeciesModel implements SpeciesModel {
  const _SpeciesModel({required this.url});
  factory _SpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$SpeciesModelFromJson(json);

  @override
  final String url;

  /// Create a copy of SpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpeciesModelCopyWith<_SpeciesModel> get copyWith =>
      __$SpeciesModelCopyWithImpl<_SpeciesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpeciesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpeciesModel &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'SpeciesModel(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$SpeciesModelCopyWith<$Res>
    implements $SpeciesModelCopyWith<$Res> {
  factory _$SpeciesModelCopyWith(
          _SpeciesModel value, $Res Function(_SpeciesModel) _then) =
      __$SpeciesModelCopyWithImpl;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$SpeciesModelCopyWithImpl<$Res>
    implements _$SpeciesModelCopyWith<$Res> {
  __$SpeciesModelCopyWithImpl(this._self, this._then);

  final _SpeciesModel _self;
  final $Res Function(_SpeciesModel) _then;

  /// Create a copy of SpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(_SpeciesModel(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TypeSlotModel {
  int get slot;
  TypeModel get type;

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeSlotModelCopyWith<TypeSlotModel> get copyWith =>
      _$TypeSlotModelCopyWithImpl<TypeSlotModel>(
          this as TypeSlotModel, _$identity);

  /// Serializes this TypeSlotModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeSlotModel &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @override
  String toString() {
    return 'TypeSlotModel(slot: $slot, type: $type)';
  }
}

/// @nodoc
abstract mixin class $TypeSlotModelCopyWith<$Res> {
  factory $TypeSlotModelCopyWith(
          TypeSlotModel value, $Res Function(TypeSlotModel) _then) =
      _$TypeSlotModelCopyWithImpl;
  @useResult
  $Res call({int slot, TypeModel type});

  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeSlotModelCopyWithImpl<$Res>
    implements $TypeSlotModelCopyWith<$Res> {
  _$TypeSlotModelCopyWithImpl(this._self, this._then);

  final TypeSlotModel _self;
  final $Res Function(TypeSlotModel) _then;

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ));
  }

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res> get type {
    return $TypeModelCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TypeSlotModel].
extension TypeSlotModelPatterns on TypeSlotModel {
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
    TResult Function(_TypeSlotModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel() when $default != null:
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
    TResult Function(_TypeSlotModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel():
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
    TResult? Function(_TypeSlotModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel() when $default != null:
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
    TResult Function(int slot, TypeModel type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel() when $default != null:
        return $default(_that.slot, _that.type);
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
    TResult Function(int slot, TypeModel type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel():
        return $default(_that.slot, _that.type);
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
    TResult? Function(int slot, TypeModel type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeSlotModel() when $default != null:
        return $default(_that.slot, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TypeSlotModel implements TypeSlotModel {
  const _TypeSlotModel({required this.slot, required this.type});
  factory _TypeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$TypeSlotModelFromJson(json);

  @override
  final int slot;
  @override
  final TypeModel type;

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeSlotModelCopyWith<_TypeSlotModel> get copyWith =>
      __$TypeSlotModelCopyWithImpl<_TypeSlotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeSlotModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeSlotModel &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @override
  String toString() {
    return 'TypeSlotModel(slot: $slot, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$TypeSlotModelCopyWith<$Res>
    implements $TypeSlotModelCopyWith<$Res> {
  factory _$TypeSlotModelCopyWith(
          _TypeSlotModel value, $Res Function(_TypeSlotModel) _then) =
      __$TypeSlotModelCopyWithImpl;
  @override
  @useResult
  $Res call({int slot, TypeModel type});

  @override
  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class __$TypeSlotModelCopyWithImpl<$Res>
    implements _$TypeSlotModelCopyWith<$Res> {
  __$TypeSlotModelCopyWithImpl(this._self, this._then);

  final _TypeSlotModel _self;
  final $Res Function(_TypeSlotModel) _then;

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_TypeSlotModel(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ));
  }

  /// Create a copy of TypeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res> get type {
    return $TypeModelCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// @nodoc
mixin _$TypeModel {
  String get name;
  String get url;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<TypeModel> get copyWith =>
      _$TypeModelCopyWithImpl<TypeModel>(this as TypeModel, _$identity);

  /// Serializes this TypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'TypeModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) _then) =
      _$TypeModelCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res> implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._self, this._then);

  final TypeModel _self;
  final $Res Function(TypeModel) _then;

  /// Create a copy of TypeModel
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

/// Adds pattern-matching-related methods to [TypeModel].
extension TypeModelPatterns on TypeModel {
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
    TResult Function(_TypeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeModel() when $default != null:
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
    TResult Function(_TypeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeModel():
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
    TResult? Function(_TypeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeModel() when $default != null:
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
      case _TypeModel() when $default != null:
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
      case _TypeModel():
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
      case _TypeModel() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TypeModel implements TypeModel {
  const _TypeModel({required this.name, required this.url});
  factory _TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeModelCopyWith<_TypeModel> get copyWith =>
      __$TypeModelCopyWithImpl<_TypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'TypeModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$TypeModelCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$TypeModelCopyWith(
          _TypeModel value, $Res Function(_TypeModel) _then) =
      __$TypeModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$TypeModelCopyWithImpl<$Res> implements _$TypeModelCopyWith<$Res> {
  __$TypeModelCopyWithImpl(this._self, this._then);

  final _TypeModel _self;
  final $Res Function(_TypeModel) _then;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_TypeModel(
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

/// @nodoc
mixin _$SpritesModel {
  @JsonKey(name: 'front_default')
  String get frontDefault;

  /// Create a copy of SpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpritesModelCopyWith<SpritesModel> get copyWith =>
      _$SpritesModelCopyWithImpl<SpritesModel>(
          this as SpritesModel, _$identity);

  /// Serializes this SpritesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpritesModel &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @override
  String toString() {
    return 'SpritesModel(frontDefault: $frontDefault)';
  }
}

/// @nodoc
abstract mixin class $SpritesModelCopyWith<$Res> {
  factory $SpritesModelCopyWith(
          SpritesModel value, $Res Function(SpritesModel) _then) =
      _$SpritesModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$SpritesModelCopyWithImpl<$Res> implements $SpritesModelCopyWith<$Res> {
  _$SpritesModelCopyWithImpl(this._self, this._then);

  final SpritesModel _self;
  final $Res Function(SpritesModel) _then;

  /// Create a copy of SpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_self.copyWith(
      frontDefault: null == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpritesModel].
extension SpritesModelPatterns on SpritesModel {
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
    TResult Function(_SpritesModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpritesModel() when $default != null:
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
    TResult Function(_SpritesModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpritesModel():
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
    TResult? Function(_SpritesModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpritesModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'front_default') String frontDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpritesModel() when $default != null:
        return $default(_that.frontDefault);
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
    TResult Function(@JsonKey(name: 'front_default') String frontDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpritesModel():
        return $default(_that.frontDefault);
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
    TResult? Function(@JsonKey(name: 'front_default') String frontDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpritesModel() when $default != null:
        return $default(_that.frontDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SpritesModel implements SpritesModel {
  const _SpritesModel(
      {@JsonKey(name: 'front_default') required this.frontDefault});
  factory _SpritesModel.fromJson(Map<String, dynamic> json) =>
      _$SpritesModelFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  /// Create a copy of SpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpritesModelCopyWith<_SpritesModel> get copyWith =>
      __$SpritesModelCopyWithImpl<_SpritesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpritesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpritesModel &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @override
  String toString() {
    return 'SpritesModel(frontDefault: $frontDefault)';
  }
}

/// @nodoc
abstract mixin class _$SpritesModelCopyWith<$Res>
    implements $SpritesModelCopyWith<$Res> {
  factory _$SpritesModelCopyWith(
          _SpritesModel value, $Res Function(_SpritesModel) _then) =
      __$SpritesModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$SpritesModelCopyWithImpl<$Res>
    implements _$SpritesModelCopyWith<$Res> {
  __$SpritesModelCopyWithImpl(this._self, this._then);

  final _SpritesModel _self;
  final $Res Function(_SpritesModel) _then;

  /// Create a copy of SpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_SpritesModel(
      frontDefault: null == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AbilitySlotModel {
  AbilityModel get ability;
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  int get slot;

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AbilitySlotModelCopyWith<AbilitySlotModel> get copyWith =>
      _$AbilitySlotModelCopyWithImpl<AbilitySlotModel>(
          this as AbilitySlotModel, _$identity);

  /// Serializes this AbilitySlotModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbilitySlotModel &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  @override
  String toString() {
    return 'AbilitySlotModel(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }
}

/// @nodoc
abstract mixin class $AbilitySlotModelCopyWith<$Res> {
  factory $AbilitySlotModelCopyWith(
          AbilitySlotModel value, $Res Function(AbilitySlotModel) _then) =
      _$AbilitySlotModelCopyWithImpl;
  @useResult
  $Res call(
      {AbilityModel ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});

  $AbilityModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilitySlotModelCopyWithImpl<$Res>
    implements $AbilitySlotModelCopyWith<$Res> {
  _$AbilitySlotModelCopyWithImpl(this._self, this._then);

  final AbilitySlotModel _self;
  final $Res Function(AbilitySlotModel) _then;

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_self.copyWith(
      ability: null == ability
          ? _self.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityModel,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbilityModelCopyWith<$Res> get ability {
    return $AbilityModelCopyWith<$Res>(_self.ability, (value) {
      return _then(_self.copyWith(ability: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AbilitySlotModel].
extension AbilitySlotModelPatterns on AbilitySlotModel {
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
    TResult Function(_AbilitySlotModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel() when $default != null:
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
    TResult Function(_AbilitySlotModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel():
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
    TResult? Function(_AbilitySlotModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel() when $default != null:
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
    TResult Function(AbilityModel ability,
            @JsonKey(name: 'is_hidden') bool isHidden, int slot)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel() when $default != null:
        return $default(_that.ability, _that.isHidden, _that.slot);
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
    TResult Function(AbilityModel ability,
            @JsonKey(name: 'is_hidden') bool isHidden, int slot)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel():
        return $default(_that.ability, _that.isHidden, _that.slot);
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
    TResult? Function(AbilityModel ability,
            @JsonKey(name: 'is_hidden') bool isHidden, int slot)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilitySlotModel() when $default != null:
        return $default(_that.ability, _that.isHidden, _that.slot);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AbilitySlotModel implements AbilitySlotModel {
  const _AbilitySlotModel(
      {required this.ability,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot});
  factory _AbilitySlotModel.fromJson(Map<String, dynamic> json) =>
      _$AbilitySlotModelFromJson(json);

  @override
  final AbilityModel ability;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AbilitySlotModelCopyWith<_AbilitySlotModel> get copyWith =>
      __$AbilitySlotModelCopyWithImpl<_AbilitySlotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AbilitySlotModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbilitySlotModel &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  @override
  String toString() {
    return 'AbilitySlotModel(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }
}

/// @nodoc
abstract mixin class _$AbilitySlotModelCopyWith<$Res>
    implements $AbilitySlotModelCopyWith<$Res> {
  factory _$AbilitySlotModelCopyWith(
          _AbilitySlotModel value, $Res Function(_AbilitySlotModel) _then) =
      __$AbilitySlotModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AbilityModel ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});

  @override
  $AbilityModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$AbilitySlotModelCopyWithImpl<$Res>
    implements _$AbilitySlotModelCopyWith<$Res> {
  __$AbilitySlotModelCopyWithImpl(this._self, this._then);

  final _AbilitySlotModel _self;
  final $Res Function(_AbilitySlotModel) _then;

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_AbilitySlotModel(
      ability: null == ability
          ? _self.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityModel,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of AbilitySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbilityModelCopyWith<$Res> get ability {
    return $AbilityModelCopyWith<$Res>(_self.ability, (value) {
      return _then(_self.copyWith(ability: value));
    });
  }
}

/// @nodoc
mixin _$AbilityModel {
  String get name;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AbilityModelCopyWith<AbilityModel> get copyWith =>
      _$AbilityModelCopyWithImpl<AbilityModel>(
          this as AbilityModel, _$identity);

  /// Serializes this AbilityModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbilityModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'AbilityModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $AbilityModelCopyWith<$Res> {
  factory $AbilityModelCopyWith(
          AbilityModel value, $Res Function(AbilityModel) _then) =
      _$AbilityModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AbilityModelCopyWithImpl<$Res> implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._self, this._then);

  final AbilityModel _self;
  final $Res Function(AbilityModel) _then;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AbilityModel].
extension AbilityModelPatterns on AbilityModel {
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
    TResult Function(_AbilityModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbilityModel() when $default != null:
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
    TResult Function(_AbilityModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilityModel():
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
    TResult? Function(_AbilityModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilityModel() when $default != null:
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
    TResult Function(String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbilityModel() when $default != null:
        return $default(_that.name);
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
    TResult Function(String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilityModel():
        return $default(_that.name);
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
    TResult? Function(String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbilityModel() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AbilityModel implements AbilityModel {
  const _AbilityModel({required this.name});
  factory _AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);

  @override
  final String name;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AbilityModelCopyWith<_AbilityModel> get copyWith =>
      __$AbilityModelCopyWithImpl<_AbilityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AbilityModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbilityModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'AbilityModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$AbilityModelCopyWith<$Res>
    implements $AbilityModelCopyWith<$Res> {
  factory _$AbilityModelCopyWith(
          _AbilityModel value, $Res Function(_AbilityModel) _then) =
      __$AbilityModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$AbilityModelCopyWithImpl<$Res>
    implements _$AbilityModelCopyWith<$Res> {
  __$AbilityModelCopyWithImpl(this._self, this._then);

  final _AbilityModel _self;
  final $Res Function(_AbilityModel) _then;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_AbilityModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
