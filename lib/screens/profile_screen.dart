import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn=false;
  String fullName="";
  String userName="";
  int favoriteCandiCount=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.purpleAccent,
          ),
          Column(
            children: [
              //Todo 2 profile header
            Align(
              alignment: AlignmentGeometry.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200-50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.deepPurple),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/placeholder_image.png'),
                        ),
                      ),
                      if(isSignedIn)
                      IconButton(onPressed:() {}, 
                      icon: Icon(Icons.camera_alt, color: Colors.amber))
                    ],
                  ),
                ),
              ),
              //Todo 3 profile info
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Icon(Icons.lock , color: Colors.amber),
                    SizedBox(width: 8,),
                    Text("Pengguna",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    )
                  ],
                  ),
                  E
                  
                ),
            ],
            )
              //Todo 4 profile action
            ],
          ),
        ],
      ),
    );
  }
}