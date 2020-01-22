---
layout: page
title: Docentes
subtitle: Información sobre la materia
---

<table class="table table-borderless text-center">
  <tr>
    <td></td>
    <td>
      <h2 class="hidden-xxs">Docentes</h2>
    </td>
    <td></td>
  </tr>
  
{% for ayudante in site.data.docentes.equipo %}
    <p hidden>{% increment counter %}</p>
    {% assign mod = counter | minus:1 | modulo:3 %}
    {% if mod == 0 %}<tr>{% endif %}
    <td>
      <div class='docente'>
        <img src="{{site.baseurl}}{{ayudante.foto}}" title="{{ayudante.nombre}}" alt="{{ayudante.nombre}}" class="center-block img-rounded img-responsive docente-imagen" />
        <span class="hidden-xxs">{{ayudante.nombre}}</span>
        <div class="docente-social">
          {%if ayudante.mail%}<a href="mailto:{{ayudante.mail}}" class="btn-social btn-outline social-link"><i class="fa fa-fw fa-envelope"></i></a>{%endif%}
          {%if ayudante.github%}<a href="https://github.com/{{ayudante.github}}" class="btn-social btn-outline social-link"><i class="fab fa-fw fa-github"></i></a>{%endif%}
        </div>
      </div>
    </td>
{% endfor %}
