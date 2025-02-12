import 'package:doc_easy_app/core/helpers/spacing.dart';
import 'package:doc_easy_app/core/theming/colors_manager.dart';
import 'package:doc_easy_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasDigits;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  const PasswordValidations(
      {super.key,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasDigits,
      required this.hasSpecialCharacters,
      required this.hasMinLength});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least 1 digit', hasDigits),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
