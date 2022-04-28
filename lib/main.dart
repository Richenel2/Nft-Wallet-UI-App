import 'package:flutter/material.dart';
import 'package:nft_wallet/constant/theme.dart';
import 'package:nft_wallet/screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.dark,
      home: const Loading(),
    );
  }
}
