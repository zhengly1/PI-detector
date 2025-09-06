; ModuleID = 'dtrmv.ll'
source_filename = "dtrmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_trmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dtrmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8) local_unnamed_addr #0 !dbg !48 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !62, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !63, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !64, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !65, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !66, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !67, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !68, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !69, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !70, metadata !DIExpression()), !dbg !119
  %10 = icmp eq i32 %3, 131, !dbg !120
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !75, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !121
  %11 = icmp eq i32 %2, 113, !dbg !122
  %12 = select i1 %11, i32 112, i32 %2, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !76, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !124
  %13 = add i32 %0, -103, !dbg !125
  %14 = icmp ult i32 %13, -2, !dbg !125
  %15 = zext i1 %14 to i32, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !77, metadata !DIExpression()), !dbg !124
  %16 = add i32 %1, -123, !dbg !127
  %17 = icmp ult i32 %16, -2, !dbg !127
  %18 = select i1 %17, i32 2, i32 %15, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !77, metadata !DIExpression()), !dbg !124
  %19 = add i32 %2, -114, !dbg !129
  %20 = icmp ult i32 %19, -3, !dbg !129
  %21 = select i1 %20, i32 3, i32 %18, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !77, metadata !DIExpression()), !dbg !124
  %22 = add i32 %3, -133, !dbg !131
  %23 = icmp ult i32 %22, -2, !dbg !131
  %24 = select i1 %23, i32 4, i32 %21, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !77, metadata !DIExpression()), !dbg !124
  %25 = icmp slt i32 %4, 0, !dbg !133
  %26 = select i1 %25, i32 5, i32 %24, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !77, metadata !DIExpression()), !dbg !124
  %27 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !136
  %28 = icmp sgt i32 %27, %6, !dbg !136
  %29 = select i1 %28, i32 7, i32 %26, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !77, metadata !DIExpression()), !dbg !124
  %30 = icmp eq i32 %8, 0, !dbg !138
  %31 = select i1 %30, i32 9, i32 %29, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !77, metadata !DIExpression()), !dbg !124
  %32 = icmp eq i32 %31, 0, !dbg !140
  br i1 %32, label %34, label %33, !dbg !135

33:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !140
  br label %34, !dbg !140

34:                                               ; preds = %33, %9
  %35 = icmp eq i32 %0, 101, !dbg !142
  %36 = icmp eq i32 %12, 111
  %37 = and i1 %35, %36, !dbg !143
  %38 = icmp eq i32 %1, 121
  %39 = and i1 %38, %37, !dbg !143
  br i1 %39, label %46, label %40, !dbg !143

40:                                               ; preds = %34
  %41 = icmp eq i32 %0, 102, !dbg !144
  %42 = icmp eq i32 %12, 112
  %43 = and i1 %41, %42, !dbg !145
  %44 = icmp eq i32 %1, 122
  %45 = and i1 %44, %43, !dbg !145
  br i1 %45, label %46, label %99, !dbg !145

46:                                               ; preds = %40, %34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !121
  %47 = icmp sgt i32 %4, 0, !dbg !147
  br i1 %47, label %48, label %357, !dbg !148

48:                                               ; preds = %46
  %49 = icmp sgt i32 %8, 0, !dbg !149
  %50 = sub nsw i32 1, %4, !dbg !149
  %51 = mul i32 %50, %8, !dbg !149
  %52 = select i1 %49, i32 0, i32 %51, !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !79, metadata !DIExpression()), !dbg !146
  %53 = add i32 %6, 1
  %54 = sext i32 %8 to i64, !dbg !148
  %55 = zext nneg i32 %4 to i64, !dbg !148
  %56 = sext i32 %6 to i64, !dbg !148
  %57 = sext i32 %52 to i64, !dbg !148
  %58 = zext nneg i32 %4 to i64, !dbg !147
  br label %59, !dbg !148

59:                                               ; preds = %94, %48
  %60 = phi i64 [ %57, %48 ], [ %96, %94 ]
  %61 = phi i64 [ 0, %48 ], [ %65, %94 ]
  %62 = phi i32 [ %52, %48 ], [ %64, %94 ]
  %63 = phi i64 [ 1, %48 ], [ %97, %94 ]
  %64 = add i32 %62, %8, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !79, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !150
  %65 = add nuw nsw i64 %61, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !86, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !87, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !150
  %66 = icmp ult i64 %65, %55, !dbg !152
  br i1 %66, label %67, label %83, !dbg !155

67:                                               ; preds = %59
  %68 = sext i32 %64 to i64, !dbg !151
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  %69 = mul nsw i64 %61, %56
  %70 = getelementptr double, ptr %5, i64 %69, !dbg !155
  br label %71, !dbg !155

71:                                               ; preds = %71, %67
  %72 = phi i64 [ %68, %67 ], [ %80, %71 ]
  %73 = phi i64 [ %63, %67 ], [ %81, %71 ]
  %74 = phi double [ 0.000000e+00, %67 ], [ %handler_result, %71 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %74, metadata !82, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !88, metadata !DIExpression()), !dbg !150
  %75 = getelementptr inbounds double, ptr %7, i64 %72, !dbg !156
  %76 = load double, ptr %75, align 8, !dbg !156, !tbaa !158
  %77 = getelementptr double, ptr %70, i64 %73, !dbg !162
  %78 = load double, ptr %77, align 8, !dbg !162, !tbaa !158
  %79 = fmul double %76, %78, !dbg !163
  %handler_result = call double @fAddHandlerDouble(double %74, double %79), !dbg !164
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !82, metadata !DIExpression()), !dbg !150
  %80 = add i64 %72, %54, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !88, metadata !DIExpression()), !dbg !150
  %81 = add nuw nsw i64 %73, 1, !dbg !165
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !74, metadata !DIExpression()), !dbg !121
  %82 = icmp eq i64 %81, %58, !dbg !152
  br i1 %82, label %83, label %71, !dbg !155, !llvm.loop !166

