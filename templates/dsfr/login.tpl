<div class="fr-alert fr-alert--info fr-mb-md-6v">{$msg_authenticate|unescape: "html" nofilter}</div>


<div class="fr-container fr-background-alt--grey fr-px-md-0 fr-pt-10v fr-pt-md-14v fr-pb-6v fr-pb-md-10v">
  <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--center">
    <div class="fr-col-12 fr-col-md-10 fr-col-lg-9"> <!--dsfr container for large padding-->
      <form method="post" action="index.php?page=login">

        <div class="fr-fieldset__element"> <!--dsfr login-->
          <div class="fr-input-group">
            <label for="login" class="fr-label">{$msg_login}</label>
            <input type="text" class="fr-input" id="inputLogin" name="login" required />
          </div>
        </div>


        <div class="fr-fieldset__element"> <!--dsfr password-->
          <div class="fr-input-group">
              <label for="inputPassword" class="form-label">{$msg_password}</label>
              <input type="password" class="fr-input" id="inputPassword" name="password" required />
          </div>
        </div>

        <input type="hidden" name="return_page" value="{$return_page}" />
        <input type="hidden" name="action" value="login" />

        <div class="fr-fieldset__element"> <!--dsfr submit button-->
          <div class="fr-btns-group--right">
            <button type="submit" class="fr-mt-2v fr-btn fr-btn">
            M'identifier
            </button>
          </div>
        </div>

      </form>
    </div>
  </div>
</div>
