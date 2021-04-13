---
layout: page
title: Material de referencia
subtitle: Recursos utiles para complementar el contenido visto en clase
---

# Programa detallado

{% for resource in site.data.resources %}
  
## {{resource.title}}
 

{%if resource.sub-title%}
  _{{resource.sub-title}}_
{%endif%}

### Temas relacionados

  {% for topic in resource.topics %}
  - {{topic}}
  {% endfor %}

### Links
  {% for link in resource.links %}
  - [{{link}}]({{link}})
  {% endfor %}

___
{% endfor %}