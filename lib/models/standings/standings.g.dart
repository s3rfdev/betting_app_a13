// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Standings _$$_StandingsFromJson(Map<String, dynamic> json) => _$_Standings(
      standings: (json['standings'] as List<dynamic>?)
          ?.map((e) => StandingsMain.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StandingsToJson(_$_Standings instance) =>
    <String, dynamic>{
      'standings': instance.standings,
    };

_$_StandingsMain _$$_StandingsMainFromJson(Map<String, dynamic> json) =>
    _$_StandingsMain(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StandingsMainToJson(_$_StandingsMain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'rows': instance.rows,
    };

_$_Row _$$_RowFromJson(Map<String, dynamic> json) => _$_Row(
      position: json['position'] as int?,
      matches: json['matches'] as int?,
      wins: json['wins'] as int?,
      scoresFor: json['scoresFor'] as int?,
      scoresAgainst: json['scoresAgainst'] as int?,
      id: json['id'] as int?,
      losses: json['losses'] as int?,
      draws: json['draws'] as int?,
      points: json['points'] as int?,
      percentage: (json['percentage'] as num?)?.toDouble(),
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RowToJson(_$_Row instance) => <String, dynamic>{
      'position': instance.position,
      'matches': instance.matches,
      'wins': instance.wins,
      'scoresFor': instance.scoresFor,
      'scoresAgainst': instance.scoresAgainst,
      'id': instance.id,
      'losses': instance.losses,
      'draws': instance.draws,
      'points': instance.points,
      'percentage': instance.percentage,
      'team': instance.team,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      shortName: json['shortName'] as String?,
      gender: json['gender'] as String?,
      userCount: json['userCount'] as int?,
      nameCode: json['nameCode'] as String?,
      ranking: json['ranking'] as int?,
      disabled: json['disabled'] as bool?,
      ational: json['ational'] as bool?,
      type: json['type'] as int?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'shortName': instance.shortName,
      'gender': instance.gender,
      'userCount': instance.userCount,
      'nameCode': instance.nameCode,
      'ranking': instance.ranking,
      'disabled': instance.disabled,
      'ational': instance.ational,
      'type': instance.type,
      'id': instance.id,
    };
