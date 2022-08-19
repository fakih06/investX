import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invest_mobile_app/models/user_model.dart';
import 'package:invest_mobile_app/models/history_model.dart';
import 'package:invest_mobile_app/pages/widgets/user_image.dart';
import 'package:invest_mobile_app/styles/constant.dart';

class BuildHomeUserItem extends StatelessWidget {
  final HistoryModel user;
  const BuildHomeUserItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user.isSender) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                UserImage(imagePath: k_imagePath, raduis: 50),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Image.asset("assets/images/send_icon.png",
                      color: k_yellow),
                ),
              ],
            ),
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
                    "${user.dateTime}",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),
            Text(
              "${user.amount}",
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                UserImage(imagePath: k_imagePath, raduis: 50),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Image.asset("assets/images/request_icon.png",
                      color: HexColor("#92A3FD")),
                ),
              ],
            ),
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
                    "${user.dateTime}",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),
            Text(
              "+${user.amount}",
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
      );
    }
  }
}
