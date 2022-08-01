import 'package:flutter/material.dart';
import 'package:gameon/views/Widgets/helper.dart';

class GroundDetails extends StatefulWidget {
  String? name;
   GroundDetails({
    required this.name, Key? key}) : super(key: key);

  @override
  State<GroundDetails> createState() => _GroundDetailsState();
}

class _GroundDetailsState extends State<GroundDetails> {

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    bool isChecked1 = false;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.themeClr,
        leading: const Icon(Icons.menu, color: Colors.white,size: 20,),
        title: const Text("Grounds Details",
          style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                      icon: const ImageIcon(AssetImage("assets/icons/calendar.png"),color: AppColors.themeClr,)),
                  Text(" Sunday, 21 June 2021",
                    style: titleTextStyle(16, FontWeight.w500),)
                ],
              ),
              Center(
                child: Image.asset("assets/4.png", height: 184,
                width: 292,),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: Text( '${widget.name}',
              style: titleTextStyle(14, FontWeight.w600),),
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 12,color: AppColors.themeClr,),

                      Text(" Navigate",style: themeTextStyle(12, FontWeight.w500),)
                    ],
                  ),

                  RichText(text: TextSpan(text: "Pitch type: ",
                      style: titleTextStyle(11, FontWeight.w400),
                      children: [
                        TextSpan(text : "Mat",
                          style: titleTextStyle(11, FontWeight.w500),)
                      ]
                  )
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            color: AppColors.themeClr.withOpacity(0.1)
                          ),
                          child: const ImageIcon(
                            AssetImage("assets/icons/food.png",),
                            color: AppColors.themeClr,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                                color: AppColors.themeClr.withOpacity(0.1)
                            ),
                            child: const ImageIcon(
                              AssetImage("assets/icons/toilet.png",),
                              color: AppColors.themeClr,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 28,
                      width: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                          color: AppColors.themeClr.withOpacity(0.1)
                      ),
                      child: Row(
                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ImageIcon(
                            AssetImage("assets/icons/compass.png",),
                            color: AppColors.themeClr,
                          ),
                          Text("  2 Km far.",
                          style: titleTextStyle(11, FontWeight.w500),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("For 20 overs",
                            style: titleTextStyle(12, FontWeight.w500),),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.themeClr),
                                color: Colors.white
                            ),
                            height: 21,
                            width: 60,
                            child: const Center(
                              child: Text("03:00 am",
                                style: TextStyle(fontSize: 11,
                                    color: AppColors.themeClr,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Team 1:",
                              style: subTextStyle(11),),
                              Text("Mumbai Indians",
                                style: titleTextStyle(12, FontWeight.w500),),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      //border: Border.all(color: AppColors.themeClr),
                                      color: Color(0xffe7e7e7)
                                  ),
                                  height: 24,
                                  width: 66,
                                  child: const Center(
                                    child: Text("Booked",
                                      style: TextStyle(fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 82.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Team 2:",
                                  style: subTextStyle(11),),
                                Text("Available",
                                  style: titleTextStyle(12, FontWeight.w500),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColors.themeClr.withOpacity(0.1)
                                    ),
                                    height: 24,
                                    width: 66,
                                    child: const Center(
                                      child: Text("Available",
                                        style: TextStyle(fontSize: 10,
                                            color: AppColors.themeClr,
                                            fontWeight: FontWeight.w400),),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ball provided",
                          style: titleTextStyle(10, FontWeight.w400),),
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: const Color(0xffe7e7e7),
                              borderRadius:
                              BorderRadius.circular(5.0),
                            ),
                            child: Checkbox(
                              activeColor: const Color(0xffe7e7e7),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(4.0),
                              ),
                              checkColor: AppColors.themeClr,
                              value: isChecked,
                              onChanged: (value) {
                                isChecked =  value! ;
                              },
                            ),
                          ),


                          Text("Umpire provided",
                            style: titleTextStyle(10, FontWeight.w400),),

                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color(0xffe7e7e7),
                              borderRadius:
                              BorderRadius.circular(5.0),
                            ),
                            child: Checkbox(
                              activeColor: const Color(0xffe7e7e7),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(4.0),
                              ),
                              checkColor: AppColors.themeClr,
                              value: isChecked1,
                              onChanged: (value) {
                                setState((){
                                  isChecked1 =  value! ;
                                });

                              },
                            ),
                          ),

                          RichText(text: TextSpan(text: "Ball Detail: ",
                              style: titleTextStyle(10, FontWeight.w400),
                              children: [
                                TextSpan(text : "Tennis",
                                  style: themeTextStyle(11, FontWeight.w500),)
                              ]
                          )
                          ),
                        ],
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("₹ 3000",style: themeTextStyle(16, FontWeight.w500),),
                            Container(
                                height: 34,
                                width: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.themeClr
                                ),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent),
                                    onPressed: (){
                                    },
                                    child: Text("Book Now",
                                      style: buttonTextStyle(),)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("For 30 overs",
                            style: titleTextStyle(12, FontWeight.w500),),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.themeClr),
                                color: Colors.white
                            ),
                            height: 21,
                            width: 60,
                            child: const Center(
                              child: Text("10:00 am",
                                style: TextStyle(fontSize: 11,
                                    color: AppColors.themeClr,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 198.0, top: 20, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              //border: Border.all(color: AppColors.themeClr),
                              color: AppColors.themeClr
                          ),
                          height: 24,
                          width: 66,
                          child: const Center(
                            child: Text("Available",
                              style: TextStyle(fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            //border: Border.all(color: AppColors.themeClr),
                            color: AppColors.themeClr
                        ),
                        height: 24,
                        width: 66,
                        child: const Center(
                          child: Text("Available",
                            style: TextStyle(fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),),
                        ),
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ball provided",
                            style: titleTextStyle(10, FontWeight.w400),),
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: const Color(0xffe7e7e7),
                              borderRadius:
                              BorderRadius.circular(5.0),
                            ),
                            child: Checkbox(
                              activeColor: const Color(0xffe7e7e7),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(4.0),
                              ),
                              checkColor: AppColors.themeClr,
                              value: isChecked,
                              onChanged: (value) {
                                isChecked =  value! ;
                              },
                            ),
                          ),


                          Text("Umpire provided",
                            style: titleTextStyle(10, FontWeight.w400),),

                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color(0xffe7e7e7),
                              borderRadius:
                              BorderRadius.circular(5.0),
                            ),
                            child: Checkbox(
                              activeColor: const Color(0xffe7e7e7),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(4.0),
                              ),
                              checkColor: AppColors.themeClr,
                              value: isChecked1,
                              onChanged: (value) {
                                setState((){
                                  isChecked1 =  value! ;
                                });

                              },
                            ),
                          ),

                          RichText(text: TextSpan(text: "Ball Detail: ",
                              style: titleTextStyle(10, FontWeight.w400),
                              children: [
                                TextSpan(text : "Tennis",
                                  style: themeTextStyle(11, FontWeight.w500),)
                              ]
                          )
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("₹ 6000",style: themeTextStyle(16, FontWeight.w500),),
                            Container(
                                height: 34,
                                width: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.themeClr
                                ),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent),
                                    onPressed: (){
                                    },
                                    child: Text("Book Now",
                                      style: buttonTextStyle(),)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
