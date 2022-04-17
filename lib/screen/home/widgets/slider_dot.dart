import 'package:flutter/material.dart';

import '../../../constants.dart';

class SliderDot extends StatelessWidget {
  const SliderDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 6,
              height: 30,
              decoration: BoxDecoration(
                  color: mPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 6,
              height: 15,
              decoration: BoxDecoration(
                  color: mPrimaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 6,
              height: 15,
              decoration: BoxDecoration(
                  color: mPrimaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
            )
          ]),
        ),
      ],
    );
  }
}
