import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';
import 'package:womensnet/screens/common_widgets/custom_textform.dart';
import 'package:womensnet/screens/officer_loggedin_popup.dart';

class OfficerRegistration extends StatefulWidget {
  const OfficerRegistration({super.key});

  @override
  State<OfficerRegistration> createState() => _OfficerRegistrationState();
}

class _OfficerRegistrationState extends State<OfficerRegistration> {
  final fileController = TextEditingController();
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
                          firstText: 'Officer',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: ' Registration',
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
                              return 'Please Enter Name';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Designation',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Designation';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Current Working Location',
                          width: double.infinity,
                          height: 50,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Current Location';
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
                          descriptionText: 'Upload Image',
                          height: 50,
                          width: double.infinity,
                          trailingIcon: Icons.file_open_sharp,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Upload Image';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Mobile',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Mobile Number';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Email',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          controller: fileController,
                          descriptionText: 'Upload Id',
                          height: 50,
                          width: double.infinity,
                          trailingIcon: Icons.file_open_sharp,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Upload Id';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets().buildRichText(
                          firstText: 'Address ',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: '',
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
                          descriptionText: 'House , Street, City Details',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Any Details';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'District ',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter District';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'State',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter State';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Country',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Country';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Password ',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Password';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DescriptionTextFormField(
                          descriptionText: 'Confirm Password',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Password';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CommonWidgets().buildCustomButton(
                            context,
                            'Register',
                            () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const CustomAlertDialog(
                                    imagePath: 'assets/logo.png',
                                    firstText:
                                        'Thank You For Being a Part of This Mission.',
                                    secondText:
                                        'Please wait until the admin is cross checking your credentials.',
                                    elevation: 10, // Set elevation
                                  );
                                },
                              );
                            },
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
