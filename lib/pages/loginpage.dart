import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(height:50),
                // logo
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                  ),
                ),

                //slogan
                SizedBox(height: 25,),
                Text('Discover a new Path', style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                ),

                SizedBox(height: 25,),

                //email or username input box
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',

                    ),
                  ),
                ),


                //password input box
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',

                    ),
                  ),
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?'),
                  ],
                ),

                //sign in button
                SizedBox(height: 50,), //for spacing
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext){return HomePage();},),);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text('Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                //or continue with
                Row(
                  children: [
                    Expanded(child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Or Continue with',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Expanded(child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),),
                  ],
                ),

                SizedBox(height: 20),

                //social media sign in options

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12.0),
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white),

                      ),
                      child: Image.asset('lib/images/google.png'),
                    ),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white),

                      ),
                      child: Image.asset('lib/images/facebook.png'),
                    ),Container(
                      padding: EdgeInsets.all(12.0),
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white),

                      ),
                      child: Image.asset('lib/images/apple.png'),
                    )

                  ],
                ),

                SizedBox(height: 20),

                //not a member? Register Now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?', style: TextStyle(
                      color: Colors.grey[800],)),
                    SizedBox(width: 5,),
                    Text('Register now',
                      style: TextStyle(
                        color: Colors.blue[800],),)
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
