; ModuleID = 'C:/LAB4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mode5 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@fpga_convolution_str = internal unnamed_addr constant [17 x i8] c"fpga_convolution\00" ; [#uses=1 type=[17 x i8]*]
@bundle6 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=23 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @fpga_convolution(i32* %gmem, i32 %image, i32 %kernel, i32 %output) {
  %image_count = alloca i32                       ; [#uses=3 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %image_count}, metadata !18) ; [debug variable = image_count]
  %output_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_read}, i64 0, metadata !28), !dbg !32 ; [debug line = 3:66] [debug variable = output]
  %kernel_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %kernel) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %kernel_read}, i64 0, metadata !33), !dbg !37 ; [debug line = 3:47] [debug variable = kernel]
  %image_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %image) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %image_read}, i64 0, metadata !38), !dbg !39 ; [debug line = 3:27] [debug variable = image]
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_3_cast = zext i30 %tmp_1 to i31            ; [#uses=1 type=i31]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %kernel_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_6_cast = zext i30 %tmp_2 to i31            ; [#uses=1 type=i31]
  %image1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %image_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_s = zext i30 %image1 to i32                ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !40
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @fpga_convolution_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %image}, i64 0, metadata !38), !dbg !39 ; [debug line = 3:27] [debug variable = image]
  call void @llvm.dbg.value(metadata !{i32 %kernel}, i64 0, metadata !33), !dbg !37 ; [debug line = 3:47] [debug variable = kernel]
  call void @llvm.dbg.value(metadata !{i32 %output}, i64 0, metadata !28), !dbg !32 ; [debug line = 3:66] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %image, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %kernel, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 121, [1 x i8]* @bundle4, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %output, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 65536, [1 x i8]* @bundle6, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !50 ; [debug line = 7:1]
  %empty = alloca [70756 x i32], align 4, !dbg !51 ; [#uses=4 type=[70756 x i32]*] [debug line = 13:21]
  store i32 0, i32* %image_count
  br label %1, !dbg !52                           ; [debug line = 26:17]

; <label>:1                                       ; preds = %8, %0
  %flag = phi i32 [ 0, %0 ], [ %flag_3, %8 ]      ; [#uses=2 type=i32]
  %pos = phi i32 [ 0, %0 ], [ %tmp_9, %8 ]        ; [#uses=6 type=i32]
  %tmp = icmp slt i32 %pos, 68096, !dbg !52       ; [#uses=1 type=i1] [debug line = 26:17]
  br i1 %tmp, label %2, label %.preheader5.preheader, !dbg !52 ; [debug line = 26:17]

.preheader5.preheader:                            ; preds = %1
  br label %.preheader5, !dbg !54                 ; [debug line = 48:33]

; <label>:2                                       ; preds = %1
  %tmp_3 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %flag, i32 8, i32 31), !dbg !56 ; [#uses=1 type=i24] [debug line = 29:3]
  %icmp = icmp sgt i24 %tmp_3, 0, !dbg !56        ; [#uses=1 type=i1] [debug line = 29:3]
  br i1 %icmp, label %3, label %7, !dbg !56       ; [debug line = 29:3]

; <label>:3                                       ; preds = %2
  %pos_3 = add i32 %pos, 10, !dbg !58             ; [#uses=1 type=i32] [debug line = 26:44]
  call void @llvm.dbg.value(metadata !{i32 %pos_3}, i64 0, metadata !59), !dbg !58 ; [debug line = 26:44] [debug variable = pos]
  br label %4, !dbg !60                           ; [debug line = 30:21]

; <label>:4                                       ; preds = %5, %3
  %pos_1 = phi i32 [ %pos, %3 ], [ %pos_6, %5 ]   ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %pos_1, %pos_3, !dbg !60 ; [#uses=1 type=i1] [debug line = 30:21]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %6, label %5, !dbg !60  ; [debug line = 30:21]

; <label>:5                                       ; preds = %4
  %p_addr_2 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos_1, !dbg !63 ; [#uses=1 type=i32*] [debug line = 31:5]
  store i32 0, i32* %p_addr_2, align 4, !dbg !63  ; [debug line = 31:5]
  %pos_6 = add nsw i32 %pos_1, 1, !dbg !65        ; [#uses=1 type=i32] [debug line = 32:5]
  call void @llvm.dbg.value(metadata !{i32 %pos_6}, i64 0, metadata !59), !dbg !65 ; [debug line = 32:5] [debug variable = pos]
  br label %4, !dbg !66                           ; [debug line = 30:41]

; <label>:6                                       ; preds = %4
  %pos_5 = add i32 %pos, 9, !dbg !67              ; [#uses=1 type=i32] [debug line = 39:4]
  call void @llvm.dbg.value(metadata !{i32 %pos_5}, i64 0, metadata !59), !dbg !67 ; [debug line = 39:4] [debug variable = pos]
  br label %8, !dbg !68                           ; [debug line = 40:3]

; <label>:7                                       ; preds = %2
  %image_count_load = load i32* %image_count, !dbg !69 ; [#uses=2 type=i32] [debug line = 42:4]
  %image2_sum = add i32 %tmp_s, %image_count_load ; [#uses=1 type=i32]
  %gmem_addr = getelementptr i32* %gmem, i32 %image2_sum ; [#uses=2 type=i32*]
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 41:4]
  %gmem_addr_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr), !dbg !71 ; [#uses=1 type=i32] [debug line = 41:4]
  %p_addr = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos, !dbg !71 ; [#uses=1 type=i32*] [debug line = 41:4]
  store i32 %gmem_addr_read, i32* %p_addr, align 4, !dbg !71 ; [debug line = 41:4]
  %image_count_1 = add nsw i32 %image_count_load, 1, !dbg !69 ; [#uses=1 type=i32] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i32 %image_count_1}, i64 0, metadata !18), !dbg !69 ; [debug line = 42:4] [debug variable = image_count]
  store i32 %image_count_1, i32* %image_count, !dbg !69 ; [debug line = 42:4]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %flag_1 = phi i32 [ -1, %6 ], [ %flag, %7 ]     ; [#uses=1 type=i32]
  %pos_2 = phi i32 [ %pos_5, %6 ], [ %pos, %7 ]   ; [#uses=1 type=i32]
  %flag_3 = add nsw i32 %flag_1, 1, !dbg !72      ; [#uses=1 type=i32] [debug line = 44:3]
  call void @llvm.dbg.value(metadata !{i32 %flag_3}, i64 0, metadata !73), !dbg !72 ; [debug line = 44:3] [debug variable = flag]
  %tmp_9 = add nsw i32 %pos_2, 1, !dbg !58        ; [#uses=1 type=i32] [debug line = 26:44]
  br label %1, !dbg !58                           ; [debug line = 26:44]

.preheader5:                                      ; preds = %9, %.preheader5.preheader
  %pos1 = phi i17 [ %pos_4, %9 ], [ -62976, %.preheader5.preheader ] ; [#uses=3 type=i17]
  %pos1_cast6 = zext i17 %pos1 to i32, !dbg !54   ; [#uses=1 type=i32] [debug line = 48:33]
  %exitcond2 = icmp eq i17 %pos1, -60316, !dbg !54 ; [#uses=1 type=i1] [debug line = 48:33]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2660, i64 2660, i64 2660) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader4.preheader, label %9, !dbg !54 ; [debug line = 48:33]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !74                 ; [debug line = 58:20]

; <label>:9                                       ; preds = %.preheader5
  %p_addr_1 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %pos1_cast6, !dbg !76 ; [#uses=1 type=i32*] [debug line = 49:3]
  store i32 0, i32* %p_addr_1, align 4, !dbg !76  ; [debug line = 49:3]
  %pos_4 = add i17 %pos1, 1, !dbg !78             ; [#uses=1 type=i17] [debug line = 48:52]
  call void @llvm.dbg.value(metadata !{i17 %pos_4}, i64 0, metadata !79), !dbg !78 ; [debug line = 48:52] [debug variable = pos]
  br label %.preheader5, !dbg !78                 ; [debug line = 48:52]

.preheader4:                                      ; preds = %12, %.preheader4.preheader
  %flag_2 = phi i32 [ %flag_4, %12 ], [ 0, %.preheader4.preheader ] ; [#uses=2 type=i32]
  %counter = phi i17 [ %counter_1, %12 ], [ 0, %.preheader4.preheader ] ; [#uses=2 type=i17]
  %position = phi i32 [ %position_2, %12 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %counter_cast_cast = zext i17 %counter to i31, !dbg !74 ; [#uses=1 type=i31] [debug line = 58:20]
  %tmp_7 = icmp slt i32 %position, 68086, !dbg !74 ; [#uses=1 type=i1] [debug line = 58:20]
  %counter_1 = add i17 %counter, 1, !dbg !80      ; [#uses=1 type=i17] [debug line = 74:3]
  br i1 %tmp_7, label %10, label %13, !dbg !74    ; [debug line = 58:20]

; <label>:10                                      ; preds = %.preheader4
  %tmp_5 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %flag_2, i32 8, i32 31), !dbg !82 ; [#uses=1 type=i24] [debug line = 61:3]
  %icmp1 = icmp sgt i24 %tmp_5, 0, !dbg !82       ; [#uses=2 type=i1] [debug line = 61:3]
  %position_1 = add nsw i32 10, %position, !dbg !83 ; [#uses=1 type=i32] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i32 %position_1}, i64 0, metadata !85), !dbg !83 ; [debug line = 63:4] [debug variable = position]
  %p_position = select i1 %icmp1, i32 %position_1, i32 %position, !dbg !82 ; [#uses=2 type=i32] [debug line = 61:3]
  %tmp_6 = trunc i32 %p_position to i18, !dbg !86 ; [#uses=1 type=i18] [debug line = 67:19]
  br label %.loopexit, !dbg !86                   ; [debug line = 67:19]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %10
  %tempsum_1 = phi i32 [ 0, %10 ], [ %tempsum_2, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %column = phi i4 [ 0, %10 ], [ %column_1, %.loopexit.loopexit ] ; [#uses=4 type=i4]
  %column_cast5 = zext i4 %column to i7, !dbg !86 ; [#uses=1 type=i7] [debug line = 67:19]
  %column_cast4 = zext i4 %column to i18, !dbg !86 ; [#uses=1 type=i18] [debug line = 67:19]
  %exitcond1 = icmp eq i4 %column, -5, !dbg !86   ; [#uses=1 type=i1] [debug line = 67:19]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  %column_1 = add i4 %column, 1, !dbg !88         ; [#uses=1 type=i4] [debug line = 67:32]
  call void @llvm.dbg.value(metadata !{i4 %column_1}, i64 0, metadata !89), !dbg !88 ; [debug line = 67:32] [debug variable = column]
  br i1 %exitcond1, label %12, label %.preheader.preheader, !dbg !86 ; [debug line = 67:19]

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader, !dbg !90                  ; [debug line = 68:17]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %tempsum_2 = phi i32 [ %tempsum, %11 ], [ %tempsum_1, %.preheader.preheader ] ; [#uses=2 type=i32]
  %row = phi i4 [ %row_1, %11 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i4]
  %phi_mul = phi i12 [ %next_mul, %11 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i12]
  %phi_mul7 = phi i7 [ %next_mul8, %11 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i7]
  %exitcond = icmp eq i4 %row, -5, !dbg !90       ; [#uses=1 type=i1] [debug line = 68:17]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  %row_1 = add i4 %row, 1, !dbg !93               ; [#uses=1 type=i4] [debug line = 68:27]
  br i1 %exitcond, label %.loopexit.loopexit, label %11, !dbg !90 ; [debug line = 68:17]

; <label>:11                                      ; preds = %.preheader
  %next_mul = add i12 %phi_mul, 266               ; [#uses=1 type=i12]
  %tmp_2_cast7 = zext i12 %phi_mul to i18, !dbg !94 ; [#uses=1 type=i18] [debug line = 69:5]
  %tmp1 = add i18 %tmp_2_cast7, %tmp_6, !dbg !94  ; [#uses=1 type=i18] [debug line = 69:5]
  %tmp_4 = add i18 %column_cast4, %tmp1, !dbg !94 ; [#uses=1 type=i18] [debug line = 69:5]
  %tmp_4_cast = zext i18 %tmp_4 to i32, !dbg !94  ; [#uses=1 type=i32] [debug line = 69:5]
  %p_addr_3 = getelementptr inbounds [70756 x i32]* %empty, i32 0, i32 %tmp_4_cast, !dbg !94 ; [#uses=1 type=i32*] [debug line = 69:5]
  %empty_9 = load i32* %p_addr_3, align 4, !dbg !94 ; [#uses=1 type=i32] [debug line = 69:5]
  %next_mul8 = add i7 %phi_mul7, 11               ; [#uses=1 type=i7]
  %sum3 = add i7 %column_cast5, %phi_mul7         ; [#uses=1 type=i7]
  %sum3_cast_cast = zext i7 %sum3 to i31          ; [#uses=1 type=i31]
  %kernel4_sum = add i31 %sum3_cast_cast, %tmp_6_cast ; [#uses=1 type=i31]
  %kernel4_sum_cast = zext i31 %kernel4_sum to i32 ; [#uses=1 type=i32]
  %gmem_addr_2 = getelementptr i32* %gmem, i32 %kernel4_sum_cast ; [#uses=2 type=i32*]
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr_2, i32 1), !dbg !94 ; [#uses=0 type=i1] [debug line = 69:5]
  %gmem_addr_2_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr_2), !dbg !94 ; [#uses=1 type=i32] [debug line = 69:5]
  %tmp_8 = mul nsw i32 %empty_9, %gmem_addr_2_read, !dbg !94 ; [#uses=1 type=i32] [debug line = 69:5]
  %tempsum = add nsw i32 %tempsum_2, %tmp_8, !dbg !94 ; [#uses=1 type=i32] [debug line = 69:5]
  call void @llvm.dbg.value(metadata !{i32 %tempsum}, i64 0, metadata !96), !dbg !94 ; [debug line = 69:5] [debug variable = tempsum]
  call void @llvm.dbg.value(metadata !{i4 %row_1}, i64 0, metadata !97), !dbg !93 ; [debug line = 68:27] [debug variable = row]
  br label %.preheader, !dbg !93                  ; [debug line = 68:27]

; <label>:12                                      ; preds = %.loopexit
  %output6_sum = add i31 %tmp_3_cast, %counter_cast_cast ; [#uses=1 type=i31]
  %output6_sum_cast = zext i31 %output6_sum to i32 ; [#uses=1 type=i32]
  %gmem_addr_1 = getelementptr i32* %gmem, i32 %output6_sum_cast ; [#uses=3 type=i32*]
  %gmem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem_addr_1, i32 1), !dbg !98 ; [#uses=0 type=i1] [debug line = 73:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem_addr_1, i32 %tempsum_1, i4 -1), !dbg !98 ; [debug line = 73:3]
  %gmem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem_addr_1), !dbg !98 ; [#uses=0 type=i1] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{i17 %counter_1}, i64 0, metadata !99), !dbg !80 ; [debug line = 74:3] [debug variable = counter]
  %flag_2_op = add i32 %flag_2, 1, !dbg !100      ; [#uses=1 type=i32] [debug line = 77:3]
  %flag_4 = select i1 %icmp1, i32 1, i32 %flag_2_op, !dbg !100 ; [#uses=1 type=i32] [debug line = 77:3]
  call void @llvm.dbg.value(metadata !{i32 %flag_4}, i64 0, metadata !73), !dbg !100 ; [debug line = 77:3] [debug variable = flag]
  %position_2 = add nsw i32 %p_position, 1, !dbg !101 ; [#uses=1 type=i32] [debug line = 58:59]
  call void @llvm.dbg.value(metadata !{i32 %position_2}, i64 0, metadata !85), !dbg !101 ; [debug line = 58:59] [debug variable = position]
  br label %.preheader4, !dbg !101                ; [debug line = 58:59]

; <label>:13                                      ; preds = %.preheader4
  ret void, !dbg !102                             ; [debug line = 86:1]
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=3]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_10
}

; [#uses=2]
define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_11 = trunc i32 %empty to i24             ; [#uses=1 type=i24]
  ret i24 %empty_11
}

; [#uses=0]
declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
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
!18 = metadata !{i32 786688, metadata !19, metadata !"image_count", metadata !21, i32 17, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!19 = metadata !{i32 786443, metadata !20, i32 3, i32 82, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"fpga_convolution", metadata !"fpga_convolution", metadata !"_Z16fpga_convolutionPiS_S_", metadata !21, i32 3, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 3} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"LAB4/convolution.cpp", metadata !"C:\5C", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786689, metadata !20, metadata !"output", null, i32 3, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2097152, i64 32, i32 0, i32 0, metadata !25, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 65535}    ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 3, i32 66, metadata !20, null}
!33 = metadata !{i32 786689, metadata !20, metadata !"kernel", null, i32 3, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3872, i64 32, i32 0, i32 0, metadata !25, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 120}      ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 3, i32 47, metadata !20, null}
!38 = metadata !{i32 786689, metadata !20, metadata !"image", null, i32 3, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 3, i32 27, metadata !20, null}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43, metadata !46, metadata !49}
!43 = metadata !{metadata !"image", metadata !44, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 65535, i32 1}
!46 = metadata !{metadata !"kernel", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 120, i32 1}
!49 = metadata !{metadata !"output", metadata !44, metadata !"int", i32 0, i32 31}
!50 = metadata !{i32 7, i32 1, metadata !19, null}
!51 = metadata !{i32 13, i32 21, metadata !19, null}
!52 = metadata !{i32 26, i32 17, metadata !53, null}
!53 = metadata !{i32 786443, metadata !19, i32 26, i32 2, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 48, i32 33, metadata !55, null}
!55 = metadata !{i32 786443, metadata !19, i32 48, i32 2, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 29, i32 3, metadata !57, null}
!57 = metadata !{i32 786443, metadata !53, i32 26, i32 50, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 26, i32 44, metadata !53, null}
!59 = metadata !{i32 786688, metadata !53, metadata !"pos", metadata !21, i32 26, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 30, i32 21, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 30, i32 4, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !57, i32 29, i32 20, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 31, i32 5, metadata !64, null}
!64 = metadata !{i32 786443, metadata !61, i32 30, i32 49, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 32, i32 5, metadata !64, null}
!66 = metadata !{i32 30, i32 41, metadata !61, null}
!67 = metadata !{i32 39, i32 4, metadata !62, null}
!68 = metadata !{i32 40, i32 3, metadata !62, null}
!69 = metadata !{i32 42, i32 4, metadata !70, null}
!70 = metadata !{i32 786443, metadata !57, i32 40, i32 8, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 41, i32 4, metadata !70, null}
!72 = metadata !{i32 44, i32 3, metadata !57, null}
!73 = metadata !{i32 786688, metadata !19, metadata !"flag", metadata !21, i32 16, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 58, i32 20, metadata !75, null}
!75 = metadata !{i32 786443, metadata !19, i32 58, i32 2, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 49, i32 3, metadata !77, null}
!77 = metadata !{i32 786443, metadata !55, i32 48, i32 58, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 48, i32 52, metadata !55, null}
!79 = metadata !{i32 786688, metadata !55, metadata !"pos", metadata !21, i32 48, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 74, i32 3, metadata !81, null}
!81 = metadata !{i32 786443, metadata !75, i32 58, i32 71, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 61, i32 3, metadata !81, null}
!83 = metadata !{i32 63, i32 4, metadata !84, null}
!84 = metadata !{i32 786443, metadata !81, i32 61, i32 19, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !75, metadata !"position", metadata !21, i32 58, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 67, i32 19, metadata !87, null}
!87 = metadata !{i32 786443, metadata !81, i32 67, i32 3, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 67, i32 32, metadata !87, null}
!89 = metadata !{i32 786688, metadata !87, metadata !"column", metadata !21, i32 67, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 68, i32 17, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 68, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !87, i32 67, i32 42, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 68, i32 27, metadata !91, null}
!94 = metadata !{i32 69, i32 5, metadata !95, null}
!95 = metadata !{i32 786443, metadata !91, i32 68, i32 34, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786688, metadata !19, metadata !"tempsum", metadata !21, i32 14, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786688, metadata !91, metadata !"row", metadata !21, i32 68, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 73, i32 3, metadata !81, null}
!99 = metadata !{i32 786688, metadata !19, metadata !"counter", metadata !21, i32 15, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 77, i32 3, metadata !81, null}
!101 = metadata !{i32 58, i32 59, metadata !75, null}
!102 = metadata !{i32 86, i32 1, metadata !20, null}
