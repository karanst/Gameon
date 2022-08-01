import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gameon/database.dart';
import 'package:gameon/ground_model.dart';
import 'package:gameon/views/Widgets/ground_card.dart';
import 'package:gameon/views/Widgets/helper.dart';
import 'package:gameon/views/ground_detail.dart';

class Grounds extends StatefulWidget {
  const Grounds({Key? key}) : super(key: key);

  @override
  State<Grounds> createState() => _GroundsState();
}

class _GroundsState extends State<Grounds> {

  List<GroundModel> testData = [
  GroundModel( id: 1, name: "Wankhede International cricket Stadium", image: "assets/1.png", location: "Mumbai, Maharashtra"),
    GroundModel(id :2,name: "Narendra Modi Stadium", image: "assets/2.png", location: "Ahemedabad, Gujrat"),
    GroundModel(id:3, name: "Jawaharlal Nehru Stadium", image: "assets/3.png", location: "Delhi NCR, Delhi"),
  ];

  // @override
  // void initState(){
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await showDialog(
  //         context: context,
  //         builder: (context) {
  //           return
  //             SimpleDialog(
  //                 contentPadding: const  EdgeInsets.all(20),
  //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
  //                 alignment: Alignment.center,
  //                 children: [
  //                   RichText(
  //                     textAlign: TextAlign.center,
  //                     text: TextSpan(
  //                       text: 'Allow ',
  //                       style: titleTextStyle(14, FontWeight.w600),
  //                       children:  <TextSpan>[
  //                         TextSpan(text: 'Gameon', style: themeTextStyle(14, FontWeight.w600)),
  //                         TextSpan(text: ' to access your location.', style: titleTextStyle(14, FontWeight.w600),),
  //                       ],
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.only(top: 8.0, bottom: 20),
  //                     child: RichText(
  //                       textAlign: TextAlign.center,
  //                       text: TextSpan(
  //                         text: 'You must allow access for the ',
  //                         style: subTextStyle(12),
  //                         children:  <TextSpan>[
  //                           TextSpan(text: 'Gameon ', style: themeTextStyle(12, FontWeight.w500)),
  //                           TextSpan(text: "app to work. we will only track your location while on duty.", style: subTextStyle(12),),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   const Divider(
  //                     thickness: 1,
  //                     color: AppColors.dividerColor,
  //                   ),
  //                   SimpleDialogOption(
  //                     onPressed: () => {
  //                       setState(() {
  //                       }),
  //                       Navigator.push(
  //                         context,
  //                         MaterialPageRoute(builder: (context) => const Grounds()),
  //                       )
  //                     },
  //                     child: const Text('Only While Using the App ',
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             fontSize: 12,
  //                             fontWeight: FontWeight.w500,
  //                             color: AppColors.themeClr)),
  //                   ),
  //                   const Divider(
  //                     thickness: 1,
  //                     color: AppColors.dividerColor,
  //                   ),
  //                   SimpleDialogOption(
  //                     onPressed: ()  {
  //                       Navigator.pop(context);
  //                     },
  //                     child: const Text('Always Allow',
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             fontSize: 12,
  //                             fontWeight: FontWeight.w500,
  //                             color: AppColors.themeClr)),
  //                   ),
  //                   const Divider(
  //                     thickness: 1,
  //                     color: AppColors.dividerColor,
  //                   ),
  //                   SimpleDialogOption(
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: const Text("Don't Allow",
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             fontSize: 12,
  //                             fontWeight: FontWeight.w500,
  //                             color: AppColors.themeClr)),
  //                   ),
  //                 ]  );
  //         });
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.themeClr,
        //AppColors.themeClr,
        leading: const Icon(Icons.menu, color: Colors.white,size: 20,),
        title: const Text("Grounds",
        style: TextStyle(fontSize: 16,
        fontWeight: FontWeight.w600),),
        actions: [
            IconButton(
              onPressed: (){},
                icon: const ImageIcon(AssetImage('assets/icons/search.png'),color: Colors.white, size: 18,)),
          IconButton(
              onPressed: (){},
              icon: const ImageIcon(AssetImage('assets/icons/setting.png'),color: Colors.white, size: 18,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
           Container(
             height: 80,
             child: ListView(
               scrollDirection: Axis.horizontal,
            children: [
              calendarCard("Sun", "03", Colors.white),
              calendarCard("Mon", "04", Colors.white),
              Container(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.themeClr
                ),
                height: 69,
                width: 59,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Jan",
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300, color: Colors.white),),
                    Text("02", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),),
                    Text("tue", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),),
                  ],
                ),
              ),
              calendarCard("Wed", "06", Colors.white),
              calendarCard("Thu", "07", Colors.white),
              calendarCard("Fri", "08", Colors.white),
              calendarCard("Sat", "09", Colors.white),
              calendarCard("Sun", "10", Colors.white),
            ],
        )

           ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.location_on_outlined,
                        size: 14,
                        color: AppColors.themeClr,),
                      Text(" Maharashtra, India",
                        style:  titleTextStyle(12, FontWeight.w500)
                        ),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: Text("Change >", style: themeTextStyle(10, FontWeight.w500),))
                ],
              ),
            ),
           const Padding(padding: EdgeInsets.only(left: 20, right: 20),
           child: Divider(
             color: Color(0xffe7e7e7),
           )),

            Expanded(
              flex: 1,
              child: FutureBuilder<List<GroundModel>>(
                future: DBProvider.db.getAllClients(),
                builder: (BuildContext context, AsyncSnapshot<List<GroundModel>> snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          GroundModel item = snapshot.data![index];
                          return
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> GroundDetails(name: item.name )));
                            },
                              child: GroundCard(image: item.image, name: item.name, location: item.location));

                        },
                      ),
                    );
                  } else {
                    return Text("${snapshot.error}");
                  }
                },
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(primary: Colors.white),
            //     onPressed: (){
            //   GroundModel rnd = testData[Random().nextInt(testData.length)];
            //    DBProvider.db.newGround(rnd);
            // }, child: Text("add",
            // style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
