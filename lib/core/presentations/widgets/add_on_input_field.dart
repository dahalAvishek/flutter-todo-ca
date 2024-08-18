import 'package:flutter/material.dart';

class AddOnInputField extends StatefulWidget {
  final String? placeholder;
  final TextDirection? flowDirection;
  final int? maxLines;
  final int? minLines;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextStyle? textStyle;
  final double? verticalTextPadding;
  final double? borderRadius;
  final Color? borderColor;
  final TextInputAction? textInputAction;
  final void Function(String)? onChange;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;

  const AddOnInputField({
    super.key,
    this.onChange,
    this.prefixWidget,
    this.suffixWidget,
    this.placeholder,
    this.flowDirection,
    this.maxLines,
    this.minLines,
    this.textStyle,
    this.verticalTextPadding,
    this.borderRadius,
    this.borderColor,
    this.textInputAction,
    this.controller,
    this.onEditingComplete,
  });

  @override
  State<AddOnInputField> createState() => _AddOnInputFieldState();
}

class _AddOnInputFieldState extends State<AddOnInputField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(widget.borderRadius ?? 8), // dynamic padding
        color: Colors.white,
        border: Border.all(
          color: _isFocused
              ? Theme.of(context).colorScheme.onSurface.withOpacity(0.2)
              : widget.borderColor ?? Colors.transparent,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0), // dynamic padding
        child: Row(
          textDirection: widget.flowDirection ?? TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.prefixWidget != null) widget.prefixWidget!,
            // Container(
            //   decoration: BoxDecoration(
            //     color: widget.prefixBgColor ?? const Color(0xFFE9EEF2),
            //     borderRadius: BorderRadius.circular(
            //         widget.borderRadius ?? 6.0), // dynamic radius
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: widget.prefixHorizontalPadding ?? 0.0,
            //         vertical: widget.prefixVerticalPadding ??
            //             0.0), // dynamic padding both
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         // widget.prefixIcon ??
            //         //     const Icon(
            //         //       LotsIcons.,
            //         //       size: 30,
            //         //       color: Colors.black,
            //         //     ),
            //         if (widget.prefixText != null || widget.prefixIcon != null)
            //           const SizedBox(width: 6),
            //         if (widget.prefixText != null) widget.prefixText!,
            //         if (widget.prefixIcon != null) widget.prefixIcon!,
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical:
                        widget.verticalTextPadding ?? 0.0), // dynamic padding
                child: TextFormField(
                  onChanged: (value) =>
                      widget.onChange != null ? widget.onChange!(value) : null,
                  onEditingComplete: widget.onEditingComplete,
                  textInputAction: widget.textInputAction,
                  controller: widget.controller,
                  keyboardType: TextInputType.text,
                  focusNode: _focusNode,
                  maxLines: widget.maxLines ?? 3,
                  minLines: widget.minLines ?? 1,
                  cursorColor: const Color(0xFF757881),
                  cursorWidth: 2,
                  style:
                      widget.textStyle ?? Theme.of(context).textTheme.bodySmall,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: widget.placeholder,
                      hintStyle: widget.textStyle ??
                          Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: const Color(0xFF757881))),
                ),
              ),
            ),
            if (widget.suffixWidget != null) widget.suffixWidget!,

            // if (widget.showSuffix!)
            //   GestureDetector(
            //     onTap: widget.onTapSuffixIcon,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: widget.suffixBgColor ?? const Color(0xFFE9EEF2),
            //         borderRadius: BorderRadius.circular(
            //             widget.borderRadius ?? 6.0), // dynamic radius
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(
            //             widget.suffixPadding ?? 8.0), // dynamic padding both
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             widget.suffixIcon ?? const SizedBox(),
            //             if (widget.suffixIcon != null &&
            //                 widget.suffixText != null)
            //               Gapper.h2xmGap(),
            //             widget.suffixText ?? const SizedBox()
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
