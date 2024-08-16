
import 'package:beatnik/common/widgets/login_signup/FormDivider.dart';
import 'package:beatnik/common/widgets/login_signup/SocialButtons.dart';
import 'package:beatnik/features/authentication/screens/Register/widgets/BeatnikSignUpForm.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
class BeatnikTermAndConditionCheckbox extends StatelessWidget {
  const BeatnikTermAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
                value: true, onChanged: (value) {})),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${BeatnikTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: ' ${BeatnikTexts.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                  color: dark
                      ? BeatnikColors.white
                      : BeatnikColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? BeatnikColors.white
                      : BeatnikColors.primary)),
          TextSpan(
              text: '${BeatnikTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: ' ${BeatnikTexts.termsOfUse}',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                color: dark
                    ? BeatnikColors.white
                    : BeatnikColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? BeatnikColors.white
                    : BeatnikColors.primary,
              )),
        ]))
      ],
    );
  }
}
