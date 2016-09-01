<div style="border-bottom: 1px solid #cccccc;padding-bottom:10px;">
  <h2><?php echo $text_new_customer; ?></h2>
  <p><?php echo $text_checkout; ?></p>
  <label for="register">
    <?php if ($account == 'register') { ?>
    &nbsp;&nbsp;<input type="radio" name="account" value="register" id="register" checked="checked" />
    <?php } else { ?>
    &nbsp;&nbsp;<input type="radio" name="account" value="register" id="register" />
    <?php } ?>
    <b><?php echo $text_register; ?></b></label>
  <br />
  <?php if ($guest_checkout) { ?>
  <label for="guest">
    <?php if ($account == 'guest') { ?>
    &nbsp;&nbsp;<input type="radio" name="account" value="guest" id="guest" checked="checked" />
    <?php } else { ?>
    &nbsp;&nbsp;<input type="radio" name="account" value="guest" id="guest" />
    <?php } ?>
    <b><?php echo $text_guest; ?></b></label>
  <br />
  <?php } ?>
  <br />
  <p><?php echo $text_register_account; ?></p>
  <input type="button" value="" id="button-account" class="ss-continue-button" />
  <br />
  <br />
</div>
<div id="login" style="padding-top:10px;">
  <h2><?php echo $text_returning_customer; ?></h2>
  <p><?php echo $text_i_am_returning_customer; ?></p>
  <b>&nbsp;Alamat Email <span class="required">*</span></b><br />
  <input type="text" name="email" value="" style="width:360px;" />
  <br />
  <br />
  <b>&nbsp;Kata Sandi <span class="required">*</span></b><br />
  <input type="password" name="password" value="" style="width:360px;" />
  <br />
  <a href="<?php echo $forgotten; ?>" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:12px;color:#a0d0b0;">Lupa Kata Sandi</a><br />
  <br />
  <input type="button" value="" id="button-login" class="ss-login-button" /><br />
  <br />
</div>