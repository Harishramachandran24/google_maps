import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  String phone = "9876543210";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                setState(() {
                  phone = number.phoneNumber!;
                });
              },
              countries: const [
                'LK',
                'IN',
                'US',
                'CA'
              ], // Specify the countries you want to allow
              textFieldController: TextEditingController(),
              inputDecoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Phone Number: $phone',
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
