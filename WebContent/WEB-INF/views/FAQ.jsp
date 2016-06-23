<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>FAQ</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<style>
/*FAQS*/
.faq_question {
    margin: 0px;
    padding: 0px 0px 5px 0px;
    display: inline-block;
    cursor: pointer;
    font-weight: bold;
}
 
.faq_answer_container {
    height: 0px;
    overflow: hidden;
    padding: 0px;
}
</style>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script>
 $(document).ready(function() {
 
    $('.faq_question').click(function() {
 
        if ($(this).parent().is('.open')){
            $(this).closest('.faq').find('.faq_answer_container').animate({'height':'0'},500);
            $(this).closest('.faq').removeClass('open');
 
            }else{
                var newHeight =$(this).closest('.faq').find('.faq_answer').height() +'px';
                $(this).closest('.faq').find('.faq_answer_container').animate({'height':newHeight},500);
                $(this).closest('.faq').addClass('open');
            }
 
    });
 
});
</script>
</head>
<body>
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<jsp:directive.include file="searchheader.jsp" />
			</div>
			<div class="page-content">		
				<div class="page-header">
					<h1>Frequent Ask Questions</h1>
				</div>
				<div class="faq_container">
   					<div class="faq">
      					<div class="faq_question">1. For what purpose is this web-site used for?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              					This web-site is especially used for placement purpose.This web-site will be used by faculty,student,TPO etc.
              					This web-site is used to make placement process more like an online process.Now student,faculty can view status through mobile, computer
              					or any other system having Internet.
              				</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">2. Can a student give a feedback to this process?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">There is an option for the student add a feedback.
              										Feedback are necessary as it can help the system to improve in the future.</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">3. As a faculty,how do I know which company is coming for the placement or which events going to happen each month?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">Faculty can view the events of each month by clicking view events at their home page.</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">4. When can I access the website and complete any process ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">You can log in and complete any  process at any time, day or night.</div>
           				</div>        
    				</div>
<br/>					
    				<div class="faq">
      					<div class="faq_question">5. What should I do if I am getting an error message when trying to complete any process?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">Please mail us to the email given below.Measures will be taken to rectify it and you will not get such error in the future.
              										But first check whether comes in your system only or any other systems.</div>
           				</div>        
    				</div>
  <br/>
    				<div class="faq">
      					<div class="faq_question">6. How do I know whether my application has been received?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">We will send out a confirmation to the e-mail address that you have provided in your profile. 
              										This e-mail is automatically generated and will reach you within minutes of submission.</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">7. I've forgotten my login password. How can I access my data again?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">You need to inform about this to Faculty TPC.Then you will get email at the email id stored in database.
              										This email will contain the password.</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">8. When attaching documents to my application, what size and format should they be?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">The maximum size limit for each file is 2 MB. Please note you may attach up to multiple files in some web pages wherever it is necessary. 	
													Attachments of type of files are specified in each web page.
													Please ensure that you do not upload password-protected PDF files.
							</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">9. How do I know that I have been selected for next round of placement or got selected for a job?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">A list will be provided which gives information which students are selected for second round and which students are selected for the job in that Company</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">10. Which browsers are supported for submitting an application?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">The system supports the following browsers:
							IE8 and higher
							Firefox 3.5 and higher
							Safari 4.0 and higher
							Chrome 20 and higher</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">11. How long is my data stored n this site?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">Data stored for 5 years and then personal data is deleted only. Data related for statistics are stored.</div>
           				</div>        
    				</div>
 <br/>
    				<div class="faq">
      					<div class="faq_question">12. Do you have further questions? </div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">If you have further questions, you can address these to the Faculty Training Placement Coordinator (FTPC) or Student Training Placement Coordinator(STPC).
  									If the problem is critical then FTPC and STPC will contact to Training placement officer(TPO).</div>
           				</div>        
    				</div>
 				</div>
 				
				<jsp:directive.include file="Footer.jsp" />
			</div>
			<!-- /.page-content -->
		</div>
	</div>

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	
</body>
</html>