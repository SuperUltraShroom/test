#define health_draw
//Draw the health bar.
if (CurrentHealth != 0)
{
    if ((CurrentHealth/MaxHealth) > .65)
    {
        draw_sprite_part(HealthBarSpr, 0, 0, 0, CurrentHealth/MaxHealth*41, 3, x-20, y-sprite_height-8)
    }
    else if ((CurrentHealth/MaxHealth) <= .65 && (CurrentHealth/MaxHealth) > .35)
    {
        draw_sprite_part(HealthBarSpr, 1, 0, 0, CurrentHealth/MaxHealth*41, 3, x-20, y-sprite_height-8)
    }
    else if ((CurrentHealth/MaxHealth) <= .35 && (CurrentHealth/MaxHealth) > .155)
    {
        draw_sprite_part(HealthBarSpr, 2, 0, 0, CurrentHealth/MaxHealth*41, 3, x-20, y-sprite_height-8)
    }
    else
    {
        draw_sprite_part(HealthBarSpr, 3, 0, 0, CurrentHealth/MaxHealth*41, 3, x-20, y-sprite_height-8)
    }
}
else
    draw_sprite_part(EmptyHealth, 0, 0, 0, CurrentHealth/MaxHealth*41, 3, x-20, y-56)

#define stam_draw
//Same principle as the health bar.
if (CurrentStam != 0)
{
    if ((CurrentStam/MaxStam) > .65)
    {
        draw_sprite_part(StamBarSpr, 0, 0, 0, CurrentStam/MaxStam*41, 3, x-20, y-sprite_height-4)
    }
    else if ((CurrentStam/MaxStam) <= .65 && (CurrentStam/MaxStam) > .35)
    {
        draw_sprite_part(StamBarSpr, 1, 0, 0, CurrentStam/MaxStam*41, 3, x-20, y-sprite_height-4)
    }
    else if ((CurrentStam/MaxStam) <= .35 && (CurrentStam/MaxStam) > .155)
    {
        draw_sprite_part(StamBarSpr, 2, 0, 0, CurrentStam/MaxStam*41, 3, x-20, y-sprite_height-4)
    }
    else
    {
        draw_sprite_part(StamBarSpr, 3, 0, 0, CurrentStam/MaxStam*41, 3, x-20, y-sprite_height-4)
    }
}
else
    draw_sprite_part(EmptyHealth, 0, 0, 0, CurrentStam/MaxStam*41, 3, x-20, y-51)