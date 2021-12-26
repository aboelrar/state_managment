import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxapp/main.dart';
import 'package:getxapp/model/companies_model/body.dart';
import 'package:getxapp/model/companies_model/companies_model.dart';
import 'package:getxapp/utils/constants/api_client.dart';

import 'companies_state.dart';

class CompaniesViewModel extends Cubit<CompaniesStateCubit> {
  CompaniesViewModel() : super(CompaniesState(const []));

  List<CompaniesModel> companies = [];
  List<Body> body = [];

  fetchData() {
    apiRouter.getData(ApiClient.Companies).then((value) {
      companies.add(CompaniesModel.fromJson(value));

      for (int i = 0; i < companies.length; i++) {
        body.add(companies[0].body[i]);
      }

      emit(CompaniesState(companies));
      emit(BodyState(body));
    });
  }
}
