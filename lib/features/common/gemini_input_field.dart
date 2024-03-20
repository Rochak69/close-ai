import 'dart:io';

import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/features/common/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class GeminiInputField extends StatefulWidget {
  const GeminiInputField({
    super.key,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.textEditingController,
    this.decoration,
    this.textInputType = TextInputType.emailAddress,
    this.obscureText = false,
    this.suffixIcon,
    this.onSend,
    this.textInputAction = TextInputAction.next,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onTap,
    this.isReadOnly = false,
    this.scroll = EdgeInsets.zero,
  });

  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final InputDecoration? decoration;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool isReadOnly;
  final void Function()? onTap;
  final void Function(List<XFile>?)? onSend;
  final EdgeInsets scroll;

  final AutovalidateMode autovalidateMode;
  final TextInputAction textInputAction;

  @override
  State<GeminiInputField> createState() => _GeminiInputFieldState();
}

class _GeminiInputFieldState extends State<GeminiInputField> {
  List<XFile> files = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (files.isNotEmpty)
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            height: 100,
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Stack(
                alignment: Alignment.topRight,
                clipBehavior: Clip.none,
                children: [
                  Image.file(File(files[index].path)),
                  Positioned(
                    right: -10,
                    top: -6,
                    child: InkWell(
                      onTap: () {
                        files.removeAt(index);
                        setState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorWhite,),
                        child: const Icon(
                          Icons.remove,
                          color: AppColors.colorRed,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const HorizontalSpacing(20),
              itemCount: files.length,
            ),
          ),
        TextFormField(
          autovalidateMode: widget.autovalidateMode,
          scrollPadding: widget.scroll,
          readOnly: widget.isReadOnly,
          onTap: () {
            HapticFeedback.lightImpact();
            widget.onTap?.call();
          },
          obscureText: widget.obscureText,
          validator: widget.validator,
          keyboardType: widget.textInputType,
          controller: widget.textEditingController,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: AppColors.colorWhite,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: AppColors.textFieldGrey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(width: 2, color: AppColors.textFieldGrey),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(
                width: 2,
                color: AppColors.colorRed,
              ),
            ),
            errorStyle: const TextStyle(
              color: AppColors.colorRed,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(
                width: 2,
                color: AppColors.colorRed,
              ),
            ),
            prefixIcon: widget.prefixIcon,
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    splashColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  onTap: () async {
                                    Navigator.pop(context);
                                    var picker = ImagePicker();
                                    var images = await picker.pickMultiImage();
                                    files = images;
                                    setState(() {});
                                  },
                                  leading: const Icon(Icons.photo),
                                  title: const Text('Upload from Gallery'),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  leading: const Icon(Icons.camera),
                                  title: const Text('Take a picture'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(
                        Icons.attach_file,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.onSend?.call(files);
                    files = [];
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.send,
                    color: AppColors.primaryDark,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
