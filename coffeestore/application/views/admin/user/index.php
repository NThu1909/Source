<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">Customers</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			<div class="col-md-8">List of customers</div>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr class="info">										
								<th>ID</th>										
								<th>Full Name</th>
								<th>Email</th>
								<th>Address</th>										
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
							</tr>
							<?php foreach ($user as $value) { ?>
								<tr>
									<td><strong><?php echo $value->id; ?></strong></td>
									<td><strong ><?php echo $value->name; ?></strong></td>
									<td><strong ><?php echo $value->email; ?></strong></td>
									<td><strong ><?php echo $value->address; ?></strong></td>
									<td class="list_td aligncenter">
							            <a href="../admin/user/order/<?php echo $value->id; ?>" title="Danh sách đơn hàng"><span class="glyphicon glyphicon-list-alt"></span></a>&nbsp;&nbsp;&nbsp;
							            
							            
								    </td>    
				                </tr>
							<?php } ?>
			    		</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
