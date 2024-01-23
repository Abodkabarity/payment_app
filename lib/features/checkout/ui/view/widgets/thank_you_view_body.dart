import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/ui/view/widgets/thank_you_shape.dart';

import 'custom_check_icon.dart';
import 'custom_dash_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouShape(),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2 + 20,
              left: 28,
              right: 28,
              child: const CustomDashLine(),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const CustomCheckIcon(),
          ],
        ),
      ),
    );
  }
}
