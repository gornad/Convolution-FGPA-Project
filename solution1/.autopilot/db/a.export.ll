; ModuleID = 'C:/LAB4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@fpga_convolution_str = internal unnamed_addr constant [17 x i8] c"fpga_convolution\00"
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @fpga_convolution(i32* %gmem, i32 %image_r, i32 %kernel, i32 %output_r) {
  %image_count = alloca i32
  %output_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_r)
  %kernel_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %kernel)
  %image_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %image_r)
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_read, i32 2, i32 31)
  %tmp_3_cast = zext i30 %tmp_1 to i31
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %kernel_read, i32 2, i32 31)
  %tmp_6_cast = zext i30 %tmp_2 to i31
  %image1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %image_read, i32 2, i32 31)
  %tmp_s = zext i30 %image1 to i32
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !18
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @fpga_convolution_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %image_r, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %kernel, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 121, [1 x i8]* @bundle4, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_r, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @bundle6, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = alloca [70756 x i32], align 4
  store i32 0, i32* %image_count
  br label %1

; <label>:1                                       ; preds = %8, %0
  %flag = phi i32 [ 0, %0 ], [ %flag_3, %8 ]
  %pos = phi i32 [ 0, %0 ], [ %tmp_9, %8 ]
  %tmp = icmp slt i32 %pos, 68096
  br i1 %tmp, label %2, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %1
  br label %.preheader5

; <label>:2                                       ; preds = %1
  %tmp_3 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %flag, i32 8, i32 31)
  %icmp = icmp sgt i24 %tmp_3, 0
  br i1 %icmp, label %3, label %7

; <label>:3                                       ; preds = %2
  %pos_3 = add i32 %pos, 10
  br label %4

; <label>:4                                       ; preds = %5, %3
  %pos_1 = phi i32 [ %pos, %3 ], [ %pos_6, %5 ]
  %exitcond3 = icmp eq i32 %pos_1, %pos_3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  br i1 %exitcond3, label %6, label %5

; <label>:5                                       ; preds = %4
  %p_addr_2 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos_1
  store i32 0, i32* %p_addr_2, align 4
  %pos_6 = add nsw i32 %pos_1, 1
  br label %4

; <label>:6                                       ; preds = %4
  %pos_5 = add i32 %pos, 9
  br label %8

; <label>:7                                       ; preds = %2
  %image_count_load = load i32* %image_count
  %image2_sum = add i32 %tmp_s, %image_count_load
  %gmem_addr = getelementptr i32* %gmem, i32 %image2_sum
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr, i32 1)
  %gmem_addr_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr)
  %p_addr = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos
  store i32 %gmem_addr_read, i32* %p_addr, align 4
  %image_count_1 = add nsw i32 %image_count_load, 1
  store i32 %image_count_1, i32* %image_count
  br label %8

; <label>:8                                       ; preds = %7, %6
  %flag_1 = phi i32 [ -1, %6 ], [ %flag, %7 ]
  %pos_2 = phi i32 [ %pos_5, %6 ], [ %pos, %7 ]
  %flag_3 = add nsw i32 %flag_1, 1
  %tmp_9 = add nsw i32 %pos_2, 1
  br label %1

.preheader5:                                      ; preds = %.preheader5.preheader, %9
  %pos1 = phi i17 [ %pos_4, %9 ], [ -62976, %.preheader5.preheader ]
  %pos1_cast6 = zext i17 %pos1 to i32
  %exitcond2 = icmp eq i17 %pos1, -60316
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2660, i64 2660, i64 2660) nounwind
  br i1 %exitcond2, label %.preheader4.preheader, label %9

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

; <label>:9                                       ; preds = %.preheader5
  %p_addr_1 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos1_cast6
  store i32 0, i32* %p_addr_1, align 4
  %pos_4 = add i17 %pos1, 1
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader4.preheader, %12
  %flag_2 = phi i32 [ %flag_4, %12 ], [ 0, %.preheader4.preheader ]
  %counter = phi i17 [ %counter_1, %12 ], [ 0, %.preheader4.preheader ]
  %position = phi i32 [ %position_2, %12 ], [ 0, %.preheader4.preheader ]
  %counter_cast_cast = zext i17 %counter to i31
  %tmp_7 = icmp slt i32 %position, 68086
  %counter_1 = add i17 %counter, 1
  br i1 %tmp_7, label %10, label %13

