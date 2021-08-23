<#include "module/macro.ftl">
<@head title="归档 - ${blog_title!}"/>
<#include "module/header.ftl">
<main class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
            <div class="post-mains">
                <a href="${blog_url!}">首页</a> &raquo; <a href="${archives_url!}">归档</a>
            </div>
            <div class="post-mains">

                <div class="post-article">
                    <h3 class="post-title">
                        标签云
                    </h3>
                    <ul class="label-main">
                        
                        <@tagTag method="list">
                            <#list tags as tag>
                                <li class="label-main">
                                    <a href="${tag.fullPath!}">${tag.name!}</a>
                                </li>
                            </#list>
                        </@tagTag>
                        
                    </ul>
                </div>

                <h3 class="post-title">
                    <a href="${archives_url!}">
                        归档
                    </a>
                </h3>
                <div class="post-article">
                    <div class="articles-main">
                        <#list archives as archive>
                            <h3 class="listing-title archive_year">${archive.year?c}</h3><!--输出年份-->

                            <ul class="archive_year_list">
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li class="">
                                        <div class="post-time article_month">
                                            <span class="date">${post.createTime?string("MM月dd日")}</span>
                                        </div>
                                        <div>
                                            <a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a>
                                        </div>
                                    </li>
                                </#list>
                            </ul>
                        </#list>
                    </div>
                </div>
            </div>
            <#if posts.totalPages gt 1>
                <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <nav class="post-bottom">
                        <div class="pagination">
                            <#if pagination.hasPrev>
                                <span class="page-next">
                                    <a class="extend prev" href="${pagination.prevPageFullPath!}">上一页</a>
                                </span>
                            <#else >
                            </#if>
                            <#list pagination.rainbowPages as number>
                                <#if number.isCurrent>
                                    <span class="page-item">
                                        <a class="page-number current" href="${number.fullPath!}">${number.page!}</a>
                                    </span>
                                <#else>
                                    <span>
                                        <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                                    </span>
                                </#if>
                            </#list>
                            <#if pagination.hasNext>
                                <span class="page-prev">
                                    <a class="extend next" href="${pagination.nextPageFullPath!}">下一页</a>
                                </span>
                            <#else>
                            </#if>
                        </div>
                    </nav>
                </@paginationTag>
            </#if>
        </article>
        <#include "module/sidebar.ftl">
    </div>
    <div class="go-top">
        <a href="javascript:window.scrollTo(0,0)">
            <svg t="1628425563723" class="icon go" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3790" width="32" height="32"><path d="M624.401067 601.463467L512 489.0624l-112.401067 112.401067-48.264533-48.264534L512 392.533333l160.6656 160.6656-48.264533 48.264534zM512 819.2a307.2 307.2 0 1 0 0-614.4 307.2 307.2 0 0 0 0 614.4z m0 68.266667C304.64 887.466667 136.533333 719.36 136.533333 512S304.64 136.533333 512 136.533333s375.466667 168.106667 375.466667 375.466667-168.106667 375.466667-375.466667 375.466667z" p-id="3791" fill="#1296db"></path></svg>
        </a>
    </div>
</main>
<#include "module/footer.ftl">
<@footer></@footer>
