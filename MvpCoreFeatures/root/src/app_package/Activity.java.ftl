package ${packageName}.${className?lower_case};

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.innovecto.etalastic.R;
import com.innovecto.etalastic.revamp.helper.base.QsrAppCompactActivity;

public class ${className}Activity extends QsrAppCompactActivity {

@Override
  protected void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(null);

    init(savedInstanceState);
    if (savedInstanceState == null) {
      initData(savedInstanceState);
    }
    initObjectListener(savedInstanceState);
  }

  @Override
  protected void init(Bundle bundle) {

  }

  @Override
  protected void initData(Bundle bundle) {

  }

  @Override
  protected void initObjectListener(Bundle bundle) {

  }
}