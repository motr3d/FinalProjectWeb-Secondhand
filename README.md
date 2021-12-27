# ProjectNoWhere
home index.php 
store.php
cart.php
checkout

(keranjang.php) berada pada header.php dan checkout.php
(shop.php) berada action.php, body.php, checkout_process.php, homeaction.php,register.php
pembayaran.php berada pada action.php
pembayaran_process.php berada pada checkout.php
cookie list_barang berada pada login_form, login
(pembayaran_success.php)

Ketika login muncul 2021 berada pada login.php 
	echo "login_success";
			$BackToMyPage = $_SERVER['HTTP_REFERER'];
				if(!isset($BackToMyPage)) {
					header('Location: '.$BackToMyPage);
					echo"<script type='text/javascript'>
					
					</script>";
				} else {
					header('Location: index.php'); // default page
				} 
				



