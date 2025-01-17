import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pas_app/core/theme/colors/colorspalette.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/theme/typography/pas_text_theme.dart';

class OtpPinWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String)? onTextChanged;
  final Function(String)? onDone;
  const OtpPinWidget({
    super.key,
    this.controller,
    this.onDone,
    this.onTextChanged,
  });

  @override
  State<OtpPinWidget> createState() => _OtpPinWidgetState();
}

class _OtpPinWidgetState extends State<OtpPinWidget> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Center(
            child: PinCodeTextField(
          controller: _controller,
          appContext: context,
          length: 6, // Number of fields
          animationType: AnimationType.fade,
          cursorColor: Colors.grey,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12.r),
            fieldHeight: 50,
            fieldWidth: 50,
            activeFillColor: Colors.white,
            selectedFillColor: Colors.white,
            inactiveFillColor: Colors.white,
            activeColor: Colors.grey,
            selectedColor: Colors.green,
            inactiveColor: Colors.grey.shade300,
          ),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            print(value); // Use this to handle the value of the fields
          },
        )
            // child: PinCodeTextField(
            //   appContext: context,
            //   controller: _controller,
            //   autovalidateMode: AutovalidateMode.disabled,
            //   pastedTextStyle: PasTextTheme.of(context).medium.semiBold(),
            //   keyboardType: TextInputType.number,
            //   length: 6,
            //   obscureText: false,
            //   obscuringCharacter: '*',
            //   animationType: AnimationType.fade,
            //   validator: (v) {
            //     return null;
            //   },
            //   autoFocus: true,
            //   pinTheme: PinTheme(
            //     // shape: PinCodeFieldShape.box,
            //     // fieldOuterPadding: EdgeInsets.zero,
            //     // borderRadius: BorderRadius.circular(12.r),
            //     // borderWidth: 1,
            //     activeColor: Colors.red,
            //     selectedColor: Colors.red,
            //     inactiveColor: Colors.red,
            //     errorBorderColor: Colors.red,
            //     activeFillColor: Colors.red,
            //     inactiveFillColor: PasColors.addational.white,
            //     selectedFillColor: Colors.red,
            //   ),
            //   cursorColor: Colors.transparent,
            //   animationDuration: const Duration(milliseconds: 200),
            //   textStyle: PasTextTheme.of(context).medium.semiBold(),
            //   backgroundColor: Colors.transparent,
            //   enableActiveFill: true,
            //   onChanged: (value) {
            //     widget.onTextChanged!(value);
            //   },
            //   onCompleted: (value) {
            //     widget.onDone!(value);
            //   },
            //   beforeTextPaste: (text) {
            //     return true;
            //   },
            // ),
            ),
      ),
    );
  }
}
