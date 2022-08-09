import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra/utils/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final Widget? iconData;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    this.controller,
    this.hint,
    this.iconData,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0.r),
          border: Border.all(width: 2.0.w, color: AppCustomColors.borderColor)),
      child: Row(
        children: [
          if (iconData != null) iconData!,
          Expanded(
            child: TextFormField(
              controller: controller,
              autocorrect: false,
              validator: validator,
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
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
