<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/DataSource.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}DataSource.java" />
	<instantiate from="src/app_package/Repository.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/${className}Repository.java" />

	<instantiate from="src/app_package/DataLocal.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/source/local/${className}DataLocal.java" />
          	<instantiate from="src/app_package/DataRemote.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?lower_case}/source/remote/${className}DataRemote.java" />

</recipe>