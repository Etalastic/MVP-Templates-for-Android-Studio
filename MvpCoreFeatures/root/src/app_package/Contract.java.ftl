package ${packageName}.${className?lower_case};

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.innovecto.etalastic.bases.BaseView;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;

public class ${className}Contract {

  public interface View extends BaseView {

    void showMessage(@NonNull String message);

    void showLoadingDialogUi();

    void hideLoadingDialogUi();

    void bindDataToUi(@Nullable ${className}UiModel uiModel);

    Observable<Object> buttonObservable();

    Observable<CharSequence> inputProductObservable();

  }

  public interface Presenter {

    void bindData(@NonNull Bundle bundle);

    void initValidation();

    Consumer<Object> buttonConsumer();

    Consumer<${className}RxModel> inputProductConsumer();
  }
}