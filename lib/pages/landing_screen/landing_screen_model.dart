import '/components/phone_input1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'landing_screen_widget.dart' show LandingScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingScreenModel extends FlutterFlowModel<LandingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for phoneInput1 component.
  late PhoneInput1Model phoneInput1Model;

  @override
  void initState(BuildContext context) {
    phoneInput1Model = createModel(context, () => PhoneInput1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneInput1Model.dispose();
  }
}
