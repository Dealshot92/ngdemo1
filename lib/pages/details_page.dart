import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id="details_page";
  final String? userId;
  const DetailsPage({super.key, this.userId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}



class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState(){
    super.initState();
    print("DetailsPage=> ${widget.userId}");
  }

  _backToFinish(){
    Map map={"data": "Works Fine"};
    Navigator.of(context).pop(map);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("Welcome ${widget.userId}"),
            onPressed: (){
            _backToFinish();
            },
          ),
        )
    );
  }
}
