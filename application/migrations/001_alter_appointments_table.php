<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Alter_appointments_table extends CI_Migration {

    public function up()
    {
        // Add `description` column
        $this->dbforge->add_column('appointments', [
            'description' => [
                'type' => 'TEXT',
                'null' => TRUE,
                'after' => 'note'
            ],
        ]);

        // Add `file` column
        $this->dbforge->add_column('appointments', [
            'file' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => TRUE,
                'after' => 'description'
            ],
        ]);
    }

    public function down()
    {
        $this->dbforge->drop_column('appointments', 'description');
        $this->dbforge->drop_column('appointments', 'file');
    }
}
