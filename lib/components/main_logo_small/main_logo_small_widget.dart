import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_logo_small_model.dart';
export 'main_logo_small_model.dart';

class MainLogoSmallWidget extends StatefulWidget {
  const MainLogoSmallWidget({super.key});

  @override
  State<MainLogoSmallWidget> createState() => _MainLogoSmallWidgetState();
}

class _MainLogoSmallWidgetState extends State<MainLogoSmallWidget> {
  late MainLogoSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoSmallModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/imageedit_2_9038881264.png',
          width: 300.0,
          height: 100.0,
          fit: BoxFit.fitWidth,
          alignment: Alignment(0.0, 0.0),
        ),
      ),
    );
  }
}
