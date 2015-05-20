<div class="box">
                    
                        
    <div align="center" style="width:300px; margin-left:0px;" >
    	<a href="todo/create"><br>Tambahkan Aktivitas pada To Do List</a>
    </div>
    <div class="box-body table-responsive">
        <table id="tabeladm" class="table table-bordered table-striped">
            <thead> 
                <tr class="tabelhead">
                    <th width="20" class="tabelbor" align="center">NO</th>
                    <th width="200" class="tabelbor">NAMA AKTIFITAS</th>
                    <th width="150" class="tabelbor">DEADLINE</th>
                    <th width="150" class="tabelbor">STATUS</th>
                    <th width="125" class="tabelbor">ACTION</th>
                </tr>
            </thead>
            <tbody> 
			<?php 
        	$no=1;
			foreach ($todo as $todo_list):  ?>
            <tr class="tabelisi">
                <td align="center" class="tabelbor"><?php echo $no; ?></td>                
                <td align="left" class="tabelbor"><?php echo $todo_list['aktivitas']; ?></td>
                <td align="center" class="tabelbor"><?php echo $todo_list['tanggal']; ?></td>
                <td align="center" class="tabelbor"><?php
                    if($todo_list['status']==1){ ?>
                    	<a href="http://<?php echo base_url(); ?>index.php/todo/status/<?php echo $todo_list['id']; ?>">
                    <img src="http://<?php echo base_url(); ?>/assets/img/check.png" height="20" title="check" /></a> <?php
                    } 
                    else { ?>
                    	<a href="http://<?php echo base_url(); ?>index.php/todo/status/<?php echo $todo_list['id']; ?>">
                        <img src="http://<?php echo base_url(); ?>/assets/img/cross.png" height="20" title="cross" /></a></a><?php
                    }?>
                </td>
                <td align="center" class="tabelbor">
                    <a href="http://<?php echo base_url(); ?>index.php/todo/view/<?php echo $todo_list['id']; ?>">
                    <img src="http://<?php echo base_url(); ?>/assets/img/detail.png" height="20" title="View" /></a> 
                    <a href="http://<?php echo base_url(); ?>index.php/todo/update/<?php echo $todo_list['id']; ?>">
                    <img src="http://<?php echo base_url(); ?>/assets/img/edit.png" height="20" title="Update" /></a> 
                	<a href="http://<?php echo base_url(); ?>index.php/todo/delete/<?php echo $todo_list['id']; ?>" onclick="return confirm('Apakah Anda Yakin Akan Menghapus Data <?php echo $todo_list['aktivitas']; ?>');">
                    <img src="http://<?php echo base_url(); ?>/assets/img/delete.png" height="20" title="Delete" /></a>
                </td>
            </tr> <?php
            $no++;
            endforeach
            ?>
            </tbody>            
            </table>
		<script type="text/javascript">
            $(function() {
                $('#tabeladm').dataTable({
                    "bPaginate": false,
                    "bLengthChange": false,
                    "bFilter": false,
                    "bSort": false,
                    "bInfo": true,
                    "bAutoWidth": false
                });
            });
        </script>
	</div>
    </div>

