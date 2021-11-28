import 'package:vncitizens_home/src/constants/common_constants.dart';

class Menu {
  late String assetIcon;
  String name;

  Menu(String assetIcon, this.name) {
    this.assetIcon = CommonConstants.assetsPathPrefix + "menu/" + assetIcon;
  }

}