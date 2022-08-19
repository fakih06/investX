import 'package:invest_mobile_app/pages/screens/auth/screens/forget_password_screen.dart';
import 'package:invest_mobile_app/pages/screens/auth/screens/register_screen.dart';
import 'package:invest_mobile_app/pages/screens/e-wallet_layout/e-wallet_layout_screen.dart';
import 'package:invest_mobile_app/pages/widgets/custom_elevated_button.dart';
import 'package:invest_mobile_app/pages/widgets/custom_textField.dart';
import 'package:invest_mobile_app/styles/constant.dart';
import 'package:invest_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Login and start transfering",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 32),
                ),
                SizedBox(height: 70),
                CustomTextField(
                  title: "Email",
                  hint: "Enter your email",
                  textEditingController: _emailController,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextField(
                      title: "Password",
                      hint: "Enter your password",
                      textEditingController: _passwordController,
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () => Get.to(() => ForgetPasswordScreen()),
                      child: Text(
                        "Forget password?",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  width: SizeConfig.screenWidth * 0.75,
                  child: CustomElevatedButton(
                    label: "Login",
                    color: HexColor("#92A3FD"),
                    onPressed: () => Get.off(() => investLayoutScreen()),
                  ),
                ),
                SizedBox(height: 7),
                TextButton(
                  onPressed: () => Get.off(() => RegisterScreen()),
                  child: Text(
                    "Create a new account",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
