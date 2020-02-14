+++
# Hero widget.
widget = "hero"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 1  # Order that this section will appear.

title = "Introduction to Machine Learning with the Tidyverse"

# Hero image (optional). Enter filename of an image in the `static/img/` folder.
hero_media = "2020-Conf-600x600.jpg"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"
  
  # Background gradient.
  # gradient_start = "#4bb4e3"
  # gradient_end = "#2b94c3"
  
  # Background image.
  # image = ""  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  # image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  # image_position = "center"  # Options include `left`, `center` (default), or `right`.
  # image_parallax = true  # Use a fun parallax-like fixed background effect? true/false
  
  # Text color (true=light or false=dark).
  text_color_light = false
  
[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["100px", "0", "100px", "0"]

# Call to action links (optional).
#   Display link(s) by specifying a URL and label below. Icon is optional for `[cta]`.
#   Remove a link/note by deleting a cta/note block.
[cta]
  url = "materials"
  label = "Start Here"
  icon_pack = "fas"
  icon = "map-marker"
  
[cta_alt]
  url = "https://education.rstudio.com/blog/2020/02/conf20-intro-ml/"
  label = "Read blog post"

# Note. An optional note to show underneath the links.
[cta_note]
  label = 'Photo by Robert Bye on <a href="https://unsplash.com/photos/R-WtV-QyVnY">Unsplash</a>'
+++

Welcome! This is the website for a two-day workshop offered January 27-28 at rstudio::conf 2020 in San Francisco, CA. 

This workshop provided a gentle introduction to machine learning and to [tidymodels](https://github.com/tidymodels). 