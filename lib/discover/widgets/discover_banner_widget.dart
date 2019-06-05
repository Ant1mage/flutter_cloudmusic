import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiscoverPageBanner extends StatelessWidget {

  final List<String> bannerList;

  const DiscoverPageBanner({Key key, this.bannerList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 160,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Swiper(
            autoplay: true,
            loop: true,
            itemCount: bannerList.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                bannerList[index],
                fit: BoxFit.cover,
              );
            },
            pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.red,
                  size: 8,
                  activeSize: 8,
                )
            )
        ),
      ),
    );
  }

}
