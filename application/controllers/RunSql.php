<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RunSql extends CI_Controller {
    public function add_translations() {
        $sql_files = glob(APPPATH . '../data/sql/*.sql');
        $this->load->database();    
        foreach ($sql_files as $file) {
            $sql = file_get_contents($file);
            if ($sql === false) {
                log_message('error', "Failed to read SQL file: $file");
                continue;
            }
            // Remove comments and empty lines
            $lines = preg_split('/\r\n|\r|\n/', $sql);
            $clean_sql = '';
            foreach ($lines as $line) {
                $trimmed = trim($line);
                if ($trimmed === '' || strpos($trimmed, '--') === 0) continue;
                $clean_sql .= $line . "\n";
            }
            $queries = explode(';', $clean_sql);
            foreach ($queries as $query) {
                $query = trim($query);
                if (!empty($query)) {
                    try {
                        if (!$this->db->simple_query($query)) {
                            log_message('error', "Error executing query: $query");
                        }
                    } catch (Exception $e) {
                        log_message('error', "Exception executing query: $query | " . $e->getMessage());
                    }
                }
            }
        }
        log_message('info', 'SQL files processed successfully.');
        echo "SQL files processed successfully.";   
    }

}