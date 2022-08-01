import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameon/views/Widgets/helper.dart';
import 'package:gameon/views/Widgets/login_widget.dart';
import 'package:gameon/views/pincode_screen.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LoginWidget(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text("Hi!",
              style: titleTextStyle(20, FontWeight.w600),),
            ),
            Center(
              child: Text("Let's Get Started.",
              style: subTextStyle(14),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 10),
              child: Text("Enter Phone Number",
              style: titleTextStyle(14, FontWeight.w500),),
            ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Stack(
                   children: [
                     Row(
                       children: [
                         Container(
                           height: 50,
                           width: 60,
                           //padding: const EdgeInsets.fromLTRB(15.0, 7.0, 5.0, 2.0),
                           decoration: const BoxDecoration(
                               border: Border.fromBorderSide(
                                   BorderSide(
                                       color: AppColors.themeClr, width: 0.5
                                   )),
                               color: AppColors.txtFldClr,
                               borderRadius:   BorderRadius.only(topLeft: Radius.circular(8),
                                   bottomLeft: Radius.circular(8))

                           ),
                           child: Center(
                             child: Text("+91",
                               style: titleTextStyle(16, FontWeight.w500),),
                           ),
                         ),

                       ],
                     ),
                     Positioned(
                       left: 60,
                       child: Container(
                           height: 50,
                           width: MediaQuery.of(context).size.width - 100 ,
                           padding: const EdgeInsets.only(left: 15.0, ),
                           decoration: BoxDecoration(
                             border: Border.all(color: AppColors.themeClr, width: 0.5),
                             color: AppColors.txtFldClr,
                             borderRadius: const BorderRadius.only(
                                 topRight: Radius.circular(8),
                                 bottomRight: Radius.circular(8)
                             ),
                           ),
                           child: TextField(
                               inputFormatters: [
                                 LengthLimitingTextInputFormatter(10),
                               ],
                              controller: textController,
                               keyboardType: TextInputType.number,
                               //maxLength: 10,
                               decoration: const InputDecoration(
                                 border: InputBorder.none,
                               ),
                               style: subTextStyle(14)
                           )
                       ),
                     ),
                     Positioned(
                       left: 55,
                       child: Container(
                         decoration: const BoxDecoration(
                             color: AppColors.txtFldClr,
                             border: Border(
                               top: BorderSide(
                                   color: AppColors.themeClr, width: 0.5
                               ),
                               bottom: BorderSide(
                                   color: AppColors.themeClr, width: 0.5
                               ),
                             )
                         ),

                         padding: const EdgeInsets.only(top: 8, bottom: 8),
                         height: 50,
                         width: 10,
                         child: const VerticalDivider(
                           color: Color(0xffBDE3DF),
                           width: 0.5,
                         ),
                       ),
                     ),
                   ]
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 120.0),
                 child: Center(
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
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> PinCodeVerificationScreen(phoneNumber: textController.text)));
                           },
                           child: Text("Get OTP",
                             style: buttonTextStyle(),))),
                 ),
               ),
               Center(
                 child: TextButton(onPressed: (){},
                     child: Text("Have a Pin?",
                       style: subTextStyle(14),)),
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}
