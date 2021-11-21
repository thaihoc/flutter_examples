import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const NameCardApp());
}

class NameCardApp extends StatelessWidget {
  const NameCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: NameCard()
    );
  }
  
}

class NameCard extends StatelessWidget {
  const NameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        topPart(),
        const SizedBox(height: 18,),
        middlePart(),
        const SizedBox(height: 18,),
        bottomPart()
      ],
    );
    Widget box = Container(
      child: content,
      width: 700,
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        border: Border.all(color: Colors.black)
      ),
    );
    return Column(children: [box],);
  }

  Widget topPart() {
    Widget avatar = const Icon(Icons.account_circle, size: 56,);
    Widget name = const Text("Flutter McFlutter",
      style: TextStyle(fontSize: 32),
    );
    Widget desc = const Text("Experienced App Developer",
      style: TextStyle(fontSize: 18),
    );
    return Row (
      children: [
        Container(
          alignment: Alignment.center,
          child: avatar,
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          width: 80,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [name, desc],
          ),
        ),
      ],
    );
  }

  Widget middlePart() {
    Widget address = const Text("123 Main Street",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
    Widget phoneNumber = const Text("(415) 555-0198",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
    return Row(
      children: [
        Flexible(child: address, fit: FlexFit.tight, flex: 1,),
        Flexible(child: phoneNumber, fit: FlexFit.tight, flex: 1,),
      ],
    );
  }

  Widget bottomPart() {
    return Row(
      children: const [
        Flexible(child: Icon(Icons.accessibility), fit: FlexFit.tight, flex: 1,),
        Flexible(child: Icon(Icons.timer), fit: FlexFit.tight, flex: 1,),
        Flexible(child: Icon(Icons.phone_android), fit: FlexFit.tight, flex: 1,),
        Flexible(child: Icon(Icons.phone_iphone), fit: FlexFit.tight, flex: 1,),
      ],
    );
  }

  
}