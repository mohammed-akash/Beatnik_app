import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class BeatnikHomeCategory extends StatelessWidget {
  const BeatnikHomeCategory({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'image': BeatnikImages.category1,
        'title': 'Tops',
      },
      {
        'image': BeatnikImages.category2,
        'title': 'Dresses',
      },
      {
        'image': BeatnikImages.category3,
        'title': 'Jumpsuits',
      },
      {
        'image': BeatnikImages.category4,
        'title': 'Co-ords',
      },
      {
        'image': BeatnikImages.category5,
        'title': 'Shorts',
      },
      {
        'image': BeatnikImages.category6,
        'title': 'Party',
      },
      {
        'image': BeatnikImages.category7,
        'title': 'Casual',
      },
    ];
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return BeatnikVerticalImage(
              image: categories[index]['image']!,
              title: categories[index]['title']!,
              isCircular: true,
              onTap: () {},
            );
          }),
    );
  }
}


