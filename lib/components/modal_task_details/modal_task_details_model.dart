import '/components/modal_project/modal_project_widget.dart';
import '/components/modal_user_profile/modal_user_profile_widget.dart';
import '/components/u_i_components/add_team/add_team_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalTaskDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for updateActivity widget.
  TextEditingController? updateActivityController;
  String? Function(BuildContext, String?)? updateActivityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    updateActivityController?.dispose();
  }

  /// Additional helper methods are added here.

}
