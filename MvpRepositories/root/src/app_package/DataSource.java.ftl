package ${packageName}.${className?lower_case};

import android.support.annotation.NonNull;

public interface ${className}DataSource {
	
  interface SampleCallback {

    void onSuccess(String data);

    void onError(String data);

  }

  void getSampeData(String param, @NonNull SampleCallback sampleCallback);
}