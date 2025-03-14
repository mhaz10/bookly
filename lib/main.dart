import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemation.dart';
import 'package:bookly/features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/news_books/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentaton/views/splash_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt<HomeRepoImplementation>())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewsBooksCubit(getIt<HomeRepoImplementation>())..fetchNewsBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}

