<?php
include "config-2.php";
if($_POST['LMI_PREREQUEST']==1) echo "YES"; // Если предварительный запрос, то пишем yes, если проверка оплаты, то проверяем данные
else{
//Создаём подпись из входящих параметров
$hash = strtoupper(md5($_POST['LMI_PAYEE_PURSE'].$_POST['LMI_PAYMENT_AMOUNT'].$_POST['LMI_PAYMENT_NO'].$_POST['LMI_MODE'].$_POST['LMI_SYS_INVS_NO'].$_POST['LMI_SYS_TRANS_NO'].$_POST['LMI_SYS_TRANS_DATE'].$secret_key.$_POST['LMI_PAYER_PURSE'].$_POST['LMI_PAYER_WM']));
if(($_POST['LMI_HASH'] == $hash) && ($_POST['LMI_PAYMENT_AMOUNT'] == $product[$_POST['FIELD_1']][1])){ //Проверяем нашу подпись, с подписью WM, и цену заплоченную за товар, если подпись и цена сошлись, то:
//Отправляем email-сообщение
site_mail($_POST['FIELD_1'], $_POST['FIELD_2']);
//Пишем в лог разрешение для id операции
$f=fopen("log.txt","a");
fputs($f, $_POST['LMI_SYS_TRANS_NO']."\n");
fclose($f);
}
}
?>