import 'dart:convert';

import 'package:argo_flutter_plugin/AnalysysAgent.dart';
import 'package:argo_flutter_plugin/AnalysysConfig.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

typedef VoidCallbackWithTextController = void Function(
    TextEditingController controller);
typedef VoidCallbackWithTextController2 = void Function(
    TextEditingController controller,
    {TextEditingController controller2});

class FuncTextController {
  VoidCallbackWithTextController callback;
  final TextEditingController textController;
  final String hintText;
  TextEditingController textController2;
  VoidCallbackWithTextController2 callback2;
  String hintText2;

  FuncTextController(this.textController, this.hintText,
      {this.callback, this.hintText2, this.textController2, this.callback2});
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Argo Flutter Plugin example app', 
        home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, FuncTextController> _methodList;

  _MyAppState() {
    _methodList = {
      "_configSDK": FuncTextController(new TextEditingController(), "appkey",
          callback: _initMethod),
      "_setDebugMode": FuncTextController(
          new TextEditingController(), "debugMode",
          callback: _setDebugMode),
      "_setUploadUrl": FuncTextController(
          new TextEditingController(), "upload url",
          callback: _setUploadUrl),
      "_setIntervalTime": FuncTextController(
          new TextEditingController(), "tinterval time",
          callback: _setIntervalTime),
      "_setMaxCacheSize": FuncTextController(
          new TextEditingController(), "max cache size",
          callback: _setMaxCacheSize),
      "_getMaxCacheSize": FuncTextController(
          new TextEditingController(), "returned max cache size",
          callback: _getMaxCacheSize),
      "_setMaxEventSize": FuncTextController(
          new TextEditingController(), "max event size",
          callback: _setMaxEventSize),
      "_flush":
          FuncTextController(new TextEditingController(), "", callback: _flush),
      "_setUploadNetworkType":
          FuncTextController(new TextEditingController(), "", callback: _setUploadNetworkType),
      "_alias": FuncTextController(new TextEditingController(), "aliasId",
          callback: _alias),
      "_identify": FuncTextController(new TextEditingController(), "distinctId",
          callback: _identify),
      "_getDistinctId": FuncTextController(
          new TextEditingController(), "returned distinctId",
          callback: _getDistinctId),
      "_reset":
          FuncTextController(new TextEditingController(), "", callback: _reset),
      "_track": FuncTextController(new TextEditingController(), "eventInfo",
          textController2: new TextEditingController(),
          hintText2: "eventInfo",
          callback2: _track),
      "_pageView": FuncTextController(new TextEditingController(), "pageName",
          textController2: new TextEditingController(),
          hintText2: "pageInfo",
          callback2: _pageView),
      "_registerSuperProperty": FuncTextController(
          new TextEditingController(), "proName",
          textController2: new TextEditingController(),
          hintText2: "proValue",
          callback2: _registerSuperProperty),
      "_registerSuperProperties": FuncTextController(
          new TextEditingController(), "properties",
          callback: _registerSuperProperties),
      "_unRegisterSuperProperty": FuncTextController(
          new TextEditingController(), "proName",
          callback: _unRegisterSuperProperty),
      "_clearSuperProperties": FuncTextController(
          new TextEditingController(), "",
          callback: _clearSuperProperties),
      "_getSuperProperty": FuncTextController(
          new TextEditingController(), "proName",
          callback: _getSuperProperty),
      "_getSuperProperties": FuncTextController(new TextEditingController(), "",
          callback: _getSuperProperties),
      "_profileSet": FuncTextController(
          new TextEditingController(), "properties",
          callback: _profileSet),
      "_profileSetOnce": FuncTextController(
          new TextEditingController(), "properties",
          callback: _profileSetOnce),
      "_profileIncrement": FuncTextController(
          new TextEditingController(), "properties",
          callback: _profileIncrement),
      "_profileAppend": FuncTextController(
          new TextEditingController(), "properties",
          callback: _profileAppend),
      "_profileUnset": FuncTextController(
          new TextEditingController(), "proName",
          callback: _profileUnset),
      "_profileDelete": FuncTextController(new TextEditingController(), "",
          callback: _profileDelete),
      "_trackCampaign": FuncTextController(
          new TextEditingController(), "campaign",
          textController2: new TextEditingController(),
          hintText2: "clicked",
          callback2: _trackCampaign),
    };
  }

  @override
  void initState() {
    super.initState();
  }

