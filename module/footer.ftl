<footer class="footer" id="footer">
    <div class="footer-main container">
        &copy; <a href="https://cjlio.com">小陈的辣鸡屋</a>
        <span>Powered by </span>
        <a href="https://github.com/halo-dev/halo" target="_blank">Halo</a>
        <div class="footer_text">
            <@global.footer_info />
        </div>
    </div>
</footer>
<script charset="utf-8" src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" defer="defer"></script>
<script charset="utf-8" src="https://cdn.jsdelivr.net/npm/jquery-pjax@2.0.1/jquery.pjax.min.js" defer="defer"></script>
<script charset="utf-8" src="${theme_base!}/source/js/main.js" defer="defer"></script>
<script defer="defer">
    function getBaseUrl() {
		let ishttps = 'https:' == document.location.protocol ? true : false;
		let url = window.location.host;
		if (ishttps) {
			url = 'https://' + url;
		} else {
			url = 'http://' + url;
		}
		return url;
	}
	let url = '"' + getBaseUrl() + '"';
	$(document).pjax('a[href^=' + url + ']:not(a[target="_blank"], a[no-pjax])', {
		container: '.ajaxdata',
		fragment: '.ajaxdata',
		timeout: 8000
	})
	$(document).on('pjax:start', function () { 
		$(".nav-menu").css("display","none");
    
	});

	$(document).on('pjax:end', function () { 
	    
	});
</script>