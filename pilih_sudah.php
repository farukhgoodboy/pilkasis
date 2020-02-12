<?php
$var = $db->get_var("SELECT tanda_terima FROM tb_pilih WHERE id_pemilih='$_SESSION[id_pemilih]'");
?>
<div class="page-header">
    <h1>Tanda Terima Pemilihan Ketua Osis</h1>
</div>
<p>Hasil suara yang telah Anda masukkan telah tercatat pada sistem E-Voting</p>
<p>Tanda terima pilkasis anda adalah <strong><?=$var?></strong></p>
<p></p>
<p>Catatan: mohon catat atau hafalkan tanda terima pilkasis tersebut untuk melakukan pengecekan hasil perhitungan suara.</p>