import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rickandmorty/core/utils/colors.dart';
import 'package:rickandmorty/features/home/blocs/character_bloc/character_bloc.dart';

import '../blocs/character_bloc/character_state.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.image,
    required this.url,
    required this.type,
    required this.created,
    required this.id,
    required this.name,
  });

  final String image, url, type, created, name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder:
          (context, state) => Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            height: 505.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              spacing: 5,
              children: [
                CachedNetworkImage(
                  imageUrl: image,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${id.toString()}. ",
                        style: TextStyle(
                          color: AppColor.primary500,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: name,
                        style: TextStyle(
                          color: AppColor.primary900,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  created,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  url,
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
