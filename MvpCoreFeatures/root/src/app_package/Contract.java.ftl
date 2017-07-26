package ${packageName}.${className?lower_case};

import yourpackagename.bases.BasePresenter;
import yourpackagename.bases.BaseView;

public class ${className}Contract{
	
	interface View extends BaseView {
		//this is sampe ui action
		void showSampleUiAction(String data);
	}

	interface Presenter extends BasePresenter<View> {
		//this is sample process action 
		void processSampleAction(String data);
	}
}