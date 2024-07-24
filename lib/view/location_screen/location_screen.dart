import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJTvjVwVN7JdAbJZj3CZF2Fp4K6-APs6JSY8FlqU2-OSdzOegXOkfiRMJF-CwgVejYf6Y&usqp=CAU"),
        fit: BoxFit.cover)),
      ),
    );
  }
}