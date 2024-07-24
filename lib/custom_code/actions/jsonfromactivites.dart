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

Future<dynamic> jsonfromactivites(List<ActivitiesRecord>? activitydocs) async {
  // Add your function code here!
  // Handle null input
  if (activitydocs == null) {
    return {"error": "No activities provided"};
  }

  // Format the activity list into the required JSON structure
  List<Map<String, String>> activityList = activitydocs.map((activity) {
    return {
      "SDG_List": activity.sgdList ?? '', // Default to empty string if null
      "activity_description":
          activity.activityDesc ?? '', // Default to empty string if null
      "activity_type":
          activity.activityType ?? '', // Default to empty string if null
      "environmental_activity": "yes" // Assuming it's always "yes"
    };
  }).toList();

  // Return the formatted data as a JSON object
  return {"activity_list": activityList};
}
