; ModuleID = 'coupling.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 1) #7, !dbg !158
  br label %247, !dbg !158

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

59:                                               ; preds = %34, %43, %47, %51, %55, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !199
  br label %247, !dbg !201

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
  br label %247, !dbg !206

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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !248
  %94 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %78, ptr noundef nonnull %11) #7, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !121, metadata !DIExpression()), !dbg !137
  %95 = call i32 @gsl_sf_lnchoose_e(i32 noundef %1, i32 noundef %78, ptr noundef nonnull %12) #7, !dbg !250
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %96 = add nuw nsw i32 %87, 1, !dbg !251
  %97 = call i32 @gsl_sf_lnchoose_e(i32 noundef %96, i32 noundef %78, ptr noundef nonnull %13) #7, !dbg !252
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %98 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %80, ptr noundef nonnull %14) #7, !dbg !253
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %99 = call i32 @gsl_sf_lnchoose_e(i32 noundef %1, i32 noundef %82, ptr noundef nonnull %15) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %100 = call i32 @gsl_sf_lnchoose_e(i32 noundef %2, i32 noundef %86, ptr noundef nonnull %16) #7, !dbg !255
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %100, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %101 = load double, ptr %11, align 8, !dbg !256, !tbaa !152
  %102 = load double, ptr %12, align 8, !dbg !257, !tbaa !152
  %103 = fadd double %101, %102, !dbg !258
  %104 = load double, ptr %13, align 8, !dbg !259, !tbaa !152
  %105 = fsub double %103, %104, !dbg !260
  %106 = load double, ptr %14, align 8, !dbg !261, !tbaa !152
  %107 = fsub double %105, %106, !dbg !262
  %108 = load double, ptr %15, align 8, !dbg !263, !tbaa !152
  %109 = fsub double %107, %108, !dbg !264
  %110 = load double, ptr %16, align 8, !dbg !265, !tbaa !152
  %111 = fsub double %109, %110, !dbg !266
  %112 = sitofp i32 %2 to double, !dbg !267
  %113 = fadd double %112, 1.000000e+00, !dbg !268
  %114 = call double @log(double noundef %113) #7, !dbg !269
  %115 = fsub double %111, %114, !dbg !270
  %116 = fmul double %115, 5.000000e-01, !dbg !271
  tail call void @llvm.dbg.value(metadata double %116, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !137
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !272
  %118 = load double, ptr %117, align 8, !dbg !272, !tbaa !157
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !273
  %120 = load double, ptr %119, align 8, !dbg !273, !tbaa !157
  %121 = fadd double %118, %120, !dbg !274
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !275
  %123 = load double, ptr %122, align 8, !dbg !275, !tbaa !157
  %124 = fadd double %121, %123, !dbg !276
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !277
  %126 = load double, ptr %125, align 8, !dbg !277, !tbaa !157
  %127 = fadd double %124, %126, !dbg !278
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !279
  %129 = load double, ptr %128, align 8, !dbg !279, !tbaa !157
  %130 = fadd double %127, %129, !dbg !280
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !281
  %132 = load double, ptr %131, align 8, !dbg !281, !tbaa !157
  %133 = fadd double %130, %132, !dbg !282
  %134 = call double @log(double noundef %113) #7, !dbg !283
  %135 = fmul double %134, 0x3CB0000000000000, !dbg !284
  %136 = fadd double %133, %135, !dbg !285
  %137 = fmul double %136, 5.000000e-01, !dbg !286
  tail call void @llvm.dbg.value(metadata double %137, metadata !135, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %95, i32 %100, i32 %99, i32 %98, i32 %97, i32 %94), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %138 = icmp sgt i32 %91, %93, !dbg !287
  br i1 %138, label %230, label %139, !dbg !290

139:                                              ; preds = %70
  %140 = add nsw i32 %95, %94, !dbg !291
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %140, i32 %100, i32 %99, i32 %98, i32 %97), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %141 = add nsw i32 %140, %97, !dbg !292
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %141, i32 %100, i32 %99, i32 %98), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %142 = add nsw i32 %141, %98, !dbg !293
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %142, i32 %100, i32 %99), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %143 = add nsw i32 %142, %99, !dbg !294
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %143, i32 %100), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %144 = add nsw i32 %143, %100, !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !113, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %149 = call i32 @gsl_sf_lnchoose_e(i32 noundef %78, i32 noundef %91, ptr noundef nonnull %8) #7, !dbg !296
  %150 = add nsw i32 %149, %144, !dbg !298
  tail call void @llvm.dbg.value(metadata i32 %150, metadata !121, metadata !DIExpression()), !dbg !137
  %151 = sub nsw i32 %80, %91, !dbg !299
  %152 = call i32 @gsl_sf_lnchoose_e(i32 noundef %76, i32 noundef %151, ptr noundef nonnull %9) #7, !dbg !300
  %153 = add nsw i32 %150, %152, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !121, metadata !DIExpression()), !dbg !137
  %154 = sub nsw i32 %85, %91, !dbg !302
  %155 = call i32 @gsl_sf_lnchoose_e(i32 noundef %73, i32 noundef %154, ptr noundef nonnull %10) #7, !dbg !303
  %156 = add nsw i32 %153, %155, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !121, metadata !DIExpression()), !dbg !137
  %157 = load double, ptr %8, align 8, !dbg !305, !tbaa !152
  %158 = load double, ptr %9, align 8, !dbg !306, !tbaa !152
  %159 = fadd double %157, %158, !dbg !307
  %160 = load double, ptr %10, align 8, !dbg !308, !tbaa !152
  %161 = fadd double %159, %160, !dbg !309
  %162 = fadd double %116, %161, !dbg !310
  %163 = load double, ptr %145, align 8, !dbg !311, !tbaa !157
  %164 = load double, ptr %146, align 8, !dbg !312, !tbaa !157
  %165 = fadd double %163, %164, !dbg !313
  %166 = load double, ptr %147, align 8, !dbg !314, !tbaa !157
  %167 = fadd double %165, %166, !dbg !315
  %168 = fadd double %137, %167, !dbg !316
  %169 = call i32 @gsl_sf_exp_err_e(double noundef %162, double noundef %168, ptr noundef nonnull %17) #7, !dbg !317
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %156, i32 %169), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %170 = sub i32 0, %169, !dbg !318
  %171 = icmp eq i32 %156, %170, !dbg !318
  br i1 %171, label %172, label %217, !dbg !320

172:                                              ; preds = %139
  %173 = lshr exact i32 %44, 1, !dbg !321
  %174 = sub i32 %82, %173, !dbg !322
  %175 = add i32 %174, %91, !dbg !322
  %176 = and i32 %175, 1, !dbg !322
  %177 = icmp eq i32 %176, 0, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !120, metadata !DIExpression()), !dbg !137
  %178 = load double, ptr %17, align 8, !dbg !323
  %179 = fadd double %178, 0.000000e+00, !dbg !323
  %180 = select i1 %177, double %179, double 0.000000e+00, !dbg !323
  %181 = fadd double %178, 0.000000e+00, !dbg !323
  %182 = select i1 %177, double 0.000000e+00, double %181, !dbg !323
  tail call void @llvm.dbg.value(metadata double %182, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %180, metadata !122, metadata !DIExpression()), !dbg !137
  %183 = load double, ptr %148, align 8, !dbg !324, !tbaa !157
  %184 = fadd double %183, 0.000000e+00, !dbg !325
  tail call void @llvm.dbg.value(metadata double %184, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !120, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %185 = icmp ult i32 %91, %93, !dbg !287
  br i1 %185, label %186, label %230, !dbg !290

186:                                              ; preds = %172
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  %187 = select i1 %177, i32 -1, i32 1, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !120, metadata !DIExpression()), !dbg !137
  br label %188, !dbg !290

188:                                              ; preds = %186, %219
  %189 = phi i32 [ %91, %186 ], [ %194, %219 ]
  %190 = phi double [ %184, %186 ], [ %227, %219 ]
  %191 = phi double [ %182, %186 ], [ %225, %219 ]
  %192 = phi double [ %180, %186 ], [ %223, %219 ]
  %193 = phi i32 [ %187, %186 ], [ %228, %219 ]
  %194 = add nuw nsw i32 %189, 1, !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !119, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %190, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %191, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %192, metadata !122, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !120, metadata !DIExpression()), !dbg !137
  %195 = call i32 @gsl_sf_lnchoose_e(i32 noundef %78, i32 noundef %194, ptr noundef nonnull %8) #7, !dbg !296
  tail call void @llvm.dbg.value(metadata i32 %195, metadata !121, metadata !DIExpression()), !dbg !137
  %196 = sub nsw i32 %80, %194, !dbg !299
  %197 = call i32 @gsl_sf_lnchoose_e(i32 noundef %76, i32 noundef %196, ptr noundef nonnull %9) #7, !dbg !300
  %198 = add nsw i32 %195, %197, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !121, metadata !DIExpression()), !dbg !137
  %199 = sub nsw i32 %85, %194, !dbg !302
  %200 = call i32 @gsl_sf_lnchoose_e(i32 noundef %73, i32 noundef %199, ptr noundef nonnull %10) #7, !dbg !303
  %201 = add nsw i32 %198, %200, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %201, metadata !121, metadata !DIExpression()), !dbg !137
  %202 = load double, ptr %8, align 8, !dbg !305, !tbaa !152
  %203 = load double, ptr %9, align 8, !dbg !306, !tbaa !152
  %204 = fadd double %202, %203, !dbg !307
  %205 = load double, ptr %10, align 8, !dbg !308, !tbaa !152
  %206 = fadd double %204, %205, !dbg !309
  %207 = fadd double %116, %206, !dbg !310
  %208 = load double, ptr %145, align 8, !dbg !311, !tbaa !157
  %209 = load double, ptr %146, align 8, !dbg !312, !tbaa !157
  %210 = fadd double %208, %209, !dbg !313
  %211 = load double, ptr %147, align 8, !dbg !314, !tbaa !157
  %212 = fadd double %210, %211, !dbg !315
  %213 = fadd double %137, %212, !dbg !316
  %214 = call i32 @gsl_sf_exp_err_e(double noundef %207, double noundef %213, ptr noundef nonnull %17) #7, !dbg !317
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %201, i32 %214), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  %215 = sub i32 0, %214, !dbg !318
  %216 = icmp eq i32 %201, %215, !dbg !318
  br i1 %216, label %219, label %217, !dbg !320

217:                                              ; preds = %188, %139
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !327, !tbaa !152
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !327
  store double 0x7FF0000000000000, ptr %218, align 8, !dbg !327, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 16) #7, !dbg !330
  br label %245, !dbg !330

219:                                              ; preds = %188
  %220 = icmp slt i32 %193, 0, !dbg !332
  %221 = load double, ptr %17, align 8, !dbg !323
  %222 = select i1 %220, double -0.000000e+00, double %221, !dbg !323
  %223 = fadd double %192, %222, !dbg !323
  %224 = select i1 %220, double %221, double -0.000000e+00, !dbg !323
  %225 = fadd double %191, %224, !dbg !323
  tail call void @llvm.dbg.value(metadata double %225, metadata !123, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %223, metadata !122, metadata !DIExpression()), !dbg !137
  %226 = load double, ptr %148, align 8, !dbg !324, !tbaa !157
  %227 = fadd double %190, %226, !dbg !325
  tail call void @llvm.dbg.value(metadata double %227, metadata !124, metadata !DIExpression()), !dbg !137
  %228 = sub nsw i32 0, %193, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %228, metadata !120, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %229 = icmp slt i32 %194, %93, !dbg !287
  br i1 %229, label %188, label %230, !dbg !290, !llvm.loop !335

230:                                              ; preds = %219, %172, %70
  %231 = phi double [ 0.000000e+00, %70 ], [ %180, %172 ], [ %223, %219 ], !dbg !339
  %232 = phi double [ 0.000000e+00, %70 ], [ %182, %172 ], [ %225, %219 ], !dbg !137
  %233 = phi double [ 0.000000e+00, %70 ], [ %184, %172 ], [ %227, %219 ], !dbg !137
  %234 = fsub double %231, %232, !dbg !340
  store double %234, ptr %6, align 8, !dbg !341, !tbaa !152
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !342
  %236 = fadd double %231, %232, !dbg !343
  %237 = fmul double %236, 0x3CC0000000000000, !dbg !344
  %238 = fadd double %233, %237, !dbg !345
  %239 = sub nsw i32 %93, %91, !dbg !346
  %240 = sitofp i32 %239 to double, !dbg !347
  %241 = fmul double %240, 0x3CC0000000000000, !dbg !348
  %242 = call double @llvm.fabs.f64(double %234), !dbg !349
  %243 = fmul double %241, %242, !dbg !350
  %244 = fadd double %238, %243, !dbg !351
  store double %244, ptr %235, align 8, !dbg !351, !tbaa !157
  br label %245, !dbg !352

245:                                              ; preds = %230, %217
  %246 = phi i32 [ 16, %217 ], [ 0, %230 ], !dbg !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !353
  br label %247

247:                                              ; preds = %21, %59, %69, %245
  %248 = phi i32 [ 1, %21 ], [ 0, %59 ], [ 0, %69 ], [ %246, %245 ], !dbg !354
  ret i32 %248, !dbg !355
}

