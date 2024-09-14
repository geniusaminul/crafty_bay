import 'dart:async';

import 'package:crafty_bay/presentation/ui/Utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/controller/countdown_timer_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/complete_profile_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final TextEditingController _otpTEController = TextEditingController();
 final CountdownTimerController timerController = Get.put(CountdownTimerController());

  late Timer _timer;
  int _start = 30; // Countdown duration in seconds
  bool _isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }
  void startTimer() {
    _start = 30; // Reset timer duration
    _isButtonDisabled = true; // Disable the resend button
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _isButtonDisabled = false; // Enable the button
        });
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }


  void _resendOTP() {
    // Logic to resend OTP goes here
    startTimer(); // Restart the timer after resending the OTP
  }


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
              const SizedBox(
                height: 24,
              ),
              Text(
                'Enter OTP Code',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('A 6 Digit OTP Code has been sent',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black38)),
              const SizedBox(
                height: 16,
              ),
              _buildPinCodeTextField(context),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: _moveToCompleteProfileScreen, child: const Text('Next')),
              const SizedBox(
                height: 34,
              ),
              RichText(
                text: TextSpan(
                    text: 'This code will expire in ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: ' $_start s',
                          style: const TextStyle(color: AppColors.themeColor))
                    ]),
              ),
              TextButton(
                onPressed: _isButtonDisabled ? null : _resendOTP,
                child: Text(
                  'Resend Code',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(4),
          fieldHeight: 50,
          fieldWidth: 40,
          selectedFillColor: Colors.transparent,
          activeFillColor: Colors.white,
          inactiveColor: AppColors.themeColor,
          activeColor: Colors.black,
          inactiveFillColor: Colors.transparent),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      controller: _otpTEController,
      keyboardType: TextInputType.number,
      appContext: context,
    );
  }

  void _moveToCompleteProfileScreen() {
    Get.to(() => const CompleteProfileScreen());
  }

  @override
  void dispose() {
    super.dispose();
    _otpTEController.dispose();
    _timer.cancel();
  }
}
