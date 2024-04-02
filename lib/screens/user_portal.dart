import 'package:flutter/material.dart';
import 'package:womensnet/screens/common_widgets/common_widgets.dart';

class UserPortal extends StatefulWidget {
  const UserPortal({super.key});

  @override
  State<UserPortal> createState() => _UserPortalState();
}

class _UserPortalState extends State<UserPortal> {
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Complaint Id :',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 10),
                              child: Text(
                                'Approved ',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Officer Details :',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Name :',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Complaint Status',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          '12-02-23',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 16),
                        // First office side message
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Status',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold,
                                          color: Colors.green
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[200],
                              ),
                                padding: const EdgeInsets.all(16),
                              
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Can u provide more details about incident.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '09:29 PM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // First user side message
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                 decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                   color: Colors.blue[100],
                              ),
                                padding: const EdgeInsets.all(16),
                               
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'We invite you to join our officer portal...',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '09:29 PM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Second office side message
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Status',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.green
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Container(
                                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                   color: Colors.grey[100],
                              ),
                                padding: const EdgeInsets.all(16),
                                
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Can u provide more details about incident.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '09:29 PM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Second user side message
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                   color: Colors.blue[100],
                              ),
                                padding: const EdgeInsets.all(16),
                               
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'We invite you to join our officer portal...',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      '09:29 PM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Send message section
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Send your Concern :',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              const TextField(
                                minLines: 3,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: CommonWidgets().buildCustomButton(
                                    context,
                                    'send',
                                    () {},
                                    Colors.pink,
                                    Colors.black,
                                 const   EdgeInsets.symmetric(horizontal: 10)),
                              )
                            ],
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