declare !dbg !356 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !361 i32 @gsl_sf_lnchoose_e(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !366 double @log(double noundef) local_unnamed_addr #3

declare !dbg !370 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !375 {
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !384, metadata !DIExpression(), metadata !412, metadata ptr %8, metadata !DIExpression()), !dbg !413
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !414, metadata ptr %9, metadata !DIExpression()), !dbg !413
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !415, metadata ptr %10, metadata !DIExpression()), !dbg !413
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !390, metadata !DIExpression(), metadata !416, metadata ptr %11, metadata !DIExpression()), !dbg !413
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !417
  call void @llvm.dbg.assign(metadata i1 undef, metadata !391, metadata !DIExpression(), metadata !417, metadata ptr %12, metadata !DIExpression()), !dbg !413
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !392, metadata !DIExpression(), metadata !418, metadata ptr %13, metadata !DIExpression()), !dbg !413
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !419, metadata ptr %14, metadata !DIExpression()), !dbg !413
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !410, metadata !DIExpression(), metadata !420, metadata ptr %15, metadata !DIExpression()), !dbg !421
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !411, metadata !DIExpression(), metadata !422, metadata ptr %16, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !377, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !378, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !379, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !380, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !381, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !382, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !383, metadata !DIExpression()), !dbg !423
  %17 = or i32 %1, %0, !dbg !424
  %18 = or i32 %17, %2, !dbg !424
  %19 = or i32 %18, %3, !dbg !424
  %20 = or i32 %19, %4, !dbg !424
  %21 = or i32 %20, %5, !dbg !424
  %22 = icmp sgt i32 %21, -1, !dbg !424
  br i1 %22, label %25, label %23, !dbg !424

23:                                               ; preds = %7
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !425, !tbaa !152
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !425
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !425, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 221, i32 noundef 1) #7, !dbg !428
  br label %270, !dbg !428

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !430
  %26 = sub nsw i32 %0, %2, !dbg !432
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true), !dbg !433
  %28 = icmp sle i32 %27, %1, !dbg !434
  %29 = add i32 %2, %0
  %30 = icmp sge i32 %29, %1
  %31 = and i1 %30, %28, !dbg !435
  %32 = add i32 %29, %1, !dbg !435
  %33 = and i32 %32, 1, !dbg !435
  %34 = icmp eq i32 %33, 0, !dbg !436
  %35 = and i1 %31, %34, !dbg !436
  br i1 %35, label %36, label %69, !dbg !437

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !438
  %37 = sub nsw i32 %0, %5, !dbg !440
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true), !dbg !441
  %39 = icmp sle i32 %38, %4, !dbg !442
  %40 = add i32 %5, %0
  %41 = icmp sge i32 %40, %4
  %42 = and i1 %41, %39, !dbg !443
  %43 = add i32 %40, %4, !dbg !443
  %44 = and i32 %43, 1, !dbg !443
  %45 = icmp eq i32 %44, 0, !dbg !444
  %46 = and i1 %42, %45, !dbg !444
  br i1 %46, label %47, label %69, !dbg !445

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 %1, metadata !160, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !446
  %48 = sub nsw i32 %1, %5, !dbg !448
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true), !dbg !449
  %50 = icmp sle i32 %49, %3, !dbg !450
  %51 = add i32 %5, %1
  %52 = icmp sge i32 %51, %3
  %53 = and i1 %52, %50, !dbg !451
  %54 = add i32 %51, %3, !dbg !451
  %55 = and i32 %54, 1, !dbg !451
  %56 = icmp eq i32 %55, 0, !dbg !452
  %57 = and i1 %53, %56, !dbg !452
  br i1 %57, label %58, label %69, !dbg !453

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %4, metadata !160, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !454
  %59 = sub nsw i32 %4, %2, !dbg !456
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 true), !dbg !457
  %61 = icmp ule i32 %60, %3, !dbg !458
  %62 = add i32 %4, %2
  %63 = icmp sge i32 %62, %3
  %64 = and i1 %63, %61, !dbg !459
  %65 = add i32 %62, %3, !dbg !459
  %66 = and i32 %65, 1, !dbg !459
  %67 = icmp eq i32 %66, 0, !dbg !460
  %68 = and i1 %64, %67, !dbg !460
  br i1 %68, label %70, label %69, !dbg !461

69:                                               ; preds = %58, %47, %36, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !462
  br label %270, !dbg !464

70:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !465
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !466
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !399, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !400, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !401, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !413
  %71 = call fastcc i32 @delta(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %9), !dbg !467, !range !468
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !402, metadata !DIExpression()), !dbg !413
  %72 = call fastcc i32 @delta(i32 noundef %0, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %10), !dbg !469, !range !468
  %73 = add nuw nsw i32 %72, %71, !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !402, metadata !DIExpression()), !dbg !413
  %74 = call fastcc i32 @delta(i32 noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %11), !dbg !471, !range !468
  %75 = add nuw nsw i32 %73, %74, !dbg !472
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !402, metadata !DIExpression()), !dbg !413
  %76 = call fastcc i32 @delta(i32 noundef %4, i32 noundef %3, i32 noundef %2, ptr noundef nonnull %12), !dbg !473, !range !468
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %75, i32 %76), metadata !402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !413
  %77 = sub nsw i32 0, %76, !dbg !474
  %78 = icmp eq i32 %75, %77, !dbg !474
  br i1 %78, label %81, label %79, !dbg !476

79:                                               ; preds = %70
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !477, !tbaa !152
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !477
  store double 0x7FF0000000000000, ptr %80, align 8, !dbg !477, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 16) #7, !dbg !480
  br label %268, !dbg !480

81:                                               ; preds = %70
  %82 = load double, ptr %9, align 8, !dbg !482, !tbaa !152
  %83 = tail call double @sqrt(double noundef %82) #7, !dbg !483
  %84 = load double, ptr %10, align 8, !dbg !484, !tbaa !152
  %85 = tail call double @sqrt(double noundef %84) #7, !dbg !485
  %86 = fmul double %83, %85, !dbg !486
  %87 = load double, ptr %11, align 8, !dbg !487, !tbaa !152
  %88 = tail call double @sqrt(double noundef %87) #7, !dbg !488
  %89 = fmul double %86, %88, !dbg !489
  %90 = load double, ptr %12, align 8, !dbg !490, !tbaa !152
  %91 = tail call double @sqrt(double noundef %90) #7, !dbg !491
  %92 = fmul double %89, %91, !dbg !492
  tail call void @llvm.dbg.value(metadata double %92, metadata !394, metadata !DIExpression()), !dbg !413
  %93 = add i32 %3, %0, !dbg !493
  %94 = add i32 %5, %2, !dbg !494
  %95 = sub i32 %93, %94, !dbg !494
  %96 = add nuw i32 %4, %1, !dbg !495
  %97 = sub i32 %96, %94, !dbg !496
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %95, metadata !232, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %97, metadata !233, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 poison, metadata !234, metadata !DIExpression()), !dbg !497
  %98 = tail call i32 @llvm.smax.i32(i32 %95, i32 %97), !dbg !499
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !396, metadata !DIExpression()), !dbg !413
  %100 = add nuw nsw i32 %1, %0, !dbg !500
  %101 = add nuw i32 %4, %3, !dbg !501
  %102 = add i32 %101, %100, !dbg !502
  %103 = add nsw i32 %102, 2, !dbg !503
  %104 = sub nsw i32 %100, %2, !dbg !504
  %105 = sub i32 %101, %2, !dbg !505
  %106 = add nsw i32 %4, %0, !dbg !506
  %107 = sub i32 %106, %5, !dbg !507
  %108 = add nuw nsw i32 %3, %1, !dbg !508
  %109 = sub i32 %108, %5, !dbg !509
  call void @llvm.dbg.value(metadata i32 %103, metadata !510, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %104, metadata !515, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %105, metadata !516, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %107, metadata !517, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %109, metadata !518, metadata !DIExpression()), !dbg !522
  %110 = tail call i32 @llvm.smin.i32(i32 %103, i32 %104), !dbg !524
  call void @llvm.dbg.value(metadata i32 %110, metadata !519, metadata !DIExpression()), !dbg !522
  %111 = tail call i32 @llvm.smin.i32(i32 %105, i32 %107), !dbg !525
  call void @llvm.dbg.value(metadata i32 %111, metadata !520, metadata !DIExpression()), !dbg !522
  %112 = tail call i32 @llvm.smin.i32(i32 %110, i32 %111), !dbg !526
  call void @llvm.dbg.value(metadata i32 %112, metadata !521, metadata !DIExpression()), !dbg !522
  %113 = tail call noundef i32 @llvm.smin.i32(i32 %112, i32 %109), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !397, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double poison, metadata !398, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !395, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !395, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double poison, metadata !398, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !399, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !400, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !401, metadata !DIExpression()), !dbg !413
  %114 = icmp sgt i32 %99, %113, !dbg !528
  br i1 %114, label %246, label %115, !dbg !529

115:                                              ; preds = %81
  %116 = add nsw i32 %99, %102, !dbg !530
  %117 = sdiv i32 %116, 2, !dbg !530
  %118 = and i32 %117, 1, !dbg !530
  %119 = icmp eq i32 %118, 0, !dbg !530
  %120 = select i1 %119, double 1.000000e+00, double -1.000000e+00, !dbg !530
  tail call void @llvm.dbg.value(metadata double %120, metadata !398, metadata !DIExpression()), !dbg !413
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
  br label %132, !dbg !529

132:                                              ; preds = %115, %172
  %133 = phi i32 [ %99, %115 ], [ %244, %172 ]
  %134 = phi double [ %120, %115 ], [ %221, %172 ]
  %135 = phi double [ 0.000000e+00, %115 ], [ %240, %172 ]
  %136 = phi double [ 0.000000e+00, %115 ], [ %238, %172 ]
  %137 = phi double [ 0.000000e+00, %115 ], [ %243, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !395, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %134, metadata !398, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %135, metadata !399, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %136, metadata !400, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %137, metadata !401, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !531
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !413
  %138 = sub nsw i32 %102, %133, !dbg !532
  %139 = sdiv i32 %138, 2, !dbg !533
  %140 = add nsw i32 %139, 1, !dbg !534
  %141 = call i32 @gsl_sf_fact_e(i32 noundef %140, ptr noundef nonnull %8) #7, !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !402, metadata !DIExpression()), !dbg !413
  %142 = lshr i32 %133, 1, !dbg !536
  %143 = call i32 @gsl_sf_fact_e(i32 noundef %142, ptr noundef nonnull %15) #7, !dbg !537
  %144 = add nsw i32 %143, %141, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !402, metadata !DIExpression()), !dbg !413
  %145 = add nsw i32 %121, %133, !dbg !539
  %146 = sdiv i32 %145, 2, !dbg !540
  %147 = call i32 @gsl_sf_fact_e(i32 noundef %146, ptr noundef nonnull %16) #7, !dbg !541
  %148 = add nsw i32 %144, %147, !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !402, metadata !DIExpression()), !dbg !413
  %149 = add nsw i32 %122, %133, !dbg !543
  %150 = sdiv i32 %149, 2, !dbg !544
  %151 = call i32 @gsl_sf_fact_e(i32 noundef %150, ptr noundef nonnull %10) #7, !dbg !545
  %152 = add nsw i32 %148, %151, !dbg !546
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !402, metadata !DIExpression()), !dbg !413
  %153 = sub nsw i32 %104, %133, !dbg !547
  %154 = sdiv i32 %153, 2, !dbg !548
  %155 = call i32 @gsl_sf_fact_e(i32 noundef %154, ptr noundef nonnull %11) #7, !dbg !549
  %156 = add nsw i32 %152, %155, !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !402, metadata !DIExpression()), !dbg !413
  %157 = sub nsw i32 %105, %133, !dbg !551
  %158 = sdiv i32 %157, 2, !dbg !552
  %159 = call i32 @gsl_sf_fact_e(i32 noundef %158, ptr noundef nonnull %12) #7, !dbg !553
  %160 = add nsw i32 %156, %159, !dbg !554
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !402, metadata !DIExpression()), !dbg !413
  %161 = sub nsw i32 %107, %133, !dbg !555
  %162 = sdiv i32 %161, 2, !dbg !556
  %163 = call i32 @gsl_sf_fact_e(i32 noundef %162, ptr noundef nonnull %13) #7, !dbg !557
  %164 = add nsw i32 %160, %163, !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !402, metadata !DIExpression()), !dbg !413
  %165 = sub nsw i32 %109, %133, !dbg !559
  %166 = sdiv i32 %165, 2, !dbg !560
  %167 = call i32 @gsl_sf_fact_e(i32 noundef %166, ptr noundef nonnull %14) #7, !dbg !561
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %164, i32 %167), metadata !402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !413
  %168 = sub i32 0, %167, !dbg !562
  %169 = icmp eq i32 %164, %168, !dbg !562
  br i1 %169, label %172, label %170, !dbg !564

