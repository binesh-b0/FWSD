жм	
ЄП
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.22v2.8.2-0-g2ea19cbb5758ќю
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
ѓ
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ─ђ*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:ђ─ђ*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ђ*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
ђђ*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:ђ*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
ђђ*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:ђ*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	ђ*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
ѓ
conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d/kernel/m
{
#conv2d/kernel/m/Read/ReadVariableOpReadVariableOpconv2d/kernel/m*&
_output_shapes
: *
dtype0
r
conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias/m
k
!conv2d/bias/m/Read/ReadVariableOpReadVariableOpconv2d/bias/m*
_output_shapes
: *
dtype0
є
conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_1/kernel/m

%conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_1/kernel/m*&
_output_shapes
:  *
dtype0
v
conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/bias/m
o
#conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpconv2d_1/bias/m*
_output_shapes
: *
dtype0
{
dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ─ђ*
shared_namedense/kernel/m
t
"dense/kernel/m/Read/ReadVariableOpReadVariableOpdense/kernel/m*!
_output_shapes
:ђ─ђ*
dtype0
q
dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense/bias/m
j
 dense/bias/m/Read/ReadVariableOpReadVariableOpdense/bias/m*
_output_shapes	
:ђ*
dtype0
~
dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*!
shared_namedense_1/kernel/m
w
$dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdense_1/kernel/m* 
_output_shapes
:
ђђ*
dtype0
u
dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_1/bias/m
n
"dense_1/bias/m/Read/ReadVariableOpReadVariableOpdense_1/bias/m*
_output_shapes	
:ђ*
dtype0
~
dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*!
shared_namedense_2/kernel/m
w
$dense_2/kernel/m/Read/ReadVariableOpReadVariableOpdense_2/kernel/m* 
_output_shapes
:
ђђ*
dtype0
u
dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_2/bias/m
n
"dense_2/bias/m/Read/ReadVariableOpReadVariableOpdense_2/bias/m*
_output_shapes	
:ђ*
dtype0
}
dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*!
shared_namedense_3/kernel/m
v
$dense_3/kernel/m/Read/ReadVariableOpReadVariableOpdense_3/kernel/m*
_output_shapes
:	ђ*
dtype0
t
dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias/m
m
"dense_3/bias/m/Read/ReadVariableOpReadVariableOpdense_3/bias/m*
_output_shapes
:*
dtype0
ѓ
conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d/kernel/v
{
#conv2d/kernel/v/Read/ReadVariableOpReadVariableOpconv2d/kernel/v*&
_output_shapes
: *
dtype0
r
conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias/v
k
!conv2d/bias/v/Read/ReadVariableOpReadVariableOpconv2d/bias/v*
_output_shapes
: *
dtype0
є
conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_1/kernel/v

%conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_1/kernel/v*&
_output_shapes
:  *
dtype0
v
conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/bias/v
o
#conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpconv2d_1/bias/v*
_output_shapes
: *
dtype0
{
dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ─ђ*
shared_namedense/kernel/v
t
"dense/kernel/v/Read/ReadVariableOpReadVariableOpdense/kernel/v*!
_output_shapes
:ђ─ђ*
dtype0
q
dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense/bias/v
j
 dense/bias/v/Read/ReadVariableOpReadVariableOpdense/bias/v*
_output_shapes	
:ђ*
dtype0
~
dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*!
shared_namedense_1/kernel/v
w
$dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdense_1/kernel/v* 
_output_shapes
:
ђђ*
dtype0
u
dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_1/bias/v
n
"dense_1/bias/v/Read/ReadVariableOpReadVariableOpdense_1/bias/v*
_output_shapes	
:ђ*
dtype0
~
dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*!
shared_namedense_2/kernel/v
w
$dense_2/kernel/v/Read/ReadVariableOpReadVariableOpdense_2/kernel/v* 
_output_shapes
:
ђђ*
dtype0
u
dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_2/bias/v
n
"dense_2/bias/v/Read/ReadVariableOpReadVariableOpdense_2/bias/v*
_output_shapes	
:ђ*
dtype0
}
dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*!
shared_namedense_3/kernel/v
v
$dense_3/kernel/v/Read/ReadVariableOpReadVariableOpdense_3/kernel/v*
_output_shapes
:	ђ*
dtype0
t
dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias/v
m
"dense_3/bias/v/Read/ReadVariableOpReadVariableOpdense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ЁS
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*└R
valueХRB│R BгR
П
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
д

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
д

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
ј
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
ј
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
д

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
д

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
д

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*
д

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses*
ЗmЊmћ!mЋ"mќ5mЌ6mў=mЎ>mџEmЏFmюMmЮNmъvЪvа!vА"vб5vБ6vц=vЦ>vдEvДFvеMvЕNvф*
Z
0
1
!2
"3
54
65
=6
>7
E8
F9
M10
N11*
Z
0
1
!2
"3
54
65
=6
>7
E8
F9
M10
N11*
* 
░
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Zserving_default* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
Њ
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Љ
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
Њ
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
Њ
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

E0
F1*

E0
F1*
* 
ќ
~non_trainable_variables

layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
* 
ў
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*
* 
* 
* 
C
0
1
2
3
4
5
6
7
	8*

ѕ0
Ѕ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

іtotal

Іcount
ї	variables
Ї	keras_api*
M

јtotal

Јcount
љ
_fn_kwargs
Љ	variables
њ	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

і0
І1*

ї	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ј0
Ј1*

Љ	variables*
{u
VARIABLE_VALUEconv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEconv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEconv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEconv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEdense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEdense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEconv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEconv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEconv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEconv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEdense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEdense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEdense_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEdense_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Њ
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         ќќ*
dtype0*&
shape:         ќќ
ѓ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_660548
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
к
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp#conv2d/kernel/m/Read/ReadVariableOp!conv2d/bias/m/Read/ReadVariableOp%conv2d_1/kernel/m/Read/ReadVariableOp#conv2d_1/bias/m/Read/ReadVariableOp"dense/kernel/m/Read/ReadVariableOp dense/bias/m/Read/ReadVariableOp$dense_1/kernel/m/Read/ReadVariableOp"dense_1/bias/m/Read/ReadVariableOp$dense_2/kernel/m/Read/ReadVariableOp"dense_2/bias/m/Read/ReadVariableOp$dense_3/kernel/m/Read/ReadVariableOp"dense_3/bias/m/Read/ReadVariableOp#conv2d/kernel/v/Read/ReadVariableOp!conv2d/bias/v/Read/ReadVariableOp%conv2d_1/kernel/v/Read/ReadVariableOp#conv2d_1/bias/v/Read/ReadVariableOp"dense/kernel/v/Read/ReadVariableOp dense/bias/v/Read/ReadVariableOp$dense_1/kernel/v/Read/ReadVariableOp"dense_1/bias/v/Read/ReadVariableOp$dense_2/kernel/v/Read/ReadVariableOp"dense_2/bias/v/Read/ReadVariableOp$dense_3/kernel/v/Read/ReadVariableOp"dense_3/bias/v/Read/ReadVariableOpConst*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_660842
А
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biastotalcounttotal_1count_1conv2d/kernel/mconv2d/bias/mconv2d_1/kernel/mconv2d_1/bias/mdense/kernel/mdense/bias/mdense_1/kernel/mdense_1/bias/mdense_2/kernel/mdense_2/bias/mdense_3/kernel/mdense_3/bias/mconv2d/kernel/vconv2d/bias/vconv2d_1/kernel/vconv2d_1/bias/vdense/kernel/vdense/bias/vdense_1/kernel/vdense_1/bias/vdense_2/kernel/vdense_2/bias/vdense_3/kernel/vdense_3/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_660972йт
д

э
C__inference_dense_1_layer_call_and_return_conditional_losses_660027

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ы9
ц	
F__inference_sequential_layer_call_and_return_conditional_losses_660467

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:ђ─ђ4
%dense_biasadd_readvariableop_resource:	ђ:
&dense_1_matmul_readvariableop_resource:
ђђ6
'dense_1_biasadd_readvariableop_resource:	ђ:
&dense_2_matmul_readvariableop_resource:
ђђ6
'dense_2_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђ5
'dense_3_biasadd_readvariableop_resource:
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpі
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ф
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ *
paddingVALID*
strides
ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ћћ е
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:         JJ *
ksize
*
paddingVALID*
strides
ј
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides
ё
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ў
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         HH г
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     б  ѕ
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─Ѓ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:ђ─ђ*
dtype0ѕ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђє
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ї
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         ђє
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ј
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЁ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0Ї
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╚
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
ъ
┬
+__inference_sequential_layer_call_fn_660417

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:ђ─ђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:	ђ
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_660229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
ј
ч
B__inference_conv2d_layer_call_and_return_conditional_losses_660568

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ћћ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ћћ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
К
_
C__inference_flatten_layer_call_and_return_conditional_losses_660619

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     б  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $$ :W S
/
_output_shapes
:         $$ 
 
_user_specified_nameinputs
╩
ў
(__inference_dense_1_layer_call_fn_660648

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_660027p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
СR
ц
__inference__traced_save_660842
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop.
*savev2_conv2d_kernel_m_read_readvariableop,
(savev2_conv2d_bias_m_read_readvariableop0
,savev2_conv2d_1_kernel_m_read_readvariableop.
*savev2_conv2d_1_bias_m_read_readvariableop-
)savev2_dense_kernel_m_read_readvariableop+
'savev2_dense_bias_m_read_readvariableop/
+savev2_dense_1_kernel_m_read_readvariableop-
)savev2_dense_1_bias_m_read_readvariableop/
+savev2_dense_2_kernel_m_read_readvariableop-
)savev2_dense_2_bias_m_read_readvariableop/
+savev2_dense_3_kernel_m_read_readvariableop-
)savev2_dense_3_bias_m_read_readvariableop.
*savev2_conv2d_kernel_v_read_readvariableop,
(savev2_conv2d_bias_v_read_readvariableop0
,savev2_conv2d_1_kernel_v_read_readvariableop.
*savev2_conv2d_1_bias_v_read_readvariableop-
)savev2_dense_kernel_v_read_readvariableop+
'savev2_dense_bias_v_read_readvariableop/
+savev2_dense_1_kernel_v_read_readvariableop-
)savev2_dense_1_bias_v_read_readvariableop/
+savev2_dense_2_kernel_v_read_readvariableop-
)savev2_dense_2_bias_v_read_readvariableop/
+savev2_dense_3_kernel_v_read_readvariableop-
)savev2_dense_3_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Й
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*у
valueПB┌)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop*savev2_conv2d_kernel_m_read_readvariableop(savev2_conv2d_bias_m_read_readvariableop,savev2_conv2d_1_kernel_m_read_readvariableop*savev2_conv2d_1_bias_m_read_readvariableop)savev2_dense_kernel_m_read_readvariableop'savev2_dense_bias_m_read_readvariableop+savev2_dense_1_kernel_m_read_readvariableop)savev2_dense_1_bias_m_read_readvariableop+savev2_dense_2_kernel_m_read_readvariableop)savev2_dense_2_bias_m_read_readvariableop+savev2_dense_3_kernel_m_read_readvariableop)savev2_dense_3_bias_m_read_readvariableop*savev2_conv2d_kernel_v_read_readvariableop(savev2_conv2d_bias_v_read_readvariableop,savev2_conv2d_1_kernel_v_read_readvariableop*savev2_conv2d_1_bias_v_read_readvariableop)savev2_dense_kernel_v_read_readvariableop'savev2_dense_bias_v_read_readvariableop+savev2_dense_1_kernel_v_read_readvariableop)savev2_dense_1_bias_v_read_readvariableop+savev2_dense_2_kernel_v_read_readvariableop)savev2_dense_2_bias_v_read_readvariableop+savev2_dense_3_kernel_v_read_readvariableop)savev2_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*њ
_input_shapesђ
§: : : :  : :ђ─ђ:ђ:
ђђ:ђ:
ђђ:ђ:	ђ:: : : : : : :  : :ђ─ђ:ђ:
ђђ:ђ:
ђђ:ђ:	ђ:: : :  : :ђ─ђ:ђ:
ђђ:ђ:
ђђ:ђ:	ђ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :'#
!
_output_shapes
:ђ─ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :'#
!
_output_shapes
:ђ─ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  :  

