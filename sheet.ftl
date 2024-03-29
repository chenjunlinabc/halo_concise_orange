<#include "module/macro.ftl">
<@head title="${sheet.title!} - ${blog_title!}"/>
<#include "module/header.ftl">
<main class="main ajaxdata">
    <div class="container">
        <article id="article" class="article">
            <div class="post-mains">
                <a href="${blog_url!}">首页</a> &raquo; <a href="${sheet_url!}">${sheet.title!}</a>
            </div>
            <div class="post-page">
                <div class="post animated fadeInDown">
                    <div class="post-title">
                        <h4>
                            <a>${sheet.title!}</a>
                        </h4>
                    </div>
                    <ul class="nav post-meta">
                        <li class="nav-item">
                            ${user.nickname!}  <!--作者名称-->

                        </li>
                        <li class="nav-item">
                            ${post.createTime?string("yyyy年MM月dd日")} <!--文章发布时间-->
                        </li>
                    </ul>
                    <div class="post-content">
                        ${sheet.formatContent!}
                    </div>
                </div>
                <div class="share" style="display: inline-flex">
                    <div class="evernote">
                        <a href="javascript:(function(){EN_CLIP_HOST='http://www.evernote.com';try{var%20x=document.createElement('SCRIPT');x.type='text/javascript';x.src=EN_CLIP_HOST+'/public/bookmarkClipper.js?'+(new%20Date().getTime()/100000);document.getElementsByTagName('head')[0].appendChild(x);}catch(e){location.href=EN_CLIP_HOST+'/clip.action?url='+encodeURIComponent(location.href)+'&title='+encodeURIComponent(document.title);}})();"
                           ref="nofollow" target="_blank" class="fa fa-bookmark"></a>
                    </div>
                    <div class="weibo">
                        <a href="javascript:void((function(s,d,e){try{}catch(e){}var f='http://service.weibo.com/share/share.php?',u=d.location.href,p=['url=',e(u),'&title=',e(d.title),'&appkey=2924220432'].join('');function a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=620,height=450,left=',(s.width-620)/2,',top=',(s.height-450)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent)){setTimeout(a,0)}else{a()}})(screen,document,encodeURIComponent));"
                           class="fa fa-weibo"></a>
                    </div>
                    <div class="twitter">
                        <a href="http://twitter.com/home?status=${sheet.fullPath!},${blog_title!},${sheet.title!};"
                           class="fa fa-twitter"></a>
                    </div>
                </div>
                <div id="comment_widget" style="margin: 30px;">
                    <#include "module/comment.ftl">
                    <@comment post=sheet type="sheet" />
                </div>
            </div>
        </article>
        <#include "module/sidebar.ftl">
    </div>
</main>
<#include "module/footer.ftl">
<@footer></@footer>
