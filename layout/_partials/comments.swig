{% if page.comments %}
  <div class="comments" id="comments">
    {% if theme.duoshuo.enable %}
      <div class="ds-thread" data-thread-key="{{ page.path }}"
           data-title="{{ page.title }}" data-url="{{ page.permalink }}">
      </div>
    {% elseif theme.disqus.enable %}
      <div id="disqus_thread">
        <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
      </div>
    {% endif %}
  </div>
{% endif %}
