import '/auth/firebase_auth/auth_util.dart';
import '/components/logo_small_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for logo_small component.
  late LogoSmallModel logoSmallModel;

  @override
  void initState(BuildContext context) {
    logoSmallModel = createModel(context, () => LogoSmallModel());
  }

  @override
  void dispose() {
    logoSmallModel.dispose();
  }
}
