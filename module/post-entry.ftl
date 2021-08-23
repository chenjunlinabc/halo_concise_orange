<#list posts.content as post>
    <div class="post animated fadeInDown">
        <div class="post-title">
            <h3>
                <a href="${post.fullPath!}">${post.title}</a>
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
            <div class="p_part">
                <p>${post.summary!}...</p>
            </div>
            <div class="p_part">
                <p></p>
            </div>
        </div>
        
    </div>
</#list>
