import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "report_url" field.
  String? _reportUrl;
  String get reportUrl => _reportUrl ?? '';
  bool hasReportUrl() => _reportUrl != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "createdOn" field.
  String? _createdOn;
  String get createdOn => _createdOn ?? '';
  bool hasCreatedOn() => _createdOn != null;

  void _initializeFields() {
    _reportUrl = snapshotData['report_url'] as String?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _createdOn = snapshotData['createdOn'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? reportUrl,
  DocumentReference? createdBy,
  String? createdOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'report_url': reportUrl,
      'createdBy': createdBy,
      'createdOn': createdOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.reportUrl == e2?.reportUrl &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdOn == e2?.createdOn;
  }

  @override
  int hash(ReportsRecord? e) =>
      const ListEquality().hash([e?.reportUrl, e?.createdBy, e?.createdOn]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
