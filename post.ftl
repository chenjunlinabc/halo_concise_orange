<#include "module/macro.ftl">
<@head title="${post.title!} - ${blog_title!}"/>
<#include "module/header.ftl">
<main class="ajaxdata">
    <article id="post-content" class="container">
        <div class="post-content-main">
            <div class="post-mains"><a href="${blog_url!}">首页</a> &raquo;<a href="${post.fullPath!}">${post.title}</a> </div>
            <div class="post-mains">
                <h3 class="post-title">
                     <a href="${post.fullPath!}">${post.title}</a><!-- 文章标题-->
                </h3>
                <ul class="nav post-meta">
                    <li class="nav-item">
                        ${user.nickname!}  <!--作者名称-->
                    
                    </li>
                    <li class="nav-item">
                        ${post.createTime?string("yyyy年MM月dd日")} <!--文章发布时间-->
                    </li>
                    
                </ul>
                <!--输出文章内容-->
                <div class="post-article">
                    <div class="copyright">
                        注意：本站未注明转载的文章均为原创，转载请注明来源
                    </div>
                </div>
            </div>
            <div class="change post-mains">
                <#if prevPost??>
                    <div class="change-left">
                        <a class="btn" role="navigation" href="${prevPost.fullPath!}" title="${prevPost.title}">上一篇：${prevPost.title}</a>
                    </div>
                <#else>
                    <div class="change-left">
                        <a class="btn" role="navigation">上一篇：没有了</a>
                    </div>
                </#if>
                <#if nextPost??>
                    <div class="change-right">
                        <a class="btn" role="navigation" href="${nextPost.fullPath!}" title="${nextPost.title}">下一篇：${nextPost.title}</a>
                    </div>
                <#else>
                    <div class="change-left">
                        <a class="btn" role="navigation">下一篇：没有了</a>
                    </div>
                </#if>
            </div>
            <div id="comment_widget" style="margin: 30px;">
                <#include "module/comment.ftl">
                <@comment post=post type="post" />
            </div>
        </div>
        <#include "module/sidebar.ftl">
    </article>
    <div class="go-top">
        <a href="javascript:window.scrollTo(0,0)">
            <svg t="1628425563723" class="icon go" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3790" width="32" height="32"><path d="M624.401067 601.463467L512 489.0624l-112.401067 112.401067-48.264533-48.264534L512 392.533333l160.6656 160.6656-48.264533 48.264534zM512 819.2a307.2 307.2 0 1 0 0-614.4 307.2 307.2 0 0 0 0 614.4z m0 68.266667C304.64 887.466667 136.533333 719.36 136.533333 512S304.64 136.533333 512 136.533333s375.466667 168.106667 375.466667 375.466667-168.106667 375.466667-375.466667 375.466667z" p-id="3791" fill="#1296db"></path></svg>
        </a>
    </div>
</main>
<#include "module/footer.ftl">
<@footer></@footer>
