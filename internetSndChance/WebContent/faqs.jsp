<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">
<div id="main">
	<div id="mainContent">
		<h1>Frequently Asked Questions</h1>
		<dl class="faqs">
			<dt>
				<a name="Q01" id="Q01"></a><span>1.</span> My password is not being accepted when I try to log in. What's wrong?
			</dt>
			<dd>
				First, check to see if your CAPS LOCK key is on. Passwords are case sensitive. If this is not the case, it is
				possible that you have not yet registered your email address and password on this website. If this is your first
				time submitting entries over the Internet, you must register before you can log in and submit entries. To register,
				<a href="registerFull">click here</a> to complete and submit your registration information.
			</dd>
			<dt>
				<a name="Q02" id="Q02"></a><span>2.</span> I forgot my password. What should I do?
			</dt>
			<dd>
				If you forgot your password, <a href="forgotPassword.do">click here</a> to have your password emailed to you. Once the verification 
				is received, <a href="forgotPassword.do">click here</a> and select ENTER VERIFICATION CODE.  You will then be prompted to enter 
				the verification code received via email from the Florida Lottery.  Once entered, you will be required to update your password.  
				(If you do not see an email from the Florida Lottery, check your spam or junk folder). It is important NOT to use any special 
				characters (such as &, #, $, %) in the registration name, password or address fields. 
			</dd>
			<dt>
				<a name="Q03" id="Q03"></a><span>3.</span> When I try to submit entries in a Bonus Play promotion, I get
				transferred back to the Log In page. Why does this happen?
			</dt>
			<dd>Your login session has expired or your security/privacy settings are set too high. Try logging in again. If
				the problem persists, on Internet Explorer's menu bar at the top, go to Tools &rarr; Internet Options &rarr; click
				on the Security and Privacy tabs, and make sure the slider bars are set to Medium. If this does not resolve the problem, 
				please review the minimum site requirements <a href="http://www.floridalottery.com/site-requirements">here</a>.</dd>
			<dt>
				<a name="Q04" id="Q04"></a><span>4.</span> When I enter my ticket number into a promotion, I get an error message 
				stating that the ticket is not a valid ticket. What should I do? 
			</dt>
			<dd>First, review the how to play and ticket entry instructions for the promotion you wish to enter to determine 
				ticket eligibility requirements for that promotion.  Next, check that the numbers you are entering match the numbers 
				on your ticket. Finally, if you've verified both of those and you feel that it is an eligible ticket for an active 
				promotion, contact the Lottery's Customer Service Department at (850) 487-7787.</dd>
			<dt>
				<a name="Q05" id="Q05"></a><span>5.</span> How do I update my personal information that I submitted when I registered? 
			</dt>
			<dd>First, click on Log In and sign in with your existing email address and password. Then, click on My Account to get to 
				your account information. Make the necessary changes on your information page, then click on the SUBMIT button to save
				your changes. </dd>
			<dt>
				<a name="Q06" id="Q06"></a><span>6.</span> Can I enter a promotion more than one time? 
			</dt>
			<dd>Promotion details may vary, please refer to the rules for the promotion.</dd>
			<dt>
				<a name="Q07" id="Q07"></a><span>7.</span> How can I be sure that my ticket was successfully entered? 
			</dt>
			<dd>If your ticket was successfully entered, a confirmation message will appear at the top of the Ticket Entry page. 
				Also, previously submitted tickets will be listed at the bottom of the page. If the ticket in question appears at 
				the top of the list, you can be sure that it was successfully entered in the system.</dd>
			<dt>
				<a name="Q08" id="Q08"></a><span>8.</span> How can I see which tickets I have entered? 
			</dt>
			<dd>Each time you enter a ticket into a promotion, a ticket entry record appears at the bottom of the Ticket Entry page 
				for your information and reference. You may check the list against the tickets you are holding. Your most recent 
				ticket entry will appear at the top of the list.  Please be aware that the format in which the ticket number is 
				displayed may vary by promotion. </dd>
			<dt>
				<a name="Q09" id="Q09"></a><span>9.</span> Can I delete an entry? 
			</dt>
			<dd>Once your ticket has been successfully submitted, it cannot be deleted.</dd>
			<dt>
				<a name="Q10" id="Q10"></a><span>10.</span> Do I need to keep my ticket after I have entered it into a promotion? 
			</dt>
			<dd>Please refer to the rules for the specific promotion you are participating in to determine the requirements for 
			claiming your prize. If you are unsure or have additional questions, please contact the Lottery's 
			Customer Service Department at (850) 487-7787.</dd>
			<dt>
				<a name="Q11" id="Q11"></a><span>11.</span> Can I mail my tickets to the Florida Lottery for entry? 
			</dt>
			<dd>Unless otherwise stated in the rules for the promotion you are participating in, tickets submitted through the 
				mail will not be entered and will not be returned. </dd>
			<dt>
				<a name="Q12" id="Q12"></a><span>12.</span> How do I find out if I have been selected as a winner? 
			</dt>
			<dd>If the promotion includes instant prizes or a bonus game, you will be notified instantly after entering a 
				ticket. If the promotion includes drawing prizes, the winners' names and city of residence are posted on the 
				associated promotions WINNERS or DRAWINGS tab following the validation of winners, approximately three business 
				days after a drawing for most promotions (refer to specific promotion rules).</dd>
			<dt>
				<a name="Q13" id="Q13"></a><span>13.</span> How are the promotional drawing winners selected? 
			</dt>
			<dd>Winners are randomly selected from all Internet entries received for each promotion. Promotional drawings are held 
				according to established Lottery procedures.</dd>
			<dt>
				<a name="Q14" id="Q14"></a><span>14.</span> What are my chances of winning a prize in a promotional drawing? 
			</dt>
			<dd>The odds of winning will vary based on the total number of entries received for a drawing.</dd>
			<dt>
				<a name="Q15" id="Q15"></a><span>15.</span> What should I do if I encounter a problem on this website or mobile app? 
			</dt>
			<dd>
				Please visit the <a href="http://www.floridalottery.com/site-requirements" target="_blank">Site Requirements</a>
				section of our website for information on the technologies needed to fully experience our site. If you have the
				necessary technologies installed and enabled on your computer and are still experiencing problems, please send an
				email to our <a href="http://www.floridalottery.com/contact" target="_blank">Customer Service Department</a>
				letting us know what problem you are experiencing. We will assist you via return email. The more details you can
				provide about your problem, the better chance we will have of quickly resolving the issue. If you are unsure or have 
				additional questions, please contact the Lottery's Customer Service Department at (850) 487-7787.
			</dd>
			<dt>
				<a name="Q16" id="Q16">16.</a> What is Bonus Play?
			</dt>
			<dd>
			
	<div style="height:315px; width:710px; padding-bottom: 75px; padding-top: 30px;">
				 <iframe width="700" height="350" src="https://www.youtube-nocookie.com/embed/cEb6t_g8iHU?rel=0&amp;autoplay=0&amp;wmode=transparent" style="padding-bottom: 75px;padding-left:100px;" marginwidth="" marginheight="0" scrolling="No" frameborder="0"  allowfullscreen></iframe>	 
	</div>	
</div>
			</dd>
		</dl>
	</div>
</div>