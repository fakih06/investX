import 'package:intl/intl.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class BudgetModel {
  final int id;
  // final String email;
  final String name;
  final String bunga;
  final String dateTime;
  final String image;
  final bool isSender;
  final String totalbunga;
  BudgetModel({
    required this.id,
    // required this.email,
    required this.name,
    required this.bunga,
    required this.dateTime,
    required this.image,
    required this.isSender,
    required this.totalbunga,
  });
}

final List<BudgetModel> usersList = [
  BudgetModel(
    bunga: "7.5%",
    name: "1.000.000",
    id: 1,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    // email: "email@gmail.com",
    totalbunga: "783.000",
  ),
  BudgetModel(
    bunga: "6.5%",
    name: "500.000",
    id: 2,
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    // email: "email@gmail.com",
    totalbunga: "599.000",
  ),
  BudgetModel(
    id: 3,
    bunga: "2.5%",
    name: "250.000",
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    // email: "email@gmail.com",
    totalbunga: "312.000",
  ),
];

final List<BudgetModel> usersTransactions =
    usersList.where((element) => element.isSender).toList();

final List<BudgetModel> usersRequests =
    usersList.where((element) => element.isSender).toList();

final List<String> imagesList = [
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
];
