import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class BeatnikHomeCategory extends StatelessWidget {
  const BeatnikHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return BeatnikVerticalImage(
              image: BeatnikImages.lightAppLogo,
              title: 'Shoes',
              onTap: () {},
            );
          }),
    );
  }
}