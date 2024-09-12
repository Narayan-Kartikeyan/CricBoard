import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'match_list_model.dart';
export 'match_list_model.dart';

class MatchListWidget extends StatefulWidget {
  const MatchListWidget({
    super.key,
    required this.seriesId,
  });

  final int? seriesId;

  @override
  State<MatchListWidget> createState() => _MatchListWidgetState();
}

class _MatchListWidgetState extends State<MatchListWidget> {
  late MatchListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF010113),
        appBar: AppBar(
          backgroundColor: Color(0xFF010113),
          automaticallyImplyLeading: true,
          title: Text(
            'Fixtures',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
            child: FutureBuilder<List<SeriesInfoRow>>(
              future: SeriesInfoTable().queryRows(
                queryFn: (q) => q.eq(
                  'series_id',
                  widget!.seriesId,
                ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<SeriesInfoRow> listViewSeriesInfoRowList = snapshot.data!;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewSeriesInfoRowList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewSeriesInfoRow =
                        listViewSeriesInfoRowList[listViewIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'match_Details',
                            queryParameters: {
                              'matchId': serializeParam(
                                listViewSeriesInfoRow.id,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 235.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF4B5AF3),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          () {
                                            if (widget!.seriesId == 1841) {
                                              return 'World Cup 2023';
                                            } else if (widget!.seriesId ==
                                                1430) {
                                              return 'IPL 2023';
                                            } else {
                                              return 'IPL 2020';
                                            }
                                          }(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 19.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        height: 29.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'COMPLETED',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.5,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 10.0, 15.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            () {
                                              if (functions.newCustomFunction(listViewSeriesInfoRow.innings1Info[0]) ==
                                                  'Chennai') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Chennai.png?t=2024-09-12T06%3A22%3A39.284Z';
                                              } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings1Info[0]) ==
                                                  'Delhi') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Delhi.png?t=2024-09-12T06%3A24%3A40.815Z';
                                              } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings1Info[0]) ==
                                                  'Kolkata') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Kolkata.png?t=2024-09-12T06%3A27%3A27.964Z';
                                              } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings1Info[0]) ==
                                                  'Gujarat') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Gujarat.png?t=2024-09-12T06%3A27%3A46.770Z';
                                              } else if (functions.newCustomFunction(
                                                      listViewSeriesInfoRow
                                                          .innings1Info[0]) ==
                                                  'Lucknow') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Lucknow.png?t=2024-09-12T06%3A28%3A15.368Z';
                                              } else if (functions.newCustomFunction(
                                                      listViewSeriesInfoRow
                                                          .innings1Info[0]) ==
                                                  'Kings') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Punjab.png?t=2024-09-12T06%3A28%3A35.531Z';
                                              } else if (functions.newCustomFunction(
                                                      listViewSeriesInfoRow
                                                          .innings1Info[0]) ==
                                                  'Rajasthan') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Rajasthan.png?t=2024-09-12T06%3A29%3A12.134Z';
                                              } else if (functions.newCustomFunction(
                                                      listViewSeriesInfoRow.innings1Info[0]) ==
                                                  'Royal') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Royal.png?t=2024-09-12T06%3A29%3A31.807Z';
                                              } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings1Info[0]) == 'Sunrisers') {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Sunrisers.png?t=2024-09-12T06%3A29%3A49.033Z';
                                              } else {
                                                return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Mumbai.png?t=2024-09-12T06%3A32%3A25.849Z';
                                              }
                                            }(),
                                            width: 50.0,
                                            height: 50.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            functions.newCustomFunction(
                                                listViewSeriesInfoRow
                                                    .innings1Info[0]),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions.newCustomFunction2(
                                                          listViewSeriesInfoRow
                                                              .homescore!)
                                                      ? listViewSeriesInfoRow
                                                          .homescore
                                                      : listViewSeriesInfoRow
                                                          .awayscore,
                                                  '10',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 15.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              () {
                                                if (functions.newCustomFunction(listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Chennai') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Chennai.png?t=2024-09-12T06%3A22%3A39.284Z';
                                                } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Delhi') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Delhi.png?t=2024-09-12T06%3A24%3A40.815Z';
                                                } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Kolkata') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Kolkata.png?t=2024-09-12T06%3A27%3A27.964Z';
                                                } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Gujarat') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Gujarat.png?t=2024-09-12T06%3A27%3A46.770Z';
                                                } else if (functions.newCustomFunction(listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Lucknow') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Lucknow.png?t=2024-09-12T06%3A28%3A15.368Z';
                                                } else if (functions.newCustomFunction(
                                                        listViewSeriesInfoRow
                                                            .innings2Info[0]) ==
                                                    'Kings') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Punjab.png?t=2024-09-12T06%3A28%3A35.531Z';
                                                } else if (functions.newCustomFunction(
                                                        listViewSeriesInfoRow
                                                            .innings2Info[0]) ==
                                                    'Rajasthan') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Rajasthan.png?t=2024-09-12T06%3A29%3A12.134Z';
                                                } else if (functions.newCustomFunction(
                                                        listViewSeriesInfoRow
                                                            .innings2Info[0]) ==
                                                    'Royal') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Royal.png?t=2024-09-12T06%3A29%3A31.807Z';
                                                } else if (functions.newCustomFunction(
                                                        listViewSeriesInfoRow.innings2Info[0]) ==
                                                    'Sunrisers') {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Sunrisers.png?t=2024-09-12T06%3A29%3A49.033Z';
                                                } else {
                                                  return 'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Mumbai.png?t=2024-09-12T06%3A32%3A25.849Z';
                                                }
                                              }(),
                                              'https://cclmedxxjooasdffzlff.supabase.co/storage/v1/object/public/new/Mumbai.png?t=2024-09-12T06%3A32%3A25.849Z',
                                            ),
                                            width: 50.0,
                                            height: 50.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            functions.newCustomFunction(
                                                listViewSeriesInfoRow
                                                    .innings2Info[0]),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions.newCustomFunction2(
                                                          listViewSeriesInfoRow
                                                              .homescore!)
                                                      ? listViewSeriesInfoRow
                                                          .awayscore
                                                      : listViewSeriesInfoRow
                                                          .homescore,
                                                  '10',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          listViewSeriesInfoRow.result,
                                          '1',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
