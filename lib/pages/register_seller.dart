import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/seller.dart';
import '../providers/users_provider.dart';
import 'region_list.dart';

class RegisterSellerScreen extends ConsumerStatefulWidget {
  const RegisterSellerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterSellerScreenState();
}

class _RegisterSellerScreenState extends ConsumerState<RegisterSellerScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController termsController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Seller"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Full Name"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Email"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Phone Number"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: termsController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Terms & Conditions"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Password"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: password2Controller,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Confirm Password"),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                ref.read(usersProvider.notifier).registerSeller(
                      Seller(
                        full_name: nameController.text,
                        email: emailController.text,
                        phone_number: phoneNumberController.text,
                        terms_and_conditions: bool.parse(termsController.text),
                        password: passwordController.text,
                        password2: password2Controller.text,
                      ),
                    );
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const RegionListScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: const StadiumBorder(),
                minimumSize: const Size(double.infinity, 49.0),
              ),
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
