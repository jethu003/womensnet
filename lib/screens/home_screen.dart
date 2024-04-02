import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';
import 'package:womensnet/screens/common_widgets/custom_container.dart';
import 'package:womensnet/screens/know_officers.dart';
import 'package:womensnet/screens/officer_login.dart';
import 'package:womensnet/screens/officer_registration.dart';
import 'package:womensnet/screens/register_anonymouss.dart';
import 'package:womensnet/screens/user_portal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final acknowlegmentNumber = TextEditingController();
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
          actions: [
            PopupMenuButton<String>(
              elevation: 10,
              surfaceTintColor: const Color.fromARGB(255, 173, 47, 193),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Know Officers',
                  textStyle:
                      const TextStyle(color: Color.fromARGB(255, 62, 2, 36)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KnowOfficers()));
                    },
                    child: const Text(
                      'Know Officers',
                      style: TextStyle(color: Color.fromARGB(255, 62, 2, 36)),
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Know the Status',
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Know the Status',
                      style: TextStyle(color: Color.fromARGB(255, 62, 2, 36)),
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Register a Complaint',
                  child: TextButton(
                    onPressed: () {
                      // Add your logic for 'Register a Complaint' here
                    },
                    child: const Text(
                      'Register a Complaint',
                      style: TextStyle(color: Color.fromARGB(255, 62, 2, 36)),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CommonWidgets().buildWelcomeText(),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                        elevation: 10,
                        color: Colors.red,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset('assets/pic1.jpg'),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'our vision',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Card(
                      elevation: 10,
                      color: Color.fromARGB(255, 191, 13, 51),
                      child: SizedBox(
                        height: 150,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '" Empowerment is not only about making women stronger, but also ensuring that they have the tools to protect themselves online. Justice for women in the digital realm means holding perpetrators of cyber crimes accountable and creating a safe space where every woman\'s voice is heard and respected. "',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                            maxLines: null,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 10,
                      child: Container(
                        height: 420,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 191, 13, 51),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextContainer('75 Million',
                                'Womens and girls alive today were married before the age of 18',
                                height: 100, width: 320),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextContainer('1 in 5',
                                'Women have experienced physical or sexual violence in the last 12 months',
                                height: 100, width: 320),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextContainer('23.7 percent',
                                'Representation of women in political offices',
                                height: 100, width: 320),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'source: united nations',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextContainer(
                      'Confidential Crime Registration',
                      'Welcome to our App dedicated to ensuring womens safety from cyber crimes. In todays digital age, women face unique challenges when it comes to online safety and privacy. Our platform is designed to provide valuable resources, education, and tools to empower women in navigating the digital world securely. Through informative articles, tutorials, and practical tips, we aim to raise awareness about cyber threats such as online harassment, stalking, identity theft, and cyberbullying. Additionally, we offer guidance on how to protect personal information, secure online accounts, and recognize potential risks. By fostering a supportive online community, we encourage women to share their experiences, seek assistance, and build resilience against cyber threats. Together, lets create a safer and more inclusive online environment where every woman feels empowered and protected.',
                      height: 480,
                      boxColor: const Color.fromARGB(255, 191, 13, 51),
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
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
                      height: 10,
                    ),
                    Center(
                      child: CommonWidgets().buildCustomButton(
                        context,
                        'Register Anonymous',
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        Colors.pink,
                        Colors.white,
                        const EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'Know Report Status Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonWidgets().buildCustomTextFormField(
                      controller: acknowlegmentNumber,
                      prefixIcon: Icons.numbers,
                      hintText: 'enter your acknowledgement number here',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonWidgets().buildCustomButton(
                      context,
                      'SEARCH',
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserPortal()));
                      },
                      Colors.white,
                      Colors.black,
                      const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextContainer(
                      'Confidential Crime Registration',
                      """
      Dear Government Officers,
      We invite you to join our officer portal as a crucial step towards supporting women empowerment and ensuring justice in cases of cyber crimes against women. Your participation and engagement in our platform can make a significant difference in investigating and addressing these sensitive issues effectively. By registering on our website, you become an integral part of a community dedicated to safeguarding women's rights and combating cyber threats. Your expertise, commitment, and dedication to upholding justice are invaluable assets in our collective mission to create a safer and more inclusive digital space for all. Together, let us stand strong in our resolve to protect and empower women, and to ensure that every case is thoroughly investigated and justice is served.
      Thank you for your unwavering support and commitment to the cause of women's safety and empowerment.
      """,
                      height: 550,
                      boxColor: const Color.fromARGB(255, 52, 4, 40),
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CommonWidgets().buildCustomButton(
                      context,
                      'Register as Officer',
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OfficerRegistration()));
                      },
                      const Color.fromARGB(255, 52, 4, 40),
                      Colors.white,
                      const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CommonWidgets().buildCustomButton(
                      context,
                      'Login as Officer',
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OfficerLogin()));
                      },
                      const Color.fromARGB(255, 52, 4, 40),
                      Colors.white,
                      const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