170:                                              ; preds = %132
  store double 0x7FF0000000000000, ptr %6, align 8, !dbg !565, !tbaa !152
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !565
  store double 0x7FF0000000000000, ptr %171, align 8, !dbg !565, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 282, i32 noundef 16) #7, !dbg !568
  tail call void @llvm.dbg.value(metadata double undef, metadata !398, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double undef, metadata !399, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double undef, metadata !400, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double undef, metadata !401, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !570
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !570
  br label %268

172:                                              ; preds = %132
  %173 = load double, ptr %15, align 8, !dbg !571, !tbaa !152
  %174 = load double, ptr %16, align 8, !dbg !572, !tbaa !152
  %175 = fmul double %173, %174, !dbg !573
  call void @llvm.dbg.assign(metadata double %175, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !574, metadata ptr %9, metadata !DIExpression()), !dbg !413
  %176 = load double, ptr %123, align 8, !dbg !575, !tbaa !157
  %177 = call double @llvm.fabs.f64(double %174), !dbg !576
  %178 = fmul double %177, %176, !dbg !577
  %179 = call double @llvm.fabs.f64(double %173), !dbg !578
  %180 = load double, ptr %124, align 8, !dbg !579, !tbaa !157
  %181 = fmul double %179, %180, !dbg !580
  %182 = fadd double %178, %181, !dbg !581
  call void @llvm.dbg.assign(metadata double %182, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !582, metadata ptr %9, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !413
  %183 = load double, ptr %10, align 8, !dbg !583, !tbaa !152
  %184 = fmul double %175, %183, !dbg !584
  %185 = load double, ptr %11, align 8, !dbg !585, !tbaa !152
  %186 = fmul double %184, %185, !dbg !586
  tail call void @llvm.dbg.value(metadata double %186, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  %187 = fmul double %183, %185, !dbg !587
  %188 = call double @llvm.fabs.f64(double %187), !dbg !588
  %189 = fmul double %182, %188, !dbg !589
  tail call void @llvm.dbg.value(metadata double %189, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %190 = load double, ptr %125, align 8, !dbg !590, !tbaa !157
  %191 = fmul double %175, %185, !dbg !591
  %192 = call double @llvm.fabs.f64(double %191), !dbg !592
  %193 = fmul double %190, %192, !dbg !593
  %194 = fadd double %189, %193, !dbg !594
  tail call void @llvm.dbg.value(metadata double %194, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %195 = load double, ptr %126, align 8, !dbg !595, !tbaa !157
  %196 = call double @llvm.fabs.f64(double %184), !dbg !596
  %197 = fmul double %196, %195, !dbg !597
  %198 = fadd double %197, %194, !dbg !598
  tail call void @llvm.dbg.value(metadata double %198, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %199 = load double, ptr %12, align 8, !dbg !599, !tbaa !152
  %200 = load double, ptr %13, align 8, !dbg !600, !tbaa !152
  %201 = fmul double %199, %200, !dbg !601
  %202 = load double, ptr %14, align 8, !dbg !602, !tbaa !152
  %203 = fmul double %201, %202, !dbg !603
  tail call void @llvm.dbg.value(metadata double %203, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  %204 = load double, ptr %127, align 8, !dbg !604, !tbaa !157
  %205 = fmul double %200, %202, !dbg !605
  %206 = call double @llvm.fabs.f64(double %205), !dbg !606
  %207 = fmul double %204, %206, !dbg !607
  tail call void @llvm.dbg.value(metadata double %207, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %208 = load double, ptr %128, align 8, !dbg !608, !tbaa !157
  %209 = fmul double %199, %202, !dbg !609
  %210 = call double @llvm.fabs.f64(double %209), !dbg !610
  %211 = fmul double %208, %210, !dbg !611
  %212 = fadd double %207, %211, !dbg !612
  tail call void @llvm.dbg.value(metadata double %212, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %213 = load double, ptr %129, align 8, !dbg !613, !tbaa !157
  %214 = call double @llvm.fabs.f64(double %201), !dbg !614
  %215 = fmul double %214, %213, !dbg !615
  %216 = fadd double %212, %215, !dbg !616
  tail call void @llvm.dbg.value(metadata double %216, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  %217 = load double, ptr %8, align 8, !dbg !617, !tbaa !152
  %218 = fmul double %134, %217, !dbg !618
  %219 = fdiv double %218, %186, !dbg !619
  %220 = fdiv double %219, %203, !dbg !620
  tail call void @llvm.dbg.value(metadata double %220, metadata !403, metadata !DIExpression()), !dbg !421
  %221 = fneg double %134, !dbg !621
  tail call void @llvm.dbg.value(metadata double %221, metadata !398, metadata !DIExpression()), !dbg !413
  %222 = load double, ptr %130, align 8, !dbg !622, !tbaa !157
  %223 = call double @llvm.fabs.f64(double %186), !dbg !623
  %224 = fdiv double %222, %223, !dbg !624
  %225 = call double @llvm.fabs.f64(double %203), !dbg !625
  %226 = fdiv double %224, %225, !dbg !626
  tail call void @llvm.dbg.value(metadata double %226, metadata !407, metadata !DIExpression()), !dbg !421
  %227 = fdiv double %220, %186, !dbg !627
  %228 = call double @llvm.fabs.f64(double %227), !dbg !628
  %229 = fmul double %198, %228, !dbg !629
  %230 = fadd double %226, %229, !dbg !630
  tail call void @llvm.dbg.value(metadata double %230, metadata !407, metadata !DIExpression()), !dbg !421
  %231 = fdiv double %220, %203, !dbg !631
  %232 = call double @llvm.fabs.f64(double %231), !dbg !632
  %233 = fmul double %216, %232, !dbg !633
  %234 = fadd double %233, %230, !dbg !634
  tail call void @llvm.dbg.value(metadata double %234, metadata !407, metadata !DIExpression()), !dbg !421
  %235 = fcmp ult double %220, 0.000000e+00, !dbg !635
  %236 = fmul double %92, %220, !dbg !637
  %237 = select i1 %235, double %236, double 0.000000e+00, !dbg !637
  %238 = fsub double %136, %237, !dbg !637
  %239 = select i1 %235, double -0.000000e+00, double %236, !dbg !637
  %240 = fadd double %135, %239, !dbg !637
  tail call void @llvm.dbg.value(metadata double %240, metadata !399, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %238, metadata !400, metadata !DIExpression()), !dbg !413
  %241 = fmul double %131, %234, !dbg !638
  %242 = fmul double %234, %241, !dbg !639
  %243 = fadd double %137, %242, !dbg !640
  tail call void @llvm.dbg.value(metadata double %243, metadata !401, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !570
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !570
  %244 = add nuw nsw i32 %133, 2, !dbg !641
  tail call void @llvm.dbg.value(metadata i32 %244, metadata !395, metadata !DIExpression()), !dbg !413
  %245 = icmp sgt i32 %244, %113, !dbg !528
  br i1 %245, label %246, label %132, !dbg !529, !llvm.loop !642

246:                                              ; preds = %172, %81
  %247 = phi double [ 0.000000e+00, %81 ], [ %243, %172 ], !dbg !644
  %248 = phi double [ 0.000000e+00, %81 ], [ %238, %172 ], !dbg !645
  %249 = phi double [ 0.000000e+00, %81 ], [ %240, %172 ], !dbg !646
  %250 = fsub double %249, %248, !dbg !647
  store double %250, ptr %6, align 8, !dbg !648, !tbaa !152
  %251 = fadd double %248, %249, !dbg !649
  %252 = fmul double %251, 0x3CC0000000000000, !dbg !650
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !651
  store double %252, ptr %253, align 8, !dbg !652, !tbaa !157
  %254 = sub nsw i32 %113, %99, !dbg !653
  %255 = sitofp i32 %254 to double, !dbg !654
  %256 = fmul double %255, 5.000000e-01, !dbg !655
  %257 = fadd double %256, 1.000000e+00, !dbg !656
  %258 = fdiv double %247, %257, !dbg !657
  %259 = call double @sqrt(double noundef %258) #7, !dbg !658
  %260 = load double, ptr %253, align 8, !dbg !659, !tbaa !157
  %261 = fadd double %259, %260, !dbg !659
  %262 = fadd double %255, 2.000000e+00, !dbg !660
  %263 = fmul double %262, 0x3CC0000000000000, !dbg !661
  %264 = load double, ptr %6, align 8, !dbg !662, !tbaa !152
  %265 = call double @llvm.fabs.f64(double %264), !dbg !663
  %266 = fmul double %263, %265, !dbg !664
  %267 = fadd double %261, %266, !dbg !665
  store double %267, ptr %253, align 8, !dbg !665, !tbaa !157
  br label %268, !dbg !666

268:                                              ; preds = %170, %246, %79
  %269 = phi i32 [ 16, %79 ], [ 16, %170 ], [ 0, %246 ], !dbg !413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !667
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !667
  br label %270

270:                                              ; preds = %23, %69, %268
  %271 = phi i32 [ 1, %23 ], [ 0, %69 ], [ %269, %268 ], !dbg !668
  ret i32 %271, !dbg !669
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @delta(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !670 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !678, metadata !DIExpression(), metadata !683, metadata ptr %5, metadata !DIExpression()), !dbg !684
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !679, metadata !DIExpression(), metadata !685, metadata ptr %6, metadata !DIExpression()), !dbg !684
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !680, metadata !DIExpression(), metadata !686, metadata ptr %7, metadata !DIExpression()), !dbg !684
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !681, metadata !DIExpression(), metadata !687, metadata ptr %8, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !674, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !675, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !676, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !677, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !688
  tail call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()), !dbg !684
  %9 = add nsw i32 %1, %0, !dbg !689
  %10 = sub nsw i32 %9, %2, !dbg !690
  %11 = sdiv i32 %10, 2, !dbg !691
  %12 = call i32 @gsl_sf_fact_e(i32 noundef %11, ptr noundef nonnull %5) #7, !dbg !692
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !682, metadata !DIExpression()), !dbg !684
  %13 = sub i32 %0, %1, !dbg !693
  %14 = add i32 %13, %2, !dbg !694
  %15 = sdiv i32 %14, 2, !dbg !695
  %16 = call i32 @gsl_sf_fact_e(i32 noundef %15, ptr noundef nonnull %6) #7, !dbg !696
  %17 = add nsw i32 %16, %12, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !682, metadata !DIExpression()), !dbg !684
  %18 = sub i32 %1, %0, !dbg !698
  %19 = add i32 %18, %2, !dbg !699
  %20 = sdiv i32 %19, 2, !dbg !700
  %21 = call i32 @gsl_sf_fact_e(i32 noundef %20, ptr noundef nonnull %7) #7, !dbg !701
  %22 = add nsw i32 %17, %21, !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !682, metadata !DIExpression()), !dbg !684
  %23 = add nsw i32 %9, %2, !dbg !703
  %24 = sdiv i32 %23, 2, !dbg !704
  %25 = add nsw i32 %24, 1, !dbg !705
  %26 = call i32 @gsl_sf_fact_e(i32 noundef %25, ptr noundef nonnull %8) #7, !dbg !706
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %22, i32 %26), metadata !682, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !684
  %27 = sub i32 0, %26, !dbg !707
  %28 = icmp eq i32 %22, %27, !dbg !707
  br i1 %28, label %31, label %29, !dbg !709

29:                                               ; preds = %4
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !710, !tbaa !152
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !710
  store double 0x7FF0000000000000, ptr %30, align 8, !dbg !710, !tbaa !157
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 16) #7, !dbg !713
  br label %42, !dbg !713

31:                                               ; preds = %4
  %32 = load double, ptr %5, align 8, !dbg !715, !tbaa !152
  %33 = load double, ptr %6, align 8, !dbg !716, !tbaa !152
  %34 = fmul double %32, %33, !dbg !717
  %35 = load double, ptr %7, align 8, !dbg !718, !tbaa !152
  %36 = fmul double %34, %35, !dbg !719
  %37 = load double, ptr %8, align 8, !dbg !720, !tbaa !152
  %38 = fdiv double %36, %37, !dbg !721
  store double %38, ptr %3, align 8, !dbg !722, !tbaa !152
  %39 = call double @llvm.fabs.f64(double %38), !dbg !723
  %40 = fmul double %39, 0x3CD0000000000000, !dbg !724
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !725
  store double %40, ptr %41, align 8, !dbg !726, !tbaa !157
  br label %42, !dbg !727

42:                                               ; preds = %31, %29
  %43 = phi i32 [ 16, %29 ], [ 0, %31 ], !dbg !684
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !728
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !728
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !728
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !728
  ret i32 %43, !dbg !728
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !729 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !730 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_RacahW_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !734 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !737, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !738, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !739, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !740, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !741, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !742, metadata !DIExpression()), !dbg !745
  %8 = tail call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef %5, ptr noundef %6), !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !743, metadata !DIExpression()), !dbg !745
  %9 = add nsw i32 %1, %0, !dbg !747
  %10 = add nsw i32 %9, %2, !dbg !748
  %11 = add nsw i32 %10, %3, !dbg !749
  %12 = sdiv i32 %11, 2, !dbg !750
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !744, metadata !DIExpression()), !dbg !745
  %13 = and i32 %12, 1, !dbg !751
  %14 = icmp eq i32 %13, 0, !dbg !751
  %15 = load double, ptr %6, align 8, !dbg !752, !tbaa !152
  %16 = fneg double %15, !dbg !752
  %17 = select i1 %14, double %15, double %16, !dbg !752
  store double %17, ptr %6, align 8, !dbg !752, !tbaa !152
  ret i32 %8, !dbg !753
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coupling_9j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef %9) local_unnamed_addr #0 !dbg !754 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !787, metadata ptr %11, metadata !DIExpression()), !dbg !788
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !782, metadata !DIExpression(), metadata !789, metadata ptr %12, metadata !DIExpression()), !dbg !788
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !783, metadata !DIExpression(), metadata !790, metadata ptr %13, metadata !DIExpression()), !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !758, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !759, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !760, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !761, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !762, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !763, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !764, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !765, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !766, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !767, metadata !DIExpression()), !dbg !791
  %14 = or i32 %1, %0, !dbg !792
  %15 = or i32 %14, %2, !dbg !792
  %16 = or i32 %15, %3, !dbg !792
  %17 = or i32 %16, %4, !dbg !792
  %18 = or i32 %17, %5, !dbg !792
  %19 = or i32 %18, %6, !dbg !792
  %20 = or i32 %19, %7, !dbg !792
  %21 = or i32 %20, %8, !dbg !792
  %22 = icmp sgt i32 %21, -1, !dbg !792
  br i1 %22, label %25, label %23, !dbg !792

23:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !793, !tbaa !152
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !793
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !793, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 1) #7, !dbg !796
  br label %182, !dbg !796

25:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %2, metadata !166, metadata !DIExpression()), !dbg !798
  %26 = sub nsw i32 %0, %2, !dbg !800
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true), !dbg !801
  %28 = icmp sle i32 %27, %1, !dbg !802
  %29 = add i32 %2, %0
  %30 = icmp sge i32 %29, %1
  %31 = and i1 %30, %28, !dbg !803
  %32 = add i32 %29, %1, !dbg !803
  %33 = and i32 %32, 1, !dbg !803
  %34 = icmp eq i32 %33, 0, !dbg !804
  %35 = and i1 %31, %34, !dbg !804
  br i1 %35, label %36, label %91, !dbg !805

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression()), !dbg !806
  %37 = sub nsw i32 %3, %5, !dbg !808
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true), !dbg !809
  %39 = icmp sle i32 %38, %4, !dbg !810
  %40 = add i32 %5, %3
  %41 = icmp sge i32 %40, %4
  %42 = and i1 %41, %39, !dbg !811
  %43 = add i32 %40, %4, !dbg !811
  %44 = and i32 %43, 1, !dbg !811
  %45 = icmp eq i32 %44, 0, !dbg !812
  %46 = and i1 %42, %45, !dbg !812
  br i1 %46, label %47, label %91, !dbg !813

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 %6, metadata !160, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 %7, metadata !165, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 %8, metadata !166, metadata !DIExpression()), !dbg !814
  %48 = sub nsw i32 %6, %8, !dbg !816
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true), !dbg !817
  %50 = icmp sle i32 %49, %7, !dbg !818
  %51 = add i32 %8, %6
  %52 = icmp sge i32 %51, %7
  %53 = and i1 %52, %50, !dbg !819
  %54 = add i32 %51, %7, !dbg !819
  %55 = and i32 %54, 1, !dbg !819
  %56 = icmp eq i32 %55, 0, !dbg !820
  %57 = and i1 %53, %56, !dbg !820
  br i1 %57, label %58, label %91, !dbg !821

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i32 %6, metadata !166, metadata !DIExpression()), !dbg !822
  %59 = sub nsw i32 %0, %6, !dbg !824
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 true), !dbg !825
  %61 = icmp sle i32 %60, %3, !dbg !826
  %62 = add i32 %6, %0
  %63 = icmp sge i32 %62, %3
  %64 = and i1 %63, %61, !dbg !827
  %65 = add i32 %62, %3, !dbg !827
  %66 = and i32 %65, 1, !dbg !827
  %67 = icmp eq i32 %66, 0, !dbg !828
  %68 = and i1 %64, %67, !dbg !828
  br i1 %68, label %69, label %91, !dbg !829

69:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %1, metadata !160, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %4, metadata !165, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %7, metadata !166, metadata !DIExpression()), !dbg !830
  %70 = sub nsw i32 %1, %7, !dbg !832
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 true), !dbg !833
  %72 = icmp ule i32 %71, %4, !dbg !834
  %73 = add nuw i32 %7, %1
  %74 = icmp sge i32 %73, %4
  %75 = and i1 %74, %72, !dbg !835
  %76 = add i32 %73, %4, !dbg !835
  %77 = and i32 %76, 1, !dbg !835
  %78 = icmp eq i32 %77, 0, !dbg !836
  %79 = and i1 %75, %78, !dbg !836
  br i1 %79, label %80, label %91, !dbg !837

80:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 %2, metadata !160, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %5, metadata !165, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %8, metadata !166, metadata !DIExpression()), !dbg !838
  %81 = sub nsw i32 %2, %8, !dbg !840
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 true), !dbg !841
  %83 = icmp sle i32 %82, %5, !dbg !842
  %84 = add i32 %8, %2
  %85 = icmp sge i32 %84, %5
  %86 = and i1 %85, %83, !dbg !843
  %87 = add i32 %84, %5, !dbg !843
  %88 = and i32 %87, 1, !dbg !843
  %89 = icmp eq i32 %88, 0, !dbg !844
  %90 = and i1 %86, %89, !dbg !844
  br i1 %90, label %92, label %91, !dbg !845

91:                                               ; preds = %80, %69, %58, %47, %36, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !dbg !846
  br label %182, !dbg !848

92:                                               ; preds = %80
  %93 = sub nsw i32 %0, %8, !dbg !849
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 true), !dbg !850
  %95 = sub nsw i32 %7, %3, !dbg !851
  %96 = tail call i32 @llvm.abs.i32(i32 %95, i1 true), !dbg !852
  %97 = sub nsw i32 %1, %5, !dbg !853
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 true), !dbg !854
  call void @llvm.dbg.value(metadata i32 %94, metadata !226, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 %96, metadata !232, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 %98, metadata !233, metadata !DIExpression()), !dbg !855
  %99 = tail call i32 @llvm.smax.i32(i32 %94, i32 %96), !dbg !857
  call void @llvm.dbg.value(metadata i32 %99, metadata !234, metadata !DIExpression()), !dbg !855
  %100 = tail call noundef i32 @llvm.smax.i32(i32 %99, i32 %98), !dbg !858
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !772, metadata !DIExpression()), !dbg !859
  %101 = add nsw i32 %8, %0, !dbg !860
  %102 = add nuw nsw i32 %7, %3, !dbg !861
  %103 = add nuw nsw i32 %5, %1, !dbg !862
  call void @llvm.dbg.value(metadata i32 %101, metadata !238, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %102, metadata !241, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %103, metadata !242, metadata !DIExpression()), !dbg !863
  %104 = tail call i32 @llvm.smin.i32(i32 %101, i32 %102), !dbg !865
  call void @llvm.dbg.value(metadata i32 %104, metadata !243, metadata !DIExpression()), !dbg !863
  %105 = tail call noundef i32 @llvm.smin.i32(i32 %104, i32 %103), !dbg !866
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !773, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !774, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !775, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !776, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !768, metadata !DIExpression()), !dbg !859
  %106 = icmp sgt i32 %100, %105, !dbg !867
  br i1 %106, label %156, label %107, !dbg !868

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1
  br label %111, !dbg !868

111:                                              ; preds = %107, %122
  %112 = phi i32 [ %100, %107 ], [ %152, %122 ]
  %113 = phi double [ 0.000000e+00, %107 ], [ %148, %122 ]
  %114 = phi double [ 0.000000e+00, %107 ], [ %151, %122 ]
  %115 = phi double [ 0.000000e+00, %107 ], [ %146, %122 ]
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !768, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double %113, metadata !774, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double %114, metadata !776, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double %115, metadata !775, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !869
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !869
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !869
  tail call void @llvm.dbg.value(metadata i32 0, metadata !786, metadata !DIExpression()), !dbg !788
  %116 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %8, i32 noundef %112, i32 noundef %7, i32 noundef %3, i32 noundef %6, ptr noundef nonnull %11), !dbg !870
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !786, metadata !DIExpression()), !dbg !788
  %117 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %1, i32 noundef %5, i32 noundef %112, i32 noundef %3, i32 noundef %7, i32 noundef %4, ptr noundef nonnull %12), !dbg !871
  %118 = add nsw i32 %117, %116, !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !786, metadata !DIExpression()), !dbg !788
  %119 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %8, i32 noundef %112, i32 noundef %5, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13), !dbg !873
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %118, i32 %119), metadata !786, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !788
  %120 = sub i32 0, %119, !dbg !874
  %121 = icmp eq i32 %118, %120, !dbg !874
  br i1 %121, label %122, label %154, !dbg !876

122:                                              ; preds = %111
  %123 = load double, ptr %11, align 8, !dbg !877, !tbaa !152
  %124 = load double, ptr %12, align 8, !dbg !878, !tbaa !152
  %125 = fmul double %123, %124, !dbg !879
  %126 = load double, ptr %13, align 8, !dbg !880, !tbaa !152
  %127 = fmul double %125, %126, !dbg !881
  tail call void @llvm.dbg.value(metadata double %127, metadata !784, metadata !DIExpression()), !dbg !788
  %128 = load double, ptr %108, align 8, !dbg !882, !tbaa !157
  %129 = fmul double %124, %126, !dbg !883
  %130 = tail call double @llvm.fabs.f64(double %129), !dbg !884
  %131 = fmul double %128, %130, !dbg !885
  tail call void @llvm.dbg.value(metadata double %131, metadata !785, metadata !DIExpression()), !dbg !788
  %132 = load double, ptr %109, align 8, !dbg !886, !tbaa !157
  %133 = fmul double %123, %126, !dbg !887
  %134 = tail call double @llvm.fabs.f64(double %133), !dbg !888
  %135 = fmul double %132, %134, !dbg !889
  %136 = fadd double %131, %135, !dbg !890
  tail call void @llvm.dbg.value(metadata double %136, metadata !785, metadata !DIExpression()), !dbg !788
  %137 = load double, ptr %110, align 8, !dbg !891, !tbaa !157
  %138 = tail call double @llvm.fabs.f64(double %125), !dbg !892
  %139 = fmul double %138, %137, !dbg !893
  %140 = fadd double %136, %139, !dbg !894
  tail call void @llvm.dbg.value(metadata double %140, metadata !785, metadata !DIExpression()), !dbg !788
  %141 = fcmp ult double %127, 0.000000e+00, !dbg !895
  %142 = add nuw nsw i32 %112, 1, !dbg !897
  %143 = sitofp i32 %142 to double, !dbg !897
  %144 = fmul double %127, %143, !dbg !897
  %145 = select i1 %141, double %144, double 0.000000e+00, !dbg !898
  %146 = fsub double %115, %145, !dbg !898
  %147 = select i1 %141, double -0.000000e+00, double %144, !dbg !898
  %148 = fadd double %113, %147, !dbg !898
  tail call void @llvm.dbg.value(metadata double %148, metadata !774, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double %146, metadata !775, metadata !DIExpression()), !dbg !859
  %149 = fmul double %140, %143, !dbg !899
  %150 = fmul double %149, %149, !dbg !900
  %151 = fadd double %114, %150, !dbg !901
  tail call void @llvm.dbg.value(metadata double %151, metadata !776, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !902
  %152 = add nuw nsw i32 %112, 2, !dbg !903
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !768, metadata !DIExpression()), !dbg !859
  %153 = icmp sgt i32 %152, %105, !dbg !867
  br i1 %153, label %156, label %111, !dbg !868, !llvm.loop !904

154:                                              ; preds = %111
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !906, !tbaa !152
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !906
  store double 0x7FF0000000000000, ptr %155, align 8, !dbg !906, !tbaa !157
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 380, i32 noundef 16) #7, !dbg !909
  tail call void @llvm.dbg.value(metadata double undef, metadata !774, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double undef, metadata !776, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double undef, metadata !775, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !902
  br label %182

156:                                              ; preds = %122, %92
  %157 = phi double [ 0.000000e+00, %92 ], [ %146, %122 ], !dbg !911
  %158 = phi double [ 0.000000e+00, %92 ], [ %151, %122 ], !dbg !912
  %159 = phi double [ 0.000000e+00, %92 ], [ %148, %122 ], !dbg !913
  %160 = and i32 %100, 1, !dbg !914
  %161 = icmp eq i32 %160, 0, !dbg !914
  tail call void @llvm.dbg.value(metadata double poison, metadata !777, metadata !DIExpression()), !dbg !859
  %162 = fsub double %159, %157, !dbg !915
  %163 = fneg double %162, !dbg !916
  %164 = select i1 %161, double %162, double %163, !dbg !916
  store double %164, ptr %9, align 8, !dbg !917, !tbaa !152
  %165 = fadd double %157, %159, !dbg !918
  %166 = fmul double %165, 0x3CC0000000000000, !dbg !919
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !920
  store double %166, ptr %167, align 8, !dbg !921, !tbaa !157
  %168 = sub nsw i32 %105, %100, !dbg !922
  %169 = sitofp i32 %168 to double, !dbg !923
  %170 = fmul double %169, 5.000000e-01, !dbg !924
  %171 = fadd double %170, 1.000000e+00, !dbg !925
  %172 = fdiv double %158, %171, !dbg !926
  %173 = tail call double @sqrt(double noundef %172) #7, !dbg !927
  %174 = load double, ptr %167, align 8, !dbg !928, !tbaa !157
  %175 = fadd double %173, %174, !dbg !928
  %176 = fadd double %169, 2.000000e+00, !dbg !929
  %177 = fmul double %176, 0x3CC0000000000000, !dbg !930
  %178 = load double, ptr %9, align 8, !dbg !931, !tbaa !152
  %179 = tail call double @llvm.fabs.f64(double %178), !dbg !932
  %180 = fmul double %177, %179, !dbg !933
  %181 = fadd double %175, %180, !dbg !934
  store double %181, ptr %167, align 8, !dbg !934, !tbaa !157
  br label %182, !dbg !935

182:                                              ; preds = %154, %156, %23, %91
  %183 = phi i32 [ 1, %23 ], [ 0, %91 ], [ 16, %154 ], [ 0, %156 ], !dbg !936
  ret i32 %183, !dbg !937
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_3j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !938 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !950
  call void @llvm.dbg.assign(metadata i1 undef, metadata !948, metadata !DIExpression(), metadata !950, metadata ptr %7, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !942, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !943, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !944, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !945, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !946, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !947, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !952
  %8 = call i32 @gsl_sf_coupling_3j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %7), !dbg !952, !range !468
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !949, metadata !DIExpression()), !dbg !951
  %9 = icmp eq i32 %8, 0, !dbg !953
  br i1 %9, label %11, label %10, !dbg !952

10:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef %8) #7, !dbg !955
  br label %11, !dbg !955

11:                                               ; preds = %6, %10
  %12 = load double, ptr %7, align 8, !dbg !952, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !958
  ret double %12, !dbg !958
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_6j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !959 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !967, metadata !DIExpression(), metadata !969, metadata ptr %7, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !961, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !962, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !963, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !964, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !965, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !966, metadata !DIExpression()), !dbg !970
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !971
  %8 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %7), !dbg !971
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !968, metadata !DIExpression()), !dbg !970
  %9 = icmp eq i32 %8, 0, !dbg !972
  br i1 %9, label %11, label %10, !dbg !971

10:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef %8) #7, !dbg !974
  br label %11, !dbg !974

11:                                               ; preds = %6, %10
  %12 = load double, ptr %7, align 8, !dbg !971, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !977
  ret double %12, !dbg !977
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_RacahW(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !978 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !988
  call void @llvm.dbg.assign(metadata i1 undef, metadata !986, metadata !DIExpression(), metadata !988, metadata ptr %7, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !980, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !981, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !982, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !983, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !984, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !985, metadata !DIExpression()), !dbg !989
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !990
  call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %1, metadata !737, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %2, metadata !738, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %3, metadata !739, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %4, metadata !740, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %5, metadata !741, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %7, metadata !742, metadata !DIExpression()), !dbg !991
  %8 = call i32 @gsl_sf_coupling_6j_e(i32 noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %7), !dbg !993
  call void @llvm.dbg.value(metadata i32 %8, metadata !743, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i32 %3, i32 %2, i32 %0), metadata !744, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !991
  %9 = load double, ptr %7, align 8, !dbg !994, !tbaa !152
  call void @llvm.dbg.assign(metadata double %20, metadata !986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !995, metadata ptr %7, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !987, metadata !DIExpression()), !dbg !989
  %10 = icmp eq i32 %8, 0, !dbg !996
  br i1 %10, label %12, label %11, !dbg !990

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 448, i32 noundef %8) #7, !dbg !998
  br label %12, !dbg !998

12:                                               ; preds = %6, %11
  %13 = add nsw i32 %1, %0, !dbg !1001
  call void @llvm.dbg.value(metadata !DIArgList(i32 %13, i32 %3, i32 %2), metadata !744, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !991
  %14 = add nsw i32 %13, %2, !dbg !1002
  call void @llvm.dbg.value(metadata !DIArgList(i32 %14, i32 %3), metadata !744, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !991
  %15 = add nsw i32 %14, %3, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %15, metadata !744, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value)), !dbg !991
  %16 = sdiv i32 %15, 2, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %16, metadata !744, metadata !DIExpression()), !dbg !991
  %17 = and i32 %16, 1, !dbg !1005
  %18 = icmp eq i32 %17, 0, !dbg !1005
  %19 = fneg double %9, !dbg !994
  %20 = select i1 %18, double %9, double %19, !dbg !994
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1006
  ret double %20, !dbg !1006
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_coupling_9j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !dbg !1007 {
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1020, metadata !DIExpression(), metadata !1022, metadata ptr %10, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1011, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1012, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1013, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1014, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1015, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1016, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1017, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1018, metadata !DIExpression()), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1019, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !1024
  %11 = call i32 @gsl_sf_coupling_9j_e(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull %10), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1021, metadata !DIExpression()), !dbg !1023
  %12 = icmp eq i32 %11, 0, !dbg !1025
  br i1 %12, label %14, label %13, !dbg !1024

13:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef %11) #7, !dbg !1027
  br label %14, !dbg !1027