83:                                               ; preds = %71, %59
  %84 = phi double [ 0.000000e+00, %59 ], [ %handler_result, %71 ], !dbg !150
  %85 = getelementptr inbounds double, ptr %7, i64 %60, !dbg !169
  %86 = load double, ptr %85, align 8, !dbg !169, !tbaa !158
  br i1 %10, label %87, label %94, !dbg !171

87:                                               ; preds = %83
  %88 = trunc i64 %61 to i32, !dbg !172
  %89 = mul i32 %53, %88, !dbg !172
  %90 = sext i32 %89 to i64, !dbg !174
  %91 = getelementptr inbounds double, ptr %5, i64 %90, !dbg !174
  %92 = load double, ptr %91, align 8, !dbg !174, !tbaa !158
  %93 = fmul double %86, %92, !dbg !175
  br label %94, !dbg !176

94:                                               ; preds = %87, %83
  %95 = phi double [ %93, %87 ], [ %86, %83 ]
  %handler_result1 = call double @fAddHandlerDouble(double %84, double %95), !dbg !169
  store double %handler_result1, ptr %85, align 8, !dbg !169, !tbaa !158
  %96 = add i64 %60, %54, !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !79, metadata !DIExpression()), !dbg !146
  %97 = add nuw nsw i64 %63, 1, !dbg !148
  %98 = icmp eq i64 %65, %58, !dbg !147
  br i1 %98, label %357, label %59, !dbg !148, !llvm.loop !178

99:                                               ; preds = %40
  %100 = and i1 %44, %37, !dbg !180
  %101 = and i1 %38, %43
  %102 = or i1 %100, %101, !dbg !180
  br i1 %102, label %103, label %208, !dbg !180

103:                                              ; preds = %99
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !181
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !71, metadata !DIExpression()), !dbg !121
  %104 = icmp sgt i32 %4, 0, !dbg !182
  br i1 %104, label %105, label %357, !dbg !183

105:                                              ; preds = %103
  %106 = icmp sgt i32 %8, 0, !dbg !184
  %107 = sub nsw i32 1, %4, !dbg !184
  %108 = mul i32 %107, %8, !dbg !184
  %109 = select i1 %106, i32 0, i32 %108, !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %109, i32 %4, i32 %8), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !181
  %110 = add nsw i32 %4, -1, !dbg !185
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %109, i32 %110, i32 %8), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !181
  %111 = mul i32 %110, %8, !dbg !186
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %109, i32 %111), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !181
  %112 = add nsw i32 %109, %111, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !89, metadata !DIExpression()), !dbg !181
  %113 = sub i32 0, %111
  %114 = select i1 %106, i32 0, i32 %113
  %115 = add i32 %6, 1
  %116 = sext i32 %114 to i64, !dbg !183
  %117 = sext i32 %8 to i64, !dbg !183
  %118 = zext i32 %110 to i64, !dbg !183
  %119 = zext nneg i32 %4 to i64, !dbg !183
  %120 = sext i32 %6 to i64, !dbg !183
  br label %121, !dbg !183

121:                                              ; preds = %203, %105
  %122 = phi i64 [ 0, %105 ], [ %207, %203 ]
  %123 = phi i64 [ %119, %105 ], [ %126, %203 ]
  %124 = phi i64 [ %118, %105 ], [ %206, %203 ]
  %125 = phi i32 [ %112, %105 ], [ %205, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !89, metadata !DIExpression()), !dbg !181
  %126 = add nsw i64 %123, -1, !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !97, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !92, metadata !DIExpression()), !dbg !189
  %127 = icmp ugt i64 %123, 1, !dbg !190
  br i1 %127, label %128, label %191, !dbg !193

128:                                              ; preds = %121
  %129 = mul nsw i64 %126, %120
  %130 = getelementptr double, ptr %5, i64 %129, !dbg !193
  %131 = and i64 %124, 3, !dbg !193
  %132 = sub i64 %122, %118, !dbg !193
  %133 = icmp ugt i64 %132, -4, !dbg !193
  br i1 %133, label %171, label %134, !dbg !193

134:                                              ; preds = %128
  %135 = and i64 %124, -4, !dbg !193
  br label %136, !dbg !193

