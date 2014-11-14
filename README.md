# Dashing Cyclist

![](https://c1.staticflickr.com/5/4140/4864110526_92d9fc8557_n.jpg)

Dashing Cyclist can be dropped into Shopify's [Dashing](https://github.com/Shopify/dashing) to cycle through dashboards at a defined interval.

Unlike [Sinatra Cyclist](https://github.com/vrish88/sinatra_cyclist), it loads *all* the dashboards and then visually switches between them, instead of loading each dashboard each time the view changes. This means it avoids visible lag between boards, which is otherwise especially noticable on less powerful devices like the Rasperry Pi.

However, since all the dashboards are loaded at once and kept in memory, it likely isn't suitable when there are lots of boards to cycle through.

## Setup
1. Copy the `assets/javascripts/cycler.coffee` file into your own Dashing project.
2. Create and configure a new board using the template in `dashboards/cycle.haml`.
3. Restart Dashing.
4. Go to `/cycle` in your web browser.

## Configuration
See the template in `dashboards/cycle.haml`.


Any questions? Please [create an issue](https://github.com/markwainwright/dashing-cyclist/issues)!
