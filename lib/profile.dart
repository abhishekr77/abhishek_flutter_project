import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  bool status = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(color: Color(0XFFEF8B34)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context,'karmaD');
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'SouceSanspro',
                          ),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 80, left: 20, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text('Name'),
                                SizedBox(width: 150),
                                Text('Phone Number'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: Colors.white30,
                                      child: ListTile(
                                        title: Text(
                                          'Paul',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SourceSansPro',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: Colors.white30,
                                      child: ListTile(
                                        title: Text(
                                          '+91-1234567890',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SourceSansPro',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text('Location'),
                                SizedBox(width: 150),
                                Text('Interest'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: Colors.white30,
                                      child: ListTile(
                                        title: Text(
                                          'NewYork City',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SourceSansPro',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: Colors.white30,
                                      child: ListTile(
                                        title: Text(
                                          'Football',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SourceSansPro',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Notification',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(
                                width:50 ,
                              ),
                              CustomSwitch(
                                activeColor: Color(0xFFEF8B34),
                                value: status,
                                onChanged: (value) {
                                  print("VALUE : $value");
                                  setState(() {
                                    status = value;
                                  },
                                  );
                                },
                              ),

                            ],

                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 128.5,
              right: 148,
              child: CircleAvatar(
                maxRadius: 72,
                backgroundColor: Colors.white,

              ),
            ),
            Positioned(
              top: 130,
              right: 150,
              child: CircleAvatar(
                maxRadius: 70,
                backgroundImage: AssetImage(
                  'images/profile.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
