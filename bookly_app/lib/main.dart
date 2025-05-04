import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/core/theming/colors/colors.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/features/home/logic/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/free_books_cubit/free_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/sorted_books_cubit/sorted_books_cubit.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/home_details.dart';
import 'package:bookly_app/features/home/ui/home_screen/views/home_screen.dart';
import 'package:bookly_app/features/splash_screen/ui/views/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FreeBooksCubit(
                HomeRepoImplement(apiServices: ApiServices(Dio())),
              )..getAllFreeBooks(),
        ),
        BlocProvider(
          create:
              (context) => SortedBooksCubit(
                HomeRepoImplement(apiServices: ApiServices(Dio())),
              )..getSortedBooks(),
        ),
      ],
      child: MaterialApp(
        title: 'Bookly App',
        routes: {
          AppRouter.home: (c) => HomeScreen(),
          AppRouter.homeDetails: (c) => HomeDetails(id: ""),
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appColor,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          scaffoldBackgroundColor: AppColors.appColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
