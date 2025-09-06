; ModuleID = 'coupling.ll'
source_filename = "coupling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"coupling.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [82 x i8] c"gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [102 x i8] c"gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, &result)\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_3j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !84 {
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !136, metadata ptr %8, metadata !DIExpression()), !dbg !137
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !138
  call void @llvm.dbg.assign(metadata i1 undef, metadata !126, metadata !DIExpression(), metadata !138, metadata ptr %9, metadata !DIExpression()), !dbg !137
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !127, metadata !DIExpression(), metadata !139, metadata ptr %10, metadata !DIExpression()), !dbg !137
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !140
  call void @llvm.dbg.assign(metadata i1 undef, metadata !128, metadata !DIExpression(), metadata !140, metadata ptr %11, metadata !DIExpression()), !dbg !137
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !129, metadata !DIExpression(), metadata !141, metadata ptr %12, metadata !DIExpression()), !dbg !137
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !130, metadata !DIExpression(), metadata !142, metadata ptr %13, metadata !DIExpression()), !dbg !137
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !143
  call void @llvm.dbg.assign(metadata i1 undef, metadata !131, metadata !DIExpression(), metadata !143, metadata ptr %14, metadata !DIExpression()), !dbg !137
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !132, metadata !DIExpression(), metadata !144, metadata ptr %15, metadata !DIExpression()), !dbg !137
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !133, metadata !DIExpression(), metadata !145, metadata ptr %16, metadata !DIExpression()), !dbg !137
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !134, metadata !DIExpression(), metadata !146, metadata ptr %17, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !96, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !97, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !98, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !99, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !100, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !101, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !102, metadata !DIExpression()), !dbg !147
  %18 = or i32 %1, %0, !dbg !148
  %19 = or i32 %18, %2, !dbg !148
  %20 = icmp sgt i32 %19, -1, !dbg !148
  br i1 %20, label %23, label %21, !dbg !148

21:                                               ; preds = %7
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !149, !tbaa !152
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !149
  store double 0x7FF8000000000000, ptr %22, align 8, !dbg !149, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 1) #6, !dbg !158
  br label %210, !dbg !158

23:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !167
  %24 = sub nsw i32 %0, %2, !dbg !169
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true), !dbg !170
  %26 = icmp sle i32 %25, %1, !dbg !171
  %27 = add i32 %2, %0
  %28 = icmp sge i32 %27, %1
  %29 = and i1 %28, %26, !dbg !172
  %30 = add i32 %27, %1, !dbg !172
  %31 = and i32 %30, 1, !dbg !172
  %32 = icmp eq i32 %31, 0, !dbg !173
  %33 = and i1 %29, %32, !dbg !173
  br i1 %33, label %34, label %59, !dbg !174

34:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %0, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %1, metadata !180, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %2, metadata !181, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %3, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %4, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %5, metadata !184, metadata !DIExpression()), !dbg !185
  %35 = tail call i32 @llvm.abs.i32(i32 %3, i1 true), !dbg !187
  %36 = icmp sgt i32 %35, %0, !dbg !188
  %37 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %38 = icmp ugt i32 %37, %1
  %39 = select i1 %36, i1 true, i1 %38, !dbg !189
  %40 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %41 = icmp sgt i32 %40, %2
  %42 = select i1 %39, i1 true, i1 %41, !dbg !189
  br i1 %42, label %59, label %43, !dbg !189

43:                                               ; preds = %34
  %44 = add nsw i32 %3, %0, !dbg !190
  %45 = and i32 %44, 1, !dbg !190
  %46 = icmp eq i32 %45, 0, !dbg !190
  br i1 %46, label %47, label %59, !dbg !191

47:                                               ; preds = %43
  %48 = add nsw i32 %4, %1, !dbg !192
  %49 = and i32 %48, 1, !dbg !192
  %50 = icmp eq i32 %49, 0, !dbg !192
  br i1 %50, label %51, label %59, !dbg !193

51:                                               ; preds = %47
  %52 = add nsw i32 %5, %2, !dbg !194
  %53 = and i32 %52, 1, !dbg !194
  %54 = icmp eq i32 %53, 0, !dbg !194
  br i1 %54, label %55, label %59, !dbg !195

55:                                               ; preds = %51
  %56 = add nsw i32 %4, %3, !dbg !196
  %57 = sub i32 0, %5, !dbg !197
  %58 = icmp eq i32 %56, %57, !dbg !197
  br i1 %58, label %60, label %59, !dbg !198

59:                                               ; preds = %55, %51, %47, %43, %34, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !199
  br label %210, !dbg !201

60:                                               ; preds = %55
  %61 = or i32 %4, %3, !dbg !202
  %62 = or i32 %61, %5, !dbg !202
  %63 = icmp eq i32 %62, 0, !dbg !202
  %64 = add nuw nsw i32 %1, %0, !dbg !203
  %65 = add nuw nsw i32 %64, %2, !dbg !203
  %66 = and i32 %65, -2147483645
  %67 = icmp eq i32 %66, 2
  %68 = select i1 %63, i1 %67, i1 false, !dbg !202
  br i1 %68, label %69, label %70, !dbg !202

69:                                               ; preds = %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !204
  br label %210, !dbg !206

70:                                               ; preds = %60
  %71 = sub nsw i32 %1, %0, !dbg !207
  %72 = add nsw i32 %71, %2, !dbg !208
  %73 = sdiv i32 %72, 2, !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !103, metadata !DIExpression()), !dbg !137
  %74 = sub nsw i32 %0, %1, !dbg !210
  %75 = add nsw i32 %74, %2, !dbg !211
  %76 = sdiv i32 %75, 2, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !108, metadata !DIExpression()), !dbg !137
  %77 = sub nsw i32 %64, %2, !dbg !213
  %78 = sdiv i32 %77, 2, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !109, metadata !DIExpression()), !dbg !137
  %79 = sub nsw i32 %0, %3, !dbg !215
  %80 = sdiv i32 %79, 2, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !110, metadata !DIExpression()), !dbg !137
  %81 = sub nsw i32 %1, %4, !dbg !217
  %82 = sdiv i32 %81, 2, !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !111, metadata !DIExpression()), !dbg !137
  %83 = sub nsw i32 %2, %5, !dbg !219
  %84 = sdiv i32 %83, -2, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !112, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %3, i32 %0), metadata !113, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !137
  %85 = ashr exact i32 %48, 1, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !114, metadata !DIExpression()), !dbg !137
  %86 = ashr exact i32 %52, 1, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !115, metadata !DIExpression()), !dbg !137
  %87 = lshr i32 %65, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !116, metadata !DIExpression()), !dbg !137
  %88 = add nsw i32 %84, %85, !dbg !224
  %89 = sub nsw i32 %80, %86, !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %88, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %89, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 poison, metadata !234, metadata !DIExpression()), !dbg !235
  %90 = tail call i32 @llvm.smax.i32(i32 %88, i32 %89), !dbg !237
  %91 = tail call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !117, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %78, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %80, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %85, metadata !242, metadata !DIExpression()), !dbg !244
  %92 = tail call i32 @llvm.smin.i32(i32 %78, i32 %80), !dbg !246
  call void @llvm.dbg.value(metadata i32 %92, metadata !243, metadata !DIExpression()), !dbg !244
  %93 = tail call noundef i32 @llvm.smin.i32(i32 %92, i32 %85), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !118, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !124, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #6, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #6, !dbg !248
  %94 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %78, ptr noundef nonnull %11) #6, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !121, metadata !DIExpression()), !dbg !137
  %95 = call i32 @gsl_sf_lnchoose_e(i32 noundef %1, i32 noundef %78, ptr noundef nonnull %12) #6, !dbg !250
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %96 = add nuw nsw i32 %87, 1, !dbg !251
  %97 = call i32 @gsl_sf_lnchoose_e(i32 noundef %96, i32 noundef %78, ptr noundef nonnull %13) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %98 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %80, ptr noundef nonnull %14) #6, !dbg !253
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %99 = call i32 @gsl_sf_lnchoose_e(i32 noundef %1, i32 noundef %82, ptr noundef nonnull %15) #6, !dbg !254
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %100 = call i32 @gsl_sf_lnchoose_e(i32 noundef %2, i32 noundef %86, ptr noundef nonnull %16) #6, !dbg !255
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %100, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %101 = load double, ptr %11, align 8, !dbg !256, !tbaa !152
  %102 = load double, ptr %12, align 8, !dbg !257, !tbaa !152
  %handler_result = call double @fAddHandlerDouble(double %101, double %102), !dbg !258
  %103 = load double, ptr %13, align 8, !dbg !258, !tbaa !152
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %103), !dbg !259
  %104 = load double, ptr %14, align 8, !dbg !259, !tbaa !152
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %104), !dbg !260
  %105 = load double, ptr %15, align 8, !dbg !260, !tbaa !152
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %105), !dbg !261
  %106 = load double, ptr %16, align 8, !dbg !261, !tbaa !152
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %106), !dbg !262
  %107 = sitofp i32 %2 to double, !dbg !262
  %handler_result5 = call double @fAddHandlerDouble(double %107, double 1.000000e+00), !dbg !263
  %handler_result35 = call double @callHandler(i32 12, double %handler_result5, double %handler_result5), !dbg !264
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result4, double %handler_result35), !dbg !264
  %108 = fmul double %handler_result6, 5.000000e-01, !dbg !264
  tail call void @llvm.dbg.value(metadata double %108, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !137
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !265
  %110 = load double, ptr %109, align 8, !dbg !265, !tbaa !157
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !266
  %112 = load double, ptr %111, align 8, !dbg !266, !tbaa !157
  %handler_result7 = call double @fAddHandlerDouble(double %110, double %112), !dbg !267
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !267
  %114 = load double, ptr %113, align 8, !dbg !267, !tbaa !157
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %114), !dbg !268
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !268
  %116 = load double, ptr %115, align 8, !dbg !268, !tbaa !157
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %116), !dbg !269
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !269
  %118 = load double, ptr %117, align 8, !dbg !269, !tbaa !157
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %118), !dbg !270
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !270
  %120 = load double, ptr %119, align 8, !dbg !270, !tbaa !157
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %120), !dbg !271
  %handler_result36 = call double @callHandler(i32 12, double %handler_result5, double %handler_result5), !dbg !272
  %121 = fmul double %handler_result36, 0x3CB0000000000000, !dbg !272
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %121), !dbg !273
  %122 = fmul double %handler_result12, 5.000000e-01, !dbg !273
  tail call void @llvm.dbg.value(metadata double %122, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %100, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %123 = icmp sgt i32 %91, %93, !dbg !274
  br i1 %123, label %197, label %124, !dbg !277

124:                                              ; preds = %70
  %125 = add nsw i32 %95, %94, !dbg !278
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %125, i32 %100, i32 %99, i32 %98, i32 %97), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %126 = add nsw i32 %125, %97, !dbg !279
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %126, i32 %100, i32 %99, i32 %98), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %127 = add nsw i32 %126, %98, !dbg !280
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %127, i32 %100, i32 %99), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %128 = add nsw i32 %127, %99, !dbg !281
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %128, i32 %100), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %129 = add nsw i32 %128, %100, !dbg !282
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !113, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %134 = call i32 @gsl_sf_lnchoose_e(i32 noundef %78, i32 noundef %91, ptr noundef nonnull %8) #6, !dbg !283
  %135 = add nsw i32 %134, %129, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !121, metadata !DIExpression()), !dbg !137
  %136 = sub nsw i32 %80, %91, !dbg !286
  %137 = call i32 @gsl_sf_lnchoose_e(i32 noundef %76, i32 noundef %136, ptr noundef nonnull %9) #6, !dbg !287
  %138 = add nsw i32 %135, %137, !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !121, metadata !DIExpression()), !dbg !137
  %139 = sub nsw i32 %85, %91, !dbg !289
  %140 = call i32 @gsl_sf_lnchoose_e(i32 noundef %73, i32 noundef %139, ptr noundef nonnull %10) #6, !dbg !290
  %141 = add nsw i32 %138, %140, !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !121, metadata !DIExpression()), !dbg !137
  %142 = load double, ptr %8, align 8, !dbg !292, !tbaa !152
  %143 = load double, ptr %9, align 8, !dbg !293, !tbaa !152
  %handler_result13 = call double @fAddHandlerDouble(double %142, double %143), !dbg !294
  %144 = load double, ptr %10, align 8, !dbg !294, !tbaa !152
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %144), !dbg !295
  %handler_result15 = call double @fAddHandlerDouble(double %108, double %handler_result14), !dbg !296
  %145 = load double, ptr %130, align 8, !dbg !296, !tbaa !157
  %146 = load double, ptr %131, align 8, !dbg !297, !tbaa !157
  %handler_result16 = call double @fAddHandlerDouble(double %145, double %146), !dbg !298
  %147 = load double, ptr %132, align 8, !dbg !298, !tbaa !157
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %147), !dbg !299
  %handler_result18 = call double @fAddHandlerDouble(double %122, double %handler_result17), !dbg !300
  %148 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result15, double noundef %handler_result18, ptr noundef nonnull %17) #6, !dbg !300
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %141, i32 %148), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %149 = sub i32 0, %148, !dbg !301
  %150 = icmp eq i32 %141, %149, !dbg !301
  br i1 %150, label %151, label %187, !dbg !303

151:                                              ; preds = %124
  %152 = lshr exact i32 %44, 1, !dbg !304
  %153 = sub i32 %82, %152, !dbg !305
  %154 = add i32 %153, %91, !dbg !305
  %155 = and i32 %154, 1, !dbg !305
  %156 = icmp eq i32 %155, 0, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %157 = load double, ptr %17, align 8, !dbg !306
  %handler_result19 = call double @fAddHandlerDouble(double %157, double 0.000000e+00), !dbg !306
  %158 = select i1 %156, double %handler_result19, double 0.000000e+00, !dbg !306
  %handler_result20 = call double @fAddHandlerDouble(double %157, double 0.000000e+00), !dbg !306
  %159 = select i1 %156, double 0.000000e+00, double %handler_result20, !dbg !306
  tail call void @llvm.dbg.value(metadata double %159, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %158, metadata !122, metadata !DIExpression()), !dbg !137
  %160 = load double, ptr %133, align 8, !dbg !307, !tbaa !157
  %handler_result21 = call double @fAddHandlerDouble(double %160, double 0.000000e+00), !dbg !274
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !120, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %161 = icmp ult i32 %91, %93, !dbg !274
  br i1 %161, label %162, label %197, !dbg !277

162:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  %163 = select i1 %156, i32 -1, i32 1, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !120, metadata !DIExpression()), !dbg !137
  br label %164, !dbg !277

164:                                              ; preds = %189, %162
  %165 = phi i32 [ %91, %162 ], [ %170, %189 ]
  %166 = phi double [ %handler_result21, %162 ], [ %handler_result30, %189 ]
  %167 = phi double [ %159, %162 ], [ %handler_result29, %189 ]
  %168 = phi double [ %158, %162 ], [ %handler_result28, %189 ]
  %169 = phi i32 [ %163, %162 ], [ %195, %189 ]
  %170 = add nuw nsw i32 %165, 1, !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %166, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %167, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %168, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !120, metadata !DIExpression()), !dbg !137
  %171 = call i32 @gsl_sf_lnchoose_e(i32 noundef %78, i32 noundef %170, ptr noundef nonnull %8) #6, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %171, metadata !121, metadata !DIExpression()), !dbg !137
  %172 = sub nsw i32 %80, %170, !dbg !286
  %173 = call i32 @gsl_sf_lnchoose_e(i32 noundef %76, i32 noundef %172, ptr noundef nonnull %9) #6, !dbg !287
  %174 = add nsw i32 %171, %173, !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !121, metadata !DIExpression()), !dbg !137
  %175 = sub nsw i32 %85, %170, !dbg !289
  %176 = call i32 @gsl_sf_lnchoose_e(i32 noundef %73, i32 noundef %175, ptr noundef nonnull %10) #6, !dbg !290
  %177 = add nsw i32 %174, %176, !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !121, metadata !DIExpression()), !dbg !137
  %178 = load double, ptr %8, align 8, !dbg !292, !tbaa !152
  %179 = load double, ptr %9, align 8, !dbg !293, !tbaa !152
  %handler_result22 = call double @fAddHandlerDouble(double %178, double %179), !dbg !294
  %180 = load double, ptr %10, align 8, !dbg !294, !tbaa !152
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %180), !dbg !295
  %handler_result24 = call double @fAddHandlerDouble(double %108, double %handler_result23), !dbg !296
  %181 = load double, ptr %130, align 8, !dbg !296, !tbaa !157
  %182 = load double, ptr %131, align 8, !dbg !297, !tbaa !157
  %handler_result25 = call double @fAddHandlerDouble(double %181, double %182), !dbg !298
  %183 = load double, ptr %132, align 8, !dbg !298, !tbaa !157
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double %183), !dbg !299
  %handler_result27 = call double @fAddHandlerDouble(double %122, double %handler_result26), !dbg !300
  %184 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result24, double noundef %handler_result27, ptr noundef nonnull %17) #6, !dbg !300
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %177, i32 %184), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %185 = sub i32 0, %184, !dbg !301
  %186 = icmp eq i32 %177, %185, !dbg !301
  br i1 %186, label %189, label %187, !dbg !303

