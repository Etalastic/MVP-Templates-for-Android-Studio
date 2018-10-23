package ${packageName}.${className?lower_case};

import com.innovecto.etalastic.revamp.helper.base.BaseRxValidation;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;

public class ${className}RxValidation extends BaseRxValidation {

  private static long bounceTime = 200;
  private TimeUnit debounceUnit = TimeUnit.MILLISECONDS;

  public static ${className}RxValidation newInstance() {
    return new ${className}RxValidation();
  }

  void setButtonSubmitObs(Observable<Object> buttonObservable,
      Consumer<Object> buttonConsumer) {
    Observable<Object> clickButton = buttonObservable
        .throttleFirst(bounceTime, debounceUnit);

    Disposable disposable = clickButton.subscribe(buttonConsumer);
    addDisposable(disposable);
  }

  void setInputProductObs(Observable<CharSequence> inputObservable,
      Consumer<${className}RxModel> consumer) {

    Observable<${className}RxModel> input = inputObservable
        .map(CharSequence::toString)
        .debounce(bounceTime, debounceUnit)
        .flatMap((Function<String, ObservableSource<${className}RxModel>>) s -> {
          ${className}RxModel rxModel = new ${className}RxModel();
          rxModel.setEmpty(s.isEmpty());
          rxModel.setValue(s);
          rxModel.setValid(!s.isEmpty());
          return Observable.just(rxModel);
        })
        .subscribeOn(Schedulers.newThread())
        .observeOn(AndroidSchedulers.mainThread());

    Disposable disposable = input.subscribe(consumer);
    addDisposable(disposable);
  }
}