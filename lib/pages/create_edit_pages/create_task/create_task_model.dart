import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateTaskModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for taskName widget.
  TextEditingController? taskNameController;
  String? Function(BuildContext, String?)? taskNameControllerValidator;
  String? _taskNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3nx43hj1' /* Please add a task name. */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'tjxg3net' /* Please enter at least 3 letter... */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for statusSelect widget.
  String? statusSelectValue;
  FormFieldController<String>? statusSelectValueController;
  DateTime? datePicked;
  // State field(s) for AssignToMe widget.
  bool? assignToMeValue;
  // Stores action output result for [Backend Call - API (Create Task)] action in Button widget.
  ApiCallResponse? taskResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    taskNameControllerValidator = _taskNameControllerValidator;
  }

  void dispose() {
    taskNameController?.dispose();
    descriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
