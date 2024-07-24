import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivitiesRecord extends FirestoreRecord {
  ActivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "activity_desc" field.
  String? _activityDesc;
  String get activityDesc => _activityDesc ?? '';
  bool hasActivityDesc() => _activityDesc != null;

  // "activity_type" field.
  String? _activityType;
  String get activityType => _activityType ?? '';
  bool hasActivityType() => _activityType != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "conductedOn" field.
  String? _conductedOn;
  String get conductedOn => _conductedOn ?? '';
  bool hasConductedOn() => _conductedOn != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "image_link" field.
  DocumentReference? _imageLink;
  DocumentReference? get imageLink => _imageLink;
  bool hasImageLink() => _imageLink != null;

  // "video_link" field.
  DocumentReference? _videoLink;
  DocumentReference? get videoLink => _videoLink;
  bool hasVideoLink() => _videoLink != null;

  // "sgd_list" field.
  String? _sgdList;
  String get sgdList => _sgdList ?? '';
  bool hasSgdList() => _sgdList != null;

  // "num_hours" field.
  String? _numHours;
  String get numHours => _numHours ?? '';
  bool hasNumHours() => _numHours != null;

  // "gen_desc" field.
  String? _genDesc;
  String get genDesc => _genDesc ?? '';
  bool hasGenDesc() => _genDesc != null;

  void _initializeFields() {
    _activityDesc = snapshotData['activity_desc'] as String?;
    _activityType = snapshotData['activity_type'] as String?;
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _conductedOn = snapshotData['conductedOn'] as String?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _imageLink = snapshotData['image_link'] as DocumentReference?;
    _videoLink = snapshotData['video_link'] as DocumentReference?;
    _sgdList = snapshotData['sgd_list'] as String?;
    _numHours = snapshotData['num_hours'] as String?;
    _genDesc = snapshotData['gen_desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activities');

  static Stream<ActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivitiesRecord.fromSnapshot(s));

  static Future<ActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivitiesRecord.fromSnapshot(s));

  static ActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivitiesRecordData({
  String? activityDesc,
  String? activityType,
  AddressStruct? address,
  String? conductedOn,
  DocumentReference? createdBy,
  DocumentReference? imageLink,
  DocumentReference? videoLink,
  String? sgdList,
  String? numHours,
  String? genDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'activity_desc': activityDesc,
      'activity_type': activityType,
      'address': AddressStruct().toMap(),
      'conductedOn': conductedOn,
      'createdBy': createdBy,
      'image_link': imageLink,
      'video_link': videoLink,
      'sgd_list': sgdList,
      'num_hours': numHours,
      'gen_desc': genDesc,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class ActivitiesRecordDocumentEquality implements Equality<ActivitiesRecord> {
  const ActivitiesRecordDocumentEquality();

  @override
  bool equals(ActivitiesRecord? e1, ActivitiesRecord? e2) {
    return e1?.activityDesc == e2?.activityDesc &&
        e1?.activityType == e2?.activityType &&
        e1?.address == e2?.address &&
        e1?.conductedOn == e2?.conductedOn &&
        e1?.createdBy == e2?.createdBy &&
        e1?.imageLink == e2?.imageLink &&
        e1?.videoLink == e2?.videoLink &&
        e1?.sgdList == e2?.sgdList &&
        e1?.numHours == e2?.numHours &&
        e1?.genDesc == e2?.genDesc;
  }

  @override
  int hash(ActivitiesRecord? e) => const ListEquality().hash([
        e?.activityDesc,
        e?.activityType,
        e?.address,
        e?.conductedOn,
        e?.createdBy,
        e?.imageLink,
        e?.videoLink,
        e?.sgdList,
        e?.numHours,
        e?.genDesc
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivitiesRecord;
}
