{% if theme.duoshuo.enable %}

  {% set duoshuo_shortname = theme.duoshuo.shortname %}

  <script type="text/javascript">
    var duoshuoQuery = {short_name:"{{duoshuo_shortname}}"};
    (function() {
      var ds = document.createElement('script');
      ds.type = 'text/javascript';ds.async = true;
      ds.id = 'duoshuo-script';
      ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
      ds.charset = 'UTF-8';
      (document.getElementsByTagName('head')[0]
      || document.getElementsByTagName('body')[0]).appendChild(ds);
    })();
  </script>
    {% if theme.duoshuo.ua_enable %}
     {% if theme.duoshuo.admin_enable %}
     {% if theme.duoshuo.user_id %}
  	  <script type="text/javascript">
  		var duoshuo_user_ID = {{theme.duoshuo.user_id}}
      var duoshuo_admin_nickname="{{theme.duoshuo.admin_nickname}}"
  	  </script>
     {% endif %}
  	<script src="/lib/ua-parser/ua-parser.min.js"></script>
  	<script src="/js/hook-duoshuo.js"></script>
  {% endif %}
{% endif %}
