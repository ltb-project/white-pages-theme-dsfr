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
* `htdocs/css/dsfr/dsfr.js`: custom JS file

## Theme configuration

In your `config.inc.local.php` adjust these settings:
```php
$custom_tpl_dir = "templates/dsfr";
$background_image = "";
$custom_css = "css/dsfr/dsfr.css";
```

### Entity name

```php
$messages['dsfr_entity_name'] = "Ministère<br>de ...";
```

### Site name

Title displayed at top of the page:
```php
$messages['dsfr_site_name'] = "Annuaire interne du Ministère";
```

### Footer links

In footer content:

```php
$tpl_dsfr_footer_content_links = array(
    array( "id" => "infogouv", "url" => "https://info.gouv.fr"),
    array( "id" => "servicepublic", "url" => "https://service-public.fr"),
    array( "id" => "legifrance", "url" => "https://legifrance.gouv.fr"),
    array( "id" => "datagouv", "url" => "https://data.gouv.fr"),
);

$messages["dsfr_footer_link_infogouv"] = "info.gouv.fr";
$messages["dsfr_footer_link_servicepublic"] = "service-public.fr";
$messages["dsfr_footer_link_legifrance"] = "legifrance.gouv.fr";
$messages["dsfr_footer_link_datagouv"] = "data.gouv.fr";
```

Below footer:
```php
$tpl_dsfr_footer_bottom_links = array(
    array( "id" => "accessibilite", "url" => "#"),
    array( "id" => "aide", "url" => "# "),
    array( "id" => "mentionslegales", "url" => "# "),
    array( "id" => "politiquecookies", "url" => "# "),
);

$messages["dsfr_footer_link_accessibilite"] = "Accessibilité : non/partiellement/totalement conforme";
$messages["dsfr_footer_link_aide"] = "Aide en ligne";
$messages["dsfr_footer_link_mentionslegales"] = "Mentions légales";
$messages["dsfr_footer_link_politiquecookies"] = "Politique des cookies";
```

## Development

To test the theme from current git repository, you will need:
* Docker image of White Pages
* The DSFR framework file
* A local WP configuration file with at least theme configuration described above

You can then run the Docker image with local volumes:
```
docker run -p 8080:80 \
  -v /path/to/conf/config.local.inc.php:/var/www/conf/config.inc.local.php \
  -v /path/to/dsfr/dist:/var/www/htdocs/vendor/dsfr \
  -v $PWD/templates/dsfr:/var/www/templates/dsfr \
  -v $PWD/htdocs/css/dsfr:/var/www/htdocs/css/dsfr \
  -v $PWD/htdocs/js/dsfr:/var/www/htdocs/js/dsfr \
  -it docker.io/ltbproject/white-pages:latest
```

Then connect on [http://localhost:8080](http://localhost:8080)
