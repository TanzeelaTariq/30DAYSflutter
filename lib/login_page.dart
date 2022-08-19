import 'package:catalogapp/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/login.jpg',
              fit: BoxFit.cover,
              height: 180,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome$name',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(
                          context,
                          MyRoutes.homeRoutes,
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        alignment: Alignment.center,
                        width: changeButton ? 50 : 150,
                        height: 50,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes.homeRoutes,
                  //     );
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 40),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
