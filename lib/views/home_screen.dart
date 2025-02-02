import 'package:flutter/material.dart';
import 'package:weather4/utils/colors.dart';
import 'package:weather4/utils/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather4/views/location_screen.dart';
import 'package:weather4/views/setting_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(),
            kheight25,
            Container(
              padding: EdgeInsets.all(10),
              width: 358,
              height: 565,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [lightblue, darkblue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));
                       },
                        icon: Icon(Icons.add,
                          color: whitePrimary,
                          size: 32,)),
                        // Icon(
                        //   Icons.add,
                        //   color: whitePrimary,
                        //   size: 32,
                        // ),
                        Text(
                          "Malang",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: whitePrimary,
                              fontSize: 16),
                        ),
                        IconButton(onPressed: (){
 Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                        }, icon: Icon(
                          Icons.more_vert_rounded,
                          color: whitePrimary,
                          size: 32,
                        ),)
                        
                      ],
                    ),
                    //Image.network("https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-cartoon-cloud-illustration-png-image_10211263.png"),
                    Image.asset("assets/images/Sun cloud angled rain.png"),
                    Text(
                      "Sunday | Nov 14",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text("24",
                        style: TextStyle(
                            fontSize: 72,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Heavy rain",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            kwidth25,
                            SvgPicture.asset(
                              "assets/svgs/location.svg",
                              width: 25,
                            ),
                          ],
                        ),
                         Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3.7 km/h",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                        Text(
                          "Wind",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                      ],
                    ),
                        
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          kwidth25,
                          SvgPicture.asset(
                            "assets/svgs/Group.svg",
                            width: 25,
                          ),
                        ],
                      ),
                      
                      
                    ),
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "74%",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                        Text(
                          "Chance of rain",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                      ],
                    ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                     Row(
                      children: [
                        Row(
                          children: [
                            kwidth25,
                            SvgPicture.asset(
                              "assets/svgs/temp.svg",
                              width: 25,
                            ),
                          ],
                        ),
                         Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1010 mbar",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                        Text(
                          "Pressure",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                      ],
                    ),
                        
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          kwidth25,
                          SvgPicture.asset(
                            "assets/svgs/hum.svg",
                            width: 25,
                          ),
                        ],
                      ),
                      
                      
                    ),
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "83%",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                        Text(
                          "Humidity 83%",
                          style: TextStyle(fontSize: 12, color: whitePrimary),
                        ),
                      ],
                    ),
                      ],
                    ),
                    
                    
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
