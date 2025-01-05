import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pas_app/core/theme/theme_bloc/theme_bloc.dart';

import '../colors/pas_color_theme.dart';
import '../colors/pas_dark_theme.dart';
import '../typography/pas_text_theme.dart';
import 'pas_base_input.dart';

enum InputState { error, focused, unfocused, dimmed }

mixin PasInput<T extends PasBaseInput> on State<T> {
  final FocusNode inputNode = FocusNode();
  InputState currentState = InputState.unfocused;
  String? errorMessage;
  bool obscured = false;
  Timer? _timer;
  bool get disposeController {
    return true;
  }

  TextEditingController? get inputController {
    return null;
  }

  bool get enabled {
    return widget.enabled ?? true;
  }

  bool get readOnly {
    return false;
  }

  Widget? getPrefix() {
    return null;
  }

  String? getHint() {
    return null;
  }

  Widget? getSuffix() {
    return null;
  }

  void onFocusChange(bool hasFocus) {}
  @override
  void initState() {
    super.initState();
    initInput();
  }

  double get getHeight {
    return 60.h;
  }

  BoxDecoration get inputDecoration {
    return BoxDecoration(
      color: getFillColor(),
      border: Border.all(
        color: getBorderColor(),
        width: 1.5.r,
      ),
      borderRadius: BorderRadius.circular(12.r),
    );
  }

  EdgeInsets get inputPaddings {
    return EdgeInsets.symmetric(
      horizontal: 16.w,
      vertical: 10.h,
    );
  }

  List<Widget> get stackComponents {
    return [];
  }

  Color getFillColor() {
    return PasColorTheme.of(context).fill.input;
  }

  String? Function(String?)? get validator {
    return widget.validator;
  }

  String? inputValidator(
    String? value,
  ) {
    if (validator != null) {
      String? error = validator!(value);
      if (error != null) {
        setState(() {
          currentState = InputState.error;
          errorMessage = error;
        });
      } else {
        if ((widget.enabled ?? true)) {
          setState(() {
            if (inputNode.hasFocus) {
              currentState = InputState.focused;
            } else {
              currentState = InputState.unfocused;
            }
            errorMessage = null;
          });
        }
      }
      return error;
    }
    setState(() {
      if (!(widget.enabled ?? true)) return;
      if (inputNode.hasFocus) {
        currentState = InputState.focused;
      } else {
        currentState = InputState.unfocused;
      }

      errorMessage = null;
    });
    return null;
  }

  void initInput() {
    inputNode.addListener(() {
      onFocusChange(inputNode.hasFocus);
      if (widget.onFocusChange != null) {
        widget.onFocusChange!(inputNode.hasFocus);
      }

      setState(() {
        if (currentState == InputState.error) return;
        if (inputNode.hasFocus) {
          currentState = InputState.focused;
        } else {
          currentState = InputState.unfocused;
        }
      });
    });
    if (!enabled) {
      setState(() {
        currentState = InputState.dimmed;
      });
    }
  }

  Brightness getCurrentTheme(BuildContext context) {
    final selectedTheme =
        BlocProvider.of<ThemeBloc>(context).state.selectedColorTheme;
    if (selectedTheme == PasDarkTheme()) {
      return Brightness.dark;
    } else {
      return Brightness.light;
    }
  }

  Color getBorderColor() {
    switch (currentState) {
      case InputState.dimmed:
      case InputState.unfocused:
        return PasColorTheme.of(context).border.primary;
      case InputState.error:
        return PasColorTheme.of(context).border.error;
      case InputState.focused:
        return PasColorTheme.of(context).border.brand;
    }
  }

  Widget? get prefixWidget {
    return null;
  }

  Color get cursorColor {
    return PasColorTheme.of(context).border.brand;
  }

  TextStyle get mainTextStyle {
    Color color = PasColorTheme.of(context).text.primary;
    if (!(widget.enabled ?? true)) {
      color = PasColorTheme.of(context).text.disabled;
    }
    return PasTextTheme.of(context).large.semiBold(color: color);
  }

  List<TextInputFormatter>? get formatters {
    return widget.formatters;
  }

  int? get maxLength {
    return widget.maxLength;
  }

  TextInputType? get keyboardType {
    return widget.type;
  }

  Function(String)? get onChange {
    return widget.onChange;
  }

  Function(String)? get onSubmit {
    return widget.onSubmit;
  }

  Function(String?)? get onSave {
    return widget.onSave;
  }

  String? get initValue {
    return widget.initialValue;
  }

  BoxConstraints get prefixConstraints {
    return BoxConstraints(
      minWidth: 28.w,
      maxWidth: 32.w,
      maxHeight: 24.r,
      minHeight: 24.r,
    );
  }

  BoxConstraints? get suffixConstraints {
    return null;
  }

  int? get minLines {
    return null;
  }

  int? get maxLines {
    return 1;
  }

  bool? get showCursor {
    return null;
  }

  @mustCallSuper
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: getHeight,
              decoration: inputDecoration,
              padding: inputPaddings,
              child: TextFormField(
                controller: inputController,
                obscureText: obscured,
                onChanged: (val) {
                  if (widget.autoSubmit) {
                    _timer?.cancel();
                    _timer = Timer(const Duration(seconds: 1), () {
                      onSubmit?.call(val);
                      _timer = null;
                    });
                  }
                  onChange?.call(val);
                },
                showCursor: showCursor,
                onFieldSubmitted: onSubmit,
                onSaved: onSave,
                maxLength: maxLength,
                readOnly: readOnly,
                initialValue: inputController != null ? null : initValue,
                focusNode: inputNode,
                minLines: minLines,
                maxLines: maxLines,
                decoration: InputDecoration(
                  suffixIconConstraints: suffixConstraints,
                  counter: null,
                  counterText: "",
                  counterStyle: TextStyle(
                    fontSize: 0,
                    height: 0.001,
                    color: PasColorTheme.of(context).border.brand,
                  ),
                  prefixIcon: getPrefix(),
                  suffixIcon: getSuffix(),
                  prefixIconConstraints: prefixConstraints,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  errorStyle: TextStyle(
                    fontSize: 0,
                    height: 0.001,
                    color: PasColorTheme.of(context).border.brand,
                  ),
                  errorText: null,
                  fillColor: getFillColor(),
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  labelText: getHint() != null ? null : widget.label,
                  hintText: getHint(),
                  hintStyle: PasTextTheme.of(context).medium.regular(
                        color: PasColorTheme.of(context).text.secondary,
                      ),
                  floatingLabelStyle: PasTextTheme.of(context).medium.regular(
                        color: getFloatingLabelColor(),
                      ),
                  labelStyle: PasTextTheme.of(context)
                      .large
                      .regular(color: getLabelColor()),
                  filled: true,
                  border: InputBorder.none,
                  alignLabelWithHint: false,
                  prefix: prefixWidget,
                ),
                cursorHeight: 16.h,
                validator: (value) {
                  return inputValidator(value);
                },
                style: mainTextStyle,
                textAlignVertical: TextAlignVertical.center,
                textInputAction: widget.action,
                keyboardType: keyboardType,
                inputFormatters: formatters,
                autocorrect: false,
                enableInteractiveSelection: true,
                enableSuggestions: false,
                enabled: enabled,
                cursorColor: cursorColor,
                keyboardAppearance: getCurrentTheme(context),
              ),
            ),
            ...stackComponents
          ],
        ),
        if (currentState == InputState.error) ...[
          SizedBox(
            height: 4.h,
          ),
          Text(
            errorMessage ?? '',
            style: PasTextTheme.of(context).small.semiBold(
                  color: PasColorTheme.of(context).border.error,
                ),
          )
        ]
      ],
    );
  }

  Color getLabelColor() {
    switch (currentState) {
      case InputState.focused:
        return PasColorTheme.of(context).text.primary;
      case InputState.unfocused:
        return PasColorTheme.of(context).text.secondary;
      case InputState.error:
        return PasColorTheme.of(context).border.error;
      case InputState.dimmed:
        return PasColorTheme.of(context).text.disabled;
    }
  }

  Color getFloatingLabelColor() {
    switch (currentState) {
      case InputState.focused:
        return PasColorTheme.of(context).text.primary;
      case InputState.unfocused:
        return PasColorTheme.of(context).text.primary;
      case InputState.error:
        return PasColorTheme.of(context).border.error;
      case InputState.dimmed:
        return PasColorTheme.of(context).text.disabled;
    }
  }

  @override
  void dispose() {
    inputNode.dispose();
    if (disposeController) {
      inputController?.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }
}
