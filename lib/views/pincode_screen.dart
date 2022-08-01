import 'package:flutter/material.dart';
import 'package:gameon/views/Widgets/helper.dart';
import 'package:gameon/views/Widgets/login_widget.dart';
import 'package:gameon/views/grounds_screen.dart';
import 'package:gameon/views/location_screen.dart';

import 'dart:async';

import 'package:pin_code_fields/pin_code_fields.dart';





class PinCodeVerificationScreen extends StatefulWidget {
   String? phoneNumber;

   PinCodeVerificationScreen({
     required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  Timer? _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    errorController!.close();
    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoginWidget(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Enter OTP",
              style: titleTextStyle(16, FontWeight.w500),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0, ),
              child: Form(
                key: formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30),
                    child: PinCodeTextField(
                      textStyle: themeTextStyle(16, FontWeight.w600),
                      appContext: context,
                      length: 4,
                      obscureText: true,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "Please enter OTP";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        activeColor: AppColors.txtFldClr,
                        selectedColor: AppColors.txtFldClr,
                        disabledColor: AppColors.txtFldClr,
                        inactiveFillColor: AppColors.txtFldClr,
                        selectedFillColor: AppColors.txtFldClr,
                        inactiveColor: AppColors.txtFldClr,
                        errorBorderColor: AppColors.themeClr,
                        shape: PinCodeFieldShape.box,
                        borderWidth: 0.5,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor: AppColors.txtFldClr,
                      ),
                      cursorColor: Colors.black,

                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        return true;
                      },
                    )),
              ),
            ),
            Text(
              "OTP sent to ${widget.phoneNumber}",
              style: subTextStyle(14)
              //titleTextStyle(16, FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const  ImageIcon(AssetImage('assets/icons/timer.png'),color: AppColors.themeClr,),
                Text("00:$_start",
                style: themeTextStyle(14, FontWeight.w500),)
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.themeClr
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent),
                      onPressed: (){
                        formKey.currentState!.validate();
                        // conditions for validating
                        if (currentText.length != 4 || currentText != "2198") {
                        errorController!.add(ErrorAnimationType
                            .shake); // Triggering error shake animation
                        setState(() => hasError = true);
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationScreen()));
                        }
                        else if(textEditingController.text == "2198") {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationScreen()));
                        }
                        else{
                        setState(
                        () {
                        hasError = false;
                        snackBar("OTP Verified!!");
                        },
                        );
                        }

                      },
                      child: Text("Login",
                        style: buttonTextStyle(),))),
            ),
          ],
        )
    );
  }
}