187:                                              ; preds = %164, %124
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !309, !tbaa !152
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !309
  store double 0x7FF0000000000000, ptr %188, align 8, !dbg !309, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 16) #6, !dbg !312
  br label %208, !dbg !312

189:                                              ; preds = %164
  %190 = icmp slt i32 %169, 0, !dbg !314
  %191 = load double, ptr %17, align 8, !dbg !306
  %192 = select i1 %190, double -0.000000e+00, double %191, !dbg !306
  %handler_result28 = call double @fAddHandlerDouble(double %168, double %192), !dbg !306
  %193 = select i1 %190, double %191, double -0.000000e+00, !dbg !306
  %handler_result29 = call double @fAddHandlerDouble(double %167, double %193), !dbg !307
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !122, metadata !DIExpression()), !dbg !137
  %194 = load double, ptr %133, align 8, !dbg !307, !tbaa !157
  %handler_result30 = call double @fAddHandlerDouble(double %166, double %194), !dbg !316
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !124, metadata !DIExpression()), !dbg !137
  %195 = sub nsw i32 0, %169, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %195, metadata !120, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %196 = icmp slt i32 %170, %93, !dbg !274
  br i1 %196, label %164, label %197, !dbg !277, !llvm.loop !317

197:                                              ; preds = %189, %151, %70
  %198 = phi double [ 0.000000e+00, %70 ], [ %158, %151 ], [ %handler_result28, %189 ], !dbg !321
  %199 = phi double [ 0.000000e+00, %70 ], [ %159, %151 ], [ %handler_result29, %189 ], !dbg !137
  %200 = phi double [ 0.000000e+00, %70 ], [ %handler_result21, %151 ], [ %handler_result30, %189 ], !dbg !137
  %handler_result31 = call double @fSubHandlerDouble(double %198, double %199), !dbg !322
  store double %handler_result31, ptr %6, align 8, !dbg !322, !tbaa !152
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !323
  %handler_result32 = call double @fAddHandlerDouble(double %198, double %199), !dbg !324
  %202 = fmul double %handler_result32, 0x3CC0000000000000, !dbg !324
  %handler_result33 = call double @fAddHandlerDouble(double %200, double %202), !dbg !325
  %203 = sub nsw i32 %93, %91, !dbg !325
  %204 = sitofp i32 %203 to double, !dbg !326
  %205 = fmul double %204, 0x3CC0000000000000, !dbg !327
  %206 = call double @llvm.fabs.f64(double %handler_result31), !dbg !328
  %207 = fmul double %205, %206, !dbg !329
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double %207), !dbg !330
  store double %handler_result34, ptr %201, align 8, !dbg !330, !tbaa !157
  br label %208, !dbg !331

208:                                              ; preds = %197, %187
  %209 = phi i32 [ 16, %187 ], [ 0, %197 ], !dbg !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !332
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !332
  br label %210

210:                                              ; preds = %208, %69, %59, %21
  %211 = phi i32 [ 1, %21 ], [ 0, %59 ], [ 0, %69 ], [ %209, %208 ], !dbg !333
  ret i32 %211, !dbg !334
}

declare !dbg !335 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !340 i32 @gsl_sf_lnchoose_e(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !345 double @log(double noundef) local_unnamed_addr #3

declare !dbg !349 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !354 {
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !363, metadata !DIExpression(), metadata !391, metadata ptr %8, metadata !DIExpression()), !dbg !392
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !367, metadata !DIExpression(), metadata !393, metadata ptr %9, metadata !DIExpression()), !dbg !392
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !368, metadata !DIExpression(), metadata !394, metadata ptr %10, metadata !DIExpression()), !dbg !392
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !369, metadata !DIExpression(), metadata !395, metadata ptr %11, metadata !DIExpression()), !dbg !392
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !370, metadata !DIExpression(), metadata !396, metadata ptr %12, metadata !DIExpression()), !dbg !392
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !371, metadata !DIExpression(), metadata !397, metadata ptr %13, metadata !DIExpression()), !dbg !392
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !372, metadata !DIExpression(), metadata !398, metadata ptr %14, metadata !DIExpression()), !dbg !392
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !399, metadata ptr %15, metadata !DIExpression()), !dbg !400
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !390, metadata !DIExpression(), metadata !401, metadata ptr %16, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !356, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !357, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !358, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !359, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !360, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !361, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !362, metadata !DIExpression()), !dbg !402
  %17 = or i32 %1, %0, !dbg !403
  %18 = or i32 %17, %2, !dbg !403
  %19 = or i32 %18, %3, !dbg !403
  %20 = or i32 %19, %4, !dbg !403
  %21 = or i32 %20, %5, !dbg !403
  %22 = icmp sgt i32 %21, -1, !dbg !403
  br i1 %22, label %25, label %23, !dbg !403

23:                                               ; preds = %7
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !404, !tbaa !152
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !404
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !404, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 221, i32 noundef 1) #6, !dbg !407
  br label %254, !dbg !407

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !409
  %26 = sub nsw i32 %0, %2, !dbg !411
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true), !dbg !412
  %28 = icmp sle i32 %27, %1, !dbg !413
  %29 = add i32 %2, %0
  %30 = icmp sge i32 %29, %1
  %31 = and i1 %30, %28, !dbg !414
  %32 = add i32 %29, %1, !dbg !414
  %33 = and i32 %32, 1, !dbg !414
  %34 = icmp eq i32 %33, 0, !dbg !415
  %35 = and i1 %31, %34, !dbg !415
  br i1 %35, label %36, label %69, !dbg !416

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !417
  %37 = sub nsw i32 %0, %5, !dbg !419
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true), !dbg !420
  %39 = icmp sle i32 %38, %4, !dbg !421
  %40 = add i32 %5, %0
  %41 = icmp sge i32 %40, %4
  %42 = and i1 %41, %39, !dbg !422
  %43 = add i32 %40, %4, !dbg !422
  %44 = and i32 %43, 1, !dbg !422
  %45 = icmp eq i32 %44, 0, !dbg !423
  %46 = and i1 %42, %45, !dbg !423
  br i1 %46, label %47, label %69, !dbg !424

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 %1, metadata !160, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !425
  %48 = sub nsw i32 %1, %5, !dbg !427
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true), !dbg !428
  %50 = icmp sle i32 %49, %3, !dbg !429
  %51 = add i32 %5, %1
  %52 = icmp sge i32 %51, %3
  %53 = and i1 %52, %50, !dbg !430
  %54 = add i32 %51, %3, !dbg !430
  %55 = and i32 %54, 1, !dbg !430
  %56 = icmp eq i32 %55, 0, !dbg !431
  %57 = and i1 %53, %56, !dbg !431
  br i1 %57, label %58, label %69, !dbg !432

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %4, metadata !160, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !433
  %59 = sub nsw i32 %4, %2, !dbg !435
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 true), !dbg !436
  %61 = icmp ule i32 %60, %3, !dbg !437
  %62 = add i32 %4, %2
  %63 = icmp sge i32 %62, %3
  %64 = and i1 %63, %61, !dbg !438
  %65 = add i32 %62, %3, !dbg !438
  %66 = and i32 %65, 1, !dbg !438
  %67 = icmp eq i32 %66, 0, !dbg !439
  %68 = and i1 %64, %67, !dbg !439
  br i1 %68, label %70, label %69, !dbg !440

69:                                               ; preds = %58, %47, %36, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !441
  br label %254, !dbg !443

70:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !444
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6, !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6, !dbg !445
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !379, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !380, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !392
  %71 = call fastcc i32 @delta(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %9), !dbg !446, !range !447
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !381, metadata !DIExpression()), !dbg !392
  %72 = call fastcc i32 @delta(i32 noundef %0, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %10), !dbg !448, !range !447
  %73 = add nuw nsw i32 %72, %71, !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !381, metadata !DIExpression()), !dbg !392
  %74 = call fastcc i32 @delta(i32 noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %11), !dbg !450, !range !447
  %75 = add nuw nsw i32 %73, %74, !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !381, metadata !DIExpression()), !dbg !392
  %76 = call fastcc i32 @delta(i32 noundef %4, i32 noundef %3, i32 noundef %2, ptr noundef nonnull %12), !dbg !452, !range !447
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %75, i32 %76), metadata !381, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !392
  %77 = sub nsw i32 0, %76, !dbg !453
  %78 = icmp eq i32 %75, %77, !dbg !453
  br i1 %78, label %81, label %79, !dbg !455

79:                                               ; preds = %70
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !456, !tbaa !152
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !456
  store double 0x7FF0000000000000, ptr %80, align 8, !dbg !456, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 16) #6, !dbg !459
  br label %252, !dbg !459

81:                                               ; preds = %70
  %82 = load double, ptr %9, align 8, !dbg !461, !tbaa !152
  %83 = tail call double @sqrt(double noundef %82) #6, !dbg !462
  %84 = load double, ptr %10, align 8, !dbg !463, !tbaa !152
  %85 = tail call double @sqrt(double noundef %84) #6, !dbg !464
  %86 = fmul double %83, %85, !dbg !465
  %87 = load double, ptr %11, align 8, !dbg !466, !tbaa !152
  %88 = tail call double @sqrt(double noundef %87) #6, !dbg !467
  %89 = fmul double %86, %88, !dbg !468
  %90 = load double, ptr %12, align 8, !dbg !469, !tbaa !152
  %91 = tail call double @sqrt(double noundef %90) #6, !dbg !470
  %92 = fmul double %89, %91, !dbg !471
  tail call void @llvm.dbg.value(metadata double %92, metadata !373, metadata !DIExpression()), !dbg !392
  %93 = add i32 %3, %0, !dbg !472
  %94 = add i32 %5, %2, !dbg !473
  %95 = sub i32 %93, %94, !dbg !473
  %96 = add nuw i32 %4, %1, !dbg !474
  %97 = sub i32 %96, %94, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32 %95, metadata !232, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32 %97, metadata !233, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32 poison, metadata !234, metadata !DIExpression()), !dbg !476
  %98 = tail call i32 @llvm.smax.i32(i32 %95, i32 %97), !dbg !478
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0), !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !375, metadata !DIExpression()), !dbg !392
  %100 = add nuw nsw i32 %1, %0, !dbg !479
  %101 = add nuw i32 %4, %3, !dbg !480
  %102 = add i32 %101, %100, !dbg !481
  %103 = add nsw i32 %102, 2, !dbg !482
  %104 = sub nsw i32 %100, %2, !dbg !483
  %105 = sub i32 %101, %2, !dbg !484
  %106 = add nsw i32 %4, %0, !dbg !485
  %107 = sub i32 %106, %5, !dbg !486
  %108 = add nuw nsw i32 %3, %1, !dbg !487
  %109 = sub i32 %108, %5, !dbg !488
  call void @llvm.dbg.value(metadata i32 %103, metadata !489, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %104, metadata !494, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %105, metadata !495, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %107, metadata !496, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %109, metadata !497, metadata !DIExpression()), !dbg !501
  %110 = tail call i32 @llvm.smin.i32(i32 %103, i32 %104), !dbg !503
  call void @llvm.dbg.value(metadata i32 %110, metadata !498, metadata !DIExpression()), !dbg !501
  %111 = tail call i32 @llvm.smin.i32(i32 %105, i32 %107), !dbg !504
  call void @llvm.dbg.value(metadata i32 %111, metadata !499, metadata !DIExpression()), !dbg !501
  %112 = tail call i32 @llvm.smin.i32(i32 %110, i32 %111), !dbg !505
  call void @llvm.dbg.value(metadata i32 %112, metadata !500, metadata !DIExpression()), !dbg !501
  %113 = tail call noundef i32 @llvm.smin.i32(i32 %112, i32 %109), !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !376, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double poison, metadata !377, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !374, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !374, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double poison, metadata !377, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !379, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !380, metadata !DIExpression()), !dbg !392
  %114 = icmp sgt i32 %99, %113, !dbg !507
  br i1 %114, label %236, label %115, !dbg !508

115:                                              ; preds = %81
  %116 = add nsw i32 %99, %102, !dbg !509
  %117 = sdiv i32 %116, 2, !dbg !509
  %118 = and i32 %117, 1, !dbg !509
  %119 = icmp eq i32 %118, 0, !dbg !509
  %120 = select i1 %119, double 1.000000e+00, double -1.000000e+00, !dbg !509
  tail call void @llvm.dbg.value(metadata double %120, metadata !377, metadata !DIExpression()), !dbg !392
  %121 = sub i32 %94, %93
  %122 = sub i32 %94, %96
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1
  %131 = fmul double %92, %92
  br label %132, !dbg !508

132:                                              ; preds = %172, %115
  %133 = phi i32 [ %99, %115 ], [ %234, %172 ]
  %134 = phi double [ %120, %115 ], [ %216, %172 ]
  %135 = phi double [ 0.000000e+00, %115 ], [ %handler_result8, %172 ]
  %136 = phi double [ 0.000000e+00, %115 ], [ %handler_result7, %172 ]
  %137 = phi double [ 0.000000e+00, %115 ], [ %handler_result9, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !374, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %134, metadata !377, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %135, metadata !378, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %136, metadata !379, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %137, metadata !380, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #6, !dbg !510
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #6, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !392
  %138 = sub nsw i32 %102, %133, !dbg !511
  %139 = sdiv i32 %138, 2, !dbg !512
  %140 = add nsw i32 %139, 1, !dbg !513
  %141 = call i32 @gsl_sf_fact_e(i32 noundef %140, ptr noundef nonnull %8) #6, !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !381, metadata !DIExpression()), !dbg !392
  %142 = lshr i32 %133, 1, !dbg !515
  %143 = call i32 @gsl_sf_fact_e(i32 noundef %142, ptr noundef nonnull %15) #6, !dbg !516
  %144 = add nsw i32 %143, %141, !dbg !517
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !381, metadata !DIExpression()), !dbg !392
  %145 = add nsw i32 %121, %133, !dbg !518
  %146 = sdiv i32 %145, 2, !dbg !519
  %147 = call i32 @gsl_sf_fact_e(i32 noundef %146, ptr noundef nonnull %16) #6, !dbg !520
  %148 = add nsw i32 %144, %147, !dbg !521
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !381, metadata !DIExpression()), !dbg !392
  %149 = add nsw i32 %122, %133, !dbg !522
  %150 = sdiv i32 %149, 2, !dbg !523
  %151 = call i32 @gsl_sf_fact_e(i32 noundef %150, ptr noundef nonnull %10) #6, !dbg !524
  %152 = add nsw i32 %148, %151, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !381, metadata !DIExpression()), !dbg !392
  %153 = sub nsw i32 %104, %133, !dbg !526
  %154 = sdiv i32 %153, 2, !dbg !527
  %155 = call i32 @gsl_sf_fact_e(i32 noundef %154, ptr noundef nonnull %11) #6, !dbg !528
  %156 = add nsw i32 %152, %155, !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !381, metadata !DIExpression()), !dbg !392
  %157 = sub nsw i32 %105, %133, !dbg !530
  %158 = sdiv i32 %157, 2, !dbg !531
  %159 = call i32 @gsl_sf_fact_e(i32 noundef %158, ptr noundef nonnull %12) #6, !dbg !532
  %160 = add nsw i32 %156, %159, !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !381, metadata !DIExpression()), !dbg !392
  %161 = sub nsw i32 %107, %133, !dbg !534
  %162 = sdiv i32 %161, 2, !dbg !535
  %163 = call i32 @gsl_sf_fact_e(i32 noundef %162, ptr noundef nonnull %13) #6, !dbg !536
  %164 = add nsw i32 %160, %163, !dbg !537
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !381, metadata !DIExpression()), !dbg !392
  %165 = sub nsw i32 %109, %133, !dbg !538
  %166 = sdiv i32 %165, 2, !dbg !539
  %167 = call i32 @gsl_sf_fact_e(i32 noundef %166, ptr noundef nonnull %14) #6, !dbg !540
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %164, i32 %167), metadata !381, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !392
  %168 = sub i32 0, %167, !dbg !541
  %169 = icmp eq i32 %164, %168, !dbg !541
  br i1 %169, label %172, label %170, !dbg !543

