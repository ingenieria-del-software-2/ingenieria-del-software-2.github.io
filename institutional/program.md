---
layout: page
title: Material de referencia
subtitle: Recursos utiles para complementar el contenido visto en clase
---

# Programa detallado

{% for resource in site.data.resources %}
  
  ## {{resource.title}}
  
  _{{resource.sub-title}}_
  
  ### Temas relacionados
  {% for topic in resource.topic %}
  - {{topic}}
  {% endfor %}

  ### Links
  {% for link in resource.links %}
  - [{{link}}]({{link}})
  {% endfor %}
{% endfor %}