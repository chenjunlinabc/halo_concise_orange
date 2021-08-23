<#include "module/macro.ftl">
<@head title="友情链接 - ${blog_title!}"/>
<#include "module/header.ftl">
<main class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
            <div class="post-mains">
                <a href="${blog_url!}">首页</a> &raquo; <a href="${archives_url!}">归档</a>
            </div>
            <div class="post-title">
                <div class="post animated fadeInDown">
                    <div class="post-title">
                        <h3><a>links</a></h3>
                    </div>
                    <div class="post-content">
                        <ul>
                            <@linkTag method="list">
                              <#list links as link>
                                  <li>
                                      <a href="${link.url!}" target="_blank">
                                          ${link.name!}
                                      </a>
                                  </li>
                              </#list>
                            </@linkTag>
                        </ul>
                    </div>
                </div>
            </div>
        </article>
        <#include "module/sidebar.ftl">
    </div>
</main>
<#include "module/footer.ftl">
<@footer></@footer>
