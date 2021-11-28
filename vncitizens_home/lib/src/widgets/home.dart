import 'package:flutter/material.dart';
import 'package:vncitizens_home/src/constants/common_constants.dart';
import 'package:vncitizens_home/src/models/menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [Expanded(child: banner(context))]),
            gridMenu(context)
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigation(context),
    );
  }

  banner(BuildContext context) {
    return const Image(
      image: AssetImage("${CommonConstants.assetsPathPrefix}header.png"),
      fit: BoxFit.cover
    );
  }

  gridMenu(BuildContext context) {
    List<Menu> lstMenu = [
      Menu("asxh.png", "An sinh xã hội"),
      Menu("camera.png", "Camera"),
      Menu("ca_nhan.png", "Cá nhân"),
      Menu("chinh_quyen.png", "Chính quyền"),
      Menu("dat_dai.png", "Đất đai"),
      Menu("dvc.png", "Dịch vụ công"),
      Menu("giao_duc.png", "Giáo dục"),
      Menu("giao_thong.png", "Giao thông"),
      Menu("nong_nghiep.png", "Nông nghiệp"),
      Menu("pcd_covid19.png", "Phòng chống dịch Covid-19"),
      Menu("phan_anh.png", "Phản ánh"),
      Menu("thanh_toan.png", "Thanh toán"),
      Menu("thong_tin_can_biet.png", "Thông tin cần biết"),
      Menu("tin_tuc.png", "Tin tức"),
      Menu("y_te.png", "Y tế"),
    ];
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
            Image(image: AssetImage(lstMenu[index].assetIcon),),
            Text(lstMenu[index].name, textAlign: TextAlign.center,),
          ],
        );
      }),
    );
  }

  bottomNavigation(BuildContext context) {
    Widget home = Column(children: const [
      SizedBox(
        child: Image(image: AssetImage("${CommonConstants.assetsPathPrefix}bottom_nav/trang_chu.png")),
        height: 30,
      ),
      Text("Home")
    ],);
    Widget thongBao = Column(children: const [
      SizedBox(
        child: Image(image: AssetImage("${CommonConstants.assetsPathPrefix}bottom_nav/thong_bao.png")),
        height: 30,
      ),
      Text("Thông báo")
    ],);
    Widget caiDat = Column(children: const [
      SizedBox(
        child: Image(image: AssetImage("${CommonConstants.assetsPathPrefix}bottom_nav/cai_dat.png")),
        height: 30,
      ),
      Text("Cài đặt")
    ],);
    Widget menu = Column(children: const [
      SizedBox(
        child: Image(image: AssetImage("${CommonConstants.assetsPathPrefix}bottom_nav/menu.png")),
        height: 30,
      ),
      Text("Menu")
    ],);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: home),
          Expanded(child: thongBao),
          Expanded(child: caiDat),
          Expanded(child: menu)
        ]
      ),
      height: 50,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black12, width: 1)),
      )
    );
  }
}
