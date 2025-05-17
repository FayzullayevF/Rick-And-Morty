import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rickandmorty/core/dependences.dart';
import 'package:rickandmorty/core/routing/router.dart';
import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';
import 'package:rickandmorty/data/models/location_model/location_list_model/location_result_model.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';
import 'package:rickandmorty/data/models/results_model/origin/origin_model.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';

import 'core/client.dart';
import 'data/models/info_model/info_model.dart';
import 'data/models/results_model/location/location_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cacheDir = await getApplicationCacheDirectory();
  Hive.init(cacheDir.path);
  Hive.registerAdapter(InfoModelAdapter());
  Hive.registerAdapter(LocationResultModelAdapter());
  Hive.registerAdapter(MainLocationModelAdapter());
  Hive.registerAdapter(OriginResultModelAdapter());
  Hive.registerAdapter(LocationInResultModelAdapter());
  Hive.registerAdapter(MainModelAdapter());
  Hive.registerAdapter(ResultsModelAdapter());


  await Hive.openBox<EpisodesModel>("episode");
  await Hive.openBox<MainLocationModel>("location");
  await Hive.openBox<MainModel>("character");
  await Hive.openBox<ResultsModel>("characterDetail");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: MultiBlocProvider(
        providers: provider,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      ),
    );
  }
}