136:                                              ; preds = %136, %134
  %137 = phi i64 [ %116, %134 ], [ %167, %136 ]
  %138 = phi i64 [ 0, %134 ], [ %168, %136 ]
  %139 = phi double [ 0.000000e+00, %134 ], [ %handler_result5, %136 ]
  %140 = phi i64 [ 0, %134 ], [ %169, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %139, metadata !92, metadata !DIExpression()), !dbg !189
  %141 = getelementptr inbounds double, ptr %7, i64 %137, !dbg !194
  %142 = load double, ptr %141, align 8, !dbg !194, !tbaa !158
  %143 = getelementptr double, ptr %130, i64 %138, !dbg !196
  %144 = load double, ptr %143, align 8, !dbg !196, !tbaa !158
  %145 = fmul double %142, %144, !dbg !197
  %handler_result2 = call double @fAddHandlerDouble(double %139, double %145), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !92, metadata !DIExpression()), !dbg !189
  %146 = add i64 %137, %117, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !98, metadata !DIExpression()), !dbg !189
  %147 = or disjoint i64 %138, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !92, metadata !DIExpression()), !dbg !189
  %148 = getelementptr inbounds double, ptr %7, i64 %146, !dbg !194
  %149 = load double, ptr %148, align 8, !dbg !194, !tbaa !158
  %150 = getelementptr double, ptr %130, i64 %147, !dbg !196
  %151 = load double, ptr %150, align 8, !dbg !196, !tbaa !158
  %152 = fmul double %149, %151, !dbg !197
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %152), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !92, metadata !DIExpression()), !dbg !189
  %153 = add i64 %146, %117, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !98, metadata !DIExpression()), !dbg !189
  %154 = or disjoint i64 %138, 2, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !92, metadata !DIExpression()), !dbg !189
  %155 = getelementptr inbounds double, ptr %7, i64 %153, !dbg !194
  %156 = load double, ptr %155, align 8, !dbg !194, !tbaa !158
  %157 = getelementptr double, ptr %130, i64 %154, !dbg !196
  %158 = load double, ptr %157, align 8, !dbg !196, !tbaa !158
  %159 = fmul double %156, %158, !dbg !197
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %159), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !92, metadata !DIExpression()), !dbg !189
  %160 = add i64 %153, %117, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !98, metadata !DIExpression()), !dbg !189
  %161 = or disjoint i64 %138, 3, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !92, metadata !DIExpression()), !dbg !189
  %162 = getelementptr inbounds double, ptr %7, i64 %160, !dbg !194
  %163 = load double, ptr %162, align 8, !dbg !194, !tbaa !158
  %164 = getelementptr double, ptr %130, i64 %161, !dbg !196
  %165 = load double, ptr %164, align 8, !dbg !196, !tbaa !158
  %166 = fmul double %163, %165, !dbg !197
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %166), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !92, metadata !DIExpression()), !dbg !189
  %167 = add i64 %160, %117, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !98, metadata !DIExpression()), !dbg !189
  %168 = add nuw nsw i64 %138, 4, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !74, metadata !DIExpression()), !dbg !121
  %169 = add i64 %140, 4, !dbg !193
  %170 = icmp eq i64 %169, %135, !dbg !193
  br i1 %170, label %171, label %136, !dbg !193, !llvm.loop !200

171:                                              ; preds = %136, %128
  %172 = phi double [ undef, %128 ], [ %handler_result5, %136 ]
  %173 = phi i64 [ %116, %128 ], [ %167, %136 ]
  %174 = phi i64 [ 0, %128 ], [ %168, %136 ]
  %175 = phi double [ 0.000000e+00, %128 ], [ %handler_result5, %136 ]
  %176 = icmp eq i64 %131, 0, !dbg !193
  br i1 %176, label %191, label %177, !dbg !193

177:                                              ; preds = %177, %171
  %178 = phi i64 [ %187, %177 ], [ %173, %171 ]
  %179 = phi i64 [ %188, %177 ], [ %174, %171 ]
  %180 = phi double [ %handler_result6, %177 ], [ %175, %171 ]
  %181 = phi i64 [ %189, %177 ], [ 0, %171 ]
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !98, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %180, metadata !92, metadata !DIExpression()), !dbg !189
  %182 = getelementptr inbounds double, ptr %7, i64 %178, !dbg !194
  %183 = load double, ptr %182, align 8, !dbg !194, !tbaa !158
  %184 = getelementptr double, ptr %130, i64 %179, !dbg !196
  %185 = load double, ptr %184, align 8, !dbg !196, !tbaa !158
  %186 = fmul double %183, %185, !dbg !197
  %handler_result6 = call double @fAddHandlerDouble(double %180, double %186), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !92, metadata !DIExpression()), !dbg !189
  %187 = add i64 %178, %117, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !98, metadata !DIExpression()), !dbg !189
  %188 = add nuw nsw i64 %179, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !74, metadata !DIExpression()), !dbg !121
  %189 = add i64 %181, 1, !dbg !193
  %190 = icmp eq i64 %189, %131, !dbg !193
  br i1 %190, label %191, label %177, !dbg !193, !llvm.loop !202

191:                                              ; preds = %177, %171, %121
  %192 = phi double [ 0.000000e+00, %121 ], [ %172, %171 ], [ %handler_result6, %177 ], !dbg !189
  %193 = sext i32 %125 to i64, !dbg !204
  %194 = getelementptr inbounds double, ptr %7, i64 %193, !dbg !204
  %195 = load double, ptr %194, align 8, !dbg !204, !tbaa !158
  br i1 %10, label %196, label %203, !dbg !206

196:                                              ; preds = %191
  %197 = trunc i64 %126 to i32, !dbg !207
  %198 = mul i32 %115, %197, !dbg !207
  %199 = sext i32 %198 to i64, !dbg !209
  %200 = getelementptr inbounds double, ptr %5, i64 %199, !dbg !209
  %201 = load double, ptr %200, align 8, !dbg !209, !tbaa !158
  %202 = fmul double %195, %201, !dbg !210
  br label %203, !dbg !211

203:                                              ; preds = %196, %191
  %204 = phi double [ %202, %196 ], [ %195, %191 ]
  %handler_result7 = call double @fAddHandlerDouble(double %192, double %204), !dbg !204
  store double %handler_result7, ptr %194, align 8, !dbg !204, !tbaa !158
  %205 = sub nsw i32 %125, %8, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %205, metadata !89, metadata !DIExpression()), !dbg !181
  %206 = add nsw i64 %124, -1, !dbg !183
  %207 = add i64 %122, 1, !dbg !183
  br i1 %127, label %121, label %357, !dbg !183, !llvm.loop !213

208:                                              ; preds = %99
  %209 = and i1 %35, %42, !dbg !216
  %210 = and i1 %38, %209, !dbg !216
  br i1 %210, label %214, label %211, !dbg !216

