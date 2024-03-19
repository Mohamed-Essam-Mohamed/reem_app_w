import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:reem_app/src/feature/auth/login/login_screen.dart';
import 'package:reem_app/src/feature/auth/register/register_view_model.dart';
import 'package:reem_app/src/feature/auth/widget/my_divider.dart';
import 'package:reem_app/src/feature/auth/widget/sign.dart';
import 'package:reem_app/src/feature/auth/widget/sign_with.dart';
import 'package:reem_app/src/utils/app_colors.dart';
import 'package:reem_app/src/utils/app_text_style.dart';
import 'package:reem_app/src/widget/custom_material_button.dart';

import 'package:reem_app/src/widget/custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});
  static const String routeName = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterViewModel viewModel = RegisterViewModel();
  var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterViewModel>(
      create: (context) => viewModel,
      child: Scaffold(
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
                    'CREATE ACCOUNT',
                    style: AppTextStyle.textStyle24,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Fill your information below or register',
                    style: AppTextStyle.textStyle18,
                  ),
                  Text(
                    'with your social account.',
                    style: AppTextStyle.textStyle18,
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  CustomTextFormField(
                    label: 'Name',
                    controller: viewModel.nameController,
                    myValidator: (text) {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    label: 'Email',
                    controller: viewModel.emailController,
                    myValidator: (text) {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    label: 'Password',
                    controller: viewModel.passwordController,
                    myValidator: (text) {},
                    obscureText: true,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    label: 'Phone',
                    controller: viewModel.phoneController,
                    myValidator: (text) {},
                    isPhone: true,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomMaterialButton(title: 'Sign Up', press: () {}),
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
                    title1: "Already have an account?",
                    title2: ' Sign In',
                    press: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
