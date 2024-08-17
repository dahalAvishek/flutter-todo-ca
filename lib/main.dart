import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/bootstrap/presentation/blocs/create_sections/create_sections_bloc.dart';
import 'package:flutter_todo/bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';

import 'bootstrap/presentation/blocs/app/app_bloc.dart';
import 'bootstrap/presentation/blocs/create_project/create_project_bloc.dart';
import 'bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import 'core/routes/router_builder.dart';
import 'utils/dependencies_injection.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // if (kDebugMode) {
      //   CustomImageCache();
      // }

      await serviceLocator();
      return SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      ).then((_) => runApp(const MyApp()));
    },
    (error, stackTrace) async {},
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<CreateProjectBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<GetProjectsBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<CreateSectionsBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<GetSectionsBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: const TextTheme(
            // Heading 1
            displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            displaySmall:
                TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
            // Heading 2
            headlineLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            headlineMedium:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            headlineSmall:
                TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            // Heading 3
            titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
            // Heading 4
            bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            // Heading 5
            labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
          ),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
