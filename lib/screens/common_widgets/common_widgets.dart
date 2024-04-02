import 'package:flutter/material.dart';

// import 'package:image_picker/image_picker.dart';

class CommonWidgets {
  // for register and login screen
  Widget buildWelcomeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: RichText(
        textAlign: TextAlign.left,
        text: const TextSpan(
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.amber,
          ),
          children: [
            TextSpan(
              text: 'Report your\n',
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 246, 247),
                fontFamily: 'Schyler',
              ),
            ),
            TextSpan(
              text: 'Complaints',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 25,
                color: Color.fromARGB(255, 239, 244, 241),
                fontFamily: 'Schyler',
              ),
            ),
            TextSpan(
              text: '  Here!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 25,
                color: Color.fromARGB(255, 1, 17, 6),
                fontFamily: 'Schyler',
              ),
            ),
          ],
        ),
      ),
    );
  }

// customButton widgets
  Widget buildCustomButton(
    BuildContext context,
    String buttonText,
    VoidCallback onPressed,
    Color buttonColor,
    Color textColor,
    EdgeInsetsGeometry padding,
  ) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          fixedSize: MaterialStateProperty.all<Size>(
            const Size(315.0, 55.0),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(08.0),
              side: BorderSide(
                color: textColor,
                width: 0,
              ),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }

// descriotion

  // Widget buildDescriptionText(String text, EdgeInsetsGeometry padding) {
  //   return Padding(
  //     padding: padding,
  //     child: Text(
  //       text,
  //       style: const TextStyle(
  //         letterSpacing: 2,
  //         fontSize: 15,
  //         color: AppColors.blackForText,
  //       ),
  //     ),
  //   );
  // }

  // for register screen

  Widget buildRichText({
    required String firstText,
    required TextStyle firstTextStyle,
    required String secondText,
    required TextStyle secondTextStyle,
  }) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: firstTextStyle,
          ),
          TextSpan(
            text: secondText,
            style: secondTextStyle,
          ),
        ],
      ),
    );
  }

// textfield

  Widget buildCustomTextFormField({
    required TextEditingController controller,
    required IconData prefixIcon,
    required String hintText,
    required Function(String?)? validator,
    bool obscureText = false, // Default value is false
    double borderRadius = 10.0, // Default value is 10.0
    EdgeInsetsGeometry contentPadding =
        const EdgeInsets.symmetric(horizontal: 13.0), // Default content padding
    EdgeInsetsGeometry textFieldPadding =
        const EdgeInsets.all(10.0), // Default text field padding
  }) {
    return Padding(
      padding: textFieldPadding,
      child: TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        validator: (value) {
          if (validator != null) {
            return validator(value);
          }
          return null;
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 152, 14, 126)),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          contentPadding: contentPadding,
        ),
      ),
    );
  }

  // Widget settingButton(BuildContext context) {
  //   return IconButton(
  //     color: AppColors.primaryColor,
  //     padding:
  //         const EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 10),
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const SettingsScreen(),
  //         ),
  //       );
  //     },
  //     icon: const Icon(
  //       Icons.settings,
  //       color: AppColors.primaryColor,
  //       size: 28,
  //     ),
  //   );
  // }
}
