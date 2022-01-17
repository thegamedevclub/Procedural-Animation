extends KinematicBody
tool



var pre_cycle_pos1 = 0; 
var pre_cycle_pos2 = 0; 
var pre_cycle_pos3 = 0; 
var pre_cycle_pos4 = 0; 
var pre_cycle_pos5 = 0; 
var pre_cycle_pos6 = 0; 

var pre_rot_cycle_pos1 = 0; 
var pre_rot_cycle_pos2 = 0; 
var pre_rot_cycle_pos3 = 0; 
var pre_rot_cycle_pos4 = 0; 
var pre_rot_cycle_pos5 = 0; 
var pre_rot_cycle_pos6 = 0; 


var rotation_y = self.rotation.y; #check for rotation direction
var basis_z = self.transform.basis.z; #check for translation direction
var after_rot : Vector3 = -transform.basis.z.normalized();
var pre_transl: Vector3 = -transform.basis.z.normalized(); 

var check_for_movement: Vector3 = Vector3(); 
var check_for_rotation = self.rotation.y; #check for rotation
var timer_control: bool = false;  
var timer_status: int = 0; 

var idle_delay = 0.1; 
var to_idle_time = 0.2; 

func _ready():
	$Timer.wait_time = idle_delay; 

func _process(delta):
	
	var Bone027 = $Armature/Skeleton/ArmatureEditor/Bone/Bone027; 
	var Bone033 = $Armature/Skeleton/ArmatureEditor/Bone/Bone027/Bone033; 
	var Bone037 = $Armature/Skeleton/ArmatureEditor/Bone/Bone027/Bone033/Bone037; 
	var Bone049 = $Armature/Skeleton/ArmatureEditor/Bone/Bone027/Bone033/Bone037/Bone049; 
	var Bone052 = $Armature/Skeleton/ArmatureEditor/Bone/Bone027/Bone033/Bone037/Bone049/Bone052; 
	
	var Bone026 = $Armature/Skeleton/ArmatureEditor/Bone/Bone026; 
	var Bone032 = $Armature/Skeleton/ArmatureEditor/Bone/Bone026/Bone032; 
	var Bone038 = $Armature/Skeleton/ArmatureEditor/Bone/Bone026/Bone032/Bone038; 
	var Bone051 = $Armature/Skeleton/ArmatureEditor/Bone/Bone026/Bone032/Bone038/Bone051; 
	var Bone055 = $Armature/Skeleton/ArmatureEditor/Bone/Bone026/Bone032/Bone038/Bone051/Bone055; 
	
	var Bone025 = $Armature/Skeleton/ArmatureEditor/Bone/Bone025; 
	var Bone031 = $Armature/Skeleton/ArmatureEditor/Bone/Bone025/Bone031; 
	var Bone039 = $Armature/Skeleton/ArmatureEditor/Bone/Bone025/Bone031/Bone039;
	var Bone053 = $Armature/Skeleton/ArmatureEditor/Bone/Bone025/Bone031/Bone039/Bone053; 
	var Bone054 = $Armature/Skeleton/ArmatureEditor/Bone/Bone025/Bone031/Bone039/Bone053/Bone054; 
	
	var Bone024 = $Armature/Skeleton/ArmatureEditor/Bone/Bone024; 
	var Bone036 = $Armature/Skeleton/ArmatureEditor/Bone/Bone024/Bone036; 
	var Bone042 = $Armature/Skeleton/ArmatureEditor/Bone/Bone024/Bone036/Bone042; 
	var Bone043 = $Armature/Skeleton/ArmatureEditor/Bone/Bone024/Bone036/Bone042/Bone043; 
	var Bone046 = $Armature/Skeleton/ArmatureEditor/Bone/Bone024/Bone036/Bone042/Bone043/Bone046;
	
	var Bone023 = $Armature/Skeleton/ArmatureEditor/Bone/Bone023; 
	var Bone035 = $Armature/Skeleton/ArmatureEditor/Bone/Bone023/Bone035; 
	var Bone041 = $Armature/Skeleton/ArmatureEditor/Bone/Bone023/Bone035/Bone041; 
	var Bone044 = $Armature/Skeleton/ArmatureEditor/Bone/Bone023/Bone035/Bone041/Bone044; 
	var Bone047 = $Armature/Skeleton/ArmatureEditor/Bone/Bone023/Bone035/Bone041/Bone044/Bone047; 
	
	var Bone022 = $Armature/Skeleton/ArmatureEditor/Bone/Bone022; 
	var Bone034 = $Armature/Skeleton/ArmatureEditor/Bone/Bone022/Bone034;  
	var Bone040 = $Armature/Skeleton/ArmatureEditor/Bone/Bone022/Bone034/Bone040; 
	var Bone045 = $Armature/Skeleton/ArmatureEditor/Bone/Bone022/Bone034/Bone040/Bone045; 
	var Bone048 = $Armature/Skeleton/ArmatureEditor/Bone/Bone022/Bone034/Bone040/Bone045/Bone048; 
	
	var leg1 = [Bone027, Bone033, Bone037, Bone049, Bone052]; 
	var leg2 = [Bone026, Bone032, Bone038, Bone051, Bone055]; 
	var leg3 = [Bone025, Bone031, Bone039, Bone053, Bone054]; 
	var leg4 = [Bone024, Bone036, Bone042, Bone043, Bone046]; 
	var leg5 = [Bone023, Bone035, Bone041, Bone044, Bone047];
	var leg6 = [Bone022, Bone034, Bone040, Bone045, Bone048];  
	
	#translation.z += delta ; 
	#rotation.y += delta * 0.6; 
	
	if check_for_movement == translation:
		if timer_control == false: 
			$Timer.start(); 
			timer_control = true; 
		
		if timer_status == 1:
			print("status 1")
			var Bone_diff027 = Vector3(85,90,90) - leg1[0].rotation_degrees; 
			var Bone_diff033 = Vector3(19.93,-19.715, 90.636)- leg1[1].rotation_degrees; 
			var Bone_diff037 = Vector3(20.122,19.917,0.07)- leg1[2].rotation_degrees; 
			var Bone_diff049 = Vector3(26.207, 34.616, 17.066)- leg1[3].rotation_degrees; 
			var Bone_diff052 = Vector3(14.22, 32.918, 26.452)- leg1[4].rotation_degrees; 
			
			var Bone_diff024 = Vector3(86, -90,-90)-leg4[0].rotation_degrees; 
			var Bone_diff036 = Vector3(19.93, 19.715, -90.636)-leg4[1].rotation_degrees; 
			var Bone_diff042 = Vector3(20.122, -19.917, -0.069)-leg4[2].rotation_degrees; 
			var Bone_diff043 = Vector3(26.207, -34.616,-17.066)-leg4[3].rotation_degrees; 
			var Bone_diff046 = Vector3(14.22, -32.919, -26.452)-leg4[4].rotation_degrees; 
			
			
			leg1[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg1[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg1[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg1[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg1[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;
			
			leg2[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg2[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg2[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg2[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg2[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;  
			
			leg3[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg3[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg3[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg3[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg3[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;  
			
			leg4[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg4[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg4[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg4[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg4[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			
			leg5[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg5[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg5[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg5[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg5[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			
			leg6[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg6[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg6[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg6[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg6[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			
	elif check_for_rotation == rotation.y:
		if timer_control == false: 
			$Timer.start(); 
			timer_control = true; 
		
		if timer_status == 1:
			print("status 1")
			var Bone_diff027 = Vector3(85,90,90) - leg1[0].rotation_degrees; 
			var Bone_diff033 = Vector3(19.93,-19.715, 90.636)- leg1[1].rotation_degrees; 
			var Bone_diff037 = Vector3(20.122,19.917,0.07)- leg1[2].rotation_degrees; 
			var Bone_diff049 = Vector3(26.207, 34.616, 17.066)- leg1[3].rotation_degrees; 
			var Bone_diff052 = Vector3(14.22, 32.918, 26.452)- leg1[4].rotation_degrees; 
			
			var Bone_diff024 = Vector3(86, -90,-90)-leg4[0].rotation_degrees; 
			var Bone_diff036 = Vector3(19.93, 19.715, -90.636)-leg4[1].rotation_degrees; 
			var Bone_diff042 = Vector3(20.122, -19.917, -0.069)-leg4[2].rotation_degrees; 
			var Bone_diff043 = Vector3(26.207, -34.616,-17.066)-leg4[3].rotation_degrees; 
			var Bone_diff046 = Vector3(14.22, -32.919, -26.452)-leg4[4].rotation_degrees; 
			
			
			leg1[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg1[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg1[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg1[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg1[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;
			
			leg2[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg2[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg2[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg2[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg2[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;  
			
			leg3[0].rotation_degrees = leg1[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff027; 
			leg3[1].rotation_degrees = leg1[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff033; 
			leg3[2].rotation_degrees = leg1[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff037; 
			leg3[3].rotation_degrees = leg1[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff049; 
			leg3[4].rotation_degrees = leg1[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff052;  
			
			leg4[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg4[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg4[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg4[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg4[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			
			leg5[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg5[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg5[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg5[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg5[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			
			leg6[0].rotation_degrees = leg4[0].rotation_degrees + (1-$Timer.time_left) * Bone_diff024; 
			leg6[1].rotation_degrees = leg4[1].rotation_degrees + (1-$Timer.time_left) * Bone_diff036; 
			leg6[2].rotation_degrees = leg4[2].rotation_degrees + (1-$Timer.time_left) * Bone_diff042; 
			leg6[3].rotation_degrees = leg4[3].rotation_degrees + (1-$Timer.time_left) * Bone_diff043; 
			leg6[4].rotation_degrees = leg4[4].rotation_degrees + (1-$Timer.time_left) * Bone_diff046; 
			 
		
	if check_for_movement != translation:
	
		timer_control = false; 
		if rotation_y == self.rotation.y:
			
			
			if (global_transform[3] - pre_transl).dot(transform.basis.z) > 0.1 \
			|| (global_transform[3] - pre_transl).dot(transform.basis.z) < -0.1:
				
				leg_handle_left(0, leg1, pre_cycle_pos1, check_for_movement);
				leg_handle_left(1.7, leg2, pre_cycle_pos2, check_for_movement);
				leg_handle_left(3, leg3, pre_cycle_pos3, check_for_movement);
				
				leg_handle_right(1, leg4, pre_cycle_pos4, check_for_movement);
				leg_handle_right(2.7, leg5, pre_cycle_pos5, check_for_movement);
				leg_handle_right(4, leg6, pre_cycle_pos6, check_for_movement); 

				
				pre_transl = global_transform[3]; 
		else:
			rotation_y = self.rotation.y; 
			after_rot = self.global_transform[3]; 
			
	if check_for_rotation != rotation.y:
		
		timer_control = false; 
		leg_handle_left_rot(0, leg1, pre_rot_cycle_pos1, check_for_rotation); 
		leg_handle_left_rot(1.7, leg2, pre_rot_cycle_pos2, check_for_rotation); 
		leg_handle_left_rot(3, leg3, pre_rot_cycle_pos3, check_for_rotation); 
		
		leg_handle_right_rot(1, leg4, pre_rot_cycle_pos4, check_for_rotation); 
		leg_handle_right_rot(2.7, leg5, pre_rot_cycle_pos5, check_for_rotation); 
		leg_handle_right_rot(4, leg6, pre_rot_cycle_pos6, check_for_rotation); 
	
	check_for_movement = translation; 
	check_for_rotation = rotation.y; 
	basis_z = transform.basis.z; 


func leg_handle_left(time_shift, leg , pre_cycle_pos, check_for_movement):
	

	var dist = self.global_transform[3] - after_rot; 
	
	var cycle_pos = sin(dist.length()*PI - time_shift); 
	
	if pre_cycle_pos != cycle_pos:
		
		if (basis_z + (translation - check_for_movement)).length() > basis_z.length():
			print("forward")
			#period1
			if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
				var Bone27_diff = Vector3(82.422, 90, 90) - Vector3(84.716,90,90)
				var Bone33_diff = Vector3(31.451 ,-19.566, 90.619) - Vector3(25.362,-19.639,90.584)
				var Bone37_diff = Vector3(19.61, 6.229, -4.601) - Vector3(20.008,13.346,-2.186); 
				var Bone49_diff = Vector3(30.722,7.346, 3.866) - Vector3(29.92,16.061,8.272); 
				var Bone52_diff = Vector3(17.456,25.872, 24.526) - Vector3(9.837,41.561,28.258); 

				leg[0].rotation_degrees = Vector3(82.422, 90, 90) - cycle_pos * Bone27_diff
				leg[1].rotation_degrees = Vector3(31.451 ,-19.566, 90.619) - cycle_pos * Bone33_diff; 
				leg[2].rotation_degrees = Vector3(19.61, 6.229, -4.601) - cycle_pos * Bone37_diff;
				leg[3].rotation_degrees = Vector3(30.722,7.346, 3.866) -cycle_pos * Bone49_diff; 
				leg[4].rotation_degrees = Vector3(17.456,25.872, 24.526) - cycle_pos * Bone52_diff; 
						
			#period2
			if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
				var Bone27_diff = Vector3(84.716,90,90) - Vector3(79.992, 90, 90);
				var Bone33_diff = Vector3(25.362,-19.639,90.584) - Vector3(-3.061 ,-19.917, 90.529)
				var Bone37_diff = Vector3(20.008,13.346,-2.186) - Vector3(20, 26.369, 2.263)
				var Bone49_diff = Vector3(29.92,16.061,8.272) - Vector3(27.021,31.517, 15.677)
				var Bone52_diff = Vector3(9.837,41.561,28.258) - Vector3(1.978,55.736,29.728)
				
				leg[0].rotation_degrees = Vector3(84.716,90,90) - (1-cycle_pos) * Bone27_diff
				leg[1].rotation_degrees = Vector3(25.362,-19.639,90.584) - (1-cycle_pos) * Bone33_diff; 
				leg[2].rotation_degrees = Vector3(20.008,13.346,-2.186) - (1-cycle_pos) * Bone37_diff;
				leg[3].rotation_degrees = Vector3(29.92,16.061,8.272) - (1-cycle_pos) * Bone49_diff; 
				leg[4].rotation_degrees = Vector3(9.837,41.561,28.258) - (1-cycle_pos) * Bone52_diff; 
						
			#period3
			if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
				var Bone27_diff = Vector3(79.992, 90, 90) -Vector3(97, 90,90); 
				var Bone33_diff = Vector3(-3.061 ,-19.917, 90.529) - Vector3(3.411,-19.857,90.529);
				var Bone37_diff = Vector3(20, 26.369, 2.263) - Vector3(20.097, 20.097, 1.038); 
				var Bone49_diff = Vector3(27.021,31.517, 15.677) - Vector3(28.723,23.72, 12.027);
				var Bone52_diff = Vector3(1.978,55.736,29.728) - Vector3(11.099, 39.154, 27.821);

				leg[0].rotation_degrees = Vector3(79.992, 90, 90) - abs(cycle_pos) * Bone27_diff
				leg[1].rotation_degrees =  Vector3(-3.061 ,-19.917, 90.529)- abs(cycle_pos) * Bone33_diff; 
				leg[2].rotation_degrees =Vector3(20, 26.369, 2.263) - abs(cycle_pos) * Bone37_diff; 
				leg[3].rotation_degrees = Vector3(27.021,31.517, 15.677)- abs(cycle_pos) * Bone49_diff; 
				leg[4].rotation_degrees = Vector3(1.978,55.736,29.728)- abs(cycle_pos) * Bone52_diff; 

			#period4
			if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
				var Bone27_diff = Vector3(97, 90,90)-Vector3(82.422, 90, 90);
				var Bone33_diff = Vector3(3.411,-19.857,90.529)-Vector3(31.451 ,-19.566, 90.619);
				var Bone37_diff =  Vector3(20.097, 20.097, 1.038)-Vector3(19.61, 6.229, -4.601);
				var Bone49_diff = Vector3(28.723,23.72, 12.027)-Vector3(30.722,7.346, 3.866);
				var Bone52_diff = Vector3(11.099, 39.154, 27.821)-Vector3(17.456,25.872, 24.526);
				
				leg[0].rotation_degrees = Vector3(97, 90,90)- (1-abs(cycle_pos)) * Bone27_diff;
				leg[1].rotation_degrees = Vector3(3.411,-19.857,90.529)- (1-abs(cycle_pos)) * Bone33_diff; 
				leg[2].rotation_degrees = Vector3(20.097, 20.097, 1.038)- (1-abs(cycle_pos)) * Bone37_diff;
				leg[3].rotation_degrees =Vector3(28.723,23.72, 12.027)- (1-abs(cycle_pos)) * Bone49_diff; 
				leg[4].rotation_degrees = Vector3(11.099, 39.154, 27.821)- (1-abs(cycle_pos)) * Bone52_diff; 
		
		if (basis_z + (translation - check_for_movement)).length() < basis_z.length():
			print("backwards")
			#period4
			if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
				var Bone27_diff = Vector3(97, 90,90)-Vector3(79.992, 90, 90)
				var Bone33_diff = Vector3(3.411,-19.857,90.529)-Vector3(-3.061 ,-19.917, 90.529)
				var Bone37_diff =  Vector3(20.097, 20.097, 1.038)-Vector3(20, 26.369, 2.263)
				var Bone49_diff = Vector3(28.723,23.72, 12.027)-Vector3(27.021,31.517, 15.677)
				var Bone52_diff = Vector3(11.099, 39.154, 27.821)-Vector3(1.978,55.736,29.728)
				
				leg[0].rotation_degrees = Vector3(97, 90,90)- cycle_pos * Bone27_diff
				leg[1].rotation_degrees = Vector3(3.411,-19.857,90.529)- cycle_pos * Bone33_diff
				leg[2].rotation_degrees = Vector3(20.097, 20.097, 1.038)- cycle_pos * Bone37_diff
				leg[3].rotation_degrees =Vector3(28.723,23.72, 12.027) - cycle_pos * Bone49_diff
				leg[4].rotation_degrees = Vector3(11.099, 39.154, 27.821)- cycle_pos * Bone52_diff
				
			#period3
			if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
				var Bone27_diff = Vector3(79.992, 90, 90)-Vector3(84.716,90,90) 
				var Bone33_diff = Vector3(-3.061 ,-19.917, 90.529)-Vector3(25.362,-19.639,90.584) 
				var Bone37_diff = Vector3(20, 26.369, 2.263)-Vector3(20.008,13.346,-2.186)
				var Bone49_diff = Vector3(27.021,31.517, 15.677)-Vector3(29.92,16.061,8.272)
				var Bone52_diff = Vector3(1.978,55.736,29.728)-Vector3(9.837,41.561,28.258)

				leg[0].rotation_degrees = Vector3(79.992, 90, 90)- (1-cycle_pos) * Bone27_diff
				leg[1].rotation_degrees =  Vector3(-3.061 ,-19.917, 90.529)- (1-cycle_pos) * Bone33_diff
				leg[2].rotation_degrees =Vector3(20, 26.369, 2.263)- (1-cycle_pos) * Bone37_diff
				leg[3].rotation_degrees = Vector3(27.021,31.517, 15.677)- (1-cycle_pos) * Bone49_diff
				leg[4].rotation_degrees = Vector3(1.978,55.736,29.728)- (1-cycle_pos) * Bone52_diff
				
			#period2
			if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
				var Bone27_diff = Vector3(84.716,90,90) -Vector3(82.422, 90, 90) 
				var Bone33_diff = Vector3(25.362,-19.639,90.584) -Vector3(31.451 ,-19.566, 90.619)
				var Bone37_diff = Vector3(20.008,13.346,-2.186)-Vector3(19.61, 6.229, -4.601)
				var Bone49_diff = Vector3(29.92,16.061,8.272)-Vector3(30.722,7.346, 3.866)
				var Bone52_diff = Vector3(9.837,41.561,28.258)-Vector3(17.456,25.872, 24.526) 
				
				leg[0].rotation_degrees = Vector3(84.716,90,90)- abs(cycle_pos) * Bone27_diff
				leg[1].rotation_degrees = Vector3(25.362,-19.639,90.584) - abs(cycle_pos) * Bone33_diff
				leg[2].rotation_degrees = Vector3(20.008,13.346,-2.186) - abs(cycle_pos) * Bone37_diff
				leg[3].rotation_degrees = Vector3(29.92,16.061,8.272) - abs(cycle_pos) * Bone49_diff
				leg[4].rotation_degrees = Vector3(9.837,41.561,28.258) - abs(cycle_pos) * Bone52_diff

			#period1
			if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
				var Bone27_diff = Vector3(82.422, 90, 90) -Vector3(97, 90,90)
				var Bone33_diff = Vector3(31.451 ,-19.566, 90.619)-Vector3(3.411,-19.857,90.529)
				var Bone37_diff = Vector3(19.61, 6.229, -4.601)-Vector3(20.097, 20.097, 1.038)
				var Bone49_diff = Vector3(30.722,7.346, 3.866) -Vector3(28.723,23.72, 12.027) 
				var Bone52_diff = Vector3(17.456,25.872, 24.526) -Vector3(11.099, 39.154, 27.821)

				leg[0].rotation_degrees = Vector3(82.422, 90, 90) - (1-abs(cycle_pos)) * Bone27_diff;
				leg[1].rotation_degrees = Vector3(31.451 ,-19.566, 90.619) - (1-abs(cycle_pos)) * Bone33_diff;
				leg[2].rotation_degrees = Vector3(19.61, 6.229, -4.601)- (1-abs(cycle_pos)) * Bone37_diff;
				leg[3].rotation_degrees = Vector3(30.722,7.346, 3.866) - (1-abs(cycle_pos)) * Bone49_diff;
				leg[4].rotation_degrees = Vector3(17.456,25.872, 24.526) - (1-abs(cycle_pos)) * Bone52_diff;
			
		if leg[0].name == "Bone027":
			pre_cycle_pos1 = cycle_pos; 
		if leg[0].name == "Bone026":
			pre_cycle_pos2 = cycle_pos; 
		if leg[0].name == "Bone025":
			pre_cycle_pos3 = cycle_pos; 


func leg_handle_right(time_shift, leg , pre_cycle_pos, check_for_movement):
	var dist = self.global_transform[3] - after_rot; 
	var cycle_pos = sin(dist.length()*PI - time_shift); 
	
	if (basis_z + (translation - check_for_movement)).length() > basis_z.length():
		print("forward")
		
		#period1
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
		
			var Bone024_diff = Vector3(93.8, 90, 90) - Vector3(95, 90, 90); 
			var Bone036_diff = Vector3(29.124,19.599,-90.684) -Vector3(26.351, 19.636, -90.667);  
			var Bone042_diff = Vector3(19.395, -3.637, 5.468) -Vector3(19.924, -11.324, 2.878);
			var Bone043_diff = Vector3(30.05, -15.003,-7.743) - Vector3(28.283, -25.971, -13.102);  
			var Bone046_diff = Vector3(20.748, -17.759, -21.866) -Vector3(12.25, -36.906, -27.365); 
			
			leg[0].rotation_degrees = Vector3(93.8, 90, 90) - cycle_pos * Bone024_diff
			leg[1].rotation_degrees = Vector3(29.124,19.599,-90.684) - cycle_pos * Bone036_diff; 
			leg[2].rotation_degrees = Vector3(19.395, -3.637, 5.468) - cycle_pos * Bone042_diff;
			leg[3].rotation_degrees = Vector3(30.05, -15.003,-7.743) -cycle_pos * Bone043_diff; 
			leg[4].rotation_degrees = Vector3(20.748, -17.759, -21.866) - cycle_pos * Bone046_diff; 
			
		#period2
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:

			var Bone024_diff = Vector3(95, 90, 90) - Vector3(101, 90, 90); 
			var Bone036_diff = Vector3(26.351, 19.636, -90.667) -Vector3(2.546, 19.905, -90.599); 
			var Bone042_diff = Vector3(19.924, -11.324, 2.878) - Vector3(19.888, -28.84, -3.127); 
			var Bone043_diff = Vector3(28.283, -25.971, -13.102) - Vector3(22.708, -45.538, -21.601); 
			var Bone046_diff = Vector3(12.25, -36.906, -27.365) - Vector3(5.882, -48.828, -29.253); 

			leg[0].rotation_degrees = Vector3(95, 90, 90) - (1-cycle_pos) * Bone024_diff
			leg[1].rotation_degrees = Vector3(26.351, 19.636, -90.667) - (1-cycle_pos) * Bone036_diff; 
			leg[2].rotation_degrees = Vector3(19.924, -11.324, 2.878) - (1-cycle_pos) * Bone042_diff;
			leg[3].rotation_degrees = Vector3(28.283, -25.971, -13.102) - (1-cycle_pos) * Bone043_diff; 
			leg[4].rotation_degrees = Vector3(12.25, -36.906, -27.365) - (1-cycle_pos) * Bone046_diff;

		#period3
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:

			var Bone024_diff = Vector3(101, 90, 90) -Vector3(84.297, 90, 90);  
			var Bone036_diff = Vector3(2.546, 19.905, -90.599)-Vector3(8.674, 19.841, -90.605);  
			var Bone042_diff = Vector3(19.888, -28.84, -3.127)-Vector3(20.121, -19.124, 0.204); 
			var Bone043_diff = Vector3(22.708, -45.538, -21.601)-Vector3(25.261, -37.89, -18.488); 
			var Bone046_diff = Vector3(5.882, -48.828, -29.253)-Vector3(4.166, -43.681, -29.672); 
			
			leg[0].rotation_degrees = Vector3(101, 90, 90) - abs(cycle_pos) * Bone024_diff
			leg[1].rotation_degrees =  Vector3(2.546, 19.905, -90.599)- abs(cycle_pos) * Bone036_diff; 
			leg[2].rotation_degrees =Vector3(19.888, -28.84, -3.127) - abs(cycle_pos) * Bone042_diff; 
			leg[3].rotation_degrees = Vector3(22.708, -45.538, -21.601)- abs(cycle_pos) * Bone043_diff; 
			leg[4].rotation_degrees = Vector3(5.882, -48.828, -29.253)- abs(cycle_pos) * Bone046_diff; 
		
		#period4
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:

			var Bone024_diff = Vector3(84.297, 90, 90) -Vector3(93.8, 90, 90);  
			var Bone036_diff = Vector3(8.674, 19.841, -90.605) - Vector3(29.124,19.599,-90.684); 
			var Bone042_diff = Vector3(20.121, -19.124, 0.204) - Vector3(19.395, -3.637, 5.468); 
			var Bone043_diff = Vector3(25.261, -37.89, -18.488) - Vector3(30.05, -15.003,-7.743); 
			var Bone046_diff = Vector3(4.166, -43.681, -29.672) - Vector3(20.748, -17.759, -21.866); 

			leg[0].rotation_degrees = Vector3(84.297, 90, 90)- (1-abs(cycle_pos)) * Bone024_diff;
			leg[1].rotation_degrees = Vector3(8.674, 19.841, -90.605)- (1-abs(cycle_pos)) * Bone036_diff; 
			leg[2].rotation_degrees = Vector3(20.121, -19.124, 0.204)- (1-abs(cycle_pos)) * Bone042_diff;
			leg[3].rotation_degrees =Vector3(25.261, -37.89, -18.488)- (1-abs(cycle_pos)) * Bone043_diff; 
			leg[4].rotation_degrees = Vector3(4.166, -43.681, -29.672)- (1-abs(cycle_pos)) * Bone046_diff; 
			
	if (basis_z + (translation - check_for_movement)).length() < basis_z.length():
		
		#period4
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
			var Bone024_diff = Vector3(84.297, 90, 90)-Vector3(101, 90, 90)
			var Bone036_diff = Vector3(8.674, 19.841, -90.605)-Vector3(2.546, 19.905, -90.599)
			var Bone042_diff = Vector3(20.121, -19.124, 0.204) -Vector3(19.888, -28.84, -3.127)
			var Bone043_diff = Vector3(25.261, -37.89, -18.488)  -Vector3(22.708, -45.538, -21.601)
			var Bone046_diff = Vector3(4.166, -43.681, -29.672) -Vector3(5.882, -48.828, -29.253)

			leg[0].rotation_degrees = Vector3(84.297, 90, 90) - cycle_pos * Bone024_diff
			leg[1].rotation_degrees = Vector3(8.674, 19.841, -90.605) - cycle_pos * Bone036_diff
			leg[2].rotation_degrees = Vector3(20.121, -19.124, 0.204) - cycle_pos * Bone042_diff
			leg[3].rotation_degrees =Vector3(25.261, -37.89, -18.488) - cycle_pos * Bone043_diff
			leg[4].rotation_degrees = Vector3(4.166, -43.681, -29.672) - cycle_pos * Bone046_diff
			
		#period3
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
			var Bone024_diff = Vector3(101, 90, 90)-Vector3(95, 90, 90)
			var Bone036_diff = Vector3(2.546, 19.905, -90.599)-Vector3(26.351, 19.636, -90.667)
			var Bone042_diff = Vector3(19.888, -28.84, -3.127)- Vector3(19.924, -11.324, 2.878) 
			var Bone043_diff = Vector3(22.708, -45.538, -21.601)-Vector3(28.283, -25.971, -13.102) 
			var Bone046_diff = Vector3(5.882, -48.828, -29.253)-Vector3(12.25, -36.906, -27.365) 
			
			leg[0].rotation_degrees = Vector3(101, 90, 90) - (1-cycle_pos) * Bone024_diff
			leg[1].rotation_degrees =  Vector3(2.546, 19.905, -90.599) - (1-cycle_pos) * Bone036_diff
			leg[2].rotation_degrees =Vector3(19.888, -28.84, -3.127) - (1-cycle_pos) * Bone042_diff
			leg[3].rotation_degrees = Vector3(22.708, -45.538, -21.601) - (1-cycle_pos) * Bone043_diff
			leg[4].rotation_degrees = Vector3(5.882, -48.828, -29.253) - (1-cycle_pos) * Bone046_diff

		#period2
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
			
			var Bone024_diff = Vector3(95, 90, 90)-Vector3(93.8, 90, 90)
			var Bone036_diff = Vector3(26.351, 19.636, -90.667)- Vector3(29.124,19.599,-90.684) 
			var Bone042_diff = Vector3(19.924, -11.324, 2.878) -Vector3(19.395, -3.637, 5.468) 
			var Bone043_diff = Vector3(28.283, -25.971, -13.102) -Vector3(30.05, -15.003,-7.743)
			var Bone046_diff = Vector3(12.25, -36.906, -27.365) -Vector3(20.748, -17.759, -21.866)

			leg[0].rotation_degrees = Vector3(95, 90, 90) - abs(cycle_pos) * Bone024_diff
			leg[1].rotation_degrees = Vector3(26.351, 19.636, -90.667)  - abs(cycle_pos) * Bone036_diff
			leg[2].rotation_degrees = Vector3(19.924, -11.324, 2.878) - abs(cycle_pos) * Bone042_diff
			leg[3].rotation_degrees = Vector3(28.283, -25.971, -13.102) - abs(cycle_pos) * Bone043_diff
			leg[4].rotation_degrees = Vector3(12.25, -36.906, -27.365) - abs(cycle_pos) * Bone046_diff
		
		#period1
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
			
			var Bone024_diff = Vector3(93.8, 90, 90)-Vector3(84.297, 90, 90)
			var Bone036_diff = Vector3(29.124,19.599,-90.684) -Vector3(8.674, 19.841, -90.605)
			var Bone042_diff = Vector3(19.395, -3.637, 5.468) -Vector3(20.121, -19.124, 0.204)
			var Bone043_diff = Vector3(30.05, -15.003,-7.743)-Vector3(25.261, -37.89, -18.488)
			var Bone046_diff = Vector3(20.748, -17.759, -21.866)-Vector3(4.166, -43.681, -29.672)
			
			leg[0].rotation_degrees = Vector3(93.8, 90, 90)- (1-abs(cycle_pos)) * Bone024_diff;
			leg[1].rotation_degrees = Vector3(29.124,19.599,-90.684)- (1-abs(cycle_pos)) * Bone036_diff;
			leg[2].rotation_degrees = Vector3(19.395, -3.637, 5.468) - (1-abs(cycle_pos)) * Bone042_diff;
			leg[3].rotation_degrees = Vector3(30.05, -15.003,-7.743)- (1-abs(cycle_pos)) * Bone043_diff;
			leg[4].rotation_degrees = Vector3(20.748, -17.759, -21.866) - (1-abs(cycle_pos)) * Bone046_diff;
			
	if leg[0].name == "Bone024":
		pre_cycle_pos4 = cycle_pos; 
	if leg[0].name == "Bone023":
		pre_cycle_pos5 = cycle_pos; 
	if leg[0].name == "Bone022":
		pre_cycle_pos6 = cycle_pos; 


func leg_handle_left_rot(time_shift, leg, pre_cycle_pos, check_for_rotation):
	var cycle_pos = sin(12 * self.rotation.y + time_shift); 

	print("cycle_pos is:  ", cycle_pos)
	
	print(check_for_rotation)
	
	if check_for_rotation > rotation.y:
		print("left"); 
		#period 1
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
			print("period1")
			var Bone027_diff = Vector3(84.013, -90, -90) - Vector3(74.447, 90, 90); 
			var Bone033_diff = Vector3(40.607, -19.419, 90.788) - Vector3(43.094, -19.372, 90.819); 
			var Bone037_diff = Vector3(19.585, 5.902, -4.711) - Vector3(19.586, 5.913, -4.707); 
			var Bone049_diff = Vector3(24.554,40.158,19.443) - Vector3(29.978, 15.598, 8.041); 
			var Bone052_diff = Vector3(21.35, 16.127, 21.28) - Vector3(18.47, 23.497, 23.793); 
			
			leg[0].rotation_degrees = Vector3(84.013, -90, -90)- cycle_pos * Bone027_diff;
			leg[1].rotation_degrees = Vector3(40.607, -19.419, 90.788)- cycle_pos * Bone033_diff;
			leg[2].rotation_degrees = Vector3(19.585, 5.902, -4.711)- cycle_pos * Bone037_diff;
			leg[3].rotation_degrees = Vector3(24.554,40.158,19.443)- cycle_pos * Bone049_diff;
			leg[4].rotation_degrees = Vector3(21.35, 16.127, 21.28)- cycle_pos * Bone052_diff;
		 
		#period2
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
			print("period2")
			var Bone027_diff = Vector3(74.447, 90, 90) -Vector3(84.04, 87.997, 88.008);
			var Bone033_diff = Vector3(43.094, -19.372, 90.819)-Vector3(24.667, -19.657, 90.658); 
			var Bone037_diff = Vector3(19.586, 5.913, -4.707)-Vector3(20.12,20.478,0.263); 
			var Bone049_diff = Vector3(29.978, 15.598, 8.041)-Vector3(17.928, 57.147, 25.648);  
			var Bone052_diff = Vector3(18.47, 23.497, 23.793)-Vector3(6.507, 47.7, 29.132);
			
			leg[0].rotation_degrees = Vector3(74.447, 90, 90)-(1-cycle_pos) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(43.094, -19.372, 90.819)- (1-cycle_pos) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(19.586, 5.913, -4.707)- (1-cycle_pos) * Bone037_diff;
			leg[3].rotation_degrees = Vector3(29.978, 15.598, 8.041)- (1-cycle_pos) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(18.47, 23.497, 23.793)- (1-cycle_pos) * Bone052_diff;
			
		#period3
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
			print("period3")
			var Bone027_diff = Vector3(84.04, 87.997, 88.008) - Vector3(80.939,-92.775,-92.751);
			var Bone033_diff = Vector3(24.667, -19.657, 90.658) -Vector3(17.296,-19.745,90.626); 
			var Bone037_diff = Vector3(20.12,20.478,0.263)-Vector3(20.122,19.579,-0.046); 
			var Bone049_diff = Vector3(17.928, 57.147, 25.648)- Vector3(27.362, 30.122, 15.039);  
			var Bone052_diff = Vector3(6.507, 47.7, 29.132)-Vector3(7.934,45.103,28.805); 
			
			leg[0].rotation_degrees = Vector3(84.04, 87.997, 88.008)- abs(cycle_pos) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(24.667, -19.657, 90.658)- abs(cycle_pos) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(20.12,20.478,0.263)- abs(cycle_pos) * Bone037_diff;
			leg[3].rotation_degrees = Vector3(17.928, 57.147, 25.648)- abs(cycle_pos) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(6.507, 47.7, 29.132)- abs(cycle_pos) * Bone052_diff;
			
		#period4
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
			print("period4")
			var Bone027_diff = Vector3(80.939,-92.775,-92.751) - Vector3(84.013, -90, -90) 
			var Bone033_diff = Vector3(17.296,-19.745,90.626) - Vector3(40.607, -19.419, 90.788)
			var Bone037_diff = Vector3(20.122,19.579,-0.046) - Vector3(19.585, 5.902, -4.711)  
			var Bone049_diff = Vector3(27.362, 30.122, 15.039) - Vector3(24.554,40.158,19.443)
			var Bone052_diff = Vector3(7.934,45.103,28.805) - Vector3(21.35, 16.127, 21.28)
			
			leg[0].rotation_degrees = Vector3(80.939,-92.775,-92.751)- (1- abs(cycle_pos)) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(17.296,-19.745,90.626)- (1- abs(cycle_pos)) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(20.122,19.579,-0.046)- (1- abs(cycle_pos)) * Bone037_diff;
			leg[3].rotation_degrees =  Vector3(27.362, 30.122, 15.039)- (1- abs(cycle_pos)) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(7.934,45.103,28.805) - (1- abs(cycle_pos)) * Bone052_diff;
		
			
			
			
			
	if check_for_rotation < rotation.y:
		print("right"); 
		#period4
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
			print("period4")
			var Bone027_diff = Vector3(80.939,-92.775,-92.751)- Vector3(84.04, 87.997, 88.008)
			var Bone033_diff = Vector3(17.296,-19.745,90.626)-Vector3(24.667, -19.657, 90.658)
			var Bone037_diff = Vector3(20.122,19.579,-0.046)- Vector3(20.12,20.478,0.263)
			var Bone049_diff =  Vector3(27.362, 30.122, 15.039)-Vector3(17.928, 57.147, 25.648)
			var Bone052_diff  = Vector3(7.934,45.103,28.805)-Vector3(6.507, 47.7, 29.132)
			
			leg[0].rotation_degrees = Vector3(80.939,-92.775,-92.751)- (cycle_pos) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(17.296,-19.745,90.626)- (cycle_pos) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(20.122,19.579,-0.046)- (cycle_pos) * Bone037_diff;
			leg[3].rotation_degrees =  Vector3(27.362, 30.122, 15.039)- (cycle_pos) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(7.934,45.103,28.805) - (cycle_pos) * Bone052_diff;
			
		#period3
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
			print("period3")
			var Bone027_diff  = Vector3(84.04, 87.997, 88.008)- Vector3(74.447, 90, 90)
			var Bone033_diff  = Vector3(24.667, -19.657, 90.658)-Vector3(43.094, -19.372, 90.819)
			var Bone037_diff = Vector3(20.12,20.478,0.263)-Vector3(19.586, 5.913, -4.707)
			var Bone049_diff = Vector3(17.928, 57.147, 25.648)-Vector3(29.978, 15.598, 8.041)
			var Bone052_diff = Vector3(6.507, 47.7, 29.132)-Vector3(18.47, 23.497, 23.793)
			
			leg[0].rotation_degrees = Vector3(84.04, 87.997, 88.008)- (1-cycle_pos) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(24.667, -19.657, 90.658)- (1-cycle_pos) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(20.12,20.478,0.263)- (1-cycle_pos) * Bone037_diff;
			leg[3].rotation_degrees = Vector3(17.928, 57.147, 25.648)- (1-cycle_pos) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(6.507, 47.7, 29.132)- (1-cycle_pos) * Bone052_diff;
		#period2
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
			print("period2")
			var Bone027_diff  = Vector3(74.447, 90, 90)- Vector3(84.013, -90, -90)
			var Bone033_diff = Vector3(43.094, -19.372, 90.819)-Vector3(40.607, -19.419, 90.788)
			var Bone037_diff= Vector3(19.586, 5.913, -4.707)-Vector3(19.585, 5.902, -4.711)
			var Bone049_diff = Vector3(29.978, 15.598, 8.041)-Vector3(24.554,40.158,19.443)
			var Bone052_diff  = Vector3(18.47, 23.497, 23.793)-Vector3(21.35, 16.127, 21.28)
			
			leg[0].rotation_degrees = Vector3(74.447, 90, 90)-abs(cycle_pos) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(43.094, -19.372, 90.819)- abs(cycle_pos) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(19.586, 5.913, -4.707)- abs(cycle_pos) * Bone037_diff;
			leg[3].rotation_degrees = Vector3(29.978, 15.598, 8.041)- abs(cycle_pos) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(18.47, 23.497, 23.793)- abs(cycle_pos) * Bone052_diff;
			
		#period 1
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
			print("period1")
			var Bone027_diff  = Vector3(84.013, -90, -90)-Vector3(80.939,-92.775,-92.751)
			var Bone033_diff  = Vector3(40.607, -19.419, 90.788)-Vector3(17.296,-19.745,90.626)
			var Bone037_diff = Vector3(19.585, 5.902, -4.711)-Vector3(20.122,19.579,-0.046)
			var Bone049_diff = Vector3(24.554,40.158,19.443)-Vector3(27.362, 30.122, 15.039)
			var Bone052_diff  = Vector3(21.35, 16.127, 21.28)-Vector3(7.934,45.103,28.805)
			leg[0].rotation_degrees = Vector3(84.013, -90, -90)- (1-abs(cycle_pos)) * Bone027_diff;
			leg[1].rotation_degrees = Vector3(40.607, -19.419, 90.788)- (1-abs(cycle_pos)) * Bone033_diff;
			leg[2].rotation_degrees = Vector3(19.585, 5.902, -4.711)- (1-abs(cycle_pos)) * Bone037_diff;
			leg[3].rotation_degrees = Vector3(24.554,40.158,19.443)- (1-abs(cycle_pos)) * Bone049_diff;
			leg[4].rotation_degrees = Vector3(21.35, 16.127, 21.28)- (1-abs(cycle_pos)) * Bone052_diff;
		
		
		
	if leg[0].name == "Bone027":
		pre_rot_cycle_pos1 = cycle_pos; 
	if leg[0].name == "Bone026":
		pre_rot_cycle_pos2 = cycle_pos; 
	if leg[0].name == "Bone025":
		pre_rot_cycle_pos3 = cycle_pos; 


func leg_handle_right_rot(time_shift, leg, pre_cycle_pos, check_for_rotation):
	var cycle_pos = sin(12 * self.rotation.y + time_shift); 
	
	print("cycle_pos is:  ", cycle_pos)
	
	if check_for_rotation < rotation.y:
		print("right"); 
		#period 1
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
			print("period1")
			
			var Bone_diff024 = Vector3(79.927, 90, 90) - Vector3(75.363, -90, -90); 
			var Bone_diff036 = Vector3(31.04, 19.572,-90.698) - Vector3(34.968, 19.514, -90.73);
			var Bone_diff042= Vector3(19.649, -6.75, 4.427) - Vector3(19.312, -2.746, 5.763); 
			var Bone_diff043 = Vector3(29.64, -18.151, -9.31) - Vector3(30.594, -9.299, -4.862); 
			var Bone_diff046 = Vector3(17.234, -26.382, -24.678) - Vector3(18.471, -23.497, -23.793); 
			
			leg[0].rotation_degrees = Vector3(79.927, 90, 90) - cycle_pos * Bone_diff024;
			leg[1].rotation_degrees = Vector3(31.04, 19.572,-90.698 ) - cycle_pos * Bone_diff036;
			leg[2].rotation_degrees = Vector3(19.649, -6.75, 4.427) - cycle_pos * Bone_diff042; 
			leg[3].rotation_degrees = Vector3(29.64, -18.151, -9.31) - cycle_pos * Bone_diff043; 
			leg[4].rotation_degrees = Vector3(17.234, -26.382, -24.678) - cycle_pos * Bone_diff046;

		#period2
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
			print("period2")
			
			var Bone_diff024  = Vector3(75.363, -90, -90) - Vector3(84.236, -90, -90); 
			var Bone_diff036 = Vector3(34.968, 19.514, -90.73) - Vector3(22.151, 19.688, -90.646); 
			var Bone_diff042 = Vector3(19.312, -2.746, 5.763) - Vector3(20.067, -24.145, -1.522); 
			var Bone_diff043 = Vector3(30.594, -9.299, -4.862) - Vector3(22.687, -45.593, -21.623);
			var Bone_diff046 = Vector3(18.471, -23.497, -23.793) - Vector3(5.253,-49.954,-29.362); 
			
			leg[0].rotation_degrees = Vector3(75.363, -90, -90) - (1-cycle_pos) * Bone_diff024
			leg[1].rotation_degrees = Vector3(34.968, 19.514, -90.73) - (1-cycle_pos) * Bone_diff036
			leg[2].rotation_degrees = Vector3(19.312, -2.746, 5.763) - (1-cycle_pos) * Bone_diff042
			leg[3].rotation_degrees = Vector3(30.594, -9.299, -4.862) - (1-cycle_pos) * Bone_diff043
			leg[4].rotation_degrees = Vector3(18.471, -23.497, -23.793) - (1-cycle_pos) * Bone_diff046
			
		#period3
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
			print("period3")
			
			var Bone_diff024 = Vector3(84.236, -90, -90) - Vector3(76.397, 90, 90); 
			var Bone_diff036 = Vector3(22.151, 19.688, -90.646) -Vector3(19.93,19.715,-90.636); 
			var Bone_diff042 = Vector3(20.067, -24.145, -1.522) - Vector3(20.122,-19.917,-0.069);
			var Bone_diff043 = Vector3(22.687, -45.593, -21.623) - Vector3(26.207, -34.616, -17.066);
			var Bone_diff046 = Vector3(5.253,-49.954,-29.362) -Vector3(14.22, -32.919, -26.452); 
			
			leg[0].rotation_degrees = Vector3(84.236, -90, -90) - abs(cycle_pos) * Bone_diff024
			leg[1].rotation_degrees = Vector3(22.151, 19.688, -90.646) - abs(cycle_pos) * Bone_diff036
			leg[2].rotation_degrees = Vector3(20.067, -24.145, -1.522) - abs(cycle_pos) * Bone_diff042 
			leg[3].rotation_degrees = Vector3(22.687, -45.593, -21.623) - abs(cycle_pos) * Bone_diff043 
			leg[4].rotation_degrees = Vector3(5.253,-49.954,-29.362) - abs(cycle_pos) * Bone_diff046

		#period4
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
			print("period4")
			
			var Bone_diff024  = Vector3(76.397, 90, 90) - Vector3(79.927, 90, 90); 
			var Bone_diff036 = Vector3(19.93,19.715,-90.636) - Vector3(31.04, 19.572,-90.698)
			var Bone_diff042 = Vector3(20.122,-19.917,-0.069) - Vector3(19.649, -6.75, 4.427); 
			var Bone_diff043 = Vector3(26.207, -34.616, -17.066) - Vector3(29.64, -18.151, -9.31); 
			var Bone_diff046 = Vector3(14.22, -32.919, -26.452) - Vector3(17.234, -26.382, -24.678); 
			
			leg[0].rotation_degrees = Vector3(76.397, 90, 90) - (1-abs(cycle_pos)) * Bone_diff024 
			leg[1].rotation_degrees = Vector3(19.93,19.715,-90.636) - (1-abs(cycle_pos)) * Bone_diff036
			leg[2].rotation_degrees = Vector3(20.122,-19.917,-0.069) - (1-abs(cycle_pos)) * Bone_diff042
			leg[3].rotation_degrees = Vector3(26.207, -34.616, -17.066) - (1-abs(cycle_pos)) * Bone_diff043 
			leg[4].rotation_degrees = Vector3(14.22, -32.919, -26.452) - (1-abs(cycle_pos)) * Bone_diff046
			
			
	if check_for_rotation > rotation.y:
		print("left"); 
		
		#period4
		if cycle_pos > 0 && pre_cycle_pos < cycle_pos:
			print("period4")
			
			var Bone_diff024  = Vector3(76.397, 90, 90) - Vector3(84.236, -90, -90)
			var Bone_diff036 = Vector3(19.93,19.715,-90.636) -Vector3(22.151, 19.688, -90.646) 
			var Bone_diff042 = Vector3(20.122,-19.917,-0.069) -Vector3(20.067, -24.145, -1.522) 
			var Bone_diff043 = Vector3(26.207, -34.616, -17.066) -Vector3(22.687, -45.593, -21.623) 
			var Bone_diff046 = Vector3(14.22, -32.919, -26.452) - Vector3(5.253,-49.954,-29.362)
			
			leg[0].rotation_degrees = Vector3(76.397, 90, 90)  - cycle_pos * Bone_diff024;
			leg[1].rotation_degrees = Vector3(19.93,19.715,-90.636) - cycle_pos * Bone_diff036;
			leg[2].rotation_degrees = Vector3(20.122,-19.917,-0.069) - cycle_pos * Bone_diff042;
			leg[3].rotation_degrees = Vector3(26.207, -34.616, -17.066) - cycle_pos * Bone_diff043;
			leg[4].rotation_degrees = Vector3(14.22, -32.919, -26.452) - cycle_pos * Bone_diff046;
			
		#period3
		if cycle_pos > 0 && pre_cycle_pos > cycle_pos:
			print("period3")
			
			var Bone_diff024 = Vector3(84.236, -90, -90)-Vector3(75.363, -90, -90)
			var Bone_diff036 = Vector3(22.151, 19.688, -90.646) -Vector3(34.968, 19.514, -90.73) 
			var Bone_diff042 = Vector3(20.067, -24.145, -1.522) - Vector3(19.312, -2.746, 5.763)
			var Bone_diff043 = Vector3(22.687, -45.593, -21.623) - Vector3(30.594, -9.299, -4.862)
			var Bone_diff046 = Vector3(5.253,-49.954,-29.362)-Vector3(18.471, -23.497, -23.793)
			
			leg[0].rotation_degrees = Vector3(84.236, -90, -90) - (1-cycle_pos) * Bone_diff024
			leg[1].rotation_degrees = Vector3(22.151, 19.688, -90.646) - (1-cycle_pos) * Bone_diff036
			leg[2].rotation_degrees = Vector3(20.067, -24.145, -1.522)  - (1-cycle_pos) * Bone_diff042
			leg[3].rotation_degrees = Vector3(22.687, -45.593, -21.623) - (1-cycle_pos) * Bone_diff043
			leg[4].rotation_degrees = Vector3(5.253,-49.954,-29.362) - (1-cycle_pos) * Bone_diff046

		#period2
		if cycle_pos < 0 && pre_cycle_pos > cycle_pos:
			print("period2")
			
			var Bone_diff024  = Vector3(75.363, -90, -90)-Vector3(79.927, 90, 90)
			var Bone_diff036 = Vector3(34.968, 19.514, -90.73)-Vector3(31.04, 19.572,-90.698 ) 
			var Bone_diff042 = Vector3(19.312, -2.746, 5.763) -Vector3(19.649, -6.75, 4.427)
			var Bone_diff043 = Vector3(30.594, -9.299, -4.862)-Vector3(29.64, -18.151, -9.31)  
			var Bone_diff046 = Vector3(18.471, -23.497, -23.793) -Vector3(17.234, -26.382, -24.678) 
			
			leg[0].rotation_degrees = Vector3(75.363, -90, -90) - abs(cycle_pos) * Bone_diff024
			leg[1].rotation_degrees = Vector3(34.968, 19.514, -90.73)  - abs(cycle_pos) * Bone_diff036
			leg[2].rotation_degrees = Vector3(19.312, -2.746, 5.763) - abs(cycle_pos) * Bone_diff042
			leg[3].rotation_degrees = Vector3(30.594, -9.299, -4.862) - abs(cycle_pos) * Bone_diff043
			leg[4].rotation_degrees = Vector3(18.471, -23.497, -23.793) - abs(cycle_pos) * Bone_diff046
			
		#period 1
		if cycle_pos < 0 && pre_cycle_pos < cycle_pos:
			print("period1")
			
			var Bone_diff024 = Vector3(79.927, 90, 90) -Vector3(76.397, 90, 90)
			var Bone_diff036 = Vector3(31.04, 19.572,-90.698)- Vector3(19.93,19.715,-90.636)
			var Bone_diff042= Vector3(19.649, -6.75, 4.427) -Vector3(20.122,-19.917,-0.069)
			var Bone_diff043 = Vector3(29.64, -18.151, -9.31) -Vector3(26.207, -34.616, -17.066)
			var Bone_diff046 = Vector3(17.234, -26.382, -24.678)-Vector3(14.22, -32.919, -26.452)
			
			leg[0].rotation_degrees = Vector3(79.927, 90, 90)- (1-abs(cycle_pos)) * Bone_diff024 
			leg[1].rotation_degrees = Vector3(31.04, 19.572,-90.698 ) - (1-abs(cycle_pos)) * Bone_diff036 
			leg[2].rotation_degrees = Vector3(19.649, -6.75, 4.427)- (1-abs(cycle_pos)) * Bone_diff042
			leg[3].rotation_degrees = Vector3(29.64, -18.151, -9.31) - (1-abs(cycle_pos)) * Bone_diff043 
			leg[4].rotation_degrees = Vector3(17.234, -26.382, -24.678) - (1-abs(cycle_pos)) * Bone_diff046 

			

	if leg[0].name == "Bone024":
		pre_rot_cycle_pos4 = cycle_pos; 
	if leg[0].name == "Bone023":
		pre_rot_cycle_pos5 = cycle_pos; 
	if leg[0].name == "Bone022":
		pre_rot_cycle_pos6 = cycle_pos; 
		
		

func _on_Timer_timeout():
	if timer_status == 0: 
		print("status 0")
		timer_status = 1; 
		$Timer.wait_time = to_idle_time; 
		$Timer.start(); 
		return 
	if timer_status == 1: 
		$Timer.wait_time = idle_delay;
		timer_status = 0; 
		$Timer.stop();  
