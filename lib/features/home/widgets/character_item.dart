import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rickandmorty/core/utils/colors.dart';
import 'package:rickandmorty/data/models/results_model/origin/origin_model.dart';
import 'package:rickandmorty/features/home/widgets/main_texts.dart';
import '../../../core/routing/routes.dart';
import '../blocs/character_bloc/character_bloc.dart';
import '../blocs/character_bloc/character_state.dart';
import 'id_text.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({
    super.key,
    required this.image,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
  });

  final String image, name, status, species, gender;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder:
          (context, state) => Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 5,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(imageUrl: image, height: 100.h),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                        MainTexts(
                          text: name,
                          color: AppColor.primary900,
                          fontWeight: FontWeight.w600,
                          size: 20,
                        ),
                        MainTexts(text: species, color: AppColor.primary900, fontWeight: FontWeight.w400, size: 16),
                        MainTexts(text: gender, color: AppColor.primary900, fontWeight: FontWeight.w400, size: 16),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