211:                                              ; preds = %208
  %212 = and i1 %41, %36, !dbg !217
  %213 = and i1 %44, %212, !dbg !217
  br i1 %213, label %214, label %299, !dbg !217

214:                                              ; preds = %211, %208
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !71, metadata !DIExpression()), !dbg !121
  %215 = icmp sgt i32 %4, 0, !dbg !219
  br i1 %215, label %216, label %357, !dbg !220

216:                                              ; preds = %214
  %217 = icmp sgt i32 %8, 0, !dbg !221
  %218 = sub nsw i32 1, %4, !dbg !221
  %219 = mul i32 %218, %8, !dbg !221
  %220 = select i1 %217, i32 0, i32 %219, !dbg !221
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %220, i32 %4, i32 %8), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %221 = add nsw i32 %4, -1, !dbg !222
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %220, i32 %221, i32 %8), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %222 = mul i32 %221, %8, !dbg !223
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %220, i32 %222), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %223 = add nsw i32 %220, %222, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !99, metadata !DIExpression()), !dbg !218
  %224 = sub i32 0, %222
  %225 = select i1 %217, i32 0, i32 %224
  %226 = add i32 %6, 1
  %227 = sext i32 %6 to i64, !dbg !220
  %228 = sext i32 %225 to i64, !dbg !220
  %229 = sext i32 %8 to i64, !dbg !220
  %230 = zext i32 %221 to i64, !dbg !220
  %231 = zext nneg i32 %4 to i64, !dbg !220
  %232 = add nsw i64 %230, -1
  br label %233, !dbg !220

233:                                              ; preds = %294, %216
  %234 = phi i64 [ 0, %216 ], [ %298, %294 ]
  %235 = phi i64 [ %231, %216 ], [ %238, %294 ]
  %236 = phi i64 [ %230, %216 ], [ %297, %294 ]
  %237 = phi i32 [ %223, %216 ], [ %296, %294 ]
  tail call void @llvm.dbg.value(metadata i64 %235, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %237, metadata !99, metadata !DIExpression()), !dbg !218
  %238 = add nsw i64 %235, -1, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !107, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !108, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !102, metadata !DIExpression()), !dbg !226
  %239 = icmp ugt i64 %235, 1, !dbg !227
  br i1 %239, label %240, label %282, !dbg !230

240:                                              ; preds = %233
  %241 = getelementptr double, ptr %5, i64 %238, !dbg !230
  %242 = and i64 %236, 1, !dbg !230
  %243 = icmp eq i64 %234, %232, !dbg !230
  br i1 %243, label %269, label %244, !dbg !230

244:                                              ; preds = %240
  %245 = and i64 %236, -2, !dbg !230
  br label %246, !dbg !230

246:                                              ; preds = %246, %244
  %247 = phi i64 [ %228, %244 ], [ %265, %246 ]
  %248 = phi i64 [ 0, %244 ], [ %266, %246 ]
  %249 = phi double [ 0.000000e+00, %244 ], [ %handler_result9, %246 ]
  %250 = phi i64 [ 0, %244 ], [ %267, %246 ]
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %247, metadata !108, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %249, metadata !102, metadata !DIExpression()), !dbg !226
  %251 = getelementptr inbounds double, ptr %7, i64 %247, !dbg !231
  %252 = load double, ptr %251, align 8, !dbg !231, !tbaa !158
  %253 = mul nsw i64 %248, %227, !dbg !233
  %254 = getelementptr double, ptr %241, i64 %253, !dbg !234
  %255 = load double, ptr %254, align 8, !dbg !234, !tbaa !158
  %256 = fmul double %252, %255, !dbg !235
  %handler_result8 = call double @fAddHandlerDouble(double %249, double %256), !dbg !236
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !102, metadata !DIExpression()), !dbg !226
  %257 = add i64 %247, %229, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !108, metadata !DIExpression()), !dbg !226
  %258 = or disjoint i64 %248, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !108, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !102, metadata !DIExpression()), !dbg !226
  %259 = getelementptr inbounds double, ptr %7, i64 %257, !dbg !231
  %260 = load double, ptr %259, align 8, !dbg !231, !tbaa !158
  %261 = mul nsw i64 %258, %227, !dbg !233
  %262 = getelementptr double, ptr %241, i64 %261, !dbg !234
  %263 = load double, ptr %262, align 8, !dbg !234, !tbaa !158
  %264 = fmul double %260, %263, !dbg !235
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %264), !dbg !236
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !102, metadata !DIExpression()), !dbg !226
  %265 = add i64 %257, %229, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %265, metadata !108, metadata !DIExpression()), !dbg !226
  %266 = add nuw nsw i64 %248, 2, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !74, metadata !DIExpression()), !dbg !121
  %267 = add i64 %250, 2, !dbg !230
  %268 = icmp eq i64 %267, %245, !dbg !230
  br i1 %268, label %269, label %246, !dbg !230, !llvm.loop !238

269:                                              ; preds = %246, %240
  %270 = phi double [ undef, %240 ], [ %handler_result9, %246 ]
  %271 = phi i64 [ %228, %240 ], [ %265, %246 ]
  %272 = phi i64 [ 0, %240 ], [ %266, %246 ]
  %273 = phi double [ 0.000000e+00, %240 ], [ %handler_result9, %246 ]
  %274 = icmp eq i64 %242, 0, !dbg !230
  br i1 %274, label %282, label %275, !dbg !230

