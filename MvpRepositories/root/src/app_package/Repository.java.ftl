package ${packageName}.${className?lower_case};

import android.support.annotation.NonNull;

public class ${className}Repository implements ${className}DataSource {

  private static ${className}Repository INSTANCE = null;
  private final ${className}DataSource ${className?lower_case}DataLocal;
  private final ${className}DataSource ${className?lower_case}DataRemote;

  private ${className}Repository(@NonNull ${className}DataSource ${className?lower_case}RemoteDataSource,
      @NonNull ${className}DataSource ${className?lower_case}LocalDataSource) {
    ${className?lower_case}DataLocal = (${className?lower_case}LocalDataSource);
    ${className?lower_case}DataRemote = (${className?lower_case}RemoteDataSource);
  }

  public static ${className}Repository getInstance(${className}DataSource tasksRemoteDataSource,
      ${className}DataSource tasksLocalDataSource) {
  
    if (INSTANCE == null) {
      INSTANCE = new ${className}Repository(tasksRemoteDataSource, tasksLocalDataSource);
    }
    return INSTANCE;
  }

  public static void destroyInstance() {
    INSTANCE = null;
  }

  @Override
  public void getSampeData(String param, @NonNull SampleCallback sampleCallback) {
    
    ${className?lower_case}DataLocal.getSampeData(param, sampleCallback);
    ${className?lower_case}DataRemote.getSampeData(param, sampleCallback);
  }

}
