import 'package:demo_cubit/util/colors.dart';
import 'package:demo_cubit/widget/buttom.dart';
import 'package:demo_cubit/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'CarterOne',
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 40,
                            height: 30,
                            child: Image.asset(
                              'assets/icons/english.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18, top: 190),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(top: 50, bottom: 40),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Username',
                            style: TextStyle(fontSize: 18),
                          ),
                          TextFieldCustom(
                            prefixIcon: const Icon(Icons.person),
                            controller: username,
                            hintText: 'Enter username',
                            obscureText: false,
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'Password',
                            style: TextStyle(fontSize: 18),
                          ),
                          TextFieldCustom(
                            prefixIcon: const Icon(Icons.lock),
                            controller: password,
                            hintText: 'Enter password',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_off),
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              GestureDetector(
                                child:
                                    const Icon(Icons.check_box_outline_blank),
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Go To Register',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.texWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 40),
              child: ButtomCustom(
                bgColors: AppColor.buttom,
                text: 'Login',
                textColors: AppColor.texWhite,
              ),
            ),
            const SizedBox(height: 65),
            Text(
              'Solution provide by blue Technology',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.texWhite,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          'Version 2.0.1',
          style: TextStyle(
              color: AppColor.texWhite,
              fontWeight: FontWeight.w600,
              fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
