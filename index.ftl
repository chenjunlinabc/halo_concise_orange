<#include "module/macro.ftl">
<@head title="${blog_title!}"/>
<#include "module/header.ftl">
<main class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
	        <#list posts.content as post>
                <div class="post">
                    <div class="post-title">
                        <h3>
                            <a href="${post.fullPath!}">${post.title}</a><!-- 文章标题-->
                        </h3>
                    </div>
                    <div class="post-headermeta">
                        <span class="post-author">
                            ${user.nickname!}  <!--作者名称-->
                        </span>
                        <span class="post-date">
                            ${post.createTime?string("yyyy年MM月dd日")} <!--文章发布时间-->
                        </span>
                    </div>
                    <div class="post-content">
                        <p class="post-main">
                            ${post.summary!}...
                        </p> <!--文章输出-->
                    </div>
                    <p class="post-more">
	        		    <a href="${post.fullPath!}" title="${post.title}">
	        		    	阅读全文
	        		    </a> 
                        <!--提供查看全文，地址为当前文章的详细页面-->
	        	    </p>
                </div>
            </#list>
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
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
</main>
<#include "module/footer.ftl">
<@footer></@footer>
