import 'package:flutter/material.dart';
import 'package:vega_login/main.dart';
import 'package:vega_login/singup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 45),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSignUp()),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[800],
                    ),
                    SizedBox(width: 2),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontFamily: 'Shippori',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Shippori',
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Email address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green.shade800),
                  ),
                  labelStyle: TextStyle(color: Colors.green.shade800),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye_sharp,
                      color: Colors.green.shade800),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green.shade800),
                  ),
                  labelStyle: TextStyle(color: Colors.green.shade800),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.green.shade800,
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 14,
                      fontFamily: 'Shippori',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 135),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: 14,
                        fontFamily: 'Shippori',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SingUp(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Center(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Shippori',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green.shade800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Login with',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green.shade400,
                        fontFamily: 'Shippori',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fb.png',
                    height: 50,
                  ),
                  SizedBox(width: 40),
                  Image.asset(
                    'assets/images/google.png',
                    height: 50,
                  ),
                  SizedBox(width: 40),
                  Image.asset(
                    'assets/images/apple.png',
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      fontFamily: 'Shippori',
                      fontSize: 18,
                      color: Colors.green.shade400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingUp(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Shippori',
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
