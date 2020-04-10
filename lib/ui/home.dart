import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Margherita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Mozzarella, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Marinara",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        ),
      ),
      // width: 192.0,
      // height: 96.0,
      // margin: EdgeInsets.all(50.0),
      // margin: EdgeInsets.only(left: 50.0),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        // If you missed the onPressed property, the button will be flat and greyed out.
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

// BuildContext is a context in which a specific widget is build
  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed!"),
      content: Text("Thanks for your order..."),
    );
    showDialog(
      context: context,
      //builder is a function handler, so we need to create a function that accepts a single argument
      builder: (BuildContext context) => alert,
    );
  }
}
