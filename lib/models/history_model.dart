import 'package:intl/intl.dart';

import 'package:invest_mobile_app/styles/constant.dart';

class HistoryModel {
  final int id;
  final String email;
  final String name;
  final String amount;
  final String dateTime;
  final String image;
  final bool isSender;
  final String totalAmount;
  HistoryModel({
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

final List<HistoryModel> historyList = [
  HistoryModel(
    amount: "-125.000",
    name: "Withdraw",
    id: 0,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "783",
  ),
  HistoryModel(
    amount: "350.000",
    name: "Deposit",
    id: 1,
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "599",
  ),
  HistoryModel(
    id: 2,
    amount: "-50.000",
    name: "Wirhdraw",
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "312",
  ),
  HistoryModel(
    id: 3,
    amount: "100.500",
    name: "Deposit",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "23412",
  ),
  HistoryModel(
    amount: "-100.500",
    name: "Withdraw",
    id: 4,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "1454",
  ),
  HistoryModel(
    id: 5,
    amount: "222.500",
    name: "Withdraw",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: "325",
  ),
];

final List<HistoryModel> historyTransactions =
    historyList.where((element) => element.isSender).toList();

final List<HistoryModel> historyRequests =
    historyList.where((element) => element.isSender).toList();

final HistoryModel mainUser = HistoryModel(
  amount: "0",
  dateTime: '',
  email: 'mainEmail@gmail.com',
  id: 0,
  image: k_imagePath,
  isSender: false,
  name: 'Ahmad Fakih',
  totalAmount: "3.000.000",
);
