import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxapp/main.dart';
import 'package:getxapp/model/companies_model/body.dart';
import 'package:getxapp/model/companies_model/companies_model.dart';
import 'package:getxapp/utils/constants/api_client.dart';
import 'package:getxapp/view_model_bloc/companies_event.dart';

import 'companies_state.dart';

class CompaniesBloc extends Bloc<CompaniesEventBloc, CompaniesStateBloc> {
  CompaniesBloc() : super(CompaniesState(const [])) {

    on<BodyEvent>(_bodyEvent);
  }

  List<CompaniesModel> companies = [];
  List<Body> body = [];

  Future<void> _bodyEvent(BodyEvent event, Emitter<CompaniesStateBloc> emit) async {
   await apiRouter.getData(ApiClient.Companies).then((value) {
      companies.add(CompaniesModel.fromJson(value));

      for (int i = 0; i < companies.length; i++) {
        body.add(companies[0].body[i]);
      }

      emit(BodyState(body));
    });


  }
}
