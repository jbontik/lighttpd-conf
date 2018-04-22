#!/bin/bash
echo "Content-type: text/html"
echo ""
free_space=$(df -h | awk '/(sdsk|emtec)/{print "<tr><td>"$4" free on </td><td>"$6"</td></tr>"}')
#free_space="${free_space//$'\n'/<br />}"
cat <<EOT
<!DOCTYPE html>
<html>
<head>
    <title>Free Space</title>
</head>
<body>
<h1><table cellpadding="10" border="1" style="border-collapse:collapse">$free_space</table></h1>
</body>
</html>
EOT
