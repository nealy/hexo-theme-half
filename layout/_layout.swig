<!doctype html>
<html class="use-motion">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ config.language }}">
  <div class="container one-column {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div id="content" class="content">
          {% block content %}{% endblock %}
        </div>

        {% include '_partials/comments.swig' %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
      </div>
    </footer>

    <div class="back-to-top"></div>
  </div>

  <script type="text/javascript" src="/lib/jquery/jquery.min.js?v=2.2.0"></script>
  <script type="text/javascript" src="/lib/tether/tether.min.js?v=1.1.1"></script>
  <script type="text/javascript" src="/lib/bootstrap/js/bootstrap.min.js?v=4.0.0"></script>

  {% block comment_system %}
    {% include '_scripts/comments/duoshuo.swig' %}
    {% include '_scripts/comments/disqus.swig' %}
  {% endblock %}

  {% include '_scripts/fancy-box.swig' %}
  {% include '_scripts/motion.swig' %}
  <script type="text/javascript" src="/js/utils.js?v={{ theme.version }}"></script>
  <script type="text/javascript" src="/lib/fastclick/fastclick.min.js?v=1.0.6"></script>
  <script type="text/javascript" src="/lib/jquery-lazyload/jquery.lazyload.js?v=1.9.7"></script>
  <script type="text/javascript" src="/js/bootstrap.js?v={{ theme.version }}"></script>

  {% include '_partials/analytics/analytics.swig' %}
  
  {% block script_extra %}{% endblock %}

</body>
</html>
