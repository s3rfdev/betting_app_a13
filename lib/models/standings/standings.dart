import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standings with _$Standings {
  const factory Standings({
    List<StandingsMain>? standings,
  }) = _Standings;

  factory Standings.fromJson(Map<String, dynamic> json) =>
      _$StandingsFromJson(json);
}

@freezed
class StandingsMain with _$StandingsMain {
  const factory StandingsMain({
    int? id,
    String? name,
    String? type,
    List<Row>? rows,
  }) = _StandingsMain;
  factory StandingsMain.fromJson(Map<String, dynamic> json) =>
      _$StandingsMainFromJson(json);
}

@freezed
class Row with _$Row {
  const factory Row({
    int? position,
    int? matches,
    int? wins,
    int? scoresFor,
    int? scoresAgainst,
    int? id,
    int? losses,
    int? draws,
    int? points,
    double? percentage,
    Team? team,
  }) = _Row;
  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    String? name,
    String? slug,
    String? shortName,
    String? gender,
    int? userCount,
    String? nameCode,
    int? ranking,
    bool? disabled,
    bool? ational,
    int? type,
    int? id,
  }) = _Team;
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
