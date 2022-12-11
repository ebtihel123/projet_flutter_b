import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool notVisible = true;
  String coverUrl =
      "https://img.freepik.com/free-vector/two-hands-holding-phones-with-messages-speech-bubbles-people-chatting-through-mobile-app-flat-vector-illustration-communication-network-social-media-concept-banner-landing-web-page_74855-25390.jpg?w=1380&t=st=1669396019~exp=1669396619~hmac=9b5b1a52cea4ff2b70a6774205160af3fed96dada1159cf40fc386920847ac3c";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Image.network(coverUrl),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Phone number',
                style: Theme.of(context).textTheme.headline6,
              ),
              alignment: Alignment.center,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(width: 2, color: Colors.lightBlue))),
                      ),
                    )),
              ],
            ),
            Container(
              child: Text(
                'Password',
                style: Theme.of(context).textTheme.headline6,
              ),
              alignment: Alignment.center,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: TextFormField(
                        obscureText: notVisible,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notVisible = !notVisible;
                                  });
                                },
                                icon: Icon(notVisible == true
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(width: 2, color: Colors.lightBlue))),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (() {
                    Navigator.pushNamed(context, "/users");
                  }),
                  child: Text(
                    "Forgot password !",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 55, right: 55),
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10)))),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 55, right: 55),
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lightGreen),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Create new account',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
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
