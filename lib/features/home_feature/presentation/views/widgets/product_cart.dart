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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              model.image,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(model.name,
            textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black)),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: [
                const Spacer(flex: 1),
                SvgPicture.asset('assets/images/storeLogo.svg',
                    height: 30, width: 30),
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
