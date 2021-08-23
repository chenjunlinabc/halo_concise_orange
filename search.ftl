<#include "module/macro.ftl">
<@head title="搜索结果：${keyword!} - ${blog_title!}"/>
<#include "module/header.ftl">
<div class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
            <div class="post-mains">
                <a href="${blog_url!}">首页</a> &raquo; <a href="${archives_url!}">${keyword!}</a>
            </div>
		    <#if posts?? && posts.content?size gt 0>
                <#include "module/post-entry.ftl">
                <#if posts.totalPages gt 1>
                    <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword!}">
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
		    <#else>
		    	<div class="post">
		    		<h3 class="page-title">没有找到内容！</h3>
		    	</div>
		    </#if>
        </article>
        <#include "module/sidebar.ftl">
    </div>
    
</div>
<@footer></@footer>