_output_shapes
: :'!#
!
_output_shapes
:ђ─ђ:!"

_output_shapes	
:ђ:&#"
 
_output_shapes
:
ђђ:!$

_output_shapes	
:ђ:&%"
 
_output_shapes
:
ђђ:!&

_output_shapes	
:ђ:%'!

_output_shapes
:	ђ: (

_output_shapes
::)

_output_shapes
: 
д

э
C__inference_dense_2_layer_call_and_return_conditional_losses_660679

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ФЪ
┌
"__inference__traced_restore_660972
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel:  .
 assignvariableop_3_conv2d_1_bias: 4
assignvariableop_4_dense_kernel:ђ─ђ,
assignvariableop_5_dense_bias:	ђ5
!assignvariableop_6_dense_1_kernel:
ђђ.
assignvariableop_7_dense_1_bias:	ђ5
!assignvariableop_8_dense_2_kernel:
ђђ.
assignvariableop_9_dense_2_bias:	ђ5
"assignvariableop_10_dense_3_kernel:	ђ.
 assignvariableop_11_dense_3_bias:#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: =
#assignvariableop_16_conv2d_kernel_m: /
!assignvariableop_17_conv2d_bias_m: ?
%assignvariableop_18_conv2d_1_kernel_m:  1
#assignvariableop_19_conv2d_1_bias_m: 7
"assignvariableop_20_dense_kernel_m:ђ─ђ/
 assignvariableop_21_dense_bias_m:	ђ8
