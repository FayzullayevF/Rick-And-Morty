import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rickandmorty/core/utils/colors.dart';
import 'package:rickandmorty/features/home/blocs/character_bloc/character_bloc.dart';
import 'package:rickandmorty/features/home/blocs/character_bloc/character_state.dart';
import 'package:rickandmorty/features/home/widgets/detail_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary500,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Characters Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SvgPicture.asset("assets/icons/detail.svg"),
          ),
        ],
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return switch (state.status) {
            CharacterStatus.loading => Center(
              child: CupertinoActivityIndicator(),
            ),
            CharacterStatus.error => Center(
              child: Text("Error in Character Detail"),
            ),
            CharacterStatus.success => Center(
              child: Column(
                children: [
                  DetailItem(
                    image: state.results!.image,
                    url: state.results!.url,
                    type: state.results!.type,
                    created: state.results!.created.toString(),
                    id: state.results!.id, name: state.results!.name,
                  ),
                ],
              ),
            ),
          };
        },
      ),
    );
  }
}
