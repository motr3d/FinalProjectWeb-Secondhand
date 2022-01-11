$(document).ready(function(){
	cat();
    cathome();
	brand();
	product();
    
    producthome();
    
    
	//cat() adalah fungsi yang mengambil record kategori dari database setiap kali halaman dimuat
	function cat(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{category:1},
			success	:	function(data){
				$("#get_category").html(data);
				
			}
		})
	}
    function cathome(){
		$.ajax({
			url	:	"homeaction.php",
			method:	"POST",
			data	:	{categoryhome:1},
			success	:	function(data){
				$("#get_category_home").html(data);
				
			}
		})
	}
	//brand() adalah fungsi yang mengambil catatan merek dari database setiap kali halaman dimuat
	function brand(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{brand:1},
			success	:	function(data){
				$("#get_brand").html(data);
			}
		})
	}
	//product() adalah fungsi yang mengambil record produk dari database setiap kali halaman dimuat
		function product(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{getProduct:1},
			success	:	function(data){
				$("#get_product").html(data);
			}
		})
	}
    gethomeproduts();
    function gethomeproduts(){
		$.ajax({
			url	:	"homeaction.php",
			method:	"POST",
			data	:	{gethomeProduct:1},
			success	:	function(data){
				$("#get_home_product").html(data);
			}
		})
	}
    function producthome(){
		$.ajax({
			url	:	"homeaction.php",
			method:	"POST",
			data	:	{getProducthome:1},
			success	:	function(data){
				$("#get_product_home").html(data);
			}
		})
	}
   
    
/* ketika halaman berhasil dimuat maka ada daftar kategori ketika pengguna mengklik kategori kita akan mendapatkan id kategori dan
sesuai dengan id akan menampilkan produk
*/
	$("body").delegate(".category","click",function(event){
		$("#get_product").html("<h3>Loading...</h3>");
		event.preventDefault();
		var cid = $(this).attr('cid');
		
			$.ajax({
			url		:	"action.php",
			method	:	"POST",
			data	:	{get_seleted_Category:1,cat_id:cid},
			success	:	function(data){
				$("#get_product").html(data);
				if($("body").width() < 480){
					$("body").scrollTop(683);
				}
			}
		})
	
	})
    $("body").delegate(".categoryhome","click",function(event){
		$("#get_product").html("<h3>Loading...</h3>");
		event.preventDefault();
		var cid = $(this).attr('cid');
		
			$.ajax({
			url		:	"homeaction.php",
			method	:	"POST",
			data	:	{get_seleted_Category:1,cat_id:cid},
			success	:	function(data){
				$("#get_product").html(data);
				if($("body").width() < 480){
					$("body").scrollTop(683);
				}
			}
		})
	
	})

	/* ketika halaman berhasil dimuat maka ada daftar merek ketika pengguna mengklik merek akan mendapatkan id merek dan
sesuai dengan id merek akan menampilkan produk
*/
	// $("body").delegate(".selectBrand","click",function(event){
	// 	event.preventDefault();
	// 	$("#get_product").html("<h3>Loading...</h3>");
	// 	var bid = $(this).attr('bid');
		
	// 		$.ajax({
	// 		url		:	"action.php",
	// 		method	:	"POST",
	// 		data	:	{selectBrand:1,brand_id:bid},
	// 		success	:	function(data){
	// 			$("#get_product").html(data);
	// 			if($("body").width() < 480){
	// 				$("body").scrollTop(683);
	// 			}
	// 		}
	// 	})
	
	// })
/*
Di bagian atas halaman ada kotak pencarian dengan tombol pencarian ketika pengguna memasukkan nama produk maka akan mengambil pengguna
string yang diberikan dan dengan bantuan kueri sql akan mencocokkan string yang diberikan pengguna ke kolom kata kunci database kemudian mencocokkan produk
akan menunjukkan
*/
	// $("#search_btn").click(function(){
	// 	$("#get_product").html("<h3>Loading...</h3>");
	// 	var keyword = $("#search").val();
	// 	if(keyword != ""){
	// 		$.ajax({
	// 		url		:	"action.php",
	// 		method	:	"POST",
	// 		data	:	{search:1,keyword:keyword},
	// 		success	:	function(data){ 
	// 			$("#get_product").html(data);
	// 			if($("body").width() < 480){
	// 				$("body").scrollTop(683);
	// 			}
	// 		}
	// 	})
	// 	}
	// })
	//end


/*
Di sini #login adalah id formulir masuk dan formulir ini tersedia di halaman index.php
dari sini data yang diinput dikirim ke halaman login.php
jika Anda mendapatkan string login_success dari halaman login.php berarti pengguna berhasil login dan window.location adalah
digunakan untuk mengarahkan pengguna dari halaman beranda ke halaman profile.php
*/
	$("#login").on("submit",function(event){
		event.preventDefault();
		$(".overlay").show();
		$.ajax({
			url	:	"login.php",
			method:	"POST",
			data	:$("#login").serialize(),
			success	:function(data){
				if(data == "login_success"){
					window.location.href = "index.php";
				}else if(data == "cart_login"){
					window.location.href = "keranjang.php";
				}else{
					$("#e_msg").html(data);
					$(".overlay").hide();
				}
			}
		})
	})
	//end

	//Dapatkan Informasi Pengguna sebelum checkout
	$("#signup_form").on("submit",function(event){
		event.preventDefault();
		$(".overlay").show();
		$.ajax({
			url : "register.php",
			method : "POST",
			data : $("#signup_form").serialize(),
			success : function(data){
				$(".overlay").hide();
				if (data == "register_success") {
					window.location.href = "keranjang.php";
				}else{
					$("#signup_msg").html(data);
				}
				
			}
		})
	})
	
    
    $("#offer_form").on("submit",function(event){
		event.preventDefault();
		$(".overlay").show();
		$.ajax({
			url : "offersmail.php",
			method : "POST",
			data : $("#offer_form").serialize(),
			success : function(data){
				$(".overlay").hide();
				$("#offer_msg").html(data);
				
			}
		})
	})
    
    
    
	//Dapatkan Informasi Pengguna sebelum checkout berakhir di sini

