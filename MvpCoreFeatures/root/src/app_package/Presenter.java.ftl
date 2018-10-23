package ${packageName}.${className?lower_case};

import static ${packageName}.${className?lower_case}.${className}Constant.DATA_BUNDLE_KEY;

import android.os.Bundle;
import androidx.annotation.Nullable;
import io.reactivex.functions.Consumer;

public class ${className}Presenter extends ${className}NullCheck implements ${className}Contract.Presenter {

  private ${className}RxValidation validation;

  public static ${className}Presenter newInstance() {
    return new ${className}Presenter();
  }

  private ${className}Presenter() {
    validation = ${className}RxValidation.newInstance();
  }

  @Override
  public void bindData(@Nullable Bundle bundle) {

    // show progress bar
    getView().showLoadingDialogUi();
    ${className}Bundle data = bundle.getParcelable(DATA_BUNDLE_KEY);

    if (data != null) {
      // mapping
      ${className}UiModel uiModel = new ${className}UiModel();
      uiModel.setProductName(data.getProductName());

      getView().bindDataToUi(uiModel);
    } else {
      getView().showMessage("data can't be null");
    }

    // hide progress bar
    getView().hideLoadingDialogUi();
  }

  @Override
  public void initValidation() {
    validation.setButtonSubmitObs(getView().buttonObservable(), buttonConsumer());
    validation.setInputProductObs(getView().inputProductObservable(), inputProductConsumer());
  }

  @Override
  public Consumer<Object> buttonConsumer() {
    return o -> {
      // set action
    };
  }

  @Override
  public Consumer<${className}RxModel> inputProductConsumer() {
    return rxModel -> {
      // set action
    };
  }

  @Override
  public void onDetachView() {
    getView().hideLoadingDialogUi();
    validation.disposeObservable();
    super.onDetachView();
  }
}