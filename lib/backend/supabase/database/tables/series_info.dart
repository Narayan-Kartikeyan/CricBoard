import '../database.dart';

class SeriesInfoTable extends SupabaseTable<SeriesInfoRow> {
  @override
  String get tableName => 'series_info';

  @override
  SeriesInfoRow createRow(Map<String, dynamic> data) => SeriesInfoRow(data);
}

class SeriesInfoRow extends SupabaseDataRow {
  SeriesInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeriesInfoTable();

  int get seriesId => getField<int>('series_id')!;
  set seriesId(int value) => setField<int>('series_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get venue => getField<String>('venue');
  set venue(String? value) => setField<String>('venue', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get result => getField<String>('result');
  set result(String? value) => setField<String>('result', value);

  String? get home => getField<String>('home');
  set home(String? value) => setField<String>('home', value);

  String? get away => getField<String>('away');
  set away(String? value) => setField<String>('away', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get homescore => getField<String>('homescore');
  set homescore(String? value) => setField<String>('homescore', value);

  String? get awayscore => getField<String>('awayscore');
  set awayscore(String? value) => setField<String>('awayscore', value);

  String? get tossInfo => getField<String>('tossInfo');
  set tossInfo(String? value) => setField<String>('tossInfo', value);

  List<String> get innings1Info => getListField<String>('innings1_info');
  set innings1Info(List<String>? value) =>
      setListField<String>('innings1_info', value);

  dynamic? get innings1Batting => getField<dynamic>('innings1_batting');
  set innings1Batting(dynamic? value) =>
      setField<dynamic>('innings1_batting', value);

  dynamic? get innings1Bowling => getField<dynamic>('innings1_bowling');
  set innings1Bowling(dynamic? value) =>
      setField<dynamic>('innings1_bowling', value);

  List<String> get innings2Info => getListField<String>('innings2_info');
  set innings2Info(List<String>? value) =>
      setListField<String>('innings2_info', value);

  dynamic? get innings2Batting => getField<dynamic>('innings2_batting');
  set innings2Batting(dynamic? value) =>
      setField<dynamic>('innings2_batting', value);

  dynamic? get innings2Bowling => getField<dynamic>('innings2_bowling');
  set innings2Bowling(dynamic? value) =>
      setField<dynamic>('innings2_bowling', value);

  dynamic? get homeTeam => getField<dynamic>('home_team');
  set homeTeam(dynamic? value) => setField<dynamic>('home_team', value);

  dynamic? get awayTeam => getField<dynamic>('away_team');
  set awayTeam(dynamic? value) => setField<dynamic>('away_team', value);
}
