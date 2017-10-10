<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Contract.java" />
	<instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Fragment.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Presenter.java" />                  
  <instantiate from="src/app_package/NullCheck.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}NullCheck.java" />
<#if useActivity>
	<instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Activity.java" />
</#if>

</recipe>