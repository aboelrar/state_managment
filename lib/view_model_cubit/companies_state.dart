import 'package:equatable/equatable.dart';
import 'package:getxapp/model/companies_model/body.dart';
import 'package:getxapp/model/companies_model/companies_model.dart';

abstract class CompaniesStateCubit extends Equatable {}

// ignore: must_be_immutable
class CompaniesState extends CompaniesStateCubit {
  List<CompaniesModel> companies = [];

  CompaniesState(this.companies);

  @override
  // TODO: implement props
  List<Object?> get props => [companies];
}

// ignore: must_be_immutable
class BodyState extends CompaniesStateCubit {
  List<Body> body = [];

  BodyState(this.body);

  @override
  // TODO: implement props
  List<Object?> get props => [body];
}
