import '/backend/backend.dart';
import '/components/modal_sections/project_details_alt/project_details_alt_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'modal_project_details_widget.dart' show ModalProjectDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalProjectDetailsModel
    extends FlutterFlowModel<ModalProjectDetailsWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  ///  State fields for stateful widgets in this component.

  // Model for projectDetails_alt component.
  late ProjectDetailsAltModel projectDetailsAltModel;

  @override
  void initState(BuildContext context) {
    projectDetailsAltModel =
        createModel(context, () => ProjectDetailsAltModel());
  }

  @override
  void dispose() {
    projectDetailsAltModel.dispose();
  }
}
