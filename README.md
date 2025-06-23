# DSFR theme for White Pages

This is a graphical theme for [White Pages](https://github.com/ltb-project/white-pages).

[DSFR](https://github.com/GouvernementFR/dsfr) is provided by French Governement.

## Installation

### White Pages

Deploy White Pages on your server.

Minimal version required: **0.5**.

### DSFR framework

The needed files can be installed form [the official git repository](https://github.com/GouvernementFR/dsfr).

Copy them to `htdocs/vendor/dsfr` in the White Pages installation directory.

### DSFR theme

Copy these files into the White Pages installation directory:
* `templates/dsfr/*` : all overriden template files
* `htdocs/css/dsfr/dsfr.css`: custom CSS file

## Theme configuration

In your `config.inc.local.php` adjust these settings:
```php
$custom_tpl_dir = "templates/dsfr";
$background_image = "";
$custom_css = "css/dsfr/dsfr.css";
```
