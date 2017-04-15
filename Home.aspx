<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="content">
	<div class="full-width-container block-1">
		<div class="camera_container">
			<div id="camera_wrap">
				<div class="item" data-src="images/index_img_slider-1.jpg">
					<div class="camera_caption fadeIn">
						<h3>We’ll make you noticeable</h3>
					</div>
				</div>
				<div class="item" data-src="images/index_img_slider-1.jpg">
					<div class="camera_caption fadeIn">
						<h3>We work for Your Relax</h3>
					</div>
				</div>
				<div class="item" data-src="images/index_img_slider-1.jpg">
					<div class="camera_caption fadeIn">
						<h3>Best Design</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Our works</span></h2>
					</header>
					<div class="isotope clearfix">
						<a href="images/index_img-1-big.jpg" class="item-1 w-1"><div class="img_block"><img src="images/index_img-1.jpg" alt="img"></div><i>+</i></a>
						<a href="images/index_img-2-big.jpg" class="item-2 w-2"><div class="img_block"><img src="images/index_img-2.jpg" alt="img"></div><i>+</i></a>
						<a href="images/index_img-3-big.jpg" class="item-3 w-1"><div class="img_block"><img src="images/index_img-3.jpg" alt="img"></div><i>+</i></a>
						<a href="images/index_img-4-big.jpg" class="item-4 w-2"><div class="img_block"><img src="images/index_img-4.jpg" alt="img"></div><i>+</i></a>
						<a href="images/index_img-5-big.jpg" class="item-5 w-1"><div class="img_block"><img src="images/index_img-5.jpg" alt="img"></div><i>+</i></a>
						<a href="images/index_img-6-big.jpg" class="item-6 w-1"><div class="img_block"><img src="images/index_img-6.jpg" alt="img"></div><i>+</i></a>
					</div>
					<a href="#" class="btn">more</a>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-3">
		<div class="container">
			<div class="row">
				<div class="grid_4">
					<header>
						<h2><span>Hi!</span></h2>
					</header>
					<p class="first">Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste.</p>
					<p class="secont">Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed <br> Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.</p>
					<a href="#" class="btn">more</a>
				</div>
				<div class="grid_7 offset_1">
					<header>
						<h2>From the Blog</h2>
					</header>
					<h4><a href="#">10 Nov</a></h4>
					<div class="img_block"><img src="images/index_img-7.jpg" alt=""></div>
					<p>Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed <br><br>Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur</p>
					<a href="#" class="btn">more</a>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-4  parallax-block" data-stellar-background-ratio="0.5">
		<span class="el-1">Your best</span>
		<span class="el-2">projects</span>
		<a href="#" class="btn">more</a>
	</div>
	<div class="full-width-container block-5">
		<div class="container">
			<div class="row">
				<div class="item-1 clearfix">
					<div class="grid_2">
						<div class="img_block"><img src="images/index_img-8.jpg" alt=""></div>
					</div>
					<div class="grid_10">
						<div class="text">Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. <br><br>Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur rci sed r vel lorem sit amet nulla ullamcorper fermentum.</div>
					</div>
				</div>
				<div class="item-2 clearfix">
					<div class="grid_10">
						<div class="text">Tamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. <br><br>Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur rci sed r vel lorem sit amet nulla ullamcorper fermentu.</div>
					</div>
					<div class="grid_2">
						<div class="img_block"><img src="images/index_img-9.jpg" alt=""></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-6">
		<div class="google-map-api"> 
			<div id="map-canvas" class="gmap"></div> 
		</div> 
	</div>
</section>
</asp:Content>

