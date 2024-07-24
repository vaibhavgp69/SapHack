import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'project_details_alt_copy_widget.dart' show ProjectDetailsAltCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectDetailsAltCopyModel
    extends FlutterFlowModel<ProjectDetailsAltCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for UploadTab widget.
  TabController? uploadTabController;
  int get uploadTabCurrentIndex =>
      uploadTabController != null ? uploadTabController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  DateTime? datePicked;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Backend Call - Create Document] action in Image widget.
  ImagesRecord? imageRef;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Video widget.
  VideosRecord? videoRef;
  // Stores action output result for [Custom Action - firebaseUrlToGsUtilUri] action in Button widget.
  String? videoGsuri;
  // Stores action output result for [Custom Action - firebaseUrlToGsUtilUri] action in Button widget.
  String? imageGsuri;
  // Stores action output result for [Backend Call - API (Verify Activity)] action in Button widget.
  ApiCallResponse? verifyResult;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ActivitiesRecord? activityRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    uploadTabController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
