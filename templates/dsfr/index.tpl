{include file="header.tpl"}

<header role="banner" class="fr-header">  <!--dsfr header-->
    <div class="fr-header__body">
        <div class="fr-container">
            <div class="fr-header__body-row">
                <div class="fr-header__brand fr-enlarge-link">
                    <div class="fr-header__brand-top">
                        <div class="fr-header__logo">
                         <a href="index.php">
                            <p class="fr-logo">{$msg_dsfr_entity_name nofilter}</p>
                         </a>
                        </div>
                    </div>
                </div>
                    <div class="fr-header__service">
                            <p class="fr-header__service-title">{$msg_dsfr_site_name}</p>
                    </div>

            </div>
        </div>
    </div>
        {include file="menu.tpl"}
</header>

<main role="main" id="content">
  <div class="fr-container fr-mt-8v fr-mt-md-14v fr-mb-2v fr-mb-md-8v">
    <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--center">
      <div class="fr-col-12 fr-col-md-10 fr-col-lg-8">

{if $error}
<div class="fr-alert fr-alert--error fr-mb-md-6v">{$error}
</div>
{else}
{include file="$page.tpl"}
{/if}

      </div>
    </div>
  </div>
</main>


{include file="footer.tpl"}
