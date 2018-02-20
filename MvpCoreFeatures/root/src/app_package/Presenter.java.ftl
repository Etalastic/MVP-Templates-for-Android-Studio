package ${packageName}.${className?lower_case};

public class ${className}Presenter extends ${className}NullCheck implements ${className}Contract.Presenter{

  public static ${className}Presenter newInstance() {
      return new ${className}Presenter();
  }

  @Override public void processSampleAction(String data) {
    getView().showSampleUiAction("parsing data here");
  }

  @Override public void onDetachView() {
    getView().hideLoadingDialogUi();
    super.onDetachView();
  }
}