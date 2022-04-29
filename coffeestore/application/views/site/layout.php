<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('site/head',$this->data); ?>
</head>
<body>
	<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/625f8dc87b967b11798b8a37/1g12k3mhl';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
	<div class="container">
		<?php $this->load->view('site/header',$this->data); ?>
		<?php $this->load->view('site/slider',$this->data); ?>
		<?php $this->load->view($temp,$this->data); ?>
		<?php $this->load->view('site/footer',$this->data); ?>
	</div>
    <script src="<?php echo public_url('site/'); ?>bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
