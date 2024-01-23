import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/payment_method.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/payment_method_item.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [PaymentMethod()]);
  }
}
