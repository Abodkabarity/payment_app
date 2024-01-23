import 'package:flutter/material.dart';
import 'package:payment_app/core/style.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/my_cart_view_body.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const MyCartViewBody()),
    );
  }
}
