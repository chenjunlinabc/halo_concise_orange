<#macro head title>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title>${title!}</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="${settings.google_color!'#fff'}">
    <meta name="author" content="${user.nickname!}" />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <link href="${theme_base!}/source/css/style.css" type="text/css" rel="stylesheet" defer="defer"/>
    <@global.head />
</head>
<body>
</#macro>
<#macro footer>
<@global.statistics />
</body>
</html>
</#macro>
