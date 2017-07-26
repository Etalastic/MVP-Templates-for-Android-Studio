package ${packageName}.${className?lower_case};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import yourpackagename.R;
import yourpackagename.bases.BaseFragment;

public class ${className}Fragment extends BaseFragment<${className}Activity> implements ${className}Contract.View {

  private ${className}Presenter presenter;

  @Override public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    // Create the presenter with instance injection
    presenter = ${className}Presenter.getInstance();
  }

  @Nullable @Override public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
      @Nullable Bundle savedInstanceState) {
    View view = inflater.inflate(null, container, false);
    presenter.onAttachView(this);
    Bundle bundle = getArguments();

    init(view, bundle);
    initData(view, bundle);
    initObjectListener(view, bundle);

    return view;
  }

  @Override public void init(View view, Bundle bundle) {

  }

  @Override public void initData(View view, Bundle bundle) {
      presenter.processSampleAction("send the data to presenter");
  }

  @Override public void initObjectListener(View view, Bundle bundle) {

  }

  @Override public void showSampleUiAction(String data) {

  }

  @Override public void onDestroyView() {
    super.onDestroyView();
    presenter.onDetachView();
  }

}

	