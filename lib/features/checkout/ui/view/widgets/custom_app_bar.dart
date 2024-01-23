import 'package:flutter/material.dart';

import '../../../../../core/style.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    leading: const Center(
      child: Icon(
        Icons.arrow_back_outlined,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    backgroundColor: Colors.transparent,
  );
}
