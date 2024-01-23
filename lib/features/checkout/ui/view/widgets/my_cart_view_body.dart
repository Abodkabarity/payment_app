import 'package:flutter/material.dart';
import 'package:payment_app/core/style.dart';
import 'package:payment_app/features/checkout/ui/view/payment_details.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/cart_info_item.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/payment_method.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/payment_method_item.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/total_price_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Image.asset("assets/images/basket_image.png"),
            ),
            const SizedBox(
              height: 25,
            ),
            const OrderInfoItem(
              title: 'Order Subtotal',
              value: '\$42.97 ',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Discount',
              value: '\$0 ',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Shipping',
              value: '\$8 ',
            ),
            const Divider(
              thickness: 2,
              height: 34,
              color: Color(0xFFC6C6C6),
            ),
            const TotalPrice(title: "Total", value: "\$50.97"),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    builder: (context) => const PaymentMethodsButtonSheet());
              },
              title: 'Complete Payment',
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodsButtonSheet extends StatelessWidget {
  const PaymentMethodsButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethod(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(onTap: () {}, title: 'Continue')
        ],
      ),
    );
  }
}