  void _initMethod(TextEditingController controller) {
    try {
      // if(controller.text.length == 0) {
      //   print("请填写appkey!");
      //   return;
      // }
      AnalysysConfig config = new AnalysysConfig();
      // config.appKey = controller.text;
      config.appKey = 'heatmaptest0916';
      config.channel = "App Store";
      config.autoProfile = false;
      config.autoInstallation = true;
      config.autoTrackDeviceId = true;
      config.encryptType = 1;
      config.autoInstallation = true;
      config.allowTimeCheck = true;
      config.maxDiffTimeInterval = 5 * 60;
      AnalysysAgent.startWithConfig(config)
          ?.whenComplete(() => _showDialog("init success!"));

      AnalysysAgent.setDebugMode(2);
      AnalysysAgent.setUploadUrl('http://192.168.220.105:8089');
    } catch (e) {
      print("_initMethod error with exception:" + e.toString());
    }
  }

  void _setDebugMode(TextEditingController controller) {
    try {
      // AnalysysAgent.setDebugMode(int.parse(controller.text))
          // ?.whenComplete(() => _showDialog("debugMode success!"));

      // AnalysysAgent.setAutomaticCollection(true);
      // AnalysysAgent.setIntervalTime(10);
      // AnalysysAgent.setMaxEventSize(10);
      // AnalysysAgent.setMaxCacheSize(1000);

      // AnalysysAgent.identify("fangke");
      // var distinctID = AnalysysAgent.getDistinctId();
      // print("distinctID:" + distinctID.toString());

      // AnalysysAgent.getDistinctId().then((userId){
      //   print("user " + userId);
      // });

      // AnalysysAgent.alias("18899668899");

      // var presetProperties = AnalysysAgent.getPresetProperties();
      // print("presetProperties:" + presetProperties.toString());
    
      // AnalysysAgent.reset();
      // AnalysysAgent.cleanDBCache();

      // AnalysysAgent.setUploadNetworkType(0xFF);

      // AnalysysAgent.flush();

      // AnalysysAgent.registerSuperProperty("gender", "male");
      // AnalysysAgent.registerSuperProperties({"age":30, "address":"beijing"});
      // AnalysysAgent.unRegisterSuperProperty("age");
      // AnalysysAgent.clearSuperProperties();

      // AnalysysAgent.profileSet({"hobby": "playfootball"});
      // AnalysysAgent.profileSetOnce({"birthday": "1997-7-1"});
      // AnalysysAgent.profileIncrement({"积分": 99});
      // AnalysysAgent.profileAppend({"books": ["红楼梦", "水浒传"]});
      // AnalysysAgent.profileUnset("birthday");
      // AnalysysAgent.profileDelete();

    } catch (e) {
      print("setDebugMode error with exception:" + e.toString());
    }
  }

  void _setUploadUrl(TextEditingController controller) {
    try {
      // AnalysysAgent.setUploadUrl(controller.text)?.whenComplete(
      //     () => _showDialog('setUploadUrl success! ' + controller.text));
      // AnalysysAgent.setUploadUrl("https://arkpaastest.analysys.cn:4089");

      // var superProperties = AnalysysAgent.getSuperProperties();
      // var value = AnalysysAgent.getSuperProperty("address");
      // print("value:" + value.toString());

      // AnalysysAgent.pageView("homePage");
      AnalysysAgent.pageView("detailPage", {"detail":"详情页"});
    } catch (e) {
      print("setUploadUrl error with exception:" + e.toString());
    }
  }

  void _setIntervalTime(TextEditingController controller) {
    try {
      _showDialog("time interval: " + controller.text);
      AnalysysAgent.setIntervalTime(int.parse(controller.text));
    } catch (e) {
      print("setIntervalTime error with exception:" + e.toString());
    }
  }

  void _setMaxCacheSize(TextEditingController controller) {
    try {
      _showDialog("max cache size: " + controller.text);
      AnalysysAgent.setMaxCacheSize(int.parse(controller.text));
    } catch (e) {
      print("setMaxCacheSize error with exception:" + e.toString());
    }
  }

  void _getMaxCacheSize(TextEditingController controller) {
    try {
      AnalysysAgent.getMaxCacheSize().then((val) {
        _showDialog("max cache size: " + val.toString());
      });
    } catch (e) {
      print("_getMaxCacheSize error with exception:" + e.toString());
    }
  }

  void _setMaxEventSize(TextEditingController controller) {
    try {
      _showDialog(",max event size: " + controller.text);
      AnalysysAgent.setMaxEventSize(int.parse(controller.text));
    } catch (e) {
      print("_setMaxEventSize error with exception:" + e.toString());
    }
  }

