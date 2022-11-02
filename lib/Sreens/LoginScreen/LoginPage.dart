import 'package:flutter/material.dart';

import '../BottomNaviagtion/BottomNavigation.dart';
import '../Observation_sollution/Observation_sollution.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.width / 1.2,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "SCHOOL SURVEY",// ! ETH SCHOOL SURVEY
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "KHORDHA DISTRICT SCHOOLS", //! World Bank School Mapping and Analysis
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ],
            ),
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 250,
            child: Card(
              elevation: 3.0,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        // border: InputBorder.none,
                        hintText: "  Uername / Email Id",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        if (value == "") {
                          return 'Username Can not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(10),
                    
                    child: TextFormField(
                      obscureText: _hidePassword,
                      decoration: InputDecoration(
                          hintText: "  Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          // border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(top: 15.0),
                            child: Text(
                              textAlign: TextAlign.end,
                              "Show",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Can not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ))
      ]),
    );
  }
}
