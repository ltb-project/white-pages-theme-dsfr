</div>

{if $display_footer}
<footer class="fr-footer" role="contentinfo" id="footer">
    <div class="fr-container">
        <div class="fr-footer__body">
            <div class="fr-footer__brand fr-enlarge-link">
                <a href="index.php">
                  <p class="fr-logo">{$msg_dsfr_entity_name nofilter}</p>
                </a>
            </div>
            <div class="fr-footer__content">
                <div>LDAP Tool Box White Pages - version {$version}</div>
              {if $dsfr_footer_content_links}
                  <ul class="fr-footer__content-list">
                    {foreach $dsfr_footer_content_links as $footer_link}
                    <li class="fr-footer__content-item">
                      <a class="fr-footer__content-link" href="{$footer_link.url}" target="_blank" rel="noopener external">{$msg_dsfr_footer_link_{$footer_link.id}}</a>
                    </li>
                    {/foreach}
                  </ul>
              {/if}
            </div>
        </div>
        {if $dsfr_footer_bottom_links}
        <div class="fr-footer__bottom">
            <ul class="fr-footer__bottom-list">
                {foreach $dsfr_footer_bottom_links as $footer_link}
                <li class="fr-footer__bottom-item">
                    <a class="fr-footer__bottom-link" href="{$footer_link.url}">{$msg_dsfr_footer_link_{$footer_link.id}}</a>
                </li>
                {/foreach}
                <li class="fr-footer__bottom-item">
                    <button data-fr-opened="false" aria-controls="display-modal" type="button" id="footer__bottom-link--display" class="fr-btn--display fr-btn" data-fr-js-modal-button="true">Paramètres d'affichage</button>
                </li>

            </ul>
        </div>
        {/if}
    </div>
</footer>
{/if}

<dialog id="display-modal" class="fr-modal" aria-labelledby="display-modal-title" data-fr-js-modal="true">
      <div class="fr-container fr-container--fluid fr-container-md">
        <div class="fr-grid-row fr-grid-row--center">
          <div class="fr-col-12 fr-col-md-6 fr-col-lg-4">
            <div class="fr-modal__body" data-fr-js-modal-body="true" style="--modal-max-height: 1238px;">
              <div class="fr-modal__header">
                <button aria-controls="display-modal" title="Fermer" type="button" id="button-2301" class="fr-btn--close fr-btn" data-fr-js-modal-button="true">
                  Fermer
                </button>
              </div>
              <div class="fr-modal__content">
                <p id="display-modal-title" class="fr-modal__title">
                  Paramètres d’affichage
                </p>

                <div id="fr-display" class="fr-display" data-fr-js-display="true">
                  <fieldset class="fr-fieldset" id="display-fieldset" aria-labelledby="display-fieldset-legend display-fieldset-messages">
                    <legend class="fr-fieldset__legend--regular fr-fieldset__legend" id="display-fieldset-legend">
                      Choisissez un thème pour personnaliser l’apparence du
                      site.
                    </legend>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="light" type="radio" id="fr-radios-theme-light" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-light">
                          Thème Clair
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="dark" type="radio" id="fr-radios-theme-dark" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-dark">
                          Thème Sombre
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="system" type="radio" id="fr-radios-theme-system" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-system">
                          Système

                          <span class="fr-hint-text">Utilise les paramètres système</span>
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-messages-group" id="display-fieldset-messages" aria-live="polite"></div>
                  </fieldset>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</dialog>

<script src="vendor/jquery/js/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
{if $use_datatables}
<script src="vendor/datatables/dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap5.min.js"></script>
<script src="vendor/datatables/dataTables.buttons.min.js"></script>
<script src="vendor/datatables/buttons.colVis.min.js"></script>
<script src="vendor/datatables/buttons.html5.min.js"></script>
<script src="vendor/datatables/buttons.print.min.js"></script>
<script src="vendor/datatables/buttons.bootstrap5.min.js"></script>
<script type="module" src="vendor/dsfr/dsfr.module.min.js"></script>
<script type="text/javascript" nomodule src="vendor/dsfr/dsfr.nomodule.min.js"></script>
{/if}
{if $use_updateinfos}
<script src="js/update.js"></script>
{/if}
<!-- Custom JS for DSFR theme -->
<script src="js/dsfr/dsfr.js"></script>

{literal}
    <script type="text/javascript">
      $(document).ready( function() {
{/literal}
{literal}
    var itemlist = $('table.dataTable').DataTable({
      layout: {
        topStart: {
{/literal}
{if $datatables_page_length_choices}
          pageLength: {
            menu: [ {$datatables_page_length_choices nofilter} ]
          }
{/if}
        },
        bottom2Start: {
            buttons: [
{if $datatables_print_all}
                { extend: 'print', text: '{$msg_print_all}', exportOptions: { columns: ':not(.hidden-print)' }, autoPrint: {if $datatables_auto_print}true{else}false{/if} },
{/if}
{if $datatables_print_page}
                { extend: 'print', text: '{$msg_print_page}', exportOptions: { columns: ':not(.hidden-print)', modifier: { page: 'current' } }, autoPrint: {if $datatables_auto_print}true{else}false{/if} },
{/if}
            ]
        }
      },
{if $datatables_page_length_default}
      pageLength: {$datatables_page_length_default},
{/if}
{literal}
      language: {
        url: "vendor/datatables/i18n/{/literal}{$lang|default:'en'}{literal}.json"
      },
      initComplete: function () {
        $("#spinner").hide();
        $('table.dataTable').show();
      }
    });
{/literal}
{literal}
        $('table tr.clickable').click(function() {
          document.location.href = $(this).find('[href]').attr('href');
        });
      });
    </script>
    <script>
    $(document).ready(function(){
        $('[data-bs-toggle="popover"]').popover({
            trigger: 'hover',
            placement: 'bottom',
            container: 'body'
        });
    });
    </script>
{/literal}

</body>
</html>
