<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="content">
	<div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Our Locations</span></h2>
					</header>
					<div class="content_map">
						<div class="google-map-api"> 
							<div id="map-canvas" class="gmap"></div>
                           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.928155461427!2d105.76310101431851!3d21.035560492923437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1492165657524" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_5">
					<form id="contact-form">
						<div class="contact-form-loader"></div>
							<header>
								<h2><span>Contact Form</span></h2>
							</header>
							<fieldset>
									<label class="name">
										<span class="text">Your Name:</span>
										<input type="text" name="name" placeholder="" value="" data-constraints="@Required @JustLetters" />
											<span class="empty-message">*This field is required.</span>
											<span class="error-message">*This is not a valid name.</span>
									</label>
									<label class="email">
										<span class="text">Your E-mail:</span>
										<input type="text" name="email" placeholder="" value="" data-constraints="@Required @Email" />
										<span class="empty-message">*This field is required.</span>
										<span class="error-message">*This is not a valid email.</span>
									</label>
									<label class="phone">
										<span class="text">Subject:</span>
							              <input type="text" name="state" placeholder="" data-constraints="@JustLetters" />
									</label>
									<label class="message">
										<span class="text">Message:</span>
										<textarea name="message" placeholder="" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
										<span class="empty-message">*This field is required.</span>
										<span class="error-message">*The message is too short.</span>
									</label>
								<div class="cont_btn">
									<a href="#" data-type="reset" class="btn">clear</a>
									<a href="#" data-type="submit" class="btn">send</a>
								</div>
						</fieldset> 
						<div class="modal fade response-message">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Modal title</h4>
									</div>
									<div class="modal-body">
										You message has been sent! We will be in touch soon.
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="grid_6 preffix_1">
					<div>
						<header>
							<h2><span>Contact Information</span></h2>
						</header>
						<p class="el-1">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel
							<br><br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym.
							<br><br>
							Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique.honcuseri tym. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eromus at magna <br><br><br>
						</p>
					</div>
					<div class="grid_3 alpha">
						<div class="address">
							<p>Kí túc xá Mỹ Đình 2 Nam từ liên Hà Nội <br>Đường Nguuyễn Hoàng Khu Đô Thị Mỹ Đình<br>Hàm Nghi Nam Từ Liêm Hà Nội</p>
						</div>
					</div>
					<div class="grid_3">
						<div class="address">
							<p>Telephone:+84 1646 507 902 <br>FAX:+1 800 889 9898 <br>E-mail: <a href="mailto:mail@demolink.org" class="mail">thiennxph04402@fpt.edu.vn</a></p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>

</asp:Content>

