{% macro list_subtypes(type) -%}
{% for item in type.subtypes recursive %}
  <li class="outer-li"><a href="/{{ item.id|e }}">{{ item.id|e }}</a>
      <ul class="inner">
    {% if item.subtypes %}
        {{ list_subtypes(item.subtypes) }}
    {% endif %}
      </ul>
  </li>
{% endfor %}
{%- endmacro %}

<ul>
{% for item in type.subtypes recursive %}
  {{ list_subtypes(item) }}
{% endfor %}
</ul>
