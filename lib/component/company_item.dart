import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getxapp/widgets/widget_themes/text_display.dart';

class CompanyItem extends StatelessWidget {
  String img, title, subTitle;

  CompanyItem(this.img, this.title, this.subTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getCompanyItem();
  }

  Row _getCompanyItem() {
    Image companyImg = Image.network(
      img,
      width: 100,
      height: 100,
    );

    SizedBox companyTitleDes = SizedBox(
      width: 200,
        child: ListTile(
      title: AppTextDisplay(
        text: title,

      ),
      subtitle: AppTextDisplay(
        text: subTitle,
      ),
    ));

    Row companyItem = Row(
      children: [companyImg, companyTitleDes],
    );

    return companyItem;
  }
}