; <label>:10                                      ; preds = %.preheader4
  %tmp_5 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %flag_2, i32 8, i32 31)
  %icmp1 = icmp sgt i24 %tmp_5, 0
  %position_1 = add nsw i32 10, %position
  %p_position = select i1 %icmp1, i32 %position_1, i32 %position
  %tmp_6 = trunc i32 %p_position to i18
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %10
  %tempsum_1 = phi i32 [ 0, %10 ], [ %tempsum_2, %.loopexit.loopexit ]
  %column = phi i4 [ 0, %10 ], [ %column_1, %.loopexit.loopexit ]
  %column_cast5 = zext i4 %column to i7
  %column_cast4 = zext i4 %column to i18
  %exitcond1 = icmp eq i4 %column, -5
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind
  %column_1 = add i4 %column, 1
  br i1 %exitcond1, label %12, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %11
  %tempsum_2 = phi i32 [ %tempsum, %11 ], [ %tempsum_1, %.preheader.preheader ]
  %row = phi i4 [ %row_1, %11 ], [ 0, %.preheader.preheader ]
  %phi_mul = phi i12 [ %next_mul, %11 ], [ 0, %.preheader.preheader ]
  %phi_mul7 = phi i7 [ %next_mul8, %11 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %row, -5
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind
  %row_1 = add i4 %row, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %11

; <label>:11                                      ; preds = %.preheader
  %next_mul = add i12 %phi_mul, 266
  %tmp_2_cast7 = zext i12 %phi_mul to i18
  %tmp1 = add i18 %tmp_2_cast7, %tmp_6
  %tmp_4 = add i18 %column_cast4, %tmp1
  %tmp_4_cast = zext i18 %tmp_4 to i32
  %p_addr_3 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %tmp_4_cast
  %empty_9 = load i32* %p_addr_3, align 4
  %next_mul8 = add i7 %phi_mul7, 11
  %sum3 = add i7 %column_cast5, %phi_mul7
  %sum3_cast_cast = zext i7 %sum3 to i31
  %kernel4_sum = add i31 %sum3_cast_cast, %tmp_6_cast
  %kernel4_sum_cast = zext i31 %kernel4_sum to i32
  %gmem_addr_2 = getelementptr i32* %gmem, i32 %kernel4_sum_cast
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr_2, i32 1)
  %gmem_addr_2_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr_2)
  %tmp_8 = mul nsw i32 %empty_9, %gmem_addr_2_read
  %tempsum = add nsw i32 %tempsum_2, %tmp_8
  br label %.preheader

; <label>:12                                      ; preds = %.loopexit
  %output6_sum = add i31 %tmp_3_cast, %counter_cast_cast
  %output6_sum_cast = zext i31 %output6_sum to i32
  %gmem_addr_1 = getelementptr i32* %gmem, i32 %output6_sum_cast
  %gmem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem_addr_1, i32 %tempsum_1, i4 -1)
  %gmem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem_addr_1)
  %flag_2_op = add i32 %flag_2, 1
  %flag_4 = select i1 %icmp1, i32 1, i32 %flag_2_op
  %position_2 = add nsw i32 %p_position, 1
  br label %.preheader4

; <label>:13                                      ; preds = %.preheader4
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i30
  ret i30 %empty_10
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i24
  ret i24 %empty_11
}

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}
!axi4.master.portmap = !{!14}
!axi4.slave.bundlemap = !{!15, !16, !17}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"image", metadata !"kernel", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !"gmem", metadata !"image", metadata !"READONLY", metadata !"kernel", metadata !"READONLY", metadata !"output", metadata !"WRITEONLY"}
!15 = metadata !{metadata !"image", metadata !""}
!16 = metadata !{metadata !"kernel", metadata !""}
!17 = metadata !{metadata !"output", metadata !""}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21, metadata !24, metadata !27}
!21 = metadata !{metadata !"image", metadata !22, metadata !"int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 65535, i32 1}
!24 = metadata !{metadata !"kernel", metadata !25, metadata !"int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 120, i32 1}
!27 = metadata !{metadata !"output", metadata !22, metadata !"int", i32 0, i32 31}
