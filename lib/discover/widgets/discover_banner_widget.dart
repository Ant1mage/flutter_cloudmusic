import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DiscoverPageBanner extends StatelessWidget {

  List<String> bannerList = [];

  DiscoverPageBanner({Key key, this.bannerList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 160,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Swiper(
            itemHeight: 160,
            autoplay: true,
            loop: true,
            itemCount: bannerList.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return CachedNetworkImage(
                imageUrl: bannerList[index],
                fit: BoxFit.fill,
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
