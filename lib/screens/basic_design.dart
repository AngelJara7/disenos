import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage("assets/landscape.jpg"),),

          const Title(),

          const ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: const Text("Ad irure laborum sint irure commodo eiusmod ut commodo est occaecat.Do aute labore in ea non eiusmod consequat deserunt sit labore irure consectetur Lorem.Non veniam do aute aute labore est ipsum minim anim commodo laborum cupidatat voluptate deserunt.")
          )
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const  [
              Text("Oeschinen Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Kandersteg, Switzerland", style: TextStyle(color: Colors.black45),),
            ],
          ),

          Expanded(child: Container()),
    
          const Icon(Icons.star, color: Colors.red,),
          const Text("41")
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: "Call"),
          CustomButton(icon: Icons.map, text: "Route"),
          CustomButton(icon: Icons.share, text: "Route"),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 35,),
        const SizedBox(height: 10,),
        Text(text, style: const TextStyle(color: Colors.blue),)
      ],
    );
  }
}