<?php
session_start();
error_reporting(1);

$db_config_path = '../application/config/database.php';

if (!isset($_SESSION["license_code"])) {
    $_SESSION["error"] = "Invalid purchase code!";
    header("Location: index.php");
    exit();
}

if (isset($_POST["btn_admin"])) {

    $_SESSION["db_host"] = $_POST['db_host'];
    $_SESSION["db_name"] = $_POST['db_name'];
    $_SESSION["db_user"] = $_POST['db_user'];
    $_SESSION["db_password"] = $_POST['db_password'];


    /* Database Credentials */
    defined("DB_HOST") ? null : define("DB_HOST", $_SESSION["db_host"]);
    defined("DB_USER") ? null : define("DB_USER", $_SESSION["db_user"]);
    defined("DB_PASS") ? null : define("DB_PASS", $_SESSION["db_password"]);
    defined("DB_NAME") ? null : define("DB_NAME", $_SESSION["db_name"]);

    /* Connect */
    $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    $connection->query("SET CHARACTER SET utf8");
    $connection->query("SET NAMES utf8");

    /* check connection */
    if (mysqli_connect_errno()) {
        $error = 0;
    } else {
        
        mysqli_query($connection, "UPDATE settings SET version = '2.0' WHERE id = 1;");

        mysqli_query($connection, "ALTER TABLE `settings` ADD `site_url` VARCHAR(255) NULL DEFAULT NULL AFTER `time_zone`;");

        mysqli_query($connection, "INSERT INTO `features` (`id`, `name`, `slug`, `is_limit`, `basic`, `standared`, `premium`) VALUES (NULL, 'Custom Domain', 'custom-domain', '0', NULL, NULL, NULL);");

        mysqli_query($connection, "ALTER TABLE `payment_user` ADD `proof` VARCHAR(255) NULL DEFAULT NULL AFTER `payment_method`;");

        mysqli_query($connection, "ALTER TABLE `users` ADD `offline_details` TEXT NULL DEFAULT NULL AFTER `flutterwave_secret_key`, ADD `enable_offline_payment` INT NULL DEFAULT '0' AFTER `offline_details`;");

        mysqli_query($connection, "ALTER TABLE `settings` ADD `openai_key` VARCHAR(255) NULL AFTER `offline_details`, ADD `openai_model` VARCHAR(255) NULL AFTER `openai_key`, ADD `enable_openai` INT NULL DEFAULT '0' AFTER `openai_model`;");

        mysqli_query($connection, "ALTER TABLE `settings` ADD `enable_cdomain` INT NULL DEFAULT '1' AFTER `enable_openai`;");
        

        mysqli_query($connection, "
            INSERT INTO `lang_values` (`type`, `label`, `keyword`, `english`) VALUES
            ('admin', 'Custom Domain', 'custom-domain', 'Custom Domain'),
            ('admin', 'Domains', 'domain', 'Domains'),
            ('admin', 'Requests', 'request', 'Requests'),
            ('admin', 'Current domain', 'current-domain', 'Current domain'),
            ('admin', 'Custom domain', 'custom-domain', 'Custom domain'),
            ('admin', 'Approve', 'approve', 'Approve'),
            ('admin', 'Short details', 'short-details', 'Short details'),
            ('admin', 'Host', 'host', 'Host'),
            ('admin', 'ttl', 'ttl', 'TTL'),
            ('admin', 'two', 'two', 'two'),
            ('admin', 'One', 'one', 'one'),
            ('admin', 'IP', 'ip', 'IP'),
            ('admin', 'Write details here', 'write-details-here', 'Write details here'),
            ('admin', 'Domain Requests', 'domain-requests', 'Domain Requests'),
            ('admin', 'Current Url', 'current-url', 'Current Url'),
            ('admin', 'Domain Settings', 'domain-settings', 'Domain Settings'),
            ('admin', 'Custom Domains', 'custom-domains', 'Custom Domains'),
            ('admin', 'Your Server IP Address', 'server-ip-address', 'Your Server IP Address'),
            ('admin', 'This ip address will be used to setup users custom domain > DNS settings', 'ip-help-info', 'This ip address will be used to setup users custom domain > DNS settings'),
            ('admin', 'DNS Settings', 'dns-settings', 'DNS Settings'),
            ('admin', 'Upload an Example Screenshot', 'upload-an-example-screenshot', 'Upload an Example Screenshot'),
            ('admin', 'This part will be shown for your users to setup custom domain > DNS settings', 'user-dns-settings-types', 'This part will be shown for your users to setup custom domain > DNS settings'),
            ('admin', 'Before going to submit your custom domain request make sure you have purchased this domain and its ready to use', 'custom-domain-user-warning-info', 'Before going to submit your custom domain request make sure you have purchased this domain and its ready to use'),
            ('admin', 'Default Url', 'default-url', 'Default Url'),
            ('admin', 'Openai API', 'openai-api', 'Openai API'),
            ('admin', 'Openai API Key', 'openai-api-key', 'Openai API Key'),
            ('admin', 'Openai Model', 'openai-model', 'Openai Model'),
            ('admin', 'Enable to allow openai in this system', 'enable-openai', 'Enable to allow openai in this system'),
            ('admin', 'Ai Response', 'ai-response', 'Ai Response'),
            ('admin', 'Generate', 'generate', 'Generate'),
            ('admin', 'Advanced settings', 'advanced-settings', 'Advanced settings'),
            ('admin', 'Content creativity level', 'content-creativity-level', 'Content creativity level'),
            ('admin', 'Output Variations', 'output-variations', 'Output Variations'),
            ('admin', 'Max words', 'max-wrods', 'Max words'),
            ('admin', 'No content yet', 'no-content-yet', 'No content yet'),
            ('admin', 'Output', 'output', 'Output'),
            ('admin', 'Documents', 'documents', 'Documents'),
            ('admin', 'Low', 'low', 'Low'),
            ('admin', 'Medium', 'medium', 'Medium'),
            ('admin', 'High', 'high', 'High'),
            ('admin', 'Generate AI Response', 'generate-ai-response', 'Generate AI Response'),
            ('admin', 'Give some directions about your topic', 'give-some-directions-about-your-topic', 'Give some directions about your topic'),
            ('admin', 'Enable to allow custom domain feature for users', 'enable-cdomain', 'Enable to allow custom domain feature for users');
        ");


        // import database table
        $query = '';
          $sqlScript = file('sql/domains.sql');
          foreach ($sqlScript as $line) {
            
            $startWith = substr(trim($line), 0 ,2);
            $endWith = substr(trim($line), -1 ,1);
            
            if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
              continue;
            }
              
            $query = $query . $line;
            if ($endWith == ';') {
              mysqli_query($connection, $query) or die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query. '</b></div>');
              $query= '';   
            }
        }


        // import database table
        $query = '';
          $sqlScript = file('sql/domain_settings.sql');
          foreach ($sqlScript as $line) {
            
            $startWith = substr(trim($line), 0 ,2);
            $endWith = substr(trim($line), -1 ,1);
            
            if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
              continue;
            }
              
            $query = $query . $line;
            if ($endWith == ';') {
              mysqli_query($connection, $query) or die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query. '</b></div>');
              $query= '';   
            }
        }

            
      /* close connection */
      mysqli_close($connection);

      $redir = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
      $redir .= "://" . $_SERVER['HTTP_HOST'];
      $redir .= str_replace(basename($_SERVER['SCRIPT_NAME']), "", $_SERVER['SCRIPT_NAME']);
      $redir = str_replace('updates/v2.0/', '', $redir);
      header("refresh:5;url=" . $redir);
      $success = 1;
    }



}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Service FMM; Update Installer</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/libs/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,500,600,700&display=swap" rel="stylesheet">
    <script src="assets/js/jquery-1.12.4.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-md-offset-2">

                <div class="row">
                    <div class="col-sm-12 logo-cnt">
                        <p>
                           <img src="assets/img/logo.png" alt="">
                       </p>
                       <h1>Welcome to the update installer</h1>
                   </div>
               </div>

               <div class="row">
                <div class="col-sm-12">

                    <div class="install-box">

                        <div class="steps">
                            <div class="step-progress">
                                <div class="step-progress-line" data-now-value="100" data-number-of-steps="3" style="width: 100%;"></div>
                            </div>
                            <div class="step" style="width: 50%">
                                <div class="step-icon"><i class="fa fa-arrow-circle-right"></i></div>
                                <p>Start</p>
                            </div>
                            <div class="step active" style="width: 50%">
                                <div class="step-icon"><i class="fa fa-database"></i></div>
                                <p>Database</p>
                            </div>
                        </div>

                        <div class="messages">
                            <?php if (isset($message)) { ?>
                            <div class="alert alert-danger">
                                <strong><?php echo htmlspecialchars($message); ?></strong>
                            </div>
                            <?php } ?>
                            <?php if (isset($success)) { ?>
                            <div class="alert alert-success">
                                <strong>Completing Updates ... <i class="fa fa-spinner fa-spin fa-2x fa-fw"></i> Please wait 5 second </strong>
                            </div>
                            <?php } ?>
                        </div>

                        <div class="step-contents">
                            <div class="tab-1">
                                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                                    <div class="tab-content">
                                        <div class="tab_1">
                                            <h1 class="step-title">Database</h1>
                                            <div class="form-group">
                                                <label for="email">Host</label>
                                                <input type="text" class="form-control form-input" name="db_host" placeholder="Host"
                                                value="<?php echo isset($_SESSION["db_host"]) ? $_SESSION["db_host"] : 'localhost'; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Database Name</label>
                                                <input type="text" class="form-control form-input" name="db_name" placeholder="Database Name" value="<?php echo @$_SESSION["db_name"]; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Username</label>
                                                <input type="text" class="form-control form-input" name="db_user" placeholder="Username" value="<?php echo @$_SESSION["db_user"]; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Password</label>
                                                <input type="password" class="form-control form-input" name="db_password" placeholder="Password" value="<?php echo @$_SESSION["db_password"]; ?>">
                                            </div>

                                        </div>
                                    </div>

                                    <div class="buttons">
                                        <a href="index.php" class="btn btn-success btn-custom pull-left">Prev</a>
                                        <button type="submit" name="btn_admin" class="btn btn-success btn-custom pull-right">Finish</button>
                                    </div>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


        </div>


    </div>


</div>

<?php

unset($_SESSION["error"]);
unset($_SESSION["success"]);

?>

</body>
</html>

