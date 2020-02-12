<div class="page-header">
    <h1>Login Pemilih</h1>
</div>
<div class="row">
    <div class="col-md-4">        
        <?php if($_POST) include 'aksi.php'; ?>
        <form class="form-signin" action="?m=login_pemilih" method="post">                        
            <div class="form-group">
                <label>No Induk(NISN)</label>
                <input type="text" class="form-control" placeholder="No Induk(NISN)" name="user" autofocus />
            </div>
            <div class="form-group">            
                <label>Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" />  
            </div>      
            <div class="form-group">                
                <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-log-in"></span> Masuk</button>                
            </div>    
            <p>Login sudah voting = nis: 1234567890, pass: 123</p>
            <p>Login belum voting = nis: 0897564231, pass: 123</p>    
        </form>      
    </div>
</div>