$assignvariableop_22_dense_1_kernel_m:
ђђ1
"assignvariableop_23_dense_1_bias_m:	ђ8
$assignvariableop_24_dense_2_kernel_m:
ђђ1
"assignvariableop_25_dense_2_bias_m:	ђ7
$assignvariableop_26_dense_3_kernel_m:	ђ0
"assignvariableop_27_dense_3_bias_m:=
#assignvariableop_28_conv2d_kernel_v: /
!assignvariableop_29_conv2d_bias_v: ?
%assignvariableop_30_conv2d_1_kernel_v:  1
#assignvariableop_31_conv2d_1_bias_v: 7
"assignvariableop_32_dense_kernel_v:ђ─ђ/
 assignvariableop_33_dense_bias_v:	ђ8
$assignvariableop_34_dense_1_kernel_v:
ђђ1
"assignvariableop_35_dense_1_bias_v:	ђ8
$assignvariableop_36_dense_2_kernel_v:
ђђ1
"assignvariableop_37_dense_2_bias_v:	ђ7
$assignvariableop_38_dense_3_kernel_v:	ђ0
"assignvariableop_39_dense_3_bias_v:
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9┴
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*у
valueПB┌)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_1_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_22AssignVariableOp$assignvariableop_22_dense_1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_2_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_3_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_3_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_1_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_34AssignVariableOp$assignvariableop_34_dense_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_35AssignVariableOp"assignvariableop_35_dense_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_36AssignVariableOp$assignvariableop_36_dense_2_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_37AssignVariableOp"assignvariableop_37_dense_2_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_38AssignVariableOp$assignvariableop_38_dense_3_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_39AssignVariableOp"assignvariableop_39_dense_3_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ё
┴
$__inference_signature_wrapper_660548
conv2d_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:ђ─ђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:	ђ
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_659924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input
ъ
┬
+__inference_sequential_layer_call_fn_660388

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:ђ─ђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:	ђ
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_660068o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
▓
D
(__inference_flatten_layer_call_fn_660613

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_659997b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $$ :W S
/
_output_shapes
:         $$ 
 
_user_specified_nameinputs
к
ќ
(__inference_dense_3_layer_call_fn_660688

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_660061o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ј
ч
B__inference_conv2d_layer_call_and_return_conditional_losses_659966

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ћћ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ћћ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
Љ
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_660578

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╩
ў
(__inference_dense_2_layer_call_fn_660668

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_660044p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ы
ю
'__inference_conv2d_layer_call_fn_660557

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ћћ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_659966y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ћћ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
Ш(
к
F__inference_sequential_layer_call_and_return_conditional_losses_660068

inputs'
conv2d_659967: 
conv2d_659969: )
conv2d_1_659985:  
conv2d_1_659987: !
dense_660011:ђ─ђ
dense_660013:	ђ"
dense_1_660028:
ђђ
dense_1_660030:	ђ"
dense_2_660045:
ђђ
dense_2_660047:	ђ!
dense_3_660062:	ђ
dense_3_660064:
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallш
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_659967conv2d_659969*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ћћ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_659966Ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_659985conv2d_1_659987*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984З
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945П
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_659997ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_660011dense_660013*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_660010љ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_660028dense_1_660030*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_660027њ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_660045dense_2_660047*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_660044Љ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_660062dense_3_660064*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_660061w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
тE
Ї
!__inference__wrapped_model_659924
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource:  A
3sequential_conv2d_1_biasadd_readvariableop_resource: D
/sequential_dense_matmul_readvariableop_resource:ђ─ђ?
0sequential_dense_biasadd_readvariableop_resource:	ђE
1sequential_dense_1_matmul_readvariableop_resource:
ђђA
2sequential_dense_1_biasadd_readvariableop_resource:	ђE
1sequential_dense_2_matmul_readvariableop_resource:
ђђA
2sequential_dense_2_biasadd_readvariableop_resource:	ђD
1sequential_dense_3_matmul_readvariableop_resource:	ђ@
2sequential_dense_3_biasadd_readvariableop_resource:
identityѕб(sequential/conv2d/BiasAdd/ReadVariableOpб'sequential/conv2d/Conv2D/ReadVariableOpб*sequential/conv2d_1/BiasAdd/ReadVariableOpб)sequential/conv2d_1/Conv2D/ReadVariableOpб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб)sequential/dense_1/BiasAdd/ReadVariableOpб(sequential/dense_1/MatMul/ReadVariableOpб)sequential/dense_2/BiasAdd/ReadVariableOpб(sequential/dense_2/MatMul/ReadVariableOpб)sequential/dense_3/BiasAdd/ReadVariableOpб(sequential/dense_3/MatMul/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0к
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ *
paddingVALID*
strides
ќ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ ~
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ћћ Й
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         JJ *
ksize
*
paddingVALID*
strides
ц
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0т
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides
џ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH ђ
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         HH ┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     б  Е
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_1/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─Ў
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:ђ─ђ*
dtype0Е
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЋ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ф
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђю
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0Г
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЎ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         ђю
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0»
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЎ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0░
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђw
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЏ
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0«
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ў
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         s
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input
Б

ш
C__inference_dense_3_layer_call_and_return_conditional_losses_660699

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
К
_
C__inference_flatten_layer_call_and_return_conditional_losses_659997

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     б  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $$ :W S
/
_output_shapes
:         $$ 
 
_user_specified_nameinputs
Љ
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш(
к
F__inference_sequential_layer_call_and_return_conditional_losses_660229

inputs'
conv2d_660195: 
conv2d_660197: )
conv2d_1_660201:  
conv2d_1_660203: !
dense_660208:ђ─ђ
dense_660210:	ђ"
dense_1_660213:
ђђ
dense_1_660215:	ђ"
dense_2_660218:
ђђ
dense_2_660220:	ђ!
dense_3_660223:	ђ
dense_3_660225:
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallш
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_660195conv2d_660197*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ћћ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_659966Ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_660201conv2d_1_660203*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984З
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945П
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_659997ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_660208dense_660210*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_660010љ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_660213dense_1_660215*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_660027њ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_660218dense_2_660220*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_660044Љ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_660223dense_3_660225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_660061w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_1_layer_call_fn_660603

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
д

э
C__inference_dense_2_layer_call_and_return_conditional_losses_660044

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╔
Ќ
&__inference_dense_layer_call_fn_660628

inputs
unknown:ђ─ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_660010p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
е

Ш
A__inference_dense_layer_call_and_return_conditional_losses_660010

inputs3
matmul_readvariableop_resource:ђ─ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ђ─ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
ё
§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         HH i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         HH w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         JJ 
 
_user_specified_nameinputs
Ы9
ц	
F__inference_sequential_layer_call_and_return_conditional_losses_660517

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:ђ─ђ4
%dense_biasadd_readvariableop_resource:	ђ:
&dense_1_matmul_readvariableop_resource:
ђђ6
'dense_1_biasadd_readvariableop_resource:	ђ:
&dense_2_matmul_readvariableop_resource:
ђђ6
'dense_2_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђ5
'dense_3_biasadd_readvariableop_resource:
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpі
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ф
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ *
paddingVALID*
strides
ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ћћ h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ћћ е
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:         JJ *
ksize
*
paddingVALID*
strides
ј
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides
ё
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ў
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         HH г
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     б  ѕ
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─Ѓ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:ђ─ђ*
dtype0ѕ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђє
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ї
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         ђє
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ј
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЁ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0Ї
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╚
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
ь
ъ
)__inference_conv2d_1_layer_call_fn_660587

inputs!
unknown:  
	unknown_0: 
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         HH `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         JJ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         JJ 
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_660608

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ё
§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_660598

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         HH X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         HH i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         HH w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         JJ 
 
_user_specified_nameinputs
░
╚
+__inference_sequential_layer_call_fn_660095
conv2d_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:ђ─ђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:	ђ
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_660068o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input
е

Ш
A__inference_dense_layer_call_and_return_conditional_losses_660639

inputs3
matmul_readvariableop_resource:ђ─ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ђ─ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Б

ш
C__inference_dense_3_layer_call_and_return_conditional_losses_660061

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ)
╠
F__inference_sequential_layer_call_and_return_conditional_losses_660359
conv2d_input'
conv2d_660325: 
conv2d_660327: )
conv2d_1_660331:  
conv2d_1_660333: !
dense_660338:ђ─ђ
dense_660340:	ђ"
dense_1_660343:
ђђ
dense_1_660345:	ђ"
dense_2_660348:
ђђ
dense_2_660350:	ђ!
dense_3_660353:	ђ
dense_3_660355:
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallч
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_660325conv2d_660327*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ћћ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_659966Ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_660331conv2d_1_660333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984З
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945П
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_659997ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_660338dense_660340*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_660010љ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_660343dense_1_660345*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_660027њ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_660348dense_2_660350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_660044Љ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_660353dense_3_660355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_660061w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input
ѕ)
╠
F__inference_sequential_layer_call_and_return_conditional_losses_660322
conv2d_input'
conv2d_660288: 
conv2d_660290: )
conv2d_1_660294:  
conv2d_1_660296: !
dense_660301:ђ─ђ
dense_660303:	ђ"
dense_1_660306:
ђђ
dense_1_660308:	ђ"
dense_2_660311:
ђђ
dense_2_660313:	ђ!
dense_3_660316:	ђ
dense_3_660318:
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallч
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_660288conv2d_660290*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ћћ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_659966Ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_660294conv2d_1_660296*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_659984З
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_659945П
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_659997ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_660301dense_660303*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_660010љ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_660306dense_1_660308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_660027њ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_660311dense_2_660313*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_660044Љ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_660316dense_3_660318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_660061w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input
д

э
C__inference_dense_1_layer_call_and_return_conditional_losses_660659

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
и
J
.__inference_max_pooling2d_layer_call_fn_660573

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_659933Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
╚
+__inference_sequential_layer_call_fn_660285
conv2d_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:ђ─ђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:	ђ
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_660229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ќќ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ќќ
&
_user_specified_nameconv2d_input"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
O
conv2d_input?
serving_default_conv2d_input:0         ќќ;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:Ла
э
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
╗

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
ЃmЊmћ!mЋ"mќ5mЌ6mў=mЎ>mџEmЏFmюMmЮNmъvЪvа!vА"vб5vБ6vц=vЦ>vдEvДFvеMvЕNvф"
	optimizer
v
0
1
!2
"3
54
65
=6
>7
E8
F9
M10
N11"
trackable_list_wrapper
v
0
1
!2
"3
54
65
=6
>7
E8
F9
M10
N11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Щ2э
+__inference_sequential_layer_call_fn_660095
+__inference_sequential_layer_call_fn_660388
+__inference_sequential_layer_call_fn_660417
+__inference_sequential_layer_call_fn_660285└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Т2с
F__inference_sequential_layer_call_and_return_conditional_losses_660467
F__inference_sequential_layer_call_and_return_conditional_losses_660517
F__inference_sequential_layer_call_and_return_conditional_losses_660322
F__inference_sequential_layer_call_and_return_conditional_losses_660359└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЛB╬
!__inference__wrapped_model_659924conv2d_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
Zserving_default"
signature_map
':% 2conv2d/kernel
: 2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Л2╬
'__inference_conv2d_layer_call_fn_660557б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
В2ж
B__inference_conv2d_layer_call_and_return_conditional_losses_660568б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
п2Н
.__inference_max_pooling2d_layer_call_fn_660573б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_660578б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
):'  2conv2d_1/kernel
: 2conv2d_1/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
М2л
)__inference_conv2d_1_layer_call_fn_660587б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_1_layer_call_and_return_conditional_losses_660598б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
┌2О
0__inference_max_pooling2d_1_layer_call_fn_660603б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ш2Ы
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_660608б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_flatten_layer_call_fn_660613б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_flatten_layer_call_and_return_conditional_losses_660619б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:ђ─ђ2dense/kernel
:ђ2
dense/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
л2═
&__inference_dense_layer_call_fn_660628б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
в2У
A__inference_dense_layer_call_and_return_conditional_losses_660639б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
": 
ђђ2dense_1/kernel
:ђ2dense_1/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_1_layer_call_fn_660648б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_1_layer_call_and_return_conditional_losses_660659б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
": 
ђђ2dense_2/kernel
:ђ2dense_2/bias
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
~non_trainable_variables

layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_2_layer_call_fn_660668б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_2_layer_call_and_return_conditional_losses_660679б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:	ђ2dense_3/kernel
:2dense_3/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_3_layer_call_fn_660688б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_3_layer_call_and_return_conditional_losses_660699б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лB═
$__inference_signature_wrapper_660548conv2d_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

іtotal

Іcount
ї	variables
Ї	keras_api"
_tf_keras_metric
c

јtotal

Јcount
љ
_fn_kwargs
Љ	variables
њ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
і0
І1"
trackable_list_wrapper
.
ї	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ј0
Ј1"
trackable_list_wrapper
.
Љ	variables"
_generic_user_object
':% 2conv2d/kernel/m
: 2conv2d/bias/m
):'  2conv2d_1/kernel/m
: 2conv2d_1/bias/m
!:ђ─ђ2dense/kernel/m
:ђ2dense/bias/m
": 
ђђ2dense_1/kernel/m
:ђ2dense_1/bias/m
": 
ђђ2dense_2/kernel/m
:ђ2dense_2/bias/m
!:	ђ2dense_3/kernel/m
:2dense_3/bias/m
':% 2conv2d/kernel/v
: 2conv2d/bias/v
):'  2conv2d_1/kernel/v
: 2conv2d_1/bias/v
!:ђ─ђ2dense/kernel/v
:ђ2dense/bias/v
": 
ђђ2dense_1/kernel/v
:ђ2dense_1/bias/v
": 
ђђ2dense_2/kernel/v
:ђ2dense_2/bias/v
!:	ђ2dense_3/kernel/v
:2dense_3/bias/vе
!__inference__wrapped_model_659924ѓ!"56=>EFMN?б<
5б2
0і-
conv2d_input         ќќ
ф "1ф.
,
dense_3!і
dense_3         ┤
D__inference_conv2d_1_layer_call_and_return_conditional_losses_660598l!"7б4
-б*
(і%
inputs         JJ 
ф "-б*
#і 
0         HH 
џ ї
)__inference_conv2d_1_layer_call_fn_660587_!"7б4
-б*
(і%
inputs         JJ 
ф " і         HH Х
B__inference_conv2d_layer_call_and_return_conditional_losses_660568p9б6
/б,
*і'
inputs         ќќ
ф "/б,
%і"
0         ћћ 
џ ј
'__inference_conv2d_layer_call_fn_660557c9б6
/б,
*і'
inputs         ќќ
ф ""і         ћћ Ц
C__inference_dense_1_layer_call_and_return_conditional_losses_660659^=>0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         ђ
џ }
(__inference_dense_1_layer_call_fn_660648Q=>0б-
&б#
!і
inputs         ђ
ф "і         ђЦ
C__inference_dense_2_layer_call_and_return_conditional_losses_660679^EF0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         ђ
џ }
(__inference_dense_2_layer_call_fn_660668QEF0б-
&б#
!і
inputs         ђ
ф "і         ђц
C__inference_dense_3_layer_call_and_return_conditional_losses_660699]MN0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         
џ |
(__inference_dense_3_layer_call_fn_660688PMN0б-
&б#
!і
inputs         ђ
ф "і         ц
A__inference_dense_layer_call_and_return_conditional_losses_660639_561б.
'б$
"і
inputs         ђ─
ф "&б#
і
0         ђ
џ |
&__inference_dense_layer_call_fn_660628R561б.
'б$
"і
inputs         ђ─
ф "і         ђЕ
C__inference_flatten_layer_call_and_return_conditional_losses_660619b7б4
-б*
(і%
inputs         $$ 
ф "'б$
і
0         ђ─
џ Ђ
(__inference_flatten_layer_call_fn_660613U7б4
-б*
(і%
inputs         $$ 
ф "і         ђ─Ь
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_660608ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_1_layer_call_fn_660603ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    В
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_660578ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ─
.__inference_max_pooling2d_layer_call_fn_660573ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ╚
F__inference_sequential_layer_call_and_return_conditional_losses_660322~!"56=>EFMNGбD
=б:
0і-
conv2d_input         ќќ
p 

 
ф "%б"
і
0         
џ ╚
F__inference_sequential_layer_call_and_return_conditional_losses_660359~!"56=>EFMNGбD
=б:
0і-
conv2d_input         ќќ
p

 
ф "%б"
і
0         
џ ┬
F__inference_sequential_layer_call_and_return_conditional_losses_660467x!"56=>EFMNAб>
7б4
*і'
inputs         ќќ
p 

 
ф "%б"
і
0         
џ ┬
F__inference_sequential_layer_call_and_return_conditional_losses_660517x!"56=>EFMNAб>
7б4
*і'
inputs         ќќ
p

 
ф "%б"
і
0         
џ а
+__inference_sequential_layer_call_fn_660095q!"56=>EFMNGбD
=б:
0і-
conv2d_input         ќќ
p 

 
ф "і         а
+__inference_sequential_layer_call_fn_660285q!"56=>EFMNGбD
=б:
0і-
conv2d_input         ќќ
p

 
ф "і         џ
+__inference_sequential_layer_call_fn_660388k!"56=>EFMNAб>
7б4
*і'
inputs         ќќ
p 

 
ф "і         џ
+__inference_sequential_layer_call_fn_660417k!"56=>EFMNAб>
7б4
*і'
inputs         ќќ
p

 
ф "і         ╗
$__inference_signature_wrapper_660548њ!"56=>EFMNOбL
б 
EфB
@
conv2d_input0і-
conv2d_input         ќќ"1ф.
,
dense_3!і
dense_3         