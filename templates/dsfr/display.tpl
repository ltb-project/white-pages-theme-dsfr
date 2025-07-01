
            <div class="fr-container fr-p-7v fr-background-alt--blue-france">
            <h2 class="card-header text-center fr-pb-4v">
                <p class="card-title">
<!--                     <i class="fa fa-fw fa-{$attributes_map.{$card_title}.faclass}"></i> -->
                    {$entry.{$attributes_map.{$card_title}.attribute}.0}
                </p>
            </h2>

                {if $type === "user"}
                <img src="photo.php?dn={$entry.dn|escape:'url'}" alt="{$entry.{$attributes_map.{$card_title}.attribute}.0}" class="img-fluid mx-auto d-block "/>
                {/if}
            </div>
            <div class="fr-container fr-mt-7v">
                {foreach $card_items as $item}
                {$attribute=$attributes_map.{$item}.attribute}
                {$type=$attributes_map.{$item}.type}
                {$faclass=$attributes_map.{$item}.faclass}

                {if !({$entry.$attribute.0}) && ! $show_undef}
                    {continue}
                {/if}
                    <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--left">
                   <!--     <th class="text-center">
                            <i class="fa fa-fw fa-{$faclass}"></i>
                        </th>-->
                        <div id="table-info-annuaire" class="fr-col-6 hidden-xs" style="border-right-style: solid;border-right-width: 0.3px;border-color: var(--grey-625-425);">
                            <b>{$msg_label_{$item}}</b>
                        </div>
                        <div id="table-info-annuaire" class="fr-col fr-pl-7v">
                        {if ({$entry.$attribute.0})}
                            {foreach $entry.{$attribute} as $value}
                            {include 'value_displayer.tpl' item=$item value=$value type=$type truncate_value_after=10000}
                            {/foreach}
                        {else}
                            <i>{$msg_notdefined}</i><br />
                        {/if}
                        </div>
                    </div>
                {/foreach}

            </div>
{if {$use_vcard} || {$use_updateinfos and $dn == $userdn}}
            <div class="card-footer text-center">
{if {$use_vcard}}
                <a href="index.php?page=display&dn={$entry.dn|escape:'url'}&search={$search}&vcard=1" class="btn btn-secondary" role="button"><i class="fa fa-fw fa-download"></i> {$msg_downloadvcard}</a>
{/if}
{if {$use_updateinfos and $dn == $userdn}}
                <div class="fr-fieldset__element fr-p-0"> <!--dsfr button-->
                        <div class="fr-btns-group--center">
                            <a href="index.php?page=updateinfos" role="button" class="fr-mt-7v fr-btn fr-icon-edit-line fr-btn--icon-right">
                                {$msg_editentry}
                            </a>
                        </div>
                </div>
{/if}
            </div>

{/if}
