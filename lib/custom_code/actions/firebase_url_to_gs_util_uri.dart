// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> firebaseUrlToGsUtilUri(String firebaseUrl) async {
  final urlParts = Uri.decodeComponent(firebaseUrl).split('/');
  final bucketName = urlParts[5];
  final objectPath = urlParts.skip(7).join('/').split('?')[0];
  final gsUri = 'gs://${bucketName}/${objectPath}';

  return gsUri;
}
