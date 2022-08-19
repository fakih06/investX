import 'package:intl/intl.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class UserModel {
  final int id;
  final String email;
  final String name;
  final String amount;
  final String dateTime;
  final String image;
  final bool isSender;
  final String totalAmount;
  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.amount,
    required this.dateTime,
    required this.image,
    required this.isSender,
    required this.totalAmount,
  });
}

final List<UserModel> usersList = [
  UserModel(
    amount: "-150.000",
    name: "Sara Ibrahim",
    id: 1,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "783.000",
  ),
  UserModel(
    amount: "430.500",
    name: "Mohammd Ibrahim",
    id: 2,
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "599.000",
  ),
  UserModel(
    id: 3,
    amount: "-720.500",
    name: "Ismail Jassim",
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "312.000",
  ),
  UserModel(
    id: 4,
    amount: "120.5000",
    name: "Tareeq Ziad",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "2.341.200",
  ),
  UserModel(
    amount: " -100.500",
    name: "Ali Mahmoud",
    id: 5,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "1.454.000",
  ),
  UserModel(
    id: 6,
    amount: "220.500",
    name: "Zaid Ahmed",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "325.000",
  ),
];

final List<UserModel> usersTransactions =
    usersList.where((element) => element.isSender).toList();

final List<UserModel> usersRequests =
    usersList.where((element) => element.isSender).toList();

final List<String> imagesList = [
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
];

final UserModel mainUser = UserModel(
  amount: "0",
  dateTime: '',
  email: 'mainEmail@gmail.com',
  id: 0,
  image: k_imagePath,
  isSender: false,
  name: 'Ahmad Fakih',
  totalAmount: "3.000.000",
);
