<?php

/***
** IVAO India Trainers Availability Main Class
** @author : Leonard Selvaraja -> IN-TA1
** @version : 1.1 (updated 20.0.2018)
** @requires : MySQL Class by Sergey Tsalkov
**

Definitions & Points to remember
TA : Short form for Trainers Availability

***/

class TA {

    public static function auth_data($vid) {
      $sql = "SELECT * FROM `trainers` WHERE `vid` = '$vid'";
      $result = DB::query($sql);
      return $result;
    }

    public static function decipher_dates($dates) {
      $date_array = (explode(",",$dates));
      return $date_array;
    }

    public static function get_all_trainers() {
      $sql = "SELECT * FROM `trainers`";
      $result = DB::query($sql);
      return $result;
    }

    public static function get_all_availability() {
      $date = date('d');
      $month = date('m');
      $year = date('Y');
      $sql = "SELECT * FROM `availability` WHERE `month` = $month AND `year` = $year";
      $result = DB::query($sql);    
      return $result;
    }

    public static function trainer_availability($vid) {
      $date = date('d');
      $month = date('m');
      $year = date('Y');
      $sql = "SELECT dates FROM `availability` WHERE `vid` = $vid AND `month` = $month AND  `year` = $year";
      $result = DB::query($sql);
      return $result;
    }

    public static function get_avl_details($vid) {
      $sql = "SELECT * FROM `availability` WHERE `vid` = $vid";
      $result = DB::queryFirstRow($sql);
      return $result;
    }


    public static function trainers_available_today() {
      $date = date('d');
      $month = date('m');
      $year = date('Y');
      $sql = "SELECT * FROM `availability` WHERE `month` = $month AND `year` = $year";
      $result = DB::query($sql);
      return $result;
    }


    public static function trainers_available_next() {
      $date = date('d');
      $month = date('m');
      $year = date('Y');
      $sql = "SELECT * FROM `availability` WHERE `month` = $month AND `year` = $year";
      $result = DB::query($sql);
      return $result;
    }

    public static function add_form_data($dates, $remarks, $vid) {
      $date = date('d');
      $month = date('m');
      $year = date('Y');
      $sql = "UPDATE `availability` SET `month` = $month, `dates` =  '$dates', `remarks` =  '$remarks' WHERE `vid` = $vid";
      $result = DB::query($sql);

      // A confirmation email to the Trainer that the availability was added.
      return $result;
    }



}

?>