170:                                              ; preds = %132
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !544, !tbaa !152
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !544
  store double 0x7FF0000000000000, ptr %171, align 8, !dbg !544, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 282, i32 noundef 16) #6, !dbg !547
  tail call void @llvm.dbg.value(metadata double undef, metadata !377, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double undef, metadata !378, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double undef, metadata !379, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double undef, metadata !380, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6, !dbg !549
  br label %252

172:                                              ; preds = %132
  %173 = load double, ptr %15, align 8, !dbg !550, !tbaa !152
  %174 = load double, ptr %16, align 8, !dbg !551, !tbaa !152
  %175 = fmul double %173, %174, !dbg !552
  call void @llvm.dbg.assign(metadata double %175, metadata !367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !553, metadata ptr %9, metadata !DIExpression()), !dbg !392
  %176 = load double, ptr %123, align 8, !dbg !554, !tbaa !157
  %177 = call double @llvm.fabs.f64(double %174), !dbg !555
  %178 = fmul double %177, %176, !dbg !556
  %179 = call double @llvm.fabs.f64(double %173), !dbg !557
  %180 = load double, ptr %124, align 8, !dbg !558, !tbaa !157
  %181 = fmul double %179, %180, !dbg !559
  %handler_result = call double @fAddHandlerDouble(double %178, double %181), !dbg !560
  call void @llvm.dbg.assign(metadata double %handler_result, metadata !367, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !561, metadata ptr %9, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !392
  %182 = load double, ptr %10, align 8, !dbg !560, !tbaa !152
  %183 = fmul double %175, %182, !dbg !562
  %184 = load double, ptr %11, align 8, !dbg !563, !tbaa !152
  %185 = fmul double %183, %184, !dbg !564
  tail call void @llvm.dbg.value(metadata double %185, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !400
  %186 = fmul double %182, %184, !dbg !565
  %187 = call double @llvm.fabs.f64(double %186), !dbg !566
  %188 = fmul double %handler_result, %187, !dbg !567
  tail call void @llvm.dbg.value(metadata double %188, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %189 = load double, ptr %125, align 8, !dbg !568, !tbaa !157
  %190 = fmul double %175, %184, !dbg !569
  %191 = call double @llvm.fabs.f64(double %190), !dbg !570
  %192 = fmul double %189, %191, !dbg !571
  %handler_result1 = call double @fAddHandlerDouble(double %188, double %192), !dbg !572
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %193 = load double, ptr %126, align 8, !dbg !572, !tbaa !157
  %194 = call double @llvm.fabs.f64(double %183), !dbg !573
  %195 = fmul double %194, %193, !dbg !574
  %handler_result2 = call double @fAddHandlerDouble(double %195, double %handler_result1), !dbg !575
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %196 = load double, ptr %12, align 8, !dbg !575, !tbaa !152
  %197 = load double, ptr %13, align 8, !dbg !576, !tbaa !152
  %198 = fmul double %196, %197, !dbg !577
  %199 = load double, ptr %14, align 8, !dbg !578, !tbaa !152
  %200 = fmul double %198, %199, !dbg !579
  tail call void @llvm.dbg.value(metadata double %200, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !400
  %201 = load double, ptr %127, align 8, !dbg !580, !tbaa !157
  %202 = fmul double %197, %199, !dbg !581
  %203 = call double @llvm.fabs.f64(double %202), !dbg !582
  %204 = fmul double %201, %203, !dbg !583
  tail call void @llvm.dbg.value(metadata double %204, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %205 = load double, ptr %128, align 8, !dbg !584, !tbaa !157
  %206 = fmul double %196, %199, !dbg !585
  %207 = call double @llvm.fabs.f64(double %206), !dbg !586
  %208 = fmul double %205, %207, !dbg !587
  %handler_result3 = call double @fAddHandlerDouble(double %204, double %208), !dbg !588
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %209 = load double, ptr %129, align 8, !dbg !588, !tbaa !157
  %210 = call double @llvm.fabs.f64(double %198), !dbg !589
  %211 = fmul double %210, %209, !dbg !590
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %211), !dbg !591
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !400
  %212 = load double, ptr %8, align 8, !dbg !591, !tbaa !152
  %213 = fmul double %134, %212, !dbg !592
  %214 = fdiv double %213, %185, !dbg !593
  %215 = fdiv double %214, %200, !dbg !594
  tail call void @llvm.dbg.value(metadata double %215, metadata !382, metadata !DIExpression()), !dbg !400
  %216 = fneg double %134, !dbg !595
  tail call void @llvm.dbg.value(metadata double %216, metadata !377, metadata !DIExpression()), !dbg !392
  %217 = load double, ptr %130, align 8, !dbg !596, !tbaa !157
  %218 = call double @llvm.fabs.f64(double %185), !dbg !597
  %219 = fdiv double %217, %218, !dbg !598
  %220 = call double @llvm.fabs.f64(double %200), !dbg !599
  %221 = fdiv double %219, %220, !dbg !600
  tail call void @llvm.dbg.value(metadata double %221, metadata !386, metadata !DIExpression()), !dbg !400
  %222 = fdiv double %215, %185, !dbg !601
  %223 = call double @llvm.fabs.f64(double %222), !dbg !602
  %224 = fmul double %handler_result2, %223, !dbg !603
  %handler_result5 = call double @fAddHandlerDouble(double %221, double %224), !dbg !604
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !386, metadata !DIExpression()), !dbg !400
  %225 = fdiv double %215, %200, !dbg !604
  %226 = call double @llvm.fabs.f64(double %225), !dbg !605
  %227 = fmul double %handler_result4, %226, !dbg !606
  %handler_result6 = call double @fAddHandlerDouble(double %227, double %handler_result5), !dbg !607
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !386, metadata !DIExpression()), !dbg !400
  %228 = fcmp ult double %215, 0.000000e+00, !dbg !607
  %229 = fmul double %92, %215, !dbg !609
  %230 = select i1 %228, double %229, double 0.000000e+00, !dbg !609
  %handler_result7 = call double @fSubHandlerDouble(double %136, double %230), !dbg !609
  %231 = select i1 %228, double -0.000000e+00, double %229, !dbg !609
  %handler_result8 = call double @fAddHandlerDouble(double %135, double %231), !dbg !610
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !378, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !379, metadata !DIExpression()), !dbg !392
  %232 = fmul double %131, %handler_result6, !dbg !610
  %233 = fmul double %handler_result6, %232, !dbg !611
  %handler_result9 = call double @fAddHandlerDouble(double %137, double %233), !dbg !549
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !380, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6, !dbg !549
  %234 = add nuw nsw i32 %133, 2, !dbg !612
  tail call void @llvm.dbg.value(metadata i32 %234, metadata !374, metadata !DIExpression()), !dbg !392
  %235 = icmp sgt i32 %234, %113, !dbg !507
  br i1 %235, label %236, label %132, !dbg !508, !llvm.loop !613

236:                                              ; preds = %172, %81
  %237 = phi double [ 0.000000e+00, %81 ], [ %handler_result9, %172 ], !dbg !615
  %238 = phi double [ 0.000000e+00, %81 ], [ %handler_result7, %172 ], !dbg !616
  %239 = phi double [ 0.000000e+00, %81 ], [ %handler_result8, %172 ], !dbg !617
  %handler_result10 = call double @fSubHandlerDouble(double %239, double %238), !dbg !618
  store double %handler_result10, ptr %6, align 8, !dbg !618, !tbaa !152
  %handler_result11 = call double @fAddHandlerDouble(double %238, double %239), !dbg !619
  %240 = fmul double %handler_result11, 0x3CC0000000000000, !dbg !619
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !620
  store double %240, ptr %241, align 8, !dbg !621, !tbaa !157
  %242 = sub nsw i32 %113, %99, !dbg !622
  %243 = sitofp i32 %242 to double, !dbg !623
  %244 = fmul double %243, 5.000000e-01, !dbg !624
  %handler_result12 = call double @fAddHandlerDouble(double %244, double 1.000000e+00), !dbg !625
  %245 = fdiv double %237, %handler_result12, !dbg !625
  %246 = call double @sqrt(double noundef %245) #6, !dbg !626
  %247 = load double, ptr %241, align 8, !dbg !627, !tbaa !157
  %handler_result13 = call double @fAddHandlerDouble(double %246, double %247), !dbg !628
  %handler_result14 = call double @fAddHandlerDouble(double %243, double 2.000000e+00), !dbg !629
  %248 = fmul double %handler_result14, 0x3CC0000000000000, !dbg !629
  %249 = load double, ptr %6, align 8, !dbg !630, !tbaa !152
  %250 = call double @llvm.fabs.f64(double %249), !dbg !631
  %251 = fmul double %248, %250, !dbg !632
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result13, double %251), !dbg !633
  store double %handler_result15, ptr %241, align 8, !dbg !633, !tbaa !157
  br label %252, !dbg !634

252:                                              ; preds = %236, %170, %79
  %253 = phi i32 [ 16, %79 ], [ 16, %170 ], [ 0, %236 ], !dbg !392
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !635
  br label %254

254:                                              ; preds = %252, %69, %23
  %255 = phi i32 [ 1, %23 ], [ 0, %69 ], [ %253, %252 ], !dbg !636
  ret i32 %255, !dbg !637
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @delta(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !638 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !646, metadata !DIExpression(), metadata !651, metadata ptr %5, metadata !DIExpression()), !dbg !652
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !647, metadata !DIExpression(), metadata !653, metadata ptr %6, metadata !DIExpression()), !dbg !652
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !648, metadata !DIExpression(), metadata !654, metadata ptr %7, metadata !DIExpression()), !dbg !652
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !649, metadata !DIExpression(), metadata !655, metadata ptr %8, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !642, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !643, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !644, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !645, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !656
  tail call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()), !dbg !652
  %9 = add nsw i32 %1, %0, !dbg !657
  %10 = sub nsw i32 %9, %2, !dbg !658
  %11 = sdiv i32 %10, 2, !dbg !659
  %12 = call i32 @gsl_sf_fact_e(i32 noundef %11, ptr noundef nonnull %5) #6, !dbg !660
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !650, metadata !DIExpression()), !dbg !652
  %13 = sub i32 %0, %1, !dbg !661
  %14 = add i32 %13, %2, !dbg !662
  %15 = sdiv i32 %14, 2, !dbg !663
  %16 = call i32 @gsl_sf_fact_e(i32 noundef %15, ptr noundef nonnull %6) #6, !dbg !664
  %17 = add nsw i32 %16, %12, !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !650, metadata !DIExpression()), !dbg !652
  %18 = sub i32 %1, %0, !dbg !666
  %19 = add i32 %18, %2, !dbg !667
  %20 = sdiv i32 %19, 2, !dbg !668
  %21 = call i32 @gsl_sf_fact_e(i32 noundef %20, ptr noundef nonnull %7) #6, !dbg !669
  %22 = add nsw i32 %17, %21, !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !650, metadata !DIExpression()), !dbg !652
  %23 = add nsw i32 %9, %2, !dbg !671
  %24 = sdiv i32 %23, 2, !dbg !672
  %25 = add nsw i32 %24, 1, !dbg !673
  %26 = call i32 @gsl_sf_fact_e(i32 noundef %25, ptr noundef nonnull %8) #6, !dbg !674
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %22, i32 %26), metadata !650, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !652
  %27 = sub i32 0, %26, !dbg !675
  %28 = icmp eq i32 %22, %27, !dbg !675
  br i1 %28, label %31, label %29, !dbg !677

29:                                               ; preds = %4
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !678, !tbaa !152
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !678
  store double 0x7FF0000000000000, ptr %30, align 8, !dbg !678, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 16) #6, !dbg !681
  br label %42, !dbg !681

31:                                               ; preds = %4
  %32 = load double, ptr %5, align 8, !dbg !683, !tbaa !152
  %33 = load double, ptr %6, align 8, !dbg !684, !tbaa !152
  %34 = fmul double %32, %33, !dbg !685
  %35 = load double, ptr %7, align 8, !dbg !686, !tbaa !152
  %36 = fmul double %34, %35, !dbg !687
  %37 = load double, ptr %8, align 8, !dbg !688, !tbaa !152
  %38 = fdiv double %36, %37, !dbg !689
  store double %38, ptr %3, align 8, !dbg !690, !tbaa !152
  %39 = call double @llvm.fabs.f64(double %38), !dbg !691
  %40 = fmul double %39, 0x3CD0000000000000, !dbg !692
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !693
  store double %40, ptr %41, align 8, !dbg !694, !tbaa !157
  br label %42, !dbg !695

42:                                               ; preds = %31, %29
  %43 = phi i32 [ 16, %29 ], [ 0, %31 ], !dbg !652
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !696
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !696
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !696
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !696
  ret i32 %43, !dbg !696
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !697 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !698 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_RacahW_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !702 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !704, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !705, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !706, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !707, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !708, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !709, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !710, metadata !DIExpression()), !dbg !713
  %8 = tail call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef %5, ptr noundef %6), !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !711, metadata !DIExpression()), !dbg !713
  %9 = add nsw i32 %1, %0, !dbg !715
  %10 = add nsw i32 %9, %2, !dbg !716
  %11 = add nsw i32 %10, %3, !dbg !717
  %12 = sdiv i32 %11, 2, !dbg !718
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !712, metadata !DIExpression()), !dbg !713
  %13 = and i32 %12, 1, !dbg !719
  %14 = icmp eq i32 %13, 0, !dbg !719
  %15 = load double, ptr %6, align 8, !dbg !720, !tbaa !152
  %16 = fneg double %15, !dbg !720
  %17 = select i1 %14, double %15, double %16, !dbg !720
  store double %17, ptr %6, align 8, !dbg !720, !tbaa !152
  ret i32 %8, !dbg !721
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_9j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef %9) local_unnamed_addr #0 !dbg !722 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !746, metadata !DIExpression(), metadata !755, metadata ptr %11, metadata !DIExpression()), !dbg !756
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !757
  call void @llvm.dbg.assign(metadata i1 undef, metadata !750, metadata !DIExpression(), metadata !757, metadata ptr %12, metadata !DIExpression()), !dbg !756
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !758
  call void @llvm.dbg.assign(metadata i1 undef, metadata !751, metadata !DIExpression(), metadata !758, metadata ptr %13, metadata !DIExpression()), !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !726, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !727, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !728, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !729, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !730, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !731, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !732, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !733, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !734, metadata !DIExpression()), !dbg !759
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !735, metadata !DIExpression()), !dbg !759
  %14 = or i32 %1, %0, !dbg !760
  %15 = or i32 %14, %2, !dbg !760
  %16 = or i32 %15, %3, !dbg !760
  %17 = or i32 %16, %4, !dbg !760
  %18 = or i32 %17, %5, !dbg !760
  %19 = or i32 %18, %6, !dbg !760
  %20 = or i32 %19, %7, !dbg !760
  %21 = or i32 %20, %8, !dbg !760
  %22 = icmp sgt i32 %21, -1, !dbg !760
  br i1 %22, label %25, label %23, !dbg !760

23:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !761, !tbaa !152
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !761
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !761, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 1) #6, !dbg !764
  br label %171, !dbg !764

25:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !766
  %26 = sub nsw i32 %0, %2, !dbg !768
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true), !dbg !769
  %28 = icmp sle i32 %27, %1, !dbg !770
  %29 = add i32 %2, %0
  %30 = icmp sge i32 %29, %1
  %31 = and i1 %30, %28, !dbg !771
  %32 = add i32 %29, %1, !dbg !771
  %33 = and i32 %32, 1, !dbg !771
  %34 = icmp eq i32 %33, 0, !dbg !772
  %35 = and i1 %31, %34, !dbg !772
  br i1 %35, label %36, label %91, !dbg !773

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !774
  %37 = sub nsw i32 %3, %5, !dbg !776
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true), !dbg !777
  %39 = icmp sle i32 %38, %4, !dbg !778
  %40 = add i32 %5, %3
  %41 = icmp sge i32 %40, %4
  %42 = and i1 %41, %39, !dbg !779
  %43 = add i32 %40, %4, !dbg !779
  %44 = and i32 %43, 1, !dbg !779
  %45 = icmp eq i32 %44, 0, !dbg !780
  %46 = and i1 %42, %45, !dbg !780
  br i1 %46, label %47, label %91, !dbg !781

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 %6, metadata !160, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %7, metadata !165, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %8, metadata !166, metadata !DIExpression()), !dbg !782
  %48 = sub nsw i32 %6, %8, !dbg !784
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true), !dbg !785
  %50 = icmp sle i32 %49, %7, !dbg !786
  %51 = add i32 %8, %6
  %52 = icmp sge i32 %51, %7
  %53 = and i1 %52, %50, !dbg !787
  %54 = add i32 %51, %7, !dbg !787
  %55 = and i32 %54, 1, !dbg !787
  %56 = icmp eq i32 %55, 0, !dbg !788
  %57 = and i1 %53, %56, !dbg !788
  br i1 %57, label %58, label %91, !dbg !789

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %6, metadata !166, metadata !DIExpression()), !dbg !790
  %59 = sub nsw i32 %0, %6, !dbg !792
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 true), !dbg !793
  %61 = icmp sle i32 %60, %3, !dbg !794
  %62 = add i32 %6, %0
  %63 = icmp sge i32 %62, %3
  %64 = and i1 %63, %61, !dbg !795
  %65 = add i32 %62, %3, !dbg !795
  %66 = and i32 %65, 1, !dbg !795
  %67 = icmp eq i32 %66, 0, !dbg !796
  %68 = and i1 %64, %67, !dbg !796
  br i1 %68, label %69, label %91, !dbg !797

69:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %1, metadata !160, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %7, metadata !166, metadata !DIExpression()), !dbg !798
  %70 = sub nsw i32 %1, %7, !dbg !800
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 true), !dbg !801
  %72 = icmp ule i32 %71, %4, !dbg !802
  %73 = add nuw i32 %7, %1
  %74 = icmp sge i32 %73, %4
  %75 = and i1 %74, %72, !dbg !803
  %76 = add i32 %73, %4, !dbg !803
  %77 = and i32 %76, 1, !dbg !803
  %78 = icmp eq i32 %77, 0, !dbg !804
  %79 = and i1 %75, %78, !dbg !804
  br i1 %79, label %80, label %91, !dbg !805

80:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 %2, metadata !160, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %5, metadata !165, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %8, metadata !166, metadata !DIExpression()), !dbg !806
  %81 = sub nsw i32 %2, %8, !dbg !808
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true), !dbg !809
  %83 = icmp sle i32 %82, %5, !dbg !810
  %84 = add i32 %8, %2
  %85 = icmp sge i32 %84, %5
  %86 = and i1 %85, %83, !dbg !811
  %87 = add i32 %84, %5, !dbg !811
  %88 = and i32 %87, 1, !dbg !811
  %89 = icmp eq i32 %88, 0, !dbg !812
  %90 = and i1 %86, %89, !dbg !812
  br i1 %90, label %92, label %91, !dbg !813

91:                                               ; preds = %80, %69, %58, %47, %36, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !dbg !814
  br label %171, !dbg !816

92:                                               ; preds = %80
  %93 = sub nsw i32 %0, %8, !dbg !817
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 true), !dbg !818
  %95 = sub nsw i32 %7, %3, !dbg !819
  %96 = tail call i32 @llvm.abs.i32(i32 %95, i1 true), !dbg !820
  %97 = sub nsw i32 %1, %5, !dbg !821
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 true), !dbg !822
  call void @llvm.dbg.value(metadata i32 %94, metadata !226, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %96, metadata !232, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %98, metadata !233, metadata !DIExpression()), !dbg !823
  %99 = tail call i32 @llvm.smax.i32(i32 %94, i32 %96), !dbg !825
  call void @llvm.dbg.value(metadata i32 %99, metadata !234, metadata !DIExpression()), !dbg !823
  %100 = tail call noundef i32 @llvm.smax.i32(i32 %99, i32 %98), !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !740, metadata !DIExpression()), !dbg !827
  %101 = add nsw i32 %8, %0, !dbg !828
  %102 = add nuw nsw i32 %7, %3, !dbg !829
  %103 = add nuw nsw i32 %5, %1, !dbg !830
  call void @llvm.dbg.value(metadata i32 %101, metadata !238, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 %102, metadata !241, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 %103, metadata !242, metadata !DIExpression()), !dbg !831
  %104 = tail call i32 @llvm.smin.i32(i32 %101, i32 %102), !dbg !833
  call void @llvm.dbg.value(metadata i32 %104, metadata !243, metadata !DIExpression()), !dbg !831
  %105 = tail call noundef i32 @llvm.smin.i32(i32 %104, i32 %103), !dbg !834
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !741, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !742, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !743, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !744, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !736, metadata !DIExpression()), !dbg !827
  %106 = icmp sgt i32 %100, %105, !dbg !835
  br i1 %106, label %151, label %107, !dbg !836

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1
  br label %111, !dbg !836

111:                                              ; preds = %122, %107
  %112 = phi i32 [ %100, %107 ], [ %147, %122 ]
  %113 = phi double [ 0.000000e+00, %107 ], [ %handler_result3, %122 ]
  %114 = phi double [ 0.000000e+00, %107 ], [ %handler_result4, %122 ]
  %115 = phi double [ 0.000000e+00, %107 ], [ %handler_result2, %122 ]
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !736, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %113, metadata !742, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %114, metadata !744, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %115, metadata !743, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !837
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !837
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6, !dbg !837
  tail call void @llvm.dbg.value(metadata i32 0, metadata !754, metadata !DIExpression()), !dbg !756
  %116 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %8, i32 noundef %112, i32 noundef %7, i32 noundef %3, i32 noundef %6, ptr noundef nonnull %11), !dbg !838
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !754, metadata !DIExpression()), !dbg !756
  %117 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %1, i32 noundef %5, i32 noundef %112, i32 noundef %3, i32 noundef %7, i32 noundef %4, ptr noundef nonnull %12), !dbg !839
  %118 = add nsw i32 %117, %116, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !754, metadata !DIExpression()), !dbg !756
  %119 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %8, i32 noundef %112, i32 noundef %5, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13), !dbg !841
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %118, i32 %119), metadata !754, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !756
  %120 = sub i32 0, %119, !dbg !842
  %121 = icmp eq i32 %118, %120, !dbg !842
  br i1 %121, label %122, label %149, !dbg !844

122:                                              ; preds = %111
  %123 = load double, ptr %11, align 8, !dbg !845, !tbaa !152
  %124 = load double, ptr %12, align 8, !dbg !846, !tbaa !152
  %125 = fmul double %123, %124, !dbg !847
  %126 = load double, ptr %13, align 8, !dbg !848, !tbaa !152
  %127 = fmul double %125, %126, !dbg !849
  tail call void @llvm.dbg.value(metadata double %127, metadata !752, metadata !DIExpression()), !dbg !756
  %128 = load double, ptr %108, align 8, !dbg !850, !tbaa !157
  %129 = fmul double %124, %126, !dbg !851
  %130 = tail call double @llvm.fabs.f64(double %129), !dbg !852
  %131 = fmul double %128, %130, !dbg !853
  tail call void @llvm.dbg.value(metadata double %131, metadata !753, metadata !DIExpression()), !dbg !756
  %132 = load double, ptr %109, align 8, !dbg !854, !tbaa !157
  %133 = fmul double %123, %126, !dbg !855
  %134 = tail call double @llvm.fabs.f64(double %133), !dbg !856
  %135 = fmul double %132, %134, !dbg !857
  %handler_result = call double @fAddHandlerDouble(double %131, double %135), !dbg !858
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !753, metadata !DIExpression()), !dbg !756
  %136 = load double, ptr %110, align 8, !dbg !858, !tbaa !157
  %137 = tail call double @llvm.fabs.f64(double %125), !dbg !859
  %138 = fmul double %137, %136, !dbg !860
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %138), !dbg !861
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !753, metadata !DIExpression()), !dbg !756
  %139 = fcmp ult double %127, 0.000000e+00, !dbg !861
  %140 = add nuw nsw i32 %112, 1, !dbg !863
  %141 = sitofp i32 %140 to double, !dbg !863
  %142 = fmul double %127, %141, !dbg !863
  %143 = select i1 %139, double %142, double 0.000000e+00, !dbg !864
  %handler_result2 = call double @fSubHandlerDouble(double %115, double %143), !dbg !864
  %144 = select i1 %139, double -0.000000e+00, double %142, !dbg !864
  %handler_result3 = call double @fAddHandlerDouble(double %113, double %144), !dbg !865
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !742, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !743, metadata !DIExpression()), !dbg !827
  %145 = fmul double %handler_result1, %141, !dbg !865
  %146 = fmul double %145, %145, !dbg !866
  %handler_result4 = call double @fAddHandlerDouble(double %114, double %146), !dbg !867
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !744, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !867
  %147 = add nuw nsw i32 %112, 2, !dbg !868
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !736, metadata !DIExpression()), !dbg !827
  %148 = icmp sgt i32 %147, %105, !dbg !835
  br i1 %148, label %151, label %111, !dbg !836, !llvm.loop !869

149:                                              ; preds = %111
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !871, !tbaa !152
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !871
  store double 0x7FF0000000000000, ptr %150, align 8, !dbg !871, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 380, i32 noundef 16) #6, !dbg !874
  tail call void @llvm.dbg.value(metadata double undef, metadata !742, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double undef, metadata !744, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double undef, metadata !743, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !867
  br label %171

151:                                              ; preds = %122, %92
  %152 = phi double [ 0.000000e+00, %92 ], [ %handler_result2, %122 ], !dbg !876
  %153 = phi double [ 0.000000e+00, %92 ], [ %handler_result4, %122 ], !dbg !877
  %154 = phi double [ 0.000000e+00, %92 ], [ %handler_result3, %122 ], !dbg !878
  %155 = and i32 %100, 1, !dbg !879
  %156 = icmp eq i32 %155, 0, !dbg !879
  tail call void @llvm.dbg.value(metadata double poison, metadata !745, metadata !DIExpression()), !dbg !827
  %handler_result5 = call double @fSubHandlerDouble(double %154, double %152), !dbg !880
  %157 = fneg double %handler_result5, !dbg !880
  %158 = select i1 %156, double %handler_result5, double %157, !dbg !880
  store double %158, ptr %9, align 8, !dbg !881, !tbaa !152
  %handler_result6 = call double @fAddHandlerDouble(double %152, double %154), !dbg !882
  %159 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !882
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !883
  store double %159, ptr %160, align 8, !dbg !884, !tbaa !157
  %161 = sub nsw i32 %105, %100, !dbg !885
  %162 = sitofp i32 %161 to double, !dbg !886
  %163 = fmul double %162, 5.000000e-01, !dbg !887
  %handler_result7 = call double @fAddHandlerDouble(double %163, double 1.000000e+00), !dbg !888
  %164 = fdiv double %153, %handler_result7, !dbg !888
  %165 = tail call double @sqrt(double noundef %164) #6, !dbg !889
  %166 = load double, ptr %160, align 8, !dbg !890, !tbaa !157
  %handler_result8 = call double @fAddHandlerDouble(double %165, double %166), !dbg !891
  %handler_result9 = call double @fAddHandlerDouble(double %162, double 2.000000e+00), !dbg !892
  %167 = fmul double %handler_result9, 0x3CC0000000000000, !dbg !892
  %168 = load double, ptr %9, align 8, !dbg !893, !tbaa !152
  %169 = tail call double @llvm.fabs.f64(double %168), !dbg !894
  %170 = fmul double %167, %169, !dbg !895
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result8, double %170), !dbg !896
  store double %handler_result10, ptr %160, align 8, !dbg !896, !tbaa !157
  br label %171, !dbg !897

171:                                              ; preds = %151, %149, %91, %23
  %172 = phi i32 [ 1, %23 ], [ 0, %91 ], [ 16, %149 ], [ 0, %151 ], !dbg !898
  ret i32 %172, !dbg !899
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_3j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !900 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !910, metadata !DIExpression(), metadata !912, metadata ptr %7, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !904, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !905, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !906, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !907, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !908, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !909, metadata !DIExpression()), !dbg !913
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !914
  %8 = call i32 @gsl_sf_coupling_3j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %7), !dbg !914, !range !447
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !911, metadata !DIExpression()), !dbg !913
  %9 = icmp eq i32 %8, 0, !dbg !915
  br i1 %9, label %11, label %10, !dbg !914

10:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef %8) #6, !dbg !917
  br label %11, !dbg !917

11:                                               ; preds = %10, %6
  %12 = load double, ptr %7, align 8, !dbg !914, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !920
  ret double %12, !dbg !920
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_6j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !921 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !929, metadata !DIExpression(), metadata !931, metadata ptr %7, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !923, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !924, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !925, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !926, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !927, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !928, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !933
  %8 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %7), !dbg !933
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !930, metadata !DIExpression()), !dbg !932
  %9 = icmp eq i32 %8, 0, !dbg !934
  br i1 %9, label %11, label %10, !dbg !933

10:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef %8) #6, !dbg !936
  br label %11, !dbg !936

11:                                               ; preds = %10, %6
  %12 = load double, ptr %7, align 8, !dbg !933, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !939
  ret double %12, !dbg !939
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_RacahW(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !940 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !950
  call void @llvm.dbg.assign(metadata i1 undef, metadata !948, metadata !DIExpression(), metadata !950, metadata ptr %7, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !942, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !943, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !944, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !945, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !946, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !947, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !952
  call void @llvm.dbg.value(metadata i32 %0, metadata !704, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %1, metadata !705, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %2, metadata !706, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %3, metadata !707, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %4, metadata !708, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %5, metadata !709, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr %7, metadata !710, metadata !DIExpression()), !dbg !953
  %8 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %7), !dbg !955
  call void @llvm.dbg.value(metadata i32 %8, metadata !711, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i32 %3, i32 %2, i32 %0), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !953
  %9 = load double, ptr %7, align 8, !dbg !956, !tbaa !152
  call void @llvm.dbg.assign(metadata double %20, metadata !948, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !957, metadata ptr %7, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !949, metadata !DIExpression()), !dbg !951
  %10 = icmp eq i32 %8, 0, !dbg !958
  br i1 %10, label %12, label %11, !dbg !952

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 448, i32 noundef %8) #6, !dbg !960
  br label %12, !dbg !960

