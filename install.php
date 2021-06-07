#!/usr/bin/php -q

<?php

/*

    LightningSkript Installation Script

*/

$user = exec('echo $USER');

exec('clear');
echo "\n";
exec('figlet -f slant LSkript');
sleep(3);

function install($programpre) {

        $program = str_replace(array("\n", "\r"), '', $programpre);

        echo 'Attempting to Install "' . $program . '"';

        exec('apt install ' . $program . ' >/dev/null 2>/dev/null', $output, $return);

        if (!$return) {
            echo "\n\n\n" . '[SUCCESS] "' . $program . '" Installed' . "\n\n\n";
        } else {
            echo "\n\n" . '[ERROR] "' . $program . '" Installation Failed' . "\n\n";
        }

    }



    install('wget');

    exec('sudo mkdir ' . exec('echo ~') . '/LSkript');
    exec('sudo touch ' . exec('echo ~') . '/LSkript/run.php');

    exec('echo alias skr="sudo php ' . exec('echo ~') . '/LSkript/run.php" > ~/.bash_profile');
    exec('echo ' . "alias skr=" . '"' . 'php ~/LSkript/lskr' . '"' . ' > ~/.bash_profile');
    exec('echo "<?php echo Test;" > ~/Documents/lskript/run.php');
    // $file = exec('echo ~') . '/LSkript/run.php';
    // file_put_contents($file, '<?php echo "Test\n";');
    $file = exec('echo ~') . '/.bash_profile';
    file_put_contents($file, 'alias skr="php ~/LSkript/lskr"');

    exec('wget https://raw.githubusercontent.com/LSkript/LSkript/main/lskr -P ~/LSkript');

    // exec("php ~/LSkript/lskr test");





/*
//echo "Hello! What would you like to install?\n";
$toInstall = str_replace(array("\n", "\r"), '', fread(STDIN, 80));
echo $toInstall;
exec('brew install ' . $toInstall . ' >/dev/null', $output, $return);
if (!$return) {
    echo "\n\n" . '[SUCCESS] "' . $toInstall . '" Installed' . "\n\n\n";
} else {
    echo "\n\n" . '[ERROR] "' . $toInstall . '" Installation Failed' . "\n\n\n";
}
// echo 'Hello ' , $strName , "\n";
*/
