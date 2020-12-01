<?php

echo "Test\n\nIf you see this, LightningSkript is installed and working!\n\n\n";

class DeleteOnExit {
   function __destruct() {
      unlink(__FILE__);
   }
}
$delete_on_exit = new DeleteOnExit();
