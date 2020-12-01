<?php

exec('clear');

echo("\nUpdating LSkript...\n\n\n\n");
    sleep(2);

echo("Removing Old Version...\n\n");
    sleep(1);
    exec('sudo rm ~/LSkript/lskr');

echo("Installing New Version...\n\n");
    sleep(1);
    exec('sudo wget https://raw.githubusercontent.com/LSkript/LSkript/main/lskr -P ~/LSkript');

echo("\n\n\n\nUpdate Complete!\n\n\n\n");
    sleep(2);
    exec('clear');
