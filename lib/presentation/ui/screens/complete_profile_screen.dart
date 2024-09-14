import 'package:crafty_bay/presentation/ui/screens/otp_verify_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _fNameTEController = TextEditingController();
  final TextEditingController _lNameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingTEController = TextEditingController();


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
                height: 80,
              ),
              const AppLogoWidget(),
              const SizedBox(height: 24,),
              Text(
                'Complete Profile',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('Get Started with us with your details',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black38)),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _fNameTEController,
                decoration: const InputDecoration(hintText: 'First Name'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _lNameTEController,
                decoration: const InputDecoration(hintText: 'Last Name'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _emailTEController,
                decoration: const InputDecoration(hintText: 'Email Address'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _phoneTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Mobile'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _cityTEController,
                decoration: const InputDecoration(hintText: 'City'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _shippingTEController,
                decoration: const InputDecoration(hintText: 'Shipping Address'),
                maxLines: 4,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(onPressed: () {

        
              }, child: const Text('Complete'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailTEController.dispose();
  }
}
