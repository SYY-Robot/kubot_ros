## *********************************************************
##
## File autogenerated for the kubot_bringup package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'model type', 'max': 255, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'model_type', 'edit_method': "{'enum_description': 'kubot dirver list', 'enum': [{'srcline': 10, 'description': 'Two-wheel Diff Drive', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '2WD_Diff'}, {'srcline': 11, 'description': 'Four-wheel Diff Drive', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '4WD_Diff'}, {'srcline': 12, 'description': 'Three-wheel Omni Drvie', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 101, 'ctype': 'int', 'type': 'int', 'name': '3WD_Omni'}, {'srcline': 13, 'description': 'Four-wheel Omni Drvie', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 102, 'ctype': 'int', 'type': 'int', 'name': '4WD_Omni'}, {'srcline': 14, 'description': 'Four-wheel Mecanum Drvie', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 201, 'ctype': 'int', 'type': 'int', 'name': '4WD_Mecanum'}, {'srcline': 15, 'description': 'unknown model', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 255, 'ctype': 'int', 'type': 'int', 'name': 'UNKNOWN'}]}", 'default': 1, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'The diameter of the wheel', 'max': 500, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheel_diameter', 'edit_method': '', 'default': 30, 'level': 0, 'min': 10, 'type': 'int'}, {'srcline': 291, 'description': 'The track of the wheel', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheel_track', 'edit_method': '', 'default': 300, 'level': 0, 'min': 50, 'type': 'int'}, {'srcline': 291, 'description': 'The resolution of the encoder', 'max': 32000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'encoder_resolution', 'edit_method': '', 'default': 1560, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'The ratio of the motor', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'motor_ratio', 'edit_method': '', 'default': 1, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'The interval of do pid', 'max': 80, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'do_pid_interval', 'edit_method': '', 'default': 10, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'Kp value', 'max': 10000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'kp', 'edit_method': '', 'default': 20, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'Ki value', 'max': 32000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ki', 'edit_method': '', 'default': 20, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'Kd value', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'kd', 'edit_method': '', 'default': 20, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'Ko value', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ko', 'edit_method': '', 'default': 20, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'cmd_last_time value', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'cmd_last_time', 'edit_method': '', 'default': 200, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'liner x', 'max': 500, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_v_liner_x', 'edit_method': '', 'default': 60, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'liner y', 'max': 500, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_v_liner_y', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'angular z', 'max': 2000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_v_angular_z', 'edit_method': '', 'default': 120, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'imu type', 'max': 255, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'imu_type', 'edit_method': "{'enum_description': 'imu type list', 'enum': [{'srcline': 37, 'description': 'mpu6050', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 65, 'ctype': 'int', 'type': 'int', 'name': 'MPU6050'}, {'srcline': 38, 'description': 'adxl345_it43200_hmc5883l', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 69, 'ctype': 'int', 'type': 'int', 'name': 'GY85'}, {'srcline': 39, 'description': 'mpu6050_hmc5883l', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 71, 'ctype': 'int', 'type': 'int', 'name': 'GY87'}, {'srcline': 40, 'description': 'mpu9250', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 92, 'ctype': 'int', 'type': 'int', 'name': 'MPU9250'}, {'srcline': 41, 'description': 'bmi160', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 160, 'ctype': 'int', 'type': 'int', 'name': 'BMI160'}, {'srcline': 42, 'description': 'disable imu', 'srcfile': '/home/rd400/kubot_ros/ros_ws/src/kubot_base_driver/kubot_bringup/cfg/kubot_parameter.cfg', 'cconsttype': 'const int', 'value': 255, 'ctype': 'int', 'type': 'int', 'name': 'nonimu'}]}", 'default': 69, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'sona_distance', 'max': 200, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sona_distance', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

kubot_driver_2WD_Diff = 1
kubot_driver_4WD_Diff = 2
kubot_driver_3WD_Omni = 101
kubot_driver_4WD_Omni = 102
kubot_driver_4WD_Mecanum = 201
kubot_driver_UNKNOWN = 255
kubot_driver_MPU6050 = 65
kubot_driver_GY85 = 69
kubot_driver_GY87 = 71
kubot_driver_MPU9250 = 92
kubot_driver_BMI160 = 160
kubot_driver_nonimu = 255