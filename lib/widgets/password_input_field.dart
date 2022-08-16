import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/utils/utils.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hint;
  final Widget? iconData;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const PasswordInputField({
    Key? key,
    this.controller,
    this.hint,
    this.iconData,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0.r),
        border: Border.all(width: 2.0.w, color: AppCustomColors.borderColor),
      ),
      child: Row(
        children: [
          if (widget.iconData != null) widget.iconData!,
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              obscureText: _obscureText,
              autocorrect: false,
              validator: widget.validator,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                  left: 15,
                  bottom: 11,
                  top: 11,
                  right: 15,
                ),
                hintText: widget.hint,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: _obscureText
                ? Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppCustomColors.light[100],
                  )
                : SvgPicture.asset(
                    "assets/icons/hide.svg",
                    semanticsLabel: 'hide icon',
                    width: 25.0.w,
                  ),
          ),
        ],
      ),
    );
  }
}
