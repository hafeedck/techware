import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/login/login_bloc.dart';
import 'package:machine_test/bloc/product/product_bloc.dart';
import 'package:machine_test/routes/page_route.dart';
import 'package:machine_test/widgets/style/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
          BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(),
          ),
        ],
        child: MaterialApp(
          title: '',
          routes: routes,
          initialRoute: '/splash',
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: AppColors().primaryColor, fontFamily: 'Lato'),
        ));
  }
}
