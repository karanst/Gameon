import 'package:flutter/material.dart';
import 'package:gameon/views/Widgets/login_widget.dart';
import 'package:gameon/views/grounds_screen.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'package:gameon/views/Widgets/helper.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  LocationData? currentLocation;
  String address = "";
  TextEditingController textController = TextEditingController();
  @override
  void initState(){

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
          context: context,
          builder: (context) {
            return
              SimpleDialog(
                contentPadding: const  EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
                alignment: Alignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Allow ',
                      style: titleTextStyle(14, FontWeight.w600),
                      children:  <TextSpan>[
                        TextSpan(text: 'Gameon', style: themeTextStyle(14, FontWeight.w600)),
                        TextSpan(text: ' to access your location.', style: titleTextStyle(14, FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'You must allow access for the ',
                        style: subTextStyle(12),
                        children:  <TextSpan>[
                          TextSpan(text: 'Gameon ', style: themeTextStyle(12, FontWeight.w500)),
                          TextSpan(text: "app to work. we will only track your location while on duty.", style: subTextStyle(12),),
                        ],
                      ),
                    ),
                  ),
                 const Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  ),
                  SimpleDialogOption(
                    onPressed: ()  {
                      Navigator.pop(context);
                    },
                    child: const Text('Only While Using the App ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.themeClr)),
                  ),
                  const Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  ),
                  SimpleDialogOption(
                    onPressed: ()  {
                      Navigator.pop(context);
                    },
                    child: const Text('Always Allow',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.themeClr)),
                  ),
                  const Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  ),
                  SimpleDialogOption(
                    onPressed: () {
                   Navigator.pop(context);
                    },
                    child: const Text("Don't Allow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.themeClr)),
                  ),
          ]  );
          });
    });
  _getLocation();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return LoginWidget(child:
    Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text("Location",
              style: titleTextStyle(20, FontWeight.w600),),
          ),
          Center(
            child: Text("Enter your location manually if facing any issue",
              style: subTextStyle(14),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 10),
            child: Text("Please Enter Your Location",
              style: titleTextStyle(14, FontWeight.w500),),
          ),
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
                      child: const Center(
                        child: Icon(Icons.location_on_outlined,
                        color: AppColors.themeClr,)
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
                          controller: textController,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Grounds()));
                      },
                      child: Text("Save",
                        style: buttonTextStyle(),))),
            ),
          ),
          // if (currentLocation != null)
          //   Text(
          //       "Location: ${currentLocation?.latitude}, ${currentLocation?.longitude}"),

        ],
      ),
    ));
  }

  void _getLocation() {
    _getLocationData().then((value) {
      LocationData? location = value;
      _getAddress(location?.latitude, location?.longitude).then((value) {
        setState(() {
          currentLocation = location;
          address = value;
          textController = TextEditingController(text: address);
        });
      });
    });
  }
  Future<LocationData?> _getLocationData() async {
    Location location = new Location();
    LocationData _locationData;

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();

      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();

    return _locationData;
  }

  Future<String> _getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";
    GeoCode geoCode = GeoCode();
    Address address =
    await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
    return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
  }
}

