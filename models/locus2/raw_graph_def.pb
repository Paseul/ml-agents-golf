
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shape: *
dtype0*
	container *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
shape: *
dtype0*
	container *
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
L
vector_observationPlaceholder*
dtype0*
shape:’’’’’’’’’
p
running_mean/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@running_mean
}
running_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@running_mean

running_mean/AssignAssignrunning_meanrunning_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean
U
running_mean/readIdentityrunning_mean*
T0*
_class
loc:@running_mean
w
!running_variance/Initializer/onesConst*
valueB*  ?*
dtype0*#
_class
loc:@running_variance

running_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@running_variance
­
running_variance/AssignAssignrunning_variance!running_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance
a
running_variance/readIdentityrunning_variance*
T0*#
_class
loc:@running_variance
5
new_meanPlaceholder*
dtype0*
shape:
9
new_variancePlaceholder*
dtype0*
shape:
}
Assign_2Assignrunning_meannew_mean*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean

Assign_3Assignrunning_variancenew_variance*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance
:
subSubvector_observationrunning_mean/read*
T0
6
CastCastglobal_step/read*

SrcT0*

DstT0
2
add/yConst*
valueB
 *  ?*
dtype0
 
addAddCastadd/y*
T0
7
truedivRealDivrunning_variance/readadd*
T0

