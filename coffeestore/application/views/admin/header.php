<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Hello: <?php echo $login->name; ?></a>
			<a class="navbar-brand pull-right" id="logout" href="<?php echo admin_url('admin/logout'); ?>">Log out</a>
		</div>
						
	</div><!-- /.container-fluid -->
</nav>
