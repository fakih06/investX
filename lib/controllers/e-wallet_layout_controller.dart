import 'package:invest_mobile_app/pages/screens/budget/screens/budget_screen.dart';
import 'package:invest_mobile_app/pages/screens/profile/screens/profile_screen.dart';
import 'package:invest_mobile_app/pages/screens/home/screens/home_screen.dart';
import 'package:invest_mobile_app/pages/screens/transactions/screens/transactions_screen.dart';
import 'package:invest_mobile_app/styles/Iconly-Broken_icons.dart';
import 'package:flutter/material.dart';

class _BoardingItem {
  final String label;
  final Icon icon;
  final Widget screen;

  _BoardingItem({
    required this.label,
    required this.icon,
    required this.screen,
  });
}

class investLayoutController {
  static int currentIndex = 0;
  static List<_BoardingItem> item = [
    _BoardingItem(
        label: "Home", icon: Icon(Iconly_Broken.Home), screen: HomeScreen()),
    _BoardingItem(
        label: "Transactions",
        icon: Icon(Iconly_Broken.Wallet),
        screen: TransactionsScreen()),
    _BoardingItem(
        label: "Budget",
        icon: Icon(Iconly_Broken.Graph),
        screen: ContactsScreen()),
    _BoardingItem(
        label: "Profile",
        icon: Icon(Iconly_Broken.User),
        screen: ProfileScreen()),
  ];

  static void changeIndex(int newIndex) {
    currentIndex = newIndex;
  }
}
