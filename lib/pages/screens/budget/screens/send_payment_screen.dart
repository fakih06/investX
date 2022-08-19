import 'package:invest_mobile_app/pages/screens/budget/widgets/custom_alert_sucess_payment.dart';
import 'package:invest_mobile_app/pages/screens/budget/widgets/payment_amount_textField.dart';
import 'package:invest_mobile_app/pages/screens/budget/widgets/payment_note_textField.dart';
import 'package:invest_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:invest_mobile_app/pages/widgets/user_image.dart';
import 'package:invest_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:invest_mobile_app/models/user_model.dart';
import 'package:invest_mobile_app/models/history_model.dart';
import 'package:get/get.dart';

class SendPaymentScreen extends StatelessWidget {
  final BudgetModel user;
  final TextEditingController _amountTextEditingController =
      TextEditingController();
  final TextEditingController _noteTextEditingController =
      TextEditingController();
  SendPaymentScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: k_black),
              onPressed: () => Get.back(),
            ),
            title: Text(
              "Send Money",
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  child: Row(
                    children: [
                      UserImage(imagePath: k_imagePath, raduis: 50),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${user.name}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 14),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "${user.bunga}",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: PaymentAmountTextField(
                    amount: "Rp.",
                    color: k_yellow,
                    textEditingController: _amountTextEditingController,
                    title: "Payment Amount",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: PaymentNoteTextField(
                    textEditingController: _noteTextEditingController,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CustomButtonNavigationBar(
            color: k_yellow,
            label: "Send Payment",
            imagePath: "assets/images/send_icon.png",
            onPress: () {
              showDialog(
                context: context,
                builder: (ctx) => CustomAlertSuccessPayment(
                    message: "The amount has been sent successfully!"),
              );
            },
          )),
    );
  }
}
