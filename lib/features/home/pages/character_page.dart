import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rickandmorty/features/home/widgets/character_item.dart';
import '../../../core/routing/routes.dart';
import '../blocs/character_bloc/character_bloc.dart';
import '../blocs/character_bloc/character_state.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Characters",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SvgPicture.asset("assets/icons/nectar_profile.svg"),
          ),
        ],
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return switch (state.status) {
            CharacterStatus.loading => Center(
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CupertinoActivityIndicator(color: Colors.black),
              ),
            ),
            CharacterStatus.error => Center(child: Text("Error in characters")),
            CharacterStatus.success => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.builder(
                itemCount: state.model!.results.length,
                itemBuilder: (context, index) {
                  final characters = state.model!.results[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => context.push(Routes.getDetail(state.model!.results[index].id)),
                        child: CharacterItem(
                          image: characters.image,
                          name: characters.name,
                          status: characters.status,
                          species: characters.species,
                          gender: characters.gender,
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  );
                },
              ),
            ),
          };
        },
      ),
    );
  }
}
