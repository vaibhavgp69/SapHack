import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_small_model.dart';
export 'logo_small_model.dart';

class LogoSmallWidget extends StatefulWidget {
  const LogoSmallWidget({super.key});

  @override
  State<LogoSmallWidget> createState() => _LogoSmallWidgetState();
}

class _LogoSmallWidgetState extends State<LogoSmallWidget> {
  late LogoSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoSmallModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/image_2024-07-24_112555471-removebg-preview.png',
        width: 100.0,
        height: 100.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
