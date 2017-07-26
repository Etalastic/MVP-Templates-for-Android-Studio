package ${packageName}.${className?lower_case}.source.local;

import android.support.annotation.NonNull;
import android.content.Context;
import ${packageName}.${className?lower_case}.${className}DataSource;

public class ${className}DataLocal implements ${className}DataSource {

  private static ${className}DataLocal INSTANCE;
  private Context context;

  private ${className}DataLocal(@NonNull Context context) {
    this.context = context;
  }

  public static ${className}DataLocal getInstance(@NonNull Context context) {
    if (INSTANCE == null) {
      INSTANCE = new ${className}DataLocal(context);
    }
    return INSTANCE;
  }

  @Override
  public void getSampeData(String param, @NonNull SampleCallback sampleCallback) {

    sampleCallback.onSuccess("result");
    sampleCallback.onError("result");
  }
}
