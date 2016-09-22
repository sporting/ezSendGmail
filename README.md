# Use curl to send mail from your gmail account 

## How to Use
1. replace ACCOUNT,PASSWORD,SENDER_NAME to your gmail account, gmail password, sender's name
2. execute ezSendGmail.sh and give 3 input arguments

		ezSendGmail.sh customers@gmail.com "My new website" "welcome to my new website\nhttp://sportingmobile.blogspot.tw/"
3. send an email to multiple people
	1. create a mailto file like below
		<pre>customer1@gmail.com
		customer2@gmail.com
		customer3@xxx.com
		customer4@yyy.com
		customer5@zzz.com</pre>
	2. execute command to send email
	
		`cat mail.lst | while read x;do ezSendGmail.sh $x "Happy teacher's day" "celebrate"; done`
