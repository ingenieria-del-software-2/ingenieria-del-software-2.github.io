---
layout: page
title: Clases 2021
subtitle: Clases disponibles
---

# Clases 2021
___

{% for lesson in lessons %}

{%unless lesson.years contains 2021 %}
  {%continue%}
{%endif%}

## Clase {{lesson.title}}

{%if lesson.sub-title%}
__{{lesson.sub-title}}__
{%endif%}

{%if lesson.slides-link%}

### Diapositivas

<div class="responsive-wrap">
<!-- this is the embed code provided by Google -->
  <iframe src="https://docs.google.com/presentation/d/{{lesson.slides-link}}/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<!-- Google embed ends -->
</div>

{%endif%}

{%if lesson.video-link%}

### Video

Videos relacionados a la clase

{% for video in lesson.videos %}


#### {{video.title}}
<div class="responsive-wrap">
<iframe src="https://drive.google.com/file/d/{{video.link}}/preview"
width="960" height="569" allowfullscreen></iframe>
</div>

{% endfor %}

{%endif%}

{%if lesson.resources%}

### Recursos

{%endif%}

{% for resource in lesson.resources %}
- [{{resource.title}}]({{resource.link}})
{% endfor %}

___

{% endfor %}


