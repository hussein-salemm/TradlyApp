import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';

import '../../../../../core/models/product_model.dart';
import '../../../../../core/widgets/custom_botton.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
    required this.title,
    required this.model,
    this.onTap,
  });

  final String title;
  final ProductModel model;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(flex: 1),
                CustomButton(
                  height: 30,
                  width: 120,
                  fontSize: 15,
                  bottomTitle: 'See All',
                  onTap: onTap,
                ),
              ],
            ),
          ),
          ListView.builder(
              itemCount: 20,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: ProductCard(model: model),
                );
              })
        ],
      ),
    );
  }
}
