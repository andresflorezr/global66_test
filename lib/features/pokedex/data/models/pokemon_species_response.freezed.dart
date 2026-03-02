// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonSpeciesResponse {
  @JsonKey(name: 'gender_rate')
  int get genderRate;
  List<GenusModel> get genera;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntryModel> get flavorTextEntries;

  /// Create a copy of PokemonSpeciesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonSpeciesResponseCopyWith<PokemonSpeciesResponse> get copyWith =>
      _$PokemonSpeciesResponseCopyWithImpl<PokemonSpeciesResponse>(
          this as PokemonSpeciesResponse, _$identity);

  /// Serializes this PokemonSpeciesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSpeciesResponse &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            const DeepCollectionEquality().equals(other.genera, genera) &&
            const DeepCollectionEquality()
                .equals(other.flavorTextEntries, flavorTextEntries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      genderRate,
      const DeepCollectionEquality().hash(genera),
      const DeepCollectionEquality().hash(flavorTextEntries));

  @override
  String toString() {
    return 'PokemonSpeciesResponse(genderRate: $genderRate, genera: $genera, flavorTextEntries: $flavorTextEntries)';
  }
}

/// @nodoc
abstract mixin class $PokemonSpeciesResponseCopyWith<$Res> {
  factory $PokemonSpeciesResponseCopyWith(PokemonSpeciesResponse value,
          $Res Function(PokemonSpeciesResponse) _then) =
      _$PokemonSpeciesResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_rate') int genderRate,
      List<GenusModel> genera,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntryModel> flavorTextEntries});
}

/// @nodoc
class _$PokemonSpeciesResponseCopyWithImpl<$Res>
    implements $PokemonSpeciesResponseCopyWith<$Res> {
  _$PokemonSpeciesResponseCopyWithImpl(this._self, this._then);

  final PokemonSpeciesResponse _self;
  final $Res Function(PokemonSpeciesResponse) _then;

  /// Create a copy of PokemonSpeciesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderRate = null,
    Object? genera = null,
    Object? flavorTextEntries = null,
  }) {
    return _then(_self.copyWith(
      genderRate: null == genderRate
          ? _self.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      genera: null == genera
          ? _self.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusModel>,
      flavorTextEntries: null == flavorTextEntries
          ? _self.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntryModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonSpeciesResponse].
extension PokemonSpeciesResponsePatterns on PokemonSpeciesResponse {
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
    TResult Function(_PokemonSpeciesResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse() when $default != null:
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
    TResult Function(_PokemonSpeciesResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse():
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
    TResult? Function(_PokemonSpeciesResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse() when $default != null:
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
            @JsonKey(name: 'gender_rate') int genderRate,
            List<GenusModel> genera,
            @JsonKey(name: 'flavor_text_entries')
            List<FlavorTextEntryModel> flavorTextEntries)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse() when $default != null:
        return $default(
            _that.genderRate, _that.genera, _that.flavorTextEntries);
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
            @JsonKey(name: 'gender_rate') int genderRate,
            List<GenusModel> genera,
            @JsonKey(name: 'flavor_text_entries')
            List<FlavorTextEntryModel> flavorTextEntries)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse():
        return $default(
            _that.genderRate, _that.genera, _that.flavorTextEntries);
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
            @JsonKey(name: 'gender_rate') int genderRate,
            List<GenusModel> genera,
            @JsonKey(name: 'flavor_text_entries')
            List<FlavorTextEntryModel> flavorTextEntries)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesResponse() when $default != null:
        return $default(
            _that.genderRate, _that.genera, _that.flavorTextEntries);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonSpeciesResponse implements PokemonSpeciesResponse {
  const _PokemonSpeciesResponse(
      {@JsonKey(name: 'gender_rate') required this.genderRate,
      required final List<GenusModel> genera,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntryModel> flavorTextEntries})
      : _genera = genera,
        _flavorTextEntries = flavorTextEntries;
  factory _PokemonSpeciesResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesResponseFromJson(json);

  @override
  @JsonKey(name: 'gender_rate')
  final int genderRate;
  final List<GenusModel> _genera;
  @override
  List<GenusModel> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  final List<FlavorTextEntryModel> _flavorTextEntries;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntryModel> get flavorTextEntries {
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTextEntries);
  }

  /// Create a copy of PokemonSpeciesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonSpeciesResponseCopyWith<_PokemonSpeciesResponse> get copyWith =>
      __$PokemonSpeciesResponseCopyWithImpl<_PokemonSpeciesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonSpeciesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpeciesResponse &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      genderRate,
      const DeepCollectionEquality().hash(_genera),
      const DeepCollectionEquality().hash(_flavorTextEntries));

  @override
  String toString() {
    return 'PokemonSpeciesResponse(genderRate: $genderRate, genera: $genera, flavorTextEntries: $flavorTextEntries)';
  }
}

/// @nodoc
abstract mixin class _$PokemonSpeciesResponseCopyWith<$Res>
    implements $PokemonSpeciesResponseCopyWith<$Res> {
  factory _$PokemonSpeciesResponseCopyWith(_PokemonSpeciesResponse value,
          $Res Function(_PokemonSpeciesResponse) _then) =
      __$PokemonSpeciesResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gender_rate') int genderRate,
      List<GenusModel> genera,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntryModel> flavorTextEntries});
}

