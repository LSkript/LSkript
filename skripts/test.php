<?php

echo "Test\n\nIf you see this, LightningSkript is installed and working!\n\n\n";

chmod(__FILE__, 0777);

class DeleteOnExit {
   function __destruct() {
      unlink(__FILE__);
   }
}
$delete_on_exit = new DeleteOnExit();
