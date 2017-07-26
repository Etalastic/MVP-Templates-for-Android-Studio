package ${packageName}.${className?lower_case};

import android.os.Bundle;
import android.support.annotation.Nullable;
import yourpackagename.R;
import yourpackagename.bases.BaseActivity;

public class ${className}Activity extends BaseActivity {

@Override
  protected void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(null);

    init();
    initData();
    initObjectListener();
  }

  @Override
  protected void init() {

  }

  @Override
  protected void initData() {

  }

  @Override
  protected void initObjectListener() {

  }
}