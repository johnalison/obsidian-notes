# How to renew the grid certificante

[[computing]]

From the email:

"The Grid User certificate issued to CERN\johnda will expire in 7 days, on 09/08/2019.

Certificate details:

Serial number:	2a638ff000000006b35c
Distinguished name:	CN=John Alison, CN=664447, CN=johnda, OU=Users, OU=Organic Units, DC=cern, DC=ch"


Steps:
1) Go to https://ca.cern.ch/ca/. 
2) Click "New Grid User Certificate"
3) put in pwd ( XD3Ehht7YhxLmp7g2BhKVb )
4) download certificante
5) got myCertificate.p12

Now follow instructions here: 
https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookStartingGrid#ObtainingCert

6) move the file to the globus directory
7) remove old cert and key:    
	`rm usercert.pem `
    `rm userkey.pem`

8) > openssl pkcs12 -in myCertificate.p12 -clcerts -nokeys -out usercert.pem
   [Have to give password]

9) > openssl pkcs12 -in myCertificate.p12 -nocerts -out userkey.pem
   Have to give cert pwd
   Then create/veriffiy PEM pasa phrase (asd...)

10)

  > chmod 400 userkey.pem
  > chmod 400 usercert.pem
      

11) Copy them to lxplus and LPC

12) then open Mac Keychain Access App
   (Got this by searching spotlight for keychain access)

13) Drag and drop myCertificate.p12 to file list under tab "My Certificates"

14) then clicked on the new entry and set it to always trust

15) I then deleted the certificiate that was going to expire.    	
