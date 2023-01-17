import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rewind/values/text_style.dart';

class CustomTextField extends StatefulWidget {
  final Color backgroundColour;
  final Color? hintColor;
  final IconData? headerIcon;
  final IconData? actionIcon;
  final String headerTextHint;
  final String? labelText;
  final TextEditingController txtController;
  final Color? borderColor;
  final Color? suffixTextColor;
  final Color? textColor;
  final BuildContext ctx;
  final String? svgHeaderIconPath;
  final String? svgActionIconPath;
  final TextInputAction? textInputAction;
  final Function(String value)? onChanged;
  final TextInputType? textInputType;
  final Color? labelColor;
  final String? errorText;
  final Function(String value)? onValidator;
  final bool? isInfoAdded;
  final String? infoMsg;
  final Function? imageAction;
  final bool? isSecurity;
  final String? suffixText;
  final Function()? onTap;
  final bool? enable;
  final int? maxLength;
  final int? minLength;
  final Widget? prefix;
  final Widget? suffix;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final bool? validateWithCondition;
  final String? prefixIconPath;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final Color? accentColor;
  final double? borderRadius;
  final double? width;
  final EdgeInsets? contentPadding;
  final bool visible;
  final bool? textVisible;
  final bool? enableInteractiveSelection;
  final VoidCallback? onPressed;
  final Color? cursorColor;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Function()? onEditingComplete;
  final double? height;

  const CustomTextField(
      {super.key,
      required this.backgroundColour,
      this.hintColor,
      this.headerIcon,
      this.actionIcon,
      required this.headerTextHint,
      this.labelText,
      required this.txtController,
      this.borderColor,
      this.suffixTextColor,
      this.textColor,
      required this.ctx,
      this.svgHeaderIconPath,
      this.svgActionIconPath,
      this.textInputAction,
      this.onChanged,
      this.textInputType,
      this.labelColor,
      this.errorText,
      this.onValidator,
      this.isInfoAdded,
      this.infoMsg,
      this.imageAction,
      this.isSecurity,
      this.suffixText,
      this.onTap,
      this.enable,
      this.maxLength,
      this.minLength,
      this.prefix,
      this.readOnly,
      this.inputFormatters,
      this.textCapitalization,
      this.validateWithCondition,
      this.prefixIconPath,
      this.prefixIcon,
      this.prefixIconColor,
      this.accentColor,
      this.borderRadius,
      this.width,
      this.contentPadding,
      required this.visible,
      this.enableInteractiveSelection,
      this.onPressed,
      this.textVisible,
      this.cursorColor,
      this.textStyle,
      this.textAlign,
      this.onEditingComplete,
      this.height,
      this.suffix});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focus = FocusNode();
  bool isFocused = false;
  // final TextFieldValidator _textFieldValidator = TextFieldValidator();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Visibility(
            child: TextFormField(
              cursorColor: widget.cursorColor ?? Colors.black,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              textAlignVertical: TextAlignVertical.bottom,
              focusNode: _focus,
              onTap: widget.onTap,
              obscureText: widget.isSecurity ?? false,
              textInputAction: widget.textInputAction,
              readOnly: widget.readOnly ?? false,
              keyboardType: widget.textInputType,
              decoration: InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.start,
                prefix: widget.prefix,
                suffix: widget.suffix,
                prefixIconColor: widget.prefixIconColor,
                suffixIconConstraints:
                    const BoxConstraints(minHeight: 15, minWidth: 15),
                labelText: widget.labelText,
                enabled: widget.enable ?? true,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                /* errorText: widget.errorText,
                errorStyle: textStyle15.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 12), */
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                labelStyle: textStyle15.copyWith(
                    color: widget.hintColor ?? Colors.black,
                    fontWeight: FontWeight.w600),
                contentPadding: widget.contentPadding ??
                    const EdgeInsets.only(
                        bottom: 14, top: 5, right: 15, left: 15),
                hintText: widget.headerTextHint,
                counterText: "",
                hintStyle: textStyle15.copyWith(
                  color: widget.hintColor ?? Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              controller: widget.txtController,
              onChanged: widget.onChanged,
              inputFormatters: widget.inputFormatters,
              style: widget.textStyle ??
                  textStyle15.copyWith(
                      fontWeight: FontWeight.w600,
                      color: widget.textColor ?? Colors.black),
              validator: (value) {},
              //onSaved: onSaved,
              autovalidateMode: AutovalidateMode.always,
              maxLength: widget.maxLength,
              textAlign: widget.textAlign ?? TextAlign.start,
              onEditingComplete: widget.onEditingComplete,
            ),
          ),
        ),
      ],
    );
  }
}
