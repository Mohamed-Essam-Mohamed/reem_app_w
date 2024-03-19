import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reem_app/src/feature/auth/login/login_view_model.dart';
import 'package:reem_app/src/feature/auth/register/register_screen.dart';
import 'package:reem_app/src/feature/auth/widget/my_divider.dart';
import 'package:reem_app/src/feature/auth/widget/sign.dart';
import 'package:reem_app/src/feature/auth/widget/sign_with.dart';
import 'package:reem_app/src/utils/app_text_style.dart';
import 'package:reem_app/src/widget/custom_material_button.dart';
import 'package:reem_app/src/widget/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const String routeName = "LoginScreen";
  LoginViewModel viewModel = LoginViewModel();
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => widget.viewModel,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'SIGN IN',
                  style: AppTextStyle.textStyle24,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  ' HI Welcome Back.',
                  style: AppTextStyle.textStyle18,
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  label: 'Email',
                  controller: widget.viewModel.emailController,
                  myValidator: (text) {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  label: 'Password',
                  controller: widget.viewModel.passwordController,
                  myValidator: (text) {},
                  obscureText: true,
                  isPassword: true,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    child: Text(
                      'Forget password',
                      style: AppTextStyle.textStyle18,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomMaterialButton(title: 'Sign In', press: () {}),
                SizedBox(
                  height: 20.h,
                ),
                MyDivider(title: 'or sign in with'),
                SizedBox(
                  height: 20.h,
                ),
                SignWith(inkWillFacebook: () {}, inkWillgoogle: () {}),
                SizedBox(
                  height: 20.h,
                ),
                Sign(
                  title1: "Don't have an account?",
                  title2: 'Sign Up',
                  press: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
