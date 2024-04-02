import 'package:flutter/material.dart';

class DescriptionTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? descriptionText;
  final IconData? trailingIcon;
  final String? hintText;
  final double? height;
  final double? width;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? contentPadding;

  const DescriptionTextFormField({
    Key? key,
    this.controller,
    this.descriptionText,
    this.trailingIcon,
    this.hintText,
    this.height,
    this.width,
    this.validator,
    this.onPressed,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (descriptionText != null) ...[
            Text(
              descriptionText!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
          ],
          SizedBox(
            height: height,
            width: width,
            child: TextFormField(
              // focusNode: primaryFocus,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(),
                suffixIcon: trailingIcon != null
                    ? IconButton(
                        icon: Icon(trailingIcon),
                        onPressed: onPressed,
                      )
                    : null,
                contentPadding: contentPadding,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
