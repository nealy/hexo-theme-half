{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}

{% block title %} {{  __('title.category')  }}: {{ page.category }} | {{ config.title }} {% endblock %}

{% block content %}

  <section id="posts" class="posts-collapse">
    <div class="collection-title">
      <h2 >
        {{ page.category }}
        <small>{{  __('title.category')  }}</small>
      </h2>
    </div>

    {% for post in page.posts %}
      {{ post_template.render(post) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}

{% endblock %}
