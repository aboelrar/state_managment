import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getxapp/bind.dart';
import 'package:getxapp/ui/company_screen_provider/companies.dart';
import 'package:getxapp/view_model_bloc/companies_bloc.dart';
import 'package:getxapp/view_model_cubit/companies_view_model.dart';
import 'package:provider/provider.dart';
import 'controller_provider/companies_controller.dart';
import 'network/api_router.dart';

ApiRouter apiRouter = ApiRouter();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Bind(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CompaniesController>.value(
            value: CompaniesController(),
          )
        ],
        child: BlocProvider(
          create: (_) => CompaniesBloc(),
          child: BlocProvider(
              create: (_) => CompaniesViewModel(), child: const Companies()),
        ),
      ),
    );
  }
}
