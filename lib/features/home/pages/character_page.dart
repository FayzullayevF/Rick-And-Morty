import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rickandmorty/features/home/blocs/character/character_bloc.dart';

import '../blocs/character/character_state.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            CharacterStatus.success => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                final characters = state.model!.results[index];
                return Image.network(characters.image);
              },
            ),
          };
        },
      ),
    );
  }
}
