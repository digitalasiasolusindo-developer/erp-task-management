import '/components/empty_states/empty_projects/empty_projects_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_task1_select_project_model.dart';
export 'create_task1_select_project_model.dart';

class CreateTask1SelectProjectWidget extends StatefulWidget {
  const CreateTask1SelectProjectWidget({Key? key}) : super(key: key);

  @override
  _CreateTask1SelectProjectWidgetState createState() =>
      _CreateTask1SelectProjectWidgetState();
}

class _CreateTask1SelectProjectWidgetState
    extends State<CreateTask1SelectProjectWidget> {
  late CreateTask1SelectProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateTask1SelectProjectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '1evyvanx' /* Create Task */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 24.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '5p3w7kqb' /* Don't see your project? Add on... */,
                            ),
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          FFAppState().MobileID =
                              'APP-PROJ-${random_data.randomInteger(10, 99).toString()}${getCurrentTimestamp.secondsSinceEpoch.toString()}';

                          context.pushNamed(
                            'createProject',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 250),
                              ),
                            },
                          );

                          setState(() {
                            FFAppState().RefreshCounter =
                                FFAppState().RefreshCounter + 1;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'atun5agk' /* Add Project */,
                        ),
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ],
                  ),
                ),
                if (FFAppState().RefreshCounter >= 0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final project = FFAppState().Projects.toList();
                        if (project.isEmpty) {
                          return Center(
                            child: Container(
                              height: 300.0,
                              child: EmptyProjectsWidget(
                                title: 'No Projects',
                                bodyText:
                                    'It seems you are not a part of any projects!',
                              ),
                            ),
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: project.length,
                          itemBuilder: (context, projectIndex) {
                            final projectItem = project[projectIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().MobileID =
                                      'APP-TASK-${random_data.randomInteger(10, 99).toString()}${getCurrentTimestamp.secondsSinceEpoch.toString()}';

                                  context.pushNamed(
                                    'createTask',
                                    queryParams: {
                                      'project': serializeParam(
                                        projectItem,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 4.0, 4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 12.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    projectItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall,
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${getJsonField(
                                                          projectItem,
                                                          r'''$.count_tasks''',
                                                        ).toString()} tasks',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nb0qs3fd' /* Last edited: */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                            'relative',
                                                            functions
                                                                .getStringFromDate(
                                                                    getJsonField(
                                                              projectItem,
                                                              r'''$.modified''',
                                                            ).toString()),
                                                            locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageShortCode ??
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                          ),
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
