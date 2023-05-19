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

class MainTrackerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for drawerNav component.
  late DrawerNavModel drawerNavModel;
  // Model for WebNav component.
  late WebNavModel webNavModel;
  // Model for userCard component.
  late UserCardModel userCardModel;
  // Model for notification_Trigger component.
  late NotificationTriggerModel notificationTriggerModel;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels1;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels2;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels3;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels4;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels5;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels6;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels7;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels8;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels9;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels10;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels11;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels12;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels13;
  // Models for TaskCard dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels14;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerNavModel = createModel(context, () => DrawerNavModel());
    webNavModel = createModel(context, () => WebNavModel());
    userCardModel = createModel(context, () => UserCardModel());
    notificationTriggerModel =
        createModel(context, () => NotificationTriggerModel());
    taskCardModels1 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels2 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels3 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels4 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels5 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels6 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels7 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels8 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels9 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels10 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels11 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels12 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels13 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels14 = FlutterFlowDynamicModels(() => TaskCardModel());
  }

  void dispose() {
    drawerNavModel.dispose();
    webNavModel.dispose();
    userCardModel.dispose();
    notificationTriggerModel.dispose();
    taskCardModels1.dispose();
    taskCardModels2.dispose();
    taskCardModels3.dispose();
    taskCardModels4.dispose();
    taskCardModels5.dispose();
    taskCardModels6.dispose();
    taskCardModels7.dispose();
    taskCardModels8.dispose();
    taskCardModels9.dispose();
    taskCardModels10.dispose();
    taskCardModels11.dispose();
    taskCardModels12.dispose();
    taskCardModels13.dispose();
    taskCardModels14.dispose();
  }

  /// Additional helper methods are added here.

}
