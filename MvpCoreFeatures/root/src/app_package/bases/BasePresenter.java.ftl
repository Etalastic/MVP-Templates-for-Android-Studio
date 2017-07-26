package ${packageName}.bases;

public interface BasePresenter<T> {
  public void onAttachView(T view);

  public void onDetachView();
}