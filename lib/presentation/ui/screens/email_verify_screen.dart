import 'package:crafty_bay/presentation/ui/screens/otp_verify_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyScreen extends StatefulWidget {
  const EmailVerifyScreen({super.key});

  @override
  State<EmailVerifyScreen> createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              const AppLogoWidget(),
              const SizedBox(height: 24,),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('Please Enter Your Email Address',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black38)),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _emailTEController,
                decoration: const InputDecoration(hintText: 'Email Address'),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(onPressed: () {
                moveToOtpScreen();
        
              }, child: const Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
  void moveToOtpScreen(){
    Get.to(()=> const OtpVerifyScreen());
  }
  @override
  void dispose() {
    super.dispose();
    _emailTEController.dispose();
  }
}
