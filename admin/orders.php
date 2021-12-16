
    <?php
session_start();
include("../db.php");

error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$id_pesanan=$_GET['id_pesanan'];

/*this is delet query*/
mysqli_query($con,"delete from  data_pesanan where id_pesanan='$id_pesanan'")or header("location: barangpesanan.php");

} 

///pagination
$page=$_GET['page'];

if($page=="" || $page=="1")
{
$page1=0;	
}
else
{
$page1=($page*10)-10;	
}

include "sidenav.php";
include "topheader.php";
?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-14">
            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title">Orders  / Page <?php echo $page;?> </h4>
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter " id="">
                    <thead class=" text-primary">
                      <tr><th>Nomer Pesanan</th><th>Id User</th><th>Nama Kostumer</th><th>Email</th><th>Alamat</th><th>Kota</th><th>Kode Pos</th><th>Harga Keseluruhan</th><th>Nomer Kartu Pembayaran</th>
                    </tr></thead>
                    <tbody>
                      <?php 
                        $result=mysqli_query($con,"select id_pesanan,user_id, f_name, email, alamat, kota, kode_pos, total_amt, cardnumber from data_pesanan ")or die ("query 1 incorrect.....");

                        while(list($id_pesanan,$user_id,$f_name,$email,$alamat,$kota,$kodepos,$total_amt,$cardnumber)=mysqli_fetch_array($result))
                        {	
                        echo "<tr><td>$id_pesanan</td><td>$user_id</td><td>$f_name</td><td>$email</td><td>$alamat</td><td>$kota</td><td>$kodepos</td><td>$total_amt</td><td>$cardnumber</td>

                        <td>
                        <a class=' btn btn-danger' href='orders.php?id_pesanan=$id_pesanan&action=delete'>Delete</a>
                        </td></tr>";
                        }
                        ?>
                    </tbody>
                  </table>
                  
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      <?php
include "footer.php";
?>