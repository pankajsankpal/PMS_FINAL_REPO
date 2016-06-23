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
					<h1>FAQ section</h1>
					
				</div>
				<div class="faq_container">
				
				<h3>General</h3><br/>
   					<div class="faq">
      					<div class="faq_question">1. What is CRCE Placements?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              					CRCE Placements is an application for the final year students of Fr.Conceicao College of Engineering (FRCRCE),Bandra(West).
              					It is an attempt to facilitate automation in the Campus Placements process. Various events, companies, job profiles,
              					etc are available. Students can apply for different job profiles & seek their application status within seconds.
              					All functionality of the Placement council has been automated for fast & smooth functioning. You can easily track
              					all the activities & placement statistics of previous years. You can also search your alumni friends & get in touch with them.
              					Everything about us is fantastic.
              				</div>
           				</div>        
    				</div>
<br/>			
    				<div class="faq">
      					<div class="faq_question">2. How do i get started?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				We have already provided a simple guide on <a href="#">'Getting Started'</a> where we have explained all the features in easy to understand language.
              				</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">3. What do I do if I forget my password?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				CRCE Placements has been integrated with the FRCRCE User Administration. Your User Name & Password remains the same ones which you
              				use in your other college related login. If at all, you forget your password, you must contact your Faculty immediately. Without proper
              				login, you are unable to access <b>ANY</b> of your activities.  
              				</div>
           				</div>        
    				</div>    				

<hr/>
				<h3>Companies & Job Profiles</h3><br/>
    				<div class="faq">
      					<div class="faq_question">1. When and how can I apply for a Job?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				Each company associated with CRCE Placements post their Job Profile at <a href="CompaniesPage">Job Posts</a> section. Each Job Profile has
              				specific Eligibility Criteria along with the Job Description. You can click on Apply button & get your application status within seconds.
              				</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">2. Why is my job application rejected ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				When you apply for a specific job profile, our advanced algorithm matches your Educational Qualifications with the Eligibility Criteria
              				specified for the job profile. On occurrence of a mismatch, your application gets rejected.
							</div>
           				</div>        
    				</div>    				
<br/>
    				<div class="faq">
      					<div class="faq_question">3. What do I do when my application is accepted ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				When you apply for a specific job profile, our advanced algorithm matches your Educational Qualifications with the Eligibility Criteria
              				specified for the job profile. On occurrence of a perfect match, your application gets accepted.
              				Your name will get added in the <a href="CompaniesPage">Job Applicants</a> list in that particular company database.
              				All events & schedules will be available at  <a href="ViewEvents">Events</a> & <a href="viewAllotment">Fixtures</a> sections
							</div>
           				</div>        
    				</div>    				
<br/>
    				<div class="faq">
      					<div class="faq_question">4. My job application was rejected. Can I still apply for the job ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				When you apply for a specific job profile, our advanced algorithm matches your Educational Qualifications with the Eligibility Criteria
              				specified for the job profile. On occurrence of a mismatch, your application gets rejected.
              				However, If you are passionate for the company & the job, you can contact your respective branch Student TPC members for further details              				
							</div>
           				</div>        
    				</div>    				
<br/>
    				<div class="faq">
      					<div class="faq_question">5. When & how will I be notified if I am selected for the Job ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				After the entire placement drive of the company is over, the company hands us the list of selected applicants which is displayed at              				
              				the <b>Job Applicants</b> section listed as <b>'Selected Candidates'</b>
							</div>
           				</div>        
    				</div>
<br/>				
<hr>
				<h3>Profile & Activities</h3><br/>	    				
<br/>
    				<div class="faq">
      					<div class="faq_question">1. How do I edit my profile?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">Data stored for 5 years and then personal data is deleted only. Data related for statistics are stored.</div>
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
<br/>
<hr>
	    		<h3>User Experience</h3><br/>		
    				<div class="faq">
      					<div class="faq_question">5. Why do I get see an Error Page ?</div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				These error pages are shown when you either land up in the wrong page or your login has expired due to long time of 
              				inactivity(More than 15 minutes) after you have logged in. Incase you are not able to access any link, go to the
              				Home page & login again.
              				NOTE:<i>If this type of pages are displayed repeatedly, We appologize for the inconvenience caused.
              				Please <a href="ContactUs">Contact</i> us immediately & we promise to resolve the issue as soon as possible              				
              				</div>
           				</div>        
    				</div>
<br/>
    				<div class="faq">
      					<div class="faq_question">10. Which browser support the application? </div>
           				<div class="faq_answer_container">
              				<div class="faq_answer">
              				Our application is flexible & supports all modern Desktop, Tablet & mobile browsers.For best User Experience, we suggest : 
							IE8 and higher
							Firefox 3.5 and higher
							Safari 4.0 and higher
							Chrome 20 and higher</div>
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