image_angle = point_direction(x, y, mouse_x, mouse_y);

if (keyboard_check(vk_right))
{
	x += 5;
}

if (keyboard_check(vk_left))
{
	x -= 5;
}

if (keyboard_check(vk_up))
{
	y -= 5;
}

if (keyboard_check(vk_down))
{
	y += 5;
}

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	cooldown = 10;
}

cooldown = cooldown - 1;
