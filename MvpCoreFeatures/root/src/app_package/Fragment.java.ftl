package ${packageName}.${className?lower_case};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.innovecto.etalastic.revamp.helper.base.QsrFragment;
import com.innovecto.etalastic.R;
import com.innovecto.etalastic.revamp.helper.LoadingDialogUtils;
import com.innovecto.etalastic.utils.alertdialog.GeneralPopUpDialogSingleButton;

public class ${className}Fragment extends QsrFragment<${className}Activity> implements ${className}Contract.View {

  private ${className}Presenter presenter;

  @Override public void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    // Create the presenter with instance injection
    presenter = ${className}Presenter.newInstance();
  }

  @Nullable @Override public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
      @Nullable Bundle savedInstanceState) {
    View view = inflater.inflate(null, container, false);
    presenter.onAttachView(this);
    Bundle bundle = getArguments();

    init(view, bundle);
    initData(view, bundle);
    initObjectListener(view, bundle);

    return view;
  }

  @Override 
  public void init(View view, Bundle bundle) {

  }

  @Override 
  public void initData(View view, Bundle bundle) {
      presenter.processSampleAction("send the data to presenter");
  }

  @Override 
  public void initObjectListener(View view, Bundle bundle) {

  }

  @Override 
  public void showSampleUiAction(String data) {

  }

  @Override
  public void showErrorMessage(@NonNull String message){
    new GeneralPopUpDialogSingleButton(message, getParentActivity(),
        new GeneralPopUpDialogSingleButton.OnActionSelection() {
          @Override
          public void actionOk() {

          }
        });
  }
      
  @Override
  public void showLoadingDialogUi(){
    //show loading dialog ui
    LoadingDialogUtils.getInstance().showDialog(getContext());
  }

  @Override
  public void hideLoadingDialogUi(){
    //dismiss loading dialog ui
    LoadingDialogUtils.getInstance().dismissDialog();
  }

  @Override public void onDestroyView() {
    presenter.onDetachView();
    super.onDestroyView();
  }

}

	