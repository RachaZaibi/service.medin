<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RunSql extends CI_Controller {
    public function add_translations() {
        $sql = file_get_contents(APPPATH . '../data/sql/add_translations.sql');
        if ($sql) {
            $this->db->query($sql);
            echo "Translations added successfully.";
        } else {
            echo "SQL file not found or empty.";
        }
    }
}