import 'package:flutter/material.dart';

import 'core/network/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_app/presentation/logic/test_cubit.dart';
import 'my_app/presentation/ui/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TestCubit>(create: (BuildContext context) => TestCubit()),
            ],
        child:
        MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Home(),
        )
    );


  }
}
