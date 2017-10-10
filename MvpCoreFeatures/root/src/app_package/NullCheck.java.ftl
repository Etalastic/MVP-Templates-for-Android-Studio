package ${packageName}.${className?lower_case};

import android.support.annotation.NonNull;
import com.innovecto.etalastic.revamp.helper.base.BasePresenter;
import ${packageName}.${className?lower_case}.${className}Contract.View;


public class ${className}NullCheck extends BasePresenter<${className}Contract.View> {

  @Override
  public View createDummyView() {
    return new View() {

      @Override
      public void showSampleUiAction(String data) {
        
      }

      @Override
      public void showErrorMessage(@NonNull String message) {

      }

      @Override
      public void showLoadingDialogUi() {

      }

      @Override
      public void hideLoadingDialogUi() {

      }

    };
  }
}
