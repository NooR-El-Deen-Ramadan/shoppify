import 'package:flutter/material.dart';
import 'package:shoppify/core/functions/navigation.dart';
import 'package:shoppify/core/functions/show_alert_dialog.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/core/utils/app_fonts.dart';
import 'package:shoppify/core/widgets/custom_text_field.dart';
import 'package:shoppify/core/widgets/main_button.dart';
import 'package:shoppify/features/authentication/register/register_screen.dart';
import 'package:shoppify/features/home/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passweordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
          ),
        ),

        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.whiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(height: 50),

                          Text(
                            "Welcome Back",
                            style: AppFontStyles.getSize30(
                              fontColor: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Sign In to shoppify",
                            style: AppFontStyles.getSize18(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 60),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: AppFontStyles.getSize18(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          CustomTextField(
                            isPassword: false,
                            controller: emailController,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "Invalid Email please enter a valid Email";
                              } else if (!value!.contains('@')) {
                                return 'Email must contain @';
                              } else {
                                return null;
                              }
                            },
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style: AppFontStyles.getSize18(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          CustomTextField(
                            isPassword: true,
                            obsecureText: true,
                            controller:passweordController ,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "please , Enter a Valid Password";
                              } else if (value!.length < 6) {
                                return "Password must be atleast 6 characters";
                              } else {
                                return null;
                              }
                            },
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: AppColors.primaryColor,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: AppColors.darkColor,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          MainButton(
                            width: double.infinity,
                            buttonColor: AppColors.primaryColor,
                            textColor: AppColors.whiteColor,
                            text: "Login",
                            onPressed: () async {
                              if (formKey.currentState?.validate() ?? false) {
                                await showAlertDialogBox(
                                  context: context,
                                  title: "Welcome",
                                  text: "Account created successfully ",
                                );
                                pushWithReplacment(
                                  // ignore: use_build_context_synchronously
                                  context: context,
                                  screen: HomeScreen(),
                                );
                              }
                            },
                          ),

                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: AppColors.darkColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextButton(
                               
                                onPressed: () {
                                  pushWithReplacment(
                                    context: context,
                                    screen: RegisterScreen(),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: 
                                  
                                  TextStyle(

                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
