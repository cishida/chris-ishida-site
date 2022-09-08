import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  void scrollToContact() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }
}