275:                                              ; preds = %269
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %271, metadata !108, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %273, metadata !102, metadata !DIExpression()), !dbg !226
  %276 = getelementptr inbounds double, ptr %7, i64 %271, !dbg !231
  %277 = load double, ptr %276, align 8, !dbg !231, !tbaa !158
  %278 = mul nsw i64 %272, %227, !dbg !233
  %279 = getelementptr double, ptr %241, i64 %278, !dbg !234
  %280 = load double, ptr %279, align 8, !dbg !234, !tbaa !158
  %281 = fmul double %277, %280, !dbg !235
  %handler_result10 = call double @fAddHandlerDouble(double %273, double %281), !dbg !240
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !102, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %271, i64 %229), metadata !108, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br label %282, !dbg !240

282:                                              ; preds = %275, %269, %233
  %283 = phi double [ 0.000000e+00, %233 ], [ %270, %269 ], [ %handler_result10, %275 ], !dbg !226
  %284 = sext i32 %237 to i64, !dbg !240
  %285 = getelementptr inbounds double, ptr %7, i64 %284, !dbg !240
  %286 = load double, ptr %285, align 8, !dbg !240, !tbaa !158
  br i1 %10, label %287, label %294, !dbg !242

287:                                              ; preds = %282
  %288 = trunc i64 %238 to i32, !dbg !243
  %289 = mul i32 %226, %288, !dbg !243
  %290 = sext i32 %289 to i64, !dbg !245
  %291 = getelementptr inbounds double, ptr %5, i64 %290, !dbg !245
  %292 = load double, ptr %291, align 8, !dbg !245, !tbaa !158
  %293 = fmul double %286, %292, !dbg !246
  br label %294, !dbg !247

294:                                              ; preds = %287, %282
  %295 = phi double [ %293, %287 ], [ %286, %282 ]
  %handler_result11 = call double @fAddHandlerDouble(double %283, double %295), !dbg !240
  store double %handler_result11, ptr %285, align 8, !dbg !240, !tbaa !158
  %296 = sub nsw i32 %237, %8, !dbg !248
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %296, metadata !99, metadata !DIExpression()), !dbg !218
  %297 = add nsw i64 %236, -1, !dbg !220
  %298 = add i64 %234, 1, !dbg !220
  br i1 %239, label %233, label %357, !dbg !220, !llvm.loop !249

299:                                              ; preds = %211
  %300 = and i1 %44, %209, !dbg !252
  %301 = and i1 %38, %212
  %302 = or i1 %300, %301, !dbg !252
  br i1 %302, label %303, label %356, !dbg !252

303:                                              ; preds = %299
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !109, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !121
  %304 = icmp sgt i32 %4, 0, !dbg !254
  br i1 %304, label %305, label %357, !dbg !255

305:                                              ; preds = %303
  %306 = icmp sgt i32 %8, 0, !dbg !256
  %307 = sub nsw i32 1, %4, !dbg !256
  %308 = mul i32 %307, %8, !dbg !256
  %309 = select i1 %306, i32 0, i32 %308, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %309, metadata !109, metadata !DIExpression()), !dbg !253
  %310 = add i32 %6, 1
  %311 = sext i32 %8 to i64, !dbg !255
  %312 = sext i32 %6 to i64, !dbg !255
  %313 = zext nneg i32 %4 to i64, !dbg !255
  %314 = sext i32 %309 to i64, !dbg !255
  %315 = zext nneg i32 %4 to i64, !dbg !254
  br label %316, !dbg !255

316:                                              ; preds = %351, %305
  %317 = phi i64 [ %314, %305 ], [ %353, %351 ]
  %318 = phi i64 [ 0, %305 ], [ %322, %351 ]
  %319 = phi i64 [ 1, %305 ], [ %354, %351 ]
  %320 = phi i32 [ %309, %305 ], [ %321, %351 ]
  %321 = add i32 %320, %8, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !109, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !112, metadata !DIExpression()), !dbg !257
  %322 = add nuw nsw i64 %318, 1, !dbg !258
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !116, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !117, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !118, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !74, metadata !DIExpression()), !dbg !121
  %323 = icmp ult i64 %322, %313, !dbg !259
  br i1 %323, label %324, label %340, !dbg !262

324:                                              ; preds = %316
  %325 = sext i32 %321 to i64, !dbg !258
  %326 = getelementptr double, ptr %5, i64 %318, !dbg !262
  br label %327, !dbg !262

327:                                              ; preds = %327, %324
  %328 = phi i64 [ %319, %324 ], [ %338, %327 ]
  %329 = phi i64 [ %325, %324 ], [ %337, %327 ]
  %330 = phi double [ 0.000000e+00, %324 ], [ %handler_result12, %327 ]
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !118, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %330, metadata !112, metadata !DIExpression()), !dbg !257
  %331 = getelementptr inbounds double, ptr %7, i64 %329, !dbg !263
  %332 = load double, ptr %331, align 8, !dbg !263, !tbaa !158
  %333 = mul nsw i64 %328, %312, !dbg !265
  %334 = getelementptr double, ptr %326, i64 %333, !dbg !266
  %335 = load double, ptr %334, align 8, !dbg !266, !tbaa !158
  %336 = fmul double %332, %335, !dbg !267
  %handler_result12 = call double @fAddHandlerDouble(double %330, double %336), !dbg !268
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !112, metadata !DIExpression()), !dbg !257
  %337 = add i64 %329, %311, !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %337, metadata !118, metadata !DIExpression()), !dbg !257
  %338 = add nuw nsw i64 %328, 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %338, metadata !74, metadata !DIExpression()), !dbg !121
  %339 = icmp eq i64 %338, %315, !dbg !259
  br i1 %339, label %340, label %327, !dbg !262, !llvm.loop !270

