import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/models/product_model.dart';
import '../../../../../core/utils/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              model.image,
              fit: BoxFit.fill,
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Text(
                model.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: [
                const Spacer(flex: 1),
                const CircleAvatar(
                  backgroundColor: AssetsColors.kSecondaryColor,
                  radius: 13,
                  child: Text(
                    'T',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Text(model.store,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45)),
                const Spacer(flex: 5),
                Text(
                  '\$ ${model.price}',
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: AssetsColors.kSecondaryColor,
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
