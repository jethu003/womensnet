import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String imagePath;
  final String firstText;
  final String secondText;
  final double elevation;

  const CustomAlertDialog({
    super.key,
    required this.imagePath,
    required this.firstText,
    required this.secondText,
    this.elevation = 10,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      elevation: elevation, // Add elevation
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 16),
          Text(
            firstText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            secondText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (Navigator.of(context).pop),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
