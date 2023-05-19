import '/components/empty_states/empty_tasks/empty_tasks_widget.dart';
import '/components/modal_task_create_1/modal_task_create1_widget.dart';
import '/components/task_card_widget.dart';
import '/components/u_i_components/drawer_nav/drawer_nav_widget.dart';
import '/components/u_i_components/notification_trigger/notification_trigger_widget.dart';
import '/components/u_i_components/user_card/user_card_widget.dart';
import '/components/u_i_components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_tracker_model.dart';
export 'main_tracker_model.dart';

class MainTrackerWidget extends StatefulWidget {
  const MainTrackerWidget({Key? key}) : super(key: key);

  @override
  _MainTrackerWidgetState createState() => _MainTrackerWidgetState();
}

class _MainTrackerWidgetState extends State<MainTrackerWidget>
    with TickerProviderStateMixin {
  late MainTrackerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainTrackerModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Visibility(
          visible: MediaQuery.of(context).size.width <= 764.0,
          child: FloatingActionButton(
            onPressed: () async {
              // Really enjoy this, would love to see this in code.

              context.pushNamed(
                'createTask_1_SelectProject',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 250),
                  ),
                },
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 36.0,
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerNavModel,
            updateCallback: () => setState(() {}),
            child: DrawerNavWidget(),
          ),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.webNavModel,
                updateCallback: () => setState(() {}),
                child: WebNavWidget(
                  navBGOne: FlutterFlowTheme.of(context).primaryBackground,
                  navColorOne: FlutterFlowTheme.of(context).primary,
                  navBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                  navColorTwo: FlutterFlowTheme.of(context).secondaryText,
                  navBgThree: FlutterFlowTheme.of(context).secondaryBackground,
                  navColorThree: FlutterFlowTheme.of(context).secondaryText,
                  navColorFour: FlutterFlowTheme.of(context).secondaryText,
                  navBGFour: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: wrapWithModel(
                              model: _model.userCardModel,
                              updateCallback: () => setState(() {}),
                              child: UserCardWidget(),
                            ),
                          ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                getJsonField(
                                  FFAppState().User,
                                  r'''$.full_name''',
                                ).toString(),
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '12tkp77z' /* Good morning */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.notificationTriggerModel,
                          updateCallback: () => setState(() {}),
                          child: NotificationTriggerWidget(),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor: Colors.transparent,
                                  context: context,
                                  builder: (bottomSheetContext) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.of(bottomSheetContext)
                                                .viewInsets,
                                        child: Container(
                                          height: double.infinity,
                                          child: ModalTaskCreate1Widget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'j0lx26qq' /* Create Task */,
                              ),
                              icon: Icon(
                                Icons.add_rounded,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 20.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: DefaultTabController(
                          length: 7,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  tabs: [
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'qivbgraj' /* My Tasks */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'iofpx15n' /* Open */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'wm00imuu' /* Working */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'lqbva4ak' /* Overdue */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'cmfcv3r3' /* Pending Review */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'svvbg8zj' /* Completed */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'k19tg7ew' /* Cancelled */,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final myTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.my_tasks''',
                                          ).toList();
                                          if (myTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: myTask.length,
                                            itemBuilder:
                                                (context, myTaskIndex) {
                                              final myTaskItem =
                                                  myTask[myTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels1
                                                    .getModel(
                                                  getJsonField(
                                                    myTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  myTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Keytj3_${getJsonField(
                                                      myTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: myTaskItem,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final openTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.open''',
                                          ).toList();
                                          if (openTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: openTask.length,
                                            itemBuilder:
                                                (context, openTaskIndex) {
                                              final openTaskItem =
                                                  openTask[openTaskIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.taskCardModels2
                                                      .getModel(
                                                    getJsonField(
                                                      openTaskItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    openTaskIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: TaskCardWidget(
                                                    key: Key(
                                                      'Keywz0_${getJsonField(
                                                        openTaskItem,
                                                        r'''$.name''',
                                                      ).toString()}',
                                                    ),
                                                    json: openTaskItem,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final workingTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.working''',
                                          ).toList();
                                          if (workingTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: workingTask.length,
                                            itemBuilder:
                                                (context, workingTaskIndex) {
                                              final workingTaskItem =
                                                  workingTask[workingTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels3
                                                    .getModel(
                                                  getJsonField(
                                                    workingTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  workingTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Keyeub_${getJsonField(
                                                      workingTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: workingTaskItem,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final overdueTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.overdue''',
                                          ).toList();
                                          if (overdueTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: overdueTask.length,
                                            itemBuilder:
                                                (context, overdueTaskIndex) {
                                              final overdueTaskItem =
                                                  overdueTask[overdueTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels4
                                                    .getModel(
                                                  getJsonField(
                                                    overdueTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  overdueTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Keydek_${getJsonField(
                                                      overdueTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: overdueTaskItem,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final pendingReviewTask =
                                              getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.pending_review''',
                                          ).toList();
                                          if (pendingReviewTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: pendingReviewTask.length,
                                            itemBuilder: (context,
                                                pendingReviewTaskIndex) {
                                              final pendingReviewTaskItem =
                                                  pendingReviewTask[
                                                      pendingReviewTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels5
                                                    .getModel(
                                                  getJsonField(
                                                    pendingReviewTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  pendingReviewTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Keyy5c_${getJsonField(
                                                      pendingReviewTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: pendingReviewTaskItem,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final completedTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.completed''',
                                          ).toList();
                                          if (completedTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: completedTask.length,
                                            itemBuilder:
                                                (context, completedTaskIndex) {
                                              final completedTaskItem =
                                                  completedTask[
                                                      completedTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels6
                                                    .getModel(
                                                  getJsonField(
                                                    completedTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  completedTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Key9ht_${getJsonField(
                                                      completedTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: completedTaskItem,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final cancelledTask = getJsonField(
                                            FFAppState().Tasks,
                                            r'''$.cancelled''',
                                          ).toList();
                                          if (cancelledTask.isEmpty) {
                                            return Center(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 300.0,
                                                child: EmptyTasksWidget(
                                                  title: 'No Tasks Assigned',
                                                  bodyText:
                                                      'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                ),
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: cancelledTask.length,
                                            itemBuilder:
                                                (context, cancelledTaskIndex) {
                                              final cancelledTaskItem =
                                                  cancelledTask[
                                                      cancelledTaskIndex];
                                              return wrapWithModel(
                                                model: _model.taskCardModels7
                                                    .getModel(
                                                  getJsonField(
                                                    cancelledTaskItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  cancelledTaskIndex,
                                                ),
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TaskCardWidget(
                                                  key: Key(
                                                    'Keylec_${getJsonField(
                                                      cancelledTaskItem,
                                                      r'''$.name''',
                                                    ).toString()}',
                                                  ),
                                                  json: cancelledTaskItem,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 0.0, 12.0),
                                  child: Container(
                                    width: 330.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x2B090F13),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xe34smbh' /* My Tasks */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1rnio8vt' /* (4) */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 12.0),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '7ez5k4ic' /* Issue #242952592 */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '69v0z5o9' /* Andres Reynolds */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height:
                                                                        24.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'oopnhfx6' /* Due */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '94bjya9e' /* Tuesday, 10:00am */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'sjx93r37' /* Tuesday, 10:00am */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .keyboard_arrow_right_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation1']!),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      12.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              12.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'i2oud4oy' /* Issue #242952592 */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).headlineSmall,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            32.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(32.0),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              12.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '6z27sxtu' /* In Progress */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'kvvayf1a' /* Andres Reynolds */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height:
                                                                        24.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'y2umcbi9' /* Due */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ut18klg9' /* Tuesday, 10:00am */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .keyboard_arrow_right_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation2']!),
                                                        ),
                                                      ],
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
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 0.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rktf6kep' /* My Tasks */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final myTaskWeb = getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.my_tasks''',
                                              ).toList();
                                              if (myTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: myTaskWeb.length,
                                                itemBuilder:
                                                    (context, myTaskWebIndex) {
                                                  final myTaskWebItem =
                                                      myTaskWeb[myTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels8
                                                        .getModel(
                                                      getJsonField(
                                                        myTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      myTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Keyzj3_${getJsonField(
                                                          myTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json: myTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 0.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '89oepmke' /* Open */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final openTaskWeb = getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.open''',
                                              ).toList();
                                              if (openTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: openTaskWeb.length,
                                                itemBuilder: (context,
                                                    openTaskWebIndex) {
                                                  final openTaskWebItem =
                                                      openTaskWeb[
                                                          openTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels9
                                                        .getModel(
                                                      getJsonField(
                                                        openTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      openTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Keyrjj_${getJsonField(
                                                          openTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json: openTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 24.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '310ik08p' /* Working */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final workingTaskWeb =
                                                  getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.working''',
                                              ).toList();
                                              if (workingTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    workingTaskWeb.length,
                                                itemBuilder: (context,
                                                    workingTaskWebIndex) {
                                                  final workingTaskWebItem =
                                                      workingTaskWeb[
                                                          workingTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels10
                                                        .getModel(
                                                      getJsonField(
                                                        workingTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      workingTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Keydn5_${getJsonField(
                                                          workingTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json: workingTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 24.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).error,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zm8sl6je' /* Overdue */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final overdueTaskWeb =
                                                  getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.overdue''',
                                              ).toList();
                                              if (overdueTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    overdueTaskWeb.length,
                                                itemBuilder: (context,
                                                    overdueTaskWebIndex) {
                                                  final overdueTaskWebItem =
                                                      overdueTaskWeb[
                                                          overdueTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels11
                                                        .getModel(
                                                      getJsonField(
                                                        overdueTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      overdueTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Key81b_${getJsonField(
                                                          overdueTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json: overdueTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 24.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fb6q8h9w' /* Pending Review */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final pendingReviewTaskWeb =
                                                  getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.pending_review''',
                                              ).toList();
                                              if (pendingReviewTaskWeb
                                                  .isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    pendingReviewTaskWeb.length,
                                                itemBuilder: (context,
                                                    pendingReviewTaskWebIndex) {
                                                  final pendingReviewTaskWebItem =
                                                      pendingReviewTaskWeb[
                                                          pendingReviewTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels12
                                                        .getModel(
                                                      getJsonField(
                                                        pendingReviewTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      pendingReviewTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Key6oo_${getJsonField(
                                                          pendingReviewTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json:
                                                          pendingReviewTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 24.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).success,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2bcljq6m' /* Completed */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final completedTaskWeb =
                                                  getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.completed''',
                                              ).toList();
                                              if (completedTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    completedTaskWeb.length,
                                                itemBuilder: (context,
                                                    completedTaskWebIndex) {
                                                  final completedTaskWebItem =
                                                      completedTaskWeb[
                                                          completedTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels13
                                                        .getModel(
                                                      getJsonField(
                                                        completedTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      completedTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Keyjm1_${getJsonField(
                                                          completedTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json:
                                                          completedTaskWebItem,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 8.0, 24.0, 12.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B090F13),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '57s3qq3m' /* Cancelled */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final cancelledTaskWeb =
                                                  getJsonField(
                                                FFAppState().Tasks,
                                                r'''$.cancelled''',
                                              ).toList();
                                              if (cancelledTaskWeb.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    height: 300.0,
                                                    child: EmptyTasksWidget(
                                                      title:
                                                          'No Tasks Assigned',
                                                      bodyText:
                                                          'It appears you don\'t have any tasks assigned, create a task by using the button below.',
                                                    ),
                                                  ),
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    cancelledTaskWeb.length,
                                                itemBuilder: (context,
                                                    cancelledTaskWebIndex) {
                                                  final cancelledTaskWebItem =
                                                      cancelledTaskWeb[
                                                          cancelledTaskWebIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .taskCardModels14
                                                        .getModel(
                                                      getJsonField(
                                                        cancelledTaskWebItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      cancelledTaskWebIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: TaskCardWidget(
                                                      key: Key(
                                                        'Keyucr_${getJsonField(
                                                          cancelledTaskWebItem,
                                                          r'''$.name''',
                                                        ).toString()}',
                                                      ),
                                                      json:
                                                          cancelledTaskWebItem,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
