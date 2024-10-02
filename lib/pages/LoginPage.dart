import 'package:flutter/material.dart';
import 'package:tpone/pages/RegisterPage.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();  // Form key for validation
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  get isPortrait => MediaQuery.of(context).orientation == Orientation.portrait;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black,Colors.black54,Colors.white,Colors.black54,Colors.black87,Colors.black,Colors.black,Colors.black ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: SingleChildScrollView (
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        isPortrait ? SizedBox(height: 80) : SizedBox(height: 20),
                        // Logo
                        Image.asset(
                          'assets/images/logo.png',
                          width: 200,
                          height: 130,
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                          ),

                          // Set your desired background color here
                          child: Padding(
                            padding: const EdgeInsets.all(10.0), // Adjust the padding as needed
                            child: Text(
                              "Welcome Back To ME",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),

                        // Email TextFormField
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 20),

                        // Password TextFormField
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Add your function or navigation logic here
                                    print("Forget Password tapped!");
                                    // For example, you can navigate to the sign-up page
                                    // Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(color: Colors.white60,fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                          ],
                        ),

                        SizedBox(height: 10),

                        // Login Button
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                            }
                          },
                          style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.white)),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                        //SizedBox(height: 100),

                      ],
                    ),
                  ),
                  isPortrait ? SizedBox(height: 100) : SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("I Don't Have An Account");
                        },
                        child: Text(
                          "I Don't Have An Account? ",
                          style: TextStyle(color: Colors.white60,fontSize: 12),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ) ,
          ),
        ),
        ),
      ),
    );
  }
}
