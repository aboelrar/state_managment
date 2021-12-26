import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxapp/component/company_item.dart';
import 'package:getxapp/view_model_bloc/companies_bloc.dart';
import 'package:getxapp/view_model_bloc/companies_event.dart';
import 'package:getxapp/view_model_bloc/companies_state.dart';
import 'package:getxapp/widgets/widget_themes/text_display.dart';

class Companies extends StatefulWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  State<Companies> createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  CompaniesBloc? bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    bloc = BlocProvider.of<CompaniesBloc>(context);
    bloc!.add(BodyEvent());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getBody();
  }

  Widget _getBody() {
    // ignore: deprecated_member_use
    return Scaffold(
      body: BlocBuilder<CompaniesBloc, CompaniesStateBloc>(
        builder: (BuildContext context, state) {
          if (state is BodyState) {
            return ListView.builder(
                itemCount: state.body.length,
                itemBuilder: (context, i) {
                  return CompanyItem(state.body[i].picture,
                      state.body[i].username, state.body[i].phone);
                });
          } else {
            return AppTextDisplay(
              text: "Please Wait",
            );
          }
        },
      ),
    );
  }
}
