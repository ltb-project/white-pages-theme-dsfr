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
            </ul>
        </div>
        {/if}
    </div>
</footer>
{/if}

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
