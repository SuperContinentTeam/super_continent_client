import "package:logger/logger.dart";

const String _tag = "logger";

var _logger = Logger(printer: PrettyPrinter(methodCount: 0));

logV(String msg,{String name=_tag}){
  _logger.v("$name : $msg");
}

logD(String msg,{String name=_tag}){
  _logger.d("$name : $msg");
}

logE(String msg,{String name=_tag}){
  _logger.e("$name : $msg");
}

logI(String msg,{String name=_tag}){
  _logger.i("$name : $msg");
}

logW(String msg,{String name=_tag}){
  _logger.w("$name : $msg");
}

logWTF(String msg,{String name=_tag}){
  _logger.wtf("$name : $msg");
}
