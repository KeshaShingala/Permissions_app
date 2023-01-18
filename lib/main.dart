import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Permissions App"),
        actions: [
          SizedBox(width: 30,),
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10,),
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
          child: InkWell(
            onTap: () async {
              PermissionStatus Status = await Permission.camera.request();
             setState((){
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                     content: Text(
                       "$Status",
                       style: TextStyle(
                         fontSize: 18,
                       ),
                     ),
                     behavior: SnackBarBehavior.floating,
                   ),
                 );
             });
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan.shade700,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Camera",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Spacer(),
                  Icon(Icons.camera_alt_outlined,color: Colors.grey.shade300,),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          ),
      ),
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
          child: InkWell(
            onTap: () async {
              PermissionStatus Status = await Permission.photos.request();
             setState((){
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                     content: Text(
                       "$Status",
                       style: TextStyle(
                         fontSize: 18,
                       ),
                     ),
                     behavior: SnackBarBehavior.floating,
                   ),
                 );
             });
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Photos",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Spacer(),
                  Icon(Icons.photo,color: Colors.grey.shade300,),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          ),
      ),
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
          child: InkWell(
            onTap: () async {
              PermissionStatus Status = await Permission.audio.request();
             setState((){
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                     content: Text(
                       "$Status",
                       style: TextStyle(
                         fontSize: 18,
                       ),
                     ),
                     behavior: SnackBarBehavior.floating,
                   ),
                 );
             });
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan.shade700,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Audio",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Spacer(),
                  Icon(Icons.audiotrack_outlined,color: Colors.grey.shade300,),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          ),
      ),
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
          child: InkWell(
            onTap: () async {
              PermissionStatus Status = await Permission.calendar.request();
             setState((){
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                     content: Text(
                       "$Status",
                       style: TextStyle(
                         fontSize: 18,
                       ),
                     ),
                     behavior: SnackBarBehavior.floating,
                   ),
                 );
             });
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Calendar",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Spacer(),
                  Icon(Icons.calendar_month_outlined,color: Colors.grey.shade300,),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          ),
      ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.phone.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade700,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Phone",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.phone,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.contacts.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Contacts",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.contacts,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.bluetooth.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade700,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Bluetooth",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.bluetooth,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.location.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Location",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.location_on,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.microphone.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade700,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Microphone",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.headset_mic_rounded,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.sms.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Sms",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.sms,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                child: InkWell(
                  onTap: () async {
                    PermissionStatus Status = await Permission.videos.request();
                    setState((){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: (Status == PermissionStatus.granted)? Colors.green : Colors.red,
                          content: Text(
                            "$Status",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade700,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Videos",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Spacer(),
                        Icon(Icons.video_camera_back,color: Colors.grey.shade300,),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.cyan.shade100,
    );
  }
}