  void _flush(TextEditingController controller) {
    try {
      _showDialog("flush " + controller.text);
      AnalysysAgent.flush();
    } catch (e) {
      print("flush error with exception:" + e.toString());
    }
  }

  void _setUploadNetworkType(TextEditingController controller) {
    try {
      _showDialog("setUploadNetworkType " + controller.text);
      AnalysysAgent.setUploadNetworkType(0xff);
    } catch (e) {
      print("flush error with exception:" + e.toString());
    }
  }

  void _alias(TextEditingController controller) {
    try {
      // _showDialog(
      //     "aliasId " + controller.text);
      // AnalysysAgent.alias(controller.text);
      AnalysysAgent.alias("18688886666");
    } catch (e) {
      print("alias error with exception:" + e.toString());
    }
  }

  void _identify(TextEditingController controller) {
    try {
      _showDialog("distinctId: " + controller.text);
      AnalysysAgent.identify(controller.text);
    } catch (e) {
      print("identify error with exception:" + e.toString());
    }
  }

  void _getDistinctId(TextEditingController controller) {
    try {
      AnalysysAgent.getDistinctId().then((val) {
        _showDialog("distinctID: " + val.toString());
      });
    } catch (e) {
      print("_getDistinctId error with exception:" + e.toString());
    }
  }

  void _reset(TextEditingController controller) {
    try {
      _showDialog("reset ");
      AnalysysAgent.reset();
    } catch (e) {
      print("reset error with exception:" + e.toString());
    }
  }

  void _track(TextEditingController controller,
      {TextEditingController controller2}) {
    try {
      // _showDialog("track eventName:" +
      //     controller.text +
      //     "eventInfo:" +
      //     controller2.text);
      // AnalysysAgent.track(controller.text,
      //     eventInfo: json.decode(controller2.text));

        AnalysysAgent.track("event");

        Map<String, Object> properties = {"eventKey": "eventValue"};
        AnalysysAgent.track("eventProperties", properties);
    } catch (e) {
      print("track error with exception:" + e);
    }
  }

  void _pageView(TextEditingController controller,
      {TextEditingController controller2}) {
    try {
    //   _showDialog("pageView pageName:" +
    //       controller.text +
    //       "pageInfo:" +
    //       controller2.text);
    //   AnalysysAgent.pageView(controller.text,
    //       pageInfo: json.decode(controller2.text));
      AnalysysAgent.pageView("pageHome");

      Map<String, Object> properties = {"pageKey": "pageValue"};
      AnalysysAgent.pageView("pageDetail", properties);
    } catch (e) {
      print("pageView error with exception:" + e.toString());
    }
  }

  void _registerSuperProperty(TextEditingController controller,
      {TextEditingController controller2}) {
    try {
      _showDialog("registerSuperProperty propertyName:" +
          controller.text +
          "propertyValue:" +
          controller2.text);
      AnalysysAgent.registerSuperProperty(controller.text, controller2.text);
    } catch (e) {
      print("registerSuperProperty error with exception:" + e.toString());
    }
  }

  void _registerSuperProperties(TextEditingController controller) {
    try {
      _showDialog("registerSuperProperty propertyInfo:" + controller.text);
      AnalysysAgent.registerSuperProperties(json.decode(controller.text));
    } catch (e) {
      print("registerSuperProperties error with exception:" + e.toString());
    }
  }

  void _unRegisterSuperProperty(TextEditingController controller) {
    try {
      _showDialog("unRegisterSuperProperty propertyName:" + controller.text);
      AnalysysAgent.unRegisterSuperProperty(controller.text);
    } catch (e) {
      print("unRegisterSuperProperty error with exception:" + e.toString());
    }
  }

  void _clearSuperProperties(TextEditingController controller) {
    try {
      _showDialog("clearSuperProperties propertyName");
      AnalysysAgent.clearSuperProperties();
    } catch (e) {
      print("clearSuperProperties error with exception:" + e.toString());
    }
  }

  void _getSuperProperty(TextEditingController controller) {
    try {
      AnalysysAgent.getSuperProperty(controller.text).then((val) {
        _showDialog("getSuperProperty propertyName" +
            controller.text +
            " value:" +
            val.toString());
      });
    } catch (e) {
      print("get super property with exception:" + e.toString());
    }
  }

  void _getSuperProperties(TextEditingController controller) {
    try {
      AnalysysAgent.getSuperProperties().then((val) {
        _showDialog("getSuperProperty propertyName" +
            controller.text +
            " value:" +
            val.toString());
      });
    } catch (e) {
      print("get super properties with exception:" + e.toString());
    }
  }

