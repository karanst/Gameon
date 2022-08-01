import 'package:flutter/material.dart';
import 'package:gameon/views/Widgets/helper.dart';
import 'package:gameon/views/ground_detail.dart';

class GroundCard extends StatefulWidget {
  String image;
  String name;
  String location;

   GroundCard({
    required this.image,
    required this.name,
    required this.location,
    Key? key}) : super(key: key);


  @override
  State<GroundCard> createState() => _GroundCardState();
}

class _GroundCardState extends State<GroundCard> {

bool s1 = true;
bool s2 = false;
bool s3 = true;
bool s4 = true;
bool s5 = false;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.image),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("20 Over",
                      style: titleTextStyle(12, FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: s1? Colors.transparent : const Color(0xffc9c9c9)),
                                  color: s1 ? AppColors.themeClr :Colors.white
                                ),
                                height: 21,
                                width: 60,
                                child: Center(
                                  child: Text("10:00 am",
                                  style: TextStyle(fontSize: 11,
                                  color: s1 ? Colors.white : Color(0xffc9c9c9),
                                  fontWeight: FontWeight.w500),),
                                ),
                              ),
                              onTap: (){
                                setState((){
                                  s1 = !s1;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0, right: 4),
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: s2? Colors.transparent : const Color(0xffc9c9c9)),
                                      color: s2 ? AppColors.themeClr :Colors.white
                                  ),
                                  height: 21,
                                  width: 60,
                                  child: Center(
                                    child: Text("1:00 pm",
                                      style: TextStyle(fontSize: 11,
                                          color: s2 ? Colors.white : Color(0xffc9c9c9),
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                onTap: (){
                                  setState((){
                                    s2 = !s2;
                                  });
                                },
                              ),
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: s3? Colors.transparent : const Color(0xffc9c9c9)),
                                    color: s3 ? AppColors.themeClr :Colors.white
                                ),
                                height: 21,
                                width: 60,
                                child: Center(
                                  child: Text("4:00 pm",
                                    style: TextStyle(fontSize: 11,
                                        color: s3 ? Colors.white : Color(0xffc9c9c9),
                                        fontWeight: FontWeight.w500),),
                                ),
                              ),
                              onTap: (){
                                setState((){
                                  s3 = !s3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Text("30 Over",
                        style: titleTextStyle(12, FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: s4? const Color(0xfffc6c64) : const Color(0xffc9c9c9)),
                                    color: Colors.white
                                ),
                                height: 21,
                                width: 60,
                                child: Center(
                                  child: Text("2:00 pm",
                                    style: TextStyle(fontSize: 11,
                                        color: s4 ? const Color(0xfffc6c64) : const Color(0xffc9c9c9),
                                        fontWeight: FontWeight.w500),),
                                ),
                              ),
                              onTap: (){
                                setState((){
                                  s4 = !s4;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0, right: 4),
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: s5? const Color(0xfffc6c64) : const Color(0xffc9c9c9)),
                                      color: Colors.white
                                  ),
                                  height: 21,
                                  width: 60,
                                  child: Center(
                                    child: Text("4:00 pm",
                                      style: TextStyle(fontSize: 11,
                                          color: s5 ? const Color(0xfffc6c64) : const Color(0xffc9c9c9),
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                onTap: (){
                                  setState((){
                                    s5 = !s5;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(widget.name, style: titleTextStyle(14, FontWeight.w600),),
            ),
            Row(
              children: [
              const Icon(Icons.location_on_outlined,
                size: 12,
                color: Color(0xff686868),),
                Text(widget.location,
                style: const TextStyle(
                  color: Color(0xff686868),
                  fontSize: 11
                ),),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Pitch type: ",
                  style: titleTextStyle(11, FontWeight.w400),
                  children: [
                    TextSpan(text : "Mat",
                      style: titleTextStyle(11, FontWeight.w500),)
                    ]
                )
                ),
                Row(
                  children: [
                    const  ImageIcon(AssetImage('assets/icons/compass.png'),color: AppColors.themeClr, size: 12,),

                    Text("  Navigate",style: themeTextStyle(12, FontWeight.w500),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

