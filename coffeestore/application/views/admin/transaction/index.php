<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">The order</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			<div class="col-md-8">Management The order</div>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr class="info">										
								<th class="text-center">STT</th>
								<th>Customer name</th>
								<th>Booking date</th>
								<th>Phone number</th>
								<th>Price </th>
								<th>Status</th>		
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<?php 
								$stt = 0;
							foreach ($transaction as $value) { 
								$stt = $stt + 1;
								?>
								<tr>
									<td style="vertical-align: middle;text-align: center;"><strong><?php echo $stt; ?></strong></td>
									<td><strong><?php echo $value->user_name; ?></strong></td>
									<td><strong><?php echo mdate('%H:%i:%s %d/%m/%Y',$value->created); ?></strong></td>
									<td><strong><?php echo $value->user_phone; ?></strong></td>
									<td><strong><?php echo number_format($value->amount); ?></strong> USD</td>
									<td>
										<?php switch ($value->status) {
											case '0':
												echo "<p style='color:red'>Processing </p>";
												break;
											case '1':
												echo "<p style='color:green'>Completed</p>";
												break;
											default:
												echo 'Processing';
												break;
										} ?>
									</td>
									<td class="list_td aligncenter">
							            <a href="<?php echo admin_url('transaction/detail/'.$value->id); ?>" title="Detail"><span class="glyphicon glyphicon-list-alt"></span></a>&nbsp;&nbsp;&nbsp;
							            
								    </td>    
				                </tr>
							<?php } ?>

			    		</tbody>

					</table>

					   <?php echo $this->pagination->create_links(); ?>
					
					
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
