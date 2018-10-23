package ${packageName}.${className?lower_case};

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.innovecto.etalastic.revamp.helper.base.BasePresenter;
import ${packageName}.${className?lower_case}.${className}Contract.View;
import io.reactivex.Observable;


public class ${className}NullCheck extends BasePresenter<${className}Contract.View> {

  @Override
  public View createDummyView() {
    return new View() {

      @Override
      public void showMessage(@NonNull String message) {

      }

      @Override
      public void bindDataToUi(@Nullable ${className}UiModel uiModel) {

      }

      @Override
      public void showLoadingDialogUi() {

      }

      @Override
      public void hideLoadingDialogUi() {

      }

      @Override
      public Observable<Object> buttonObservable() {
        return null;
      }

      @Override
      public Observable<CharSequence> inputProductObservable() {
        return null;
      }
    };
  }
}
