import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';

class QuantityCountButton extends StatefulWidget {
  const QuantityCountButton({super.key});

  @override
  State<QuantityCountButton> createState() => _QuantityCountButtonState();
}

class _QuantityCountButtonState extends State<QuantityCountButton> {
  int quantityCount = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 25,
            height: 25,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: AppColors.themeColor,
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                onPressed: () {
                  if(quantityCount < 1){
                    quantityCount = 1;

                  }
                  quantityCount--;
                  setState(() {});


                },
                child: const Icon(Icons.remove, size:  16,)),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            '${quantityCount + 1}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            width: 4,
          ),
          SizedBox(
            width: 25,
            height: 25,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: AppColors.themeColor,
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                onPressed: () {
                  if(quantityCount > 20){
                    quantityCount = 20;
                  }
                  quantityCount++;
                  setState(() {});
                },
                child: const Text(
                  '+',
                )),
          ),
        ],
      ),
    );
  }
}
