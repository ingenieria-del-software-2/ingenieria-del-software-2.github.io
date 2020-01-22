---
layout: page
title: Docentes
subtitle: 
---

<table class="table table-borderless text-center">
  <tr>
    <td></td>
    <td>
      <h2 class="hidden-xxs">Equipo</h2>
    </td>
    <td></td>
  </tr>
  
{% for docente in site.data.docentes.equipo %}
    <p hidden>{% increment counter %}</p>
    {% assign mod = counter | minus:1 | modulo:3 %}
    {% if mod == 0 %}<tr>{% endif %}
    <td>
      <div class='docente'>
        {%if docente.mail%} <img src="{{site.baseurl}}{{docente.foto}}" title="{{docente.nombre}}" alt="{{docente.nombre}}" class="center-block img-rounded img-responsive" />
        {% elsif !docente.mail%} <img src="/img/docentes/default.png" title="default" alt="default" class="center-block img-rounded img-responsive" />
        {%endif%}
        
        <span class="hidden-xxs">{{docente.nombre}}</span>
        <div class="">
          {%if docente.mail%}<a href="mailto:{{docente.mail}}" class="btn-social btn-outline social-link"><i class="fa fa-fw fa-envelope"></i></a>{%endif%}
          {%if docente.github%}<a href="https://github.com/{{docente.github}}" class="btn-social btn-outline social-link"><i class="fab fa-fw fa-github"></i></a>{%endif%}
        </div>
      </div>
    </td>
{% endfor %}