340:                                              ; preds = %327, %316
  %341 = phi double [ 0.000000e+00, %316 ], [ %handler_result12, %327 ], !dbg !257
  %342 = getelementptr inbounds double, ptr %7, i64 %317, !dbg !272
  %343 = load double, ptr %342, align 8, !dbg !272, !tbaa !158
  br i1 %10, label %344, label %351, !dbg !274

344:                                              ; preds = %340
  %345 = trunc i64 %318 to i32, !dbg !275
  %346 = mul i32 %310, %345, !dbg !275
  %347 = sext i32 %346 to i64, !dbg !277
  %348 = getelementptr inbounds double, ptr %5, i64 %347, !dbg !277
  %349 = load double, ptr %348, align 8, !dbg !277, !tbaa !158
  %350 = fmul double %343, %349, !dbg !278
  br label %351, !dbg !279

351:                                              ; preds = %344, %340
  %352 = phi double [ %350, %344 ], [ %343, %340 ]
  %handler_result13 = call double @fAddHandlerDouble(double %341, double %352), !dbg !272
  store double %handler_result13, ptr %342, align 8, !dbg !272, !tbaa !158
  %353 = add i64 %317, %311, !dbg !280
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %353, metadata !109, metadata !DIExpression()), !dbg !253
  %354 = add nuw nsw i64 %319, 1, !dbg !255
  %355 = icmp eq i64 %322, %315, !dbg !254
  br i1 %355, label %357, label %316, !dbg !255, !llvm.loop !281

356:                                              ; preds = %299
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !283
  br label %357

357:                                              ; preds = %356, %351, %303, %294, %214, %203, %103, %94, %46
  ret void, !dbg !285
}

