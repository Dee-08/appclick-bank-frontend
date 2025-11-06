import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/auth_provider.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var auth = context.read<AuthProvider>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            50.getHeightWhiteSpacing,
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.arrow_back_ios_rounded, color: AppColor.dark),
              ),
            ),
            20.getHeightWhiteSpacing,
            SizedBox(
              width: context.screenSize.width,
              child: Text(
                "Sign Up",
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            20.getHeightWhiteSpacing,
            Form(
              key: formKey,
              child: Column(
                spacing: 10,
                children: [
                  AppTextfield(
                    controller: auth.nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name is required";
                      } else if (value.length < 3) {
                        return "Name must not be less than 3 characters";
                      } else {
                        return null;
                      }
                    },
                    label: "Full Name",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.user),
                      ),
                      hintText: "John Doe",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    controller: auth.phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone Number is required";
                      } else if (value.length != 14) {
                        return "Phone number must be in +234 format";
                      } else {
                        return null;
                      }
                    },
                    label: "Phone Number",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.phone),
                      ),
                      hintText: "+2347032522952",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      } else if (!value.contains("@") || !value.contains(".")) {
                        return "Enter Valid Email";
                      } else {
                        return null;
                      }
                    },
                    controller: auth.emailController,
                    label: "Email Address",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.email),
                      ),
                      hintText: "example@example.com",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    controller: auth.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      } else if (value.length < 6) {
                        return "Password must not be less than 6 characters";
                      } else {
                        return null;
                      }
                    },
                    label: "Password",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.lock),
                      ),
                      hintText: "••••••••",
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ),
                  30.getHeightWhiteSpacing,
                  Consumer<AuthProvider>(
                    builder: (context, auth, _) {
                      return auth.isLoading
                          ? Center(child: CircularProgressIndicator())
                          : AppButtons(
                              text: "Sign Up",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  auth.register(context);
                                }
                              },
                            );
                    },
                  ),

                  20.getHeightWhiteSpacing,
                  SizedBox(
                    width: context.screenSize.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: context.textTheme.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "login");
                          },
                          child: Text(
                            "Sign In",
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
