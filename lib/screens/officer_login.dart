import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';
import 'package:womensnet/screens/common_widgets/custom_textform.dart';

import 'package:womensnet/screens/officerverify_otp.dart';

class OfficerLogin extends StatefulWidget {
  const OfficerLogin({super.key});

  @override
  State<OfficerLogin> createState() => _OfficerLoginState();
}

class _OfficerLoginState extends State<OfficerLogin> {
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
                          height: 20,
                        ),
                        CommonWidgets().buildRichText(
                          firstText: 'Officer',
                          firstTextStyle: const TextStyle(
                            fontFamily: 'Schylar',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          secondText: ' Login',
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
                          descriptionText: 'Email',
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
                          descriptionText: 'Passsword',
                          height: 50,
                          width: double.infinity,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Select Date';
                            }
                            // Your custom validation logic here
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: CommonWidgets().buildCustomButton(
                            context,
                            'Login',
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const VerifyOtp()));
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
