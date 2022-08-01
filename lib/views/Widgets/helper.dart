import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

    Text themeText(String text){
        return Text(text,
            style : GoogleFonts.coiny(
            textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.themeTxtClr,
            )
        )
        );
    }
TextStyle titleTextStyle(double size, FontWeight weight ){
    return GoogleFonts.poppins(
        textStyle:  TextStyle(
            fontSize: size,
            fontWeight: weight,
            color: AppColors.titleClr,
        )
    );
}
TextStyle themeTextStyle(double size, FontWeight weight ){
  return GoogleFonts.poppins(
      textStyle:  TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: AppColors.themeClr,
      )
  );
}
TextStyle subTextStyle(double size){
    return GoogleFonts.poppins(
        textStyle:  TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w400,
            color: AppColors.txtClr,
        )
    );
}
TextStyle buttonTextStyle(){
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      )
  );
}
Widget calendarCard(String day, date, Color color){
      return Container(
        padding: EdgeInsets.only(top: 6, bottom: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
        height: 69,
        width: 59,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Jan",
            style: titleTextStyle(11, FontWeight.w300),),
            Text(date, style: titleTextStyle(14, FontWeight.w600),),
            Text(day, style: titleTextStyle(12, FontWeight.w400),),
          ],
        ),
      );
}

    class AppColors{
        static const themeClr = Color(0xff088f81);
        static const themeTxtClr = Color(0xffC2FFED);
        static const txtFldClr = Color(0xffE6F3F2);
        //.withOpacity(0.4);
        static const titleClr = Color(0xff033934);
        static const txtClr = Color(0xff7FA89C);
        static const dividerColor = Color(0xffbde3df);


    }