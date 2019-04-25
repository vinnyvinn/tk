<?php

// your cPanel username. Replace root with your cPanel username

$cpanel_user = 'teamkazi';

// your cPanel password. Replace 'password; with your cPanel password.

$cpanel_pass = 'v~v@vm.8XM?(';

// your cPanel skin. Replace x2 with your cpanel skin in use.

$cpanel_skin = 'paper_lantern';

// your cPanel domain

$cpanel_host = 'teamkazi.com';

// subdomain name that you desire to be created

$subdomain = 'tested';

// Checks that port 2082 is open for your cPanel. This is open by default.

$sock = fsockopen($cpanel_host,2082);
if(!$sock) {
print('Socket error');
exit();
}

// Authenticates username and password for cPanel

//http://cpanel.teamkazi.com/cpsess8846566793/frontend/paper_lantern/subdomain/doadddomain.html?domain=tester12&rootdomain=teamkazi.com&dir=public_html&go=Create

$pass = base64_encode("$cpanel_user:$cpanel_pass");
$in = "GET /frontend/$cpanel_skin/subdomain/doadddomain.html?rootdomain=$cpanel_host&domain=$subdomain&dir=public_html&go=Create";
$in .= "HTTP/1.0rn";
$in .= "Host:$cpanel_hostrn";
$in .= "Authorization: Basic $passrn";
$in .= "rn";

// Creates a subdomain after authentication of credentials.

fputs($sock, $in);
while (!feof($sock)) {
$result .= fgets ($sock,128);
}
fclose($sock);

echo $result;