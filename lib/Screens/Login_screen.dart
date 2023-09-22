<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'package:cubesharp/component/TextField.dart';
import 'package:flutter/material.dart';
import 'package:cubesharp/Screens/signup.dart';
import 'package:cubesharp/component/TextField.dart';
import 'package:cubesharp/Screens/Homescreen.dart';

>>>>>>> ce047ab (Initial commit)

class login_screen extends StatefulWidget {
  const login_screen({Key? key});

  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
<<<<<<< HEAD
=======
  final usernameController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
>>>>>>> ce047ab (Initial commit)
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
<<<<<<< HEAD
        body: Column(
          children: [
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              color: Colors.deepOrangeAccent,
              padding: const EdgeInsets.only(top: 150, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: screenHeight * 0.572,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 15, right: 8),
                    child: Container(
                      height: 70,
                      width: screenWidth * 0.9,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 60,
                      width: screenWidth * 0.5,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
=======
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                color: Colors.deepOrangeAccent,
                padding: const EdgeInsets.only(top: 150, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: screenHeight * 0.572,
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 15, right: 8),
                      child: SingleChildScrollView(
                        child: Container(
                          height: 70,
                          width: screenWidth * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.email)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50)
                                )
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                  height: screenHeight*0.5, // Adjust the height as needed
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Padding(
                                      padding:  EdgeInsets.only(top: screenHeight*0.02,left: screenWidth*0.1),
                                      child: Text("Enter Password",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black87),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),

                                      child:MyTextField(controller:passwordController, hintText: 'Password', obscureText: false,),

                                    ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Forgot Password?',
                                              style: TextStyle(color:Colors.red[600]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    SizedBox(height: 50,),
                                    InkWell(
                                      onTap: (){
                                        if(passwordController.text=='test@78563'){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Home_Screen(),
                                            ),
                                          );
                                        }else{
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              closeIconColor: Colors.cyan,
                                              content: Text('Incorrect password. Try again.'),
                                            ),
                                          );
                                        }
                                      },
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: screenWidth*0.25),
                                        child: Container(
                                          height: 60,
                                          width: screenWidth * 0.5,
                                          decoration: const BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(50),
                                              topRight: Radius.circular(50),
                                              bottomRight: Radius.circular(50),
                                              bottomLeft: Radius.circular(50),
                                            ),
                                          ),

                                          child: const Center(
                                            child: Text(
                                              "Verify Password",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],)

                                );
                              },
                            );
                          },
                          child: Container(
                            height: 60,
                            width: screenWidth * 0.5,
                            decoration: const BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )

                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap:() => Navigator.of(context).pushReplacement(_fadeInPageRoute()),
                          child: Text(
                            'Register now',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ],
          ),
>>>>>>> ce047ab (Initial commit)
        ),
      ),
    );
  }
<<<<<<< HEAD
}


=======


}
PageRouteBuilder _fadeInPageRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>sign_up(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      var tween = Tween(begin: begin, end: end);
      var opacityAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: opacityAnimation,
        child: child,
      );
    },
  );
}
>>>>>>> ce047ab (Initial commit)
