import 'package:flutter/material.dart';
import 'package:tradly_app/features/store_feature/presentation/views/created_store_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_field_input_chip.dart';
import 'custom_text_form_field.dart';

class CreateStoreDetailsSection extends StatefulWidget {
  const CreateStoreDetailsSection({
    super.key,
  });

  @override
  State<CreateStoreDetailsSection> createState() =>
      _CreateStoreDetailsSectionState();
}

class _CreateStoreDetailsSectionState extends State<CreateStoreDetailsSection> {
  TextEditingController controller = TextEditingController();
  final List<TextEditingController> textControllers = List.generate(
    8,
    (index) => TextEditingController(),
  );
  final List<String> textFormFiledLabels = [
    'Store Name',
    'Store Web Address',
    'Store Description',
    'Store Type',
    'Address',
    'City',
    'Country',
    'Courier Name',
  ];

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 220),
      child: Container(
        color: AssetsColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ...List.generate(
                8,
                (index) {
                  return CustomTextFormField(
                    labelText: textFormFiledLabels[index],
                    textFormController: textControllers[index],
                  );
                },
              ),
              CustomTextFieldInputChip(
                textEditingController: controller,
                labelText: 'Tagline',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomButton(
                  onPressed: () {
                    /// this for loop to test the controller
                    for (int i = 0; i < textControllers.length; i++) {
                      print(
                          'Field ${i + 1}: ${textControllers[i].text.trim()}');
                    }
                    print(controller.text);
                    Navigator.pushNamed(
                      context,
                      CreatedStoreScreen.routeName,
                    );
                  },
                  text: 'Create',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