14:                                               ; preds = %9, %13
  %15 = load double, ptr %10, align 8, !dbg !1024, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !1030
  ret double %15, !dbg !1030
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!258 = !DILocation(line: 161, column: 33, scope: !104)
!259 = !DILocation(line: 161, column: 51, scope: !104)
!260 = !DILocation(line: 161, column: 44, scope: !104)
!261 = !DILocation(line: 161, column: 62, scope: !104)
!262 = !DILocation(line: 161, column: 55, scope: !104)
!263 = !DILocation(line: 161, column: 73, scope: !104)
!264 = !DILocation(line: 161, column: 66, scope: !104)
!265 = !DILocation(line: 162, column: 31, scope: !104)
!266 = !DILocation(line: 162, column: 24, scope: !104)
!267 = !DILocation(line: 162, column: 41, scope: !104)
!268 = !DILocation(line: 162, column: 48, scope: !104)
!269 = !DILocation(line: 162, column: 37, scope: !104)
!270 = !DILocation(line: 162, column: 35, scope: !104)
!271 = !DILocation(line: 161, column: 21, scope: !104)
!272 = !DILocation(line: 163, column: 29, scope: !104)
!273 = !DILocation(line: 163, column: 40, scope: !104)
!274 = !DILocation(line: 163, column: 33, scope: !104)
!275 = !DILocation(line: 163, column: 51, scope: !104)
!276 = !DILocation(line: 163, column: 44, scope: !104)
!277 = !DILocation(line: 163, column: 62, scope: !104)
!278 = !DILocation(line: 163, column: 55, scope: !104)
!279 = !DILocation(line: 163, column: 73, scope: !104)
!280 = !DILocation(line: 163, column: 66, scope: !104)
!281 = !DILocation(line: 164, column: 31, scope: !104)
!282 = !DILocation(line: 164, column: 24, scope: !104)
!283 = !DILocation(line: 164, column: 55, scope: !104)
!284 = !DILocation(line: 164, column: 53, scope: !104)
!285 = !DILocation(line: 164, column: 35, scope: !104)
!286 = !DILocation(line: 163, column: 21, scope: !104)
!287 = !DILocation(line: 166, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 166, column: 5)
!289 = distinct !DILexicalBlock(scope: !104, file: !2, line: 166, column: 5)
!290 = !DILocation(line: 166, column: 5, scope: !289)
!291 = !DILocation(line: 155, column: 12, scope: !104)
!292 = !DILocation(line: 156, column: 12, scope: !104)
!293 = !DILocation(line: 157, column: 12, scope: !104)
!294 = !DILocation(line: 158, column: 12, scope: !104)
!295 = !DILocation(line: 159, column: 12, scope: !104)
!296 = !DILocation(line: 167, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !288, file: !2, line: 166, column: 36)
!298 = !DILocation(line: 167, column: 14, scope: !297)
!299 = !DILocation(line: 168, column: 46, scope: !297)
!300 = !DILocation(line: 168, column: 17, scope: !297)
!301 = !DILocation(line: 168, column: 14, scope: !297)
!302 = !DILocation(line: 169, column: 46, scope: !297)
!303 = !DILocation(line: 169, column: 17, scope: !297)
!304 = !DILocation(line: 169, column: 14, scope: !297)
!305 = !DILocation(line: 170, column: 38, scope: !297)
!306 = !DILocation(line: 170, column: 48, scope: !297)
!307 = !DILocation(line: 170, column: 42, scope: !297)
!308 = !DILocation(line: 170, column: 58, scope: !297)
!309 = !DILocation(line: 170, column: 52, scope: !297)
!310 = !DILocation(line: 170, column: 62, scope: !297)
!311 = !DILocation(line: 171, column: 38, scope: !297)
!312 = !DILocation(line: 171, column: 48, scope: !297)
!313 = !DILocation(line: 171, column: 42, scope: !297)
!314 = !DILocation(line: 171, column: 58, scope: !297)
!315 = !DILocation(line: 171, column: 52, scope: !297)
!316 = !DILocation(line: 171, column: 62, scope: !297)
!317 = !DILocation(line: 170, column: 17, scope: !297)
!318 = !DILocation(line: 174, column: 18, scope: !319)
!319 = distinct !DILexicalBlock(scope: !297, file: !2, line: 174, column: 11)
!320 = !DILocation(line: 174, column: 11, scope: !297)
!321 = !DILocation(line: 143, column: 35, scope: !104)
!322 = !DILocation(line: 149, column: 19, scope: !104)
!323 = !DILocation(line: 178, column: 11, scope: !297)
!324 = !DILocation(line: 184, column: 23, scope: !297)
!325 = !DILocation(line: 184, column: 15, scope: !297)
!326 = !DILocation(line: 166, column: 32, scope: !288)
!327 = !DILocation(line: 175, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 175, column: 9)
!329 = distinct !DILexicalBlock(scope: !319, file: !2, line: 174, column: 24)
!330 = !DILocation(line: 175, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 175, column: 9)
!332 = !DILocation(line: 178, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !297, file: !2, line: 178, column: 11)
!334 = !DILocation(line: 186, column: 14, scope: !297)
!335 = distinct !{!335, !290, !336, !337, !338}
!336 = !DILocation(line: 187, column: 5, scope: !289)
!337 = !{!"llvm.loop.mustprogress"}
!338 = !{!"llvm.loop.peeled.count", i32 1}
!339 = !DILocation(line: 151, column: 12, scope: !104)
!340 = !DILocation(line: 189, column: 28, scope: !104)
!341 = !DILocation(line: 189, column: 18, scope: !104)
!342 = !DILocation(line: 190, column: 13, scope: !104)
!343 = !DILocation(line: 191, column: 53, scope: !104)
!344 = !DILocation(line: 191, column: 42, scope: !104)
!345 = !DILocation(line: 191, column: 17, scope: !104)
!346 = !DILocation(line: 192, column: 50, scope: !104)
!347 = !DILocation(line: 192, column: 44, scope: !104)
!348 = !DILocation(line: 192, column: 42, scope: !104)
!349 = !DILocation(line: 192, column: 60, scope: !104)
!350 = !DILocation(line: 192, column: 58, scope: !104)
!351 = !DILocation(line: 192, column: 17, scope: !104)
!352 = !DILocation(line: 194, column: 5, scope: !104)
!353 = !DILocation(line: 195, column: 3, scope: !105)
!354 = !DILocation(line: 0, scope: !107)
!355 = !DILocation(line: 196, column: 1, scope: !84)
!356 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359, !359, !38, !38}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!361 = !DISubprogram(name: "gsl_sf_lnchoose_e", scope: !362, file: !362, line: 152, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!363 = !DISubroutineType(types: !364)
!364 = !{!38, !365, !365, !87}
!365 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!366 = !DISubprogram(name: "log", scope: !367, file: !367, line: 104, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!368 = !DISubroutineType(types: !369)
!369 = !{!93, !93}
!370 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !371, file: !371, line: 110, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!372 = !DISubroutineType(types: !373)
!373 = !{!38, !374, !374, !87}
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!375 = distinct !DISubprogram(name: "gsl_sf_coupling_6j_e", scope: !2, file: !2, line: 212, type: !85, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !407, !408, !409, !410, !411}
!377 = !DILocalVariable(name: "two_ja", arg: 1, scope: !375, file: !2, line: 212, type: !38)
!378 = !DILocalVariable(name: "two_jb", arg: 2, scope: !375, file: !2, line: 212, type: !38)
!379 = !DILocalVariable(name: "two_jc", arg: 3, scope: !375, file: !2, line: 212, type: !38)
!380 = !DILocalVariable(name: "two_jd", arg: 4, scope: !375, file: !2, line: 213, type: !38)
!381 = !DILocalVariable(name: "two_je", arg: 5, scope: !375, file: !2, line: 213, type: !38)
!382 = !DILocalVariable(name: "two_jf", arg: 6, scope: !375, file: !2, line: 213, type: !38)
!383 = !DILocalVariable(name: "result", arg: 7, scope: !375, file: !2, line: 214, type: !87)
!384 = !DILocalVariable(name: "n1", scope: !385, file: !2, line: 233, type: !88)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 232, column: 8)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 223, column: 14)
!387 = distinct !DILexicalBlock(scope: !375, file: !2, line: 218, column: 9)
!388 = !DILocalVariable(name: "d1", scope: !385, file: !2, line: 234, type: !88)
!389 = !DILocalVariable(name: "d2", scope: !385, file: !2, line: 234, type: !88)
!390 = !DILocalVariable(name: "d3", scope: !385, file: !2, line: 234, type: !88)
!391 = !DILocalVariable(name: "d4", scope: !385, file: !2, line: 234, type: !88)
!392 = !DILocalVariable(name: "d5", scope: !385, file: !2, line: 234, type: !88)
!393 = !DILocalVariable(name: "d6", scope: !385, file: !2, line: 234, type: !88)
!394 = !DILocalVariable(name: "norm", scope: !385, file: !2, line: 235, type: !93)
!395 = !DILocalVariable(name: "tk", scope: !385, file: !2, line: 236, type: !38)
!396 = !DILocalVariable(name: "tkmin", scope: !385, file: !2, line: 236, type: !38)
!397 = !DILocalVariable(name: "tkmax", scope: !385, file: !2, line: 236, type: !38)
!398 = !DILocalVariable(name: "phase", scope: !385, file: !2, line: 237, type: !93)
!399 = !DILocalVariable(name: "sum_pos", scope: !385, file: !2, line: 238, type: !93)
!400 = !DILocalVariable(name: "sum_neg", scope: !385, file: !2, line: 239, type: !93)
!401 = !DILocalVariable(name: "sumsq_err", scope: !385, file: !2, line: 240, type: !93)
!402 = !DILocalVariable(name: "status", scope: !385, file: !2, line: 241, type: !38)
!403 = !DILocalVariable(name: "term", scope: !404, file: !2, line: 266, type: !93)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 265, column: 39)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 265, column: 5)
!406 = distinct !DILexicalBlock(scope: !385, file: !2, line: 265, column: 5)
!407 = !DILocalVariable(name: "term_err", scope: !404, file: !2, line: 267, type: !93)
!408 = !DILocalVariable(name: "den_1", scope: !404, file: !2, line: 268, type: !88)
!409 = !DILocalVariable(name: "den_2", scope: !404, file: !2, line: 268, type: !88)
!410 = !DILocalVariable(name: "d1_a", scope: !404, file: !2, line: 269, type: !88)
!411 = !DILocalVariable(name: "d1_b", scope: !404, file: !2, line: 269, type: !88)
!412 = distinct !DIAssignID()
!413 = !DILocation(line: 0, scope: !385)
!414 = distinct !DIAssignID()
!415 = distinct !DIAssignID()
!416 = distinct !DIAssignID()
!417 = distinct !DIAssignID()
!418 = distinct !DIAssignID()
!419 = distinct !DIAssignID()
!420 = distinct !DIAssignID()
!421 = !DILocation(line: 0, scope: !404)
!422 = distinct !DIAssignID()
!423 = !DILocation(line: 0, scope: !375)
!424 = !DILocation(line: 218, column: 20, scope: !387)
!425 = !DILocation(line: 221, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 221, column: 5)
!427 = distinct !DILexicalBlock(scope: !387, file: !2, line: 220, column: 8)
!428 = !DILocation(line: 221, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !2, line: 221, column: 5)
!430 = !DILocation(line: 0, scope: !161, inlinedAt: !431)
!431 = distinct !DILocation(line: 223, column: 14, scope: !386)
!432 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !431)
!433 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !431)
!434 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !431)
!435 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !431)
!436 = !DILocation(line: 223, column: 14, scope: !386)
!437 = !DILocation(line: 224, column: 11, scope: !386)
!438 = !DILocation(line: 0, scope: !161, inlinedAt: !439)
!439 = distinct !DILocation(line: 224, column: 14, scope: !386)
!440 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !439)
!441 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !439)
!442 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !439)
!443 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !439)
!444 = !DILocation(line: 224, column: 14, scope: !386)
!445 = !DILocation(line: 225, column: 11, scope: !386)
!446 = !DILocation(line: 0, scope: !161, inlinedAt: !447)
!447 = distinct !DILocation(line: 225, column: 14, scope: !386)
!448 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !447)
!449 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !447)
!450 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !447)
!451 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !447)
!452 = !DILocation(line: 225, column: 14, scope: !386)
!453 = !DILocation(line: 226, column: 11, scope: !386)
!454 = !DILocation(line: 0, scope: !161, inlinedAt: !455)
!455 = distinct !DILocation(line: 226, column: 14, scope: !386)
!456 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !455)
!457 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !455)
!458 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !455)
!459 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !455)
!460 = !DILocation(line: 226, column: 14, scope: !386)
!461 = !DILocation(line: 223, column: 14, scope: !387)
!462 = !DILocation(line: 229, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !386, file: !2, line: 227, column: 8)
!464 = !DILocation(line: 230, column: 5, scope: !463)
!465 = !DILocation(line: 233, column: 5, scope: !385)
!466 = !DILocation(line: 234, column: 5, scope: !385)
!467 = !DILocation(line: 242, column: 15, scope: !385)
!468 = !{i32 0, i32 17}
!469 = !DILocation(line: 243, column: 15, scope: !385)
!470 = !DILocation(line: 243, column: 12, scope: !385)
!471 = !DILocation(line: 244, column: 15, scope: !385)
!472 = !DILocation(line: 244, column: 12, scope: !385)
!473 = !DILocation(line: 245, column: 15, scope: !385)
!474 = !DILocation(line: 246, column: 15, scope: !475)
!475 = distinct !DILexicalBlock(scope: !385, file: !2, line: 246, column: 8)
!476 = !DILocation(line: 246, column: 8, scope: !385)
!477 = !DILocation(line: 247, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !2, line: 247, column: 7)
!479 = distinct !DILexicalBlock(scope: !475, file: !2, line: 246, column: 31)
!480 = !DILocation(line: 247, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !2, line: 247, column: 7)
!482 = !DILocation(line: 249, column: 20, scope: !385)
!483 = !DILocation(line: 249, column: 12, scope: !385)
!484 = !DILocation(line: 249, column: 35, scope: !385)
!485 = !DILocation(line: 249, column: 27, scope: !385)
!486 = !DILocation(line: 249, column: 25, scope: !385)
!487 = !DILocation(line: 249, column: 50, scope: !385)
!488 = !DILocation(line: 249, column: 42, scope: !385)
!489 = !DILocation(line: 249, column: 40, scope: !385)
!490 = !DILocation(line: 249, column: 65, scope: !385)
!491 = !DILocation(line: 249, column: 57, scope: !385)
!492 = !DILocation(line: 249, column: 55, scope: !385)
!493 = !DILocation(line: 252, column: 27, scope: !385)
!494 = !DILocation(line: 252, column: 45, scope: !385)
!495 = !DILocation(line: 253, column: 27, scope: !385)
!496 = !DILocation(line: 253, column: 45, scope: !385)
!497 = !DILocation(line: 0, scope: !227, inlinedAt: !498)
!498 = distinct !DILocation(line: 251, column: 13, scope: !385)
!499 = !DILocation(line: 37, column: 10, scope: !227, inlinedAt: !498)
!500 = !DILocation(line: 255, column: 28, scope: !385)
!501 = !DILocation(line: 255, column: 37, scope: !385)
!502 = !DILocation(line: 255, column: 46, scope: !385)
!503 = !DILocation(line: 255, column: 55, scope: !385)
!504 = !DILocation(line: 256, column: 37, scope: !385)
!505 = !DILocation(line: 257, column: 37, scope: !385)
!506 = !DILocation(line: 258, column: 28, scope: !385)
!507 = !DILocation(line: 258, column: 37, scope: !385)
!508 = !DILocation(line: 259, column: 28, scope: !385)
!509 = !DILocation(line: 259, column: 37, scope: !385)
!510 = !DILocalVariable(name: "a", arg: 1, scope: !511, file: !2, line: 50, type: !230)
!511 = distinct !DISubprogram(name: "locMin5", scope: !2, file: !2, line: 50, type: !512, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!38, !230, !230, !230, !230, !230}
!514 = !{!510, !515, !516, !517, !518, !519, !520, !521}
!515 = !DILocalVariable(name: "b", arg: 2, scope: !511, file: !2, line: 50, type: !230)
!516 = !DILocalVariable(name: "c", arg: 3, scope: !511, file: !2, line: 50, type: !230)
!517 = !DILocalVariable(name: "d", arg: 4, scope: !511, file: !2, line: 50, type: !230)
!518 = !DILocalVariable(name: "e", arg: 5, scope: !511, file: !2, line: 50, type: !230)
!519 = !DILocalVariable(name: "f", scope: !511, file: !2, line: 52, type: !38)
!520 = !DILocalVariable(name: "g", scope: !511, file: !2, line: 53, type: !38)
!521 = !DILocalVariable(name: "h", scope: !511, file: !2, line: 54, type: !38)
!522 = !DILocation(line: 0, scope: !511, inlinedAt: !523)
!523 = distinct !DILocation(line: 255, column: 13, scope: !385)
!524 = !DILocation(line: 52, column: 11, scope: !511, inlinedAt: !523)
!525 = !DILocation(line: 53, column: 11, scope: !511, inlinedAt: !523)
!526 = !DILocation(line: 54, column: 11, scope: !511, inlinedAt: !523)
!527 = !DILocation(line: 55, column: 10, scope: !511, inlinedAt: !523)
!528 = !DILocation(line: 265, column: 21, scope: !405)
!529 = !DILocation(line: 265, column: 5, scope: !406)
!530 = !DILocation(line: 261, column: 13, scope: !385)
!531 = !DILocation(line: 269, column: 7, scope: !404)
!532 = !DILocation(line: 272, column: 66, scope: !404)
!533 = !DILocation(line: 272, column: 71, scope: !404)
!534 = !DILocation(line: 272, column: 74, scope: !404)
!535 = !DILocation(line: 272, column: 17, scope: !404)
!536 = !DILocation(line: 273, column: 33, scope: !404)
!537 = !DILocation(line: 273, column: 17, scope: !404)
!538 = !DILocation(line: 273, column: 14, scope: !404)
!539 = !DILocation(line: 274, column: 66, scope: !404)
!540 = !DILocation(line: 274, column: 71, scope: !404)
!541 = !DILocation(line: 274, column: 17, scope: !404)
!542 = !DILocation(line: 274, column: 14, scope: !404)
!543 = !DILocation(line: 275, column: 66, scope: !404)
!544 = !DILocation(line: 275, column: 71, scope: !404)
!545 = !DILocation(line: 275, column: 17, scope: !404)
!546 = !DILocation(line: 275, column: 14, scope: !404)
!547 = !DILocation(line: 276, column: 57, scope: !404)
!548 = !DILocation(line: 276, column: 62, scope: !404)
!549 = !DILocation(line: 276, column: 17, scope: !404)
!550 = !DILocation(line: 276, column: 14, scope: !404)
!551 = !DILocation(line: 277, column: 57, scope: !404)
!552 = !DILocation(line: 277, column: 62, scope: !404)
!553 = !DILocation(line: 277, column: 17, scope: !404)
!554 = !DILocation(line: 277, column: 14, scope: !404)
!555 = !DILocation(line: 278, column: 57, scope: !404)
!556 = !DILocation(line: 278, column: 62, scope: !404)
!557 = !DILocation(line: 278, column: 17, scope: !404)
!558 = !DILocation(line: 278, column: 14, scope: !404)
!559 = !DILocation(line: 279, column: 57, scope: !404)
!560 = !DILocation(line: 279, column: 62, scope: !404)
!561 = !DILocation(line: 279, column: 17, scope: !404)
!562 = !DILocation(line: 281, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !404, file: !2, line: 281, column: 10)
!564 = !DILocation(line: 281, column: 10, scope: !404)
!565 = !DILocation(line: 282, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 282, column: 9)
!567 = distinct !DILexicalBlock(scope: !563, file: !2, line: 281, column: 33)
!568 = !DILocation(line: 282, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !2, line: 282, column: 9)
!570 = !DILocation(line: 312, column: 5, scope: !405)
!571 = !DILocation(line: 285, column: 21, scope: !404)
!572 = !DILocation(line: 285, column: 32, scope: !404)
!573 = !DILocation(line: 285, column: 25, scope: !404)
!574 = distinct !DIAssignID()
!575 = !DILocation(line: 286, column: 21, scope: !404)
!576 = !DILocation(line: 286, column: 27, scope: !404)
!577 = !DILocation(line: 286, column: 25, scope: !404)
!578 = !DILocation(line: 286, column: 44, scope: !404)
!579 = !DILocation(line: 286, column: 66, scope: !404)
!580 = !DILocation(line: 286, column: 59, scope: !404)
!581 = !DILocation(line: 286, column: 42, scope: !404)
!582 = distinct !DIAssignID()
!583 = !DILocation(line: 288, column: 30, scope: !404)
!584 = !DILocation(line: 288, column: 26, scope: !404)
!585 = !DILocation(line: 288, column: 37, scope: !404)
!586 = !DILocation(line: 288, column: 33, scope: !404)
!587 = !DILocation(line: 289, column: 40, scope: !404)
!588 = !DILocation(line: 289, column: 29, scope: !404)
!589 = !DILocation(line: 289, column: 27, scope: !404)
!590 = !DILocation(line: 290, column: 23, scope: !404)
!591 = !DILocation(line: 290, column: 40, scope: !404)
!592 = !DILocation(line: 290, column: 29, scope: !404)
!593 = !DILocation(line: 290, column: 27, scope: !404)
!594 = !DILocation(line: 290, column: 17, scope: !404)
!595 = !DILocation(line: 291, column: 23, scope: !404)
!596 = !DILocation(line: 291, column: 29, scope: !404)
!597 = !DILocation(line: 291, column: 27, scope: !404)
!598 = !DILocation(line: 291, column: 17, scope: !404)
!599 = !DILocation(line: 293, column: 23, scope: !404)
!600 = !DILocation(line: 293, column: 30, scope: !404)
!601 = !DILocation(line: 293, column: 26, scope: !404)
!602 = !DILocation(line: 293, column: 37, scope: !404)
!603 = !DILocation(line: 293, column: 33, scope: !404)
!604 = !DILocation(line: 294, column: 23, scope: !404)
!605 = !DILocation(line: 294, column: 40, scope: !404)
!606 = !DILocation(line: 294, column: 29, scope: !404)
!607 = !DILocation(line: 294, column: 27, scope: !404)
!608 = !DILocation(line: 295, column: 23, scope: !404)
!609 = !DILocation(line: 295, column: 40, scope: !404)
!610 = !DILocation(line: 295, column: 29, scope: !404)
!611 = !DILocation(line: 295, column: 27, scope: !404)
!612 = !DILocation(line: 295, column: 17, scope: !404)
!613 = !DILocation(line: 296, column: 23, scope: !404)
!614 = !DILocation(line: 296, column: 29, scope: !404)
!615 = !DILocation(line: 296, column: 27, scope: !404)
!616 = !DILocation(line: 296, column: 17, scope: !404)
!617 = !DILocation(line: 298, column: 26, scope: !404)
!618 = !DILocation(line: 298, column: 21, scope: !404)
!619 = !DILocation(line: 298, column: 30, scope: !404)
!620 = !DILocation(line: 298, column: 42, scope: !404)
!621 = !DILocation(line: 299, column: 15, scope: !404)
!622 = !DILocation(line: 300, column: 22, scope: !404)
!623 = !DILocation(line: 300, column: 28, scope: !404)
!624 = !DILocation(line: 300, column: 26, scope: !404)
!625 = !DILocation(line: 300, column: 46, scope: !404)
!626 = !DILocation(line: 300, column: 44, scope: !404)
!627 = !DILocation(line: 301, column: 29, scope: !404)
!628 = !DILocation(line: 301, column: 19, scope: !404)
!629 = !DILocation(line: 301, column: 42, scope: !404)
!630 = !DILocation(line: 301, column: 16, scope: !404)
!631 = !DILocation(line: 302, column: 29, scope: !404)
!632 = !DILocation(line: 302, column: 19, scope: !404)
!633 = !DILocation(line: 302, column: 42, scope: !404)
!634 = !DILocation(line: 302, column: 16, scope: !404)
!635 = !DILocation(line: 304, column: 15, scope: !636)
!636 = distinct !DILexicalBlock(scope: !404, file: !2, line: 304, column: 10)
!637 = !DILocation(line: 304, column: 10, scope: !404)
!638 = !DILocation(line: 311, column: 30, scope: !404)
!639 = !DILocation(line: 311, column: 40, scope: !404)
!640 = !DILocation(line: 311, column: 17, scope: !404)
!641 = !DILocation(line: 265, column: 33, scope: !405)
!642 = distinct !{!642, !529, !643, !337}
!643 = !DILocation(line: 312, column: 5, scope: !406)
!644 = !DILocation(line: 240, column: 12, scope: !385)
!645 = !DILocation(line: 239, column: 12, scope: !385)
!646 = !DILocation(line: 238, column: 12, scope: !385)
!647 = !DILocation(line: 314, column: 28, scope: !385)
!648 = !DILocation(line: 314, column: 18, scope: !385)
!649 = !DILocation(line: 315, column: 53, scope: !385)
!650 = !DILocation(line: 315, column: 42, scope: !385)
!651 = !DILocation(line: 315, column: 13, scope: !385)
!652 = !DILocation(line: 315, column: 18, scope: !385)
!653 = !DILocation(line: 316, column: 48, scope: !385)
!654 = !DILocation(line: 316, column: 42, scope: !385)
!655 = !DILocation(line: 316, column: 41, scope: !385)
!656 = !DILocation(line: 316, column: 55, scope: !385)
!657 = !DILocation(line: 316, column: 35, scope: !385)
!658 = !DILocation(line: 316, column: 20, scope: !385)
!659 = !DILocation(line: 316, column: 17, scope: !385)
!660 = !DILocation(line: 317, column: 59, scope: !385)
!661 = !DILocation(line: 317, column: 42, scope: !385)
!662 = !DILocation(line: 317, column: 81, scope: !385)
!663 = !DILocation(line: 317, column: 68, scope: !385)
!664 = !DILocation(line: 317, column: 66, scope: !385)
!665 = !DILocation(line: 317, column: 17, scope: !385)
!666 = !DILocation(line: 319, column: 5, scope: !385)
!667 = !DILocation(line: 320, column: 3, scope: !386)
!668 = !DILocation(line: 0, scope: !387)
!669 = !DILocation(line: 321, column: 1, scope: !375)
!670 = distinct !DISubprogram(name: "delta", scope: !2, file: !2, line: 63, type: !671, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{!38, !38, !38, !38, !87}
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682}
!674 = !DILocalVariable(name: "ta", arg: 1, scope: !670, file: !2, line: 63, type: !38)
!675 = !DILocalVariable(name: "tb", arg: 2, scope: !670, file: !2, line: 63, type: !38)
!676 = !DILocalVariable(name: "tc", arg: 3, scope: !670, file: !2, line: 63, type: !38)
!677 = !DILocalVariable(name: "d", arg: 4, scope: !670, file: !2, line: 63, type: !87)
!678 = !DILocalVariable(name: "f1", scope: !670, file: !2, line: 65, type: !88)
!679 = !DILocalVariable(name: "f2", scope: !670, file: !2, line: 65, type: !88)
!680 = !DILocalVariable(name: "f3", scope: !670, file: !2, line: 65, type: !88)
!681 = !DILocalVariable(name: "f4", scope: !670, file: !2, line: 65, type: !88)
!682 = !DILocalVariable(name: "status", scope: !670, file: !2, line: 66, type: !38)
!683 = distinct !DIAssignID()
!684 = !DILocation(line: 0, scope: !670)
!685 = distinct !DIAssignID()
!686 = distinct !DIAssignID()
!687 = distinct !DIAssignID()
!688 = !DILocation(line: 65, column: 3, scope: !670)
!689 = !DILocation(line: 67, column: 31, scope: !670)
!690 = !DILocation(line: 67, column: 36, scope: !670)
!691 = !DILocation(line: 67, column: 41, scope: !670)
!692 = !DILocation(line: 67, column: 13, scope: !670)
!693 = !DILocation(line: 68, column: 31, scope: !670)
!694 = !DILocation(line: 68, column: 36, scope: !670)
!695 = !DILocation(line: 68, column: 41, scope: !670)
!696 = !DILocation(line: 68, column: 13, scope: !670)
!697 = !DILocation(line: 68, column: 10, scope: !670)
!698 = !DILocation(line: 69, column: 31, scope: !670)
!699 = !DILocation(line: 69, column: 36, scope: !670)
!700 = !DILocation(line: 69, column: 41, scope: !670)
!701 = !DILocation(line: 69, column: 13, scope: !670)
!702 = !DILocation(line: 69, column: 10, scope: !670)
!703 = !DILocation(line: 70, column: 36, scope: !670)
!704 = !DILocation(line: 70, column: 41, scope: !670)
!705 = !DILocation(line: 70, column: 44, scope: !670)
!706 = !DILocation(line: 70, column: 13, scope: !670)
!707 = !DILocation(line: 71, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !670, file: !2, line: 71, column: 6)
!709 = !DILocation(line: 71, column: 6, scope: !670)
!710 = !DILocation(line: 72, column: 5, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 72, column: 5)
!712 = distinct !DILexicalBlock(scope: !708, file: !2, line: 71, column: 19)
!713 = !DILocation(line: 72, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !2, line: 72, column: 5)
!715 = !DILocation(line: 74, column: 15, scope: !670)
!716 = !DILocation(line: 74, column: 24, scope: !670)
!717 = !DILocation(line: 74, column: 19, scope: !670)
!718 = !DILocation(line: 74, column: 33, scope: !670)
!719 = !DILocation(line: 74, column: 28, scope: !670)
!720 = !DILocation(line: 74, column: 42, scope: !670)
!721 = !DILocation(line: 74, column: 37, scope: !670)
!722 = !DILocation(line: 74, column: 10, scope: !670)
!723 = !DILocation(line: 75, column: 36, scope: !670)
!724 = !DILocation(line: 75, column: 34, scope: !670)
!725 = !DILocation(line: 75, column: 6, scope: !670)
!726 = !DILocation(line: 75, column: 10, scope: !670)
!727 = !DILocation(line: 76, column: 3, scope: !670)
!728 = !DILocation(line: 77, column: 1, scope: !670)
!729 = !DISubprogram(name: "sqrt", scope: !367, file: !367, line: 143, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DISubprogram(name: "gsl_sf_fact_e", scope: !362, file: !362, line: 119, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{!38, !733, !87}
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!734 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW_e", scope: !2, file: !2, line: 325, type: !85, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744}
!736 = !DILocalVariable(name: "two_ja", arg: 1, scope: !734, file: !2, line: 325, type: !38)
!737 = !DILocalVariable(name: "two_jb", arg: 2, scope: !734, file: !2, line: 325, type: !38)
!738 = !DILocalVariable(name: "two_jc", arg: 3, scope: !734, file: !2, line: 325, type: !38)
!739 = !DILocalVariable(name: "two_jd", arg: 4, scope: !734, file: !2, line: 326, type: !38)
!740 = !DILocalVariable(name: "two_je", arg: 5, scope: !734, file: !2, line: 326, type: !38)
!741 = !DILocalVariable(name: "two_jf", arg: 6, scope: !734, file: !2, line: 326, type: !38)
!742 = !DILocalVariable(name: "result", arg: 7, scope: !734, file: !2, line: 327, type: !87)
!743 = !DILocalVariable(name: "status", scope: !734, file: !2, line: 329, type: !38)
!744 = !DILocalVariable(name: "phase_sum", scope: !734, file: !2, line: 330, type: !38)
!745 = !DILocation(line: 0, scope: !734)
!746 = !DILocation(line: 329, column: 16, scope: !734)
!747 = !DILocation(line: 330, column: 27, scope: !734)
!748 = !DILocation(line: 330, column: 36, scope: !734)
!749 = !DILocation(line: 330, column: 45, scope: !734)
!750 = !DILocation(line: 330, column: 54, scope: !734)
!751 = !DILocation(line: 331, column: 20, scope: !734)
!752 = !DILocation(line: 331, column: 15, scope: !734)
!753 = !DILocation(line: 332, column: 3, scope: !734)
!754 = distinct !DISubprogram(name: "gsl_sf_coupling_9j_e", scope: !2, file: !2, line: 337, type: !755, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!38, !38, !38, !38, !38, !38, !38, !38, !38, !38, !87}
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !772, !773, !774, !775, !776, !777, !778, !782, !783, !784, !785, !786}
!758 = !DILocalVariable(name: "two_ja", arg: 1, scope: !754, file: !2, line: 337, type: !38)
!759 = !DILocalVariable(name: "two_jb", arg: 2, scope: !754, file: !2, line: 337, type: !38)
!760 = !DILocalVariable(name: "two_jc", arg: 3, scope: !754, file: !2, line: 337, type: !38)
!761 = !DILocalVariable(name: "two_jd", arg: 4, scope: !754, file: !2, line: 338, type: !38)
!762 = !DILocalVariable(name: "two_je", arg: 5, scope: !754, file: !2, line: 338, type: !38)
!763 = !DILocalVariable(name: "two_jf", arg: 6, scope: !754, file: !2, line: 338, type: !38)
!764 = !DILocalVariable(name: "two_jg", arg: 7, scope: !754, file: !2, line: 339, type: !38)
!765 = !DILocalVariable(name: "two_jh", arg: 8, scope: !754, file: !2, line: 339, type: !38)
!766 = !DILocalVariable(name: "two_ji", arg: 9, scope: !754, file: !2, line: 339, type: !38)
!767 = !DILocalVariable(name: "result", arg: 10, scope: !754, file: !2, line: 340, type: !87)
!768 = !DILocalVariable(name: "tk", scope: !769, file: !2, line: 362, type: !38)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 361, column: 8)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 350, column: 14)
!771 = distinct !DILexicalBlock(scope: !754, file: !2, line: 344, column: 9)
!772 = !DILocalVariable(name: "tkmin", scope: !769, file: !2, line: 363, type: !38)
!773 = !DILocalVariable(name: "tkmax", scope: !769, file: !2, line: 364, type: !38)
!774 = !DILocalVariable(name: "sum_pos", scope: !769, file: !2, line: 365, type: !93)
!775 = !DILocalVariable(name: "sum_neg", scope: !769, file: !2, line: 366, type: !93)
!776 = !DILocalVariable(name: "sumsq_err", scope: !769, file: !2, line: 367, type: !93)
!777 = !DILocalVariable(name: "phase", scope: !769, file: !2, line: 368, type: !93)
!778 = !DILocalVariable(name: "s1", scope: !779, file: !2, line: 370, type: !88)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 369, column: 39)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 369, column: 5)
!781 = distinct !DILexicalBlock(scope: !769, file: !2, line: 369, column: 5)
!782 = !DILocalVariable(name: "s2", scope: !779, file: !2, line: 370, type: !88)
!783 = !DILocalVariable(name: "s3", scope: !779, file: !2, line: 370, type: !88)
!784 = !DILocalVariable(name: "term", scope: !779, file: !2, line: 371, type: !93)
!785 = !DILocalVariable(name: "term_err", scope: !779, file: !2, line: 372, type: !93)
!786 = !DILocalVariable(name: "status", scope: !779, file: !2, line: 373, type: !38)
!787 = distinct !DIAssignID()
!788 = !DILocation(line: 0, scope: !779)
!789 = distinct !DIAssignID()
!790 = distinct !DIAssignID()
!791 = !DILocation(line: 0, scope: !754)
!792 = !DILocation(line: 344, column: 20, scope: !771)
!793 = !DILocation(line: 348, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 348, column: 5)
!795 = distinct !DILexicalBlock(scope: !771, file: !2, line: 347, column: 8)
!796 = !DILocation(line: 348, column: 5, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !2, line: 348, column: 5)
!798 = !DILocation(line: 0, scope: !161, inlinedAt: !799)
!799 = distinct !DILocation(line: 350, column: 14, scope: !770)
!800 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !799)
!801 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !799)
!802 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !799)
!803 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !799)
!804 = !DILocation(line: 350, column: 14, scope: !770)
!805 = !DILocation(line: 351, column: 11, scope: !770)
!806 = !DILocation(line: 0, scope: !161, inlinedAt: !807)
!807 = distinct !DILocation(line: 351, column: 14, scope: !770)
!808 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !807)
!809 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !807)
!810 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !807)
!811 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !807)
!812 = !DILocation(line: 351, column: 14, scope: !770)
!813 = !DILocation(line: 352, column: 11, scope: !770)
!814 = !DILocation(line: 0, scope: !161, inlinedAt: !815)
!815 = distinct !DILocation(line: 352, column: 14, scope: !770)
!816 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !815)
!817 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !815)
!818 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !815)
!819 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !815)
!820 = !DILocation(line: 352, column: 14, scope: !770)
!821 = !DILocation(line: 353, column: 11, scope: !770)
!822 = !DILocation(line: 0, scope: !161, inlinedAt: !823)
!823 = distinct !DILocation(line: 353, column: 14, scope: !770)
!824 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !823)
!825 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !823)
!826 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !823)
!827 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !823)
!828 = !DILocation(line: 353, column: 14, scope: !770)
!829 = !DILocation(line: 354, column: 11, scope: !770)
!830 = !DILocation(line: 0, scope: !161, inlinedAt: !831)
!831 = distinct !DILocation(line: 354, column: 14, scope: !770)
!832 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !831)
!833 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !831)
!834 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !831)
!835 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !831)
!836 = !DILocation(line: 354, column: 14, scope: !770)
!837 = !DILocation(line: 355, column: 11, scope: !770)
!838 = !DILocation(line: 0, scope: !161, inlinedAt: !839)
!839 = distinct !DILocation(line: 355, column: 14, scope: !770)
!840 = !DILocation(line: 87, column: 33, scope: !161, inlinedAt: !839)
!841 = !DILocation(line: 87, column: 22, scope: !161, inlinedAt: !839)
!842 = !DILocation(line: 87, column: 20, scope: !161, inlinedAt: !839)
!843 = !DILocation(line: 87, column: 44, scope: !161, inlinedAt: !839)
!844 = !DILocation(line: 355, column: 14, scope: !770)
!845 = !DILocation(line: 350, column: 14, scope: !771)
!846 = !DILocation(line: 358, column: 17, scope: !847)
!847 = distinct !DILexicalBlock(scope: !770, file: !2, line: 356, column: 8)
!848 = !DILocation(line: 359, column: 5, scope: !847)
!849 = !DILocation(line: 363, column: 35, scope: !769)
!850 = !DILocation(line: 363, column: 25, scope: !769)
!851 = !DILocation(line: 363, column: 55, scope: !769)
!852 = !DILocation(line: 363, column: 45, scope: !769)
!853 = !DILocation(line: 363, column: 75, scope: !769)
!854 = !DILocation(line: 363, column: 65, scope: !769)
!855 = !DILocation(line: 0, scope: !227, inlinedAt: !856)
!856 = distinct !DILocation(line: 363, column: 17, scope: !769)
!857 = !DILocation(line: 36, column: 11, scope: !227, inlinedAt: !856)
!858 = !DILocation(line: 37, column: 10, scope: !227, inlinedAt: !856)
!859 = !DILocation(line: 0, scope: !769)
!860 = !DILocation(line: 364, column: 32, scope: !769)
!861 = !DILocation(line: 364, column: 49, scope: !769)
!862 = !DILocation(line: 364, column: 66, scope: !769)
!863 = !DILocation(line: 0, scope: !239, inlinedAt: !864)
!864 = distinct !DILocation(line: 364, column: 17, scope: !769)
!865 = !DILocation(line: 44, column: 11, scope: !239, inlinedAt: !864)
!866 = !DILocation(line: 45, column: 10, scope: !239, inlinedAt: !864)
!867 = !DILocation(line: 369, column: 21, scope: !780)
!868 = !DILocation(line: 369, column: 5, scope: !781)
!869 = !DILocation(line: 370, column: 7, scope: !779)
!870 = !DILocation(line: 375, column: 17, scope: !779)
!871 = !DILocation(line: 376, column: 17, scope: !779)
!872 = !DILocation(line: 376, column: 14, scope: !779)
!873 = !DILocation(line: 377, column: 17, scope: !779)
!874 = !DILocation(line: 379, column: 17, scope: !875)
!875 = distinct !DILexicalBlock(scope: !779, file: !2, line: 379, column: 10)
!876 = !DILocation(line: 379, column: 10, scope: !779)
!877 = !DILocation(line: 382, column: 17, scope: !779)
!878 = !DILocation(line: 382, column: 26, scope: !779)
!879 = !DILocation(line: 382, column: 21, scope: !779)
!880 = !DILocation(line: 382, column: 35, scope: !779)
!881 = !DILocation(line: 382, column: 30, scope: !779)
!882 = !DILocation(line: 383, column: 22, scope: !779)
!883 = !DILocation(line: 383, column: 39, scope: !779)
!884 = !DILocation(line: 383, column: 28, scope: !779)
!885 = !DILocation(line: 383, column: 26, scope: !779)
!886 = !DILocation(line: 384, column: 22, scope: !779)
!887 = !DILocation(line: 384, column: 39, scope: !779)
!888 = !DILocation(line: 384, column: 28, scope: !779)
!889 = !DILocation(line: 384, column: 26, scope: !779)
!890 = !DILocation(line: 384, column: 16, scope: !779)
!891 = !DILocation(line: 385, column: 22, scope: !779)
!892 = !DILocation(line: 385, column: 28, scope: !779)
!893 = !DILocation(line: 385, column: 26, scope: !779)
!894 = !DILocation(line: 385, column: 16, scope: !779)
!895 = !DILocation(line: 387, column: 15, scope: !896)
!896 = distinct !DILexicalBlock(scope: !779, file: !2, line: 387, column: 10)
!897 = !DILocation(line: 0, scope: !896)
!898 = !DILocation(line: 387, column: 10, scope: !779)
!899 = !DILocation(line: 394, column: 28, scope: !779)
!900 = !DILocation(line: 394, column: 40, scope: !779)
!901 = !DILocation(line: 394, column: 17, scope: !779)
!902 = !DILocation(line: 395, column: 5, scope: !780)
!903 = !DILocation(line: 369, column: 33, scope: !780)
!904 = distinct !{!904, !868, !905, !337}
!905 = !DILocation(line: 395, column: 5, scope: !781)
!906 = !DILocation(line: 380, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 380, column: 9)
!908 = distinct !DILexicalBlock(scope: !875, file: !2, line: 379, column: 33)
!909 = !DILocation(line: 380, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !2, line: 380, column: 9)
!911 = !DILocation(line: 366, column: 12, scope: !769)
!912 = !DILocation(line: 367, column: 12, scope: !769)
!913 = !DILocation(line: 365, column: 12, scope: !769)
!914 = !DILocation(line: 397, column: 13, scope: !769)
!915 = !DILocation(line: 399, column: 37, scope: !769)
!916 = !DILocation(line: 399, column: 26, scope: !769)
!917 = !DILocation(line: 399, column: 18, scope: !769)
!918 = !DILocation(line: 400, column: 53, scope: !769)
!919 = !DILocation(line: 400, column: 42, scope: !769)
!920 = !DILocation(line: 400, column: 13, scope: !769)
!921 = !DILocation(line: 400, column: 18, scope: !769)
!922 = !DILocation(line: 401, column: 48, scope: !769)
!923 = !DILocation(line: 401, column: 42, scope: !769)
!924 = !DILocation(line: 401, column: 41, scope: !769)
!925 = !DILocation(line: 401, column: 55, scope: !769)
!926 = !DILocation(line: 401, column: 35, scope: !769)
!927 = !DILocation(line: 401, column: 20, scope: !769)
!928 = !DILocation(line: 401, column: 17, scope: !769)
!929 = !DILocation(line: 402, column: 57, scope: !769)
!930 = !DILocation(line: 402, column: 42, scope: !769)
!931 = !DILocation(line: 402, column: 79, scope: !769)
!932 = !DILocation(line: 402, column: 66, scope: !769)
!933 = !DILocation(line: 402, column: 64, scope: !769)
!934 = !DILocation(line: 402, column: 17, scope: !769)
!935 = !DILocation(line: 404, column: 5, scope: !769)
!936 = !DILocation(line: 0, scope: !771)
!937 = !DILocation(line: 406, column: 1, scope: !754)
!938 = distinct !DISubprogram(name: "gsl_sf_coupling_3j", scope: !2, file: !2, line: 413, type: !939, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!93, !38, !38, !38, !38, !38, !38}
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949}
!942 = !DILocalVariable(name: "two_ja", arg: 1, scope: !938, file: !2, line: 413, type: !38)
!943 = !DILocalVariable(name: "two_jb", arg: 2, scope: !938, file: !2, line: 413, type: !38)
!944 = !DILocalVariable(name: "two_jc", arg: 3, scope: !938, file: !2, line: 413, type: !38)
!945 = !DILocalVariable(name: "two_ma", arg: 4, scope: !938, file: !2, line: 414, type: !38)
!946 = !DILocalVariable(name: "two_mb", arg: 5, scope: !938, file: !2, line: 414, type: !38)
!947 = !DILocalVariable(name: "two_mc", arg: 6, scope: !938, file: !2, line: 414, type: !38)
!948 = !DILocalVariable(name: "result", scope: !938, file: !2, line: 416, type: !88)
!949 = !DILocalVariable(name: "status", scope: !938, file: !2, line: 416, type: !38)
!950 = distinct !DIAssignID()
!951 = !DILocation(line: 0, scope: !938)
!952 = !DILocation(line: 416, column: 3, scope: !938)
!953 = !DILocation(line: 416, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !938, file: !2, line: 416, column: 3)
!955 = !DILocation(line: 416, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !2, line: 416, column: 3)
!957 = distinct !DILexicalBlock(scope: !954, file: !2, line: 416, column: 3)
!958 = !DILocation(line: 419, column: 1, scope: !938)
!959 = distinct !DISubprogram(name: "gsl_sf_coupling_6j", scope: !2, file: !2, line: 434, type: !939, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968}
!961 = !DILocalVariable(name: "two_ja", arg: 1, scope: !959, file: !2, line: 434, type: !38)
!962 = !DILocalVariable(name: "two_jb", arg: 2, scope: !959, file: !2, line: 434, type: !38)
!963 = !DILocalVariable(name: "two_jc", arg: 3, scope: !959, file: !2, line: 434, type: !38)
!964 = !DILocalVariable(name: "two_jd", arg: 4, scope: !959, file: !2, line: 435, type: !38)
!965 = !DILocalVariable(name: "two_je", arg: 5, scope: !959, file: !2, line: 435, type: !38)
!966 = !DILocalVariable(name: "two_jf", arg: 6, scope: !959, file: !2, line: 435, type: !38)
!967 = !DILocalVariable(name: "result", scope: !959, file: !2, line: 437, type: !88)
!968 = !DILocalVariable(name: "status", scope: !959, file: !2, line: 437, type: !38)
!969 = distinct !DIAssignID()
!970 = !DILocation(line: 0, scope: !959)
!971 = !DILocation(line: 437, column: 3, scope: !959)
!972 = !DILocation(line: 437, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !959, file: !2, line: 437, column: 3)
!974 = !DILocation(line: 437, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 437, column: 3)
!976 = distinct !DILexicalBlock(scope: !973, file: !2, line: 437, column: 3)
!977 = !DILocation(line: 440, column: 1, scope: !959)
!978 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW", scope: !2, file: !2, line: 443, type: !939, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987}
!980 = !DILocalVariable(name: "two_ja", arg: 1, scope: !978, file: !2, line: 443, type: !38)
!981 = !DILocalVariable(name: "two_jb", arg: 2, scope: !978, file: !2, line: 443, type: !38)
!982 = !DILocalVariable(name: "two_jc", arg: 3, scope: !978, file: !2, line: 443, type: !38)
!983 = !DILocalVariable(name: "two_jd", arg: 4, scope: !978, file: !2, line: 444, type: !38)
!984 = !DILocalVariable(name: "two_je", arg: 5, scope: !978, file: !2, line: 444, type: !38)
!985 = !DILocalVariable(name: "two_jf", arg: 6, scope: !978, file: !2, line: 444, type: !38)
!986 = !DILocalVariable(name: "result", scope: !978, file: !2, line: 446, type: !88)
!987 = !DILocalVariable(name: "status", scope: !978, file: !2, line: 446, type: !38)
!988 = distinct !DIAssignID()
!989 = !DILocation(line: 0, scope: !978)
!990 = !DILocation(line: 446, column: 3, scope: !978)
!991 = !DILocation(line: 0, scope: !734, inlinedAt: !992)
!992 = distinct !DILocation(line: 446, column: 3, scope: !978)
!993 = !DILocation(line: 329, column: 16, scope: !734, inlinedAt: !992)
!994 = !DILocation(line: 331, column: 15, scope: !734, inlinedAt: !992)
!995 = distinct !DIAssignID()
!996 = !DILocation(line: 446, column: 3, scope: !997)
!997 = distinct !DILexicalBlock(scope: !978, file: !2, line: 446, column: 3)
!998 = !DILocation(line: 446, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 446, column: 3)
!1000 = distinct !DILexicalBlock(scope: !997, file: !2, line: 446, column: 3)
!1001 = !DILocation(line: 330, column: 27, scope: !734, inlinedAt: !992)
!1002 = !DILocation(line: 330, column: 36, scope: !734, inlinedAt: !992)
!1003 = !DILocation(line: 330, column: 45, scope: !734, inlinedAt: !992)
!1004 = !DILocation(line: 330, column: 54, scope: !734, inlinedAt: !992)
!1005 = !DILocation(line: 331, column: 20, scope: !734, inlinedAt: !992)
!1006 = !DILocation(line: 449, column: 1, scope: !978)
!1007 = distinct !DISubprogram(name: "gsl_sf_coupling_9j", scope: !2, file: !2, line: 452, type: !1008, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!93, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1011 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1007, file: !2, line: 452, type: !38)
!1012 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1007, file: !2, line: 452, type: !38)
!1013 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1007, file: !2, line: 452, type: !38)
!1014 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1007, file: !2, line: 453, type: !38)
!1015 = !DILocalVariable(name: "two_je", arg: 5, scope: !1007, file: !2, line: 453, type: !38)
!1016 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1007, file: !2, line: 453, type: !38)
!1017 = !DILocalVariable(name: "two_jg", arg: 7, scope: !1007, file: !2, line: 454, type: !38)
!1018 = !DILocalVariable(name: "two_jh", arg: 8, scope: !1007, file: !2, line: 454, type: !38)
!1019 = !DILocalVariable(name: "two_ji", arg: 9, scope: !1007, file: !2, line: 454, type: !38)
!1020 = !DILocalVariable(name: "result", scope: !1007, file: !2, line: 456, type: !88)
!1021 = !DILocalVariable(name: "status", scope: !1007, file: !2, line: 456, type: !38)
!1022 = distinct !DIAssignID()
!1023 = !DILocation(line: 0, scope: !1007)
!1024 = !DILocation(line: 456, column: 3, scope: !1007)
!1025 = !DILocation(line: 456, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 456, column: 3)
!1027 = !DILocation(line: 456, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 456, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 456, column: 3)
!1030 = !DILocation(line: 460, column: 1, scope: !1007)
