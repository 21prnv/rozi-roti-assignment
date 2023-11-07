import 'package:flutter/material.dart';
import 'package:roziroti/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 250,
                child: Text(
                  'Create your Account',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextField(prefixIcon: Icons.mail, hintText: 'Email'),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                prefixIcon: Icons.password,
                hintText: 'Password',
                suffixIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: false, // Initial value, change it as needed
                    onChanged: (bool? value) {
                      // Handle checkbox state changes here
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Remember Me'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 42, 42, 42),
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'or continue with',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.facebook,
                    size: 30,
                  ),
                  Icon(
                    Icons.g_mobiledata,
                    size: 30,
                  ),
                  Icon(
                    Icons.apple,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already Have Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Sing in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
