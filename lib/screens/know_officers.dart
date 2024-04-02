import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';

class KnowOfficers extends StatefulWidget {
  const KnowOfficers({super.key});

  @override
  State<KnowOfficers> createState() => _KnowOfficersState();
}

class _KnowOfficersState extends State<KnowOfficers> {
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
                          firstText: 'Know Officers ',
                          firstTextStyle: const TextStyle(
                              fontFamily: 'Schylar',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          secondText: ' Here !',
                          secondTextStyle: const TextStyle(
                              fontFamily: 'Schylar',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          'assets/logo.png',
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'NAME:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'DESIGNATION:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'CURRENT ADDRESS:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'EMAIL:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'PHONE:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'CREDIBILITY STATUS: ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'ENCOUNTERED CASE LIST:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
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
