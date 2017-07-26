package ${packageName}.bases;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

public abstract class BaseFragment<T> extends Fragment {

/**
*Get parent activity
*/
  public T getParentActivity() {
    return (T) getActivity();
  }

  /**
   * As a Pattern, used for instantiate class or define all module.
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc
   *
   * @param view as passing data view
   * @param bundle as passing data bundle
   */
  public abstract void init(View view, Bundle bundle);

  /**
   * As a Pattern, define data / load data at first time cycle .
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc
   *
   * @param view as passing data view
   * @param bundle as passing data bundle
   */
  public abstract void initData(View view, Bundle bundle);

  /**
   * As a Pattern, define object listener, exp: onClickListener, onChangedListener, etc.
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc.
   *
   * @param view as passing data view
   * @param bundle as passing data bundle
   */
  public abstract void initObjectListener(View view, Bundle bundle);

  }