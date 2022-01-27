import 'package:flutter/material.dart';

PreferredSizeWidget appBar() => AppBar(

  title: const Text(
    'Калькулятор пиццы',
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.wb_sunny_outlined),
      tooltip: 'Дневная тема',
      onPressed: () {}),
    IconButton(
      icon: const Icon(Icons.nightlight_round),
    tooltip: 'Ночная тема',
    onPressed: () {}
        ),
       ],
    );