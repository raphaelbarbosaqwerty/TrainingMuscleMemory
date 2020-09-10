<?php

function translateCompleted($completed) {
	if($completed == 1) {
		return 'Yes';
	}

	return 'No';
}

function translatePriority($code) {

	$priority = '';
	switch ($code) {
        case 1:
            $priority = 'Low';
            break;
        case 2:
            $priority = 'Average';
            break;
        case 3:
            $priority = 'High';
            break;
    }

    return $priority;
}

function translateDateDb($date) {
	
	if($date == "") {
		return "";
	}

	$data = explode("/", $date);

	if(count($data) != 3) {
		return $data;
	}

	$dateMysql = "{$data[2]}-{$data[1]}-{$data[0]}";

	return $dateMysql;
}

function showDate($date) {

	if($date == "" || $date == "0000-00-00") {
		return "";
	}

	$data = explode("-", $date);
	
	if(count($data) != 3) {
			return $data;
	}

	$dateShow = "{$data[2]}/{$data[1]}/{$data[0]}";

	return $dateShow;
}

function verifyPost() {
	
	if (count($_POST) > 0) {
		return true;
	}

	return false;
}

function verifyDate($date) {
	
	$pattern = '/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}$/';
	$result = preg_match($pattern, $date);

	if (!$result) {
		return false;
	}

	$data = explode('/', $date);

	$day = $data[0];
	$month = $data[1];
	$year = $data[2];

	$result = checkdate($month, $day, $year);

	return $result;
}

function checkUpload($attach) {

	$pattern = '/^.+(\.pdf|\.zip)$/';
	$result = preg_match($pattern, $attach['name']);

	if(!$result) {
		return false;
	}

	move_uploaded_file($attach['tmp_name'], "attachments/{$attach['name']}");

	return true;
}

function sendEmail($task, $attachs = array()) {

	include "libraries/PHPMailer/PHPMailerAutoload.php";

	$body = prepareBodyEmail($task, $attachs);

	$email = new PHPMailer();

	$email->isSMTP();
	$email->Host = "smtp.server.com";
	$email->Port = 587;
	$email->SMTPSecure = "tls";
	$email->SMTPAuth = true;
	$email->Username = "myemailhere@email.com";
	$email->Password = "mypasswordhere";
	$email->setFrom("myemailhere@email.com", "Task reminder!");
	$email->addAddress(EMAIL_NOTIFICATION);
	$email->Subject = "Warning new task: {$task['name']}";
	$email->msgHTML($body);

	foreach($attachs as $attach) {
		$email->addAttachment("attachs/{$attach['file']}");
	}

	$email->send();
}

function prepareBodyEmail($task, $attachs)
{
	ob_start();
	include "template_email.php";

	$bodyRead = ob_get_contents();
	ob_end_clean();

	return $bodyRead;
}