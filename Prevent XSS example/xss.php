<!-- //how to prevent XSS -->
<?php
function _e($string) {
echo htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
}
?>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Escape Output</title>
    </head>
    <body>
    <?php _e('This is a problem: <script>alert("oops");</script'); ?>
    </body>
    </html>
