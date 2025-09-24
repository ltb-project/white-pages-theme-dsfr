
           <div class="fr-container fr-pt-7v fr-background-alt--blue-france">
            <h2 class="card-header text-center fr-pb-4v">
                <p class="card-title">
                   <!-- <i class="fa fa-fw fa-{$attributes_map.{$card_title}.faclass}"></i>-->
                    {$entry.{$attributes_map.{$card_title}.attribute}.0}
                </p>
            </div>

            <form method="post">

            <input type="hidden" name="dn" value="{$dn}"/>

            <div class="card-body">

                {if $type === "user"}
                <div class="fr-container fr-pb-7v fr-background-alt--blue-france">
                <img src="photo.php?dn={$entry.dn|escape:'url'}" alt="{$entry.{$attributes_map.{$card_title}.attribute}.0}" class="img-fluid mx-auto d-block" />
                    {if $update_photo}
                        <div class="fr-fieldset__element">
                            <div class="fr-btns-group--center">
                                <button type="button" class="fr-mt-7v fr-btn fr-btn" aria-controls="updatePhotoModal" data-fr-opened="false">
                                {$msg_update_photo}
                                </button>
                            </div>
                        </div>
                    {/if}
                </div>
                {/if}

                <div class="fr-container fr-mt-7v text-left">
                {foreach $card_items as $item}
                {$attribute=$attributes_map.{$item}.attribute}
                {$type=$attributes_map.{$item}.type}
                {$faclass=$attributes_map.{$item}.faclass}
                {$multivalued=$attributes_map.{$item}.multivalued}

                {if !({$entry.$attribute.0}) && ! $item|in_array:$update_items}
                    {continue}
                {/if}
                    <div id="update_{$item}" class="row gx-5 row-cols-sm-2 row-cols-1">
                   <!-- <tr id="update_{$item}">-->
                        <!--<th class="text-center">
                            <i class="fa fa-fw fa-{$faclass}"></i>
                        </th>-->


                        <div id="left-col-info-annuaire" class="col fr-pb-md-2v">
                        <!--<th class="d-none d-sm-table-cell">-->
                            <b>{$msg_label_{$item}}</b>
                       <!-- </th>-->
                        </div>
                        <div id="right-col-info-annuaire" class="col fr-pb-2v">
                            {if $item|in_array:$update_items}
                                {if !({$entry.$attribute.0})}
                                {include 'value_editor.tpl' item=$item itemindex=0 value="" type=$type list=$item_list.$item multivalued=$multivalued truncate_value_after=10000}
                                {else}
                                    {foreach from=$entry.{$attribute} item=$value name=updatevalue}
                                        {include 'value_editor.tpl' item=$item itemindex=$smarty.foreach.updatevalue.index multivalued=$multivalued value=$value type=$type list=$item_list.$item truncate_value_after=10000}
                                    {/foreach}
                                {/if}
                            {else}
                                {foreach $entry.{$attribute} as $value}
                                    {include 'value_displayer.tpl' value=$value type=$type truncate_value_after=10000}
                                {/foreach}
                            {/if}
                        </div>
                    </div>
                    <!--</tr>-->
                {/foreach}

                </div>


            </div>
            <div class="card-footer text-center">
             <div class="fr-fieldset__element">
                 <div class="fr-btns-group--center">
                <button type="submit" class="fr-mt-7v fr-btn fr-btn">
                    {$msg_submit}
                </button>
                <a href="?page=display&dn={$dn}" class="fr-mt-7v fr-btn fr-btn--secondary"></i> {$msg_cancelbacktoentry}</a>
                </div>
            </div>
            </div>
            </form>

{if $update_photo}
<dialog id="updatePhotoModal" tabindex="-1" class="fr-modal" aria-labelledby="updatePhotoModalLabel" data-fr-js-modal="true" a data-fr-concealing-backdrop="true">
<div class="fr-container fr-container--fluid fr-container-md">
    <div class="fr-grid-row fr-grid-row--center">
        <div class="fr-col-12 fr-col-md-8 fr-col-lg-6">
            <div class="fr-modal__body">
            <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="dn" value="{$dn}"/>

            <div class="fr-modal__header">
                <button aria-controls="updatePhotoModal" title="Fermer" type="button" class="fr-btn--close fr-btn">Fermer</button>
            </div>

            <div class="fr-modal__content">
                <h2 id="updatePhotoModalLabel" class="fr-modal__title">{$msg_update_photo}</h2>
                <div class="fr-callout fr-mb-6v fr-icon-information-line fr-callout--blue-cumulus"> <!--message d'info-->
                {$msg_select_photo}
                </div>

                <div class="fr-upload-group">
                    <label class="fr-hint-text"> Taille maximale : 500 Ko. Format supporté : jpg. </label>
                    <input class="fr-upload" type="file" id="formFile" name="photo" />
<!--                    <div class="fr-messages-group" id="formFile" aria-live="polite"> à quoi ça sert ?
                    </div>-->
                </div>

                <div class="fr-fieldset__element">
                    <div class="fr-btns-group--center">
                        <button type="submit" class="fr-mt-7v fr-btn fr-btn">
                        {$msg_submit}
                        </button>
                        <button aria-controls="updatePhotoModal" type="button" class="fr-mt-7v fr-btn fr-btn--secondary">
                        {$msg_cancel}
                        </button>
                    </div>
                </div>
            </div>

            </form>
            </div>
        </div>
    </div>
</div>
</dialog>
{/if}
