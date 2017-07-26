<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Contract.java" />
	<instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Fragment.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Presenter.java" />
<#if useActivity>
	<instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Activity.java" />
</#if>

<#if useBaseClass>
	<instantiate from="src/app_package/bases/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/bases/BaseActivity.java" />
        	<instantiate from="src/app_package/bases/BaseFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/bases/BaseFragment.java" />
           <instantiate from="src/app_package/bases/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/bases/BasePresenter.java" />
            <instantiate from="src/app_package/bases/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/bases/BaseView.java" />
</#if>

</recipe>