SqrtSqrttruediv*
T0
(
	truediv_1RealDivsubSqrt*
T0
G
normalized_state/Minimum/yConst*
valueB
 *   @*
dtype0
S
normalized_state/MinimumMinimum	truediv_1normalized_state/Minimum/y*
T0
?
normalized_state/yConst*
valueB
 *   Ą*
dtype0
R
normalized_stateMaximumnormalized_state/Minimumnormalized_state/y*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
|
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Ø>*
dtype0*
_class
loc:@dense/kernel
Ļ
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
seedüŖ*
seed2**
dtype0*
T0*
_class
loc:@dense/kernel
Ė
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
m
dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias
z

dense/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
j
dense/MatMulMatMulnormalized_statedense/kernel/read*
transpose_a( *
transpose_b( *
T0
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
*

dense/TanhTanhdense/BiasAdd*
T0

1dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel

0dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel

2dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Ø>*
dtype0*!
_class
loc:@dense_1/kernel
Õ
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
seedüŖ*
seed2:*
dtype0*
T0*!
_class
loc:@dense_1/kernel
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
Į
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
q
dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias
~
dense_1/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
n
dense_2/MatMulMatMulnormalized_statedense_1/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
T0*
data_formatNHWC
.
dense_2/TanhTanhdense_2/BiasAdd*
T0
D
memory_size/initial_valueConst*
value
B :*
dtype0
W
memory_size
VariableV2*
shape: *
dtype0*
	container *
shared_name 

memory_size/AssignAssignmemory_sizememory_size/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@memory_size
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
G
recurrent_inPlaceholder*
dtype0*
shape:’’’’’’’’’
H
strided_slice/stackConst*
valueB"        *
dtype0
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
valueB"      *
dtype0
č
strided_sliceStridedSlicerecurrent_instrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
B
Reshape/shape/0Const*
valueB :
’’’’’’’’’*
dtype0
:
Reshape/shape/2Const*
value
B :*
dtype0
f
Reshape/shapePackReshape/shape/0sequence_lengthReshape/shape/2*
N*
T0*

axis 
D
ReshapeReshape
dense/TanhReshape/shape*
T0*
Tshape0
T
lstm_policy/strided_slice/stackConst*
valueB"        *
dtype0
V
!lstm_policy/strided_slice/stack_1Const*
valueB"    @   *
dtype0
V
!lstm_policy/strided_slice/stack_2Const*
valueB"      *
dtype0

lstm_policy/strided_sliceStridedSlicestrided_slicelstm_policy/strided_slice/stack!lstm_policy/strided_slice/stack_1!lstm_policy/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
V
!lstm_policy/strided_slice_1/stackConst*
valueB"    @   *
dtype0
X
#lstm_policy/strided_slice_1/stack_1Const*
valueB"        *
dtype0
X
#lstm_policy/strided_slice_1/stack_2Const*
valueB"      *
dtype0
”
lstm_policy/strided_slice_1StridedSlicestrided_slice!lstm_policy/strided_slice_1/stack#lstm_policy/strided_slice_1/stack_1#lstm_policy/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
:
lstm_policy/RankConst*
value	B :*
dtype0
A
lstm_policy/range/startConst*
value	B :*
dtype0
A
lstm_policy/range/deltaConst*
value	B :*
dtype0
j
lstm_policy/rangeRangelstm_policy/range/startlstm_policy/Ranklstm_policy/range/delta*

Tidx0
P
lstm_policy/concat/values_0Const*
valueB"       *
dtype0
A
lstm_policy/concat/axisConst*
value	B : *
dtype0

lstm_policy/concatConcatV2lstm_policy/concat/values_0lstm_policy/rangelstm_policy/concat/axis*
N*
T0*

Tidx0
U
lstm_policy/transpose	TransposeReshapelstm_policy/concat*
T0*
Tperm0
N
lstm_policy/rnn/ShapeShapelstm_policy/transpose*
T0*
out_type0
Q
#lstm_policy/rnn/strided_slice/stackConst*
valueB:*
dtype0
S
%lstm_policy/rnn/strided_slice/stack_1Const*
valueB:*
dtype0
S
%lstm_policy/rnn/strided_slice/stack_2Const*
valueB:*
dtype0
±
lstm_policy/rnn/strided_sliceStridedSlicelstm_policy/rnn/Shape#lstm_policy/rnn/strided_slice/stack%lstm_policy/rnn/strided_slice/stack_1%lstm_policy/rnn/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
P
lstm_policy/rnn/Shape_1Shapelstm_policy/transpose*
T0*
out_type0
S
%lstm_policy/rnn/strided_slice_1/stackConst*
valueB: *
dtype0
U
'lstm_policy/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
U
'lstm_policy/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
»
lstm_policy/rnn/strided_slice_1StridedSlicelstm_policy/rnn/Shape_1%lstm_policy/rnn/strided_slice_1/stack'lstm_policy/rnn/strided_slice_1/stack_1'lstm_policy/rnn/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
P
lstm_policy/rnn/Shape_2Shapelstm_policy/transpose*
T0*
out_type0
S
%lstm_policy/rnn/strided_slice_2/stackConst*
valueB:*
dtype0
U
'lstm_policy/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0
U
'lstm_policy/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0
»
lstm_policy/rnn/strided_slice_2StridedSlicelstm_policy/rnn/Shape_2%lstm_policy/rnn/strided_slice_2/stack'lstm_policy/rnn/strided_slice_2/stack_1'lstm_policy/rnn/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
H
lstm_policy/rnn/ExpandDims/dimConst*
value	B : *
dtype0
~
lstm_policy/rnn/ExpandDims
ExpandDimslstm_policy/rnn/strided_slice_2lstm_policy/rnn/ExpandDims/dim*
T0*

Tdim0
C
lstm_policy/rnn/ConstConst*
valueB:@*
dtype0
E
lstm_policy/rnn/concat/axisConst*
value	B : *
dtype0

lstm_policy/rnn/concatConcatV2lstm_policy/rnn/ExpandDimslstm_policy/rnn/Constlstm_policy/rnn/concat/axis*
N*
T0*

Tidx0
H
lstm_policy/rnn/zeros/ConstConst*
valueB
 *    *
dtype0
[
lstm_policy/rnn/zerosFilllstm_policy/rnn/concatlstm_policy/rnn/zeros/Const*
T0
>
lstm_policy/rnn/timeConst*
value	B : *
dtype0
Ś
lstm_policy/rnn/TensorArrayTensorArrayV3lstm_policy/rnn/strided_slice_1*
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*;
tensor_array_name&$lstm_policy/rnn/dynamic_rnn/output_0
Ū
lstm_policy/rnn/TensorArray_1TensorArrayV3lstm_policy/rnn/strided_slice_1*
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*:
tensor_array_name%#lstm_policy/rnn/dynamic_rnn/input_0
a
(lstm_policy/rnn/TensorArrayUnstack/ShapeShapelstm_policy/transpose*
T0*
out_type0
d
6lstm_policy/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
f
8lstm_policy/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
f
8lstm_policy/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0

0lstm_policy/rnn/TensorArrayUnstack/strided_sliceStridedSlice(lstm_policy/rnn/TensorArrayUnstack/Shape6lstm_policy/rnn/TensorArrayUnstack/strided_slice/stack8lstm_policy/rnn/TensorArrayUnstack/strided_slice/stack_18lstm_policy/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
X
.lstm_policy/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
X
.lstm_policy/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
Ļ
(lstm_policy/rnn/TensorArrayUnstack/rangeRange.lstm_policy/rnn/TensorArrayUnstack/range/start0lstm_policy/rnn/TensorArrayUnstack/strided_slice.lstm_policy/rnn/TensorArrayUnstack/range/delta*

Tidx0

Jlstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_policy/rnn/TensorArray_1(lstm_policy/rnn/TensorArrayUnstack/rangelstm_policy/transposelstm_policy/rnn/TensorArray_1:1*
T0*(
_class
loc:@lstm_policy/transpose
¦
lstm_policy/rnn/while/EnterEnterlstm_policy/rnn/time*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
±
lstm_policy/rnn/while/Enter_1Enterlstm_policy/rnn/TensorArray:1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
­
lstm_policy/rnn/while/Enter_2Enterlstm_policy/strided_slice*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
Æ
lstm_policy/rnn/while/Enter_3Enterlstm_policy/strided_slice_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
x
lstm_policy/rnn/while/MergeMergelstm_policy/rnn/while/Enter#lstm_policy/rnn/while/NextIteration*
T0*
N
~
lstm_policy/rnn/while/Merge_1Mergelstm_policy/rnn/while/Enter_1%lstm_policy/rnn/while/NextIteration_1*
T0*
N
~
lstm_policy/rnn/while/Merge_2Mergelstm_policy/rnn/while/Enter_2%lstm_policy/rnn/while/NextIteration_2*
T0*
N
~
lstm_policy/rnn/while/Merge_3Mergelstm_policy/rnn/while/Enter_3%lstm_policy/rnn/while/NextIteration_3*
T0*
N
¶
 lstm_policy/rnn/while/Less/EnterEnterlstm_policy/rnn/strided_slice_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
j
lstm_policy/rnn/while/LessLesslstm_policy/rnn/while/Merge lstm_policy/rnn/while/Less/Enter*
T0
F
lstm_policy/rnn/while/LoopCondLoopCondlstm_policy/rnn/while/Less

lstm_policy/rnn/while/SwitchSwitchlstm_policy/rnn/while/Mergelstm_policy/rnn/while/LoopCond*
T0*.
_class$
" loc:@lstm_policy/rnn/while/Merge
¢
lstm_policy/rnn/while/Switch_1Switchlstm_policy/rnn/while/Merge_1lstm_policy/rnn/while/LoopCond*
T0*0
_class&
$"loc:@lstm_policy/rnn/while/Merge_1
¢
lstm_policy/rnn/while/Switch_2Switchlstm_policy/rnn/while/Merge_2lstm_policy/rnn/while/LoopCond*
T0*0
_class&
$"loc:@lstm_policy/rnn/while/Merge_2
¢
lstm_policy/rnn/while/Switch_3Switchlstm_policy/rnn/while/Merge_3lstm_policy/rnn/while/LoopCond*
T0*0
_class&
$"loc:@lstm_policy/rnn/while/Merge_3
S
lstm_policy/rnn/while/IdentityIdentitylstm_policy/rnn/while/Switch:1*
T0
W
 lstm_policy/rnn/while/Identity_1Identity lstm_policy/rnn/while/Switch_1:1*
T0
W
 lstm_policy/rnn/while/Identity_2Identity lstm_policy/rnn/while/Switch_2:1*
T0
W
 lstm_policy/rnn/while/Identity_3Identity lstm_policy/rnn/while/Switch_3:1*
T0
Į
-lstm_policy/rnn/while/TensorArrayReadV3/EnterEnterlstm_policy/rnn/TensorArray_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
š
/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1EnterJlstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
É
'lstm_policy/rnn/while/TensorArrayReadV3TensorArrayReadV3-lstm_policy/rnn/while/TensorArrayReadV3/Enterlstm_policy/rnn/while/Identity/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1*
dtype0
·
Glstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"Ą      *
dtype0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
­
Elstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *ķ½*
dtype0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
­
Elstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ķ=*
dtype0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

Olstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformGlstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
seedüŖ*
seed2*
dtype0*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

Elstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/subSubElstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/maxElstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
Ø
Elstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulOlstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformElstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

Alstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniformAddElstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/mulElstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
·
&lstm_policy/rnn/basic_lstm_cell/kernel
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

-lstm_policy/rnn/basic_lstm_cell/kernel/AssignAssign&lstm_policy/rnn/basic_lstm_cell/kernelAlstm_policy/rnn/basic_lstm_cell/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
h
+lstm_policy/rnn/basic_lstm_cell/kernel/readIdentity&lstm_policy/rnn/basic_lstm_cell/kernel*
T0
”
6lstm_policy/rnn/basic_lstm_cell/bias/Initializer/ConstConst*
valueB*    *
dtype0*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
®
$lstm_policy/rnn/basic_lstm_cell/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
ž
+lstm_policy/rnn/basic_lstm_cell/bias/AssignAssign$lstm_policy/rnn/basic_lstm_cell/bias6lstm_policy/rnn/basic_lstm_cell/bias/Initializer/Const*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
d
)lstm_policy/rnn/basic_lstm_cell/bias/readIdentity$lstm_policy/rnn/basic_lstm_cell/bias*
T0

5lstm_policy/rnn/while/rnn/basic_lstm_cell/concat/axisConst^lstm_policy/rnn/while/Identity*
value	B :*
dtype0
Ü
0lstm_policy/rnn/while/rnn/basic_lstm_cell/concatConcatV2'lstm_policy/rnn/while/TensorArrayReadV3 lstm_policy/rnn/while/Identity_35lstm_policy/rnn/while/rnn/basic_lstm_cell/concat/axis*
N*
T0*

Tidx0
Ų
6lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/EnterEnter+lstm_policy/rnn/basic_lstm_cell/kernel/read*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
0lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMulMatMul0lstm_policy/rnn/while/rnn/basic_lstm_cell/concat6lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter*
transpose_a( *
transpose_b( *
T0
×
7lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/EnterEnter)lstm_policy/rnn/basic_lstm_cell/bias/read*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ē
1lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAddBiasAdd0lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul7lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
z
/lstm_policy/rnn/while/rnn/basic_lstm_cell/ConstConst^lstm_policy/rnn/while/Identity*
value	B :*
dtype0

9lstm_policy/rnn/while/rnn/basic_lstm_cell/split/split_dimConst^lstm_policy/rnn/while/Identity*
value	B :*
dtype0
Ą
/lstm_policy/rnn/while/rnn/basic_lstm_cell/splitSplit9lstm_policy/rnn/while/rnn/basic_lstm_cell/split/split_dim1lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd*
	num_split*
T0
}
/lstm_policy/rnn/while/rnn/basic_lstm_cell/add/yConst^lstm_policy/rnn/while/Identity*
valueB
 *  ?*
dtype0
”
-lstm_policy/rnn/while/rnn/basic_lstm_cell/addAdd1lstm_policy/rnn/while/rnn/basic_lstm_cell/split:2/lstm_policy/rnn/while/rnn/basic_lstm_cell/add/y*
T0
t
1lstm_policy/rnn/while/rnn/basic_lstm_cell/SigmoidSigmoid-lstm_policy/rnn/while/rnn/basic_lstm_cell/add*
T0

-lstm_policy/rnn/while/rnn/basic_lstm_cell/mulMul lstm_policy/rnn/while/Identity_21lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid*
T0
x
3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1Sigmoid/lstm_policy/rnn/while/rnn/basic_lstm_cell/split*
T0
r
.lstm_policy/rnn/while/rnn/basic_lstm_cell/TanhTanh1lstm_policy/rnn/while/rnn/basic_lstm_cell/split:1*
T0
¤
/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1Mul3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1.lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh*
T0

/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1Add-lstm_policy/rnn/while/rnn/basic_lstm_cell/mul/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1*
T0
r
0lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1Tanh/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1*
T0
z
3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2Sigmoid1lstm_policy/rnn/while/rnn/basic_lstm_cell/split:3*
T0
¦
/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2Mul0lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_13lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2*
T0

?lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_policy/rnn/TensorArray*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations *B
_class8
64loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2
Š
9lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3?lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_policy/rnn/while/Identity/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2 lstm_policy/rnn/while/Identity_1*
T0*B
_class8
64loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2
f
lstm_policy/rnn/while/add/yConst^lstm_policy/rnn/while/Identity*
value	B :*
dtype0
f
lstm_policy/rnn/while/addAddlstm_policy/rnn/while/Identitylstm_policy/rnn/while/add/y*
T0
X
#lstm_policy/rnn/while/NextIterationNextIterationlstm_policy/rnn/while/add*
T0
z
%lstm_policy/rnn/while/NextIteration_1NextIteration9lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0
p
%lstm_policy/rnn/while/NextIteration_2NextIteration/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1*
T0
p
%lstm_policy/rnn/while/NextIteration_3NextIteration/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2*
T0
I
lstm_policy/rnn/while/ExitExitlstm_policy/rnn/while/Switch*
T0
M
lstm_policy/rnn/while/Exit_1Exitlstm_policy/rnn/while/Switch_1*
T0
M
lstm_policy/rnn/while/Exit_2Exitlstm_policy/rnn/while/Switch_2*
T0
M
lstm_policy/rnn/while/Exit_3Exitlstm_policy/rnn/while/Switch_3*
T0
²
2lstm_policy/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm_policy/rnn/TensorArraylstm_policy/rnn/while/Exit_1*.
_class$
" loc:@lstm_policy/rnn/TensorArray

,lstm_policy/rnn/TensorArrayStack/range/startConst*
value	B : *
dtype0*.
_class$
" loc:@lstm_policy/rnn/TensorArray

,lstm_policy/rnn/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*.
_class$
" loc:@lstm_policy/rnn/TensorArray
ū
&lstm_policy/rnn/TensorArrayStack/rangeRange,lstm_policy/rnn/TensorArrayStack/range/start2lstm_policy/rnn/TensorArrayStack/TensorArraySizeV3,lstm_policy/rnn/TensorArrayStack/range/delta*

Tidx0*.
_class$
" loc:@lstm_policy/rnn/TensorArray

4lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm_policy/rnn/TensorArray&lstm_policy/rnn/TensorArrayStack/rangelstm_policy/rnn/while/Exit_1*
dtype0*$
element_shape:’’’’’’’’’@*.
_class$
" loc:@lstm_policy/rnn/TensorArray
E
lstm_policy/rnn/Const_1Const*
valueB:@*
dtype0
>
lstm_policy/rnn/RankConst*
value	B :*
dtype0
E
lstm_policy/rnn/range/startConst*
value	B :*
dtype0
E
lstm_policy/rnn/range/deltaConst*
value	B :*
dtype0
z
lstm_policy/rnn/rangeRangelstm_policy/rnn/range/startlstm_policy/rnn/Ranklstm_policy/rnn/range/delta*

Tidx0
V
!lstm_policy/rnn/concat_1/values_0Const*
valueB"       *
dtype0
G
lstm_policy/rnn/concat_1/axisConst*
value	B : *
dtype0

lstm_policy/rnn/concat_1ConcatV2!lstm_policy/rnn/concat_1/values_0lstm_policy/rnn/rangelstm_policy/rnn/concat_1/axis*
N*
T0*

Tidx0

lstm_policy/rnn/transpose	Transpose4lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3lstm_policy/rnn/concat_1*
T0*
Tperm0
D
Reshape_1/shapeConst*
valueB"’’’’@   *
dtype0
W
	Reshape_1Reshapelstm_policy/rnn/transposeReshape_1/shape*
T0*
Tshape0
5
concat/axisConst*
value	B :*
dtype0
y
concatConcatV2lstm_policy/rnn/while/Exit_2lstm_policy/rnn/while/Exit_3concat/axis*
N*
T0*

Tidx0
J
strided_slice_1/stackConst*
valueB"       *
dtype0
L
strided_slice_1/stack_1Const*
valueB"        *
dtype0
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
š
strided_slice_1StridedSlicerecurrent_instrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
D
Reshape_2/shape/0Const*
valueB :
’’’’’’’’’*
dtype0
<
Reshape_2/shape/2Const*
value
B :*
dtype0
l
Reshape_2/shapePackReshape_2/shape/0sequence_lengthReshape_2/shape/2*
N*
T0*

axis 
J
	Reshape_2Reshapedense_2/TanhReshape_2/shape*
T0*
Tshape0
S
lstm_value/strided_slice/stackConst*
valueB"        *
dtype0
U
 lstm_value/strided_slice/stack_1Const*
valueB"    @   *
dtype0
U
 lstm_value/strided_slice/stack_2Const*
valueB"      *
dtype0

lstm_value/strided_sliceStridedSlicestrided_slice_1lstm_value/strided_slice/stack lstm_value/strided_slice/stack_1 lstm_value/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
U
 lstm_value/strided_slice_1/stackConst*
valueB"    @   *
dtype0
W
"lstm_value/strided_slice_1/stack_1Const*
valueB"        *
dtype0
W
"lstm_value/strided_slice_1/stack_2Const*
valueB"      *
dtype0

lstm_value/strided_slice_1StridedSlicestrided_slice_1 lstm_value/strided_slice_1/stack"lstm_value/strided_slice_1/stack_1"lstm_value/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
9
lstm_value/RankConst*
value	B :*
dtype0
@
lstm_value/range/startConst*
value	B :*
dtype0
@
lstm_value/range/deltaConst*
value	B :*
dtype0
f
lstm_value/rangeRangelstm_value/range/startlstm_value/Ranklstm_value/range/delta*

Tidx0
O
lstm_value/concat/values_0Const*
valueB"       *
dtype0
@
lstm_value/concat/axisConst*
value	B : *
dtype0

lstm_value/concatConcatV2lstm_value/concat/values_0lstm_value/rangelstm_value/concat/axis*
N*
T0*

Tidx0
U
lstm_value/transpose	Transpose	Reshape_2lstm_value/concat*
T0*
Tperm0
L
lstm_value/rnn/ShapeShapelstm_value/transpose*
T0*
out_type0
P
"lstm_value/rnn/strided_slice/stackConst*
valueB:*
dtype0
R
$lstm_value/rnn/strided_slice/stack_1Const*
valueB:*
dtype0
R
$lstm_value/rnn/strided_slice/stack_2Const*
valueB:*
dtype0
¬
lstm_value/rnn/strided_sliceStridedSlicelstm_value/rnn/Shape"lstm_value/rnn/strided_slice/stack$lstm_value/rnn/strided_slice/stack_1$lstm_value/rnn/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
N
lstm_value/rnn/Shape_1Shapelstm_value/transpose*
T0*
out_type0
R
$lstm_value/rnn/strided_slice_1/stackConst*
valueB: *
dtype0
T
&lstm_value/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
T
&lstm_value/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
¶
lstm_value/rnn/strided_slice_1StridedSlicelstm_value/rnn/Shape_1$lstm_value/rnn/strided_slice_1/stack&lstm_value/rnn/strided_slice_1/stack_1&lstm_value/rnn/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
N
lstm_value/rnn/Shape_2Shapelstm_value/transpose*
T0*
out_type0
R
$lstm_value/rnn/strided_slice_2/stackConst*
valueB:*
dtype0
T
&lstm_value/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0
T
&lstm_value/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0
¶
lstm_value/rnn/strided_slice_2StridedSlicelstm_value/rnn/Shape_2$lstm_value/rnn/strided_slice_2/stack&lstm_value/rnn/strided_slice_2/stack_1&lstm_value/rnn/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
G
lstm_value/rnn/ExpandDims/dimConst*
value	B : *
dtype0
{
lstm_value/rnn/ExpandDims
ExpandDimslstm_value/rnn/strided_slice_2lstm_value/rnn/ExpandDims/dim*
T0*

Tdim0
B
lstm_value/rnn/ConstConst*
valueB:@*
dtype0
D
lstm_value/rnn/concat/axisConst*
value	B : *
dtype0

lstm_value/rnn/concatConcatV2lstm_value/rnn/ExpandDimslstm_value/rnn/Constlstm_value/rnn/concat/axis*
N*
T0*

Tidx0
G
lstm_value/rnn/zeros/ConstConst*
valueB
 *    *
dtype0
X
lstm_value/rnn/zerosFilllstm_value/rnn/concatlstm_value/rnn/zeros/Const*
T0
=
lstm_value/rnn/timeConst*
value	B : *
dtype0
×
lstm_value/rnn/TensorArrayTensorArrayV3lstm_value/rnn/strided_slice_1*
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*:
tensor_array_name%#lstm_value/rnn/dynamic_rnn/output_0
Ų
lstm_value/rnn/TensorArray_1TensorArrayV3lstm_value/rnn/strided_slice_1*
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*9
tensor_array_name$"lstm_value/rnn/dynamic_rnn/input_0
_
'lstm_value/rnn/TensorArrayUnstack/ShapeShapelstm_value/transpose*
T0*
out_type0
c
5lstm_value/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
e
7lstm_value/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
e
7lstm_value/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0

/lstm_value/rnn/TensorArrayUnstack/strided_sliceStridedSlice'lstm_value/rnn/TensorArrayUnstack/Shape5lstm_value/rnn/TensorArrayUnstack/strided_slice/stack7lstm_value/rnn/TensorArrayUnstack/strided_slice/stack_17lstm_value/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
W
-lstm_value/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
W
-lstm_value/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
Ė
'lstm_value/rnn/TensorArrayUnstack/rangeRange-lstm_value/rnn/TensorArrayUnstack/range/start/lstm_value/rnn/TensorArrayUnstack/strided_slice-lstm_value/rnn/TensorArrayUnstack/range/delta*

Tidx0

Ilstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_value/rnn/TensorArray_1'lstm_value/rnn/TensorArrayUnstack/rangelstm_value/transposelstm_value/rnn/TensorArray_1:1*
T0*'
_class
loc:@lstm_value/transpose
£
lstm_value/rnn/while/EnterEnterlstm_value/rnn/time*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
®
lstm_value/rnn/while/Enter_1Enterlstm_value/rnn/TensorArray:1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
Ŗ
lstm_value/rnn/while/Enter_2Enterlstm_value/strided_slice*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
¬
lstm_value/rnn/while/Enter_3Enterlstm_value/strided_slice_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
u
lstm_value/rnn/while/MergeMergelstm_value/rnn/while/Enter"lstm_value/rnn/while/NextIteration*
T0*
N
{
lstm_value/rnn/while/Merge_1Mergelstm_value/rnn/while/Enter_1$lstm_value/rnn/while/NextIteration_1*
T0*
N
{
lstm_value/rnn/while/Merge_2Mergelstm_value/rnn/while/Enter_2$lstm_value/rnn/while/NextIteration_2*
T0*
N
{
lstm_value/rnn/while/Merge_3Mergelstm_value/rnn/while/Enter_3$lstm_value/rnn/while/NextIteration_3*
T0*
N
³
lstm_value/rnn/while/Less/EnterEnterlstm_value/rnn/strided_slice_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
g
lstm_value/rnn/while/LessLesslstm_value/rnn/while/Mergelstm_value/rnn/while/Less/Enter*
T0
D
lstm_value/rnn/while/LoopCondLoopCondlstm_value/rnn/while/Less

lstm_value/rnn/while/SwitchSwitchlstm_value/rnn/while/Mergelstm_value/rnn/while/LoopCond*
T0*-
_class#
!loc:@lstm_value/rnn/while/Merge

lstm_value/rnn/while/Switch_1Switchlstm_value/rnn/while/Merge_1lstm_value/rnn/while/LoopCond*
T0*/
_class%
#!loc:@lstm_value/rnn/while/Merge_1

lstm_value/rnn/while/Switch_2Switchlstm_value/rnn/while/Merge_2lstm_value/rnn/while/LoopCond*
T0*/
_class%
#!loc:@lstm_value/rnn/while/Merge_2

lstm_value/rnn/while/Switch_3Switchlstm_value/rnn/while/Merge_3lstm_value/rnn/while/LoopCond*
T0*/
_class%
#!loc:@lstm_value/rnn/while/Merge_3
Q
lstm_value/rnn/while/IdentityIdentitylstm_value/rnn/while/Switch:1*
T0
U
lstm_value/rnn/while/Identity_1Identitylstm_value/rnn/while/Switch_1:1*
T0
U
lstm_value/rnn/while/Identity_2Identitylstm_value/rnn/while/Switch_2:1*
T0
U
lstm_value/rnn/while/Identity_3Identitylstm_value/rnn/while/Switch_3:1*
T0
¾
,lstm_value/rnn/while/TensorArrayReadV3/EnterEnterlstm_value/rnn/TensorArray_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ķ
.lstm_value/rnn/while/TensorArrayReadV3/Enter_1EnterIlstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Å
&lstm_value/rnn/while/TensorArrayReadV3TensorArrayReadV3,lstm_value/rnn/while/TensorArrayReadV3/Enterlstm_value/rnn/while/Identity.lstm_value/rnn/while/TensorArrayReadV3/Enter_1*
dtype0
µ
Flstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"Ą      *
dtype0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
«
Dlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *ķ½*
dtype0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
«
Dlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ķ=*
dtype0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

Nlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformFlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
seedüŖ*
seed2Æ*
dtype0*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

Dlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/subSubDlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/maxDlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
¤
Dlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulNlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformDlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

@lstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniformAddDlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/mulDlstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
µ
%lstm_value/rnn/basic_lstm_cell/kernel
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

,lstm_value/rnn/basic_lstm_cell/kernel/AssignAssign%lstm_value/rnn/basic_lstm_cell/kernel@lstm_value/rnn/basic_lstm_cell/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
f
*lstm_value/rnn/basic_lstm_cell/kernel/readIdentity%lstm_value/rnn/basic_lstm_cell/kernel*
T0

5lstm_value/rnn/basic_lstm_cell/bias/Initializer/ConstConst*
valueB*    *
dtype0*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
¬
#lstm_value/rnn/basic_lstm_cell/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
ś
*lstm_value/rnn/basic_lstm_cell/bias/AssignAssign#lstm_value/rnn/basic_lstm_cell/bias5lstm_value/rnn/basic_lstm_cell/bias/Initializer/Const*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
b
(lstm_value/rnn/basic_lstm_cell/bias/readIdentity#lstm_value/rnn/basic_lstm_cell/bias*
T0
~
4lstm_value/rnn/while/rnn/basic_lstm_cell/concat/axisConst^lstm_value/rnn/while/Identity*
value	B :*
dtype0
Ų
/lstm_value/rnn/while/rnn/basic_lstm_cell/concatConcatV2&lstm_value/rnn/while/TensorArrayReadV3lstm_value/rnn/while/Identity_34lstm_value/rnn/while/rnn/basic_lstm_cell/concat/axis*
N*
T0*

Tidx0
Õ
5lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/EnterEnter*lstm_value/rnn/basic_lstm_cell/kernel/read*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Š
/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMulMatMul/lstm_value/rnn/while/rnn/basic_lstm_cell/concat5lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter*
transpose_a( *
transpose_b( *
T0
Ō
6lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/EnterEnter(lstm_value/rnn/basic_lstm_cell/bias/read*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ä
0lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAddBiasAdd/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul6lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
x
.lstm_value/rnn/while/rnn/basic_lstm_cell/ConstConst^lstm_value/rnn/while/Identity*
value	B :*
dtype0

8lstm_value/rnn/while/rnn/basic_lstm_cell/split/split_dimConst^lstm_value/rnn/while/Identity*
value	B :*
dtype0
½
.lstm_value/rnn/while/rnn/basic_lstm_cell/splitSplit8lstm_value/rnn/while/rnn/basic_lstm_cell/split/split_dim0lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd*
	num_split*
T0
{
.lstm_value/rnn/while/rnn/basic_lstm_cell/add/yConst^lstm_value/rnn/while/Identity*
valueB
 *  ?*
dtype0

,lstm_value/rnn/while/rnn/basic_lstm_cell/addAdd0lstm_value/rnn/while/rnn/basic_lstm_cell/split:2.lstm_value/rnn/while/rnn/basic_lstm_cell/add/y*
T0
r
0lstm_value/rnn/while/rnn/basic_lstm_cell/SigmoidSigmoid,lstm_value/rnn/while/rnn/basic_lstm_cell/add*
T0

,lstm_value/rnn/while/rnn/basic_lstm_cell/mulMullstm_value/rnn/while/Identity_20lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid*
T0
v
2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1Sigmoid.lstm_value/rnn/while/rnn/basic_lstm_cell/split*
T0
p
-lstm_value/rnn/while/rnn/basic_lstm_cell/TanhTanh0lstm_value/rnn/while/rnn/basic_lstm_cell/split:1*
T0
”
.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1Mul2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1-lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh*
T0

.lstm_value/rnn/while/rnn/basic_lstm_cell/add_1Add,lstm_value/rnn/while/rnn/basic_lstm_cell/mul.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1*
T0
p
/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1Tanh.lstm_value/rnn/while/rnn/basic_lstm_cell/add_1*
T0
x
2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2Sigmoid0lstm_value/rnn/while/rnn/basic_lstm_cell/split:3*
T0
£
.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2Mul/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_12lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2*
T0

>lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_value/rnn/TensorArray*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations *A
_class7
53loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2
Ź
8lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3>lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_value/rnn/while/Identity.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2lstm_value/rnn/while/Identity_1*
T0*A
_class7
53loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2
d
lstm_value/rnn/while/add/yConst^lstm_value/rnn/while/Identity*
value	B :*
dtype0
c
lstm_value/rnn/while/addAddlstm_value/rnn/while/Identitylstm_value/rnn/while/add/y*
T0
V
"lstm_value/rnn/while/NextIterationNextIterationlstm_value/rnn/while/add*
T0
x
$lstm_value/rnn/while/NextIteration_1NextIteration8lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0
n
$lstm_value/rnn/while/NextIteration_2NextIteration.lstm_value/rnn/while/rnn/basic_lstm_cell/add_1*
T0
n
$lstm_value/rnn/while/NextIteration_3NextIteration.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2*
T0
G
lstm_value/rnn/while/ExitExitlstm_value/rnn/while/Switch*
T0
K
lstm_value/rnn/while/Exit_1Exitlstm_value/rnn/while/Switch_1*
T0
K
lstm_value/rnn/while/Exit_2Exitlstm_value/rnn/while/Switch_2*
T0
K
lstm_value/rnn/while/Exit_3Exitlstm_value/rnn/while/Switch_3*
T0
®
1lstm_value/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm_value/rnn/TensorArraylstm_value/rnn/while/Exit_1*-
_class#
!loc:@lstm_value/rnn/TensorArray

+lstm_value/rnn/TensorArrayStack/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@lstm_value/rnn/TensorArray

+lstm_value/rnn/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@lstm_value/rnn/TensorArray
ö
%lstm_value/rnn/TensorArrayStack/rangeRange+lstm_value/rnn/TensorArrayStack/range/start1lstm_value/rnn/TensorArrayStack/TensorArraySizeV3+lstm_value/rnn/TensorArrayStack/range/delta*

Tidx0*-
_class#
!loc:@lstm_value/rnn/TensorArray

3lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm_value/rnn/TensorArray%lstm_value/rnn/TensorArrayStack/rangelstm_value/rnn/while/Exit_1*
dtype0*$
element_shape:’’’’’’’’’@*-
_class#
!loc:@lstm_value/rnn/TensorArray
D
lstm_value/rnn/Const_1Const*
valueB:@*
dtype0
=
lstm_value/rnn/RankConst*
value	B :*
dtype0
D
lstm_value/rnn/range/startConst*
value	B :*
dtype0
D
lstm_value/rnn/range/deltaConst*
value	B :*
dtype0
v
lstm_value/rnn/rangeRangelstm_value/rnn/range/startlstm_value/rnn/Ranklstm_value/rnn/range/delta*

Tidx0
U
 lstm_value/rnn/concat_1/values_0Const*
valueB"       *
dtype0
F
lstm_value/rnn/concat_1/axisConst*
value	B : *
dtype0

lstm_value/rnn/concat_1ConcatV2 lstm_value/rnn/concat_1/values_0lstm_value/rnn/rangelstm_value/rnn/concat_1/axis*
N*
T0*

Tidx0

lstm_value/rnn/transpose	Transpose3lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3lstm_value/rnn/concat_1*
T0*
Tperm0
D
Reshape_3/shapeConst*
valueB"’’’’@   *
dtype0
V
	Reshape_3Reshapelstm_value/rnn/transposeReshape_3/shape*
T0*
Tshape0
7
concat_1/axisConst*
value	B :*
dtype0
{
concat_1ConcatV2lstm_value/rnn/while/Exit_2lstm_value/rnn/while/Exit_3concat_1/axis*
N*
T0*

Tidx0
<
recurrent_out/axisConst*
value	B :*
dtype0
]
recurrent_outConcatV2concatconcat_1recurrent_out/axis*
N*
T0*

Tidx0

1dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *
dtype0*!
_class
loc:@dense_2/kernel

0dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel

2dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *i<*
dtype0*!
_class
loc:@dense_2/kernel
Ö
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
seedüŖ*
seed2ń*
dtype0*
T0*!
_class
loc:@dense_2/kernel
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Į
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
g
dense_3/MatMulMatMul	Reshape_1dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0
z
#log_sigma_squared/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
²
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
d
log_sigma_squared/readIdentitylog_sigma_squared*
T0*$
_class
loc:@log_sigma_squared
+
ExpExplog_sigma_squared/read*
T0
7
ShapeShapedense_3/MatMul*
T0*
out_type0
?
random_normal/meanConst*
valueB
 *    *
dtype0
A
random_normal/stddevConst*
valueB
 *  ?*
dtype0
s
"random_normal/RandomStandardNormalRandomStandardNormalShape*
seedüŖ*
seed2*
dtype0*
T0
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0

Sqrt_1SqrtExp*
T0
*
mulMulSqrt_1random_normal*
T0
*
add_1Adddense_3/MatMulmul*
T0
"
actionIdentityadd_1*
T0
-
StopGradientStopGradientaction*
T0
3
sub_1SubStopGradientdense_3/MatMul*
T0
2
Pow/yConst*
valueB
 *   @*
dtype0
!
PowPowsub_1Pow/y*
T0
4
mul_1/xConst*
valueB
 *  æ*
dtype0
#
mul_1Mulmul_1/xPow*
T0
4
mul_2/xConst*
valueB
 *   @*
dtype0
#
mul_2Mulmul_2/xExp*
T0
+
	truediv_2RealDivmul_1mul_2*
T0
 
Exp_1Exp	truediv_2*
T0
4
mul_3/xConst*
valueB
 *   @*
dtype0
#
mul_3Mulmul_3/xExp*
T0
4
mul_4/yConst*
valueB
 *ŪI@*
dtype0
%
mul_4Mulmul_3mul_4/y*
T0

Sqrt_2Sqrtmul_4*
T0
8
truediv_3/xConst*
valueB
 *  ?*
dtype0
2
	truediv_3RealDivtruediv_3/xSqrt_2*
T0
.
action_probsMulExp_1	truediv_3*
T0
4
mul_5/xConst*
valueB
 *Ą¢A*
dtype0
#
mul_5Mulmul_5/xExp*
T0

LogLogmul_5*
T0
4
mul_6/xConst*
valueB
 *   ?*
dtype0
#
mul_6Mulmul_6/xLog*
T0
3
ConstConst*
valueB: *
dtype0
@
MeanMeanmul_6Const*
	keep_dims( *
T0*

Tidx0

/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *¾*
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*!
_class
loc:@dense_3/kernel
Ī
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
seedüŖ*
seed2£*
dtype0*
T0*!
_class
loc:@dense_3/kernel
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
Č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
ŗ
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
Æ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
p
dense_3/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias
}
dense_3/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
g
dense_4/MatMulMatMul	Reshape_3dense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_4/BiasAdd*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:’’’’’’’’’
+
IdentityIdentityaction_probs*
T0
2

Identity_1Identityold_probabilities*
T0
F
Reshape_4/shapeConst*
valueB:
’’’’’’’’’*
dtype0
L
	Reshape_4Reshapevalue_estimateReshape_4/shape*
T0*
Tshape0
<
ones_like/ShapeShape	Reshape_4*
T0*
out_type0
<
ones_like/ConstConst*
valueB
 *  ?*
dtype0
<
	ones_likeFillones_like/Shapeones_like/Const*
T0
&
mul_7Mul	ones_likeMean*
T0
H
discounted_rewardsPlaceholder*
dtype0*
shape:’’’’’’’’’
D

advantagesPlaceholder*
dtype0*
shape:’’’’’’’’’
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * PĆG*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *’ęŪ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
I
old_value_estimatesPlaceholder*
dtype0*
shape:’’’’’’’’’
;
masksPlaceholder*
dtype0*
shape:’’’’’’’’’
L
PolynomialDecay_1/learning_rateConst*
valueB
 *ĶĢĢ=*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * PĆG*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ĶĢĢ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *o:*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * PĆG*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
4
Equal/yConst*
valueB
 *  ?*
dtype0
'
EqualEqualmasksEqual/y*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
W
SumSumvalue_estimateSum/reduction_indices*
	keep_dims( *
T0*

Tidx0
/
sub_2SubSumold_value_estimates*
T0
&
NegNegPolynomialDecay_1*
T0
C
clip_by_value/MinimumMinimumsub_2PolynomialDecay_1*
T0
=
clip_by_valueMaximumclip_by_value/MinimumNeg*
T0
9
add_2Addold_value_estimatesclip_by_value*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
[
Sum_1Sumvalue_estimateSum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
J
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_1*
T0
L
SquaredDifference_1SquaredDifferencediscounted_rewardsadd_2*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
=
boolean_mask/ShapeShapeMaximum*
T0*
out_type0
N
 boolean_mask/strided_slice/stackConst*
valueB: *
dtype0
P
"boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0
P
"boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0
¢
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape boolean_mask/strided_slice/stack"boolean_mask/strided_slice/stack_1"boolean_mask/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
Q
#boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask/ProdProdboolean_mask/strided_slice#boolean_mask/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0
?
boolean_mask/Shape_1ShapeMaximum*
T0*
out_type0
P
"boolean_mask/strided_slice_1/stackConst*
valueB:*
dtype0
R
$boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0
R
$boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0
¬
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1"boolean_mask/strided_slice_1/stack$boolean_mask/strided_slice_1/stack_1$boolean_mask/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
U
boolean_mask/concat/values_0Packboolean_mask/Prod*
N*
T0*

axis 
B
boolean_mask/concat/axisConst*
value	B : *
dtype0

boolean_mask/concatConcatV2boolean_mask/concat/values_0boolean_mask/strided_slice_1boolean_mask/concat/axis*
N*
T0*

Tidx0
T
boolean_mask/ReshapeReshapeMaximumboolean_mask/concat*
T0*
Tshape0
S
boolean_mask/Reshape_1/shapeConst*
valueB:
’’’’’’’’’*
dtype0
]
boolean_mask/Reshape_1ReshapeEqualboolean_mask/Reshape_1/shape*
T0
*
Tshape0
3
boolean_mask/WhereWhereboolean_mask/Reshape_1
S
boolean_mask/SqueezeSqueezeboolean_mask/Where*
T0	*
squeeze_dims


boolean_mask/GatherGatherboolean_mask/Reshapeboolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	
5
Const_1Const*
valueB: *
dtype0
R
Mean_1Meanboolean_mask/GatherConst_1*
	keep_dims( *
T0*

Tidx0
4
add_3/yConst*
valueB
 *’ęŪ.*
dtype0
*
add_3Add
Identity_1add_3/y*
T0
.
	truediv_4RealDivIdentityadd_3*
T0
,
mul_8Mul	truediv_4
advantages*
T0
4
sub_3/xConst*
valueB
 *  ?*
dtype0
1
sub_3Subsub_3/xPolynomialDecay_1*
T0
4
add_4/xConst*
valueB
 *  ?*
dtype0
1
add_4Addadd_4/xPolynomialDecay_1*
T0
=
clip_by_value_1/MinimumMinimum	truediv_4add_4*
T0
C
clip_by_value_1Maximumclip_by_value_1/Minimumsub_3*
T0
2
mul_9Mulclip_by_value_1
advantages*
T0
)
MinimumMinimummul_8mul_9*
T0
?
boolean_mask_1/ShapeShapeMinimum*
T0*
out_type0
P
"boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0
R
$boolean_mask_1/strided_slice/stack_1Const*
valueB:*
dtype0
R
$boolean_mask_1/strided_slice/stack_2Const*
valueB:*
dtype0
¬
boolean_mask_1/strided_sliceStridedSliceboolean_mask_1/Shape"boolean_mask_1/strided_slice/stack$boolean_mask_1/strided_slice/stack_1$boolean_mask_1/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
S
%boolean_mask_1/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask_1/ProdProdboolean_mask_1/strided_slice%boolean_mask_1/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0
A
boolean_mask_1/Shape_1ShapeMinimum*
T0*
out_type0
R
$boolean_mask_1/strided_slice_1/stackConst*
valueB:*
dtype0
T
&boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_1/strided_slice_1/stack_2Const*
valueB:*
dtype0
¶
boolean_mask_1/strided_slice_1StridedSliceboolean_mask_1/Shape_1$boolean_mask_1/strided_slice_1/stack&boolean_mask_1/strided_slice_1/stack_1&boolean_mask_1/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
Y
boolean_mask_1/concat/values_0Packboolean_mask_1/Prod*
N*
T0*

axis 
D
boolean_mask_1/concat/axisConst*
value	B : *
dtype0

boolean_mask_1/concatConcatV2boolean_mask_1/concat/values_0boolean_mask_1/strided_slice_1boolean_mask_1/concat/axis*
N*
T0*

Tidx0
X
boolean_mask_1/ReshapeReshapeMinimumboolean_mask_1/concat*
T0*
Tshape0
U
boolean_mask_1/Reshape_1/shapeConst*
valueB:
’’’’’’’’’*
dtype0
a
boolean_mask_1/Reshape_1ReshapeEqualboolean_mask_1/Reshape_1/shape*
T0
*
Tshape0
7
boolean_mask_1/WhereWhereboolean_mask_1/Reshape_1
W
boolean_mask_1/SqueezeSqueezeboolean_mask_1/Where*
T0	*
squeeze_dims


boolean_mask_1/GatherGatherboolean_mask_1/Reshapeboolean_mask_1/Squeeze*
validate_indices(*
Tparams0*
Tindices0	
<
Const_2Const*
valueB"       *
dtype0
T
Mean_2Meanboolean_mask_1/GatherConst_2*
	keep_dims( *
T0*

Tidx0

Neg_1NegMean_2*
T0
5
mul_10/xConst*
valueB
 *   ?*
dtype0
(
mul_10Mulmul_10/xMean_1*
T0
$
add_5AddNeg_1mul_10*
T0
=
boolean_mask_2/ShapeShapemul_7*
T0*
out_type0
P
"boolean_mask_2/strided_slice/stackConst*
valueB: *
dtype0
R
$boolean_mask_2/strided_slice/stack_1Const*
valueB:*
dtype0
R
$boolean_mask_2/strided_slice/stack_2Const*
valueB:*
dtype0
¬
boolean_mask_2/strided_sliceStridedSliceboolean_mask_2/Shape"boolean_mask_2/strided_slice/stack$boolean_mask_2/strided_slice/stack_1$boolean_mask_2/strided_slice/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
S
%boolean_mask_2/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask_2/ProdProdboolean_mask_2/strided_slice%boolean_mask_2/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0
?
boolean_mask_2/Shape_1Shapemul_7*
T0*
out_type0
R
$boolean_mask_2/strided_slice_1/stackConst*
valueB:*
dtype0
T
&boolean_mask_2/strided_slice_1/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_2/strided_slice_1/stack_2Const*
valueB:*
dtype0
¶
boolean_mask_2/strided_slice_1StridedSliceboolean_mask_2/Shape_1$boolean_mask_2/strided_slice_1/stack&boolean_mask_2/strided_slice_1/stack_1&boolean_mask_2/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
Y
boolean_mask_2/concat/values_0Packboolean_mask_2/Prod*
N*
T0*

axis 
D
boolean_mask_2/concat/axisConst*
value	B : *
dtype0

boolean_mask_2/concatConcatV2boolean_mask_2/concat/values_0boolean_mask_2/strided_slice_1boolean_mask_2/concat/axis*
N*
T0*

Tidx0
V
boolean_mask_2/ReshapeReshapemul_7boolean_mask_2/concat*
T0*
Tshape0
U
boolean_mask_2/Reshape_1/shapeConst*
valueB:
’’’’’’’’’*
dtype0
a
boolean_mask_2/Reshape_1ReshapeEqualboolean_mask_2/Reshape_1/shape*
T0
*
Tshape0
7
boolean_mask_2/WhereWhereboolean_mask_2/Reshape_1
W
boolean_mask_2/SqueezeSqueezeboolean_mask_2/Where*
T0	*
squeeze_dims


boolean_mask_2/GatherGatherboolean_mask_2/Reshapeboolean_mask_2/Squeeze*
validate_indices(*
Tparams0*
Tindices0	
5
Const_3Const*
valueB: *
dtype0
T
Mean_3Meanboolean_mask_2/GatherConst_3*
	keep_dims( *
T0*

Tidx0
1
mul_11MulPolynomialDecay_2Mean_3*
T0
$
sub_4Subadd_5mul_11*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
;
gradients/f_countConst*
value	B : *
dtype0

gradients/f_count_1Entergradients/f_count*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
X
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N
S
gradients/SwitchSwitchgradients/Mergelstm_value/rnn/while/LoopCond*
T0
Y
gradients/Add/yConst^lstm_value/rnn/while/Identity*
value	B :*
dtype0
B
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0
ž
gradients/NextIterationNextIterationgradients/Addf^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2`^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2b^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1N^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPushV2P^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPushV2`^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2b^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1^^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2`^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1L^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPushV2N^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPushV2`^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2b^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1N^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPushV2P^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPushV2^^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2T^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2R^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2T^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1*
T0
6
gradients/f_count_2Exitgradients/Switch*
T0
;
gradients/b_countConst*
value	B :*
dtype0
¦
gradients/b_count_1Entergradients/f_count_2*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
\
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N
­
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
`
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0
7
gradients/b_count_2LoopCondgradients/GreaterEqual
M
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0
Q
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0
„
gradients/NextIteration_1NextIterationgradients/Suba^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0
8
gradients/b_count_3Exitgradients/Switch_1*
T0
=
gradients/f_count_3Const*
value	B : *
dtype0

gradients/f_count_4Entergradients/f_count_3*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
\
gradients/Merge_2Mergegradients/f_count_4gradients/NextIteration_2*
T0*
N
X
gradients/Switch_2Switchgradients/Merge_2lstm_policy/rnn/while/LoopCond*
T0
\
gradients/Add_1/yConst^lstm_policy/rnn/while/Identity*
value	B :*
dtype0
H
gradients/Add_1Addgradients/Switch_2:1gradients/Add_1/y*
T0

gradients/NextIteration_2NextIterationgradients/Add_1g^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2a^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2c^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPushV2Q^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPushV2a^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2c^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1_^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2a^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1M^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPushV2O^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPushV2a^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2c^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPushV2Q^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPushV2_^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2U^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2S^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2U^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1*
T0
8
gradients/f_count_5Exitgradients/Switch_2*
T0
=
gradients/b_count_4Const*
value	B :*
dtype0
§
gradients/b_count_5Entergradients/f_count_5*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
\
gradients/Merge_3Mergegradients/b_count_5gradients/NextIteration_3*
T0*
N
²
gradients/GreaterEqual_1/EnterEntergradients/b_count_4*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
d
gradients/GreaterEqual_1GreaterEqualgradients/Merge_3gradients/GreaterEqual_1/Enter*
T0
9
gradients/b_count_6LoopCondgradients/GreaterEqual_1
M
gradients/Switch_3Switchgradients/Merge_3gradients/b_count_6*
T0
U
gradients/Sub_1Subgradients/Switch_3:1gradients/GreaterEqual_1/Enter*
T0
Ø
gradients/NextIteration_3NextIterationgradients/Sub_1b^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0
8
gradients/b_count_7Exitgradients/Switch_3*
T0
C
gradients/sub_4_grad/ShapeConst*
valueB *
dtype0
E
gradients/sub_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0

gradients/sub_4_grad/SumSumgradients/Fill*gradients/sub_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0

gradients/sub_4_grad/Sum_1Sumgradients/Fill,gradients/sub_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
T0
x
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
¹
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
æ
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
C
gradients/add_5_grad/ShapeConst*
valueB *
dtype0
E
gradients/add_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
 
gradients/add_5_grad/SumSum-gradients/sub_4_grad/tuple/control_dependency*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
¤
gradients/add_5_grad/Sum_1Sum-gradients/sub_4_grad/tuple/control_dependency,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
æ
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
D
gradients/mul_11_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_11_grad/Shape_1Const*
valueB *
dtype0

+gradients/mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_11_grad/Shapegradients/mul_11_grad/Shape_1*
T0
b
gradients/mul_11_grad/mulMul/gradients/sub_4_grad/tuple/control_dependency_1Mean_3*
T0

gradients/mul_11_grad/SumSumgradients/mul_11_grad/mul+gradients/mul_11_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
w
gradients/mul_11_grad/ReshapeReshapegradients/mul_11_grad/Sumgradients/mul_11_grad/Shape*
T0*
Tshape0
o
gradients/mul_11_grad/mul_1MulPolynomialDecay_2/gradients/sub_4_grad/tuple/control_dependency_1*
T0

gradients/mul_11_grad/Sum_1Sumgradients/mul_11_grad/mul_1-gradients/mul_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
}
gradients/mul_11_grad/Reshape_1Reshapegradients/mul_11_grad/Sum_1gradients/mul_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Reshape ^gradients/mul_11_grad/Reshape_1
½
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Reshape'^gradients/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_11_grad/Reshape
Ć
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Reshape_1'^gradients/mul_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_11_grad/Reshape_1
W
gradients/Neg_1_grad/NegNeg-gradients/add_5_grad/tuple/control_dependency*
T0
D
gradients/mul_10_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_10_grad/Shape_1Const*
valueB *
dtype0

+gradients/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_10_grad/Shapegradients/mul_10_grad/Shape_1*
T0
b
gradients/mul_10_grad/mulMul/gradients/add_5_grad/tuple/control_dependency_1Mean_1*
T0

gradients/mul_10_grad/SumSumgradients/mul_10_grad/mul+gradients/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
w
gradients/mul_10_grad/ReshapeReshapegradients/mul_10_grad/Sumgradients/mul_10_grad/Shape*
T0*
Tshape0
f
gradients/mul_10_grad/mul_1Mulmul_10/x/gradients/add_5_grad/tuple/control_dependency_1*
T0

gradients/mul_10_grad/Sum_1Sumgradients/mul_10_grad/mul_1-gradients/mul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
}
gradients/mul_10_grad/Reshape_1Reshapegradients/mul_10_grad/Sum_1gradients/mul_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Reshape ^gradients/mul_10_grad/Reshape_1
½
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Reshape'^gradients/mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_10_grad/Reshape
Ć
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Reshape_1'^gradients/mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_10_grad/Reshape_1
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape0gradients/mul_11_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
T
gradients/Mean_3_grad/ShapeShapeboolean_mask_2/Gather*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*
T0*

Tmultiples0
V
gradients/Mean_3_grad/Shape_1Shapeboolean_mask_2/Gather*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
¶
gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
}
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
ŗ
gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
{
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
¢
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
 
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_3_grad/Shape_1
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
X
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_2_grad/ReshapeReshapegradients/Neg_1_grad/Neg#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
T
gradients/Mean_2_grad/ShapeShapeboolean_mask_1/Gather*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*
T0*

Tmultiples0
V
gradients/Mean_2_grad/Shape_1Shapeboolean_mask_1/Gather*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
¶
gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
}
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
ŗ
gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
{
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
¢
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
 
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape0gradients/mul_10_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
R
gradients/Mean_1_grad/ShapeShapeboolean_mask/Gather*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
T
gradients/Mean_1_grad/Shape_1Shapeboolean_mask/Gather*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¶
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
}
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
ŗ
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
{
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¢
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
 
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0

*gradients/boolean_mask_2/Gather_grad/ShapeShapeboolean_mask_2/Reshape*
T0*
out_type0	*)
_class
loc:@boolean_mask_2/Reshape
£
,gradients/boolean_mask_2/Gather_grad/ToInt32Cast*gradients/boolean_mask_2/Gather_grad/Shape*

SrcT0	*

DstT0*)
_class
loc:@boolean_mask_2/Reshape
b
)gradients/boolean_mask_2/Gather_grad/SizeSizeboolean_mask_2/Squeeze*
T0	*
out_type0
]
3gradients/boolean_mask_2/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0
²
/gradients/boolean_mask_2/Gather_grad/ExpandDims
ExpandDims)gradients/boolean_mask_2/Gather_grad/Size3gradients/boolean_mask_2/Gather_grad/ExpandDims/dim*
T0*

Tdim0
f
8gradients/boolean_mask_2/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
h
:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
h
:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

2gradients/boolean_mask_2/Gather_grad/strided_sliceStridedSlice,gradients/boolean_mask_2/Gather_grad/ToInt328gradients/boolean_mask_2/Gather_grad/strided_slice/stack:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_1:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
Z
0gradients/boolean_mask_2/Gather_grad/concat/axisConst*
value	B : *
dtype0
ģ
+gradients/boolean_mask_2/Gather_grad/concatConcatV2/gradients/boolean_mask_2/Gather_grad/ExpandDims2gradients/boolean_mask_2/Gather_grad/strided_slice0gradients/boolean_mask_2/Gather_grad/concat/axis*
N*
T0*

Tidx0

,gradients/boolean_mask_2/Gather_grad/ReshapeReshapegradients/Mean_3_grad/truediv+gradients/boolean_mask_2/Gather_grad/concat*
T0*
Tshape0

.gradients/boolean_mask_2/Gather_grad/Reshape_1Reshapeboolean_mask_2/Squeeze/gradients/boolean_mask_2/Gather_grad/ExpandDims*
T0	*
Tshape0

*gradients/boolean_mask_1/Gather_grad/ShapeShapeboolean_mask_1/Reshape*
T0*
out_type0	*)
_class
loc:@boolean_mask_1/Reshape
£
,gradients/boolean_mask_1/Gather_grad/ToInt32Cast*gradients/boolean_mask_1/Gather_grad/Shape*

SrcT0	*

DstT0*)
_class
loc:@boolean_mask_1/Reshape
b
)gradients/boolean_mask_1/Gather_grad/SizeSizeboolean_mask_1/Squeeze*
T0	*
out_type0
]
3gradients/boolean_mask_1/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0
²
/gradients/boolean_mask_1/Gather_grad/ExpandDims
ExpandDims)gradients/boolean_mask_1/Gather_grad/Size3gradients/boolean_mask_1/Gather_grad/ExpandDims/dim*
T0*

Tdim0
f
8gradients/boolean_mask_1/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
h
:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
h
:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

2gradients/boolean_mask_1/Gather_grad/strided_sliceStridedSlice,gradients/boolean_mask_1/Gather_grad/ToInt328gradients/boolean_mask_1/Gather_grad/strided_slice/stack:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_1:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
Z
0gradients/boolean_mask_1/Gather_grad/concat/axisConst*
value	B : *
dtype0
ģ
+gradients/boolean_mask_1/Gather_grad/concatConcatV2/gradients/boolean_mask_1/Gather_grad/ExpandDims2gradients/boolean_mask_1/Gather_grad/strided_slice0gradients/boolean_mask_1/Gather_grad/concat/axis*
N*
T0*

Tidx0

,gradients/boolean_mask_1/Gather_grad/ReshapeReshapegradients/Mean_2_grad/truediv+gradients/boolean_mask_1/Gather_grad/concat*
T0*
Tshape0

.gradients/boolean_mask_1/Gather_grad/Reshape_1Reshapeboolean_mask_1/Squeeze/gradients/boolean_mask_1/Gather_grad/ExpandDims*
T0	*
Tshape0

(gradients/boolean_mask/Gather_grad/ShapeShapeboolean_mask/Reshape*
T0*
out_type0	*'
_class
loc:@boolean_mask/Reshape

*gradients/boolean_mask/Gather_grad/ToInt32Cast(gradients/boolean_mask/Gather_grad/Shape*

SrcT0	*

DstT0*'
_class
loc:@boolean_mask/Reshape
^
'gradients/boolean_mask/Gather_grad/SizeSizeboolean_mask/Squeeze*
T0	*
out_type0
[
1gradients/boolean_mask/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0
¬
-gradients/boolean_mask/Gather_grad/ExpandDims
ExpandDims'gradients/boolean_mask/Gather_grad/Size1gradients/boolean_mask/Gather_grad/ExpandDims/dim*
T0*

Tdim0
d
6gradients/boolean_mask/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
f
8gradients/boolean_mask/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
f
8gradients/boolean_mask/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

0gradients/boolean_mask/Gather_grad/strided_sliceStridedSlice*gradients/boolean_mask/Gather_grad/ToInt326gradients/boolean_mask/Gather_grad/strided_slice/stack8gradients/boolean_mask/Gather_grad/strided_slice/stack_18gradients/boolean_mask/Gather_grad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask 
X
.gradients/boolean_mask/Gather_grad/concat/axisConst*
value	B : *
dtype0
ä
)gradients/boolean_mask/Gather_grad/concatConcatV2-gradients/boolean_mask/Gather_grad/ExpandDims0gradients/boolean_mask/Gather_grad/strided_slice.gradients/boolean_mask/Gather_grad/concat/axis*
N*
T0*

Tidx0

*gradients/boolean_mask/Gather_grad/ReshapeReshapegradients/Mean_1_grad/truediv)gradients/boolean_mask/Gather_grad/concat*
T0*
Tshape0

,gradients/boolean_mask/Gather_grad/Reshape_1Reshapeboolean_mask/Squeeze-gradients/boolean_mask/Gather_grad/ExpandDims*
T0	*
Tshape0
T
+gradients/boolean_mask_2/Reshape_grad/ShapeShapemul_7*
T0*
out_type0
o
Agradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0
q
Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
q
Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
Ą
;gradients/boolean_mask_2/Reshape_grad/Reshape/strided_sliceStridedSlice,gradients/boolean_mask_2/Gather_grad/ToInt32Agradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stackCgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_1Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
ž
4gradients/boolean_mask_2/Reshape_grad/Reshape/tensorUnsortedSegmentSum,gradients/boolean_mask_2/Gather_grad/Reshape.gradients/boolean_mask_2/Gather_grad/Reshape_1;gradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice*
T0*
Tindices0	
²
-gradients/boolean_mask_2/Reshape_grad/ReshapeReshape4gradients/boolean_mask_2/Reshape_grad/Reshape/tensor+gradients/boolean_mask_2/Reshape_grad/Shape*
T0*
Tshape0
V
+gradients/boolean_mask_1/Reshape_grad/ShapeShapeMinimum*
T0*
out_type0
o
Agradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0
q
Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
q
Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
Ą
;gradients/boolean_mask_1/Reshape_grad/Reshape/strided_sliceStridedSlice,gradients/boolean_mask_1/Gather_grad/ToInt32Agradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackCgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
ž
4gradients/boolean_mask_1/Reshape_grad/Reshape/tensorUnsortedSegmentSum,gradients/boolean_mask_1/Gather_grad/Reshape.gradients/boolean_mask_1/Gather_grad/Reshape_1;gradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice*
T0*
Tindices0	
²
-gradients/boolean_mask_1/Reshape_grad/ReshapeReshape4gradients/boolean_mask_1/Reshape_grad/Reshape/tensor+gradients/boolean_mask_1/Reshape_grad/Shape*
T0*
Tshape0
T
)gradients/boolean_mask/Reshape_grad/ShapeShapeMaximum*
T0*
out_type0
m
?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0
o
Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
o
Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
¶
9gradients/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice*gradients/boolean_mask/Gather_grad/ToInt32?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackAgradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask
ö
2gradients/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum*gradients/boolean_mask/Gather_grad/Reshape,gradients/boolean_mask/Gather_grad/Reshape_19gradients/boolean_mask/Reshape_grad/Reshape/strided_slice*
T0*
Tindices0	
¬
+gradients/boolean_mask/Reshape_grad/ReshapeReshape2gradients/boolean_mask/Reshape_grad/Reshape/tensor)gradients/boolean_mask/Reshape_grad/Shape*
T0*
Tshape0
G
gradients/mul_7_grad/ShapeShape	ones_like*
T0*
out_type0
E
gradients/mul_7_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
]
gradients/mul_7_grad/mulMul-gradients/boolean_mask_2/Reshape_grad/ReshapeMean*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/mul*gradients/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
d
gradients/mul_7_grad/mul_1Mul	ones_like-gradients/boolean_mask_2/Reshape_grad/Reshape*
T0

gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
¹
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
æ
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
E
gradients/Minimum_grad/ShapeShapemul_8*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_9*
T0*
out_type0
o
gradients/Minimum_grad/Shape_2Shape-gradients/boolean_mask_1/Reshape_grad/Reshape*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
q
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_8mul_9*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual-gradients/boolean_mask_1/Reshape_grad/Reshapegradients/Minimum_grad/zeros*
T0
”
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros-gradients/boolean_mask_1/Reshape_grad/Reshape*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Į
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ē
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
m
gradients/Maximum_grad/Shape_2Shape+gradients/boolean_mask/Reshape_grad/Reshape*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
q
gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
 
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual+gradients/boolean_mask/Reshape_grad/Reshapegradients/Maximum_grad/zeros*
T0
¢
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros+gradients/boolean_mask/Reshape_grad/Reshape*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Į
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ē
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
L
gradients/ones_like_grad/ConstConst*
valueB: *
dtype0

gradients/ones_like_grad/SumSum-gradients/mul_7_grad/tuple/control_dependencygradients/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
P
"gradients/Mean_grad/Tile/multiplesConst*
valueB:*
dtype0
|
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*
T0*

Tmultiples0
G
gradients/Mean_grad/ShapeConst*
valueB:*
dtype0
D
gradients/Mean_grad/Shape_1Const*
valueB *
dtype0
u
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
Ŗ
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
w
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
°
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
u
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
G
gradients/mul_8_grad/ShapeShape	truediv_4*
T0*
out_type0
J
gradients/mul_8_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_8_grad/Shapegradients/mul_8_grad/Shape_1*
T0
e
gradients/mul_8_grad/mulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_8_grad/SumSumgradients/mul_8_grad/mul*gradients/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_8_grad/ReshapeReshapegradients/mul_8_grad/Sumgradients/mul_8_grad/Shape*
T0*
Tshape0
f
gradients/mul_8_grad/mul_1Mul	truediv_4/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_8_grad/Sum_1Sumgradients/mul_8_grad/mul_1,gradients/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_8_grad/Reshape_1Reshapegradients/mul_8_grad/Sum_1gradients/mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Reshape^gradients/mul_8_grad/Reshape_1
¹
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Reshape&^gradients/mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape
æ
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Reshape_1&^gradients/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_8_grad/Reshape_1
M
gradients/mul_9_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
J
gradients/mul_9_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_9_grad/Shapegradients/mul_9_grad/Shape_1*
T0
g
gradients/mul_9_grad/mulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_9_grad/SumSumgradients/mul_9_grad/mul*gradients/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_9_grad/ReshapeReshapegradients/mul_9_grad/Sumgradients/mul_9_grad/Shape*
T0*
Tshape0
n
gradients/mul_9_grad/mul_1Mulclip_by_value_11gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_9_grad/Sum_1Sumgradients/mul_9_grad/mul_1,gradients/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_9_grad/Reshape_1Reshapegradients/mul_9_grad/Sum_1gradients/mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Reshape^gradients/mul_9_grad/Reshape_1
¹
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Reshape&^gradients/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape
æ
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Reshape_1&^gradients/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_9_grad/Reshape_1
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_1*
T0*
out_type0
Ŗ
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0

'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_10^gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ć
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
^
(gradients/SquaredDifference_1_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_2*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_1_grad/subSubdiscounted_rewardsadd_22^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ń
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ė
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
C
gradients/mul_6_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_6_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
J
gradients/mul_6_grad/mulMulgradients/Mean_grad/truedivLog*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/mul*gradients/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
P
gradients/mul_6_grad/mul_1Mulmul_6/xgradients/Mean_grad/truediv*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
æ
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_1_grad/Shape_2Shape-gradients/mul_9_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_3*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
ŗ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual-gradients/mul_9_grad/tuple/control_dependency$gradients/clip_by_value_1_grad/zeros*
T0
¼
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros-gradients/mul_9_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
į
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ē
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
L
gradients/Sum_1_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
į
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
N*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
w
gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0
Q
gradients/add_2_grad/ShapeShapeold_value_estimates*
T0*
out_type0
M
gradients/add_2_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0
°
gradients/add_2_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0
“
gradients/add_2_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
æ
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
m
gradients/Log_grad/Reciprocal
Reciprocalmul_50^gradients/mul_6_grad/tuple/control_dependency_1*
T0
v
gradients/Log_grad/mulMul/gradients/mul_6_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
Y
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_4*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
”
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0
X
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_4add_4*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ł
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Ū
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ź
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
w
$gradients/clip_by_value_grad/Shape_2Shape/gradients/add_2_grad/tuple/control_dependency_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0
^
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
¶
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual/gradients/add_2_grad/tuple/control_dependency_1"gradients/clip_by_value_grad/zeros*
T0
ø
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros/gradients/add_2_grad/tuple/control_dependency_1*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ł
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
C
gradients/mul_5_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_5_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
E
gradients/mul_5_grad/mulMulgradients/Log_grad/mulExp*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
K
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Log_grad/mul*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
æ
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
É
gradients/AddNAddN-gradients/mul_8_grad/tuple/control_dependency?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape
J
gradients/truediv_4_grad/ShapeShapeIdentity*
T0*
out_type0
I
 gradients/truediv_4_grad/Shape_1Shapeadd_3*
T0*
out_type0

.gradients/truediv_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_4_grad/Shape gradients/truediv_4_grad/Shape_1*
T0
K
 gradients/truediv_4_grad/RealDivRealDivgradients/AddNadd_3*
T0

gradients/truediv_4_grad/SumSum gradients/truediv_4_grad/RealDiv.gradients/truediv_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_4_grad/ReshapeReshapegradients/truediv_4_grad/Sumgradients/truediv_4_grad/Shape*
T0*
Tshape0
6
gradients/truediv_4_grad/NegNegIdentity*
T0
[
"gradients/truediv_4_grad/RealDiv_1RealDivgradients/truediv_4_grad/Negadd_3*
T0
a
"gradients/truediv_4_grad/RealDiv_2RealDiv"gradients/truediv_4_grad/RealDiv_1add_3*
T0
`
gradients/truediv_4_grad/mulMulgradients/AddN"gradients/truediv_4_grad/RealDiv_2*
T0

gradients/truediv_4_grad/Sum_1Sumgradients/truediv_4_grad/mul0gradients/truediv_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_4_grad/Reshape_1Reshapegradients/truediv_4_grad/Sum_1 gradients/truediv_4_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_4_grad/tuple/group_depsNoOp!^gradients/truediv_4_grad/Reshape#^gradients/truediv_4_grad/Reshape_1
É
1gradients/truediv_4_grad/tuple/control_dependencyIdentity gradients/truediv_4_grad/Reshape*^gradients/truediv_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_4_grad/Reshape
Ļ
3gradients/truediv_4_grad/tuple/control_dependency_1Identity"gradients/truediv_4_grad/Reshape_1*^gradients/truediv_4_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_4_grad/Reshape_1
S
*gradients/clip_by_value/Minimum_grad/ShapeShapesub_2*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0
^
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualsub_2PolynomialDecay_1*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ń
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ł
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
’
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
A
gradients/sub_2_grad/ShapeShapeSum*
T0*
out_type0
S
gradients/sub_2_grad/Shape_1Shapeold_value_estimates*
T0*
out_type0

*gradients/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_2_grad/Shapegradients/sub_2_grad/Shape_1*
T0
°
gradients/sub_2_grad/SumSum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*gradients/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_2_grad/ReshapeReshapegradients/sub_2_grad/Sumgradients/sub_2_grad/Shape*
T0*
Tshape0
“
gradients/sub_2_grad/Sum_1Sum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency,gradients/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_2_grad/NegNeggradients/sub_2_grad/Sum_1*
T0
x
gradients/sub_2_grad/Reshape_1Reshapegradients/sub_2_grad/Neggradients/sub_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_2_grad/tuple/group_depsNoOp^gradients/sub_2_grad/Reshape^gradients/sub_2_grad/Reshape_1
¹
-gradients/sub_2_grad/tuple/control_dependencyIdentitygradients/sub_2_grad/Reshape&^gradients/sub_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_2_grad/Reshape
æ
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Reshape_1&^gradients/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_2_grad/Reshape_1
J
!gradients/action_probs_grad/ShapeShapeExp_1*
T0*
out_type0
Q
#gradients/action_probs_grad/Shape_1Const*
valueB:*
dtype0

1gradients/action_probs_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/action_probs_grad/Shape#gradients/action_probs_grad/Shape_1*
T0
m
gradients/action_probs_grad/mulMul1gradients/truediv_4_grad/tuple/control_dependency	truediv_3*
T0
 
gradients/action_probs_grad/SumSumgradients/action_probs_grad/mul1gradients/action_probs_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum!gradients/action_probs_grad/Shape*
T0*
Tshape0
k
!gradients/action_probs_grad/mul_1MulExp_11gradients/truediv_4_grad/tuple/control_dependency*
T0
¦
!gradients/action_probs_grad/Sum_1Sum!gradients/action_probs_grad/mul_13gradients/action_probs_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

%gradients/action_probs_grad/Reshape_1Reshape!gradients/action_probs_grad/Sum_1#gradients/action_probs_grad/Shape_1*
T0*
Tshape0

,gradients/action_probs_grad/tuple/group_depsNoOp$^gradients/action_probs_grad/Reshape&^gradients/action_probs_grad/Reshape_1
Õ
4gradients/action_probs_grad/tuple/control_dependencyIdentity#gradients/action_probs_grad/Reshape-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Reshape
Ū
6gradients/action_probs_grad/tuple/control_dependency_1Identity%gradients/action_probs_grad/Reshape_1-^gradients/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/action_probs_grad/Reshape_1
J
gradients/Sum_grad/ShapeShapevalue_estimate*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
valueB *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
N*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
s
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape-gradients/sub_2_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0
e
gradients/Exp_1_grad/mulMul4gradients/action_probs_grad/tuple/control_dependencyExp_1*
T0
G
gradients/truediv_3_grad/ShapeConst*
valueB *
dtype0
N
 gradients/truediv_3_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0
t
 gradients/truediv_3_grad/RealDivRealDiv6gradients/action_probs_grad/tuple/control_dependency_1Sqrt_2*
T0

gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
T0*
Tshape0
9
gradients/truediv_3_grad/NegNegtruediv_3/x*
T0
\
"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegSqrt_2*
T0
b
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Sqrt_2*
T0

gradients/truediv_3_grad/mulMul6gradients/action_probs_grad/tuple/control_dependency_1"gradients/truediv_3_grad/RealDiv_2*
T0

gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_3_grad/tuple/group_depsNoOp!^gradients/truediv_3_grad/Reshape#^gradients/truediv_3_grad/Reshape_1
É
1gradients/truediv_3_grad/tuple/control_dependencyIdentity gradients/truediv_3_grad/Reshape*^gradients/truediv_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape
Ļ
3gradients/truediv_3_grad/tuple/control_dependency_1Identity"gradients/truediv_3_grad/Reshape_1*^gradients/truediv_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_3_grad/Reshape_1

gradients/AddN_1AddNgradients/Sum_1_grad/Tilegradients/Sum_grad/Tile*
N*
T0*,
_class"
 loc:@gradients/Sum_1_grad/Tile
G
gradients/truediv_2_grad/ShapeShapemul_1*
T0*
out_type0
N
 gradients/truediv_2_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
U
 gradients/truediv_2_grad/RealDivRealDivgradients/Exp_1_grad/mulmul_2*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
3
gradients/truediv_2_grad/NegNegmul_1*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/Negmul_2*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1mul_2*
T0
j
gradients/truediv_2_grad/mulMulgradients/Exp_1_grad/mul"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ļ
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
p
gradients/Sqrt_2_grad/SqrtGradSqrtGradSqrt_23gradients/truediv_3_grad/tuple/control_dependency_1*
T0
k
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
¾
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_1_grad/Tile
ė
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
C
gradients/mul_1_grad/Shape_1ShapePow*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
`
gradients/mul_1_grad/mulMul1gradients/truediv_2_grad/tuple/control_dependencyPow*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
f
gradients/mul_1_grad/mul_1Mulmul_1/x1gradients/truediv_2_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
æ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
C
gradients/mul_2_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_2_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
b
gradients/mul_2_grad/mulMul3gradients/truediv_2_grad/tuple/control_dependency_1Exp*
T0

gradients/mul_2_grad/SumSumgradients/mul_2_grad/mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
h
gradients/mul_2_grad/mul_1Mulmul_2/x3gradients/truediv_2_grad/tuple/control_dependency_1*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
¹
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
æ
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
H
gradients/mul_4_grad/ShapeConst*
valueB:*
dtype0
E
gradients/mul_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
Q
gradients/mul_4_grad/mulMulgradients/Sqrt_2_grad/SqrtGradmul_4/y*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
Q
gradients/mul_4_grad/mul_1Mulmul_3gradients/Sqrt_2_grad/SqrtGrad*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
æ
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
«
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_a( *
transpose_b(*
T0
£
&gradients/dense_4/MatMul_grad/MatMul_1MatMul	Reshape_37gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Ū
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
į
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
A
gradients/Pow_grad/ShapeShapesub_1*
T0*
out_type0
C
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0

(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0
^
gradients/Pow_grad/mulMul/gradients/mul_1_grad/tuple/control_dependency_1Pow/y*
T0
E
gradients/Pow_grad/sub/yConst*
valueB
 *  ?*
dtype0
G
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0
E
gradients/Pow_grad/PowPowsub_1gradients/Pow_grad/sub*
T0
X
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0

gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0
I
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
S
gradients/Pow_grad/GreaterGreatersub_1gradients/Pow_grad/Greater/y*
T0
-
gradients/Pow_grad/LogLogsub_1*
T0
:
gradients/Pow_grad/zeros_like	ZerosLikesub_1*
T0

gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0
^
gradients/Pow_grad/mul_2Mul/gradients/mul_1_grad/tuple/control_dependency_1Pow*
T0
]
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0

gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
±
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape
·
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1
C
gradients/mul_3_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_3_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
\
gradients/mul_3_grad/mulMul-gradients/mul_4_grad/tuple/control_dependencyExp*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
b
gradients/mul_3_grad/mul_1Mulmul_3/x-gradients/mul_4_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
æ
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
Z
gradients/Reshape_3_grad/ShapeShapelstm_value/rnn/transpose*
T0*
out_type0

 gradients/Reshape_3_grad/ReshapeReshape6gradients/dense_4/MatMul_grad/tuple/control_dependencygradients/Reshape_3_grad/Shape*
T0*
Tshape0
J
gradients/sub_1_grad/ShapeShapeStopGradient*
T0*
out_type0
N
gradients/sub_1_grad/Shape_1Shapedense_3/MatMul*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
¢
gradients/sub_1_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
æ
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
p
9gradients/lstm_value/rnn/transpose_grad/InvertPermutationInvertPermutationlstm_value/rnn/concat_1*
T0
±
1gradients/lstm_value/rnn/transpose_grad/transpose	Transpose gradients/Reshape_3_grad/Reshape9gradients/lstm_value/rnn/transpose_grad/InvertPermutation*
T0*
Tperm0
ų
dgradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm_value/rnn/TensorArraylstm_value/rnn/while/Exit_1*
source	gradients*-
_class#
!loc:@lstm_value/rnn/TensorArray
Ø
`gradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitylstm_value/rnn/while/Exit_1e^gradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*-
_class#
!loc:@lstm_value/rnn/TensorArray
­
jgradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3dgradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3%lstm_value/rnn/TensorArrayStack/range1gradients/lstm_value/rnn/transpose_grad/transpose`gradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0
G
gradients/zeros_like	ZerosLikelstm_value/rnn/while/Exit_2*
T0
I
gradients/zeros_like_1	ZerosLikelstm_value/rnn/while/Exit_3*
T0

1gradients/lstm_value/rnn/while/Exit_1_grad/b_exitEnterjgradients/lstm_value/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
Å
1gradients/lstm_value/rnn/while/Exit_2_grad/b_exitEntergradients/zeros_like*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
Ē
1gradients/lstm_value/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
Į
5gradients/lstm_value/rnn/while/Switch_1_grad/b_switchMerge1gradients/lstm_value/rnn/while/Exit_1_grad/b_exit<gradients/lstm_value/rnn/while/Switch_1_grad_1/NextIteration*
T0*
N
Į
5gradients/lstm_value/rnn/while/Switch_2_grad/b_switchMerge1gradients/lstm_value/rnn/while/Exit_2_grad/b_exit<gradients/lstm_value/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N
Į
5gradients/lstm_value/rnn/while/Switch_3_grad/b_switchMerge1gradients/lstm_value/rnn/while/Exit_3_grad/b_exit<gradients/lstm_value/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N
š
gradients/AddN_2AddN/gradients/mul_5_grad/tuple/control_dependency_1/gradients/mul_2_grad/tuple/control_dependency_1/gradients/mul_3_grad/tuple/control_dependency_1*
N*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
=
gradients/Exp_grad/mulMulgradients/AddN_2Exp*
T0
Ū
2gradients/lstm_value/rnn/while/Merge_1_grad/SwitchSwitch5gradients/lstm_value/rnn/while/Switch_1_grad/b_switchgradients/b_count_2*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_1_grad/b_switch
y
<gradients/lstm_value/rnn/while/Merge_1_grad/tuple/group_depsNoOp3^gradients/lstm_value/rnn/while/Merge_1_grad/Switch

Dgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependencyIdentity2gradients/lstm_value/rnn/while/Merge_1_grad/Switch=^gradients/lstm_value/rnn/while/Merge_1_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_1_grad/b_switch

Fgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency_1Identity4gradients/lstm_value/rnn/while/Merge_1_grad/Switch:1=^gradients/lstm_value/rnn/while/Merge_1_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_1_grad/b_switch
Ū
2gradients/lstm_value/rnn/while/Merge_2_grad/SwitchSwitch5gradients/lstm_value/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_2_grad/b_switch
y
<gradients/lstm_value/rnn/while/Merge_2_grad/tuple/group_depsNoOp3^gradients/lstm_value/rnn/while/Merge_2_grad/Switch

Dgradients/lstm_value/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity2gradients/lstm_value/rnn/while/Merge_2_grad/Switch=^gradients/lstm_value/rnn/while/Merge_2_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_2_grad/b_switch

Fgradients/lstm_value/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity4gradients/lstm_value/rnn/while/Merge_2_grad/Switch:1=^gradients/lstm_value/rnn/while/Merge_2_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_2_grad/b_switch
Ū
2gradients/lstm_value/rnn/while/Merge_3_grad/SwitchSwitch5gradients/lstm_value/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_3_grad/b_switch
y
<gradients/lstm_value/rnn/while/Merge_3_grad/tuple/group_depsNoOp3^gradients/lstm_value/rnn/while/Merge_3_grad/Switch

Dgradients/lstm_value/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity2gradients/lstm_value/rnn/while/Merge_3_grad/Switch=^gradients/lstm_value/rnn/while/Merge_3_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_3_grad/b_switch

Fgradients/lstm_value/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity4gradients/lstm_value/rnn/while/Merge_3_grad/Switch:1=^gradients/lstm_value/rnn/while/Merge_3_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_3_grad/b_switch

0gradients/lstm_value/rnn/while/Enter_1_grad/ExitExitDgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency*
T0

0gradients/lstm_value/rnn/while/Enter_2_grad/ExitExitDgradients/lstm_value/rnn/while/Merge_2_grad/tuple/control_dependency*
T0

0gradients/lstm_value/rnn/while/Enter_3_grad/ExitExitDgradients/lstm_value/rnn/while/Merge_3_grad/tuple/control_dependency*
T0
Ģ
ogradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm_value/rnn/TensorArray*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations *A
_class7
53loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2

igradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ogradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterFgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency_1*
source	gradients*A
_class7
53loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2
ń
egradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityFgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency_1j^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2
Ķ
hgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*0
_class&
$"loc:@lstm_value/rnn/while/Identity
©
_gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2hgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_size*
	elem_type0*

stack_name *0
_class&
$"loc:@lstm_value/rnn/while/Identity
“
_gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter_gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
 
egradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2_gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterlstm_value/rnn/while/Identity^gradients/Add*
T0*
swap_memory( 
É
jgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter_gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
’
dgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2jgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0

`gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggere^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2_^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2a^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1M^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2O^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2_^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2a^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1]^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1K^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2M^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2_^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2a^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1M^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2O^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2]^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2S^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Q^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2S^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
³
Ygradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3igradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3dgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2egradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0

Xgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpG^gradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency_1Z^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3

`gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityYgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3Y^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*l
_classb
`^loc:@gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
ä
bgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityFgradients/lstm_value/rnn/while/Merge_1_grad/tuple/control_dependency_1Y^gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_1_grad/b_switch
£
$gradients/dense_3/MatMul_grad/MatMulMatMul/gradients/sub_1_grad/tuple/control_dependency_1dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_3/MatMul_grad/MatMul_1MatMul	Reshape_1/gradients/sub_1_grad/tuple/control_dependency_1*
transpose_a(*
transpose_b( *
T0

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Ū
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
į
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1

gradients/AddN_3AddNFgradients/lstm_value/rnn/while/Merge_3_grad/tuple/control_dependency_1`gradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
N*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_3_grad/b_switch

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ShapeShape/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1*
T0*
out_type0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1Shape2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2*
T0*
out_type0
ķ
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape
Ć
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape
Ø
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ŗ
_gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( 
½
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
ń
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1
É
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1
¬
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ą
agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
Į
fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
·
Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Ź
Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*E
_class;
97loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_accStackV2Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *E
_class;
97loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/Enter2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2^gradients/Add*
T0*
swap_memory( 

Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ļ
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
±
Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mulMulgradients/AddN_3Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2*
T0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/SumSumAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mulSgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeReshapeAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
É
Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*B
_class8
64loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1

Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_accStackV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *B
_class8
64loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1

Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/EnterEnterIgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Ogradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/Enter/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1^gradients/Add*
T0*
swap_memory( 

Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterIgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
µ
Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1MulNgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN_3*
T0

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum_1SumCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1Ugradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1ReshapeCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum_1`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
č
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_depsNoOpF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeH^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
Ż
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeO^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape
ć
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1O^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
[
gradients/Reshape_1_grad/ShapeShapelstm_policy/rnn/transpose*
T0*
out_type0

 gradients/Reshape_1_grad/ReshapeReshape6gradients/dense_3/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradNgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency*
T0

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0
ŗ
<gradients/lstm_value/rnn/while/Switch_1_grad_1/NextIterationNextIterationbgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0
r
:gradients/lstm_policy/rnn/transpose_grad/InvertPermutationInvertPermutationlstm_policy/rnn/concat_1*
T0
³
2gradients/lstm_policy/rnn/transpose_grad/transpose	Transpose gradients/Reshape_1_grad/Reshape:gradients/lstm_policy/rnn/transpose_grad/InvertPermutation*
T0*
Tperm0

gradients/AddN_4AddNFgradients/lstm_value/rnn/while/Merge_2_grad/tuple/control_dependency_1Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_1_grad/TanhGrad*
N*
T0*H
_class>
<:loc:@gradients/lstm_value/rnn/while/Switch_2_grad/b_switch

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/ShapeShape,lstm_value/rnn/while/rnn/basic_lstm_cell/mul*
T0*
out_type0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1Shape.lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1*
T0*
out_type0
ķ
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape
Ć
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape
Ø
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ŗ
_gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
½
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
ń
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1
É
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1
¬
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ą
agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
Į
fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
·
Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Õ
Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/SumSumgradients/AddN_4Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeReshapeAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
Ł
Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_4Ugradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1ReshapeCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum_1`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
č
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_depsNoOpF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeH^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1
Ż
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeO^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape
ć
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1IdentityGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1O^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1
ü
egradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm_policy/rnn/TensorArraylstm_policy/rnn/while/Exit_1*
source	gradients*.
_class$
" loc:@lstm_policy/rnn/TensorArray
¬
agradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitylstm_policy/rnn/while/Exit_1f^gradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*.
_class$
" loc:@lstm_policy/rnn/TensorArray
²
kgradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3egradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3&lstm_policy/rnn/TensorArrayStack/range2gradients/lstm_policy/rnn/transpose_grad/transposeagradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/ShapeShapelstm_value/rnn/while/Identity_2*
T0*
out_type0

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1Shape0lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid*
T0*
out_type0
é
`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*T
_classJ
HFloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape
½
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *T
_classJ
HFloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape
¤
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
“
]gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
¹
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ļ
\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
ķ
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1
Ć
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1
Ø
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1EnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ŗ
_gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
½
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
±
Qgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Ę
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*C
_class9
75loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_accStackV2Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *C
_class9
75loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/EnterEnterEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
’
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPushV2StackPushV2Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/Enter0lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid^gradients/Add*
T0*
swap_memory( 

Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2/EnterEnterEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ė
Jgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2
StackPopV2Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
ó
?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mulMulVgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyJgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2*
T0

?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/SumSum?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mulQgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeReshape?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
·
Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*2
_class(
&$loc:@lstm_value/rnn/while/Identity_2
ū
Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_accStackV2Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *2
_class(
&$loc:@lstm_value/rnn/while/Identity_2

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ņ
Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/Enterlstm_value/rnn/while/Identity_2^gradients/Add*
T0*
swap_memory( 

Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ļ
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
÷
Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1MulLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum_1SumAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1ReshapeAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum_1^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
ā
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_depsNoOpD^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1
Õ
Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependencyIdentityCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeM^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape
Ū
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1IdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1M^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ShapeShape2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1*
T0*
out_type0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1Shape-lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh*
T0*
out_type0
ķ
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape
Ć
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape
Ø
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ŗ
_gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
½
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
ń
dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1
É
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1
¬
[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ą
agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
Į
fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter[gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
·
Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Å
Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*@
_class6
42loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_accStackV2Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *@
_class6
42loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/Enter-lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh^gradients/Add*
T0*
swap_memory( 

Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnterGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ļ
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
ł
Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mulMulXgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2*
T0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/SumSumAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mulSgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeReshapeAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
Ģ
Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*E
_class;
97loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1

Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_accStackV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *E
_class;
97loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1

Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/EnterEnterIgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Ogradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/Enter2lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1^gradients/Add*
T0*
swap_memory( 

Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterIgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
ż
Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1MulNgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum_1SumCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1Ugradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1ReshapeCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum_1`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
č
Ngradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_depsNoOpF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeH^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
Ż
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeO^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape
ć
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1O^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1

Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradJgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1*
T0

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradNgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_grad/TanhGradTanhGradLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0
J
gradients/zeros_like_2	ZerosLikelstm_policy/rnn/while/Exit_2*
T0
J
gradients/zeros_like_3	ZerosLikelstm_policy/rnn/while/Exit_3*
T0
¬
<gradients/lstm_value/rnn/while/Switch_2_grad_1/NextIterationNextIterationTgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency*
T0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/ShapeShape0lstm_value/rnn/while/rnn/basic_lstm_cell/split:2*
T0*
out_type0
|
Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0
é
`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*T
_classJ
HFloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape
½
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2`gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *T
_classJ
HFloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape
¤
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
“
]gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( 
¹
bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ļ
\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0

Qgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1*
T0

?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/SumSumKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradQgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeReshape?gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Sum\gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0

Agradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Sum_1SumKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradSgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ļ
Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1ReshapeAgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Sum_1Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1*
T0*
Tshape0
ā
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_depsNoOpD^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1
Õ
Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyIdentityCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeM^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape
Ū
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependency_1IdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1M^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1

2gradients/lstm_policy/rnn/while/Exit_1_grad/b_exitEnterkgradients/lstm_policy/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
É
2gradients/lstm_policy/rnn/while/Exit_2_grad/b_exitEntergradients/zeros_like_2*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
É
2gradients/lstm_policy/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_3*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 

Jgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0
õ
Dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concatConcatV2Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Tanh_grad/TanhGradTgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradJgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concat/Const*
N*
T0*

Tidx0
Ä
6gradients/lstm_policy/rnn/while/Switch_1_grad/b_switchMerge2gradients/lstm_policy/rnn/while/Exit_1_grad/b_exit=gradients/lstm_policy/rnn/while/Switch_1_grad_1/NextIteration*
T0*
N
Ä
6gradients/lstm_policy/rnn/while/Switch_2_grad/b_switchMerge2gradients/lstm_policy/rnn/while/Exit_2_grad/b_exit=gradients/lstm_policy/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N
Ä
6gradients/lstm_policy/rnn/while/Switch_3_grad/b_switchMerge2gradients/lstm_policy/rnn/while/Exit_3_grad/b_exit=gradients/lstm_policy/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N
Ą
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradDgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC
ķ
Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpE^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concatL^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ß
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityDgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concatQ^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/split_grad/concat
ļ
Zgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGradQ^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
Ž
3gradients/lstm_policy/rnn/while/Merge_1_grad/SwitchSwitch6gradients/lstm_policy/rnn/while/Switch_1_grad/b_switchgradients/b_count_6*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_1_grad/b_switch
{
=gradients/lstm_policy/rnn/while/Merge_1_grad/tuple/group_depsNoOp4^gradients/lstm_policy/rnn/while/Merge_1_grad/Switch

Egradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependencyIdentity3gradients/lstm_policy/rnn/while/Merge_1_grad/Switch>^gradients/lstm_policy/rnn/while/Merge_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_1_grad/b_switch

Ggradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency_1Identity5gradients/lstm_policy/rnn/while/Merge_1_grad/Switch:1>^gradients/lstm_policy/rnn/while/Merge_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_1_grad/b_switch
Ž
3gradients/lstm_policy/rnn/while/Merge_2_grad/SwitchSwitch6gradients/lstm_policy/rnn/while/Switch_2_grad/b_switchgradients/b_count_6*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_2_grad/b_switch
{
=gradients/lstm_policy/rnn/while/Merge_2_grad/tuple/group_depsNoOp4^gradients/lstm_policy/rnn/while/Merge_2_grad/Switch

Egradients/lstm_policy/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity3gradients/lstm_policy/rnn/while/Merge_2_grad/Switch>^gradients/lstm_policy/rnn/while/Merge_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_2_grad/b_switch

Ggradients/lstm_policy/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity5gradients/lstm_policy/rnn/while/Merge_2_grad/Switch:1>^gradients/lstm_policy/rnn/while/Merge_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_2_grad/b_switch
Ž
3gradients/lstm_policy/rnn/while/Merge_3_grad/SwitchSwitch6gradients/lstm_policy/rnn/while/Switch_3_grad/b_switchgradients/b_count_6*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_3_grad/b_switch
{
=gradients/lstm_policy/rnn/while/Merge_3_grad/tuple/group_depsNoOp4^gradients/lstm_policy/rnn/while/Merge_3_grad/Switch

Egradients/lstm_policy/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity3gradients/lstm_policy/rnn/while/Merge_3_grad/Switch>^gradients/lstm_policy/rnn/while/Merge_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_3_grad/b_switch

Ggradients/lstm_policy/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity5gradients/lstm_policy/rnn/while/Merge_3_grad/Switch:1>^gradients/lstm_policy/rnn/while/Merge_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_3_grad/b_switch
õ
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul/EnterEnter*lstm_value/rnn/basic_lstm_cell/kernel/read*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
„
Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulMatMulXgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0
Ķ
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*B
_class8
64loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/concat

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc/max_size*
	elem_type0*

stack_name *B
_class8
64loc:@lstm_value/rnn/while/rnn/basic_lstm_cell/concat

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/Enter/lstm_value/rnn/while/rnn/basic_lstm_cell/concat^gradients/Add*
T0*
swap_memory( 
„
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ū
Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
®
Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1MatMulRgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
é
Ogradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpF^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulH^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1
ß
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulP^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul
å
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1P^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1
}
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB*    *
dtype0

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N
Ć
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0

Igradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/AddAddNgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1Zgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0
ø
Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationIgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Add*
T0
¬
Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0

1gradients/lstm_policy/rnn/while/Enter_1_grad/ExitExitEgradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency*
T0

1gradients/lstm_policy/rnn/while/Enter_2_grad/ExitExitEgradients/lstm_policy/rnn/while/Merge_2_grad/tuple/control_dependency*
T0

1gradients/lstm_policy/rnn/while/Enter_3_grad/ExitExitEgradients/lstm_policy/rnn/while/Merge_3_grad/tuple/control_dependency*
T0
}
Cgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0

Hgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0
ę
Bgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/modFloorModHgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/mod/ConstCgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Rank*
T0

Dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeShape&lstm_value/rnn/while/TensorArrayReadV3*
T0*
out_type0
Ā
Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*9
_class/
-+loc:@lstm_value/rnn/while/TensorArrayReadV3

Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2Tgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc/max_size*
	elem_type0*

stack_name *9
_class/
-+loc:@lstm_value/rnn/while/TensorArrayReadV3

Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/EnterEnterKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 

Qgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter&lstm_value/rnn/while/TensorArrayReadV3^gradients/Add*
T0*
swap_memory( 
”
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
×
Pgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0
½
Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*2
_class(
&$loc:@lstm_value/rnn/while/Identity_3

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2Vgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1/max_size*
	elem_type0*

stack_name *2
_class(
&$loc:@lstm_value/rnn/while/Identity_3

Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter_1EnterMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*2

frame_name$"lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
ž
Sgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2Mgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter_1lstm_value/rnn/while/Identity_3^gradients/Add*
T0*
swap_memory( 
„
Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ū
Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2Xgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0

Egradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeNShapeNPgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
N*
T0*
out_type0
ø
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetBgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/modEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeNGgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN:1*
N
Š
Dgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceSliceWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffsetEgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN*
T0*
Index0
Ö
Fgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1SliceWgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffset:1Ggradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
ē
Ogradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_depsNoOpE^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceG^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1
Ż
Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityDgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceP^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice
ć
Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityFgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1P^gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1

Jgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
Ą*    *
dtype0

Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_1EnterJgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 

Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_2MergeLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N
Į
Kgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0

Hgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/AddAddMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Switch:1Ygradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0
¶
Rgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationHgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Add*
T0
Ŗ
Lgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_3ExitKgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0
Š
pgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm_policy/rnn/TensorArray*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations *B
_class8
64loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2

jgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3pgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterGgradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency_1*
source	gradients*B
_class8
64loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2
õ
fgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityGgradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency_1k^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*B
_class8
64loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2
Ļ
igradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*1
_class'
%#loc:@lstm_policy/rnn/while/Identity
¬
`gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2igradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_size*
	elem_type0*

stack_name *1
_class'
%#loc:@lstm_policy/rnn/while/Identity
·
`gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter`gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
„
fgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2`gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterlstm_policy/rnn/while/Identity^gradients/Add_1*
T0*
swap_memory( 
Ģ
kgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter`gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

egradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2kgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
±
agradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerf^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2`^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2b^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2P^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2`^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2b^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1^^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2`^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1L^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2N^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2`^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2b^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2P^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2^^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2T^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2R^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2T^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
·
Zgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3jgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3egradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2fgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0

Ygradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpH^gradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency_1[^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3

agradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityZgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3Z^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
č
cgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityGgradients/lstm_policy/rnn/while/Merge_1_grad/tuple/control_dependency_1Z^gradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_1_grad/b_switch
ŗ
]gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm_value/rnn/TensorArray_1*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations *?
_class5
31loc:@lstm_value/rnn/while/TensorArrayReadV3/Enter
é
_gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterIlstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant(*
parallel_iterations *?
_class5
31loc:@lstm_value/rnn/while/TensorArrayReadV3/Enter

Wgradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3]gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*?
_class5
31loc:@lstm_value/rnn/while/TensorArrayReadV3/Enter
ä
Sgradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity_gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1X^gradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@lstm_value/rnn/while/TensorArrayReadV3/Enter
å
Ygradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Wgradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3dgradients/lstm_value/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Wgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependencySgradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0
”
gradients/AddN_5AddNGgradients/lstm_policy/rnn/while/Merge_3_grad/tuple/control_dependency_1agradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
N*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_3_grad/b_switch

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ShapeShape0lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1*
T0*
out_type0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1Shape3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2*
T0*
out_type0
ļ
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape
Ę
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape
«
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
æ
`gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape^gradients/Add_1*
T0*
swap_memory( 
Ą
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ó
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1
Ģ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1
Æ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Å
bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Shape_1^gradients/Add_1*
T0*
swap_memory( 
Ä
ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ū
agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0
ŗ
Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Ģ
Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*F
_class<
:8loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_accStackV2Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *F
_class<
:8loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/Enter3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2^gradients/Add_1*
T0*
swap_memory( 

Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
³
Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mulMulgradients/AddN_5Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2*
T0

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/SumSumBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mulTgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeReshapeBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
Ė
Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*C
_class9
75loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1

Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_accStackV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *C
_class9
75loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1

Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/EnterEnterJgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Pgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/Enter0lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1^gradients/Add_1*
T0*
swap_memory( 
 
Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterJgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
×
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
·
Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1MulOgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN_5*
T0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum_1SumDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1Vgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1ReshapeDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Sum_1agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
ė
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_depsNoOpG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeI^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
į
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/ReshapeP^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape
ē
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1P^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
p
Cgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0

Egradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterCgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*<

frame_name.,gradients/lstm_value/rnn/while/while_context*
is_constant( *
parallel_iterations 
ō
Egradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeEgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Kgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N
³
Dgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchEgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0
ō
Agradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddFgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ygradients/lstm_value/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0
Ø
Kgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationAgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0

Egradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitDgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0
±
<gradients/lstm_value/rnn/while/Switch_3_grad_1/NextIterationNextIterationYgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradOgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul_1/StackPopV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency*
T0

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/mul/StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0
¼
=gradients/lstm_policy/rnn/while/Switch_1_grad_1/NextIterationNextIterationcgradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0
¼
zgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm_value/rnn/TensorArray_1Egradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*/
_class%
#!loc:@lstm_value/rnn/TensorArray_1

vgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityEgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3{^gradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*/
_class%
#!loc:@lstm_value/rnn/TensorArray_1
Ä
lgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3zgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3'lstm_value/rnn/TensorArrayUnstack/rangevgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:
Ø
igradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpF^gradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3m^gradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
į
qgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentitylgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3j^gradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3

sgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityEgradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3j^gradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_value/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3

gradients/AddN_6AddNGgradients/lstm_policy/rnn/while/Merge_2_grad/tuple/control_dependency_1Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_1_grad/TanhGrad*
N*
T0*I
_class?
=;loc:@gradients/lstm_policy/rnn/while/Switch_2_grad/b_switch

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/ShapeShape-lstm_policy/rnn/while/rnn/basic_lstm_cell/mul*
T0*
out_type0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1Shape/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1*
T0*
out_type0
ļ
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape
Ę
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape
«
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
æ
`gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape^gradients/Add_1*
T0*
swap_memory( 
Ą
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ó
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1
Ģ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1
Æ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Å
bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Shape_1^gradients/Add_1*
T0*
swap_memory( 
Ä
ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ū
agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0
ŗ
Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
×
Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/SumSumgradients/AddN_6Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeReshapeBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
Ū
Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_6Vgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1ReshapeDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Sum_1agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
ė
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_depsNoOpG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeI^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1
į
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/ReshapeP^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape
ē
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1IdentityHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1P^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/Reshape_1

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/ShapeShape lstm_policy/rnn/while/Identity_2*
T0*
out_type0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1Shape1lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid*
T0*
out_type0
ė
agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*U
_classK
IGloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape
Ą
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *U
_classK
IGloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape
§
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
¹
^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape^gradients/Add_1*
T0*
swap_memory( 
¼
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ļ
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1
Ę
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1
«
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1EnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
æ
`gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Shape_1^gradients/Add_1*
T0*
swap_memory( 
Ą
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0
“
Rgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Č
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*D
_class:
86loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_accStackV2Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *D
_class:
86loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/EnterEnterFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPushV2StackPushV2Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/Enter1lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid^gradients/Add_1*
T0*
swap_memory( 

Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2/EnterEnterFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ļ
Kgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2
StackPopV2Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ö
@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mulMulWgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyKgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2*
T0

@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/SumSum@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mulRgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeReshape@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
¹
Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*3
_class)
'%loc:@lstm_policy/rnn/while/Identity_2
ž
Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_accStackV2Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *3
_class)
'%loc:@lstm_policy/rnn/while/Identity_2

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/Enter lstm_policy/rnn/while/Identity_2^gradients/Add_1*
T0*
swap_memory( 

Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ś
Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1MulMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1/StackPopV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum_1SumBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul_1Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1ReshapeBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Sum_1_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
å
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_depsNoOpE^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1
Ł
Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependencyIdentityDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/ReshapeN^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape
ß
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1IdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1N^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/Reshape_1

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ShapeShape3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1*
T0*
out_type0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1Shape.lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh*
T0*
out_type0
ļ
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape
Ę
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape
«
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
æ
`gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape^gradients/Add_1*
T0*
swap_memory( 
Ą
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
÷
_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ó
egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1
Ģ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*

stack_name *Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1
Æ
\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Å
bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Shape_1^gradients/Add_1*
T0*
swap_memory( 
Ä
ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ū
agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0
ŗ
Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
Ē
Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*A
_class7
53loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_accStackV2Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc/max_size*
	elem_type0*

stack_name *A
_class7
53loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/Enter.lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh^gradients/Add_1*
T0*
swap_memory( 

Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnterHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ó
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
ü
Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mulMulYgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2*
T0

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/SumSumBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mulTgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeReshapeBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum_gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
Ī
Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*F
_class<
:8loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1

Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_accStackV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc/max_size*
	elem_type0*

stack_name *F
_class<
:8loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1

Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/EnterEnterJgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Pgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/Enter3lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1^gradients/Add_1*
T0*
swap_memory( 
 
Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterJgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
×
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1MulOgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum_1SumDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1Vgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1ReshapeDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Sum_1agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
ė
Ogradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_depsNoOpG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeI^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
į
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/ReshapeP^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape
ē
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1P^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/Reshape_1

Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradKgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/mul/StackPopV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1*
T0

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradOgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul_1/StackPopV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_grad/TanhGradTanhGradMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/mul/StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0
®
=gradients/lstm_policy/rnn/while/Switch_2_grad_1/NextIterationNextIterationUgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency*
T0

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/ShapeShape1lstm_policy/rnn/while/rnn/basic_lstm_cell/split:2*
T0*
out_type0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1Const^gradients/Sub_1*
valueB *
dtype0
ė
agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*U
_classK
IGloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape
Ą
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2agradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*

stack_name *U
_classK
IGloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape
§
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
¹
^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape^gradients/Add_1*
T0*
swap_memory( 
¼
cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ó
]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0

Rgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1*
T0

@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/SumSumLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradRgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeReshape@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Sum]gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0

Bgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Sum_1SumLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradTgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ņ
Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1ReshapeBgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Sum_1Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Shape_1*
T0*
Tshape0
å
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_depsNoOpE^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1
Ł
Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyIdentityDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/ReshapeN^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape
ß
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependency_1IdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1N^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/Reshape_1
f
5gradients/lstm_value/transpose_grad/InvertPermutationInvertPermutationlstm_value/concat*
T0
ś
-gradients/lstm_value/transpose_grad/transpose	Transposeqgradients/lstm_value/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency5gradients/lstm_value/transpose_grad/InvertPermutation*
T0*
Tperm0

Kgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub_1*
value	B :*
dtype0
ū
Egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concatConcatV2Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Tanh_grad/TanhGradUgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradKgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concat/Const*
N*
T0*

Tidx0
N
gradients/Reshape_2_grad/ShapeShapedense_2/Tanh*
T0*
out_type0

 gradients/Reshape_2_grad/ReshapeReshape-gradients/lstm_value/transpose_grad/transposegradients/Reshape_2_grad/Shape*
T0*
Tshape0
Ā
Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradEgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC
š
Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpF^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concatM^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ć
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityEgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concatR^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/split_grad/concat
ó
[gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGradR^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
i
$gradients/dense_2/Tanh_grad/TanhGradTanhGraddense_2/Tanh gradients/Reshape_2_grad/Reshape*
T0
ų
Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul/EnterEnter+lstm_policy/rnn/basic_lstm_cell/kernel/read*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ø
Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulMatMulYgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0
Ļ
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*C
_class9
75loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/concat

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc/max_size*
	elem_type0*

stack_name *C
_class9
75loc:@lstm_policy/rnn/while/rnn/basic_lstm_cell/concat

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/Enter0lstm_policy/rnn/while/rnn/basic_lstm_cell/concat^gradients/Add_1*
T0*
swap_memory( 
Ø
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ß
Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
±
Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1MatMulSgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
ģ
Pgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpG^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulI^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1
ć
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMulQ^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul
é
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1Q^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/MatMul_1
~
Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB*    *
dtype0

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N
Å
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_6*
T0

Jgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/AddAddOgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1[gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0
ŗ
Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationJgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Add*
T0
®
Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0

*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_2/Tanh_grad/TanhGrad+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ż
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Tanh_grad/TanhGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Tanh_grad/TanhGrad
ė
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad

Dgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/RankConst^gradients/Sub_1*
value	B :*
dtype0

Igradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/mod/ConstConst^gradients/Sub_1*
value	B :*
dtype0
é
Cgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/modFloorModIgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/mod/ConstDgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Rank*
T0

Egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeShape'lstm_policy/rnn/while/TensorArrayReadV3*
T0*
out_type0
Ä
Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*:
_class0
.,loc:@lstm_policy/rnn/while/TensorArrayReadV3

Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2Ugradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc/max_size*
	elem_type0*

stack_name *:
_class0
.,loc:@lstm_policy/rnn/while/TensorArrayReadV3

Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/EnterEnterLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Rgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter'lstm_policy/rnn/while/TensorArrayReadV3^gradients/Add_1*
T0*
swap_memory( 
¤
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
Ū
Qgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
æ
Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1/max_sizeConst*
valueB :
’’’’’’’’’*
dtype0*3
_class)
'%loc:@lstm_policy/rnn/while/Identity_3

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2Wgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1/max_size*
	elem_type0*

stack_name *3
_class)
'%loc:@lstm_policy/rnn/while/Identity_3

Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter_1EnterNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*3

frame_name%#lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 

Tgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2Ngradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/Enter_1 lstm_policy/rnn/while/Identity_3^gradients/Add_1*
T0*
swap_memory( 
Ø
Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations 
ß
Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2Ygradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0

Fgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeNShapeNQgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
N*
T0*
out_type0
¼
Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetCgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/modFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeNHgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN:1*
N
Ō
Egradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceSliceXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffsetFgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN*
T0*
Index0
Ś
Ggradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1SliceXgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependencyNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ConcatOffset:1Hgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
ź
Pgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_depsNoOpF^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceH^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1
į
Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityEgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/SliceQ^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice
ē
Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityGgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1Q^gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/Slice_1

Kgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
Ą*    *
dtype0

Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_1EnterKgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 

Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_2MergeMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N
Ć
Lgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_6*
T0

Igradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/AddAddNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Switch:1Zgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0
ø
Sgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationIgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Add*
T0
¬
Mgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_3ExitLgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0
«
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
Ŗ
&gradients/dense_2/MatMul_grad/MatMul_1MatMulnormalized_state7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Ū
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
į
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
¾
^gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlstm_policy/rnn/TensorArray_1*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations *@
_class6
42loc:@lstm_policy/rnn/while/TensorArrayReadV3/Enter
ķ
`gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterJlstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant(*
parallel_iterations *@
_class6
42loc:@lstm_policy/rnn/while/TensorArrayReadV3/Enter

Xgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3^gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter`gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub_1*
source	gradients*@
_class6
42loc:@lstm_policy/rnn/while/TensorArrayReadV3/Enter
č
Tgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity`gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Y^gradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*@
_class6
42loc:@lstm_policy/rnn/while/TensorArrayReadV3/Enter
ź
Zgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Xgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3egradients/lstm_policy/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Xgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependencyTgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0
q
Dgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0

Fgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterDgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*=

frame_name/-gradients/lstm_policy/rnn/while/while_context*
is_constant( *
parallel_iterations 
÷
Fgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeFgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Lgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N
µ
Egradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchFgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_6*
T0
÷
Bgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddGgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Zgradients/lstm_policy/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0
Ŗ
Lgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationBgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0

Fgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitEgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0
³
=gradients/lstm_policy/rnn/while/Switch_3_grad_1/NextIterationNextIterationZgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0
Ą
{gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lstm_policy/rnn/TensorArray_1Fgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*0
_class&
$"loc:@lstm_policy/rnn/TensorArray_1

wgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityFgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3|^gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*0
_class&
$"loc:@lstm_policy/rnn/TensorArray_1
Č
mgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3{gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3(lstm_policy/rnn/TensorArrayUnstack/rangewgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:
«
jgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpG^gradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3n^gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ę
rgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentitymgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3k^gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3

tgradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityFgradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3k^gradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/lstm_policy/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
h
6gradients/lstm_policy/transpose_grad/InvertPermutationInvertPermutationlstm_policy/concat*
T0
ż
.gradients/lstm_policy/transpose_grad/transpose	Transposergradients/lstm_policy/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency6gradients/lstm_policy/transpose_grad/InvertPermutation*
T0*
Tperm0
J
gradients/Reshape_grad/ShapeShape
dense/Tanh*
T0*
out_type0

gradients/Reshape_grad/ReshapeReshape.gradients/lstm_policy/transpose_grad/transposegradients/Reshape_grad/Shape*
T0*
Tshape0
c
"gradients/dense/Tanh_grad/TanhGradTanhGrad
dense/Tanhgradients/Reshape_grad/Reshape*
T0
{
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp#^gradients/dense/Tanh_grad/TanhGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
Õ
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Tanh_grad/TanhGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Tanh_grad/TanhGrad
ć
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
„
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_a( *
transpose_b(*
T0
¦
$gradients/dense/MatMul_grad/MatMul_1MatMulnormalized_state5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ł
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/bias
v
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_class
loc:@dense/bias
v
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias
z
#dense/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
|
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
r
!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias

dense/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias
„
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias
t
#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias

dense/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias
«
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias
~
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
v
#dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias

dense_1/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias
­
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias
x
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias

dense_1/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias
³
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias
Æ
=lstm_policy/rnn/basic_lstm_cell/kernel/Adam/Initializer/zerosConst*
valueB
Ą*    *
dtype0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
¼
+lstm_policy/rnn/basic_lstm_cell/kernel/Adam
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

2lstm_policy/rnn/basic_lstm_cell/kernel/Adam/AssignAssign+lstm_policy/rnn/basic_lstm_cell/kernel/Adam=lstm_policy/rnn/basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
­
0lstm_policy/rnn/basic_lstm_cell/kernel/Adam/readIdentity+lstm_policy/rnn/basic_lstm_cell/kernel/Adam*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
±
?lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1/Initializer/zerosConst*
valueB
Ą*    *
dtype0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
¾
-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel

4lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1/AssignAssign-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1?lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
±
2lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1/readIdentity-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1*
T0*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
¦
;lstm_policy/rnn/basic_lstm_cell/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
³
)lstm_policy/rnn/basic_lstm_cell/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias

0lstm_policy/rnn/basic_lstm_cell/bias/Adam/AssignAssign)lstm_policy/rnn/basic_lstm_cell/bias/Adam;lstm_policy/rnn/basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
§
.lstm_policy/rnn/basic_lstm_cell/bias/Adam/readIdentity)lstm_policy/rnn/basic_lstm_cell/bias/Adam*
T0*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
Ø
=lstm_policy/rnn/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
µ
+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias

2lstm_policy/rnn/basic_lstm_cell/bias/Adam_1/AssignAssign+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1=lstm_policy/rnn/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
«
0lstm_policy/rnn/basic_lstm_cell/bias/Adam_1/readIdentity+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1*
T0*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
­
<lstm_value/rnn/basic_lstm_cell/kernel/Adam/Initializer/zerosConst*
valueB
Ą*    *
dtype0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
ŗ
*lstm_value/rnn/basic_lstm_cell/kernel/Adam
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

1lstm_value/rnn/basic_lstm_cell/kernel/Adam/AssignAssign*lstm_value/rnn/basic_lstm_cell/kernel/Adam<lstm_value/rnn/basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
Ŗ
/lstm_value/rnn/basic_lstm_cell/kernel/Adam/readIdentity*lstm_value/rnn/basic_lstm_cell/kernel/Adam*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
Æ
>lstm_value/rnn/basic_lstm_cell/kernel/Adam_1/Initializer/zerosConst*
valueB
Ą*    *
dtype0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
¼
,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1
VariableV2*
shape:
Ą*
dtype0*
	container *
shared_name *8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel

3lstm_value/rnn/basic_lstm_cell/kernel/Adam_1/AssignAssign,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1>lstm_value/rnn/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
®
1lstm_value/rnn/basic_lstm_cell/kernel/Adam_1/readIdentity,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1*
T0*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
¤
:lstm_value/rnn/basic_lstm_cell/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
±
(lstm_value/rnn/basic_lstm_cell/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias

/lstm_value/rnn/basic_lstm_cell/bias/Adam/AssignAssign(lstm_value/rnn/basic_lstm_cell/bias/Adam:lstm_value/rnn/basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
¤
-lstm_value/rnn/basic_lstm_cell/bias/Adam/readIdentity(lstm_value/rnn/basic_lstm_cell/bias/Adam*
T0*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
¦
<lstm_value/rnn/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
³
*lstm_value/rnn/basic_lstm_cell/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias

1lstm_value/rnn/basic_lstm_cell/bias/Adam_1/AssignAssign*lstm_value/rnn/basic_lstm_cell/bias/Adam_1<lstm_value/rnn/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
Ø
/lstm_value/rnn/basic_lstm_cell/bias/Adam_1/readIdentity*lstm_value/rnn/basic_lstm_cell/bias/Adam_1*
T0*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
}
%dense_2/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

'dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

(log_sigma_squared/Adam/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
Į
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*
T0*$
_class
loc:@log_sigma_squared

*log_sigma_squared/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
Ē
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared
}
%dense_3/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

'dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel
u
#dense_3/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias

dense_3/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias
w
%dense_3/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias

dense_3/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/kernel
Ą
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/bias
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_1/kernel
Ģ
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_1/bias
ā
<Adam/update_lstm_policy/rnn/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam&lstm_policy/rnn/basic_lstm_cell/kernel+lstm_policy/rnn/basic_lstm_cell/kernel/Adam-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonMgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
Ł
:Adam/update_lstm_policy/rnn/basic_lstm_cell/bias/ApplyAdam	ApplyAdam$lstm_policy/rnn/basic_lstm_cell/bias)lstm_policy/rnn/basic_lstm_cell/bias/Adam+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonNgradients/lstm_policy/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
Ü
;Adam/update_lstm_value/rnn/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam%lstm_value/rnn/basic_lstm_cell/kernel*lstm_value/rnn/basic_lstm_cell/kernel/Adam,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonLgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
Ó
9Adam/update_lstm_value/rnn/basic_lstm_cell/bias/ApplyAdam	ApplyAdam#lstm_value/rnn/basic_lstm_cell/bias(lstm_value/rnn/basic_lstm_cell/bias/Adam*lstm_value/rnn/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonMgradients/lstm_value/rnn/while/rnn/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_2/kernel
Ā
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/Exp_grad/mul*
T0*
use_locking( *
use_nesterov( *$
_class
loc:@log_sigma_squared
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_3/kernel
Ģ
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_3/bias
ü
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam=^Adam/update_lstm_policy/rnn/basic_lstm_cell/kernel/ApplyAdam;^Adam/update_lstm_policy/rnn/basic_lstm_cell/bias/ApplyAdam<^Adam/update_lstm_value/rnn/basic_lstm_cell/kernel/ApplyAdam:^Adam/update_lstm_value/rnn/basic_lstm_cell/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam*
T0*
_class
loc:@dense/bias
}
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/bias
ž

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam=^Adam/update_lstm_policy/rnn/basic_lstm_cell/kernel/ApplyAdam;^Adam/update_lstm_policy/rnn/basic_lstm_cell/bias/ApplyAdam<^Adam/update_lstm_value/rnn/basic_lstm_cell/kernel/ApplyAdam:^Adam/update_lstm_value/rnn/basic_lstm_cell/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam*
T0*
_class
loc:@dense/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/bias
Ń
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam=^Adam/update_lstm_policy/rnn/basic_lstm_cell/kernel/ApplyAdam;^Adam/update_lstm_policy/rnn/basic_lstm_cell/bias/ApplyAdam<^Adam/update_lstm_value/rnn/basic_lstm_cell/kernel/ApplyAdam:^Adam/update_lstm_value/rnn/basic_lstm_cell/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam^Adam/Assign^Adam/Assign_1

initNoOp^global_step/Assign^last_reward/Assign^running_mean/Assign^running_variance/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^memory_size/Assign.^lstm_policy/rnn/basic_lstm_cell/kernel/Assign,^lstm_policy/rnn/basic_lstm_cell/bias/Assign-^lstm_value/rnn/basic_lstm_cell/kernel/Assign+^lstm_value/rnn/basic_lstm_cell/bias/Assign^dense_2/kernel/Assign^log_sigma_squared/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign3^lstm_policy/rnn/basic_lstm_cell/kernel/Adam/Assign5^lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1/Assign1^lstm_policy/rnn/basic_lstm_cell/bias/Adam/Assign3^lstm_policy/rnn/basic_lstm_cell/bias/Adam_1/Assign2^lstm_value/rnn/basic_lstm_cell/kernel/Adam/Assign4^lstm_value/rnn/basic_lstm_cell/kernel/Adam_1/Assign0^lstm_value/rnn/basic_lstm_cell/bias/Adam/Assign2^lstm_value/rnn/basic_lstm_cell/bias/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
š
save/SaveV2/tensor_namesConst*æ
valueµB²+Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1B$lstm_policy/rnn/basic_lstm_cell/biasB)lstm_policy/rnn/basic_lstm_cell/bias/AdamB+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1B&lstm_policy/rnn/basic_lstm_cell/kernelB+lstm_policy/rnn/basic_lstm_cell/kernel/AdamB-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1B#lstm_value/rnn/basic_lstm_cell/biasB(lstm_value/rnn/basic_lstm_cell/bias/AdamB*lstm_value/rnn/basic_lstm_cell/bias/Adam_1B%lstm_value/rnn/basic_lstm_cell/kernelB*lstm_value/rnn/basic_lstm_cell/kernel/AdamB,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1Bmemory_sizeBrunning_meanBrunning_variance*
dtype0

save/SaveV2/shape_and_slicesConst*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
¾	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1global_steplast_rewardlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1$lstm_policy/rnn/basic_lstm_cell/bias)lstm_policy/rnn/basic_lstm_cell/bias/Adam+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1&lstm_policy/rnn/basic_lstm_cell/kernel+lstm_policy/rnn/basic_lstm_cell/kernel/Adam-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1#lstm_value/rnn/basic_lstm_cell/bias(lstm_value/rnn/basic_lstm_cell/bias/Adam*lstm_value/rnn/basic_lstm_cell/bias/Adam_1%lstm_value/rnn/basic_lstm_cell/kernel*lstm_value/rnn/basic_lstm_cell/kernel/Adam,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1memory_sizerunning_meanrunning_variance*9
dtypes/
-2+
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
S
save/RestoreV2/tensor_namesConst* 
valueBBbeta1_power*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
U
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
T
save/RestoreV2_2/tensor_namesConst*
valueBB
dense/bias*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assign
dense/biassave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Y
save/RestoreV2_3/tensor_namesConst*$
valueBBdense/bias/Adam*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assigndense/bias/Adamsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
[
save/RestoreV2_4/tensor_namesConst*&
valueBBdense/bias/Adam_1*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assigndense/bias/Adam_1save/RestoreV2_4*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
V
save/RestoreV2_5/tensor_namesConst*!
valueBBdense/kernel*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assigndense/kernelsave/RestoreV2_5*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
[
save/RestoreV2_6/tensor_namesConst*&
valueBBdense/kernel/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assigndense/kernel/Adamsave/RestoreV2_6*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
]
save/RestoreV2_7/tensor_namesConst*(
valueBBdense/kernel/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
V
save/RestoreV2_8/tensor_namesConst*!
valueBBdense_1/bias*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assigndense_1/biassave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
[
save/RestoreV2_9/tensor_namesConst*&
valueBBdense_1/bias/Adam*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2_9*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
^
save/RestoreV2_10/tensor_namesConst*(
valueBBdense_1/bias/Adam_1*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2_10*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
Y
save/RestoreV2_11/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assigndense_1/kernelsave/RestoreV2_11*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
^
save/RestoreV2_12/tensor_namesConst*(
valueBBdense_1/kernel/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2_12*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
`
save/RestoreV2_13/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2_13*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
Y
save/RestoreV2_14/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
^
save/RestoreV2_15/tensor_namesConst*(
valueBBdense_2/kernel/Adam*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assigndense_2/kernel/Adamsave/RestoreV2_15*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
`
save/RestoreV2_16/tensor_namesConst**
value!BBdense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assigndense_2/kernel/Adam_1save/RestoreV2_16*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
W
save/RestoreV2_17/tensor_namesConst*!
valueBBdense_3/bias*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assigndense_3/biassave/RestoreV2_17*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
\
save/RestoreV2_18/tensor_namesConst*&
valueBBdense_3/bias/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18Assigndense_3/bias/Adamsave/RestoreV2_18*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
^
save/RestoreV2_19/tensor_namesConst*(
valueBBdense_3/bias/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19Assigndense_3/bias/Adam_1save/RestoreV2_19*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
Y
save/RestoreV2_20/tensor_namesConst*#
valueBBdense_3/kernel*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2

save/Assign_20Assigndense_3/kernelsave/RestoreV2_20*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
^
save/RestoreV2_21/tensor_namesConst*(
valueBBdense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21Assigndense_3/kernel/Adamsave/RestoreV2_21*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
`
save/RestoreV2_22/tensor_namesConst**
value!BBdense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2

save/Assign_22Assigndense_3/kernel/Adam_1save/RestoreV2_22*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
V
save/RestoreV2_23/tensor_namesConst* 
valueBBglobal_step*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2

save/Assign_23Assignglobal_stepsave/RestoreV2_23*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
V
save/RestoreV2_24/tensor_namesConst* 
valueBBlast_reward*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24Assignlast_rewardsave/RestoreV2_24*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
\
save/RestoreV2_25/tensor_namesConst*&
valueBBlog_sigma_squared*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25Assignlog_sigma_squaredsave/RestoreV2_25*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
a
save/RestoreV2_26/tensor_namesConst*+
value"B Blog_sigma_squared/Adam*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2

save/Assign_26Assignlog_sigma_squared/Adamsave/RestoreV2_26*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
c
save/RestoreV2_27/tensor_namesConst*-
value$B"Blog_sigma_squared/Adam_1*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27Assignlog_sigma_squared/Adam_1save/RestoreV2_27*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
o
save/RestoreV2_28/tensor_namesConst*9
value0B.B$lstm_policy/rnn/basic_lstm_cell/bias*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2
¼
save/Assign_28Assign$lstm_policy/rnn/basic_lstm_cell/biassave/RestoreV2_28*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
t
save/RestoreV2_29/tensor_namesConst*>
value5B3B)lstm_policy/rnn/basic_lstm_cell/bias/Adam*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2
Į
save/Assign_29Assign)lstm_policy/rnn/basic_lstm_cell/bias/Adamsave/RestoreV2_29*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
v
save/RestoreV2_30/tensor_namesConst*@
value7B5B+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1*
dtype0
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2
Ć
save/Assign_30Assign+lstm_policy/rnn/basic_lstm_cell/bias/Adam_1save/RestoreV2_30*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@lstm_policy/rnn/basic_lstm_cell/bias
q
save/RestoreV2_31/tensor_namesConst*;
value2B0B&lstm_policy/rnn/basic_lstm_cell/kernel*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2
Ą
save/Assign_31Assign&lstm_policy/rnn/basic_lstm_cell/kernelsave/RestoreV2_31*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
v
save/RestoreV2_32/tensor_namesConst*@
value7B5B+lstm_policy/rnn/basic_lstm_cell/kernel/Adam*
dtype0
O
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2
Å
save/Assign_32Assign+lstm_policy/rnn/basic_lstm_cell/kernel/Adamsave/RestoreV2_32*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
x
save/RestoreV2_33/tensor_namesConst*B
value9B7B-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1*
dtype0
O
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2
Ē
save/Assign_33Assign-lstm_policy/rnn/basic_lstm_cell/kernel/Adam_1save/RestoreV2_33*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@lstm_policy/rnn/basic_lstm_cell/kernel
n
save/RestoreV2_34/tensor_namesConst*8
value/B-B#lstm_value/rnn/basic_lstm_cell/bias*
dtype0
O
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2
ŗ
save/Assign_34Assign#lstm_value/rnn/basic_lstm_cell/biassave/RestoreV2_34*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
s
save/RestoreV2_35/tensor_namesConst*=
value4B2B(lstm_value/rnn/basic_lstm_cell/bias/Adam*
dtype0
O
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2
æ
save/Assign_35Assign(lstm_value/rnn/basic_lstm_cell/bias/Adamsave/RestoreV2_35*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
u
save/RestoreV2_36/tensor_namesConst*?
value6B4B*lstm_value/rnn/basic_lstm_cell/bias/Adam_1*
dtype0
O
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2
Į
save/Assign_36Assign*lstm_value/rnn/basic_lstm_cell/bias/Adam_1save/RestoreV2_36*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@lstm_value/rnn/basic_lstm_cell/bias
p
save/RestoreV2_37/tensor_namesConst*:
value1B/B%lstm_value/rnn/basic_lstm_cell/kernel*
dtype0
O
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2
¾
save/Assign_37Assign%lstm_value/rnn/basic_lstm_cell/kernelsave/RestoreV2_37*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
u
save/RestoreV2_38/tensor_namesConst*?
value6B4B*lstm_value/rnn/basic_lstm_cell/kernel/Adam*
dtype0
O
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2
Ć
save/Assign_38Assign*lstm_value/rnn/basic_lstm_cell/kernel/Adamsave/RestoreV2_38*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
w
save/RestoreV2_39/tensor_namesConst*A
value8B6B,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1*
dtype0
O
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2
Å
save/Assign_39Assign,lstm_value/rnn/basic_lstm_cell/kernel/Adam_1save/RestoreV2_39*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@lstm_value/rnn/basic_lstm_cell/kernel
V
save/RestoreV2_40/tensor_namesConst* 
valueBBmemory_size*
dtype0
O
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2

save/Assign_40Assignmemory_sizesave/RestoreV2_40*
T0*
validate_shape(*
use_locking(*
_class
loc:@memory_size
W
save/RestoreV2_41/tensor_namesConst*!
valueBBrunning_mean*
dtype0
O
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
dtypes
2

save/Assign_41Assignrunning_meansave/RestoreV2_41*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean
[
save/RestoreV2_42/tensor_namesConst*%
valueBBrunning_variance*
dtype0
O
"save/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2

save/Assign_42Assignrunning_variancesave/RestoreV2_42*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance
ē
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42

Const_4Const*ż
valueóBšBtrainerBppoBbetaB1e-3B
batch_sizeB512Bbuffer_sizeB5120BepsilonB0.1BgammaB0.995Bhidden_unitsB128BlambdB0.95Blearning_rateB0.0003B	max_stepsB1.0e5Bmemory_sizeB256B	normalizeBTrueB	num_epochB3B
num_layersB1Btime_horizonB64Bsequence_lengthB64Bsummary_freqB1000Buse_recurrentBTrueBgraph_scopeB Bsummary_pathB./summaries/locus2*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_4+Hyperparameters/serialized_summary_metadata*
T0"