package ${packageName}.${className?lower_case};

import com.innovecto.etalastic.bases.BaseView;
import android.support.annotation.NonNull;

public class ${className}Contract{
	
	public interface View extends BaseView {
		//this is sample ui action
		void showSampleUiAction(String data);

		void showErrorMessage(@NonNull String message);
    	
    	void showLoadingDialogUi();

    	void hideLoadingDialogUi();
	}

	public interface Presenter  {
		//this is sample process action 
		void processSampleAction(String data);
	}
}