12:                                               ; preds = %11, %6
  %13 = add nsw i32 %1, %0, !dbg !963
  call void @llvm.dbg.value(metadata !DIArgList(i32 %13, i32 %3, i32 %2), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !953
  %14 = add nsw i32 %13, %2, !dbg !964
  call void @llvm.dbg.value(metadata !DIArgList(i32 %14, i32 %3), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !953
  %15 = add nsw i32 %14, %3, !dbg !965
  call void @llvm.dbg.value(metadata i32 %15, metadata !712, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !953
  %16 = sdiv i32 %15, 2, !dbg !966
  call void @llvm.dbg.value(metadata i32 %16, metadata !712, metadata !DIExpression()), !dbg !953
  %17 = and i32 %16, 1, !dbg !967
  %18 = icmp eq i32 %17, 0, !dbg !967
  %19 = fneg double %9, !dbg !956
  %20 = select i1 %18, double %9, double %19, !dbg !956
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !968
  ret double %20, !dbg !968
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_9j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !dbg !969 {
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !984
  call void @llvm.dbg.assign(metadata i1 undef, metadata !982, metadata !DIExpression(), metadata !984, metadata ptr %10, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !973, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !974, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !975, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !976, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !977, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !978, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !979, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !980, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !981, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !986
  %11 = call i32 @gsl_sf_coupling_9j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull %10), !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !983, metadata !DIExpression()), !dbg !985
  %12 = icmp eq i32 %11, 0, !dbg !987
  br i1 %12, label %14, label %13, !dbg !986

13:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef %11) #6, !dbg !989
  br label %14, !dbg !989

14:                                               ; preds = %13, %9
  %15 = load double, ptr %10, align 8, !dbg !986, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !992
  ret double %15, !dbg !992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "coupling.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "2438bd37ea9551da3553aa6ef769aa44")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 78)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 82)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 102)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !75, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!40 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!41 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!42 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!43 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!44 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!45 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!46 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!47 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!48 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!49 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!50 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!51 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!52 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!53 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!54 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!55 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!56 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!57 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!58 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!59 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!60 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!61 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!62 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!63 = !DIEnumerator(name: "GSL_ESING", value: 21)
!64 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!65 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!66 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!67 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!68 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!69 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!70 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!71 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!72 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!73 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!74 = !DIEnumerator(name: "GSL_EOF", value: 32)
!75 = !{!0, !7, !12, !17, !22, !24, !29}
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 8, !"PIC Level", i32 2}
!80 = !{i32 7, !"PIE Level", i32 2}
!81 = !{i32 7, !"uwtable", i32 2}
!82 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!83 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!84 = distinct !DISubprogram(name: "gsl_sf_coupling_3j_e", scope: !2, file: !2, line: 113, type: !85, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !95)
!85 = !DISubroutineType(types: !86)
!86 = !{!38, !38, !38, !38, !38, !38, !38, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !89, line: 41, baseType: !90)
!89 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !89, line: 37, size: 128, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !90, file: !89, line: 38, baseType: !93, size: 64)
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !90, file: !89, line: 39, baseType: !93, size: 64, offset: 64)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!96 = !DILocalVariable(name: "two_ja", arg: 1, scope: !84, file: !2, line: 113, type: !38)
!97 = !DILocalVariable(name: "two_jb", arg: 2, scope: !84, file: !2, line: 113, type: !38)
!98 = !DILocalVariable(name: "two_jc", arg: 3, scope: !84, file: !2, line: 113, type: !38)
!99 = !DILocalVariable(name: "two_ma", arg: 4, scope: !84, file: !2, line: 114, type: !38)
!100 = !DILocalVariable(name: "two_mb", arg: 5, scope: !84, file: !2, line: 114, type: !38)
!101 = !DILocalVariable(name: "two_mc", arg: 6, scope: !84, file: !2, line: 114, type: !38)
!102 = !DILocalVariable(name: "result", arg: 7, scope: !84, file: !2, line: 115, type: !87)
!103 = !DILocalVariable(name: "jca", scope: !104, file: !2, line: 137, type: !38)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 136, column: 8)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 129, column: 13)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 122, column: 15)
!107 = distinct !DILexicalBlock(scope: !84, file: !2, line: 119, column: 6)
!108 = !DILocalVariable(name: "jcb", scope: !104, file: !2, line: 138, type: !38)
!109 = !DILocalVariable(name: "jcc", scope: !104, file: !2, line: 139, type: !38)
!110 = !DILocalVariable(name: "jmma", scope: !104, file: !2, line: 140, type: !38)
!111 = !DILocalVariable(name: "jmmb", scope: !104, file: !2, line: 141, type: !38)
!112 = !DILocalVariable(name: "jmmc", scope: !104, file: !2, line: 142, type: !38)
!113 = !DILocalVariable(name: "jpma", scope: !104, file: !2, line: 143, type: !38)
!114 = !DILocalVariable(name: "jpmb", scope: !104, file: !2, line: 144, type: !38)
!115 = !DILocalVariable(name: "jpmc", scope: !104, file: !2, line: 145, type: !38)
!116 = !DILocalVariable(name: "jsum", scope: !104, file: !2, line: 146, type: !38)
!117 = !DILocalVariable(name: "kmin", scope: !104, file: !2, line: 147, type: !38)
!118 = !DILocalVariable(name: "kmax", scope: !104, file: !2, line: 148, type: !38)
!119 = !DILocalVariable(name: "k", scope: !104, file: !2, line: 149, type: !38)
!120 = !DILocalVariable(name: "sign", scope: !104, file: !2, line: 149, type: !38)
!121 = !DILocalVariable(name: "status", scope: !104, file: !2, line: 150, type: !38)
!122 = !DILocalVariable(name: "sum_pos", scope: !104, file: !2, line: 151, type: !93)
!123 = !DILocalVariable(name: "sum_neg", scope: !104, file: !2, line: 151, type: !93)
!124 = !DILocalVariable(name: "sum_err", scope: !104, file: !2, line: 151, type: !93)
!125 = !DILocalVariable(name: "bc1", scope: !104, file: !2, line: 152, type: !88)
!126 = !DILocalVariable(name: "bc2", scope: !104, file: !2, line: 152, type: !88)
!127 = !DILocalVariable(name: "bc3", scope: !104, file: !2, line: 152, type: !88)
!128 = !DILocalVariable(name: "bcn1", scope: !104, file: !2, line: 152, type: !88)
!129 = !DILocalVariable(name: "bcn2", scope: !104, file: !2, line: 152, type: !88)
!130 = !DILocalVariable(name: "bcd1", scope: !104, file: !2, line: 152, type: !88)
!131 = !DILocalVariable(name: "bcd2", scope: !104, file: !2, line: 152, type: !88)
!132 = !DILocalVariable(name: "bcd3", scope: !104, file: !2, line: 152, type: !88)
!133 = !DILocalVariable(name: "bcd4", scope: !104, file: !2, line: 152, type: !88)
!134 = !DILocalVariable(name: "term", scope: !104, file: !2, line: 152, type: !88)
!135 = !DILocalVariable(name: "lnorm", scope: !104, file: !2, line: 152, type: !88)
!136 = distinct !DIAssignID()
!137 = !DILocation(line: 0, scope: !104)
!138 = distinct !DIAssignID()
!139 = distinct !DIAssignID()
!140 = distinct !DIAssignID()
!141 = distinct !DIAssignID()
!142 = distinct !DIAssignID()
!143 = distinct !DIAssignID()
!144 = distinct !DIAssignID()
!145 = distinct !DIAssignID()
!146 = distinct !DIAssignID()
!147 = !DILocation(line: 0, scope: !84)
!148 = !DILocation(line: 119, column: 17, scope: !107)
!149 = !DILocation(line: 120, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 120, column: 5)
!151 = distinct !DILexicalBlock(scope: !107, file: !2, line: 119, column: 46)
!152 = !{!153, !154, i64 0}
!153 = !{!"gsl_sf_result_struct", !154, i64 0, !154, i64 8}
!154 = !{!"double", !155, i64 0}
!155 = !{!"omnipotent char", !156, i64 0}
!156 = !{!"Simple C/C++ TBAA"}
!157 = !{!153, !154, i64 8}
!158 = !DILocation(line: 120, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !2, line: 120, column: 5)
!160 = !DILocalVariable(name: "two_ja", arg: 1, scope: !161, file: !2, line: 82, type: !38)
!161 = distinct !DISubprogram(name: "triangle_selection_fails", scope: !2, file: !2, line: 82, type: !162, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!38, !38, !38, !38}
!164 = !{!160, !165, !166}
!165 = !DILocalVariable(name: "two_jb", arg: 2, scope: !161, file: !2, line: 82, type: !38)
!166 = !DILocalVariable(name: "two_jc", arg: 3, scope: !161, file: !2, line: 82, type: !38)
!167 = !DILocation(line: 0, scope: !161, inlinedAt: !168)
!168 = distinct !DILocation(line: 122, column: 15, scope: !106)
!169 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !168)
!170 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !168)
!171 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !168)
!172 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !168)
!173 = !DILocation(line: 122, column: 15, scope: !106)
!174 = !DILocation(line: 123, column: 12, scope: !106)
!175 = !DILocalVariable(name: "two_ja", arg: 1, scope: !176, file: !2, line: 94, type: !38)
!176 = distinct !DISubprogram(name: "m_selection_fails", scope: !2, file: !2, line: 94, type: !177, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!38, !38, !38, !38, !38, !38, !38}
!179 = !{!175, !180, !181, !182, !183, !184}
!180 = !DILocalVariable(name: "two_jb", arg: 2, scope: !176, file: !2, line: 94, type: !38)
!181 = !DILocalVariable(name: "two_jc", arg: 3, scope: !176, file: !2, line: 94, type: !38)
!182 = !DILocalVariable(name: "two_ma", arg: 4, scope: !176, file: !2, line: 95, type: !38)
!183 = !DILocalVariable(name: "two_mb", arg: 5, scope: !176, file: !2, line: 95, type: !38)
!184 = !DILocalVariable(name: "two_mc", arg: 6, scope: !176, file: !2, line: 95, type: !38)
!185 = !DILocation(line: 0, scope: !176, inlinedAt: !186)
!186 = distinct !DILocation(line: 123, column: 15, scope: !106)
!187 = !DILocation(line: 98, column: 10, scope: !176, inlinedAt: !186)
!188 = !DILocation(line: 98, column: 22, scope: !176, inlinedAt: !186)
!189 = !DILocation(line: 99, column: 7, scope: !176, inlinedAt: !186)
!190 = !DILocation(line: 101, column: 10, scope: !176, inlinedAt: !186)
!191 = !DILocation(line: 102, column: 7, scope: !176, inlinedAt: !186)
!192 = !DILocation(line: 102, column: 10, scope: !176, inlinedAt: !186)
!193 = !DILocation(line: 103, column: 7, scope: !176, inlinedAt: !186)
!194 = !DILocation(line: 103, column: 10, scope: !176, inlinedAt: !186)
!195 = !DILocation(line: 104, column: 7, scope: !176, inlinedAt: !186)
!196 = !DILocation(line: 104, column: 18, scope: !176, inlinedAt: !186)
!197 = !DILocation(line: 104, column: 37, scope: !176, inlinedAt: !186)
!198 = !DILocation(line: 122, column: 15, scope: !107)
!199 = !DILocation(line: 126, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !106, file: !2, line: 124, column: 8)
!201 = !DILocation(line: 127, column: 5, scope: !200)
!202 = !DILocation(line: 129, column: 25, scope: !105)
!203 = !DILocation(line: 0, scope: !105)
!204 = !DILocation(line: 133, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !105, file: !2, line: 130, column: 56)
!206 = !DILocation(line: 134, column: 5, scope: !205)
!207 = !DILocation(line: 137, column: 25, scope: !104)
!208 = !DILocation(line: 137, column: 34, scope: !104)
!209 = !DILocation(line: 137, column: 44, scope: !104)
!210 = !DILocation(line: 138, column: 25, scope: !104)
!211 = !DILocation(line: 138, column: 34, scope: !104)
!212 = !DILocation(line: 138, column: 44, scope: !104)
!213 = !DILocation(line: 139, column: 34, scope: !104)
!214 = !DILocation(line: 139, column: 44, scope: !104)
!215 = !DILocation(line: 140, column: 25, scope: !104)
!216 = !DILocation(line: 140, column: 35, scope: !104)
!217 = !DILocation(line: 141, column: 25, scope: !104)
!218 = !DILocation(line: 141, column: 35, scope: !104)
!219 = !DILocation(line: 142, column: 25, scope: !104)
!220 = !DILocation(line: 142, column: 35, scope: !104)
!221 = !DILocation(line: 144, column: 35, scope: !104)
!222 = !DILocation(line: 145, column: 35, scope: !104)
!223 = !DILocation(line: 146, column: 44, scope: !104)
!224 = !DILocation(line: 147, column: 33, scope: !104)
!225 = !DILocation(line: 147, column: 46, scope: !104)
!226 = !DILocalVariable(name: "a", arg: 1, scope: !227, file: !2, line: 34, type: !230)
!227 = distinct !DISubprogram(name: "locMax3", scope: !2, file: !2, line: 34, type: !228, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !231)
!228 = !DISubroutineType(types: !229)
!229 = !{!38, !230, !230, !230}
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!231 = !{!226, !232, !233, !234}
!232 = !DILocalVariable(name: "b", arg: 2, scope: !227, file: !2, line: 34, type: !230)
!233 = !DILocalVariable(name: "c", arg: 3, scope: !227, file: !2, line: 34, type: !230)
!234 = !DILocalVariable(name: "d", scope: !227, file: !2, line: 36, type: !38)
!235 = !DILocation(line: 0, scope: !227, inlinedAt: !236)
!236 = distinct !DILocation(line: 147, column: 16, scope: !104)
!237 = !DILocation(line: 37, column: 10, scope: !227, inlinedAt: !236)
!238 = !DILocalVariable(name: "a", arg: 1, scope: !239, file: !2, line: 42, type: !230)
!239 = distinct !DISubprogram(name: "locMin3", scope: !2, file: !2, line: 42, type: !228, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !240)
!240 = !{!238, !241, !242, !243}
!241 = !DILocalVariable(name: "b", arg: 2, scope: !239, file: !2, line: 42, type: !230)
!242 = !DILocalVariable(name: "c", arg: 3, scope: !239, file: !2, line: 42, type: !230)
!243 = !DILocalVariable(name: "d", scope: !239, file: !2, line: 44, type: !38)
!244 = !DILocation(line: 0, scope: !239, inlinedAt: !245)
!245 = distinct !DILocation(line: 148, column: 16, scope: !104)
!246 = !DILocation(line: 44, column: 11, scope: !239, inlinedAt: !245)
!247 = !DILocation(line: 45, column: 10, scope: !239, inlinedAt: !245)
!248 = !DILocation(line: 152, column: 5, scope: !104)
!249 = !DILocation(line: 154, column: 15, scope: !104)
!250 = !DILocation(line: 155, column: 15, scope: !104)
!251 = !DILocation(line: 156, column: 38, scope: !104)
!252 = !DILocation(line: 156, column: 15, scope: !104)
!253 = !DILocation(line: 157, column: 15, scope: !104)
!254 = !DILocation(line: 158, column: 15, scope: !104)
!255 = !DILocation(line: 159, column: 15, scope: !104)
!256 = !DILocation(line: 161, column: 29, scope: !104)
!257 = !DILocation(line: 161, column: 40, scope: !104)
!258 = !DILocation(line: 161, column: 51, scope: !104)
!259 = !DILocation(line: 161, column: 62, scope: !104)
!260 = !DILocation(line: 161, column: 73, scope: !104)
!261 = !DILocation(line: 162, column: 31, scope: !104)
!262 = !DILocation(line: 162, column: 41, scope: !104)
!263 = !DILocation(line: 162, column: 37, scope: !104)
!264 = !DILocation(line: 161, column: 21, scope: !104)
!265 = !DILocation(line: 163, column: 29, scope: !104)
!266 = !DILocation(line: 163, column: 40, scope: !104)
!267 = !DILocation(line: 163, column: 51, scope: !104)
!268 = !DILocation(line: 163, column: 62, scope: !104)
!269 = !DILocation(line: 163, column: 73, scope: !104)
!270 = !DILocation(line: 164, column: 31, scope: !104)
!271 = !DILocation(line: 164, column: 55, scope: !104)
!272 = !DILocation(line: 164, column: 53, scope: !104)
!273 = !DILocation(line: 163, column: 21, scope: !104)
!274 = !DILocation(line: 166, column: 22, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 166, column: 5)
!276 = distinct !DILexicalBlock(scope: !104, file: !2, line: 166, column: 5)
!277 = !DILocation(line: 166, column: 5, scope: !276)
!278 = !DILocation(line: 155, column: 12, scope: !104)
!279 = !DILocation(line: 156, column: 12, scope: !104)
!280 = !DILocation(line: 157, column: 12, scope: !104)
!281 = !DILocation(line: 158, column: 12, scope: !104)
!282 = !DILocation(line: 159, column: 12, scope: !104)
!283 = !DILocation(line: 167, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !275, file: !2, line: 166, column: 36)
!285 = !DILocation(line: 167, column: 14, scope: !284)
!286 = !DILocation(line: 168, column: 46, scope: !284)
!287 = !DILocation(line: 168, column: 17, scope: !284)
!288 = !DILocation(line: 168, column: 14, scope: !284)
!289 = !DILocation(line: 169, column: 46, scope: !284)
!290 = !DILocation(line: 169, column: 17, scope: !284)
!291 = !DILocation(line: 169, column: 14, scope: !284)
!292 = !DILocation(line: 170, column: 38, scope: !284)
!293 = !DILocation(line: 170, column: 48, scope: !284)
!294 = !DILocation(line: 170, column: 58, scope: !284)
!295 = !DILocation(line: 170, column: 62, scope: !284)
!296 = !DILocation(line: 171, column: 38, scope: !284)
!297 = !DILocation(line: 171, column: 48, scope: !284)
!298 = !DILocation(line: 171, column: 58, scope: !284)
!299 = !DILocation(line: 171, column: 62, scope: !284)
!300 = !DILocation(line: 170, column: 17, scope: !284)
!301 = !DILocation(line: 174, column: 18, scope: !302)
!302 = distinct !DILexicalBlock(scope: !284, file: !2, line: 174, column: 11)
!303 = !DILocation(line: 174, column: 11, scope: !284)
!304 = !DILocation(line: 143, column: 35, scope: !104)
!305 = !DILocation(line: 149, column: 19, scope: !104)
!306 = !DILocation(line: 178, column: 11, scope: !284)
!307 = !DILocation(line: 184, column: 23, scope: !284)
!308 = !DILocation(line: 166, column: 32, scope: !275)
!309 = !DILocation(line: 175, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 175, column: 9)
!311 = distinct !DILexicalBlock(scope: !302, file: !2, line: 174, column: 24)
!312 = !DILocation(line: 175, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !2, line: 175, column: 9)
!314 = !DILocation(line: 178, column: 16, scope: !315)
!315 = distinct !DILexicalBlock(scope: !284, file: !2, line: 178, column: 11)
!316 = !DILocation(line: 186, column: 14, scope: !284)
!317 = distinct !{!317, !277, !318, !319, !320}
!318 = !DILocation(line: 187, column: 5, scope: !276)
!319 = !{!"llvm.loop.mustprogress"}
!320 = !{!"llvm.loop.peeled.count", i32 1}
!321 = !DILocation(line: 151, column: 12, scope: !104)
!322 = !DILocation(line: 189, column: 18, scope: !104)
!323 = !DILocation(line: 190, column: 13, scope: !104)
!324 = !DILocation(line: 191, column: 42, scope: !104)
!325 = !DILocation(line: 192, column: 50, scope: !104)
!326 = !DILocation(line: 192, column: 44, scope: !104)
!327 = !DILocation(line: 192, column: 42, scope: !104)
!328 = !DILocation(line: 192, column: 60, scope: !104)
!329 = !DILocation(line: 192, column: 58, scope: !104)
!330 = !DILocation(line: 192, column: 17, scope: !104)
!331 = !DILocation(line: 194, column: 5, scope: !104)
!332 = !DILocation(line: 195, column: 3, scope: !105)
!333 = !DILocation(line: 0, scope: !107)
!334 = !DILocation(line: 196, column: 1, scope: !84)
!335 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338, !338, !38, !38}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!340 = !DISubprogram(name: "gsl_sf_lnchoose_e", scope: !341, file: !341, line: 152, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!342 = !DISubroutineType(types: !343)
!343 = !{!38, !344, !344, !87}
!344 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!345 = !DISubprogram(name: "log", scope: !346, file: !346, line: 104, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!347 = !DISubroutineType(types: !348)
!348 = !{!93, !93}
!349 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !350, file: !350, line: 110, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!351 = !DISubroutineType(types: !352)
!352 = !{!38, !353, !353, !87}
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!354 = distinct !DISubprogram(name: "gsl_sf_coupling_6j_e", scope: !2, file: !2, line: 212, type: !85, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !386, !387, !388, !389, !390}
!356 = !DILocalVariable(name: "two_ja", arg: 1, scope: !354, file: !2, line: 212, type: !38)
!357 = !DILocalVariable(name: "two_jb", arg: 2, scope: !354, file: !2, line: 212, type: !38)
!358 = !DILocalVariable(name: "two_jc", arg: 3, scope: !354, file: !2, line: 212, type: !38)
!359 = !DILocalVariable(name: "two_jd", arg: 4, scope: !354, file: !2, line: 213, type: !38)
!360 = !DILocalVariable(name: "two_je", arg: 5, scope: !354, file: !2, line: 213, type: !38)
!361 = !DILocalVariable(name: "two_jf", arg: 6, scope: !354, file: !2, line: 213, type: !38)
!362 = !DILocalVariable(name: "result", arg: 7, scope: !354, file: !2, line: 214, type: !87)
!363 = !DILocalVariable(name: "n1", scope: !364, file: !2, line: 233, type: !88)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 232, column: 8)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 223, column: 14)
!366 = distinct !DILexicalBlock(scope: !354, file: !2, line: 218, column: 9)
!367 = !DILocalVariable(name: "d1", scope: !364, file: !2, line: 234, type: !88)
!368 = !DILocalVariable(name: "d2", scope: !364, file: !2, line: 234, type: !88)
!369 = !DILocalVariable(name: "d3", scope: !364, file: !2, line: 234, type: !88)
!370 = !DILocalVariable(name: "d4", scope: !364, file: !2, line: 234, type: !88)
!371 = !DILocalVariable(name: "d5", scope: !364, file: !2, line: 234, type: !88)
!372 = !DILocalVariable(name: "d6", scope: !364, file: !2, line: 234, type: !88)
!373 = !DILocalVariable(name: "norm", scope: !364, file: !2, line: 235, type: !93)
!374 = !DILocalVariable(name: "tk", scope: !364, file: !2, line: 236, type: !38)
!375 = !DILocalVariable(name: "tkmin", scope: !364, file: !2, line: 236, type: !38)
!376 = !DILocalVariable(name: "tkmax", scope: !364, file: !2, line: 236, type: !38)
!377 = !DILocalVariable(name: "phase", scope: !364, file: !2, line: 237, type: !93)
!378 = !DILocalVariable(name: "sum_pos", scope: !364, file: !2, line: 238, type: !93)
!379 = !DILocalVariable(name: "sum_neg", scope: !364, file: !2, line: 239, type: !93)
!380 = !DILocalVariable(name: "sumsq_err", scope: !364, file: !2, line: 240, type: !93)
!381 = !DILocalVariable(name: "status", scope: !364, file: !2, line: 241, type: !38)
!382 = !DILocalVariable(name: "term", scope: !383, file: !2, line: 266, type: !93)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 265, column: 39)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 265, column: 5)
!385 = distinct !DILexicalBlock(scope: !364, file: !2, line: 265, column: 5)
!386 = !DILocalVariable(name: "term_err", scope: !383, file: !2, line: 267, type: !93)
!387 = !DILocalVariable(name: "den_1", scope: !383, file: !2, line: 268, type: !88)
!388 = !DILocalVariable(name: "den_2", scope: !383, file: !2, line: 268, type: !88)
!389 = !DILocalVariable(name: "d1_a", scope: !383, file: !2, line: 269, type: !88)
!390 = !DILocalVariable(name: "d1_b", scope: !383, file: !2, line: 269, type: !88)
!391 = distinct !DIAssignID()
!392 = !DILocation(line: 0, scope: !364)
!393 = distinct !DIAssignID()
!394 = distinct !DIAssignID()
!395 = distinct !DIAssignID()
!396 = distinct !DIAssignID()
!397 = distinct !DIAssignID()
!398 = distinct !DIAssignID()
!399 = distinct !DIAssignID()
!400 = !DILocation(line: 0, scope: !383)
!401 = distinct !DIAssignID()
!402 = !DILocation(line: 0, scope: !354)
!403 = !DILocation(line: 218, column: 20, scope: !366)
!404 = !DILocation(line: 221, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 221, column: 5)
!406 = distinct !DILexicalBlock(scope: !366, file: !2, line: 220, column: 8)
!407 = !DILocation(line: 221, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !2, line: 221, column: 5)
!409 = !DILocation(line: 0, scope: !161, inlinedAt: !410)
!410 = distinct !DILocation(line: 223, column: 14, scope: !365)
!411 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !410)
!412 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !410)
!413 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !410)
!414 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !410)
!415 = !DILocation(line: 223, column: 14, scope: !365)
!416 = !DILocation(line: 224, column: 11, scope: !365)
!417 = !DILocation(line: 0, scope: !161, inlinedAt: !418)
!418 = distinct !DILocation(line: 224, column: 14, scope: !365)
!419 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !418)
!420 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !418)
!421 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !418)
!422 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !418)
!423 = !DILocation(line: 224, column: 14, scope: !365)
!424 = !DILocation(line: 225, column: 11, scope: !365)
!425 = !DILocation(line: 0, scope: !161, inlinedAt: !426)
!426 = distinct !DILocation(line: 225, column: 14, scope: !365)
!427 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !426)
!428 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !426)
!429 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !426)
!430 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !426)
!431 = !DILocation(line: 225, column: 14, scope: !365)
!432 = !DILocation(line: 226, column: 11, scope: !365)
!433 = !DILocation(line: 0, scope: !161, inlinedAt: !434)
!434 = distinct !DILocation(line: 226, column: 14, scope: !365)
!435 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !434)
!436 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !434)
!437 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !434)
!438 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !434)
!439 = !DILocation(line: 226, column: 14, scope: !365)
!440 = !DILocation(line: 223, column: 14, scope: !366)
!441 = !DILocation(line: 229, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !365, file: !2, line: 227, column: 8)
!443 = !DILocation(line: 230, column: 5, scope: !442)
!444 = !DILocation(line: 233, column: 5, scope: !364)
!445 = !DILocation(line: 234, column: 5, scope: !364)
!446 = !DILocation(line: 242, column: 15, scope: !364)
!447 = !{i32 0, i32 17}
!448 = !DILocation(line: 243, column: 15, scope: !364)
!449 = !DILocation(line: 243, column: 12, scope: !364)
!450 = !DILocation(line: 244, column: 15, scope: !364)
!451 = !DILocation(line: 244, column: 12, scope: !364)
!452 = !DILocation(line: 245, column: 15, scope: !364)
!453 = !DILocation(line: 246, column: 15, scope: !454)
!454 = distinct !DILexicalBlock(scope: !364, file: !2, line: 246, column: 8)
!455 = !DILocation(line: 246, column: 8, scope: !364)
!456 = !DILocation(line: 247, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 247, column: 7)
!458 = distinct !DILexicalBlock(scope: !454, file: !2, line: 246, column: 31)
!459 = !DILocation(line: 247, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !2, line: 247, column: 7)
!461 = !DILocation(line: 249, column: 20, scope: !364)
!462 = !DILocation(line: 249, column: 12, scope: !364)
!463 = !DILocation(line: 249, column: 35, scope: !364)
!464 = !DILocation(line: 249, column: 27, scope: !364)
!465 = !DILocation(line: 249, column: 25, scope: !364)
!466 = !DILocation(line: 249, column: 50, scope: !364)
!467 = !DILocation(line: 249, column: 42, scope: !364)
!468 = !DILocation(line: 249, column: 40, scope: !364)
!469 = !DILocation(line: 249, column: 65, scope: !364)
!470 = !DILocation(line: 249, column: 57, scope: !364)
!471 = !DILocation(line: 249, column: 55, scope: !364)
!472 = !DILocation(line: 252, column: 27, scope: !364)
!473 = !DILocation(line: 252, column: 45, scope: !364)
!474 = !DILocation(line: 253, column: 27, scope: !364)
!475 = !DILocation(line: 253, column: 45, scope: !364)
!476 = !DILocation(line: 0, scope: !227, inlinedAt: !477)
!477 = distinct !DILocation(line: 251, column: 13, scope: !364)
!478 = !DILocation(line: 37, column: 10, scope: !227, inlinedAt: !477)
!479 = !DILocation(line: 255, column: 28, scope: !364)
!480 = !DILocation(line: 255, column: 37, scope: !364)
!481 = !DILocation(line: 255, column: 46, scope: !364)
!482 = !DILocation(line: 255, column: 55, scope: !364)
!483 = !DILocation(line: 256, column: 37, scope: !364)
!484 = !DILocation(line: 257, column: 37, scope: !364)
!485 = !DILocation(line: 258, column: 28, scope: !364)
!486 = !DILocation(line: 258, column: 37, scope: !364)
!487 = !DILocation(line: 259, column: 28, scope: !364)
!488 = !DILocation(line: 259, column: 37, scope: !364)
!489 = !DILocalVariable(name: "a", arg: 1, scope: !490, file: !2, line: 50, type: !230)
!490 = distinct !DISubprogram(name: "locMin5", scope: !2, file: !2, line: 50, type: !491, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!38, !230, !230, !230, !230, !230}
!493 = !{!489, !494, !495, !496, !497, !498, !499, !500}
!494 = !DILocalVariable(name: "b", arg: 2, scope: !490, file: !2, line: 50, type: !230)
!495 = !DILocalVariable(name: "c", arg: 3, scope: !490, file: !2, line: 50, type: !230)
!496 = !DILocalVariable(name: "d", arg: 4, scope: !490, file: !2, line: 50, type: !230)
!497 = !DILocalVariable(name: "e", arg: 5, scope: !490, file: !2, line: 50, type: !230)
!498 = !DILocalVariable(name: "f", scope: !490, file: !2, line: 52, type: !38)
!499 = !DILocalVariable(name: "g", scope: !490, file: !2, line: 53, type: !38)
!500 = !DILocalVariable(name: "h", scope: !490, file: !2, line: 54, type: !38)
!501 = !DILocation(line: 0, scope: !490, inlinedAt: !502)
!502 = distinct !DILocation(line: 255, column: 13, scope: !364)
!503 = !DILocation(line: 52, column: 11, scope: !490, inlinedAt: !502)
!504 = !DILocation(line: 53, column: 11, scope: !490, inlinedAt: !502)
!505 = !DILocation(line: 54, column: 11, scope: !490, inlinedAt: !502)
!506 = !DILocation(line: 55, column: 10, scope: !490, inlinedAt: !502)
!507 = !DILocation(line: 265, column: 21, scope: !384)
!508 = !DILocation(line: 265, column: 5, scope: !385)
!509 = !DILocation(line: 261, column: 13, scope: !364)
!510 = !DILocation(line: 269, column: 7, scope: !383)
!511 = !DILocation(line: 272, column: 66, scope: !383)
!512 = !DILocation(line: 272, column: 71, scope: !383)
!513 = !DILocation(line: 272, column: 74, scope: !383)
!514 = !DILocation(line: 272, column: 17, scope: !383)
!515 = !DILocation(line: 273, column: 33, scope: !383)
!516 = !DILocation(line: 273, column: 17, scope: !383)
!517 = !DILocation(line: 273, column: 14, scope: !383)
!518 = !DILocation(line: 274, column: 66, scope: !383)
!519 = !DILocation(line: 274, column: 71, scope: !383)
!520 = !DILocation(line: 274, column: 17, scope: !383)
!521 = !DILocation(line: 274, column: 14, scope: !383)
!522 = !DILocation(line: 275, column: 66, scope: !383)
!523 = !DILocation(line: 275, column: 71, scope: !383)
!524 = !DILocation(line: 275, column: 17, scope: !383)
!525 = !DILocation(line: 275, column: 14, scope: !383)
!526 = !DILocation(line: 276, column: 57, scope: !383)
!527 = !DILocation(line: 276, column: 62, scope: !383)
!528 = !DILocation(line: 276, column: 17, scope: !383)
!529 = !DILocation(line: 276, column: 14, scope: !383)
!530 = !DILocation(line: 277, column: 57, scope: !383)
!531 = !DILocation(line: 277, column: 62, scope: !383)
!532 = !DILocation(line: 277, column: 17, scope: !383)
!533 = !DILocation(line: 277, column: 14, scope: !383)
!534 = !DILocation(line: 278, column: 57, scope: !383)
!535 = !DILocation(line: 278, column: 62, scope: !383)
!536 = !DILocation(line: 278, column: 17, scope: !383)
!537 = !DILocation(line: 278, column: 14, scope: !383)
!538 = !DILocation(line: 279, column: 57, scope: !383)
!539 = !DILocation(line: 279, column: 62, scope: !383)
!540 = !DILocation(line: 279, column: 17, scope: !383)
!541 = !DILocation(line: 281, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !383, file: !2, line: 281, column: 10)
!543 = !DILocation(line: 281, column: 10, scope: !383)
!544 = !DILocation(line: 282, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 282, column: 9)
!546 = distinct !DILexicalBlock(scope: !542, file: !2, line: 281, column: 33)
!547 = !DILocation(line: 282, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !2, line: 282, column: 9)
!549 = !DILocation(line: 312, column: 5, scope: !384)
!550 = !DILocation(line: 285, column: 21, scope: !383)
!551 = !DILocation(line: 285, column: 32, scope: !383)
!552 = !DILocation(line: 285, column: 25, scope: !383)
!553 = distinct !DIAssignID()
!554 = !DILocation(line: 286, column: 21, scope: !383)
!555 = !DILocation(line: 286, column: 27, scope: !383)
!556 = !DILocation(line: 286, column: 25, scope: !383)
!557 = !DILocation(line: 286, column: 44, scope: !383)
!558 = !DILocation(line: 286, column: 66, scope: !383)
!559 = !DILocation(line: 286, column: 59, scope: !383)
!560 = !DILocation(line: 288, column: 30, scope: !383)
!561 = distinct !DIAssignID()
!562 = !DILocation(line: 288, column: 26, scope: !383)
!563 = !DILocation(line: 288, column: 37, scope: !383)
!564 = !DILocation(line: 288, column: 33, scope: !383)
!565 = !DILocation(line: 289, column: 40, scope: !383)
!566 = !DILocation(line: 289, column: 29, scope: !383)
!567 = !DILocation(line: 289, column: 27, scope: !383)
!568 = !DILocation(line: 290, column: 23, scope: !383)
!569 = !DILocation(line: 290, column: 40, scope: !383)
!570 = !DILocation(line: 290, column: 29, scope: !383)
!571 = !DILocation(line: 290, column: 27, scope: !383)
!572 = !DILocation(line: 291, column: 23, scope: !383)
!573 = !DILocation(line: 291, column: 29, scope: !383)
!574 = !DILocation(line: 291, column: 27, scope: !383)
!575 = !DILocation(line: 293, column: 23, scope: !383)
!576 = !DILocation(line: 293, column: 30, scope: !383)
!577 = !DILocation(line: 293, column: 26, scope: !383)
!578 = !DILocation(line: 293, column: 37, scope: !383)
!579 = !DILocation(line: 293, column: 33, scope: !383)
!580 = !DILocation(line: 294, column: 23, scope: !383)
!581 = !DILocation(line: 294, column: 40, scope: !383)
!582 = !DILocation(line: 294, column: 29, scope: !383)
!583 = !DILocation(line: 294, column: 27, scope: !383)
!584 = !DILocation(line: 295, column: 23, scope: !383)
!585 = !DILocation(line: 295, column: 40, scope: !383)
!586 = !DILocation(line: 295, column: 29, scope: !383)
!587 = !DILocation(line: 295, column: 27, scope: !383)
!588 = !DILocation(line: 296, column: 23, scope: !383)
!589 = !DILocation(line: 296, column: 29, scope: !383)
!590 = !DILocation(line: 296, column: 27, scope: !383)
!591 = !DILocation(line: 298, column: 26, scope: !383)
!592 = !DILocation(line: 298, column: 21, scope: !383)
!593 = !DILocation(line: 298, column: 30, scope: !383)
!594 = !DILocation(line: 298, column: 42, scope: !383)
!595 = !DILocation(line: 299, column: 15, scope: !383)
!596 = !DILocation(line: 300, column: 22, scope: !383)
!597 = !DILocation(line: 300, column: 28, scope: !383)
!598 = !DILocation(line: 300, column: 26, scope: !383)
!599 = !DILocation(line: 300, column: 46, scope: !383)
!600 = !DILocation(line: 300, column: 44, scope: !383)
!601 = !DILocation(line: 301, column: 29, scope: !383)
!602 = !DILocation(line: 301, column: 19, scope: !383)
!603 = !DILocation(line: 301, column: 42, scope: !383)
!604 = !DILocation(line: 302, column: 29, scope: !383)
!605 = !DILocation(line: 302, column: 19, scope: !383)
!606 = !DILocation(line: 302, column: 42, scope: !383)
!607 = !DILocation(line: 304, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !383, file: !2, line: 304, column: 10)
!609 = !DILocation(line: 304, column: 10, scope: !383)
!610 = !DILocation(line: 311, column: 30, scope: !383)
!611 = !DILocation(line: 311, column: 40, scope: !383)
!612 = !DILocation(line: 265, column: 33, scope: !384)
!613 = distinct !{!613, !508, !614, !319}
!614 = !DILocation(line: 312, column: 5, scope: !385)
!615 = !DILocation(line: 240, column: 12, scope: !364)
!616 = !DILocation(line: 239, column: 12, scope: !364)
!617 = !DILocation(line: 238, column: 12, scope: !364)
!618 = !DILocation(line: 314, column: 18, scope: !364)
!619 = !DILocation(line: 315, column: 42, scope: !364)
!620 = !DILocation(line: 315, column: 13, scope: !364)
!621 = !DILocation(line: 315, column: 18, scope: !364)
!622 = !DILocation(line: 316, column: 48, scope: !364)
!623 = !DILocation(line: 316, column: 42, scope: !364)
!624 = !DILocation(line: 316, column: 41, scope: !364)
!625 = !DILocation(line: 316, column: 35, scope: !364)
!626 = !DILocation(line: 316, column: 20, scope: !364)
!627 = !DILocation(line: 316, column: 17, scope: !364)
!628 = !DILocation(line: 317, column: 59, scope: !364)
!629 = !DILocation(line: 317, column: 42, scope: !364)
!630 = !DILocation(line: 317, column: 81, scope: !364)
!631 = !DILocation(line: 317, column: 68, scope: !364)
!632 = !DILocation(line: 317, column: 66, scope: !364)
!633 = !DILocation(line: 317, column: 17, scope: !364)
!634 = !DILocation(line: 319, column: 5, scope: !364)
!635 = !DILocation(line: 320, column: 3, scope: !365)
!636 = !DILocation(line: 0, scope: !366)
!637 = !DILocation(line: 321, column: 1, scope: !354)
!638 = distinct !DISubprogram(name: "delta", scope: !2, file: !2, line: 63, type: !639, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!38, !38, !38, !38, !87}
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650}
!642 = !DILocalVariable(name: "ta", arg: 1, scope: !638, file: !2, line: 63, type: !38)
!643 = !DILocalVariable(name: "tb", arg: 2, scope: !638, file: !2, line: 63, type: !38)
!644 = !DILocalVariable(name: "tc", arg: 3, scope: !638, file: !2, line: 63, type: !38)
!645 = !DILocalVariable(name: "d", arg: 4, scope: !638, file: !2, line: 63, type: !87)
!646 = !DILocalVariable(name: "f1", scope: !638, file: !2, line: 65, type: !88)
!647 = !DILocalVariable(name: "f2", scope: !638, file: !2, line: 65, type: !88)
!648 = !DILocalVariable(name: "f3", scope: !638, file: !2, line: 65, type: !88)
!649 = !DILocalVariable(name: "f4", scope: !638, file: !2, line: 65, type: !88)
!650 = !DILocalVariable(name: "status", scope: !638, file: !2, line: 66, type: !38)
!651 = distinct !DIAssignID()
!652 = !DILocation(line: 0, scope: !638)
!653 = distinct !DIAssignID()
!654 = distinct !DIAssignID()
!655 = distinct !DIAssignID()
!656 = !DILocation(line: 65, column: 3, scope: !638)
!657 = !DILocation(line: 67, column: 31, scope: !638)
!658 = !DILocation(line: 67, column: 36, scope: !638)
!659 = !DILocation(line: 67, column: 41, scope: !638)
!660 = !DILocation(line: 67, column: 13, scope: !638)
!661 = !DILocation(line: 68, column: 31, scope: !638)
!662 = !DILocation(line: 68, column: 36, scope: !638)
!663 = !DILocation(line: 68, column: 41, scope: !638)
!664 = !DILocation(line: 68, column: 13, scope: !638)
!665 = !DILocation(line: 68, column: 10, scope: !638)
!666 = !DILocation(line: 69, column: 31, scope: !638)
!667 = !DILocation(line: 69, column: 36, scope: !638)
!668 = !DILocation(line: 69, column: 41, scope: !638)
!669 = !DILocation(line: 69, column: 13, scope: !638)
!670 = !DILocation(line: 69, column: 10, scope: !638)
!671 = !DILocation(line: 70, column: 36, scope: !638)
!672 = !DILocation(line: 70, column: 41, scope: !638)
!673 = !DILocation(line: 70, column: 44, scope: !638)
!674 = !DILocation(line: 70, column: 13, scope: !638)
!675 = !DILocation(line: 71, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !638, file: !2, line: 71, column: 6)
!677 = !DILocation(line: 71, column: 6, scope: !638)
!678 = !DILocation(line: 72, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 72, column: 5)
!680 = distinct !DILexicalBlock(scope: !676, file: !2, line: 71, column: 19)
!681 = !DILocation(line: 72, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !2, line: 72, column: 5)
!683 = !DILocation(line: 74, column: 15, scope: !638)
!684 = !DILocation(line: 74, column: 24, scope: !638)
!685 = !DILocation(line: 74, column: 19, scope: !638)
!686 = !DILocation(line: 74, column: 33, scope: !638)
!687 = !DILocation(line: 74, column: 28, scope: !638)
!688 = !DILocation(line: 74, column: 42, scope: !638)
!689 = !DILocation(line: 74, column: 37, scope: !638)
!690 = !DILocation(line: 74, column: 10, scope: !638)
!691 = !DILocation(line: 75, column: 36, scope: !638)
!692 = !DILocation(line: 75, column: 34, scope: !638)
!693 = !DILocation(line: 75, column: 6, scope: !638)
!694 = !DILocation(line: 75, column: 10, scope: !638)
!695 = !DILocation(line: 76, column: 3, scope: !638)
!696 = !DILocation(line: 77, column: 1, scope: !638)
!697 = !DISubprogram(name: "sqrt", scope: !346, file: !346, line: 143, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubprogram(name: "gsl_sf_fact_e", scope: !341, file: !341, line: 119, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DISubroutineType(types: !700)
!700 = !{!38, !701, !87}
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!702 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW_e", scope: !2, file: !2, line: 325, type: !85, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712}
!704 = !DILocalVariable(name: "two_ja", arg: 1, scope: !702, file: !2, line: 325, type: !38)
!705 = !DILocalVariable(name: "two_jb", arg: 2, scope: !702, file: !2, line: 325, type: !38)
!706 = !DILocalVariable(name: "two_jc", arg: 3, scope: !702, file: !2, line: 325, type: !38)
!707 = !DILocalVariable(name: "two_jd", arg: 4, scope: !702, file: !2, line: 326, type: !38)
!708 = !DILocalVariable(name: "two_je", arg: 5, scope: !702, file: !2, line: 326, type: !38)
!709 = !DILocalVariable(name: "two_jf", arg: 6, scope: !702, file: !2, line: 326, type: !38)
!710 = !DILocalVariable(name: "result", arg: 7, scope: !702, file: !2, line: 327, type: !87)
!711 = !DILocalVariable(name: "status", scope: !702, file: !2, line: 329, type: !38)
!712 = !DILocalVariable(name: "phase_sum", scope: !702, file: !2, line: 330, type: !38)
!713 = !DILocation(line: 0, scope: !702)
!714 = !DILocation(line: 329, column: 16, scope: !702)
!715 = !DILocation(line: 330, column: 27, scope: !702)
!716 = !DILocation(line: 330, column: 36, scope: !702)
!717 = !DILocation(line: 330, column: 45, scope: !702)
!718 = !DILocation(line: 330, column: 54, scope: !702)
!719 = !DILocation(line: 331, column: 20, scope: !702)
!720 = !DILocation(line: 331, column: 15, scope: !702)
!721 = !DILocation(line: 332, column: 3, scope: !702)
!722 = distinct !DISubprogram(name: "gsl_sf_coupling_9j_e", scope: !2, file: !2, line: 337, type: !723, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!38, !38, !38, !38, !38, !38, !38, !38, !38, !38, !87}
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !740, !741, !742, !743, !744, !745, !746, !750, !751, !752, !753, !754}
!726 = !DILocalVariable(name: "two_ja", arg: 1, scope: !722, file: !2, line: 337, type: !38)
!727 = !DILocalVariable(name: "two_jb", arg: 2, scope: !722, file: !2, line: 337, type: !38)
!728 = !DILocalVariable(name: "two_jc", arg: 3, scope: !722, file: !2, line: 337, type: !38)
!729 = !DILocalVariable(name: "two_jd", arg: 4, scope: !722, file: !2, line: 338, type: !38)
!730 = !DILocalVariable(name: "two_je", arg: 5, scope: !722, file: !2, line: 338, type: !38)
!731 = !DILocalVariable(name: "two_jf", arg: 6, scope: !722, file: !2, line: 338, type: !38)
!732 = !DILocalVariable(name: "two_jg", arg: 7, scope: !722, file: !2, line: 339, type: !38)
!733 = !DILocalVariable(name: "two_jh", arg: 8, scope: !722, file: !2, line: 339, type: !38)
!734 = !DILocalVariable(name: "two_ji", arg: 9, scope: !722, file: !2, line: 339, type: !38)
!735 = !DILocalVariable(name: "result", arg: 10, scope: !722, file: !2, line: 340, type: !87)
!736 = !DILocalVariable(name: "tk", scope: !737, file: !2, line: 362, type: !38)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 361, column: 8)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 350, column: 14)
!739 = distinct !DILexicalBlock(scope: !722, file: !2, line: 344, column: 9)
!740 = !DILocalVariable(name: "tkmin", scope: !737, file: !2, line: 363, type: !38)
!741 = !DILocalVariable(name: "tkmax", scope: !737, file: !2, line: 364, type: !38)
!742 = !DILocalVariable(name: "sum_pos", scope: !737, file: !2, line: 365, type: !93)
!743 = !DILocalVariable(name: "sum_neg", scope: !737, file: !2, line: 366, type: !93)
!744 = !DILocalVariable(name: "sumsq_err", scope: !737, file: !2, line: 367, type: !93)
!745 = !DILocalVariable(name: "phase", scope: !737, file: !2, line: 368, type: !93)
!746 = !DILocalVariable(name: "s1", scope: !747, file: !2, line: 370, type: !88)
!747 = distinct !DILexicalBlock(scope: !748, file: !2, line: 369, column: 39)
!748 = distinct !DILexicalBlock(scope: !749, file: !2, line: 369, column: 5)
!749 = distinct !DILexicalBlock(scope: !737, file: !2, line: 369, column: 5)
!750 = !DILocalVariable(name: "s2", scope: !747, file: !2, line: 370, type: !88)
!751 = !DILocalVariable(name: "s3", scope: !747, file: !2, line: 370, type: !88)
!752 = !DILocalVariable(name: "term", scope: !747, file: !2, line: 371, type: !93)
!753 = !DILocalVariable(name: "term_err", scope: !747, file: !2, line: 372, type: !93)
!754 = !DILocalVariable(name: "status", scope: !747, file: !2, line: 373, type: !38)
!755 = distinct !DIAssignID()
!756 = !DILocation(line: 0, scope: !747)
!757 = distinct !DIAssignID()
!758 = distinct !DIAssignID()
!759 = !DILocation(line: 0, scope: !722)
!760 = !DILocation(line: 344, column: 20, scope: !739)
!761 = !DILocation(line: 348, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 348, column: 5)
!763 = distinct !DILexicalBlock(scope: !739, file: !2, line: 347, column: 8)
!764 = !DILocation(line: 348, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !2, line: 348, column: 5)
!766 = !DILocation(line: 0, scope: !161, inlinedAt: !767)
!767 = distinct !DILocation(line: 350, column: 14, scope: !738)
!768 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !767)
!769 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !767)
!770 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !767)
!771 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !767)
!772 = !DILocation(line: 350, column: 14, scope: !738)
!773 = !DILocation(line: 351, column: 11, scope: !738)
!774 = !DILocation(line: 0, scope: !161, inlinedAt: !775)
!775 = distinct !DILocation(line: 351, column: 14, scope: !738)
!776 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !775)
!777 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !775)
!778 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !775)
!779 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !775)
!780 = !DILocation(line: 351, column: 14, scope: !738)
!781 = !DILocation(line: 352, column: 11, scope: !738)
!782 = !DILocation(line: 0, scope: !161, inlinedAt: !783)
!783 = distinct !DILocation(line: 352, column: 14, scope: !738)
!784 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !783)
!785 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !783)
!786 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !783)
!787 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !783)
!788 = !DILocation(line: 352, column: 14, scope: !738)
!789 = !DILocation(line: 353, column: 11, scope: !738)
!790 = !DILocation(line: 0, scope: !161, inlinedAt: !791)
!791 = distinct !DILocation(line: 353, column: 14, scope: !738)
!792 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !791)
!793 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !791)
!794 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !791)
!795 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !791)
!796 = !DILocation(line: 353, column: 14, scope: !738)
!797 = !DILocation(line: 354, column: 11, scope: !738)
!798 = !DILocation(line: 0, scope: !161, inlinedAt: !799)
!799 = distinct !DILocation(line: 354, column: 14, scope: !738)
!800 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !799)
!801 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !799)
!802 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !799)
!803 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !799)
!804 = !DILocation(line: 354, column: 14, scope: !738)
!805 = !DILocation(line: 355, column: 11, scope: !738)
!806 = !DILocation(line: 0, scope: !161, inlinedAt: !807)
!807 = distinct !DILocation(line: 355, column: 14, scope: !738)
!808 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !807)
!809 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !807)
!810 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !807)
!811 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !807)
!812 = !DILocation(line: 355, column: 14, scope: !738)
!813 = !DILocation(line: 350, column: 14, scope: !739)
!814 = !DILocation(line: 358, column: 17, scope: !815)
!815 = distinct !DILexicalBlock(scope: !738, file: !2, line: 356, column: 8)
!816 = !DILocation(line: 359, column: 5, scope: !815)
!817 = !DILocation(line: 363, column: 35, scope: !737)
!818 = !DILocation(line: 363, column: 25, scope: !737)
!819 = !DILocation(line: 363, column: 55, scope: !737)
!820 = !DILocation(line: 363, column: 45, scope: !737)
!821 = !DILocation(line: 363, column: 75, scope: !737)
!822 = !DILocation(line: 363, column: 65, scope: !737)
!823 = !DILocation(line: 0, scope: !227, inlinedAt: !824)
!824 = distinct !DILocation(line: 363, column: 17, scope: !737)
!825 = !DILocation(line: 36, column: 11, scope: !227, inlinedAt: !824)
!826 = !DILocation(line: 37, column: 10, scope: !227, inlinedAt: !824)
!827 = !DILocation(line: 0, scope: !737)
!828 = !DILocation(line: 364, column: 32, scope: !737)
!829 = !DILocation(line: 364, column: 49, scope: !737)
!830 = !DILocation(line: 364, column: 66, scope: !737)
!831 = !DILocation(line: 0, scope: !239, inlinedAt: !832)
!832 = distinct !DILocation(line: 364, column: 17, scope: !737)
!833 = !DILocation(line: 44, column: 11, scope: !239, inlinedAt: !832)
!834 = !DILocation(line: 45, column: 10, scope: !239, inlinedAt: !832)
!835 = !DILocation(line: 369, column: 21, scope: !748)
!836 = !DILocation(line: 369, column: 5, scope: !749)
!837 = !DILocation(line: 370, column: 7, scope: !747)
!838 = !DILocation(line: 375, column: 17, scope: !747)
!839 = !DILocation(line: 376, column: 17, scope: !747)
!840 = !DILocation(line: 376, column: 14, scope: !747)
!841 = !DILocation(line: 377, column: 17, scope: !747)
!842 = !DILocation(line: 379, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !747, file: !2, line: 379, column: 10)
!844 = !DILocation(line: 379, column: 10, scope: !747)
!845 = !DILocation(line: 382, column: 17, scope: !747)
!846 = !DILocation(line: 382, column: 26, scope: !747)
!847 = !DILocation(line: 382, column: 21, scope: !747)
!848 = !DILocation(line: 382, column: 35, scope: !747)
!849 = !DILocation(line: 382, column: 30, scope: !747)
!850 = !DILocation(line: 383, column: 22, scope: !747)
!851 = !DILocation(line: 383, column: 39, scope: !747)
!852 = !DILocation(line: 383, column: 28, scope: !747)
!853 = !DILocation(line: 383, column: 26, scope: !747)
!854 = !DILocation(line: 384, column: 22, scope: !747)
!855 = !DILocation(line: 384, column: 39, scope: !747)
!856 = !DILocation(line: 384, column: 28, scope: !747)
!857 = !DILocation(line: 384, column: 26, scope: !747)
!858 = !DILocation(line: 385, column: 22, scope: !747)
!859 = !DILocation(line: 385, column: 28, scope: !747)
!860 = !DILocation(line: 385, column: 26, scope: !747)
!861 = !DILocation(line: 387, column: 15, scope: !862)
!862 = distinct !DILexicalBlock(scope: !747, file: !2, line: 387, column: 10)
!863 = !DILocation(line: 0, scope: !862)
!864 = !DILocation(line: 387, column: 10, scope: !747)
!865 = !DILocation(line: 394, column: 28, scope: !747)
!866 = !DILocation(line: 394, column: 40, scope: !747)
!867 = !DILocation(line: 395, column: 5, scope: !748)
!868 = !DILocation(line: 369, column: 33, scope: !748)
!869 = distinct !{!869, !836, !870, !319}
!870 = !DILocation(line: 395, column: 5, scope: !749)
!871 = !DILocation(line: 380, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !2, line: 380, column: 9)
!873 = distinct !DILexicalBlock(scope: !843, file: !2, line: 379, column: 33)
!874 = !DILocation(line: 380, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !2, line: 380, column: 9)
!876 = !DILocation(line: 366, column: 12, scope: !737)
!877 = !DILocation(line: 367, column: 12, scope: !737)
!878 = !DILocation(line: 365, column: 12, scope: !737)
!879 = !DILocation(line: 397, column: 13, scope: !737)
!880 = !DILocation(line: 399, column: 26, scope: !737)
!881 = !DILocation(line: 399, column: 18, scope: !737)
!882 = !DILocation(line: 400, column: 42, scope: !737)
!883 = !DILocation(line: 400, column: 13, scope: !737)
!884 = !DILocation(line: 400, column: 18, scope: !737)
!885 = !DILocation(line: 401, column: 48, scope: !737)
!886 = !DILocation(line: 401, column: 42, scope: !737)
!887 = !DILocation(line: 401, column: 41, scope: !737)
!888 = !DILocation(line: 401, column: 35, scope: !737)
!889 = !DILocation(line: 401, column: 20, scope: !737)
!890 = !DILocation(line: 401, column: 17, scope: !737)
!891 = !DILocation(line: 402, column: 57, scope: !737)
!892 = !DILocation(line: 402, column: 42, scope: !737)
!893 = !DILocation(line: 402, column: 79, scope: !737)
!894 = !DILocation(line: 402, column: 66, scope: !737)
!895 = !DILocation(line: 402, column: 64, scope: !737)
!896 = !DILocation(line: 402, column: 17, scope: !737)
!897 = !DILocation(line: 404, column: 5, scope: !737)
!898 = !DILocation(line: 0, scope: !739)
!899 = !DILocation(line: 406, column: 1, scope: !722)
!900 = distinct !DISubprogram(name: "gsl_sf_coupling_3j", scope: !2, file: !2, line: 413, type: !901, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!93, !38, !38, !38, !38, !38, !38}
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911}
!904 = !DILocalVariable(name: "two_ja", arg: 1, scope: !900, file: !2, line: 413, type: !38)
!905 = !DILocalVariable(name: "two_jb", arg: 2, scope: !900, file: !2, line: 413, type: !38)
!906 = !DILocalVariable(name: "two_jc", arg: 3, scope: !900, file: !2, line: 413, type: !38)
!907 = !DILocalVariable(name: "two_ma", arg: 4, scope: !900, file: !2, line: 414, type: !38)
!908 = !DILocalVariable(name: "two_mb", arg: 5, scope: !900, file: !2, line: 414, type: !38)
!909 = !DILocalVariable(name: "two_mc", arg: 6, scope: !900, file: !2, line: 414, type: !38)
!910 = !DILocalVariable(name: "result", scope: !900, file: !2, line: 416, type: !88)
!911 = !DILocalVariable(name: "status", scope: !900, file: !2, line: 416, type: !38)
!912 = distinct !DIAssignID()
!913 = !DILocation(line: 0, scope: !900)
!914 = !DILocation(line: 416, column: 3, scope: !900)
!915 = !DILocation(line: 416, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !900, file: !2, line: 416, column: 3)
!917 = !DILocation(line: 416, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 416, column: 3)
!919 = distinct !DILexicalBlock(scope: !916, file: !2, line: 416, column: 3)
!920 = !DILocation(line: 419, column: 1, scope: !900)
!921 = distinct !DISubprogram(name: "gsl_sf_coupling_6j", scope: !2, file: !2, line: 434, type: !901, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930}
!923 = !DILocalVariable(name: "two_ja", arg: 1, scope: !921, file: !2, line: 434, type: !38)
!924 = !DILocalVariable(name: "two_jb", arg: 2, scope: !921, file: !2, line: 434, type: !38)
!925 = !DILocalVariable(name: "two_jc", arg: 3, scope: !921, file: !2, line: 434, type: !38)
!926 = !DILocalVariable(name: "two_jd", arg: 4, scope: !921, file: !2, line: 435, type: !38)
!927 = !DILocalVariable(name: "two_je", arg: 5, scope: !921, file: !2, line: 435, type: !38)
!928 = !DILocalVariable(name: "two_jf", arg: 6, scope: !921, file: !2, line: 435, type: !38)
!929 = !DILocalVariable(name: "result", scope: !921, file: !2, line: 437, type: !88)
!930 = !DILocalVariable(name: "status", scope: !921, file: !2, line: 437, type: !38)
!931 = distinct !DIAssignID()
!932 = !DILocation(line: 0, scope: !921)
!933 = !DILocation(line: 437, column: 3, scope: !921)
!934 = !DILocation(line: 437, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !921, file: !2, line: 437, column: 3)
!936 = !DILocation(line: 437, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 437, column: 3)
!938 = distinct !DILexicalBlock(scope: !935, file: !2, line: 437, column: 3)
!939 = !DILocation(line: 440, column: 1, scope: !921)
!940 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW", scope: !2, file: !2, line: 443, type: !901, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949}
!942 = !DILocalVariable(name: "two_ja", arg: 1, scope: !940, file: !2, line: 443, type: !38)
!943 = !DILocalVariable(name: "two_jb", arg: 2, scope: !940, file: !2, line: 443, type: !38)
!944 = !DILocalVariable(name: "two_jc", arg: 3, scope: !940, file: !2, line: 443, type: !38)
!945 = !DILocalVariable(name: "two_jd", arg: 4, scope: !940, file: !2, line: 444, type: !38)
!946 = !DILocalVariable(name: "two_je", arg: 5, scope: !940, file: !2, line: 444, type: !38)
!947 = !DILocalVariable(name: "two_jf", arg: 6, scope: !940, file: !2, line: 444, type: !38)
!948 = !DILocalVariable(name: "result", scope: !940, file: !2, line: 446, type: !88)
!949 = !DILocalVariable(name: "status", scope: !940, file: !2, line: 446, type: !38)
!950 = distinct !DIAssignID()
!951 = !DILocation(line: 0, scope: !940)
!952 = !DILocation(line: 446, column: 3, scope: !940)
!953 = !DILocation(line: 0, scope: !702, inlinedAt: !954)
!954 = distinct !DILocation(line: 446, column: 3, scope: !940)
!955 = !DILocation(line: 329, column: 16, scope: !702, inlinedAt: !954)
!956 = !DILocation(line: 331, column: 15, scope: !702, inlinedAt: !954)
!957 = distinct !DIAssignID()
!958 = !DILocation(line: 446, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !940, file: !2, line: 446, column: 3)
!960 = !DILocation(line: 446, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !2, line: 446, column: 3)
!962 = distinct !DILexicalBlock(scope: !959, file: !2, line: 446, column: 3)
!963 = !DILocation(line: 330, column: 27, scope: !702, inlinedAt: !954)
!964 = !DILocation(line: 330, column: 36, scope: !702, inlinedAt: !954)
!965 = !DILocation(line: 330, column: 45, scope: !702, inlinedAt: !954)
!966 = !DILocation(line: 330, column: 54, scope: !702, inlinedAt: !954)
!967 = !DILocation(line: 331, column: 20, scope: !702, inlinedAt: !954)
!968 = !DILocation(line: 449, column: 1, scope: !940)
!969 = distinct !DISubprogram(name: "gsl_sf_coupling_9j", scope: !2, file: !2, line: 452, type: !970, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!93, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983}
!973 = !DILocalVariable(name: "two_ja", arg: 1, scope: !969, file: !2, line: 452, type: !38)
!974 = !DILocalVariable(name: "two_jb", arg: 2, scope: !969, file: !2, line: 452, type: !38)
!975 = !DILocalVariable(name: "two_jc", arg: 3, scope: !969, file: !2, line: 452, type: !38)
!976 = !DILocalVariable(name: "two_jd", arg: 4, scope: !969, file: !2, line: 453, type: !38)
!977 = !DILocalVariable(name: "two_je", arg: 5, scope: !969, file: !2, line: 453, type: !38)
!978 = !DILocalVariable(name: "two_jf", arg: 6, scope: !969, file: !2, line: 453, type: !38)
!979 = !DILocalVariable(name: "two_jg", arg: 7, scope: !969, file: !2, line: 454, type: !38)
!980 = !DILocalVariable(name: "two_jh", arg: 8, scope: !969, file: !2, line: 454, type: !38)
!981 = !DILocalVariable(name: "two_ji", arg: 9, scope: !969, file: !2, line: 454, type: !38)
!982 = !DILocalVariable(name: "result", scope: !969, file: !2, line: 456, type: !88)
!983 = !DILocalVariable(name: "status", scope: !969, file: !2, line: 456, type: !38)
!984 = distinct !DIAssignID()
!985 = !DILocation(line: 0, scope: !969)
!986 = !DILocation(line: 456, column: 3, scope: !969)
!987 = !DILocation(line: 456, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !969, file: !2, line: 456, column: 3)
!989 = !DILocation(line: 456, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 456, column: 3)
!991 = distinct !DILexicalBlock(scope: !988, file: !2, line: 456, column: 3)
!992 = !DILocation(line: 460, column: 1, scope: !969)
