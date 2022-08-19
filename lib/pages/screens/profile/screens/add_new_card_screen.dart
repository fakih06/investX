import 'package:invest_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:invest_mobile_app/pages/widgets/custom_textField.dart';
import 'package:invest_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key}) : super(key: key);

  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expairyDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: k_black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Add Card",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomTextField(
                    title: "Nama",
                    hint: "Enter your name",
                    textEditingController: _cardNameController,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: "Nomor Rekening",
                    hint: "Enter Rekening number",
                    textEditingController: _cardNumberController,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          title: "Bank",
                          hint: "BRI/Mandiri/BCA/BNI",
                          textEditingController: _cvvController,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtonNavigationBar(
        color: HexColor("#92A3FD"),
        label: "Submit Card",
        onPress: () {},
      ),
    );
  }
}