//Tambahkan Produk ke Keranjang
	$("body").delegate("#product","click",function(event){
		var pid = $(this).attr("pid");
		
		event.preventDefault();
		$(".overlay").show();
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {addToCart:1,proId:pid,},
			success : function(data){
				count_item();
				getCartItem();
				$('#product_msg').html(data);
				$('.overlay').hide();
			}
		})
	})
//Tambahkan Produk ke Keranjang  
//Hitung fungsi item keranjang pengguna
	count_item();
	function count_item(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {count_item:1},
			success : function(data){
				$(".badge").html(data);
			}
		})
	}
//Hitung fungsi item keranjang pengguna berakhir

//Ambil item Cart dari Database ke menu dropdown
	getCartItem();
	function getCartItem(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {Common:1,getCartItem:1},
			success : function(data){
				$("#cart_product").html(data);
                net_total();
                
			}
		})
	}

	//Ambil item Cart dari Database ke menu dropdown

/*
Setiap kali pengguna mengubah qty, akan segera memperbarui jumlah total mereka dengan menggunakan fungsi keyup
tetapi setiap kali pengguna memasukkan sesuatu (seperti ?''"",.()''etc) selain angka maka akan membuat qty=1
jika pengguna memasukkan qty 0 atau kurang dari 0 maka akan membuatnya lagi 1 qty=1
('.total').each() ini adalah pengulangan fungsi loop untuk kelas .total dan dalam setiap pengulangan akan melakukan operasi penjumlahan nilai kelas .total
dan kemudian tunjukkan hasilnya ke kelas .net_total
*/
	$("body").delegate(".qty","keyup",function(event){
		event.preventDefault();
		var row = $(this).parent().parent();
		var price = row.find('.price').val();
		var qty = row.find('.qty').val();
		if (isNaN(qty)) {
			qty = 1;
		};
		if (qty < 1) {
			qty = 1;
		};
		var total = price * qty;
		row.find('.total').val(total);
		var net_total=0;
		$('.total').each(function(){
			net_total += ($(this).val()-0);
		})
		$('.net_total').html("Total : Rp. " +net_total);

	})
//Ubah Kuantitas berakhir di sini

/*
setiap kali pengguna mengklik .remove class, akan mengambil id produk dari baris itu
dan kirimkan ke action.php untuk melakukan operasi penghapusan produk
*/
	   
    $("body").delegate(".remove","click",function(event){
        var remove = $(this).parent().parent().parent();
        var remove_id = remove.find(".remove").attr("remove_id");
        $.ajax({
            url	:	"action.php",
            method	:	"POST",
            data	:	{removeItemFromCart:1,rid:remove_id},
            success	:	function(data){
                $("#cart_msg").html(data);
                checkOutDetails();
                }
            })
    })
    
    
/*
setiap kali pengguna mengklik .update class, akan mengambil id produk dari baris itu
dan kirimkan ke action.php untuk melakukan operasi pembaruan qty produk
*/
	$("body").delegate(".update","click",function(event){
		var update = $(this).parent().parent().parent();
		var update_id = update.find(".update").attr("update_id");
		var qty = update.find(".qty").val();
		$.ajax({
			url	:	"action.php",
			method	:	"POST",
			data	:	{updateCartItem:1,update_id:update_id,qty:qty},
			success	:	function(data){
				$("#cart_msg").html(data);
				checkOutDetails();
			}
		})


	})
	checkOutDetails();
	net_total();
/*
fungsi checkOutDetails() berfungsi untuk dua tujuan
Pertama itu akan mengaktifkan php isset($_POST["Common"]) di halaman action.php dan di dalamnya
ada dua isset funtion yaitu isset($_POST["getCartItem"]) dan satu lagi isset($_POST["checkOutDetials"])
getCartItem digunakan untuk menampilkan item keranjang ke menu dropdown
checkOutDetails digunakan untuk menampilkan item keranjang ke halaman Cart.php
*/
	function checkOutDetails(){
	 $('.overlay').show();
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {Common:1,checkOutDetails:1},
			success : function(data){
				$('.overlay').hide();
				$("#cart_checkout").html(data);
					net_total();
			}
		})
	}
/* fungsi total bersih digunakan untuk menghitung jumlah total item keranjang */
	function net_total(){
		var net_total = 0;
		$('.qty').each(function(){
			var row = $(this).parent().parent();
			var price  = row.find('.price').val();
			var total = price * $(this).val()-0;
			row.find('.total').val(total);
		})
		$('.total').each(function(){
			net_total += ($(this).val()-0);
		})
		$('.net_total').html("Total : " +net_total);
	}

//hapus produk dari keranjang

	page();
	function page(){
		$.ajax({
			url	:	"action.php",
			method	:	"POST",
			data	:	{page:1},
			success	:	function(data){
				$("#pageno").html(data);
			}
		})
	}
	$("body").delegate("#page","click",function(){
		var pn = $(this).attr("page");
		$.ajax({
			url	:	"action.php",
			method	:	"POST",
			data	:	{getProduct:1,setPage:1,pageNumber:pn},
			success	:	function(data){
				$("#get_product").html(data);
			}
		})
	})
})






















