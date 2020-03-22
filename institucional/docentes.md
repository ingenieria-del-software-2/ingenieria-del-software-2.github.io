---
layout: page
title: Docentes
subtitle: 
---

<div class="row">

  
{% for docente in site.data.docentes.equipo %}
    <p hidden>{% increment counter %}</p>
    {% assign mod = counter | minus:1 | modulo:3 %}
    {% if mod == 0 %}<div class="row" style="margin-top:20px;">{% endif %}
    <div class="col-lg-4 col-lg-offset-0 col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3 col-xs-12">
    <div class="row">
      {%if docente.foto%}
       <img src="{{site.baseurl}}{{docente.foto}}" title="{{docente.nombre}}" alt="{{docente.nombre}}" class="img-circle center-block" width="140" height="140"/>
      {%endif%}
    </div>
    <div class="row">
      <h3 class="text-center">{{docente.nombre}}</h3>
    </div>
    <div class="row justify-content-center" >
        <div class="col-lg-4 col-md-4 col-sm-3"> 
             <a href="https://7552-tallerii.slack.com" title="Slack">
              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-slack fa-stack-1x fa-inverse"></i>
              </span>
            </a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-3"> 
            <a href="https://github.com/{{docente.github}}" title="GitHub">
              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-github fa-stack-1x fa-inverse"></i>
              </span>
            </a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-3"> 
          <a href="mailto:{{docente.mail}}" title="Email">
			      <span class="fa-stack fa-lg">
				      <i class="fa fa-circle fa-stack-2x"></i>
				      <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
			      </span>
			    </a>
        </div>
      </div>
    
    </div>
  {% if mod == 2 %}</div>{% endif %}

{% endfor %}
</div>