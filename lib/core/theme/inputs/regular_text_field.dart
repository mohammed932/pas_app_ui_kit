import 'package:flutter/material.dart';

import 'pas_base_input.dart';
import 'valu_input_mixin.dart';

class PasRegularTextField extends PasBaseInput {
  final TextEditingController? controller;
  const PasRegularTextField({
    super.key,
    super.validator,
    required super.label,
    super.initialValue,
    super.action,
    super.type,
    super.formatters,
    super.enabled,
    super.onChange,
    super.onSubmit,
    super.onSave,
    super.maxLength,
    this.controller,
    super.onFocusChange,
    super.autoSubmit,
  });
  @override
  State<PasRegularTextField> createState() => _PasRegularTextFieldState();
}

class _PasRegularTextFieldState extends State<PasRegularTextField>
    with PasInput<PasRegularTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;
  @override
  bool get disposeController => widget.controller == null;

  @override
  void didUpdateWidget(covariant PasRegularTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      Future.delayed(Duration.zero, () {
        _controller.text = widget.initialValue ?? "";
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _controller.text = widget.initialValue ?? "";
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    });
  }
}
