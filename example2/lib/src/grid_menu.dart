import 'package:flutter/cupertino.dart';

class Menu {
  final String assetIcon;
  final String name;

  const Menu(this.assetIcon, this.name);
}

class GridMenu extends StatelessWidget {

  const GridMenu({Key? key}) : super(key: key);

  final lstMenu = const [
    Menu("an-sinh-xa-hoi.png", "An sinh xã hội"),
    Menu("camera.png", "Camera"),
    Menu("ca-nhan.png", "Cá nhân"),
    Menu("chinh-quyen.png", "Chính quyền"),
    Menu("dat-dai.png", "Đất đai"),
    Menu("dich-vu-cong.png", "Dịch vụ công"),
    Menu("giao-duc.png", "Giáo dục"),
    Menu("giao-thong.png", "Giao thông"),
    Menu("nong-nghiep.png", "Nông nghiệp"),
    Menu("pcd-covid19.png", "Phòng chống dịch Covid-19"),
    Menu("phan-anh.png", "Phản ánh"),
    Menu("thanh-toan.png", "Thanh toán"),
    Menu("thong-tin-can-biet.png", "Thông tin cần biết"),
    Menu("tin-tuc.png", "Tin tức"),
    Menu("y-te.png", "Y tế"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // Generate 100 widgets that display their index in the List.
      children: List.generate(lstMenu.length, (index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("menu/" + lstMenu[index].assetIcon),
            Text(lstMenu[index].name, textAlign: TextAlign.center,),
          ],
        );
      }),
    );
  }

}