/// @nodoc
class __$PokemonSpeciesResponseCopyWithImpl<$Res>
    implements _$PokemonSpeciesResponseCopyWith<$Res> {
  __$PokemonSpeciesResponseCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesResponse _self;
  final $Res Function(_PokemonSpeciesResponse) _then;

  /// Create a copy of PokemonSpeciesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? genderRate = null,
    Object? genera = null,
    Object? flavorTextEntries = null,
  }) {
    return _then(_PokemonSpeciesResponse(
      genderRate: null == genderRate
          ? _self.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      genera: null == genera
          ? _self._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusModel>,
      flavorTextEntries: null == flavorTextEntries
          ? _self._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntryModel>,
    ));
  }
}

/// @nodoc
mixin _$FlavorTextEntryModel {
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  LanguageModel get language;
  VersionModel get version;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FlavorTextEntryModelCopyWith<FlavorTextEntryModel> get copyWith =>
      _$FlavorTextEntryModelCopyWithImpl<FlavorTextEntryModel>(
          this as FlavorTextEntryModel, _$identity);

  /// Serializes this FlavorTextEntryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FlavorTextEntryModel &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language, version);

  @override
  String toString() {
    return 'FlavorTextEntryModel(flavorText: $flavorText, language: $language, version: $version)';
  }
}

/// @nodoc
abstract mixin class $FlavorTextEntryModelCopyWith<$Res> {
  factory $FlavorTextEntryModelCopyWith(FlavorTextEntryModel value,
          $Res Function(FlavorTextEntryModel) _then) =
      _$FlavorTextEntryModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      LanguageModel language,
      VersionModel version});

  $LanguageModelCopyWith<$Res> get language;
  $VersionModelCopyWith<$Res> get version;
}

/// @nodoc
class _$FlavorTextEntryModelCopyWithImpl<$Res>
    implements $FlavorTextEntryModelCopyWith<$Res> {
  _$FlavorTextEntryModelCopyWithImpl(this._self, this._then);

  final FlavorTextEntryModel _self;
  final $Res Function(FlavorTextEntryModel) _then;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_self.copyWith(
      flavorText: null == flavorText
          ? _self.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionModel,
    ));
  }

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_self.language, (value) {
      return _then(_self.copyWith(language: value));
    });
  }

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionModelCopyWith<$Res> get version {
    return $VersionModelCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FlavorTextEntryModel].
