
.model small 
.stack 100h
.data
new_timer_vec dw ?,?
old_timer_vec dw ?,?
new_key_vec dw ?,?
old_key_vec dw ?,?
vel_x dw -6
vel_y dw -1
timer_flag db 0
scan_code db 0
key_flag db 0
padle_bottom dw 54
padle_top dw 45
;up_arrow = 72
;down_arrow = 80
;esc_key = 1

.code

start:

mov ax,@data
mov ds,ax

mov ax,13
int 10h



mov ah,0bh
mov bh,00h
mov bl,5
int 10h



;line 1
mov ah,0ch ;draw a pixel
mov al,1
mov bh,0
mov cx,20
mov dx,20
sl1:
int 10h  ;loop to convert pixel to line
inc cx
cmp cx,299
jle sl1

;line 2
mov ah,0ch ;draw a pixel
mov al,1
mov cx,20
mov dx,21
sl2:
int 10h  ;loop to convert pixel to line
inc dx
cmp dx,179
jle sl2

;line 3
mov ah,0ch ;draw a pixel
mov al,1
mov cx,20
mov dx,180
sl3:
int 10h  ;loop to convert pixel to line
inc cx
cmp cx,299
jle sl3

;line4
mov ah,0ch ;draw a pixel
mov al,1
mov cx,299
mov dx,21
l4:
int 10h  ;loop to convert pixel to line
inc dx
cmp dx,179
jle l4

mov ah,02
mov bh,0
mov dh,5
mov dl,52
mov cx,1
int 10h

mov ah,09
mov al,"M"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,53
mov cx,1
int 10h

mov ah,09
mov al,"U"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,54
mov cx,1
int 10h

mov ah,09
mov al,"H"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,55
mov cx,1
int 10h

mov ah,09
mov al,"A"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,56
mov cx,1
int 10h

mov ah,09
mov al,"M"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,57
mov cx,1
int 10h

mov ah,09
mov al,"M"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,58
mov cx,1
int 10h

mov ah,09
mov al,"A"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,59
mov cx,1
int 10h

mov ah,09
mov al,"D"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,61
mov cx,1
int 10h

mov ah,09
mov al,"S"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,62
mov cx,1
int 10h

mov ah,09
mov al,"A"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,63
mov cx,1
int 10h

mov ah,09
mov al,"Q"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,64
mov cx,1
int 10h

mov ah,09
mov al,"I"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,5
mov dl,65
mov cx,1
int 10h

mov ah,09
mov al,"B"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,54
mov cx,1
int 10h

mov ah,09
mov al,"C"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,55
mov cx,1
int 10h

mov ah,09
mov al,"S"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,56
mov cx,1
int 10h

mov ah,09
mov al,"C"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,57
mov cx,1
int 10h

mov ah,09
mov al,"-"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,58
mov cx,1
int 10h

mov ah,09
mov al,"2"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,59
mov cx,1
int 10h

mov ah,09
mov al,"3"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,60
mov cx,1
int 10h

mov ah,09
mov al,"S"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,61
mov cx,1
int 10h

mov ah,09
mov al,"-"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,62
mov cx,1
int 10h

mov ah,09
mov al,"0"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,63
mov cx,1
int 10h

mov ah,09
mov al,"5"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,7
mov dl,64
mov cx,1
int 10h

mov ah,09
mov al,"6"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,9
mov dl,59
mov cx,1
int 10h

mov ah,09
mov al,"3"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,9
mov dl,60
mov cx,1
int 10h

mov ah,09
mov al,"B"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,56
mov cx,1
int 10h

mov ah,09
mov al,"P"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,57
mov cx,1
int 10h

mov ah,09
mov al,"R"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,58
mov cx,1
int 10h

mov ah,09
mov al,"O"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,59
mov cx,1
int 10h

mov ah,09
mov al,"J"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,60
mov cx,1
int 10h

mov ah,09
mov al,"E"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,61
mov cx,1
int 10h

mov ah,09
mov al,"C"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,11
mov dl,62
mov cx,1
int 10h

mov ah,09
mov al,"T"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,52
mov cx,1
int 10h

mov ah,09
mov al,"1"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,53
mov cx,1
int 10h

mov ah,09
mov al,"."
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,55
mov cx,1
int 10h

mov ah,09
mov al,"S"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,56
mov cx,1
int 10h

mov ah,09
mov al,"T"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,57
mov cx,1
int 10h

mov ah,09
mov al,"A"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,58
mov cx,1
int 10h

mov ah,09
mov al,"R"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,59
mov cx,1
int 10h

mov ah,09
mov al,"T"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,61
mov cx,1
int 10h

mov ah,09
mov al,"G"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,62
mov cx,1
int 10h

mov ah,09
mov al,"A"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,63
mov cx,1
int 10h

mov ah,09
mov al,"M"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,15
mov dl,64
mov cx,1
int 10h

mov ah,09
mov al,"E"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,52
mov cx,1
int 10h

mov ah,09
mov al,"2"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,53
mov cx,1
int 10h

mov ah,09
mov al,"."
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,55
mov cx,1
int 10h

mov ah,09
mov al,"E"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,56
mov cx,1
int 10h

