package ${packageName}.bases;

import android.support.v7.app.AppCompatActivity;

public abstract class BaseActivity extends AppCompatActivity {

  /**
   * As a Pattern, used for instantiate class or define all module.
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc
   */
  protected abstract void init();

  /**
   * As a Pattern, define data / load data at first time cycle .
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc
   */
  protected abstract void initData();

  /**
   * As a Pattern, define object listener, exp: onClickListener, onChangedListener, etc.
   * note: after this method implemented into class child, don't forget call this method
   * inside OnCreate, OnCreateView, etc
   */
  protected abstract void initObjectListener();

  @Override
  public void onBackPressed() {
    if (getSupportFragmentManager().getBackStackEntryCount() > 1) {
      super.onBackPressed();
    } else {
      finish();
    }
  }
  }