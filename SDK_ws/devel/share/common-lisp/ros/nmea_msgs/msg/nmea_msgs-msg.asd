
(cl:in-package :asdf)

(defsystem "nmea_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Gpgga" :depends-on ("_package_Gpgga"))
    (:file "_package_Gpgga" :depends-on ("_package"))
    (:file "Gpgsa" :depends-on ("_package_Gpgsa"))
    (:file "_package_Gpgsa" :depends-on ("_package"))
    (:file "Gpgsv" :depends-on ("_package_Gpgsv"))
    (:file "_package_Gpgsv" :depends-on ("_package"))
    (:file "GpgsvSatellite" :depends-on ("_package_GpgsvSatellite"))
    (:file "_package_GpgsvSatellite" :depends-on ("_package"))
    (:file "Gprmc" :depends-on ("_package_Gprmc"))
    (:file "_package_Gprmc" :depends-on ("_package"))
    (:file "Sentence" :depends-on ("_package_Sentence"))
    (:file "_package_Sentence" :depends-on ("_package"))
  ))