  void _profileSet(TextEditingController controller) {
    try {
      _showDialog("profileSet propertyInfo:" + controller.text);
      AnalysysAgent.profileSet(json.decode(controller.text));
    } catch (e) {
      print("profileSet error with exception:" + e.toString());
    }
  }

  void _profileSetOnce(TextEditingController controller) {
    try {
      _showDialog("profileSetOnce propertyInfo:" + controller.text);
      AnalysysAgent.profileSetOnce(json.decode(controller.text));
    } catch (e) {
      print("profileSetOnce error with exception:" + e.toString());
    }
  }

  void _profileIncrement(TextEditingController controller) {
    try {
      // _showDialog("profileIncrement propertyInfo:" + controller.text);
      // AnalysysAgent.profileIncrement(json.decode(controller.text));
      Map<String, num> properties = {"fruit": 4};
      AnalysysAgent.profileIncrement(properties);
    } catch (e) {
      print("profileIncrement error with exception:" + e.toString());
    }
  }

  void _profileAppend(TextEditingController controller) {
    try {
      _showDialog("profileIncrement propertyInfo:" + controller.text);
      AnalysysAgent.profileAppend(json.decode(controller.text));
    } catch (e) {
      print("profileAppend error with exception:" + e.toString());
    }
  }

  void _profileUnset(TextEditingController controller) {
    try {
      _showDialog("profileUnset propertyName:" + controller.text);
      AnalysysAgent.profileUnset(controller.text);
    } catch (e) {
      print("profileUnset error with exception:" + e.toString());
    }
  }

  void _profileDelete(TextEditingController controller) {
    try {
      _showDialog("profileDelete");
      AnalysysAgent.profileDelete();
    } catch (e) {
      print("profileDelete error with exception:" + e.toString());
    }
  }

  void _trackCampaign(TextEditingController controller,
      {TextEditingController controller2}) {
    try {
      _showDialog("trackCampaign:" +
          controller.text +
          "  isClicked:" +
          controller2.text);
      AnalysysAgent.trackCampaign(
          controller.text, int.tryParse(controller2.text) > 0 ? true : false);
    } catch (e) {
      print("trackCampaign error with exception:" + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    List<Widget> buttonWidgets = [];
    _methodList.forEach((k, v) {
      buttonWidgets.add(SizedBox(
        height: 20,
      ));
      buttonWidgets.add(
        Padding(
          padding: EdgeInsets.all(32),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: TextField(
              controller: v.textController,
              cursorColor: theme.primaryColor,
              decoration: InputDecoration(
                  hintText: v.hintText,
                  prefixIcon: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Icon(
                      Icons.create,
                      color: theme.primaryColor,
                    ),
                  ),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
            ),
          ),
        ),
      );
      if (Comparable.compare(k, "_track") == 0 ||
          Comparable.compare(k, "_pageView") == 0 ||
          Comparable.compare(k, "_registerSuperProperty") == 0 ||
          Comparable.compare(k, "_trackCampaign") == 0) {
        buttonWidgets.add(SizedBox(
          height: 10,
        ));
        buttonWidgets.add(
          Padding(
            padding: EdgeInsets.all(32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                controller: v.textController2,
                cursorColor: theme.primaryColor,
                decoration: InputDecoration(
                    hintText: v.hintText2,
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.create,
                        color: theme.primaryColor,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
        );
      }
      buttonWidgets.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: theme.primaryColor),
            child: FlatButton(
              child: Text(
                k,
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              onPressed: () {
                if (Comparable.compare(k, "_track") == 0 ||
                    Comparable.compare(k, "_pageView") == 0 ||
                    Comparable.compare(k, "_registerSuperProperty") == 0 ||
                    Comparable.compare(k, "_trackCampaign") == 0) {
                  v.callback2(v.textController, controller2: v.textController2);
                } else {
                  v.callback(v.textController);
                }
              },
            ),
          ),
        ),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Argo Flutter SDK example app'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: SafeArea(
              child: Column(children: buttonWidgets),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
    String text,
    Function onPressed, {
    Color color = Colors.white,
  }) {
    return FlatButton(
      color: color,
      child: Text(text),
      onPressed: onPressed,
    );
  }

  _showDialog(String msg) async {
    await showDialog(
      context: context,
      builder: (ctx) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Text(
                    msg.toString(),
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.center,
                ),
                color: Colors.white,
              ),
              _buildButton("OK", () => Navigator.of(context).pop(1)),
            ],
          ),
        );
      },
    );
  }
}
