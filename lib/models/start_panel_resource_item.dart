import 'package:super_continent_client/utils/localization/core.dart';

class StartPanelResourceItem {
  String description;
  int ratio;

  StartPanelResourceItem(this.description, this.ratio);
}

Map<int, StartPanelResourceItem> resourceItemMap = {
  0: StartPanelResourceItem(MyLocalization.get("start-panel-ratio-default"), 10),
  1: StartPanelResourceItem(MyLocalization.get("start-panel-ratio-barren"), 5),
  2: StartPanelResourceItem(MyLocalization.get("start-panel-ratio-rich"), 20)
};