declare !dbg !287 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_trmv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a2b4a34e1c21241f17286a21398f4289")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dtrmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "909cb0096b502ab7093cae959ff4f054")
!19 = !{!20, !26, !30, !35}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !21, line: 48, baseType: !22, size: 32, elements: !27)
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "CblasUpper", value: 121)
!29 = !DIEnumerator(name: "CblasLower", value: 122)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !21, line: 47, baseType: !22, size: 32, elements: !31)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!33 = !DIEnumerator(name: "CblasTrans", value: 112)
!34 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !21, line: 49, baseType: !22, size: 32, elements: !36)
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!38 = !DIEnumerator(name: "CblasUnit", value: 132)
!39 = !{!0, !7, !12}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!48 = distinct !DISubprogram(name: "cblas_dtrmv", scope: !18, file: !18, line: 7, type: !49, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !61)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52, !53, !54, !55, !57, !55, !60, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !79, !82, !86, !87, !88, !89, !92, !96, !97, !98, !99, !102, !106, !107, !108, !109, !112, !116, !117, !118}
!62 = !DILocalVariable(name: "order", arg: 1, scope: !48, file: !18, line: 7, type: !51)
!63 = !DILocalVariable(name: "Uplo", arg: 2, scope: !48, file: !18, line: 7, type: !52)
!64 = !DILocalVariable(name: "TransA", arg: 3, scope: !48, file: !18, line: 8, type: !53)
!65 = !DILocalVariable(name: "Diag", arg: 4, scope: !48, file: !18, line: 8, type: !54)
!66 = !DILocalVariable(name: "N", arg: 5, scope: !48, file: !18, line: 9, type: !55)
!67 = !DILocalVariable(name: "A", arg: 6, scope: !48, file: !18, line: 9, type: !57)
!68 = !DILocalVariable(name: "lda", arg: 7, scope: !48, file: !18, line: 9, type: !55)
!69 = !DILocalVariable(name: "X", arg: 8, scope: !48, file: !18, line: 9, type: !60)
!70 = !DILocalVariable(name: "incX", arg: 9, scope: !48, file: !18, line: 10, type: !55)
!71 = !DILocalVariable(name: "i", scope: !72, file: !2, line: 21, type: !56)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 20, column: 1)
!73 = !DILexicalBlockFile(scope: !48, file: !2, discriminator: 0)
!74 = !DILocalVariable(name: "j", scope: !72, file: !2, line: 21, type: !56)
!75 = !DILocalVariable(name: "nonunit", scope: !72, file: !2, line: 23, type: !55)
!76 = !DILocalVariable(name: "Trans", scope: !72, file: !2, line: 24, type: !55)
!77 = !DILocalVariable(name: "pos", scope: !78, file: !2, line: 26, type: !56)
!78 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!79 = !DILocalVariable(name: "ix", scope: !80, file: !2, line: 32, type: !56)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 29, column: 81)
!81 = distinct !DILexicalBlock(scope: !72, file: !2, line: 28, column: 7)
!82 = !DILocalVariable(name: "temp", scope: !83, file: !2, line: 34, type: !59)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 33, column: 29)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 33, column: 5)
!85 = distinct !DILexicalBlock(scope: !80, file: !2, line: 33, column: 5)
!86 = !DILocalVariable(name: "j_min", scope: !83, file: !2, line: 35, type: !55)
!87 = !DILocalVariable(name: "j_max", scope: !83, file: !2, line: 36, type: !55)
!88 = !DILocalVariable(name: "jx", scope: !83, file: !2, line: 37, type: !56)
!89 = !DILocalVariable(name: "ix", scope: !90, file: !2, line: 51, type: !56)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 50, column: 88)
!91 = distinct !DILexicalBlock(scope: !81, file: !2, line: 49, column: 14)
!92 = !DILocalVariable(name: "temp", scope: !93, file: !2, line: 53, type: !59)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 52, column: 32)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 52, column: 5)
!95 = distinct !DILexicalBlock(scope: !90, file: !2, line: 52, column: 5)
!96 = !DILocalVariable(name: "j_min", scope: !93, file: !2, line: 54, type: !55)
!97 = !DILocalVariable(name: "j_max", scope: !93, file: !2, line: 55, type: !55)
!98 = !DILocalVariable(name: "jx", scope: !93, file: !2, line: 56, type: !56)
!99 = !DILocalVariable(name: "ix", scope: !100, file: !2, line: 71, type: !56)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 69, column: 90)
!101 = distinct !DILexicalBlock(scope: !91, file: !2, line: 68, column: 14)
!102 = !DILocalVariable(name: "temp", scope: !103, file: !2, line: 73, type: !59)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 72, column: 32)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 72, column: 5)
!105 = distinct !DILexicalBlock(scope: !100, file: !2, line: 72, column: 5)
!106 = !DILocalVariable(name: "j_min", scope: !103, file: !2, line: 74, type: !55)
!107 = !DILocalVariable(name: "j_max", scope: !103, file: !2, line: 75, type: !55)
!108 = !DILocalVariable(name: "jx", scope: !103, file: !2, line: 76, type: !56)
!109 = !DILocalVariable(name: "ix", scope: !110, file: !2, line: 90, type: !56)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 89, column: 90)
!111 = distinct !DILexicalBlock(scope: !101, file: !2, line: 88, column: 14)
!112 = !DILocalVariable(name: "temp", scope: !113, file: !2, line: 92, type: !59)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 91, column: 29)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 91, column: 5)
!115 = distinct !DILexicalBlock(scope: !110, file: !2, line: 91, column: 5)
!116 = !DILocalVariable(name: "j_min", scope: !113, file: !2, line: 93, type: !55)
!117 = !DILocalVariable(name: "j_max", scope: !113, file: !2, line: 94, type: !55)
!118 = !DILocalVariable(name: "jx", scope: !113, file: !2, line: 95, type: !56)
!119 = !DILocation(line: 0, scope: !48)
!120 = !DILocation(line: 23, column: 29, scope: !72)
!121 = !DILocation(line: 0, scope: !72)
!122 = !DILocation(line: 24, column: 29, scope: !72)
!123 = !DILocation(line: 24, column: 21, scope: !72)
!124 = !DILocation(line: 0, scope: !78)
!125 = !DILocation(line: 26, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!127 = !DILocation(line: 26, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!129 = !DILocation(line: 26, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!131 = !DILocation(line: 26, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!133 = !DILocation(line: 26, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!135 = !DILocation(line: 26, column: 3, scope: !78)
!136 = !DILocation(line: 26, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!138 = !DILocation(line: 26, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!140 = !DILocation(line: 26, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!142 = !DILocation(line: 28, column: 14, scope: !81)
!143 = !DILocation(line: 28, column: 31, scope: !81)
!144 = !DILocation(line: 29, column: 17, scope: !81)
!145 = !DILocation(line: 29, column: 34, scope: !81)
!146 = !DILocation(line: 0, scope: !80)
!147 = !DILocation(line: 33, column: 19, scope: !84)
!148 = !DILocation(line: 33, column: 5, scope: !85)
!149 = !DILocation(line: 32, column: 16, scope: !80)
!150 = !DILocation(line: 0, scope: !83)
!151 = !DILocation(line: 35, column: 29, scope: !83)
!152 = !DILocation(line: 38, column: 25, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 38, column: 7)
!154 = distinct !DILexicalBlock(scope: !83, file: !2, line: 38, column: 7)
!155 = !DILocation(line: 38, column: 7, scope: !154)
!156 = !DILocation(line: 39, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !2, line: 38, column: 39)
!158 = !{!159, !159, i64 0}
!159 = !{!"double", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 39, column: 25, scope: !157)
!163 = !DILocation(line: 39, column: 23, scope: !157)
!164 = !DILocation(line: 40, column: 12, scope: !157)
!165 = !DILocation(line: 38, column: 35, scope: !153)
!166 = distinct !{!166, !155, !167, !168}
!167 = !DILocation(line: 41, column: 7, scope: !154)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 0, scope: !170)
!170 = distinct !DILexicalBlock(scope: !83, file: !2, line: 42, column: 11)
!171 = !DILocation(line: 42, column: 11, scope: !83)
!172 = !DILocation(line: 43, column: 42, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 42, column: 20)
!174 = !DILocation(line: 43, column: 32, scope: !173)
!175 = !DILocation(line: 43, column: 30, scope: !173)
!176 = !DILocation(line: 44, column: 7, scope: !173)
!177 = !DILocation(line: 47, column: 10, scope: !83)
!178 = distinct !{!178, !148, !179, !168}
!179 = !DILocation(line: 48, column: 5, scope: !85)
!180 = !DILocation(line: 49, column: 38, scope: !91)
!181 = !DILocation(line: 0, scope: !90)
!182 = !DILocation(line: 52, column: 19, scope: !94)
!183 = !DILocation(line: 52, column: 23, scope: !94)
!184 = !DILocation(line: 51, column: 16, scope: !90)
!185 = !DILocation(line: 51, column: 37, scope: !90)
!186 = !DILocation(line: 51, column: 42, scope: !90)
!187 = !DILocation(line: 51, column: 32, scope: !90)
!188 = !DILocation(line: 52, column: 27, scope: !94)
!189 = !DILocation(line: 0, scope: !93)
!190 = !DILocation(line: 57, column: 25, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 57, column: 7)
!192 = distinct !DILexicalBlock(scope: !93, file: !2, line: 57, column: 7)
!193 = !DILocation(line: 57, column: 7, scope: !192)
!194 = !DILocation(line: 58, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !2, line: 57, column: 39)
!196 = !DILocation(line: 58, column: 25, scope: !195)
!197 = !DILocation(line: 58, column: 23, scope: !195)
!198 = !DILocation(line: 59, column: 12, scope: !195)
!199 = !DILocation(line: 57, column: 35, scope: !191)
!200 = distinct !{!200, !193, !201, !168}
!201 = !DILocation(line: 60, column: 7, scope: !192)
!202 = distinct !{!202, !203}
!203 = !{!"llvm.loop.unroll.disable"}
!204 = !DILocation(line: 0, scope: !205)
!205 = distinct !DILexicalBlock(scope: !93, file: !2, line: 61, column: 11)
!206 = !DILocation(line: 61, column: 11, scope: !93)
!207 = !DILocation(line: 62, column: 42, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !2, line: 61, column: 20)
!209 = !DILocation(line: 62, column: 32, scope: !208)
!210 = !DILocation(line: 62, column: 30, scope: !208)
!211 = !DILocation(line: 63, column: 7, scope: !208)
!212 = !DILocation(line: 66, column: 10, scope: !93)
!213 = distinct !{!213, !214, !215, !168}
!214 = !DILocation(line: 52, column: 5, scope: !95)
!215 = !DILocation(line: 67, column: 5, scope: !95)
!216 = !DILocation(line: 68, column: 38, scope: !101)
!217 = !DILocation(line: 69, column: 41, scope: !101)
!218 = !DILocation(line: 0, scope: !100)
!219 = !DILocation(line: 72, column: 19, scope: !104)
!220 = !DILocation(line: 72, column: 23, scope: !104)
!221 = !DILocation(line: 71, column: 16, scope: !100)
!222 = !DILocation(line: 71, column: 37, scope: !100)
!223 = !DILocation(line: 71, column: 42, scope: !100)
!224 = !DILocation(line: 71, column: 32, scope: !100)
!225 = !DILocation(line: 72, column: 27, scope: !104)
!226 = !DILocation(line: 0, scope: !103)
!227 = !DILocation(line: 77, column: 25, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 77, column: 7)
!229 = distinct !DILexicalBlock(scope: !103, file: !2, line: 77, column: 7)
!230 = !DILocation(line: 77, column: 7, scope: !229)
!231 = !DILocation(line: 78, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !2, line: 77, column: 39)
!233 = !DILocation(line: 78, column: 31, scope: !232)
!234 = !DILocation(line: 78, column: 25, scope: !232)
!235 = !DILocation(line: 78, column: 23, scope: !232)
!236 = !DILocation(line: 79, column: 12, scope: !232)
!237 = !DILocation(line: 77, column: 35, scope: !228)
!238 = distinct !{!238, !230, !239, !168}
!239 = !DILocation(line: 80, column: 7, scope: !229)
!240 = !DILocation(line: 0, scope: !241)
!241 = distinct !DILexicalBlock(scope: !103, file: !2, line: 81, column: 11)
!242 = !DILocation(line: 81, column: 11, scope: !103)
!243 = !DILocation(line: 82, column: 42, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 81, column: 20)
!245 = !DILocation(line: 82, column: 32, scope: !244)
!246 = !DILocation(line: 82, column: 30, scope: !244)
!247 = !DILocation(line: 83, column: 7, scope: !244)
!248 = !DILocation(line: 86, column: 10, scope: !103)
!249 = distinct !{!249, !250, !251, !168}
!250 = !DILocation(line: 72, column: 5, scope: !105)
!251 = !DILocation(line: 87, column: 5, scope: !105)
!252 = !DILocation(line: 88, column: 38, scope: !111)
!253 = !DILocation(line: 0, scope: !110)
!254 = !DILocation(line: 91, column: 19, scope: !114)
!255 = !DILocation(line: 91, column: 5, scope: !115)
!256 = !DILocation(line: 90, column: 16, scope: !110)
!257 = !DILocation(line: 0, scope: !113)
!258 = !DILocation(line: 93, column: 29, scope: !113)
!259 = !DILocation(line: 96, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 96, column: 7)
!261 = distinct !DILexicalBlock(scope: !113, file: !2, line: 96, column: 7)
!262 = !DILocation(line: 96, column: 7, scope: !261)
!263 = !DILocation(line: 97, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !2, line: 96, column: 39)
!265 = !DILocation(line: 97, column: 31, scope: !264)
!266 = !DILocation(line: 97, column: 25, scope: !264)
!267 = !DILocation(line: 97, column: 23, scope: !264)
!268 = !DILocation(line: 98, column: 12, scope: !264)
!269 = !DILocation(line: 96, column: 35, scope: !260)
!270 = distinct !{!270, !262, !271, !168}
!271 = !DILocation(line: 99, column: 7, scope: !261)
!272 = !DILocation(line: 0, scope: !273)
!273 = distinct !DILexicalBlock(scope: !113, file: !2, line: 100, column: 11)
!274 = !DILocation(line: 100, column: 11, scope: !113)
!275 = !DILocation(line: 101, column: 42, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !2, line: 100, column: 20)
!277 = !DILocation(line: 101, column: 32, scope: !276)
!278 = !DILocation(line: 101, column: 30, scope: !276)
!279 = !DILocation(line: 102, column: 7, scope: !276)
!280 = !DILocation(line: 105, column: 10, scope: !113)
!281 = distinct !{!281, !255, !282, !168}
!282 = !DILocation(line: 106, column: 5, scope: !115)
!283 = !DILocation(line: 108, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !111, file: !2, line: 107, column: 10)
!285 = !DILocation(line: 15, column: 1, scope: !286)
!286 = !DILexicalBlockFile(scope: !48, file: !18, discriminator: 0)
!287 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !56, !290, !290, null}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
