import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phone_input1_model.dart';
export 'phone_input1_model.dart';

class PhoneInput1Widget extends StatefulWidget {
  const PhoneInput1Widget({super.key});

  @override
  State<PhoneInput1Widget> createState() => _PhoneInput1WidgetState();
}

class _PhoneInput1WidgetState extends State<PhoneInput1Widget> {
  late PhoneInput1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneInput1Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
          child: Image.asset(
            'assets/images/GB.png',
            width: 44.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(null),
              options: ['+44'],
              onChanged: (val) => setState(() => _model.dropDownValue = val),
              width: 90.0,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Uber Move',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              hintText: '+44',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
            SizedBox(
              height: 24.0,
              child: VerticalDivider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Uber Move',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                hintText: '123 456 7891',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Uber Move',
                      color: Color(0xFFA4A4A4),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Uber Move',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
      ],
    );
  }
}
