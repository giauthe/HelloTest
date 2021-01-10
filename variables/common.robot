*** Variables ***

${retry_time}                       2s
${min_time_out}                     3s
${amount}                           10000
${discount3}                        3%
${discount5}                        5%
${auto_grant_permissions}           111


#setup devices
${no_reset}                              true
${auto_grant_permissions}                true
${new_command_timeout}                   1800
${platform_name_ios}                     iOS
${platformNameAndroid}                   Android

${app}                                      org.reactjs.native.example.SwagLabsMobileApp
${app_package}                              org.reactjs.native.example.SwagLabsMobileApp
${app_wait_activity}                        org.reactjs.native.example.SwagLabsMobileApp

${device_name_ios_1}                        iPhone 8 Plus
${platform_version_ios_1}                   13.3

${deviceNameAndroid_1}                      iPhone 8 Plus
${platformVersionAndroid_1}                  13.3


${txt_username}                             name=test-Username
${txt_password}                             name=test-Password
${btn_login}                                name=test-LOGIN
${txt_err_username_password_message}        name=Username and password do not match any user in this service.
${txt_err_username_message}                 Username is required
${txt_err_password_message}                 Password is required
