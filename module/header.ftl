<header id="header" class="header">
    <div id="nav" class="container">
        <div class="logo-main">
            <!--网站标题-->
            <h3 id="logo">
                <a href="${blog_url!}">${blog_title!}</a>
            </h3>
            
            <div class="nav-svg">
                <svg t="1628233870517" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6617" width="32" height="32"><path d="M789.333333 576v85.333333h85.333334v64h-85.333334v85.333334h-64v-85.333334h-85.333333v-64h85.333333v-85.333333h64z m-533.333333 158.101333v64H170.666667v-64h85.333333z m341.333333 0v64H298.666667v-64h298.666666zM256 493.162667v64H170.666667v-64h85.333333z m426.666667 0v64H298.666667v-64h384zM256 252.224v64H170.666667v-64h85.333333z m597.333333 0v64H298.666667v-64h554.666666z" p-id="6618" fill="#4e6ef2"></path></svg>
            </div>
        </div>

        <!--导航栏-->
        <nav class="navbar">
            <ul class="nav-menu">
                <li class="menu-li">
                    <a class="menu-link" href="${blog_url!}">首页</a>
                </li>
                <li class="menu-li">
                    <a class="classify">分类</a>
                    <span class="widget-list">
                        <@categoryTag method="list">
                            <#list categories as category>
                                <a href="${category.fullPath!}">${category.name!}</a>
                            </#list>
                        </@categoryTag>
                    </span>
                </li>
                
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <li class="menu-li">
                            <a class="menu-link" href="${menu.url!}" target="${menu.target!}">${menu.name!} </a>
                        </li>
                    </#list>
                </@menuTag>
                
                <li class="menu-li control">
                    <span class="menu-control">
                        <form action="/search" role="search"  method="get" class="post-nav">
                            <input class="form-control form-nav" type="search" name="keyword"  placeholder="搜索一下"/>
                            <input type="submit" class="menu-submit" value="搜索">
                        </form>
                    <span>
                </li>
                <li class="menu-li">
                    <svg t="1628233761921" class="icon control-svg" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2271" width="32" height="32"><path d="M854.3 887.3c-9.3 0-18.1-3.6-24.8-10.3L628 675.5l-3.5 2.7c-21 16.5-44.1 30.1-68.8 40.6-37.4 15.8-77.1 23.8-118 23.8-40.9 0-80.6-8-118-23.8-36.1-15.3-68.5-37.1-96.3-64.9-27.8-27.8-49.7-60.2-64.9-96.3-15.8-37.4-23.8-77.1-23.8-118s8-80.6 23.8-118c15.3-36.1 37.1-68.5 64.9-96.3 27.8-27.8 60.2-49.7 96.3-64.9 37.4-15.8 77.1-23.8 118-23.8 40.9 0 80.6 8 118 23.8 36.1 15.3 68.5 37.1 96.3 64.9 27.8 27.8 49.7 60.2 64.9 96.3 15.8 37.4 23.8 77.1 23.8 118s-8 80.6-23.8 118c-9.7 23-22.2 44.7-37.2 64.5l-2.6 3.5 202 202c6.6 6.6 10.3 15.4 10.3 24.7 0 9.4-3.6 18.1-10.3 24.7-6.7 6.7-15.5 10.3-24.8 10.3zM437.7 206.7c-62.2 0-120.7 24.2-164.8 68.2-44 44-68.2 102.5-68.2 164.8 0 62.2 24.2 120.7 68.2 164.8 44 44 102.5 68.2 164.8 68.2 62.2 0 120.7-24.2 164.8-68.2 44-44 68.2-102.5 68.2-164.8S646.5 319 602.5 274.9c-44-44-102.5-68.2-164.8-68.2z" p-id="2272" fill="#4e6ef2"></path></svg>     
                </li>
            <ul>
        <nav>
    </div>
    
</header>
