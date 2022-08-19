import 'package:invest_mobile_app/pages/screens/budget/screens/request_payment_screen.dart';
import 'package:invest_mobile_app/pages/screens/budget/screens/send_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invest_mobile_app/models/user_model.dart';

import 'package:invest_mobile_app/models/history_model.dart';
import 'package:invest_mobile_app/pages/widgets/user_image.dart';
import 'package:invest_mobile_app/styles/constant.dart';
import 'package:get/get.dart';

class BuildContactItem extends StatelessWidget {
  final BudgetModel user;
  const BuildContactItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Row(
          children: [
            // InkWell(
            //   onTap: () => Get.to(() => SendPaymentScreen(user: user)),
            //   child: Container(
            //     width: 42,
            //     height: 42,
            //     decoration: BoxDecoration(
            //         color: k_yellow, borderRadius: BorderRadius.circular(10)),
            //     child: Image.asset("assets/images/send_icon.png"),
            //   ),
            // ),
            SizedBox(width: 8),
            InkWell(
              onTap: () => Get.to(() => RequestPaymentScreen(user: user)),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    color: HexColor("#92A3FD"),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/images/eye.png",
                  // width: 10,
                  // height: 10,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
