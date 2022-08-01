import 'package:flutter/material.dart';
import 'package:gameon/views/Widgets/helper.dart';

class LoginWidget extends StatelessWidget {
  Widget child;
   LoginWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
          Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/gameon.png', ),
                themeText("Gameon")
              ],
            ),
            width: MediaQuery.of(context).size.width,
          height: 280,
          // child: new Text(
          // 'Hello world',
          //     style: Theme.of(context).textTheme.display4
          // ),
          decoration:  BoxDecoration(
          //  color:  Color(0xff7c94b6),
            image:  DecorationImage(
              fit: BoxFit.cover,
              colorFilter:  ColorFilter.mode(AppColors.themeClr.withOpacity(0.8), BlendMode.srcOver),
              // mode(Color(0xff088f81).withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage('assets/bgimage.png',)

            ),
          ),
          ),
              Positioned(
                top: 240,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),),
                    color: Colors.white
                  ),

                ),
              ),




            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height-280,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: child,
          )
        ],
      ),
    );
  }
}
