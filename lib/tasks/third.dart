import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  @override
  State<ImageScreen> createState() => _ImageScreenState();
}
//buyerda initstate srazu oshlab loading image function chaqiradi,va loading function await qilgnaimz uchun girdviewitemdan ma`lumto kemaguncha isloading yol bermaydi yaniy uni false qilomaydi va setState bomeydi 
class _ImageScreenState extends State<ImageScreen> {
  bool isloading = true;
  @override
  initState() {
    super.initState();
    loadingimage();
  }

  Future<void> loadingimage() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Image Loading')),
        body: isloading
            ? Image.asset('assets/images/barca.png')
            : girdviewitem());
  }
}

girdviewitem() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 100,
    itemBuilder: (context, index) {
      return Image.network(
          'https://3.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg');
    },
  );
}
