import 'package:diabetes/helper/show-snack-bar.dart';
import 'package:diabetes/page/Home.dart';
import 'package:diabetes/views/register.dart';
import 'package:diabetes/widgets/custom_button.dart';
import 'package:diabetes/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/bottom_nav_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email;
  String? passWord;
  bool isPassword = true;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Center(
                      child: Text(
                    'تسـجـيل الدخــول',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'رقم التلفون /او الايميل',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(),
                  CustomTextField(
                    hint: 'ادخل رقم التلفون او الايميل ',
                    prefixIcon: Icons.person,
                    onChange: (data) {
                      email = data;
                    },
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'كلمه السر',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(),
                  CustomTextField(
                    hint: 'ادخل الرقم السري الخاص بيك',
                    prefixIcon:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    obscure: true,
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    onChange: (data) {
                      passWord = data;
                    },
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'هل نسيت كلمه السر ؟',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    text: 'تسجيل الدخول',
                    color: Colors.black,
                    textcolor: Colors.white,
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isLoading = true;
                        });

                        try {
                          await loginUser();
                          Navigator.pushNamed(context, Home.id,
                              arguments: email);
                        } on FirebaseAuthException catch (ex) {
                          if (ex.code == 'user-not-found') {
                            showSnackBar(context, 'user not found');
                          } else if (ex.code == 'wrong-password') {
                            showSnackBar(context, 'wrong password');
                          } else {
                            showSnackBar(context, 'there was an error');
                          }
                        } catch (ex) {
                          print(ex);
                          showSnackBar(context, 'there was an error');
                        } finally {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Center(
                    child: Text(
                      'او',
                    ),
                  ),
                  CustomButton(
                    text: 'تسجيل عن طريق',
                    icon: FontAwesomeIcons.google,
                    textcolor: const Color(0xff4B5768),
                    color: const Color(0xffE4E7EB),
                  ),
                  const SizedBox(
                    height: 127,
                  ),
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: const Text(
                      'انشاء حساب جديد',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: passWord!);
  }
}
