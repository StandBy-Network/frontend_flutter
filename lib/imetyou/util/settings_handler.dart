import '../../common/utils/db_handler.dart';
import '../../common/utils/file_util.dart';
import '../bean/state.dart';
import '../model/application_settings.dart';

class SettingsHandler{

  static getApplicationSettings (){
    //
    ApplicationSetting returnValue = new ApplicationSetting();
    return returnValue;
  }

  static bool saveApplicationSettings(ApplicationSetting setting){
    bool returnValue = true;

    return returnValue;

  }




  static bool hasCurrentState(){
    //TODO: get from stored data
    bool returnValue= false;
    return returnValue;
  }

  static State getMyState(){
    //TODO: get from stored data
    State returnValue = new State();

    return returnValue;
  }

  static bool saveMyState(State state){
    //TODO: persist my current state
    bool returnValue = true;

    return returnValue;
  }




}