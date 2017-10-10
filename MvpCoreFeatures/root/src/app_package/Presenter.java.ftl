package ${packageName}.${className?lower_case};

public class ${className}Presenter extends ${className}NullCheck implements ${className}Contract.Presenter{

  private ${className}Contract.View view;
  private static ${className}Presenter INSTANCE;


  public static ${className}Presenter getInstance() {
    if (INSTANCE != null) {
      return INSTANCE;
    } else {
      return new ${className}Presenter();
    }
  }

  @Override public void processSampleAction(String data) {
    getView().showSampleUiAction("parsing data here");
  }

  @Override public void onDetachView() {
    getView().hideLoadingDialogUi();
    super.onDetachView();
  }
}