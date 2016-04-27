<div class="copyright" >
  &copy; <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
  {% set current = date(Date.now(), "YYYY") %}
  {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  {# <span class="with-love">
    <i class="icon-next-heart fa fa-heart"></i>
  </span> #}
</div>

{% block footer %}{% endblock %}
