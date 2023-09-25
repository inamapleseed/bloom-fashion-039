<div id="account" class="dropdown">
<?php if ($logged) { ?>
	<a href="<?=$account; ?>"><?=$text_account; ?> /</a> <a href="<?=$logout; ?>"><?=$text_logout; ?></a>
<?php }else { ?>
    <a href="<?= $login; ?>" >Login /</a> <a href="<?= $register; ?>" ><?=$text_register; ?></a>
<?php } ?>
</div>