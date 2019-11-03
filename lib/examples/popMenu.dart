import 'package:flutter/material.dart';


enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopMenu'),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: (){
              print(111);
            },
            child: PopupMenuButton<ConferenceItem>(
              onSelected: (ConferenceItem result){
                print(result);
              },
              itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ConferenceItem>>[
                  const PopupMenuItem<ConferenceItem> (
                    value: ConferenceItem.AddMember,
                    child: Text('添加成员'),
                  ),
                  const PopupMenuItem<ConferenceItem> (
                    value: ConferenceItem.LockConference,
                    child: Text('锁定会议'),
                  ),
                  const PopupMenuItem<ConferenceItem> (
                    value: ConferenceItem.ModifyLayout,
                    child: Text('修改布局'),
                  ),
                  const PopupMenuItem<ConferenceItem> (
                    value: ConferenceItem.TurnoffAll,
                    child: Text('挂断所有'),
                  ),
                ],
            ),
          ),
        ),
      ),
  );
    
    
    
    
  }
}