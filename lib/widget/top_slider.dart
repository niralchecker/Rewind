import 'package:flutter/material.dart';

class TopSlider extends StatelessWidget {
  const TopSlider({
    super.key,
    this.firstFilled = false,
    this.secondFilled = false,
    this.thirdFilled = false,
    this.forthFilled = false,
    this.fifthFilled = false,
  });

  final bool firstFilled;
  final bool secondFilled;
  final bool thirdFilled;
  final bool forthFilled;
  final bool fifthFilled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 5,
            width: 35,
            decoration: BoxDecoration(
                color: firstFilled ? Colors.black : Colors.grey,
                border: Border.all(
                  color: firstFilled ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 5,
            width: 35,
            decoration: BoxDecoration(
                color: secondFilled ? Colors.black : Colors.grey,
                border: Border.all(
                  color: secondFilled ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 5,
            width: 35,
            decoration: BoxDecoration(
                color: thirdFilled ? Colors.black : Colors.grey,
                border: Border.all(
                  color: thirdFilled ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 5,
            width: 35,
            decoration: BoxDecoration(
                color: forthFilled ? Colors.black : Colors.grey,
                border: Border.all(
                  color: forthFilled ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 5,
            width: 35,
            decoration: BoxDecoration(
                color: fifthFilled ? Colors.black : Colors.grey,
                border: Border.all(
                  color: fifthFilled ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
          ),
        ],
      ),
    );
  }
}
