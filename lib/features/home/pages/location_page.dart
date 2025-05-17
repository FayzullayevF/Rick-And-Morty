import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_bloc.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_state.dart';
import 'package:rickandmorty/features/home/widgets/location_item.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Locations",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SvgPicture.asset("assets/icons/nectar_location.svg"),
          ),
        ],
      ),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return switch (state.status) {
            LocationStatus.loading => Center(
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
            LocationStatus.error => Center(child: Text("Error in locations")),
            LocationStatus.success => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.builder(
                itemCount: state.model!.location.length,
                itemBuilder: (context, index) {
                  final locations = state.model!.location;
                  return Column(
                    children: [
                      LocationItem(
                        next: state.model!.info.next.toString(),
                        prev: state.model!.info.prev.toString(),
                        count: state.model!.info.count,
                        page: state.model!.info.pages,
                      ),
    SizedBox(height: 5.h),
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
