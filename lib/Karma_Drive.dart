import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_Drive extends StatefulWidget {
  const list_Drive({Key? key}) : super(key: key);

  @override
  _list_DriveState createState() => _list_DriveState();
}

class _list_DriveState extends State<list_Drive> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Color(0xFFEF8B34),
        body:SafeArea(
          child: Column(
            children:[
              Expanded(flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pushNamed(context,'welcome_screen');
                        },
                            icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),

                        Text('Karma Drives',style: TextStyle(fontSize: 20,
                            color: Colors.white,
                        fontFamily: "OpenSans"),),
                        FlatButton(onPressed: (){
                          Navigator.pushNamed(context, 'proF');
                        },
                          height: 30,
                          minWidth: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text('MY PROFILE',
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.white,),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 50, 40),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search here....",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(flex: 3,
                      child: Container(
                        child:  ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Card(),
                            Card(),
                            Card(),
                          ],
                        ),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                            )),

                        ) ,

                      ),

                  ],
                ),
              )
              ]
          ),
        ),

      );

  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height:300,
        decoration: new BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            image: new DecorationImage(
              image: new AssetImage("images/listpic.jpg"),
              fit: BoxFit.fill,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text('9,523',style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans'
              ),),
              alignment: Alignment(0.80,0.50),),
            Align(
              child: Text('JOINED',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
                fontStyle: FontStyle.italic,
              ),),

              alignment: Alignment(0.80,0.2),),
            SizedBox(
              height: 30,
            ),

            Align(
                child: Text('CATEGORY',style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,fontFamily: 'OpenSans'
                ),),
            alignment: Alignment(-0.80,-0.5),),

        Align(child: Text('SPIRITUAL EMPOWERMENT',style: TextStyle(
        color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          fontSize: 25
        ),),
        alignment: Alignment(-0.70,-0.40),),

            Padding(
              padding: const EdgeInsets.only(top:10,left: 20),
              child: Row(
                children: [
                  Icon(Icons.watch_later,color: Colors.white,),
                  SizedBox(width: 7,),
                  Text('05:00 AM',style: TextStyle(
                  color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontStyle: FontStyle.italic,

                  ),),
                  SizedBox(width: 7,),
                  Text('|',style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontStyle: FontStyle.italic,
                  ),),
                  SizedBox(width: 7,),
                  Text('07 DEC 2019',style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontStyle: FontStyle.italic,

                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 7,top: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(

                    child:  FlatButton(onPressed: (){},
                    height: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('JOINED',
                      style: TextStyle(color: Colors.white,
                        fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),


                    ),
                    color: Color(0XFF7EDF46),),),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:  FlatButton(onPressed: (){},
                    height: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('DO KARMA',
                      style: TextStyle(color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold),

                    ),
                    color: Colors.white,),),
                  SizedBox(
                   width: 10,
                  ),
                ],

              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),

      ),
    );
  }
}

