<aside id="aside" class="aside">
    <section class="sidebar-main">
        <span class="menu-control">
            <form action="/search" role="search"  method="get" class="post-nav">
                <input class="form-control form-nav" type="search" name="keyword"  placeholder="搜索一下"/>
                <input type="submit" class="menu-submit" value="搜索">
            </form>
        <span>
    </section>
    
    <section class="sidebar-main">
        <h3>博客信息</h3>
        <ul>
            <li>
                <@postTag method="count">
                    <span>文章总数：${count!0} 篇</span>
                </@postTag>
            </li>
            <li>
                <@commentTag method="count">
                    <span>评论总数：${count!0} 条</span>
                </@commentTag>
            </li>
            <li>
                <@tagTag method="count">
                    <span>标签总数：${count!0} 个</span>
                </@tagTag>
            </li>
        </ul>
    </section>
    <section class="sidebar-main">
        <h3>最新文章</h3>
        
            <@postTag method="latest" top="5">
                <#list posts as post>
                    <ul>
                        <a href="${post.fullPath!}">${post.title!}</a>
                    </ul>
                </#list>
            </@postTag>
        
    </section>
    <section class="sidebar-main">
        <h3>最新评论</h3>
            <@commentTag method="latest" top="5">
                <ul>
                    <#list comments.content as comment>
                        <li>${comment.author!}：${comment.content!}</li>
                    </#list>
                </ul>
            </@commentTag>
    </section>


    <section class="sidebar-main">
        <h3>文章分类</h3>
        <@categoryTag method="list">
            <#list categories as category>
                <ul>
                    <a href="${category.fullPath!}">${category.name!}</a>
                </ul>
            </#list>
        </@categoryTag>
    </section>
    
    <section class="sidebar-main">
        <h3>友情链接</h3>
        <ul class="links">
            <@linkTag method="list">
                <#list links as link>
                    <li>
                        <a href="${link.url!}" target="_blank" target="_blank" rel="noopener noreferrer">
                            ${link.name!}
                        </a>
                    </li>
                </#list>
            </@linkTag>
        </ul>
    </section>
    <section class="sidebar-main">
        <h3>其它</h3>
        <ul>
            <li>
                <a href="${rss_url!}">RSS订阅</a> 
                <!-- 文章的RSS地址连接 -->
            </li>
            <li>
                <a href="${sitemap_xml_url!}">XML网站地图</a>
            </li>
            <li>
                <a href="${sitemap_html_url!}">HTML网站地图</a>
            </li>

        </ul>
    </section>
</aside>
