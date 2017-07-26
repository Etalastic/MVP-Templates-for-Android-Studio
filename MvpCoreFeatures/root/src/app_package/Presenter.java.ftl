package ${packageName}.${className?lower_case};

public class ${className}Presenter implements ${className}Contract.Presenter{

  private ${className}Contract.View view;
  private static ${className}Presenter INSTANCE;

  @Override public void onAttachView(${className}Contract.View view) {
    this.view = view;
  }

  @Override public void onDetachView() {
    this.view = null;
  }

  public static ${className}Presenter getInstance() {
    if (INSTANCE != null) {
      return INSTANCE;
    } else {
      return new ${className}Presenter();
    }
  }

    @Override public void processSampleAction(String data) {
    view.showSampleUiAction("parsing data here");
    }
}