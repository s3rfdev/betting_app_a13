// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Standings _$StandingsFromJson(Map<String, dynamic> json) {
  return _Standings.fromJson(json);
}

/// @nodoc
mixin _$Standings {
  List<StandingsMain>? get standings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsCopyWith<Standings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsCopyWith<$Res> {
  factory $StandingsCopyWith(Standings value, $Res Function(Standings) then) =
      _$StandingsCopyWithImpl<$Res, Standings>;
  @useResult
  $Res call({List<StandingsMain>? standings});
}

/// @nodoc
class _$StandingsCopyWithImpl<$Res, $Val extends Standings>
    implements $StandingsCopyWith<$Res> {
  _$StandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = freezed,
  }) {
    return _then(_value.copyWith(
      standings: freezed == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<StandingsMain>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StandingsCopyWith<$Res> implements $StandingsCopyWith<$Res> {
  factory _$$_StandingsCopyWith(
          _$_Standings value, $Res Function(_$_Standings) then) =
      __$$_StandingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StandingsMain>? standings});
}

/// @nodoc
class __$$_StandingsCopyWithImpl<$Res>
    extends _$StandingsCopyWithImpl<$Res, _$_Standings>
    implements _$$_StandingsCopyWith<$Res> {
  __$$_StandingsCopyWithImpl(
      _$_Standings _value, $Res Function(_$_Standings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = freezed,
  }) {
    return _then(_$_Standings(
      standings: freezed == standings
          ? _value._standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<StandingsMain>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Standings implements _Standings {
  const _$_Standings({final List<StandingsMain>? standings})
      : _standings = standings;

  factory _$_Standings.fromJson(Map<String, dynamic> json) =>
      _$$_StandingsFromJson(json);

  final List<StandingsMain>? _standings;
  @override
  List<StandingsMain>? get standings {
    final value = _standings;
    if (value == null) return null;
    if (_standings is EqualUnmodifiableListView) return _standings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Standings(standings: $standings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Standings &&
            const DeepCollectionEquality()
                .equals(other._standings, _standings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_standings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StandingsCopyWith<_$_Standings> get copyWith =>
      __$$_StandingsCopyWithImpl<_$_Standings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StandingsToJson(
      this,
    );
  }
}

abstract class _Standings implements Standings {
  const factory _Standings({final List<StandingsMain>? standings}) =
      _$_Standings;

  factory _Standings.fromJson(Map<String, dynamic> json) =
      _$_Standings.fromJson;

  @override
  List<StandingsMain>? get standings;
  @override
  @JsonKey(ignore: true)
  _$$_StandingsCopyWith<_$_Standings> get copyWith =>
      throw _privateConstructorUsedError;
}

StandingsMain _$StandingsMainFromJson(Map<String, dynamic> json) {
  return _StandingsMain.fromJson(json);
}

/// @nodoc
mixin _$StandingsMain {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<Row>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsMainCopyWith<StandingsMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsMainCopyWith<$Res> {
  factory $StandingsMainCopyWith(
          StandingsMain value, $Res Function(StandingsMain) then) =
      _$StandingsMainCopyWithImpl<$Res, StandingsMain>;
  @useResult
  $Res call({int? id, String? name, String? type, List<Row>? rows});
}

/// @nodoc
class _$StandingsMainCopyWithImpl<$Res, $Val extends StandingsMain>
    implements $StandingsMainCopyWith<$Res> {
  _$StandingsMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Row>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StandingsMainCopyWith<$Res>
    implements $StandingsMainCopyWith<$Res> {
  factory _$$_StandingsMainCopyWith(
          _$_StandingsMain value, $Res Function(_$_StandingsMain) then) =
      __$$_StandingsMainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? type, List<Row>? rows});
}

/// @nodoc
class __$$_StandingsMainCopyWithImpl<$Res>
    extends _$StandingsMainCopyWithImpl<$Res, _$_StandingsMain>
    implements _$$_StandingsMainCopyWith<$Res> {
  __$$_StandingsMainCopyWithImpl(
      _$_StandingsMain _value, $Res Function(_$_StandingsMain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_StandingsMain(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Row>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StandingsMain implements _StandingsMain {
  const _$_StandingsMain({this.id, this.name, this.type, final List<Row>? rows})
      : _rows = rows;

  factory _$_StandingsMain.fromJson(Map<String, dynamic> json) =>
      _$$_StandingsMainFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  final List<Row>? _rows;
  @override
  List<Row>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StandingsMain(id: $id, name: $name, type: $type, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StandingsMain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StandingsMainCopyWith<_$_StandingsMain> get copyWith =>
      __$$_StandingsMainCopyWithImpl<_$_StandingsMain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StandingsMainToJson(
      this,
    );
  }
}

abstract class _StandingsMain implements StandingsMain {
  const factory _StandingsMain(
      {final int? id,
      final String? name,
      final String? type,
      final List<Row>? rows}) = _$_StandingsMain;

  factory _StandingsMain.fromJson(Map<String, dynamic> json) =
      _$_StandingsMain.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  List<Row>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_StandingsMainCopyWith<_$_StandingsMain> get copyWith =>
      throw _privateConstructorUsedError;
}

Row _$RowFromJson(Map<String, dynamic> json) {
  return _Row.fromJson(json);
}

/// @nodoc
mixin _$Row {
  int? get position => throw _privateConstructorUsedError;
  int? get matches => throw _privateConstructorUsedError;
  int? get wins => throw _privateConstructorUsedError;
  int? get scoresFor => throw _privateConstructorUsedError;
  int? get scoresAgainst => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get losses => throw _privateConstructorUsedError;
  int? get draws => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;
  Team? get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RowCopyWith<Row> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowCopyWith<$Res> {
  factory $RowCopyWith(Row value, $Res Function(Row) then) =
      _$RowCopyWithImpl<$Res, Row>;
  @useResult
  $Res call(
      {int? position,
      int? matches,
      int? wins,
      int? scoresFor,
      int? scoresAgainst,
      int? id,
      int? losses,
      int? draws,
      int? points,
      double? percentage,
      Team? team});

  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$RowCopyWithImpl<$Res, $Val extends Row> implements $RowCopyWith<$Res> {
  _$RowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? matches = freezed,
    Object? wins = freezed,
    Object? scoresFor = freezed,
    Object? scoresAgainst = freezed,
    Object? id = freezed,
    Object? losses = freezed,
    Object? draws = freezed,
    Object? points = freezed,
    Object? percentage = freezed,
    Object? team = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as int?,
      wins: freezed == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int?,
      scoresFor: freezed == scoresFor
          ? _value.scoresFor
          : scoresFor // ignore: cast_nullable_to_non_nullable
              as int?,
      scoresAgainst: freezed == scoresAgainst
          ? _value.scoresAgainst
          : scoresAgainst // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      losses: freezed == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int?,
      draws: freezed == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RowCopyWith<$Res> implements $RowCopyWith<$Res> {
  factory _$$_RowCopyWith(_$_Row value, $Res Function(_$_Row) then) =
      __$$_RowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? position,
      int? matches,
      int? wins,
      int? scoresFor,
      int? scoresAgainst,
      int? id,
      int? losses,
      int? draws,
      int? points,
      double? percentage,
      Team? team});

  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$_RowCopyWithImpl<$Res> extends _$RowCopyWithImpl<$Res, _$_Row>
    implements _$$_RowCopyWith<$Res> {
  __$$_RowCopyWithImpl(_$_Row _value, $Res Function(_$_Row) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? matches = freezed,
    Object? wins = freezed,
    Object? scoresFor = freezed,
    Object? scoresAgainst = freezed,
    Object? id = freezed,
    Object? losses = freezed,
    Object? draws = freezed,
    Object? points = freezed,
    Object? percentage = freezed,
    Object? team = freezed,
  }) {
    return _then(_$_Row(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as int?,
      wins: freezed == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int?,
      scoresFor: freezed == scoresFor
          ? _value.scoresFor
          : scoresFor // ignore: cast_nullable_to_non_nullable
              as int?,
      scoresAgainst: freezed == scoresAgainst
          ? _value.scoresAgainst
          : scoresAgainst // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      losses: freezed == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int?,
      draws: freezed == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Row implements _Row {
  const _$_Row(
      {this.position,
      this.matches,
      this.wins,
      this.scoresFor,
      this.scoresAgainst,
      this.id,
      this.losses,
      this.draws,
      this.points,
      this.percentage,
      this.team});

  factory _$_Row.fromJson(Map<String, dynamic> json) => _$$_RowFromJson(json);

  @override
  final int? position;
  @override
  final int? matches;
  @override
  final int? wins;
  @override
  final int? scoresFor;
  @override
  final int? scoresAgainst;
  @override
  final int? id;
  @override
  final int? losses;
  @override
  final int? draws;
  @override
  final int? points;
  @override
  final double? percentage;
  @override
  final Team? team;

  @override
  String toString() {
    return 'Row(position: $position, matches: $matches, wins: $wins, scoresFor: $scoresFor, scoresAgainst: $scoresAgainst, id: $id, losses: $losses, draws: $draws, points: $points, percentage: $percentage, team: $team)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Row &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.matches, matches) || other.matches == matches) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.scoresFor, scoresFor) ||
                other.scoresFor == scoresFor) &&
            (identical(other.scoresAgainst, scoresAgainst) ||
                other.scoresAgainst == scoresAgainst) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.losses, losses) || other.losses == losses) &&
            (identical(other.draws, draws) || other.draws == draws) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, matches, wins,
      scoresFor, scoresAgainst, id, losses, draws, points, percentage, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RowCopyWith<_$_Row> get copyWith =>
      __$$_RowCopyWithImpl<_$_Row>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RowToJson(
      this,
    );
  }
}

abstract class _Row implements Row {
  const factory _Row(
      {final int? position,
      final int? matches,
      final int? wins,
      final int? scoresFor,
      final int? scoresAgainst,
      final int? id,
      final int? losses,
      final int? draws,
      final int? points,
      final double? percentage,
      final Team? team}) = _$_Row;

  factory _Row.fromJson(Map<String, dynamic> json) = _$_Row.fromJson;

  @override
  int? get position;
  @override
  int? get matches;
  @override
  int? get wins;
  @override
  int? get scoresFor;
  @override
  int? get scoresAgainst;
  @override
  int? get id;
  @override
  int? get losses;
  @override
  int? get draws;
  @override
  int? get points;
  @override
  double? get percentage;
  @override
  Team? get team;
  @override
  @JsonKey(ignore: true)
  _$$_RowCopyWith<_$_Row> get copyWith => throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  int? get userCount => throw _privateConstructorUsedError;
  String? get nameCode => throw _privateConstructorUsedError;
  int? get ranking => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  bool? get ational => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? shortName,
      String? gender,
      int? userCount,
      String? nameCode,
      int? ranking,
      bool? disabled,
      bool? ational,
      int? type,
      int? id});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? shortName = freezed,
    Object? gender = freezed,
    Object? userCount = freezed,
    Object? nameCode = freezed,
    Object? ranking = freezed,
    Object? disabled = freezed,
    Object? ational = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nameCode: freezed == nameCode
          ? _value.nameCode
          : nameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      ational: freezed == ational
          ? _value.ational
          : ational // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? shortName,
      String? gender,
      int? userCount,
      String? nameCode,
      int? ranking,
      bool? disabled,
      bool? ational,
      int? type,
      int? id});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? shortName = freezed,
    Object? gender = freezed,
    Object? userCount = freezed,
    Object? nameCode = freezed,
    Object? ranking = freezed,
    Object? disabled = freezed,
    Object? ational = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Team(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nameCode: freezed == nameCode
          ? _value.nameCode
          : nameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      ational: freezed == ational
          ? _value.ational
          : ational // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  const _$_Team(
      {this.name,
      this.slug,
      this.shortName,
      this.gender,
      this.userCount,
      this.nameCode,
      this.ranking,
      this.disabled,
      this.ational,
      this.type,
      this.id});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? shortName;
  @override
  final String? gender;
  @override
  final int? userCount;
  @override
  final String? nameCode;
  @override
  final int? ranking;
  @override
  final bool? disabled;
  @override
  final bool? ational;
  @override
  final int? type;
  @override
  final int? id;

  @override
  String toString() {
    return 'Team(name: $name, slug: $slug, shortName: $shortName, gender: $gender, userCount: $userCount, nameCode: $nameCode, ranking: $ranking, disabled: $disabled, ational: $ational, type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userCount, userCount) ||
                other.userCount == userCount) &&
            (identical(other.nameCode, nameCode) ||
                other.nameCode == nameCode) &&
            (identical(other.ranking, ranking) || other.ranking == ranking) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.ational, ational) || other.ational == ational) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, shortName, gender,
      userCount, nameCode, ranking, disabled, ational, type, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {final String? name,
      final String? slug,
      final String? shortName,
      final String? gender,
      final int? userCount,
      final String? nameCode,
      final int? ranking,
      final bool? disabled,
      final bool? ational,
      final int? type,
      final int? id}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get shortName;
  @override
  String? get gender;
  @override
  int? get userCount;
  @override
  String? get nameCode;
  @override
  int? get ranking;
  @override
  bool? get disabled;
  @override
  bool? get ational;
  @override
  int? get type;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}
