import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_bloc.dart';

import '../blocs/location_bloc/location_state.dart' show LocationState;

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.next,
    required this.prev,
    required this.count,
    required this.page,
  });

  final String next, prev;
  final int count, page;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Container(
          height: 150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            spacing: 2,
            children: [
              Text(next),
              Text(prev),
              Text("${count}"),
              Text("${page}"),
            ],
          ),
        );
      },
    );
  }
}
