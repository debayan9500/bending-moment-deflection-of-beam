Program Test
!This program will calculate Bending Moment and deflection of cantiliver and  Simply Supported  beam
IMPLICIT NONE
Real :: P, a, b, L ,BM ,W , Defle , E , I 
Integer :: BeamType, LoadType ,ch 

Write (*,*) "Type of Beam (1 for simply suported and 2 for cantilever)"
Read (*,*) BeamType
Write (*,*) "Type of Load (1 for Point Load and 2 for UDL)"
Read (*,*) LoadType




!Simply Supported With Point Load
If (BeamType == 1 .AND. LoadType == 1)Then 

Write (*,*) "The load,P (KN)"
Read (*,*) P
Write (*,*) "The Distance of p from left support,a (m)"
Read (*,*) a
Write (*,*) "The span of the Beam ,L (m)"
Read (*,*) L
b =  L - a
BM = P*a*b/L
Write(*,*) "The Bending Moment of the Beam Under The Load Is " ,BM ," KN-m"


!DEFLECTION Calculation
Write (*,*) "Did you want to calaulate the deflection a mid span,Then click 1"
Read (*,*) ch
If (ch == 1) Then
Write (*,*) "The materials modulas of elasticity (E) in GPa"
Read (*,*) E
Write (*,*) "The moment of area (I) in cm^4 "
Read (*,*) I
Defle = (P*L**3)*1000/(48*E*I*(10**9)/(10**4))
Write(*,*) "The Deflection of the beam in mid-span is" ,Defle ," mm"

End If
	 
	
! Simply Supported With UDL
Else If (BeamType == 1 .AND. LoadType == 2)Then  
Write (*,*) "The Uniformly Distributed Load,W (KN/m)"
Read (*,*) W
Write (*,*) "The span of the Beam ,L (m)"
Read (*,*) L
BM = (W*L**2 )/ 8
Write(*,*) "The Bending Moment of the Beam Under The Load Is " ,BM ," KN-m"


!DEFLECTION Calculation
Write (*,*) "Did you want to calaulate the deflection a mid span,Then click 1"
Read (*,*) ch
If (ch == 1) Then
Write (*,*) "The materials modulas of elasticity (E) in GPa"
Read (*,*) E
Write (*,*) "The moment of area (I) in cm^4 "
Read (*,*) I
Defle = (5*W*L**4)*1000/(384*E*I*(10**9)/(10**4))
Write(*,*) "The Deflection of the beam in mid-span is" ,Defle ,"mm"
	
Else 
Write (*,*) "Thankyou"
End If



!Cantilever Beam With Point Load
Else If (BeamType == 2 .AND. LoadType == 1)Then 
Write (*,*) "The load,P (KN)"
Read (*,*) P
Write (*,*) "The Distance of p from left support,a (m)"
Read (*,*) a
Write (*,*) "The span of the Beam ,L (m)"
Read (*,*) L
BM = P*a
Write(*,*) "The Bending Moment of the Beam Under The Load Is " ,BM ," KN-m"



!DEFLECTION Calculation
Write (*,*) "Did you want to calaulate the deflection a Free-end,Then click 1"
Read (*,*) ch
If (ch == 1) Then
Write (*,*) "The materials modulas of elasticity (E) in GPa"
Read (*,*) E
Write (*,*) "The moment of area (I) in cm^4 "
Read (*,*) I

Defle = (P*L**3)*1000/(3*E*I*(10**9)/(10**4))
Write(*,*) "The Deflection of the beam in Free-end is" ,Defle ,"mm"
End If



!Cantilever Beam With UDL
Else If (BeamType == 2 .AND. LoadType == 2)Then 
Write (*,*) "The Uniformly Distributed Load,W (KN/m)"
Read (*,*) W
Write (*,*) "The span of the Beam ,L (m)"
Read (*,*) L
BM = (W*L**2)/2
Write(*,*) "The Bending Moment of the Beam Under The Load Is " ,BM ," KN-m"


!DEFLECTION Calculation
Write (*,*) "Did you want to calaulate the deflection a Free-end,Then click 1"
Read (*,*) ch

If (ch == 1) Then
Write (*,*) "The materials modulas of elasticity (E) in GPa"
Read (*,*) E
Write (*,*) "The moment of area (I) in cm^4 "
Read (*,*) I

Defle = (W*L**4)*1000/(8*E*I*(10**9)/(10**4))
Write(*,*) "The Deflection of the beam in Free-end is" ,Defle ,"mm"


End If
Else

Write(*,*) "Please Enter 1 or 2 "

End If
Read(*,*)

End program Test






