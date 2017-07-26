package ${packageName}.${className?lower_case}.source.remote;

import android.support.annotation.NonNull;
import android.content.Context;
import ${packageName}.${className?lower_case}.${className}DataSource;

public class ${className}DataRemote implements ${className}DataSource {

  private static ${className}DataRemote INSTANCE;
  private Context context;

  private ${className}DataRemote(@NonNull Context context) {
    this.context = context;
  }

  public static ${className}DataRemote getInstance(@NonNull Context context) {
    if (INSTANCE == null) {
      INSTANCE = new ${className}DataRemote(context);
    }
    return INSTANCE;
  }

  @Override
  public void getSampeData(String param, @NonNull SampleCallback sampleCallback) {

    sampleCallback.onSuccess("result");
    sampleCallback.onError("result");
  }
}
