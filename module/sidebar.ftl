<aside id="aside" class="aside">
    <section class="sidebar-main">
        <form method="post" class="post-nav">
            <input type="text" name="s" class="aside-control form-nav" placeholder="搜索一下"/>
            <input type="submit" class="aside-submit" value="搜索">
        </form>
    </section>
    
    <section class="sidebar-main">
        <h3>博客信息</h3>
        <ul>
            <li>
                <@postTag method="count">
                    <span>文章总数：${count!0}篇</span>
                </@postTag>
            </li>
            <li>
                <@commentTag method="count">
                    <span>评论总数：${count!0}条</span>
                </@commentTag>
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
            <li><a href="https://paugram.com/" target="_blank" rel="noopener noreferrer">保罗的小宇宙</a></li>
            <li><a href="https://linxuan.fun" target="_blank" rel="noopener noreferrer">临轩</a></li>
            <li><a href="https://yujienb.cn/" target="_blank" rel="noopener noreferrer">狱杰的博客</a></li>
            <li><a href="https://www.kiwiape.cn/" target="_blank" rel="noopener noreferrer">猕猴の那年记忆</a></li>
            <li><a href="https://ghser.com" target="_blank" rel="noopener noreferrer">一叶三秋</a></li>
            <li><a href="https://www.acg19.top" target="_blank" rel="noopener noreferrer">新漫猫</a></li>
            <li><a href="https://www.timochan.cn" target="_blank" rel="noopener noreferrer">提莫酱的博客</a></li>
            <li><a href="https://zshmvp.com" target="_blank" rel="noopener noreferrer">zshMVP</a></li>
            <li><a href="https://www.abcio.cn/" target="_blank" rel="noopener noreferrer">清墨的橘</a></li>
            <li><a href="https://www.lx-blog.cn" target="_blank" rel="noopener noreferrer">流星Aday的博客</a></li>
            <li><a href="https://hq233.cn/" target="_blank" rel="noopener noreferrer">隔壁小胡的博客</a></li>
            <li><a href="https://www.citrons.cn/" target="_blank" rel="noopener noreferrer">Citrons博客</a></li>
            <li><a href="https://www.rz.sb" target="_blank" rel="noopener noreferrer">若志随笔</a></li>
            <li><a href="https://www.m78.co/" target="_blank" rel="noopener noreferrer">星云馆</a></li>
            <li><a href="https://jsun969.cn" target="_blank" rel="noopener noreferrer">螓首蛾眉</a></li>
            <li><a href="https://flypig.xyz" target="_blank" rel="noopener noreferrer">阅读・阅己</a></li>
            <li><a href="https://keymoe.com/" target="_blank" rel="noopener noreferrer">Sanakeyの小站</a></li>
        </ul>
    </section>
    <section class="sidebar-main">
        <h3>其它</h3>
        <ul>
            <li>
                <a href="${rss_url!}">RSS</a> 
                <!-- 文章的RSS地址连接 -->
            </li>
            <li>
                <a href="${sitemap_xml_url!}">网站地图</a>
            </li>
            
           
        </ul>
    </section>





</aside>
