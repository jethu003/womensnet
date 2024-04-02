// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';
import 'package:womensnet/screens/common_widgets/custom_textform.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // File? _file;
  final fileController = TextEditingController();

//     Future<void> _openFilePicker() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();

//     if (result != null) {
//       setState(() {
//         _file = File(result.files.single.path!);
//         _controller.text = _file!.path;
//       });
//     } else {
//       // User canceled the picker
//     }
//   }
// }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 10,
          title: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                height: 70,
                // width: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'WomensNEST',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 52, 4, 40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 238, 233, 237),
          centerTitle: false,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 191, 13, 51),
                Color.fromARGB(255, 139, 15, 95),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        CommonWidgets().buildRichText(
                          firstText: 'Register your',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: ' complaints here !',
                          secondTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Select Crime Type',
                          hintText: 'Select Crime Type',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select the type';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Date Of Incident',
                          hintText: 'DD-MM-YYYY',
                          height: 50,
                          width: double.infinity,
                          trailingIcon: Icons.calendar_month,
                          onPressed: () {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select Date';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Type Your Complaint Here',
                          width: double.infinity,
                          height: 50,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 10),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select Date';
                            }
                            // Your custom validation logic e
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          controller: fileController,
                          descriptionText: 'Upload Your File Here',
                          height: 50,
                          hintText: 'upload the file',
                          width: double.infinity,
                          trailingIcon: Icons.file_open_sharp,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Upload The File';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets().buildRichText(
                          firstText: 'Suspect ',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: 'Details',
                          secondTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Name',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Note mandatory';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Mobile number',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Note mandatory';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Social Media Details',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Note mandatory';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Other Details If Any',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Note mandatory';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets().buildRichText(
                          firstText: 'Officer ',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: 'Details',
                          secondTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Select Officer',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Note mandatory';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: CommonWidgets().buildCustomButton(
                            context,
                            'Register',
                            () {},
                            Colors.pink,
                            Colors.white,
                            const EdgeInsets.symmetric(horizontal: 0),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