mov ah,09
mov al,"X"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,57
mov cx,1
int 10h

mov ah,09
mov al,"I"
mov bl,3
int 10h

mov ah,02
mov bh,0
mov dh,17
mov dl,58
mov cx,1
int 10h

mov ah,09
mov al,"T"
mov bl,3
int 10h

mov ah,08
int 21h

cmp al,'1'
je g

cmp al,'2'
je exit
jmp start

exit:
jmp exit_

g:
call game 


game proc

call set_and_drawBoundry

mov al,2
call draw_padle

;setup timer interupt
mov new_timer_vec,offset timer_tick
mov new_timer_vec+2,cs
mov al,1ch ;interupt number
lea di,old_timer_vec
lea si,new_timer_vec
call setup_int

;setup keyboard interupt
mov new_key_vec,offset keyboard_int
mov new_key_vec+2,cs
mov al,9h ;interupt number
lea di,old_key_vec
lea si,new_key_vec
call setup_int

mov cx,298
mov dx,100
mov al,3
call display_ball

test_key:
cmp key_flag,1
jne test_timer1
mov key_flag,0
cmp scan_code,1
jne tk1
jmp mdone

tk1:
cmp scan_code,72
jne tk2
mov ax,-2
call move_padle
jmp test_timer1

tk2:
cmp scan_code,80
jne test_timer1
mov ax,2
call move_padle

test_timer1:
cmp timer_flag,1
jne test_key
mov timer_flag,0
call move_ball

;check if ball missed padle
cmp cx,11
jne test_key
cmp dx,padle_top
jl cp1
cmp dx,padle_bottom
jg cp1


delay:
cmp timer_flag,1
jne delay
mov timer_flag,0
call move_ball

mov al,2
call draw_padle
jmp test_key


;padle missed the ball
cp1:
mov al,0
call display_ball

;reset timer interupt
mdone:
lea di,new_timer_vec
lea si,old_timer_vec
mov al,1ch
call setup_int

;reset keyboard interupt
lea di,new_key_vec
lea si,old_key_vec
mov al,9h
call setup_int

mov ah,0
int 16h

jmp start


exit_:
mov ah,0
mov al,3
int 10h

mov ah,4ch
int 21h








draw_row macro x
local l1
mov ah,0ch
mov al,1
mov cx,10
mov dx,x
l1:
int 10h
inc cx
cmp cx,301
jl l1
endm

draw_column macro y
local l2
mov ah,0ch
mov al,1
mov cx,y
mov dx,10
l2:
int 10h
inc dx
cmp dx,190
jl l2
endm



set_and_drawBoundry proc

mov ah,0 ;set mode 4
mov al,4h
int 10h

mov ah,0bh ;select pallete
mov bh,1
mov bl,1
int 10h

mov bh,0 ;set background colour
mov bl,2
int 10h

;draw boundary
draw_row 10
draw_row 189
draw_column 10
draw_column 300


ret
set_and_drawBoundry endp

display_ball proc

mov ah,0ch
int 10h
inc cx
int 10h
inc dx
int 10h
dec cx
int 10h
dec dx
int 10h


ret
display_ball endp

timer_tick proc
push ds
push ax

mov ax,seg timer_flag
mov ds,ax
mov timer_flag,1

pop ax
pop ds

iret
timer_tick endp

move_ball proc
mov al,0
call display_ball

add cx,vel_x
add dx,vel_y

call check_bound

test_timer:
cmp timer_flag,1
jne test_timer
mov timer_flag,0
mov al,3
call display_ball

ret
move_ball endp

check_bound proc
;check column value
cmp cx,11
jg l1
mov cx,11
neg vel_x
jmp l2

l1:
cmp cx,298
jl l2
mov cx,298
neg vel_x

l2:
cmp dx,11
jg l3
mov dx,11
neg vel_y
jmp done

l3:
cmp dx,187
jl done
mov dx,187
neg vel_y

done:
ret
check_bound endp

setup_int proc
mov ah,35h
int 21h
mov [di],bx
mov [di+2],es

mov dx,[si]
push ds
mov ds,[si+2]
mov ah,25h
int 21h

pop ds
ret
setup_int endp

keyboard_int proc

push ds
push ax

mov ax,seg scan_code
mov ds,ax

in al,60h
push ax
in al,61h
mov ah,al
or al,80h
out 61h,al
xchg ah,al
pop ax
mov ah,al
test al,80h
jne key_0

mov scan_code,al
mov key_flag,1

key_0:
mov al,20h
out 20h,al

pop ax
pop ds
iret
keyboard_int endp

draw_padle proc
push cx
push dx

mov ah,0ch
mov cx,11
mov dx,padle_top
dp1:
int 10h
inc dx
cmp dx,padle_bottom
jle dp1

pop dx
pop cx
ret
draw_padle endp

move_padle proc
mov bx,ax

cmp ax,0
jl up

cmp padle_bottom,188
jge done1
jmp update

up:
cmp padle_top,11
jle done1

update:
mov al,0
call draw_padle
add padle_top,bx
add padle_bottom,bx
mov al,2
call draw_padle

done1:
ret
move_padle endp

game endp

end start