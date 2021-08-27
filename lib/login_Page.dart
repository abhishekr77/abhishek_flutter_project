import 'package:flutter/material.dart';
import 'API.dart';


class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _password = true;
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  callLoginApi() {
    final service = ApiServices();

    service.apiCallLogin(
      {
        "email": emailText.text,
        "password": passwordText.text,
      },
    ).then((value){
      if(value.error != null){
        print("get data >>>>>> " + value.error!);
      }else{
        print(value.token!);
        Navigator.pushNamed(context, 'karmaD');
      }
    });

  }
  bool passVis=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white ,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0XFFFF7E00),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top:10),
                      child: Image.asset('images/logo.jpg',height: 200 ,width: 1200,scale: 3,),
                    ),
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        controller: emailText,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color(0xFFe7edeb),
                          hintText: "Phone Number",
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: passVis,
                        controller: passwordText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: _password?Icon(Icons.visibility_off,color: Colors.grey,
                            ):Icon(Icons.visibility,color: Colors.black,),
                            onPressed: (){
                              setState(() {
                                _password=!_password;
                                passVis=!passVis;
                              });
                            },

                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color(0xFFe7edeb),
                          hintText: "Password",

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text('Forgot Password',
                            style: TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          style: TextButton.styleFrom(
                            primary: Colors.orange,
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                      ),
                      SizedBox(height: 100,),
                      FlatButton(onPressed: (){
                        callLoginApi();
                      },
                        height: 50,
                        minWidth: 150,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Login',
                          style: TextStyle(color: Colors.white,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,),

                        ),
                        color: Color(0Xff7EE146),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a member yet?',style:
                          TextStyle(
                            fontSize: 20,
                          ),),
                          TextButton(
                            child: Text('Click Here',
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: () {
                              print('Pressed');
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ),

          ],
        )
    );
  }
}
