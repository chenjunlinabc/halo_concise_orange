<#include "module/macro.ftl">
<@head title="分类：${category.name} - ${blog_title!}"/>
<#include "module/header.ftl">
<main class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
            <div class="post-mains">
                <a href="${blog_url!}">首页</a> &raquo; <a href="/links">${category.name}</a>
            </div>
            <div class="post-title">
                <div class="post animated fadeInDown">
                    <div class="post-title">
                        <h4><a>${category.name}</a></h4>
                    </div>
                   

                    <#if posts.totalPages gt 1>
                        <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                            <div class="pagination">
                                <ul class="clearfix">
                                    <#if pagination.hasPrev>
                                        <li class="pre pagbuttons">
                                            <a class="btn" role="navigation" href="${pagination.prevPageFullPath!}">上一页</a>
                                        </li>
                                    </#if>
                                    <#if pagination.hasNext>
                                        <li class="next pagbuttons">
                                            <a class="btn" role="navigation" href="${pagination.nextPageFullPath!}">下一页</a>
                                        </li>
                                    </#if>
                                </ul>
                            </div>
                        </@paginationTag>
                    </#if>
                </div>
            </div>
        </article>
        <#include "module/sidebar.ftl">
    </div>
</main>
<#include "module/footer.ftl">
<@footer></@footer>
