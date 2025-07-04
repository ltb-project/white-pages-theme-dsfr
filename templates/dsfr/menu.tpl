       <!--  <nav class="navbar navbar-expand-lg bg-body-tertiary" role="navigation">
          <div class="container-fluid">
              <a class="navbar-brand" href="index.php?page=welcome">
                {if $logo}
                <img src="{$logo}" alt="Logo" class="menu-logo img-fluid" />
                {/if}
                {$msg_title}
              </a>-->

<div class="fr-header__menu"> <!-- includes the grey line between logo and nav | j'ai supp modal pour garder le menu en colonne sur telephone -->
  <div class="fr-container">
    <nav class="fr-nav" id="header-navigation" role="navigation" aria-label="Menu principal">
      {if ($require_auth and $userdn) or !$require_auth}
      <ul class="fr-nav__list">

             <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

            <div class="navbar-collapse collapse" id="navbarSupportedContent">

              {if ($require_auth and $userdn) or !$require_auth}
              <ul class="nav navbar-nav me-auto mb-2 mb-lg-0"> {/if} -->

                {if $use_advanced_search}
                <li class="fr-nav__item">
                  <a class="fr-nav__link" {if $page=="advancedsearch"} aria-current="page"{/if} href="index.php?page=advancedsearch"><i class="fa fa-fw fa-search-plus"></i> {$msg_advancedsearch}</a>
                </li>
                {/if}
                {if $use_directory}
                <li class="fr-nav__item">
                  <a class="fr-nav__link" {if $page=="directory"} aria-current="page"{/if} href="index.php?page=directory"><i class="fa fa-fw fa-th-list"></i> {$msg_directory}</a>
                </li>
                {/if}
                {if $use_gallery}
                <li class="fr-nav__item">
                  <a class="fr-nav__link" {if $page=="gallery"} aria-current="page"{/if} href="index.php?page=gallery"><i class="fa fa-fw fa-user-circle"></i> {$msg_gallery}</a>
                </li>
                {/if}
                {if $use_map}
                <li class="fr-nav__item">
                  <a class="fr-nav__link" {if $page=="map"} aria-current="page"{/if}  href="index.php?page=map"><i class="fa fa-fw fa-globe"></i> {$msg_map}</a>
                </li>
                {/if}
                {if $require_auth and $userdn and $display_myaccount_menu}
                <li class="fr-nav__item">
                  <a class="fr-nav__link" {if $page=="display"} aria-current="page"{/if} href="index.php?page=myaccount">{$msg_dsfr_myaccount}</a>
                </li>
                {/if}
                {if (!$require_auth and $logout_link) or ($require_auth and $userdn)}
                <li class="fr-nav__item">
                  <a class="fr-nav__link"  href="{if $require_auth}index.php?page=logout{else}{$logout_link}{/if}"><i class="fa fa-fw fa-sign-out"></i> {$msg_logout}</a>
                </li>
                {/if}
              </ul>
              {if $use_quick_search}
              <form class="d-flex" role="search" action="index.php?page=search" method="post">
                <div class="input-group">
                  <input type="text" class="form-control border-secondary" placeholder="{$msg_search}" name="search" value="{$search}" />
                  <button class="btn btn-default btn-outline-secondary" type="submit">&nbsp;<i class="fa fa-fw fa-search"></i></button>
                </div>
              </form>
              {/if}

              {/if}
    </nav>
  </div>
</div>
