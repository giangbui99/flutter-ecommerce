import 'package:flutter_ecommerce/presentation/components/home/header/header.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_banner/top_banner.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_bar/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              Header(),
              TopBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
