import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/models/index.dart';

Widget bannerSlider(List<BannerDetails> banners, BuildContext ctx) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (context, index, realIndex) {
        final banner = banners[index];
        return buildImage(banner, index, ctx);
      },
      options: CarouselOptions(
        height: 190,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    ),
  );
}

Widget buildImage(BannerDetails banner, int index, BuildContext ctx) {
  return Container(
    width: MediaQuery.of(ctx).size.width,
    // margin: EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
        image: DecorationImage(
            image: NetworkImage(
              banner.banner!,
            ),
            fit: BoxFit.cover)),
    // child: Image.network(
    //   urlImage,
    //   fit: BoxFit.cover,
    // ),
  );
}
