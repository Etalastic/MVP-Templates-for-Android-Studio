package ${packageName}.${className?lower_case};

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.innovecto.etalastic.revamp.helper.base.QsrAppCompactActivity;


public class ${className}Activity extends QsrAppCompactActivity {

@Override
  protected void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // layout id
    setContentView(null);

    // frameLayout id
    setFragmentContainerView(null);

    init(savedInstanceState);  
    initData(savedInstanceState);
    initObjectListener(savedInstanceState);
  }

  @Override
  protected void init(Bundle bundle) {

  }

  @Override
  protected void initData(Bundle bundle) {
    replaceFragment(new ${className}Fragment(), false);
  }

  @Override
  protected void initObjectListener(Bundle bundle) {

  }
}