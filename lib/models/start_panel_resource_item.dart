import 'package:super_continent_client/utils/localization/core.dart';

class StartPanelResourceItem {
  String description;
  int ratio;

  StartPanelResourceItem(this.description, this.ratio);
}

Map<int, StartPanelResourceItem> resourceItemMap = {
  0: StartPanelResourceItem(MyLocalization.get("start-panel-radio-rich"), 10),
  1: StartPanelResourceItem(MyLocalization.get("start-panel-radio-default"), 5),
  2: StartPanelResourceItem(MyLocalization.get("start-panel-radio-barren"), 20)
};
