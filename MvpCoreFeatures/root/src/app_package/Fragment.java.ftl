package ${packageName}.${className?lower_case};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.innovecto.etalastic.revamp.helper.base.QsrFragment;
import com.jakewharton.rxbinding2.view.RxView;
import com.jakewharton.rxbinding2.widget.RxTextView;
import io.reactivex.Observable;

public class ${className}Fragment extends QsrFragment<${className}Activity> implements
    ${className}Contract.View {

  private ${className}Presenter presenter;

  @Override
  public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    // Create the presenter with instance injection
    presenter = ${className}Presenter.newInstance();
  }

  @Nullable
  @Override
  public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
      @Nullable Bundle savedInstanceState) {
    View view = inflater.inflate(null, container, false);
    presenter.onAttachView(this);
    Bundle bundle = getArguments();

    init(view, bundle);
    initObjectListener(view, bundle);
    initData(view, bundle);

    return view;
  }

  @Override
  public void init(View view, Bundle bundle) {

  }

  @Override
  public void initData(View view, Bundle bundle) {
    presenter.bindData(bundle);
  }

  @Override
  public void initObjectListener(View view, Bundle bundle) {

  }

  @Override
  public void bindDataToUi(@Nullable ${className}UiModel uiModel) {
    // show your ui configuration
  }

  @Override
  public void showMessage(@NonNull String message) {
    // show dialog
  }

  @Override
  public void showLoadingDialogUi() {
    //show loading dialog ui

  }

  @Override
  public void hideLoadingDialogUi() {
    //dismiss loading dialog ui

  }

  @Override
  public Observable<Object> buttonObservable() {
    // button widget
    return RxView.clicks(null);
  }

  @Override
  public Observable<CharSequence> inputProductObservable() {
    // textview widget
    return RxTextView.textChanges(null).skipInitialValue();
  }

  @Override
  public void onDestroyView() {
    presenter.onDetachView();
    super.onDestroyView();
  }

}

	