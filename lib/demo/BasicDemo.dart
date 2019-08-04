import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16,
  );

  final String _author = "李白";
  final String _title = "将进酒";
  final String _con =
      "早上十点钟，商场准时开门。门店的自动门还没有完全升上去，最底部跟地面之间的距离还在人的腰部以下，等在门外的人群就已经迫不及待要钻进去了。挤在前面的人先做了表率，他们努力弓着身子，以近似匍匐的姿态同时兼顾速度，呲溜一下窜了进去。优衣库里灯火通明，所有人目标明确直接涌向某个区域，不过几分钟该区域的货架上已经空空如也，硬质衣架被丢在地上，人群在上面踩来踩去又调转方向奔向店员所在的补货区。六分钟以后，这场战役已经平息，人群重新聚拢在一起。这一回气氛和谐很多，大家在交换尺码。6 月 3 号当天早上，如果你恰好在某个有优衣库的商场闲逛，这个场面你一定撞见过。被抢的是优衣库跟美国街头艺术家兼设计师 Kaws 的联名款T恤，原价 99 元，限购两件。";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "http://g.hiphotos.baidu.com/image/pic/item/2e2eb9389b504fc2bbdd8ce9ebdde71191ef6d5f.jpg"),
              alignment: Alignment.topCenter,   
              //repeat: ImageRepeat.repeat 
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.indigoAccent[400].withOpacity(0.5),
                BlendMode.hardLight,
              )
                  )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 16),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 25,
                  spreadRadius: -9,
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
