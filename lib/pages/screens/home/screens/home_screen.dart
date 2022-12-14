import 'package:invest_mobile_app/pages/screens/home/screens/requests_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invest_mobile_app/models/user_model.dart';

import 'package:invest_mobile_app/models/history_model.dart';
import 'package:invest_mobile_app/pages/screens/home/widgets/build_home_user_item.dart';
import 'package:invest_mobile_app/pages/widgets/user_image.dart';
import 'package:invest_mobile_app/styles/Iconly-Broken_icons.dart';
import 'package:invest_mobile_app/styles/constant.dart';
import 'package:invest_mobile_app/styles/size_config.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: HexColor("#92A3FD"),
                  width: SizeConfig.screenWidth,
                  height: 270,
                ),
                Container(
                  height: 270,
                  width: SizeConfig.screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dashboard",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                            UserImage(
                              imagePath: mainUser.image,
                              raduis: 40,
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        Text(
                          mainUser.name,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Total Balance",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\Rp ${mainUser.totalAmount}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 40,
                                  ),
                            ),
                            InkWell(
                              onTap: () => Get.to(() => RequestsScreen()),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    child: Icon(
                                      Iconly_Broken.Notification,
                                      color: Colors.white,
                                      size: 33,
                                    ),
                                  ),
                                  Container(
                                    width: 9,
                                    height: 9,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Transactions",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "View all",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: historyList.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildHomeUserItem(user: historyList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