extension FlavorTextEntryModelPatterns on FlavorTextEntryModel {
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
    TResult Function(_FlavorTextEntryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel() when $default != null:
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
    TResult Function(_FlavorTextEntryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel():
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
    TResult? Function(_FlavorTextEntryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'flavor_text') String flavorText,
            LanguageModel language, VersionModel version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel() when $default != null:
        return $default(_that.flavorText, _that.language, _that.version);
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
    TResult Function(@JsonKey(name: 'flavor_text') String flavorText,
            LanguageModel language, VersionModel version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel():
        return $default(_that.flavorText, _that.language, _that.version);
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
    TResult? Function(@JsonKey(name: 'flavor_text') String flavorText,
            LanguageModel language, VersionModel version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FlavorTextEntryModel() when $default != null:
        return $default(_that.flavorText, _that.language, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FlavorTextEntryModel implements FlavorTextEntryModel {
  const _FlavorTextEntryModel(
      {@JsonKey(name: 'flavor_text') required this.flavorText,
      required this.language,
      required this.version});
  factory _FlavorTextEntryModel.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryModelFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final LanguageModel language;
  @override
  final VersionModel version;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FlavorTextEntryModelCopyWith<_FlavorTextEntryModel> get copyWith =>
      __$FlavorTextEntryModelCopyWithImpl<_FlavorTextEntryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FlavorTextEntryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlavorTextEntryModel &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language, version);

  @override
  String toString() {
    return 'FlavorTextEntryModel(flavorText: $flavorText, language: $language, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$FlavorTextEntryModelCopyWith<$Res>
    implements $FlavorTextEntryModelCopyWith<$Res> {
  factory _$FlavorTextEntryModelCopyWith(_FlavorTextEntryModel value,
          $Res Function(_FlavorTextEntryModel) _then) =
      __$FlavorTextEntryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      LanguageModel language,
      VersionModel version});

  @override
  $LanguageModelCopyWith<$Res> get language;
  @override
  $VersionModelCopyWith<$Res> get version;
}

/// @nodoc
class __$FlavorTextEntryModelCopyWithImpl<$Res>
    implements _$FlavorTextEntryModelCopyWith<$Res> {
  __$FlavorTextEntryModelCopyWithImpl(this._self, this._then);

  final _FlavorTextEntryModel _self;
  final $Res Function(_FlavorTextEntryModel) _then;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flavorText = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_FlavorTextEntryModel(
      flavorText: null == flavorText
          ? _self.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionModel,
    ));
  }

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_self.language, (value) {
      return _then(_self.copyWith(language: value));
    });
  }

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionModelCopyWith<$Res> get version {
    return $VersionModelCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// @nodoc
mixin _$VersionModel {
  String get name;
  String get url;

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VersionModelCopyWith<VersionModel> get copyWith =>
      _$VersionModelCopyWithImpl<VersionModel>(
          this as VersionModel, _$identity);

  /// Serializes this VersionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VersionModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'VersionModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $VersionModelCopyWith<$Res> {
  factory $VersionModelCopyWith(
          VersionModel value, $Res Function(VersionModel) _then) =
      _$VersionModelCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$VersionModelCopyWithImpl<$Res> implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._self, this._then);

  final VersionModel _self;
  final $Res Function(VersionModel) _then;

  /// Create a copy of VersionModel
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

/// Adds pattern-matching-related methods to [VersionModel].
extension VersionModelPatterns on VersionModel {
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
    TResult Function(_VersionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VersionModel() when $default != null:
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
    TResult Function(_VersionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionModel():
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
    TResult? Function(_VersionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionModel() when $default != null:
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
      case _VersionModel() when $default != null:
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
      case _VersionModel():
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
      case _VersionModel() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VersionModel implements VersionModel {
  const _VersionModel({required this.name, required this.url});
  factory _VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VersionModelCopyWith<_VersionModel> get copyWith =>
      __$VersionModelCopyWithImpl<_VersionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VersionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'VersionModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$VersionModelCopyWith<$Res>
    implements $VersionModelCopyWith<$Res> {
  factory _$VersionModelCopyWith(
          _VersionModel value, $Res Function(_VersionModel) _then) =
      __$VersionModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$VersionModelCopyWithImpl<$Res>
    implements _$VersionModelCopyWith<$Res> {
  __$VersionModelCopyWithImpl(this._self, this._then);

  final _VersionModel _self;
  final $Res Function(_VersionModel) _then;

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_VersionModel(
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
mixin _$GenusModel {
  String get genus;
  LanguageModel get language;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenusModelCopyWith<GenusModel> get copyWith =>
      _$GenusModelCopyWithImpl<GenusModel>(this as GenusModel, _$identity);

  /// Serializes this GenusModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenusModel &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  @override
  String toString() {
    return 'GenusModel(genus: $genus, language: $language)';
  }
}

/// @nodoc
abstract mixin class $GenusModelCopyWith<$Res> {
  factory $GenusModelCopyWith(
          GenusModel value, $Res Function(GenusModel) _then) =
      _$GenusModelCopyWithImpl;
  @useResult
  $Res call({String genus, LanguageModel language});

  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusModelCopyWithImpl<$Res> implements $GenusModelCopyWith<$Res> {
  _$GenusModelCopyWithImpl(this._self, this._then);

  final GenusModel _self;
  final $Res Function(GenusModel) _then;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_self.copyWith(
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_self.language, (value) {
      return _then(_self.copyWith(language: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GenusModel].
extension GenusModelPatterns on GenusModel {
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
    TResult Function(_GenusModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenusModel() when $default != null:
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
    TResult Function(_GenusModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenusModel():
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
    TResult? Function(_GenusModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenusModel() when $default != null:
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
    TResult Function(String genus, LanguageModel language)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenusModel() when $default != null:
        return $default(_that.genus, _that.language);
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
    TResult Function(String genus, LanguageModel language) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenusModel():
        return $default(_that.genus, _that.language);
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
    TResult? Function(String genus, LanguageModel language)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenusModel() when $default != null:
        return $default(_that.genus, _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GenusModel implements GenusModel {
  const _GenusModel({required this.genus, required this.language});
  factory _GenusModel.fromJson(Map<String, dynamic> json) =>
      _$GenusModelFromJson(json);

  @override
  final String genus;
  @override
  final LanguageModel language;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenusModelCopyWith<_GenusModel> get copyWith =>
      __$GenusModelCopyWithImpl<_GenusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenusModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenusModel &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  @override
  String toString() {
    return 'GenusModel(genus: $genus, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$GenusModelCopyWith<$Res>
    implements $GenusModelCopyWith<$Res> {
  factory _$GenusModelCopyWith(
          _GenusModel value, $Res Function(_GenusModel) _then) =
      __$GenusModelCopyWithImpl;
  @override
  @useResult
  $Res call({String genus, LanguageModel language});

  @override
  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class __$GenusModelCopyWithImpl<$Res> implements _$GenusModelCopyWith<$Res> {
  __$GenusModelCopyWithImpl(this._self, this._then);

  final _GenusModel _self;
  final $Res Function(_GenusModel) _then;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_GenusModel(
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_self.language, (value) {
      return _then(_self.copyWith(language: value));
    });
  }
}

/// @nodoc
mixin _$LanguageModel {
  String get name;
  String get url;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      _$LanguageModelCopyWithImpl<LanguageModel>(
          this as LanguageModel, _$identity);

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'LanguageModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) _then) =
      _$LanguageModelCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._self, this._then);

  final LanguageModel _self;
  final $Res Function(LanguageModel) _then;

  /// Create a copy of LanguageModel
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

/// Adds pattern-matching-related methods to [LanguageModel].
extension LanguageModelPatterns on LanguageModel {
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
    TResult Function(_LanguageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
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
    TResult Function(_LanguageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel():
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
    TResult? Function(_LanguageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageModel() when $default != null:
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
      case _LanguageModel() when $default != null:
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
      case _LanguageModel():
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
      case _LanguageModel() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LanguageModel implements LanguageModel {
  const _LanguageModel({required this.name, required this.url});
  factory _LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageModelCopyWith<_LanguageModel> get copyWith =>
      __$LanguageModelCopyWithImpl<_LanguageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LanguageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'LanguageModel(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$LanguageModelCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$LanguageModelCopyWith(
          _LanguageModel value, $Res Function(_LanguageModel) _then) =
      __$LanguageModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$LanguageModelCopyWithImpl<$Res>
    implements _$LanguageModelCopyWith<$Res> {
  __$LanguageModelCopyWithImpl(this._self, this._then);

  final _LanguageModel _self;
  final $Res Function(_LanguageModel) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_LanguageModel(
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
