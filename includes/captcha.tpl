{if $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm)}
    <div class="text-center{if $containerClass}{$containerClass}{else} row justify-content-center{/if}">
        {if $templatefile == 'homepage'}
            <div class="domainchecker-homepage-captcha">
        {/if}

        {if $captcha == "recaptcha"}
            <div id="google-recaptcha-domainchecker" class="form-group recaptcha-container mx-auto"></div>
        {elseif !in_array($captcha, ['invisible', 'recaptcha'])}
            <div class="col-md-12">
                <div id="default-captcha-domainchecker" class="{if $filename == 'domainchecker'}input-group input-group-box {/if}text-center pb-3">
                    <p class="m-b-15 font-14">{lang key="captchaverify"}</p>
<div class="row">
                    <div class="col-lg-2 col-md-2 col-xs-6 text-left">
                        <img id="inputCaptchaImage" data-src="{$systemurl}includes/verifyimage.php" src="{$systemurl}includes/verifyimage.php" align="middle" />
                    </div>

                    <div class="col-lg-10 col-md-10 col-xs-6 text-left">
                        <input id="inputCaptcha" type="text" name="code" maxlength="6" class="form-control {if $filename == 'register'}float-left{/if}"
                               data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}"/>
                    </div>
</div>
                </div>
            </div>
        {/if}

        {if $templatefile == 'homepage'}
            </div>
        {/if}
    </div>
{/if}
