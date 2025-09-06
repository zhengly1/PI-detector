; ModuleID = 'hyperg_U.ll'
source_filename = "hyperg_U.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_e10_struct = type { double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"hyperg_U.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [40 x i8] c"gsl_sf_hyperg_U_int_e(a, b, x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_hyperg_U_e(a, b, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [40 x i8] c"limit case integer b <= 0 unimplemented\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [40 x i8] c"limit case integer b >= 2 unimplemented\00", align 1, !dbg !34

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !88 {
  %5 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !120
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !121
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  %8 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !123, metadata ptr %8, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !102, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !103, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %2, metadata !104, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !105, metadata !DIExpression()), !dbg !125
  %9 = fcmp oeq double %2, 0.000000e+00, !dbg !126
  %10 = icmp sgt i32 %1, 0
  %11 = and i1 %10, %9, !dbg !127
  br i1 %11, label %12, label %15, !dbg !127

12:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !128, !tbaa !131
  %13 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !128
  store double 0x7FF8000000000000, ptr %13, align 8, !dbg !128, !tbaa !137
  %14 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !128
  store i32 0, ptr %14, align 8, !dbg !128, !tbaa !138
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1656, i32 noundef 1) #7, !dbg !139
  br label %90, !dbg !139

15:                                               ; preds = %4
  br i1 %9, label %16, label %37, !dbg !141

16:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %0, metadata !142, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %1, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %3, metadata !148, metadata !DIExpression()), !dbg !149
  %17 = sitofp i32 %0 to double, !dbg !152
  %18 = sitofp i32 %1 to double, !dbg !153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !121, metadata ptr %6, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !162, metadata !DIExpression(), metadata !122, metadata ptr %7, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %17, metadata !159, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %18, metadata !160, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr %3, metadata !161, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !173
  %handler_result = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !174
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %18), !dbg !175
  %19 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result1, ptr noundef nonnull %6) #7, !dbg !175
  call void @llvm.dbg.value(metadata i32 %19, metadata !168, metadata !DIExpression()), !dbg !171
  %20 = call i32 @gsl_sf_gammainv_e(double noundef %18, ptr noundef nonnull %7) #7, !dbg !176
  call void @llvm.dbg.value(metadata i32 %20, metadata !169, metadata !DIExpression()), !dbg !171
  %21 = fmul double %18, 0x400921FB54442D18, !dbg !177
  %handler_result7 = call double @callHandler(i32 1, double %21, double %21), !dbg !178
  %22 = fdiv double 0x400921FB54442D18, %handler_result7, !dbg !178
  call void @llvm.dbg.value(metadata double %22, metadata !170, metadata !DIExpression()), !dbg !171
  %23 = load double, ptr %6, align 8, !dbg !179, !tbaa !180
  %24 = fmul double %22, %23, !dbg !182
  %25 = load double, ptr %7, align 8, !dbg !183, !tbaa !180
  %26 = fmul double %24, %25, !dbg !184
  store double %26, ptr %3, align 8, !dbg !185, !tbaa !131
  %27 = call double @llvm.fabs.f64(double %22), !dbg !186
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !187
  %29 = load double, ptr %28, align 8, !dbg !187, !tbaa !188
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !189
  %31 = load double, ptr %30, align 8, !dbg !189, !tbaa !188
  %handler_result2 = call double @fAddHandlerDouble(double %29, double %31), !dbg !190
  %32 = fmul double %27, %handler_result2, !dbg !190
  %33 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !191
  store double %32, ptr %33, align 8, !dbg !192, !tbaa !137
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !193
  store i32 0, ptr %34, align 8, !dbg !194, !tbaa !138
  %35 = icmp eq i32 %19, 0, !dbg !195
  %36 = select i1 %35, i32 %20, i32 %19, !dbg !195
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !196
  br label %90, !dbg !197

37:                                               ; preds = %15
  %38 = fcmp olt double %2, 0.000000e+00, !dbg !198
  br i1 %38, label %39, label %64, !dbg !199

39:                                               ; preds = %37
  call void @llvm.dbg.assign(metadata i1 undef, metadata !200, metadata !DIExpression(), metadata !120, metadata ptr %5, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 %0, metadata !205, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %1, metadata !206, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata double %2, metadata !207, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !216
  %40 = icmp slt i32 %0, %1, !dbg !217
  %41 = icmp slt i32 %1, 1
  %42 = and i1 %40, %41, !dbg !218
  br i1 %42, label %43, label %60, !dbg !218

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7, !dbg !219
  %44 = sub nsw i32 1, %1, !dbg !220
  %45 = sitofp i32 %44 to double, !dbg !221
  %46 = tail call double @pow(double noundef %2, double noundef %45) #7, !dbg !222
  call void @llvm.dbg.value(metadata double %46, metadata !209, metadata !DIExpression()), !dbg !213
  %47 = add nsw i32 %0, 1, !dbg !223
  %48 = sub i32 %47, %1, !dbg !224
  %49 = sitofp i32 %48 to double, !dbg !225
  %50 = sub nsw i32 2, %1, !dbg !226
  %51 = sitofp i32 %50 to double, !dbg !227
  %52 = call fastcc i32 @hyperg_U_negx(double noundef %49, double noundef %51, double noundef %2, ptr noundef nonnull %5), !dbg !228
  call void @llvm.dbg.value(metadata i32 %52, metadata !210, metadata !DIExpression()), !dbg !213
  %53 = load double, ptr %5, align 8, !dbg !229, !tbaa !131
  %54 = fmul double %46, %53, !dbg !230
  call void @llvm.dbg.value(metadata double %54, metadata !211, metadata !DIExpression()), !dbg !213
  %55 = tail call double @llvm.fabs.f64(double %46), !dbg !231
  %56 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %5, i64 0, i32 1, !dbg !232
  %57 = load double, ptr %56, align 8, !dbg !232, !tbaa !137
  %58 = fmul double %55, %57, !dbg !233
  call void @llvm.dbg.value(metadata double %58, metadata !212, metadata !DIExpression()), !dbg !213
  store double %54, ptr %3, align 8, !dbg !234, !tbaa !131
  %59 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !235
  store double %58, ptr %59, align 8, !dbg !236, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7, !dbg !237
  br label %90

60:                                               ; preds = %39
  %61 = sitofp i32 %0 to double, !dbg !238
  %62 = sitofp i32 %1 to double, !dbg !240
  %63 = tail call fastcc i32 @hyperg_U_negx(double noundef %61, double noundef %62, double noundef %2, ptr noundef %3), !dbg !241
  br label %90, !dbg !242

64:                                               ; preds = %37
  br i1 %10, label %65, label %67, !dbg !243

65:                                               ; preds = %64
  %66 = tail call fastcc i32 @hyperg_U_int_bge1(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !244
  br label %90, !dbg !246

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7, !dbg !247
  %handler_result8 = call double @callHandler(i32 12, double %2, double %2), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !113, metadata !DIExpression()), !dbg !124
  %68 = add nsw i32 %0, 1, !dbg !248
  %69 = sub i32 %68, %1, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !114, metadata !DIExpression()), !dbg !124
  %70 = sub nsw i32 2, %1, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !115, metadata !DIExpression()), !dbg !124
  %71 = call fastcc i32 @hyperg_U_int_bge1(i32 noundef %69, i32 noundef %70, double noundef %2, ptr noundef nonnull %8), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !117, metadata !DIExpression()), !dbg !124
  %72 = sitofp i32 %1 to double, !dbg !252
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %72), !dbg !253
  %73 = fmul double %handler_result3, %handler_result8, !dbg !253
  tail call void @llvm.dbg.value(metadata double %73, metadata !118, metadata !DIExpression()), !dbg !124
  %74 = call double @llvm.fabs.f64(double %72), !dbg !254
  %handler_result4 = call double @fAddHandlerDouble(double %74, double 1.000000e+00), !dbg !255
  %75 = fmul double %handler_result4, 0x3CC0000000000000, !dbg !255
  %76 = call double @llvm.fabs.f64(double %handler_result8), !dbg !256
  %77 = fmul double %75, %76, !dbg !257
  tail call void @llvm.dbg.value(metadata double %77, metadata !119, metadata !DIExpression()), !dbg !124
  %78 = call double @llvm.fabs.f64(double %handler_result3), !dbg !258
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !259
  %handler_result5 = call double @fAddHandlerDouble(double %79, double %77), !dbg !260
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !119, metadata !DIExpression()), !dbg !124
  %80 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 2, !dbg !260
  %81 = load i32, ptr %80, align 8, !dbg !260, !tbaa !138
  %82 = sitofp i32 %81 to double, !dbg !261
  %83 = fmul double %82, 0x40026BB1BBB55516, !dbg !262
  %handler_result6 = call double @fAddHandlerDouble(double %73, double %83), !dbg !263
  %84 = load double, ptr %8, align 8, !dbg !263, !tbaa !131
  %85 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 1, !dbg !264
  %86 = load double, ptr %85, align 8, !dbg !264, !tbaa !137
  %87 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result6, double noundef %handler_result5, double noundef %84, double noundef %86, ptr noundef %3) #7, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !116, metadata !DIExpression()), !dbg !124
  %88 = icmp eq i32 %87, 0, !dbg !266
  %89 = select i1 %88, i32 %71, i32 %87, !dbg !266
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7, !dbg !267
  br label %90

90:                                               ; preds = %67, %65, %60, %43, %16, %12
  %91 = phi i32 [ 1, %12 ], [ %36, %16 ], [ %66, %65 ], [ %89, %67 ], [ %52, %43 ], [ %63, %60 ], !dbg !268
  ret i32 %91, !dbg !269
}

declare !dbg !270 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_int_bge1(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !275 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !288, metadata !DIExpression(), metadata !414, metadata ptr %5, metadata !DIExpression()), !dbg !415
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !291, metadata !DIExpression(), metadata !416, metadata ptr %6, metadata !DIExpression()), !dbg !417
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !315, metadata !DIExpression(), metadata !418, metadata ptr %7, metadata !DIExpression()), !dbg !419
  %8 = alloca double, align 8, !DIAssignID !420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !319, metadata !DIExpression(), metadata !420, metadata ptr %8, metadata !DIExpression()), !dbg !419
  %9 = alloca double, align 8, !DIAssignID !421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !337, metadata !DIExpression(), metadata !421, metadata ptr %9, metadata !DIExpression()), !dbg !422
  %10 = alloca i32, align 4, !DIAssignID !423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !423, metadata ptr %10, metadata !DIExpression()), !dbg !422
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !369, metadata !DIExpression(), metadata !424, metadata ptr %11, metadata !DIExpression()), !dbg !425
  %12 = alloca double, align 8, !DIAssignID !426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !370, metadata !DIExpression(), metadata !426, metadata ptr %12, metadata !DIExpression()), !dbg !427
  %13 = alloca i32, align 4, !DIAssignID !428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !372, metadata !DIExpression(), metadata !428, metadata ptr %13, metadata !DIExpression()), !dbg !427
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !429
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !429, metadata ptr %14, metadata !DIExpression()), !dbg !430
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !387, metadata !DIExpression(), metadata !431, metadata ptr %15, metadata !DIExpression()), !dbg !430
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !432, metadata ptr %16, metadata !DIExpression()), !dbg !430
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !433, metadata ptr %17, metadata !DIExpression()), !dbg !430
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !390, metadata !DIExpression(), metadata !434, metadata ptr %18, metadata !DIExpression()), !dbg !435
  %19 = alloca double, align 8, !DIAssignID !436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !396, metadata !DIExpression(), metadata !436, metadata ptr %19, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !277, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata double %2, metadata !279, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !280, metadata !DIExpression()), !dbg !437
  switch i32 %0, label %34 [
    i32 0, label %20
    i32 -1, label %23
  ], !dbg !438

20:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !439, !tbaa !131
  %21 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !441
  store double 0.000000e+00, ptr %21, align 8, !dbg !442, !tbaa !137
  %22 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !443
  store i32 0, ptr %22, align 8, !dbg !444, !tbaa !138
  br label %475, !dbg !445

23:                                               ; preds = %4
  %24 = sub nsw i32 0, %1, !dbg !446
  %25 = sitofp i32 %24 to double, !dbg !446
  %handler_result = call double @fAddHandlerDouble(double %25, double %2), !dbg !448
  store double %handler_result, ptr %3, align 8, !dbg !448, !tbaa !131
  %26 = sitofp i32 %1 to double, !dbg !449
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !450
  %28 = tail call double @llvm.fabs.f64(double %2), !dbg !451
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %28), !dbg !452
  %29 = fmul double %handler_result1, 0x3CC0000000000000, !dbg !452
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !453
  %31 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !454
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !455
  %handler_result2 = call double @fAddHandlerDouble(double %29, double %32), !dbg !456
  store double %handler_result2, ptr %30, align 8, !dbg !456, !tbaa !137
  %33 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !457
  store i32 0, ptr %33, align 8, !dbg !458, !tbaa !138
  br label %475, !dbg !459

34:                                               ; preds = %4
  %35 = add nuw nsw i32 %0, 1, !dbg !460
  %36 = icmp eq i32 %35, %1, !dbg !461
  br i1 %36, label %37, label %42, !dbg !462

37:                                               ; preds = %34
  %38 = sub nsw i32 0, %0, !dbg !463
  %39 = sitofp i32 %38 to double, !dbg !463
  %handler_result67 = call double @callHandler(i32 12, double %2, double %2), !dbg !465
  %40 = fmul double %handler_result67, %39, !dbg !465
  %41 = tail call i32 @gsl_sf_exp_e10_e(double noundef %40, ptr noundef %3) #7, !dbg !466
  br label %475, !dbg !467

42:                                               ; preds = %34
  %43 = sitofp i32 %0 to double, !dbg !468
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !468
  tail call void @llvm.dbg.value(metadata double %44, metadata !469, metadata !DIExpression()), !dbg !476
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !476
  %45 = fcmp ogt double %44, 1.000000e+00, !dbg !478
  %46 = select i1 %45, double %44, double 1.000000e+00, !dbg !478
  %handler_result3 = call double @fAddHandlerDouble(double %43, double 1.000000e+00), !dbg !468
  %47 = sitofp i32 %1 to double, !dbg !468
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %47), !dbg !468
  %48 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !468
  tail call void @llvm.dbg.value(metadata double %48, metadata !469, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !479
  %49 = fcmp ogt double %48, 1.000000e+00, !dbg !481
  %50 = select i1 %49, double %48, double 1.000000e+00, !dbg !481
  %51 = fmul double %46, %50, !dbg !468
  %52 = tail call double @llvm.fabs.f64(double %2), !dbg !468
  %53 = fmul double %52, 0x3FEFAE147AE147AE, !dbg !468
  %54 = fcmp olt double %51, %53, !dbg !468
  br i1 %54, label %55, label %68, !dbg !482

55:                                               ; preds = %42
  %56 = sub nsw i32 0, %0, !dbg !483
  %57 = sitofp i32 %56 to double, !dbg !483
  %handler_result68 = call double @callHandler(i32 12, double %2, double %2), !dbg !484
  %58 = fmul double %handler_result68, %57, !dbg !484
  tail call void @llvm.dbg.value(metadata double %58, metadata !281, metadata !DIExpression()), !dbg !415
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !485
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !486
  tail call void @llvm.dbg.value(metadata double %60, metadata !287, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !487
  %61 = call fastcc i32 @hyperg_zaU_asymp(double noundef %43, double noundef %47, double noundef %2, ptr noundef nonnull %5), !dbg !488, !range !489
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !289, metadata !DIExpression()), !dbg !415
  %62 = load double, ptr %5, align 8, !dbg !490, !tbaa !180
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !491
  %64 = load double, ptr %63, align 8, !dbg !491, !tbaa !188
  %65 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %58, double noundef %60, double noundef %62, double noundef %64, ptr noundef %3) #7, !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !290, metadata !DIExpression()), !dbg !415
  %66 = icmp eq i32 %65, 0, !dbg !493
  %67 = select i1 %66, i32 %61, i32 %65, !dbg !493
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !494
  br label %475

68:                                               ; preds = %42
  %69 = fcmp olt double %44, 5.000000e+00, !dbg !495
  %70 = icmp slt i32 %1, 5, !dbg !495
  %71 = and i1 %70, %69, !dbg !495
  %72 = fcmp olt double %2, 2.000000e+00, !dbg !495
  %73 = and i1 %72, %71, !dbg !495
  br i1 %73, label %82, label %74, !dbg !495

74:                                               ; preds = %68
  %75 = fcmp olt double %44, 1.000000e+01, !dbg !495
  %76 = icmp slt i32 %1, 10, !dbg !495
  %77 = and i1 %76, %75, !dbg !495
  %78 = fcmp olt double %2, 1.000000e+00, !dbg !495
  %79 = and i1 %78, %77, !dbg !495
  %80 = icmp sge i32 %0, %1
  %81 = and i1 %80, %79, !dbg !495
  br i1 %81, label %84, label %91, !dbg !495

82:                                               ; preds = %68
  %83 = icmp slt i32 %0, %1, !dbg !496
  br i1 %83, label %91, label %84, !dbg !497

84:                                               ; preds = %82, %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !498
  %85 = call fastcc i32 @hyperg_U_series(double noundef %43, double noundef %47, double noundef %2, ptr noundef nonnull %6), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !294, metadata !DIExpression()), !dbg !417
  %86 = load double, ptr %6, align 8, !dbg !500, !tbaa !180
  store double %86, ptr %3, align 8, !dbg !501, !tbaa !131
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !502
  %88 = load double, ptr %87, align 8, !dbg !502, !tbaa !188
  %89 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !503
  store double %88, ptr %89, align 8, !dbg !504, !tbaa !137
  %90 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !505
  store i32 0, ptr %90, align 8, !dbg !506, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !507
  br label %475

91:                                               ; preds = %82, %74
  %92 = icmp slt i32 %0, 0, !dbg !508
  br i1 %92, label %93, label %139, !dbg !509

93:                                               ; preds = %91
  tail call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !298, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !302, metadata !DIExpression()), !dbg !510
  %94 = sub nsw i32 0, %1, !dbg !511
  %95 = sitofp i32 %94 to double, !dbg !511
  %handler_result5 = call double @fAddHandlerDouble(double %95, double %2), !dbg !512
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !303, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !305, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !302, metadata !DIExpression()), !dbg !510
  %96 = icmp eq i32 %0, -1, !dbg !512
  br i1 %96, label %130, label %97, !dbg !513

97:                                               ; preds = %121, %93
  %98 = phi i32 [ %124, %121 ], [ 0, %93 ]
  %99 = phi double [ %123, %121 ], [ 1.000000e+00, %93 ]
  %100 = phi double [ %122, %121 ], [ %handler_result5, %93 ]
  %101 = phi i32 [ %125, %121 ], [ -1, %93 ]
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !295, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %99, metadata !302, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %100, metadata !303, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !305, metadata !DIExpression()), !dbg !510
  %102 = sitofp i32 %101 to double, !dbg !514
  %103 = sub nsw i32 %1, %101, !dbg !515
  %104 = sitofp i32 %103 to double, !dbg !516
  %handler_result6 = call double @fAddHandlerDouble(double %104, double -1.000000e+00), !dbg !517
  %105 = fmul double %handler_result6, %102, !dbg !517
  %106 = fmul double %99, %105, !dbg !518
  %107 = fmul double %102, 2.000000e+00, !dbg !519
  %handler_result7 = call double @fAddHandlerDouble(double %107, double %2), !dbg !520
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %47), !dbg !521
  %108 = fmul double %100, %handler_result8, !dbg !521
  %handler_result9 = call double @fAddHandlerDouble(double %106, double %108), !dbg !522
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !304, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %100, metadata !302, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !303, metadata !DIExpression()), !dbg !510
  %109 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !522
  tail call void @llvm.dbg.value(metadata double %109, metadata !306, metadata !DIExpression()), !dbg !523
  %110 = fcmp ogt double %109, 0x5FEFFFFFFFFFFFFF, !dbg !524
  br i1 %110, label %111, label %115, !dbg !522

111:                                              ; preds = %97
  %112 = fdiv double %handler_result9, 0x5FEFFFFFFFFFFFFF, !dbg !526
  tail call void @llvm.dbg.value(metadata double %112, metadata !303, metadata !DIExpression()), !dbg !510
  %113 = fdiv double %100, 0x5FEFFFFFFFFFFFFF, !dbg !526
  tail call void @llvm.dbg.value(metadata double %113, metadata !302, metadata !DIExpression()), !dbg !510
  %114 = add nsw i32 %98, 1, !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !295, metadata !DIExpression()), !dbg !510
  br label %121, !dbg !526

115:                                              ; preds = %97
  %116 = fcmp olt double %109, 0x1FF0000000000001, !dbg !528
  br i1 %116, label %117, label %121, !dbg !524

117:                                              ; preds = %115
  %118 = fmul double %handler_result9, 0x5FEFFFFFFFFFFFFF, !dbg !530
  tail call void @llvm.dbg.value(metadata double %118, metadata !303, metadata !DIExpression()), !dbg !510
  %119 = fmul double %100, 0x5FEFFFFFFFFFFFFF, !dbg !530
  tail call void @llvm.dbg.value(metadata double %119, metadata !302, metadata !DIExpression()), !dbg !510
  %120 = add nsw i32 %98, -1, !dbg !530
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !295, metadata !DIExpression()), !dbg !510
  br label %121, !dbg !530

121:                                              ; preds = %117, %115, %111
  %122 = phi double [ %112, %111 ], [ %118, %117 ], [ %handler_result9, %115 ], !dbg !532
  %123 = phi double [ %113, %111 ], [ %119, %117 ], [ %100, %115 ], !dbg !532
  %124 = phi i32 [ %114, %111 ], [ %120, %117 ], [ %98, %115 ], !dbg !510
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !295, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %123, metadata !302, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %122, metadata !303, metadata !DIExpression()), !dbg !510
  %125 = add nsw i32 %101, -1, !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !305, metadata !DIExpression()), !dbg !510
  %126 = icmp sgt i32 %125, %0, !dbg !512
  br i1 %126, label %97, label %127, !dbg !513, !llvm.loop !534

127:                                              ; preds = %121
  %128 = sitofp i32 %124 to double, !dbg !537
  %129 = fmul double %128, 0x40762E42FEFA39EF, !dbg !538
  br label %130, !dbg !537

130:                                              ; preds = %127, %93
  %131 = phi double [ %handler_result5, %93 ], [ %122, %127 ], !dbg !510
  %132 = phi double [ 0.000000e+00, %93 ], [ %129, %127 ], !dbg !510
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !301, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata double %132, metadata !299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !510
  %133 = tail call double @llvm.fabs.f64(double %132), !dbg !539
  %134 = fmul double %133, 0x3CC0000000000000, !dbg !540
  tail call void @llvm.dbg.value(metadata double %134, metadata !299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !510
  tail call void @llvm.dbg.value(metadata double %131, metadata !300, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !510
  %handler_result10 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !541
  %135 = fmul double %handler_result10, 0x3CD0000000000000, !dbg !541
  %136 = tail call double @llvm.fabs.f64(double %131), !dbg !542
  %137 = fmul double %135, %136, !dbg !543
  tail call void @llvm.dbg.value(metadata double %137, metadata !300, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !510
  %138 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %132, double noundef %134, double noundef %131, double noundef %137, ptr noundef %3) #7, !dbg !544
  br label %475

139:                                              ; preds = %91
  %140 = fmul double %43, 2.000000e+00, !dbg !545
  %handler_result11 = call double @fAddHandlerDouble(double %140, double %2), !dbg !546
  %141 = fcmp ugt double %handler_result11, %47, !dbg !546
  br i1 %141, label %200, label %142, !dbg !547

142:                                              ; preds = %139
  tail call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !314, metadata !DIExpression()), !dbg !419
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !549
  %143 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef 1.000000e+00, double noundef %47, double noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !320, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !322, metadata !DIExpression()), !dbg !419
  %144 = load double, ptr %7, align 8, !dbg !551, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %144, metadata !323, metadata !DIExpression()), !dbg !419
  %145 = load double, ptr %8, align 8, !dbg !552, !tbaa !553
  %146 = fneg double %145, !dbg !554
  %147 = call double @exp(double noundef %146) #7, !dbg !555
  tail call void @llvm.dbg.value(metadata double %147, metadata !322, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 1, metadata !325, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %144, metadata !323, metadata !DIExpression()), !dbg !419
  %148 = icmp ugt i32 %0, 1, !dbg !556
  br i1 %148, label %149, label %181, !dbg !557

149:                                              ; preds = %172, %142
  %150 = phi i32 [ %175, %172 ], [ 0, %142 ]
  %151 = phi double [ %174, %172 ], [ %147, %142 ]
  %152 = phi double [ %173, %172 ], [ %144, %142 ]
  %153 = phi i32 [ %176, %172 ], [ 1, %142 ]
  tail call void @llvm.dbg.value(metadata i32 %150, metadata !311, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %151, metadata !322, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %152, metadata !323, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !325, metadata !DIExpression()), !dbg !419
  %154 = sitofp i32 %153 to double, !dbg !558
  %155 = fmul double %154, 2.000000e+00, !dbg !559
  %handler_result12 = call double @fSubHandlerDouble(double %47, double %155), !dbg !560
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result12, double %2), !dbg !561
  %156 = fmul double %152, %handler_result13, !dbg !561
  %handler_result14 = call double @fAddHandlerDouble(double %151, double %156), !dbg !562
  %157 = fneg double %handler_result14, !dbg !562
  %handler_result15 = call double @fAddHandlerDouble(double %154, double 1.000000e+00), !dbg !563
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %47), !dbg !564
  %158 = fmul double %handler_result16, %154, !dbg !564
  %159 = fdiv double %157, %158, !dbg !565
  tail call void @llvm.dbg.value(metadata double %159, metadata !324, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %152, metadata !322, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %159, metadata !323, metadata !DIExpression()), !dbg !419
  %160 = call double @llvm.fabs.f64(double %159), !dbg !566
  tail call void @llvm.dbg.value(metadata double %160, metadata !326, metadata !DIExpression()), !dbg !567
  %161 = fcmp ogt double %160, 0x5FEFFFFFFFFFFFFF, !dbg !568
  br i1 %161, label %162, label %166, !dbg !566

162:                                              ; preds = %149
  %163 = fdiv double %159, 0x5FEFFFFFFFFFFFFF, !dbg !570
  tail call void @llvm.dbg.value(metadata double %163, metadata !323, metadata !DIExpression()), !dbg !419
  %164 = fdiv double %152, 0x5FEFFFFFFFFFFFFF, !dbg !570
  tail call void @llvm.dbg.value(metadata double %164, metadata !322, metadata !DIExpression()), !dbg !419
  %165 = add nsw i32 %150, 1, !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %165, metadata !311, metadata !DIExpression()), !dbg !419
  br label %172, !dbg !570

166:                                              ; preds = %149
  %167 = fcmp olt double %160, 0x1FF0000000000001, !dbg !572
  br i1 %167, label %168, label %172, !dbg !568

168:                                              ; preds = %166
  %169 = fmul double %159, 0x5FEFFFFFFFFFFFFF, !dbg !574
  tail call void @llvm.dbg.value(metadata double %169, metadata !323, metadata !DIExpression()), !dbg !419
  %170 = fmul double %152, 0x5FEFFFFFFFFFFFFF, !dbg !574
  tail call void @llvm.dbg.value(metadata double %170, metadata !322, metadata !DIExpression()), !dbg !419
  %171 = add nsw i32 %150, -1, !dbg !574
  tail call void @llvm.dbg.value(metadata i32 %171, metadata !311, metadata !DIExpression()), !dbg !419
  br label %172, !dbg !574

172:                                              ; preds = %168, %166, %162
  %173 = phi double [ %163, %162 ], [ %169, %168 ], [ %159, %166 ], !dbg !576
  %174 = phi double [ %164, %162 ], [ %170, %168 ], [ %152, %166 ], !dbg !576
  %175 = phi i32 [ %165, %162 ], [ %171, %168 ], [ %150, %166 ], !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !311, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %174, metadata !322, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %173, metadata !323, metadata !DIExpression()), !dbg !419
  %176 = add nuw nsw i32 %153, 1, !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !325, metadata !DIExpression()), !dbg !419
  %177 = icmp eq i32 %176, %0, !dbg !556
  br i1 %177, label %178, label %149, !dbg !557, !llvm.loop !578

178:                                              ; preds = %172
  %179 = sitofp i32 %175 to double, !dbg !580
  %180 = fmul double %179, 0x40762E42FEFA39EF, !dbg !581
  br label %181, !dbg !582

181:                                              ; preds = %178, %142
  %182 = phi double [ %144, %142 ], [ %173, %178 ], !dbg !419
  %183 = phi double [ 0.000000e+00, %142 ], [ %180, %178 ], !dbg !419
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !318, metadata !DIExpression()), !dbg !419
  %184 = load double, ptr %8, align 8, !dbg !582, !tbaa !553
  %handler_result17 = call double @fAddHandlerDouble(double %183, double %184), !dbg !583
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !419
  %185 = call double @llvm.fabs.f64(double %184), !dbg !583
  %186 = call double @llvm.fabs.f64(double %183), !dbg !584
  %handler_result18 = call double @fAddHandlerDouble(double %186, double %185), !dbg !585
  %187 = fmul double %handler_result18, 0x3CC0000000000000, !dbg !585
  tail call void @llvm.dbg.value(metadata double %187, metadata !316, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !419
  tail call void @llvm.dbg.value(metadata double %182, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !419
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !586
  %189 = load double, ptr %188, align 8, !dbg !586, !tbaa !188
  %190 = load double, ptr %7, align 8, !dbg !587, !tbaa !180
  %191 = fdiv double %189, %190, !dbg !588
  %192 = call double @llvm.fabs.f64(double %182), !dbg !589
  %193 = fmul double %182, %191, !dbg !590
  %194 = call double @llvm.fabs.f64(double %193), !dbg !590
  tail call void @llvm.dbg.value(metadata double %194, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !419
  %handler_result19 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !591
  %195 = fmul double %handler_result19, 0x3CC0000000000000, !dbg !591
  %196 = fmul double %195, %192, !dbg !592
  %handler_result20 = call double @fAddHandlerDouble(double %196, double %194), !dbg !593
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !419
  %197 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result17, double noundef %187, double noundef %182, double noundef %handler_result20, ptr noundef %3) #7, !dbg !593
  tail call void @llvm.dbg.value(metadata i32 %197, metadata !321, metadata !DIExpression()), !dbg !419
  %198 = icmp eq i32 %197, 0, !dbg !594
  %199 = select i1 %198, i32 %143, i32 %197, !dbg !594
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !595
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !595
  br label %475

200:                                              ; preds = %139
  %201 = fcmp ugt double %47, %2, !dbg !596
  br i1 %201, label %273, label %202, !dbg !597

202:                                              ; preds = %200
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !331, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 0, metadata !335, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7, !dbg !598
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7, !dbg !599
  %203 = icmp slt i32 %0, %1, !dbg !600
  br i1 %203, label %209, label %204, !dbg !602

204:                                              ; preds = %202
  %205 = add nsw i32 %1, -1, !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %205, metadata !339, metadata !DIExpression()), !dbg !422
  %206 = sub nsw i32 1, %1, !dbg !605
  %207 = sitofp i32 %206 to double, !dbg !605
  %handler_result69 = call double @callHandler(i32 12, double %2, double %2), !dbg !606
  %208 = fmul double %handler_result69, %207, !dbg !606
  tail call void @llvm.dbg.value(metadata double %208, metadata !340, metadata !DIExpression()), !dbg !422
  br label %209, !dbg !607

209:                                              ; preds = %204, %202
  %210 = phi double [ %208, %204 ], [ 0.000000e+00, %202 ], !dbg !608
  %211 = phi i32 [ %205, %204 ], [ 0, %202 ], !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %211, metadata !339, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %210, metadata !340, metadata !DIExpression()), !dbg !422
  %212 = call fastcc i32 @hyperg_U_CF1(double noundef %43, double noundef %47, double noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %212, metadata !336, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !341, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double poison, metadata !342, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !344, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 0, metadata !335, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !341, metadata !DIExpression()), !dbg !422
  %213 = icmp slt i32 %211, %0, !dbg !610
  br i1 %213, label %214, label %249, !dbg !611

214:                                              ; preds = %209
  %215 = load double, ptr %9, align 8, !dbg !612, !tbaa !553
  %216 = fdiv double %215, %43, !dbg !613
  tail call void @llvm.dbg.value(metadata double %216, metadata !342, metadata !DIExpression()), !dbg !422
  br label %217, !dbg !611

217:                                              ; preds = %240, %214
  %218 = phi i32 [ %243, %240 ], [ 0, %214 ]
  %219 = phi double [ %242, %240 ], [ 1.000000e+00, %214 ]
  %220 = phi double [ %241, %240 ], [ %216, %214 ]
  %221 = phi i32 [ %244, %240 ], [ %0, %214 ]
  tail call void @llvm.dbg.value(metadata i32 %218, metadata !335, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %219, metadata !341, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %220, metadata !342, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !344, metadata !DIExpression()), !dbg !422
  %222 = sitofp i32 %221 to double, !dbg !614
  %223 = fmul double %222, 2.000000e+00, !dbg !615
  %handler_result21 = call double @fSubHandlerDouble(double %47, double %223), !dbg !616
  %handler_result22 = call double @fSubHandlerDouble(double %handler_result21, double %2), !dbg !617
  %224 = fmul double %219, %handler_result22, !dbg !617
  %handler_result23 = call double @fAddHandlerDouble(double %222, double 1.000000e+00), !dbg !618
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result23, double %47), !dbg !619
  %225 = fmul double %handler_result24, %222, !dbg !619
  %226 = fmul double %220, %225, !dbg !620
  %handler_result25 = call double @fAddHandlerDouble(double %224, double %226), !dbg !621
  %227 = fneg double %handler_result25, !dbg !621
  tail call void @llvm.dbg.value(metadata double %227, metadata !343, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %219, metadata !342, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %227, metadata !341, metadata !DIExpression()), !dbg !422
  %228 = tail call double @llvm.fabs.f64(double %227), !dbg !622
  tail call void @llvm.dbg.value(metadata double %228, metadata !345, metadata !DIExpression()), !dbg !623
  %229 = fcmp ogt double %228, 0x5FEFFFFFFFFFFFFF, !dbg !624
  br i1 %229, label %230, label %234, !dbg !622

230:                                              ; preds = %217
  %231 = fdiv double %handler_result25, 0xDFEFFFFFFFFFFFFF, !dbg !626
  tail call void @llvm.dbg.value(metadata double %231, metadata !341, metadata !DIExpression()), !dbg !422
  %232 = fdiv double %219, 0x5FEFFFFFFFFFFFFF, !dbg !626
  tail call void @llvm.dbg.value(metadata double %232, metadata !342, metadata !DIExpression()), !dbg !422
  %233 = add nsw i32 %218, 1, !dbg !626
  tail call void @llvm.dbg.value(metadata i32 %233, metadata !335, metadata !DIExpression()), !dbg !422
  br label %240, !dbg !626

234:                                              ; preds = %217
  %235 = fcmp olt double %228, 0x1FF0000000000001, !dbg !628
  br i1 %235, label %236, label %240, !dbg !624

236:                                              ; preds = %234
  %237 = fmul double %handler_result25, 0xDFEFFFFFFFFFFFFF, !dbg !630
  tail call void @llvm.dbg.value(metadata double %237, metadata !341, metadata !DIExpression()), !dbg !422
  %238 = fmul double %219, 0x5FEFFFFFFFFFFFFF, !dbg !630
  tail call void @llvm.dbg.value(metadata double %238, metadata !342, metadata !DIExpression()), !dbg !422
  %239 = add nsw i32 %218, -1, !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %239, metadata !335, metadata !DIExpression()), !dbg !422
  br label %240, !dbg !630

240:                                              ; preds = %236, %234, %230
  %241 = phi double [ %232, %230 ], [ %238, %236 ], [ %219, %234 ], !dbg !632
  %242 = phi double [ %231, %230 ], [ %237, %236 ], [ %227, %234 ], !dbg !632
  %243 = phi i32 [ %233, %230 ], [ %239, %236 ], [ %218, %234 ], !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %243, metadata !335, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %242, metadata !341, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %241, metadata !342, metadata !DIExpression()), !dbg !422
  %244 = add nsw i32 %221, -1, !dbg !633
  tail call void @llvm.dbg.value(metadata i32 %244, metadata !344, metadata !DIExpression()), !dbg !422
  %245 = icmp sgt i32 %244, %211, !dbg !610
  br i1 %245, label %217, label %246, !dbg !611, !llvm.loop !634

246:                                              ; preds = %240
  %247 = fcmp oeq double %242, 0.000000e+00, !dbg !636
  br i1 %247, label %248, label %249, !dbg !637

248:                                              ; preds = %246
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false), !dbg !638
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1002, i32 noundef 12) #7, !dbg !640
  br label %271, !dbg !640

249:                                              ; preds = %246, %209
  %250 = phi i32 [ %243, %246 ], [ 0, %209 ]
  %251 = phi double [ %242, %246 ], [ 1.000000e+00, %209 ]
  %252 = sub nsw i32 0, %250, !dbg !642
  %253 = sitofp i32 %252 to double, !dbg !642
  %254 = fmul double %253, 0x40762E42FEFA39EF, !dbg !643
  tail call void @llvm.dbg.value(metadata double %254, metadata !350, metadata !DIExpression()), !dbg !644
  %handler_result26 = call double @fAddHandlerDouble(double %210, double %254), !dbg !645
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !353, metadata !DIExpression()), !dbg !644
  %255 = tail call double @llvm.fabs.f64(double %210), !dbg !645
  %256 = tail call double @llvm.fabs.f64(double %254), !dbg !646
  %handler_result27 = call double @fAddHandlerDouble(double %255, double %256), !dbg !647
  %257 = fmul double %handler_result27, 0x3CC0000000000000, !dbg !647
  tail call void @llvm.dbg.value(metadata double %257, metadata !354, metadata !DIExpression()), !dbg !644
  %258 = sub nsw i32 %211, %0, !dbg !648
  %259 = sitofp i32 %258 to double, !dbg !649
  %260 = tail call double @llvm.fabs.f64(double %259), !dbg !650
  %261 = load i32, ptr %10, align 4, !dbg !651, !tbaa !652
  %262 = sitofp i32 %261 to double, !dbg !651
  %handler_result28 = call double @fAddHandlerDouble(double %260, double %262), !dbg !653
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 1.000000e+00), !dbg !654
  %263 = fmul double %handler_result29, 2.000000e+00, !dbg !654
  %264 = fmul double %263, 0x3CB0000000000000, !dbg !655
  %265 = fdiv double 1.000000e+00, %251, !dbg !656
  %266 = tail call double @llvm.fabs.f64(double %265), !dbg !657
  %267 = fmul double %266, %264, !dbg !658
  tail call void @llvm.dbg.value(metadata double %267, metadata !355, metadata !DIExpression()), !dbg !644
  %268 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result26, double noundef %257, double noundef %265, double noundef %267, ptr noundef %3) #7, !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %268, metadata !356, metadata !DIExpression()), !dbg !644
  %269 = icmp eq i32 %268, 0, !dbg !660
  %270 = select i1 %269, i32 %212, i32 %268, !dbg !660
  br label %271

271:                                              ; preds = %249, %248
  %272 = phi i32 [ 12, %248 ], [ %270, %249 ], !dbg !661
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7, !dbg !662
  br label %475

273:                                              ; preds = %200
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !357, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 0, metadata !360, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 1, metadata !361, metadata !DIExpression()), !dbg !425
  %handler_result30 = call double @fSubHandlerDouble(double %47, double %2), !dbg !663
  %274 = fmul double %handler_result30, 5.000000e-01, !dbg !663
  %handler_result31 = call double @fAddHandlerDouble(double %274, double -1.000000e+00), !dbg !664
  %275 = tail call double @llvm.ceil.f64(double %handler_result31), !dbg !664
  %handler_result32 = call double @fAddHandlerDouble(double %275, double 1.000000e+00), !dbg !665
  %276 = fptosi double %handler_result32 to i32, !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %276, metadata !362, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7, !dbg !667
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7, !dbg !668
  %277 = call fastcc i32 @hyperg_U_CF1(double noundef %43, double noundef %47, double noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13), !dbg !669
  tail call void @llvm.dbg.value(metadata i32 %277, metadata !373, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double poison, metadata !375, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !377, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !374, metadata !DIExpression()), !dbg !427
  %278 = icmp slt i32 %276, %0, !dbg !670
  br i1 %278, label %279, label %311, !dbg !671

279:                                              ; preds = %273
  %280 = load double, ptr %12, align 8, !dbg !672, !tbaa !553
  %281 = fdiv double %280, %43, !dbg !673
  tail call void @llvm.dbg.value(metadata double %281, metadata !375, metadata !DIExpression()), !dbg !427
  br label %282, !dbg !671

282:                                              ; preds = %305, %279
  %283 = phi i32 [ %309, %305 ], [ %0, %279 ]
  %284 = phi double [ %308, %305 ], [ %281, %279 ]
  %285 = phi double [ %307, %305 ], [ 1.000000e+00, %279 ]
  %286 = phi i32 [ %306, %305 ], [ 0, %279 ]
  tail call void @llvm.dbg.value(metadata i32 %283, metadata !377, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %284, metadata !375, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %285, metadata !374, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !360, metadata !DIExpression()), !dbg !425
  %287 = sitofp i32 %283 to double, !dbg !674
  %288 = fmul double %287, 2.000000e+00, !dbg !675
  %handler_result33 = call double @fSubHandlerDouble(double %47, double %288), !dbg !676
  %handler_result34 = call double @fSubHandlerDouble(double %handler_result33, double %2), !dbg !677
  %289 = fmul double %285, %handler_result34, !dbg !677
  %handler_result35 = call double @fAddHandlerDouble(double %287, double 1.000000e+00), !dbg !678
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result35, double %47), !dbg !679
  %290 = fmul double %handler_result36, %287, !dbg !679
  %291 = fmul double %284, %290, !dbg !680
  %handler_result37 = call double @fAddHandlerDouble(double %289, double %291), !dbg !681
  %292 = fneg double %handler_result37, !dbg !681
  tail call void @llvm.dbg.value(metadata double %292, metadata !376, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %285, metadata !375, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %292, metadata !374, metadata !DIExpression()), !dbg !427
  %293 = tail call double @llvm.fabs.f64(double %292), !dbg !682
  tail call void @llvm.dbg.value(metadata double %293, metadata !378, metadata !DIExpression()), !dbg !683
  %294 = fcmp ogt double %293, 0x5FEFFFFFFFFFFFFF, !dbg !684
  br i1 %294, label %295, label %299, !dbg !682

295:                                              ; preds = %282
  %296 = fdiv double %handler_result37, 0xDFEFFFFFFFFFFFFF, !dbg !686
  tail call void @llvm.dbg.value(metadata double %296, metadata !374, metadata !DIExpression()), !dbg !427
  %297 = fdiv double %285, 0x5FEFFFFFFFFFFFFF, !dbg !686
  tail call void @llvm.dbg.value(metadata double %297, metadata !375, metadata !DIExpression()), !dbg !427
  %298 = add nsw i32 %286, 1, !dbg !686
  tail call void @llvm.dbg.value(metadata i32 %298, metadata !360, metadata !DIExpression()), !dbg !425
  br label %305, !dbg !686

299:                                              ; preds = %282
  %300 = fcmp olt double %293, 0x1FF0000000000001, !dbg !688
  br i1 %300, label %301, label %305, !dbg !684

301:                                              ; preds = %299
  %302 = fmul double %handler_result37, 0xDFEFFFFFFFFFFFFF, !dbg !690
  tail call void @llvm.dbg.value(metadata double %302, metadata !374, metadata !DIExpression()), !dbg !427
  %303 = fmul double %285, 0x5FEFFFFFFFFFFFFF, !dbg !690
  tail call void @llvm.dbg.value(metadata double %303, metadata !375, metadata !DIExpression()), !dbg !427
  %304 = add nsw i32 %286, -1, !dbg !690
  tail call void @llvm.dbg.value(metadata i32 %304, metadata !360, metadata !DIExpression()), !dbg !425
  br label %305, !dbg !690

305:                                              ; preds = %301, %299, %295
  %306 = phi i32 [ %298, %295 ], [ %304, %301 ], [ %286, %299 ], !dbg !425
  %307 = phi double [ %296, %295 ], [ %302, %301 ], [ %292, %299 ], !dbg !692
  %308 = phi double [ %297, %295 ], [ %303, %301 ], [ %285, %299 ], !dbg !692
  tail call void @llvm.dbg.value(metadata double %308, metadata !375, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %307, metadata !374, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !360, metadata !DIExpression()), !dbg !425
  %309 = add nsw i32 %283, -1, !dbg !693
  tail call void @llvm.dbg.value(metadata i32 %309, metadata !377, metadata !DIExpression()), !dbg !427
  %310 = icmp sgt i32 %309, %276, !dbg !670
  br i1 %310, label %282, label %311, !dbg !671, !llvm.loop !694

311:                                              ; preds = %305, %273
  %312 = phi i32 [ 0, %273 ], [ %306, %305 ], !dbg !425
  %313 = phi double [ 1.000000e+00, %273 ], [ %307, %305 ], !dbg !427
  tail call void @llvm.dbg.value(metadata double %313, metadata !363, metadata !DIExpression()), !dbg !425
  %314 = sub nsw i32 %276, %0, !dbg !696
  %315 = sitofp i32 %314 to double, !dbg !697
  %316 = tail call double @llvm.fabs.f64(double %315), !dbg !698
  %317 = load i32, ptr %13, align 4, !dbg !699, !tbaa !652
  %318 = sitofp i32 %317 to double, !dbg !699
  %handler_result38 = call double @fAddHandlerDouble(double %316, double %318), !dbg !700
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 1.000000e+00), !dbg !701
  %319 = fmul double %handler_result39, 0x3CC0000000000000, !dbg !701
  %320 = tail call double @llvm.fabs.f64(double %313), !dbg !702
  %321 = fmul double %320, %319, !dbg !703
  tail call void @llvm.dbg.value(metadata double %321, metadata !364, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %277, metadata !368, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7, !dbg !704
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7, !dbg !704
  %322 = shl nsw i32 %276, 1, !dbg !705
  %323 = icmp eq i32 %322, %1, !dbg !706
  %324 = icmp sgt i32 %276, 1
  %325 = and i1 %324, %323, !dbg !707
  br i1 %325, label %427, label %326, !dbg !707

326:                                              ; preds = %311
  %327 = add nsw i32 %322, -1, !dbg !708
  %328 = icmp eq i32 %327, %1, !dbg !709
  %329 = and i1 %324, %328, !dbg !710
  br i1 %329, label %330, label %368, !dbg !710

330:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !711
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !711
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !712
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !712
  %331 = sitofp i32 %276 to double, !dbg !713
  %handler_result40 = call double @fAddHandlerDouble(double %331, double -1.000000e+00), !dbg !714
  call fastcc void @hyperg_lnU_beq2a(double noundef %handler_result40, double noundef %2, ptr noundef nonnull %14), !dbg !714
  call fastcc void @hyperg_lnU_beq2a(double noundef %331, double noundef %2, ptr noundef nonnull %15), !dbg !715
  %332 = load double, ptr %14, align 8, !dbg !716, !tbaa !180
  %333 = load double, ptr %15, align 8, !dbg !718, !tbaa !180
  %334 = fcmp ogt double %332, %333, !dbg !719
  br i1 %334, label %335, label %344, !dbg !720

335:                                              ; preds = %330
  call void @llvm.dbg.assign(metadata double %332, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !721, metadata ptr %11, metadata !DIExpression()), !dbg !425
  %336 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !722
  %337 = load double, ptr %336, align 8, !dbg !722, !tbaa !188
  call void @llvm.dbg.assign(metadata double %337, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !724, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !425
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !725, metadata ptr %16, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !726, metadata ptr %16, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !430
  %handler_result41 = call double @fSubHandlerDouble(double %333, double %332), !dbg !727
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !727
  %339 = load double, ptr %338, align 8, !dbg !727, !tbaa !188
  %handler_result42 = call double @fAddHandlerDouble(double %337, double %339), !dbg !728
  %340 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result41, double noundef %handler_result42, ptr noundef nonnull %17) #7, !dbg !728
  %341 = load double, ptr %17, align 8, !dbg !729, !tbaa !180
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1
  %343 = load double, ptr %342, align 8, !dbg !730, !tbaa !188
  br label %353, !dbg !731

344:                                              ; preds = %330
  call void @llvm.dbg.assign(metadata double %333, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !721, metadata ptr %11, metadata !DIExpression()), !dbg !425
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !732
  %346 = load double, ptr %345, align 8, !dbg !732, !tbaa !188
  call void @llvm.dbg.assign(metadata double %346, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !724, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !425
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !734, metadata ptr %17, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !735, metadata ptr %17, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !430
  %handler_result43 = call double @fSubHandlerDouble(double %332, double %333), !dbg !736
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !736
  %348 = load double, ptr %347, align 8, !dbg !736, !tbaa !188
  %handler_result44 = call double @fAddHandlerDouble(double %346, double %348), !dbg !737
  %349 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result43, double noundef %handler_result44, ptr noundef nonnull %16) #7, !dbg !737
  %350 = load double, ptr %16, align 8, !dbg !738, !tbaa !180
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1
  %352 = load double, ptr %351, align 8, !dbg !739, !tbaa !188
  br label %353

353:                                              ; preds = %344, %335
  %354 = phi double [ 0.000000e+00, %335 ], [ %352, %344 ], !dbg !739
  %355 = phi double [ %343, %335 ], [ 0.000000e+00, %344 ], !dbg !730
  %356 = phi double [ 1.000000e+00, %335 ], [ %350, %344 ], !dbg !738
  %357 = phi double [ %341, %335 ], [ 1.000000e+00, %344 ], !dbg !729
  %358 = phi double [ %332, %335 ], [ %333, %344 ], !dbg !740
  %359 = phi double [ %337, %335 ], [ %346, %344 ], !dbg !740
  %360 = fmul double %357, %2, !dbg !741
  %handler_result45 = call double @fSubHandlerDouble(double %360, double %356), !dbg !742
  %361 = fmul double %331, 2.000000e+00, !dbg !742
  %handler_result46 = call double @fAddHandlerDouble(double %361, double -2.000000e+00), !dbg !743
  %362 = fdiv double %handler_result45, %handler_result46, !dbg !743
  tail call void @llvm.dbg.value(metadata double %362, metadata !365, metadata !DIExpression()), !dbg !425
  %363 = fmul double %52, %355, !dbg !744
  %handler_result47 = call double @fAddHandlerDouble(double %363, double %354), !dbg !745
  %364 = call double @llvm.fabs.f64(double %handler_result46), !dbg !745
  %365 = fdiv double %handler_result47, %364, !dbg !746
  tail call void @llvm.dbg.value(metadata double %365, metadata !366, metadata !DIExpression()), !dbg !425
  %366 = call double @llvm.fabs.f64(double %362), !dbg !747
  %367 = fmul double %366, 0x3CC0000000000000, !dbg !748
  %handler_result48 = call double @fAddHandlerDouble(double %365, double %367), !dbg !749
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !366, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !749
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !749
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !749
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !749
  br label %419, !dbg !750

368:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7, !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !392, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #7, !dbg !752
  %369 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef 1.000000e+00, double noundef %47, double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %19), !dbg !753
  tail call void @llvm.dbg.value(metadata i32 %369, metadata !367, metadata !DIExpression()), !dbg !425
  %370 = load double, ptr %18, align 8, !dbg !754, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %370, metadata !393, metadata !DIExpression()), !dbg !435
  %371 = load double, ptr %19, align 8, !dbg !755, !tbaa !553
  %372 = fneg double %371, !dbg !756
  %373 = call double @exp(double noundef %372) #7, !dbg !757
  tail call void @llvm.dbg.value(metadata double %373, metadata !392, metadata !DIExpression()), !dbg !435
  %374 = load double, ptr %19, align 8, !dbg !758, !tbaa !553
  call void @llvm.dbg.assign(metadata double %374, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !759, metadata ptr %11, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !369, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !760, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 1, metadata !395, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !425
  br i1 %324, label %375, label %404, !dbg !761

375:                                              ; preds = %398, %368
  %376 = phi i32 [ %402, %398 ], [ 1, %368 ]
  %377 = phi double [ %401, %398 ], [ %370, %368 ]
  %378 = phi double [ %400, %398 ], [ %373, %368 ]
  %379 = phi i32 [ %399, %398 ], [ 0, %368 ]
  tail call void @llvm.dbg.value(metadata i32 %376, metadata !395, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %377, metadata !393, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %378, metadata !392, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %379, metadata !359, metadata !DIExpression()), !dbg !425
  %380 = sitofp i32 %376 to double, !dbg !762
  %381 = fmul double %380, 2.000000e+00, !dbg !763
  %handler_result49 = call double @fSubHandlerDouble(double %47, double %381), !dbg !764
  %handler_result50 = call double @fSubHandlerDouble(double %handler_result49, double %2), !dbg !765
  %382 = fmul double %377, %handler_result50, !dbg !765
  %handler_result51 = call double @fAddHandlerDouble(double %378, double %382), !dbg !766
  %383 = fneg double %handler_result51, !dbg !766
  %handler_result52 = call double @fAddHandlerDouble(double %380, double 1.000000e+00), !dbg !767
  %handler_result53 = call double @fSubHandlerDouble(double %handler_result52, double %47), !dbg !768
  %384 = fmul double %handler_result53, %380, !dbg !768
  %385 = fdiv double %383, %384, !dbg !769
  tail call void @llvm.dbg.value(metadata double %385, metadata !394, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %377, metadata !392, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %385, metadata !393, metadata !DIExpression()), !dbg !435
  %386 = call double @llvm.fabs.f64(double %385), !dbg !770
  tail call void @llvm.dbg.value(metadata double %386, metadata !397, metadata !DIExpression()), !dbg !771
  %387 = fcmp ogt double %386, 0x5FEFFFFFFFFFFFFF, !dbg !772
  br i1 %387, label %388, label %392, !dbg !770

388:                                              ; preds = %375
  %389 = fdiv double %385, 0x5FEFFFFFFFFFFFFF, !dbg !774
  tail call void @llvm.dbg.value(metadata double %389, metadata !393, metadata !DIExpression()), !dbg !435
  %390 = fdiv double %377, 0x5FEFFFFFFFFFFFFF, !dbg !774
  tail call void @llvm.dbg.value(metadata double %390, metadata !392, metadata !DIExpression()), !dbg !435
  %391 = add nsw i32 %379, 1, !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %391, metadata !359, metadata !DIExpression()), !dbg !425
  br label %398, !dbg !774

392:                                              ; preds = %375
  %393 = fcmp olt double %386, 0x1FF0000000000001, !dbg !776
  br i1 %393, label %394, label %398, !dbg !772

394:                                              ; preds = %392
  %395 = fmul double %385, 0x5FEFFFFFFFFFFFFF, !dbg !778
  tail call void @llvm.dbg.value(metadata double %395, metadata !393, metadata !DIExpression()), !dbg !435
  %396 = fmul double %377, 0x5FEFFFFFFFFFFFFF, !dbg !778
  tail call void @llvm.dbg.value(metadata double %396, metadata !392, metadata !DIExpression()), !dbg !435
  %397 = add nsw i32 %379, -1, !dbg !778
  tail call void @llvm.dbg.value(metadata i32 %397, metadata !359, metadata !DIExpression()), !dbg !425
  br label %398, !dbg !778

398:                                              ; preds = %394, %392, %388
  %399 = phi i32 [ %391, %388 ], [ %397, %394 ], [ %379, %392 ], !dbg !425
  %400 = phi double [ %390, %388 ], [ %396, %394 ], [ %377, %392 ], !dbg !780
  %401 = phi double [ %389, %388 ], [ %395, %394 ], [ %385, %392 ], !dbg !780
  tail call void @llvm.dbg.value(metadata double %401, metadata !393, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %400, metadata !392, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %399, metadata !359, metadata !DIExpression()), !dbg !425
  %402 = add nuw nsw i32 %376, 1, !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !395, metadata !DIExpression()), !dbg !435
  %403 = icmp eq i32 %402, %276, !dbg !782
  br i1 %403, label %404, label %375, !dbg !761, !llvm.loop !783

404:                                              ; preds = %398, %368
  %405 = phi i32 [ 0, %368 ], [ %399, %398 ], !dbg !425
  %406 = phi double [ %370, %368 ], [ %401, %398 ], !dbg !435
  tail call void @llvm.dbg.value(metadata double %406, metadata !365, metadata !DIExpression()), !dbg !425
  %407 = call double @llvm.fabs.f64(double %406), !dbg !785
  %408 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !786
  %409 = load double, ptr %408, align 8, !dbg !786, !tbaa !188
  %410 = load double, ptr %18, align 8, !dbg !787, !tbaa !180
  %411 = fdiv double %409, %410, !dbg !788
  %412 = fmul double %406, %411, !dbg !789
  %413 = call double @llvm.fabs.f64(double %412), !dbg !789
  tail call void @llvm.dbg.value(metadata double %413, metadata !366, metadata !DIExpression()), !dbg !425
  %414 = add nsw i32 %276, -1, !dbg !790
  %415 = sitofp i32 %414 to double, !dbg !791
  %416 = call double @llvm.fabs.f64(double %415), !dbg !792
  %handler_result54 = call double @fAddHandlerDouble(double %416, double 1.000000e+00), !dbg !793
  %417 = fmul double %handler_result54, 0x3CC0000000000000, !dbg !793
  %418 = fmul double %417, %407, !dbg !794
  %handler_result55 = call double @fAddHandlerDouble(double %418, double %413), !dbg !795
  tail call void @llvm.dbg.value(metadata double %handler_result55, metadata !366, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #7, !dbg !795
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7, !dbg !795
  br label %419

419:                                              ; preds = %404, %353
  %420 = phi double [ %359, %353 ], [ 0.000000e+00, %404 ]
  %421 = phi double [ %358, %353 ], [ %374, %404 ]
  %422 = phi i32 [ 0, %353 ], [ %405, %404 ], !dbg !796
  %423 = phi double [ %362, %353 ], [ %406, %404 ], !dbg !797
  %424 = phi double [ %handler_result48, %353 ], [ %handler_result55, %404 ], !dbg !797
  %425 = phi i32 [ 0, %353 ], [ %369, %404 ], !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %425, metadata !367, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %424, metadata !366, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %423, metadata !365, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %422, metadata !359, metadata !DIExpression()), !dbg !425
  %426 = fcmp oeq double %313, 0.000000e+00, !dbg !798
  br i1 %426, label %434, label %435, !dbg !799

427:                                              ; preds = %311
  %428 = sitofp i32 %276 to double, !dbg !800
  call fastcc void @hyperg_lnU_beq2a(double noundef %428, double noundef %2, ptr noundef nonnull %11), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !366, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !365, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !425
  %429 = fcmp oeq double %313, 0.000000e+00, !dbg !798
  br i1 %429, label %434, label %430, !dbg !799

430:                                              ; preds = %427
  %431 = load double, ptr %11, align 8, !dbg !803, !tbaa !180
  %432 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1
  %433 = load double, ptr %432, align 8, !dbg !804, !tbaa !188
  br label %440, !dbg !799

434:                                              ; preds = %427, %419
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false), !dbg !805
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1127, i32 noundef 12) #7, !dbg !807
  br label %473, !dbg !807

435:                                              ; preds = %419
  %436 = fcmp oeq double %423, 0.000000e+00, !dbg !809
  br i1 %436, label %437, label %440, !dbg !810

437:                                              ; preds = %435
  store double 0.000000e+00, ptr %3, align 8, !dbg !811, !tbaa !131
  %438 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !811
  store double 0x10000000000000, ptr %438, align 8, !dbg !811, !tbaa !137
  %439 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !811
  store i32 0, ptr %439, align 8, !dbg !811, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1131, i32 noundef 15) #7, !dbg !814
  br label %473, !dbg !814

440:                                              ; preds = %435, %430
  %441 = phi double [ %420, %435 ], [ %433, %430 ], !dbg !804
  %442 = phi double [ %421, %435 ], [ %431, %430 ], !dbg !803
  %443 = phi i32 [ %422, %435 ], [ 0, %430 ]
  %444 = phi double [ %423, %435 ], [ 1.000000e+00, %430 ]
  %445 = phi double [ %424, %435 ], [ 0.000000e+00, %430 ]
  %446 = phi i32 [ %425, %435 ], [ 0, %430 ]
  %447 = sub nsw i32 %443, %312, !dbg !816
  %448 = sitofp i32 %447 to double, !dbg !817
  %449 = fmul double %448, 0x40762E42FEFA39EF, !dbg !818
  tail call void @llvm.dbg.value(metadata double %449, metadata !402, metadata !DIExpression()), !dbg !819
  %450 = call double @llvm.fabs.f64(double %444), !dbg !820
  %handler_result70 = call double @callHandler(i32 12, double %450, double %450), !dbg !821
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !406, metadata !DIExpression()), !dbg !819
  %451 = fdiv double %445, %444, !dbg !821
  %452 = call double @llvm.fabs.f64(double %451), !dbg !822
  %handler_result56 = call double @fAddHandlerDouble(double %452, double 0x3CB0000000000000), !dbg !823
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !407, metadata !DIExpression()), !dbg !819
  %handler_result71 = call double @callHandler(i32 12, double %320, double %320), !dbg !824
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !408, metadata !DIExpression()), !dbg !819
  %453 = fdiv double %321, %313, !dbg !824
  %454 = call double @llvm.fabs.f64(double %453), !dbg !825
  %handler_result57 = call double @fAddHandlerDouble(double %454, double 0x3CB0000000000000), !dbg !826
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !409, metadata !DIExpression()), !dbg !819
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result70, double %442), !dbg !827
  %handler_result59 = call double @fSubHandlerDouble(double %handler_result58, double %handler_result71), !dbg !828
  %handler_result60 = call double @fAddHandlerDouble(double %449, double %handler_result59), !dbg !829
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !410, metadata !DIExpression()), !dbg !819
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result56, double %441), !dbg !830
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result57, double %handler_result61), !dbg !831
  %455 = call double @llvm.fabs.f64(double %442), !dbg !831
  %456 = call double @llvm.fabs.f64(double %handler_result70), !dbg !832
  %handler_result63 = call double @fAddHandlerDouble(double %456, double %455), !dbg !833
  %457 = call double @llvm.fabs.f64(double %handler_result71), !dbg !833
  %handler_result64 = call double @fAddHandlerDouble(double %457, double %handler_result63), !dbg !834
  %458 = call double @llvm.fabs.f64(double %449), !dbg !834
  %handler_result65 = call double @fAddHandlerDouble(double %458, double %handler_result64), !dbg !835
  %459 = fmul double %handler_result65, 0x3CC0000000000000, !dbg !835
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result62, double %459), !dbg !836
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !411, metadata !DIExpression()), !dbg !819
  %460 = fcmp oge double %444, 0.000000e+00, !dbg !836
  %461 = fcmp oge double %313, 0.000000e+00, !dbg !837
  %462 = select i1 %461, i32 1, i32 -1, !dbg !837
  %463 = sub nsw i32 0, %462, !dbg !838
  %464 = select i1 %460, i32 %462, i32 %463, !dbg !838
  %465 = sitofp i32 %464 to double, !dbg !836
  tail call void @llvm.dbg.value(metadata double %465, metadata !412, metadata !DIExpression()), !dbg !819
  %466 = call i32 @gsl_sf_exp_err_e10_e(double noundef %handler_result60, double noundef %handler_result66, ptr noundef %3) #7, !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %466, metadata !413, metadata !DIExpression()), !dbg !819
  %467 = load double, ptr %3, align 8, !dbg !840, !tbaa !131
  %468 = fmul double %467, %465, !dbg !840
  store double %468, ptr %3, align 8, !dbg !840, !tbaa !131
  %469 = icmp eq i32 %466, 0, !dbg !841
  %470 = icmp eq i32 %277, 0, !dbg !841
  %471 = select i1 %470, i32 %446, i32 %277, !dbg !841
  %472 = select i1 %469, i32 %471, i32 %466, !dbg !841
  br label %473

473:                                              ; preds = %440, %437, %434
  %474 = phi i32 [ 12, %434 ], [ 15, %437 ], [ %472, %440 ], !dbg !842
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !843
  br label %475

475:                                              ; preds = %473, %271, %181, %130, %84, %55, %37, %23, %20
  %476 = phi i32 [ 0, %20 ], [ 0, %23 ], [ %41, %37 ], [ %67, %55 ], [ %85, %84 ], [ %138, %130 ], [ %199, %181 ], [ %272, %271 ], [ %474, %473 ], !dbg !844
  ret i32 %476, !dbg !845
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !846 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !850 i32 @gsl_sf_exp_mult_err_e10_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !854 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !885
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !886
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !887
  call void @llvm.dbg.assign(metadata i1 undef, metadata !866, metadata !DIExpression(), metadata !887, metadata ptr %7, metadata !DIExpression()), !dbg !888
  %8 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !889
  call void @llvm.dbg.assign(metadata i1 undef, metadata !882, metadata !DIExpression(), metadata !889, metadata ptr %8, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata double %0, metadata !858, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata double %1, metadata !859, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata double %2, metadata !860, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !861, metadata !DIExpression()), !dbg !891
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !892
  %9 = tail call double @llvm.floor.f64(double %handler_result), !dbg !892
  tail call void @llvm.dbg.value(metadata double %9, metadata !862, metadata !DIExpression()), !dbg !891
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 5.000000e-01), !dbg !893
  %10 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !893
  tail call void @llvm.dbg.value(metadata double %10, metadata !863, metadata !DIExpression()), !dbg !891
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %9), !dbg !894
  %11 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !894
  %12 = fcmp olt double %11, 0x3D4F400000000000, !dbg !895
  tail call void @llvm.dbg.value(metadata i1 %12, metadata !864, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !891
  %handler_result3 = call double @fSubHandlerDouble(double %1, double %10), !dbg !896
  %13 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !896
  %14 = fcmp olt double %13, 0x3D4F400000000000, !dbg !897
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !865, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !891
  %15 = fcmp oeq double %2, 0.000000e+00, !dbg !898
  %16 = fcmp oge double %1, 1.000000e+00
  %17 = and i1 %16, %15, !dbg !899
  br i1 %17, label %18, label %21, !dbg !899

18:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !900, !tbaa !131
  %19 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !900
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !900, !tbaa !137
  %20 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !900
  store i32 0, ptr %20, align 8, !dbg !900, !tbaa !138
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1701, i32 noundef 1) #7, !dbg !903
  br label %89, !dbg !903

21:                                               ; preds = %4
  %22 = fcmp oeq double %0, 0.000000e+00, !dbg !905
  br i1 %22, label %23, label %26, !dbg !906

23:                                               ; preds = %21
  store double 1.000000e+00, ptr %3, align 8, !dbg !907, !tbaa !131
  %24 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !909
  store double 0.000000e+00, ptr %24, align 8, !dbg !910, !tbaa !137
  %25 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !911
  store i32 0, ptr %25, align 8, !dbg !912, !tbaa !138
  br label %89, !dbg !913

26:                                               ; preds = %21
  br i1 %15, label %27, label %46, !dbg !914

27:                                               ; preds = %26
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !885, metadata ptr %5, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !162, metadata !DIExpression(), metadata !886, metadata ptr %6, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata double %1, metadata !160, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr %3, metadata !161, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !918
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !918
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !919
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %1), !dbg !920
  %28 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result5, ptr noundef nonnull %5) #7, !dbg !920
  call void @llvm.dbg.value(metadata i32 %28, metadata !168, metadata !DIExpression()), !dbg !915
  %29 = call i32 @gsl_sf_gammainv_e(double noundef %1, ptr noundef nonnull %6) #7, !dbg !921
  call void @llvm.dbg.value(metadata i32 %29, metadata !169, metadata !DIExpression()), !dbg !915
  %30 = fmul double %1, 0x400921FB54442D18, !dbg !922
  %handler_result13 = call double @callHandler(i32 1, double %30, double %30), !dbg !923
  %31 = fdiv double 0x400921FB54442D18, %handler_result13, !dbg !923
  call void @llvm.dbg.value(metadata double %31, metadata !170, metadata !DIExpression()), !dbg !915
  %32 = load double, ptr %5, align 8, !dbg !924, !tbaa !180
  %33 = fmul double %31, %32, !dbg !925
  %34 = load double, ptr %6, align 8, !dbg !926, !tbaa !180
  %35 = fmul double %33, %34, !dbg !927
  store double %35, ptr %3, align 8, !dbg !928, !tbaa !131
  %36 = call double @llvm.fabs.f64(double %31), !dbg !929
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !930
  %38 = load double, ptr %37, align 8, !dbg !930, !tbaa !188
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !931
  %40 = load double, ptr %39, align 8, !dbg !931, !tbaa !188
  %handler_result6 = call double @fAddHandlerDouble(double %38, double %40), !dbg !932
  %41 = fmul double %36, %handler_result6, !dbg !932
  %42 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !933
  store double %41, ptr %42, align 8, !dbg !934, !tbaa !137
  %43 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !935
  store i32 0, ptr %43, align 8, !dbg !936, !tbaa !138
  %44 = icmp eq i32 %28, 0, !dbg !937
  %45 = select i1 %44, i32 %29, i32 %28, !dbg !937
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !938
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !938
  br label %89, !dbg !939

46:                                               ; preds = %26
  %handler_result7 = call double @fAddHandlerDouble(double %0, double 1.000000e+00)
  %47 = fcmp oeq double %handler_result7, %1
  %48 = and i1 %47, %12, !dbg !940
  br i1 %48, label %49, label %58, !dbg !940

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !941
  %50 = fneg double %0, !dbg !942
  %51 = fptosi double %50 to i32, !dbg !942
  %52 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %51, ptr noundef nonnull %7) #7, !dbg !943
  %53 = load double, ptr %7, align 8, !dbg !944, !tbaa !180
  store double %53, ptr %3, align 8, !dbg !945, !tbaa !131
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !946
  %55 = load double, ptr %54, align 8, !dbg !946, !tbaa !188
  %56 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !947
  store double %55, ptr %56, align 8, !dbg !948, !tbaa !137
  %57 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !949
  store i32 0, ptr %57, align 8, !dbg !950, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !951
  br label %89

58:                                               ; preds = %46
  %59 = and i1 %12, %14, !dbg !952
  br i1 %59, label %60, label %64, !dbg !952

60:                                               ; preds = %58
  %61 = fptosi double %9 to i32, !dbg !953
  %62 = fptosi double %10 to i32, !dbg !955
  %63 = tail call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %61, i32 noundef %62, double noundef %2, ptr noundef %3), !dbg !956
  br label %89, !dbg !957

64:                                               ; preds = %58
  %65 = fcmp olt double %2, 0.000000e+00, !dbg !958
  br i1 %65, label %66, label %68, !dbg !959

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @hyperg_U_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !960
  br label %89, !dbg !962

68:                                               ; preds = %64
  br i1 %16, label %69, label %71, !dbg !963

69:                                               ; preds = %68
  %70 = tail call fastcc i32 @hyperg_U_bge1(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !964
  br label %89, !dbg !966

71:                                               ; preds = %68
  %handler_result14 = call double @callHandler(i32 12, double %2, double %2), !dbg !967
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !872, metadata !DIExpression()), !dbg !890
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !967
  %72 = fmul double %handler_result8, %handler_result14, !dbg !967
  tail call void @llvm.dbg.value(metadata double %72, metadata !878, metadata !DIExpression()), !dbg !890
  %73 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !968
  %74 = fmul double %73, 2.000000e+00, !dbg !969
  %75 = fmul double %74, 0x3CB0000000000000, !dbg !970
  %76 = tail call double @llvm.fabs.f64(double %1), !dbg !971
  %handler_result9 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !972
  %77 = fmul double %handler_result9, %75, !dbg !972
  tail call void @llvm.dbg.value(metadata double %77, metadata !879, metadata !DIExpression()), !dbg !890
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result7, double %1), !dbg !973
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !880, metadata !DIExpression()), !dbg !890
  %handler_result11 = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !974
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !881, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7, !dbg !974
  %78 = call fastcc i32 @hyperg_U_bge1(double noundef %handler_result10, double noundef %handler_result11, double noundef %2, ptr noundef nonnull %8), !dbg !975
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !883, metadata !DIExpression()), !dbg !890
  %79 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 2, !dbg !976
  %80 = load i32, ptr %79, align 8, !dbg !976, !tbaa !138
  %81 = sitofp i32 %80 to double, !dbg !977
  %82 = fmul double %81, 0x40026BB1BBB55516, !dbg !978
  %handler_result12 = call double @fAddHandlerDouble(double %72, double %82), !dbg !979
  %83 = load double, ptr %8, align 8, !dbg !979, !tbaa !131
  %84 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 1, !dbg !980
  %85 = load double, ptr %84, align 8, !dbg !980, !tbaa !137
  %86 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result12, double noundef %77, double noundef %83, double noundef %85, ptr noundef %3) #7, !dbg !981
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !884, metadata !DIExpression()), !dbg !890
  %87 = icmp eq i32 %86, 0, !dbg !982
  %88 = select i1 %87, i32 %78, i32 %86, !dbg !982
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7, !dbg !983
  br label %89

89:                                               ; preds = %71, %69, %66, %60, %49, %27, %23, %18
  %90 = phi i32 [ 1, %18 ], [ 0, %23 ], [ %45, %27 ], [ 0, %49 ], [ %63, %60 ], [ %67, %66 ], [ %70, %69 ], [ %88, %71 ], !dbg !984
  ret i32 %90, !dbg !985
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !986 i32 @gsl_sf_pow_int_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_negx(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !991 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1023
  call void @llvm.dbg.assign(metadata i1 undef, metadata !997, metadata !DIExpression(), metadata !1023, metadata ptr %5, metadata !DIExpression()), !dbg !1024
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1025
  call void @llvm.dbg.assign(metadata i1 undef, metadata !998, metadata !DIExpression(), metadata !1025, metadata ptr %6, metadata !DIExpression()), !dbg !1024
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1008, metadata !DIExpression(), metadata !1026, metadata ptr %7, metadata !DIExpression()), !dbg !1027
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1014, metadata !DIExpression(), metadata !1028, metadata ptr %8, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata double %0, metadata !993, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %1, metadata !994, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %2, metadata !995, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !996, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1030
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1030
  %9 = tail call double @llvm.floor.f64(double %0), !dbg !1031
  %10 = fcmp oeq double %9, %0, !dbg !1032
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  %11 = tail call double @llvm.floor.f64(double %1), !dbg !1033
  %12 = fcmp oeq double %11, %1, !dbg !1034
  tail call void @llvm.dbg.value(metadata i1 %12, metadata !1003, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1004, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1005, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1006, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1007, metadata !DIExpression()), !dbg !1024
  %13 = fcmp ole double %1, 0.000000e+00
  %14 = and i1 %13, %12, !dbg !1035
  br i1 %14, label %15, label %22, !dbg !1035

15:                                               ; preds = %4
  %16 = fcmp ole double %0, 0.000000e+00
  %17 = fcmp oge double %0, %1
  %18 = and i1 %16, %17, !dbg !1036
  %19 = and i1 %10, %18, !dbg !1036
  br i1 %19, label %22, label %20, !dbg !1036

20:                                               ; preds = %15
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1037, !tbaa !131
  %21 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1039
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !1040, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1548, i32 noundef 24) #7, !dbg !1041
  br label %101, !dbg !1041

22:                                               ; preds = %15, %4
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1043
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !1044
  %23 = fneg double %0, !dbg !1044
  %24 = call i32 @gsl_sf_poch_e(double noundef %handler_result1, double noundef %23, ptr noundef nonnull %5) #7, !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !999, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1001, metadata !DIExpression()), !dbg !1024
  %25 = load double, ptr %5, align 8, !dbg !1046, !tbaa !180
  %26 = fcmp une double %25, 0.000000e+00, !dbg !1047
  br i1 %26, label %27, label %44, !dbg !1048

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1049
  %28 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7) #7, !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1013, metadata !DIExpression()), !dbg !1027
  %29 = icmp eq i32 %24, 0, !dbg !1051
  %30 = select i1 %29, i32 %28, i32 %24, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1001, metadata !DIExpression()), !dbg !1024
  %31 = load double, ptr %7, align 8, !dbg !1052, !tbaa !180
  %32 = load double, ptr %5, align 8, !dbg !1053, !tbaa !180
  %33 = fmul double %31, %32, !dbg !1054
  tail call void @llvm.dbg.value(metadata double %33, metadata !1004, metadata !DIExpression()), !dbg !1024
  %34 = call double @llvm.fabs.f64(double %33), !dbg !1055
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !1056
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1057
  %37 = load double, ptr %36, align 8, !dbg !1057, !tbaa !188
  %38 = fmul double %32, %37, !dbg !1058
  %39 = call double @llvm.fabs.f64(double %38), !dbg !1059
  %handler_result2 = call double @fAddHandlerDouble(double %35, double %39), !dbg !1060
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1060
  %41 = load double, ptr %40, align 8, !dbg !1060, !tbaa !188
  %42 = fmul double %31, %41, !dbg !1061
  %43 = call double @llvm.fabs.f64(double %42), !dbg !1062
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %43), !dbg !1063
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1005, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1063
  br label %44, !dbg !1064

44:                                               ; preds = %27, %22
  %45 = phi double [ %handler_result3, %27 ], [ 0.000000e+00, %22 ], !dbg !1024
  %46 = phi double [ %33, %27 ], [ 0.000000e+00, %22 ], !dbg !1024
  %47 = phi i32 [ %30, %27 ], [ %24, %22 ], !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %46, metadata !1004, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %45, metadata !1005, metadata !DIExpression()), !dbg !1024
  %48 = fcmp oge double %1, 2.000000e+00
  %49 = and i1 %48, %12, !dbg !1066
  br i1 %49, label %50, label %55, !dbg !1066

50:                                               ; preds = %44
  %handler_result4 = call double @fAddHandlerDouble(double %1, double -2.000000e+00)
  %51 = fcmp oge double %handler_result4, %0
  %52 = and i1 %10, %51, !dbg !1067
  br i1 %52, label %55, label %53, !dbg !1067

53:                                               ; preds = %50
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1068, !tbaa !131
  %54 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1070
  store double 0x7FF8000000000000, ptr %54, align 8, !dbg !1071, !tbaa !137
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1581, i32 noundef 24) #7, !dbg !1072
  br label %101, !dbg !1072

55:                                               ; preds = %50, %44
  %56 = fcmp ole double %0, 0.000000e+00
  %57 = fcmp oge double %1, 1.000000e+00
  %58 = and i1 %56, %57, !dbg !1074
  %59 = and i1 %10, %58, !dbg !1074
  br i1 %59, label %93, label %60, !dbg !1074

60:                                               ; preds = %55
  %61 = fneg double %handler_result1, !dbg !1076
  %62 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %61, ptr noundef nonnull %6) #7, !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1000, metadata !DIExpression()), !dbg !1024
  %63 = icmp eq i32 %47, 0, !dbg !1079
  %64 = select i1 %63, i32 %62, i32 %47, !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1001, metadata !DIExpression()), !dbg !1024
  %65 = load double, ptr %6, align 8, !dbg !1080, !tbaa !180
  %66 = fcmp une double %65, 0.000000e+00, !dbg !1081
  br i1 %66, label %67, label %93, !dbg !1082

67:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1083
  %handler_result5 = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !1084
  %68 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %handler_result1, double noundef %handler_result5, double noundef %2, ptr noundef nonnull %8) #7, !dbg !1084
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1019, metadata !DIExpression()), !dbg !1029
  %69 = load double, ptr %8, align 8, !dbg !1085, !tbaa !180
  %70 = load double, ptr %6, align 8, !dbg !1086, !tbaa !180
  %71 = fmul double %69, %70, !dbg !1087
  tail call void @llvm.dbg.value(metadata double %71, metadata !1006, metadata !DIExpression()), !dbg !1024
  %72 = call double @llvm.fabs.f64(double %71), !dbg !1088
  %73 = fmul double %72, 0x3CC0000000000000, !dbg !1089
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1090
  %75 = load double, ptr %74, align 8, !dbg !1090, !tbaa !188
  %76 = fmul double %70, %75, !dbg !1091
  %77 = call double @llvm.fabs.f64(double %76), !dbg !1092
  %handler_result6 = call double @fAddHandlerDouble(double %73, double %77), !dbg !1093
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1093
  %79 = load double, ptr %78, align 8, !dbg !1093, !tbaa !188
  %80 = fmul double %69, %79, !dbg !1094
  %81 = call double @llvm.fabs.f64(double %80), !dbg !1095
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %81), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1007, metadata !DIExpression()), !dbg !1024
  %82 = icmp eq i32 %64, 0, !dbg !1096
  %83 = select i1 %82, i32 %68, i32 %64, !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1001, metadata !DIExpression()), !dbg !1024
  %84 = fcmp une double %71, 0.000000e+00, !dbg !1097
  br i1 %84, label %85, label %90, !dbg !1098

85:                                               ; preds = %67
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1099
  %86 = call double @pow(double noundef %2, double noundef %handler_result8) #7, !dbg !1099
  tail call void @llvm.dbg.value(metadata double %86, metadata !1020, metadata !DIExpression()), !dbg !1100
  %87 = fmul double %71, %86, !dbg !1101
  tail call void @llvm.dbg.value(metadata double %87, metadata !1006, metadata !DIExpression()), !dbg !1024
  %88 = call double @llvm.fabs.f64(double %86), !dbg !1102
  %89 = fmul double %handler_result7, %88, !dbg !1103
  tail call void @llvm.dbg.value(metadata double %89, metadata !1007, metadata !DIExpression()), !dbg !1024
  br label %90, !dbg !1104

90:                                               ; preds = %85, %67
  %91 = phi double [ %87, %85 ], [ %71, %67 ], !dbg !1029
  %92 = phi double [ %89, %85 ], [ %handler_result7, %67 ], !dbg !1029
  tail call void @llvm.dbg.value(metadata double %92, metadata !1007, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %91, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1105
  br label %93, !dbg !1106

93:                                               ; preds = %90, %60, %55
  %94 = phi double [ %91, %90 ], [ 0.000000e+00, %60 ], [ 0.000000e+00, %55 ], !dbg !1024
  %95 = phi double [ %92, %90 ], [ 0.000000e+00, %60 ], [ 0.000000e+00, %55 ], !dbg !1024
  %96 = phi i32 [ %83, %90 ], [ %64, %60 ], [ %47, %55 ], !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !1001, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %95, metadata !1007, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %94, metadata !1006, metadata !DIExpression()), !dbg !1024
  %handler_result9 = call double @fAddHandlerDouble(double %46, double %94), !dbg !1107
  store double %handler_result9, ptr %3, align 8, !dbg !1107, !tbaa !131
  %97 = call double @llvm.fabs.f64(double %handler_result9), !dbg !1108
  %98 = fmul double %97, 0x3CC0000000000000, !dbg !1109
  %handler_result10 = call double @fAddHandlerDouble(double %45, double %95), !dbg !1110
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %98), !dbg !1111
  %99 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1111
  store double %handler_result11, ptr %99, align 8, !dbg !1112, !tbaa !137
  %100 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1113
  store i32 0, ptr %100, align 8, !dbg !1114, !tbaa !138
  br label %101, !dbg !1115

101:                                              ; preds = %93, %53, %20
  %102 = phi i32 [ %96, %93 ], [ 24, %53 ], [ 24, %20 ], !dbg !1024
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1116
  ret i32 %102, !dbg !1116
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_bge1(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1117 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1130, metadata !DIExpression(), metadata !1291, metadata ptr %5, metadata !DIExpression()), !dbg !1292
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1131, metadata !DIExpression(), metadata !1293, metadata ptr %6, metadata !DIExpression()), !dbg !1292
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1139, metadata !DIExpression(), metadata !1294, metadata ptr %7, metadata !DIExpression()), !dbg !1295
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1296
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1142, metadata !DIExpression(), metadata !1296, metadata ptr %8, metadata !DIExpression()), !dbg !1297
  %9 = alloca double, align 8, !DIAssignID !1298
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1145, metadata !DIExpression(), metadata !1298, metadata ptr %9, metadata !DIExpression()), !dbg !1297
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1299
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1148, metadata !DIExpression(), metadata !1299, metadata ptr %10, metadata !DIExpression()), !dbg !1300
  %11 = alloca double, align 8, !DIAssignID !1301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1158, metadata !DIExpression(), metadata !1301, metadata ptr %11, metadata !DIExpression()), !dbg !1302
  %12 = alloca double, align 8, !DIAssignID !1303
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1159, metadata !DIExpression(), metadata !1303, metadata ptr %12, metadata !DIExpression()), !dbg !1302
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1161, metadata !DIExpression(), metadata !1304, metadata ptr %13, metadata !DIExpression()), !dbg !1302
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1162, metadata !DIExpression(), metadata !1305, metadata ptr %14, metadata !DIExpression()), !dbg !1302
  %15 = alloca double, align 8, !DIAssignID !1306
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1200, metadata !DIExpression(), metadata !1306, metadata ptr %15, metadata !DIExpression()), !dbg !1307
  %16 = alloca double, align 8, !DIAssignID !1308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1201, metadata !DIExpression(), metadata !1308, metadata ptr %16, metadata !DIExpression()), !dbg !1307
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1309
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1203, metadata !DIExpression(), metadata !1309, metadata ptr %17, metadata !DIExpression()), !dbg !1307
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1204, metadata !DIExpression(), metadata !1310, metadata ptr %18, metadata !DIExpression()), !dbg !1307
  %19 = alloca double, align 8, !DIAssignID !1311
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1228, metadata !DIExpression(), metadata !1311, metadata ptr %19, metadata !DIExpression()), !dbg !1312
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1232, metadata !DIExpression(), metadata !1313, metadata ptr %20, metadata !DIExpression()), !dbg !1312
  %21 = alloca double, align 8, !DIAssignID !1314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1234, metadata !DIExpression(), metadata !1314, metadata ptr %21, metadata !DIExpression()), !dbg !1312
  %22 = alloca i32, align 4, !DIAssignID !1315
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1236, metadata !DIExpression(), metadata !1315, metadata ptr %22, metadata !DIExpression()), !dbg !1312
  %23 = alloca i32, align 4, !DIAssignID !1316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1261, metadata !DIExpression(), metadata !1316, metadata ptr %23, metadata !DIExpression()), !dbg !1317
  %24 = alloca double, align 8, !DIAssignID !1318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1267, metadata !DIExpression(), metadata !1318, metadata ptr %24, metadata !DIExpression()), !dbg !1319
  %25 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1275, metadata !DIExpression(), metadata !1320, metadata ptr %25, metadata !DIExpression()), !dbg !1321
  %26 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1277, metadata !DIExpression(), metadata !1322, metadata ptr %26, metadata !DIExpression()), !dbg !1321
  %27 = alloca double, align 8, !DIAssignID !1323
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1278, metadata !DIExpression(), metadata !1323, metadata ptr %27, metadata !DIExpression()), !dbg !1321
  %28 = alloca double, align 8, !DIAssignID !1324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1279, metadata !DIExpression(), metadata !1324, metadata ptr %28, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %0, metadata !1119, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata double %1, metadata !1120, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata double %2, metadata !1121, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1122, metadata !DIExpression()), !dbg !1325
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1326
  %29 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1326
  tail call void @llvm.dbg.value(metadata double %29, metadata !1123, metadata !DIExpression()), !dbg !1325
  %30 = fcmp olt double %0, 0.000000e+00, !dbg !1327
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !1124, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1325
  %31 = fcmp oeq double %0, 0.000000e+00, !dbg !1328
  br i1 %31, label %32, label %35, !dbg !1329

32:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1330, !tbaa !131
  %33 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1332
  store double 0.000000e+00, ptr %33, align 8, !dbg !1333, !tbaa !137
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1334
  store i32 0, ptr %34, align 8, !dbg !1335, !tbaa !138
  br label %522, !dbg !1336

35:                                               ; preds = %4
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %29), !dbg !1337
  %36 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1337
  %37 = fcmp olt double %36, 0x3D4F400000000000, !dbg !1337
  tail call void @llvm.dbg.value(metadata !DIArgList(i1 %30, i1 %37), metadata !1124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1325
  %38 = tail call double @llvm.fabs.f64(double %29)
  %39 = fcmp olt double %38, 0x41DFFFFFFFC00000
  %40 = and i1 %39, %37, !dbg !1338
  %41 = and i1 %30, %40, !dbg !1338
  br i1 %41, label %42, label %60, !dbg !1338

42:                                               ; preds = %35
  %43 = fptosi double %29 to i32, !dbg !1339
  %44 = sub nsw i32 0, %43, !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !1125, metadata !DIExpression()), !dbg !1292
  %45 = and i32 %44, 1, !dbg !1341
  %46 = icmp eq i32 %45, 0, !dbg !1341
  tail call void @llvm.dbg.value(metadata double poison, metadata !1129, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1342
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1343
  %handler_result2 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1344
  %47 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %44, double noundef %handler_result2, double noundef %2, ptr noundef nonnull %6) #7, !dbg !1344
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1132, metadata !DIExpression()), !dbg !1292
  %48 = call i32 @gsl_sf_lnfact_e(i32 noundef %44, ptr noundef nonnull %5) #7, !dbg !1345
  %49 = load double, ptr %5, align 8, !dbg !1346, !tbaa !180
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1347
  %51 = load double, ptr %50, align 8, !dbg !1347, !tbaa !188
  %52 = load double, ptr %6, align 8, !dbg !1348, !tbaa !180
  %53 = fneg double %52, !dbg !1349
  %54 = select i1 %46, double %52, double %53, !dbg !1349
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1350
  %56 = load double, ptr %55, align 8, !dbg !1350, !tbaa !188
  %57 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %49, double noundef %51, double noundef %54, double noundef %56, ptr noundef %3) #7, !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1133, metadata !DIExpression()), !dbg !1352
  %58 = icmp eq i32 %57, 0, !dbg !1353
  %59 = select i1 %58, i32 %47, i32 %57, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1354
  br label %522

60:                                               ; preds = %35
  %61 = tail call double @llvm.fabs.f64(double %0), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %61, metadata !469, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !1356
  %62 = fcmp ogt double %61, 1.000000e+00, !dbg !1358
  %63 = select i1 %62, double %61, double 1.000000e+00, !dbg !1358
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1355
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %1), !dbg !1355
  %64 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %64, metadata !469, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !1359
  %65 = fcmp ogt double %64, 1.000000e+00, !dbg !1361
  %66 = select i1 %65, double %64, double 1.000000e+00, !dbg !1361
  %67 = fmul double %63, %66, !dbg !1355
  %68 = tail call double @llvm.fabs.f64(double %2), !dbg !1355
  %69 = fmul double %68, 0x3FEFAE147AE147AE, !dbg !1355
  %70 = fcmp olt double %67, %69, !dbg !1355
  br i1 %70, label %71, label %83, !dbg !1362

71:                                               ; preds = %60
  %72 = fneg double %0, !dbg !1363
  %handler_result111 = call double @callHandler(i32 12, double %2, double %2), !dbg !1364
  %73 = fmul double %handler_result111, %72, !dbg !1364
  tail call void @llvm.dbg.value(metadata double %73, metadata !1135, metadata !DIExpression()), !dbg !1295
  %74 = tail call double @llvm.fabs.f64(double %73), !dbg !1365
  %75 = fmul double %74, 0x3CC0000000000000, !dbg !1366
  tail call void @llvm.dbg.value(metadata double %75, metadata !1138, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1367
  %76 = call fastcc i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !1368, !range !489
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1140, metadata !DIExpression()), !dbg !1295
  %77 = load double, ptr %7, align 8, !dbg !1369, !tbaa !180
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1370
  %79 = load double, ptr %78, align 8, !dbg !1370, !tbaa !188
  %80 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %73, double noundef %75, double noundef %77, double noundef %79, ptr noundef %3) #7, !dbg !1371
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1141, metadata !DIExpression()), !dbg !1295
  %81 = icmp eq i32 %80, 0, !dbg !1372
  %82 = select i1 %81, i32 %76, i32 %80, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1373
  br label %522

83:                                               ; preds = %60
  %84 = fcmp ugt double %61, 1.000000e+00, !dbg !1374
  br i1 %84, label %96, label %85, !dbg !1375

85:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7, !dbg !1377
  %86 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !1146, metadata !DIExpression()), !dbg !1297
  %87 = load double, ptr %9, align 8, !dbg !1379, !tbaa !553
  %88 = call double @llvm.fabs.f64(double %87), !dbg !1380
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !1381
  %90 = load double, ptr %8, align 8, !dbg !1382, !tbaa !180
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1383
  %92 = load double, ptr %91, align 8, !dbg !1383, !tbaa !188
  %93 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %87, double noundef %89, double noundef %90, double noundef %92, ptr noundef %3) #7, !dbg !1384
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !1147, metadata !DIExpression()), !dbg !1297
  %94 = icmp eq i32 %86, 0, !dbg !1385
  %95 = select i1 %94, i32 %93, i32 %86, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1386
  br label %522

96:                                               ; preds = %83
  %97 = fcmp olt double %61, 5.000000e+00, !dbg !1387
  %98 = fcmp olt double %1, 5.000000e+00, !dbg !1387
  %99 = and i1 %97, %98, !dbg !1387
  %100 = fcmp olt double %2, 2.000000e+00, !dbg !1387
  %101 = and i1 %99, %100, !dbg !1387
  br i1 %101, label %108, label %102, !dbg !1387

102:                                              ; preds = %96
  %103 = fcmp olt double %61, 1.000000e+01, !dbg !1387
  %104 = fcmp olt double %1, 1.000000e+01, !dbg !1387
  %105 = and i1 %103, %104, !dbg !1387
  %106 = fcmp olt double %2, 1.000000e+00, !dbg !1387
  %107 = and i1 %105, %106, !dbg !1387
  br i1 %107, label %108, label %115, !dbg !1387

108:                                              ; preds = %102, %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !1388
  %109 = call fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !1151, metadata !DIExpression()), !dbg !1300
  %110 = load double, ptr %10, align 8, !dbg !1390, !tbaa !180
  store double %110, ptr %3, align 8, !dbg !1391, !tbaa !131
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1392
  %112 = load double, ptr %111, align 8, !dbg !1392, !tbaa !188
  %113 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1393
  store double %112, ptr %113, align 8, !dbg !1394, !tbaa !137
  %114 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1395
  store i32 0, ptr %114, align 8, !dbg !1396, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !1397
  br label %522

115:                                              ; preds = %102
  br i1 %30, label %116, label %264, !dbg !1398

116:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1152, metadata !DIExpression()), !dbg !1302
  %117 = tail call double @llvm.floor.f64(double %0), !dbg !1399
  %handler_result5 = call double @fSubHandlerDouble(double %0, double %117), !dbg !1400
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double -1.000000e+00), !dbg !1401
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1155, metadata !DIExpression()), !dbg !1302
  %118 = tail call double @llvm.floor.f64(double %1), !dbg !1401
  %handler_result7 = call double @fSubHandlerDouble(double %1, double %118), !dbg !1402
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 1.000000e+00), !dbg !1403
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1156, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1157, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7, !dbg !1403
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7, !dbg !1403
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !1404
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !1405
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result6, double 1.000000e+00), !dbg !1406
  %119 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result9, double noundef %handler_result8, double noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %11), !dbg !1406
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1163, metadata !DIExpression()), !dbg !1302
  %120 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result6, double noundef %handler_result8, double noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %12), !dbg !1407
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1164, metadata !DIExpression()), !dbg !1302
  %121 = load double, ptr %13, align 8, !dbg !1408, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %121, metadata !1166, metadata !DIExpression()), !dbg !1302
  %122 = load double, ptr %14, align 8, !dbg !1409, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %122, metadata !1167, metadata !DIExpression()), !dbg !1302
  %123 = load double, ptr %11, align 8, !dbg !1410
  %124 = load double, ptr %12, align 8, !dbg !1410
  %125 = fcmp ogt double %123, %124, !dbg !1410
  %126 = select i1 %125, double %123, double %124, !dbg !1410
  tail call void @llvm.dbg.value(metadata double %126, metadata !1160, metadata !DIExpression()), !dbg !1302
  %handler_result10 = call double @fSubHandlerDouble(double %123, double %126), !dbg !1411
  %127 = call double @exp(double noundef %handler_result10) #7, !dbg !1411
  %128 = fmul double %121, %127, !dbg !1412
  tail call void @llvm.dbg.value(metadata double %128, metadata !1166, metadata !DIExpression()), !dbg !1302
  %129 = load double, ptr %12, align 8, !dbg !1413, !tbaa !553
  %handler_result11 = call double @fSubHandlerDouble(double %129, double %126), !dbg !1414
  %130 = call double @exp(double noundef %handler_result11) #7, !dbg !1414
  %131 = fmul double %122, %130, !dbg !1415
  tail call void @llvm.dbg.value(metadata double %131, metadata !1167, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1169, metadata !DIExpression()), !dbg !1302
  %handler_result12 = call double @fAddHandlerDouble(double %0, double 1.000000e-01), !dbg !1416
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %128, metadata !1166, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %131, metadata !1167, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1169, metadata !DIExpression()), !dbg !1302
  %132 = fcmp ogt double %handler_result6, %handler_result12, !dbg !1416
  br i1 %132, label %133, label %159, !dbg !1417

133:                                              ; preds = %154, %116
  %134 = phi i32 [ %157, %154 ], [ 0, %116 ]
  %135 = phi double [ %156, %154 ], [ %128, %116 ]
  %136 = phi double [ %155, %154 ], [ %131, %116 ]
  %137 = phi double [ %handler_result18, %154 ], [ %handler_result6, %116 ]
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %135, metadata !1166, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %136, metadata !1167, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %137, metadata !1169, metadata !DIExpression()), !dbg !1302
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result8, double %137), !dbg !1418
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double -1.000000e+00), !dbg !1419
  %138 = fmul double %137, %handler_result14, !dbg !1419
  %139 = fmul double %135, %138, !dbg !1420
  %140 = fmul double %137, 2.000000e+00, !dbg !1421
  %handler_result15 = call double @fAddHandlerDouble(double %140, double %2), !dbg !1422
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %handler_result8), !dbg !1423
  %141 = fmul double %136, %handler_result16, !dbg !1423
  %handler_result17 = call double @fAddHandlerDouble(double %139, double %141), !dbg !1424
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !1168, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %136, metadata !1166, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !1167, metadata !DIExpression()), !dbg !1302
  %142 = call double @llvm.fabs.f64(double %handler_result17), !dbg !1424
  tail call void @llvm.dbg.value(metadata double %142, metadata !1170, metadata !DIExpression()), !dbg !1425
  %143 = fcmp ogt double %142, 0x5FEFFFFFFFFFFFFF, !dbg !1426
  br i1 %143, label %144, label %148, !dbg !1424

144:                                              ; preds = %133
  %145 = fdiv double %handler_result17, 0x5FEFFFFFFFFFFFFF, !dbg !1428
  tail call void @llvm.dbg.value(metadata double %145, metadata !1167, metadata !DIExpression()), !dbg !1302
  %146 = fdiv double %136, 0x5FEFFFFFFFFFFFFF, !dbg !1428
  tail call void @llvm.dbg.value(metadata double %146, metadata !1166, metadata !DIExpression()), !dbg !1302
  %147 = add nsw i32 %134, 1, !dbg !1428
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !1157, metadata !DIExpression()), !dbg !1302
  br label %154, !dbg !1428

148:                                              ; preds = %133
  %149 = fcmp olt double %142, 0x1FF0000000000001, !dbg !1430
  br i1 %149, label %150, label %154, !dbg !1426

150:                                              ; preds = %148
  %151 = fmul double %handler_result17, 0x5FEFFFFFFFFFFFFF, !dbg !1432
  tail call void @llvm.dbg.value(metadata double %151, metadata !1167, metadata !DIExpression()), !dbg !1302
  %152 = fmul double %136, 0x5FEFFFFFFFFFFFFF, !dbg !1432
  tail call void @llvm.dbg.value(metadata double %152, metadata !1166, metadata !DIExpression()), !dbg !1302
  %153 = add nsw i32 %134, -1, !dbg !1432
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !1157, metadata !DIExpression()), !dbg !1302
  br label %154, !dbg !1432

154:                                              ; preds = %150, %148, %144
  %155 = phi double [ %145, %144 ], [ %151, %150 ], [ %handler_result17, %148 ], !dbg !1434
  %156 = phi double [ %146, %144 ], [ %152, %150 ], [ %136, %148 ], !dbg !1434
  %157 = phi i32 [ %147, %144 ], [ %153, %150 ], [ %134, %148 ], !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %156, metadata !1166, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %155, metadata !1167, metadata !DIExpression()), !dbg !1302
  %handler_result18 = call double @fAddHandlerDouble(double %137, double -1.000000e+00), !dbg !1416
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !1169, metadata !DIExpression()), !dbg !1302
  %158 = fcmp ogt double %handler_result18, %handler_result12, !dbg !1416
  br i1 %158, label %133, label %159, !dbg !1417, !llvm.loop !1435

159:                                              ; preds = %154, %116
  %160 = phi double [ %131, %116 ], [ %155, %154 ], !dbg !1302
  %161 = phi double [ %128, %116 ], [ %156, %154 ], !dbg !1302
  %162 = phi i32 [ 0, %116 ], [ %157, %154 ], !dbg !1302
  %163 = fcmp olt double %1, 2.000000e+00, !dbg !1437
  br i1 %163, label %164, label %192, !dbg !1438

164:                                              ; preds = %159
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1175, metadata !DIExpression()), !dbg !1439
  %165 = sitofp i32 %162 to double, !dbg !1440
  %166 = fmul double %165, 0x40762E42FEFA39EF, !dbg !1441
  %handler_result19 = call double @fAddHandlerDouble(double %126, double %166), !dbg !1442
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1439
  %167 = call double @llvm.fabs.f64(double %126), !dbg !1442
  %handler_result20 = call double @fAddHandlerDouble(double %167, double %166), !dbg !1443
  %168 = fmul double %handler_result20, 0x3CC0000000000000, !dbg !1443
  tail call void @llvm.dbg.value(metadata double %168, metadata !1178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  tail call void @llvm.dbg.value(metadata double %160, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1439
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1444
  %170 = load double, ptr %169, align 8, !dbg !1444, !tbaa !188
  %171 = load double, ptr %13, align 8, !dbg !1445, !tbaa !180
  %172 = fdiv double %170, %171, !dbg !1446
  %173 = call double @llvm.fabs.f64(double %160), !dbg !1447
  %174 = fmul double %160, %172, !dbg !1448
  %175 = call double @llvm.fabs.f64(double %174), !dbg !1448
  tail call void @llvm.dbg.value(metadata double %175, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1449
  %177 = load double, ptr %176, align 8, !dbg !1449, !tbaa !188
  %178 = load double, ptr %14, align 8, !dbg !1450, !tbaa !180
  %179 = fdiv double %177, %178, !dbg !1451
  %180 = fmul double %160, %179, !dbg !1452
  %181 = call double @llvm.fabs.f64(double %180), !dbg !1452
  %handler_result21 = call double @fAddHandlerDouble(double %175, double %181), !dbg !1453
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  %handler_result22 = call double @fSubHandlerDouble(double %0, double %handler_result6), !dbg !1454
  %182 = call double @llvm.fabs.f64(double %handler_result22), !dbg !1454
  %handler_result23 = call double @fAddHandlerDouble(double %182, double 1.000000e+00), !dbg !1455
  %183 = fmul double %handler_result23, 0x3CC0000000000000, !dbg !1455
  %184 = fmul double %183, %173, !dbg !1456
  %handler_result24 = call double @fAddHandlerDouble(double %184, double %handler_result21), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  %185 = load double, ptr %11, align 8, !dbg !1457, !tbaa !553
  %handler_result25 = call double @fSubHandlerDouble(double %185, double %126), !dbg !1458
  %186 = call double @llvm.fabs.f64(double %handler_result25), !dbg !1458
  %handler_result26 = call double @fAddHandlerDouble(double %186, double 1.000000e+00), !dbg !1459
  %187 = fmul double %handler_result26, %handler_result24, !dbg !1459
  tail call void @llvm.dbg.value(metadata double %187, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  %188 = load double, ptr %12, align 8, !dbg !1460, !tbaa !553
  %handler_result27 = call double @fSubHandlerDouble(double %188, double %126), !dbg !1461
  %189 = call double @llvm.fabs.f64(double %handler_result27), !dbg !1461
  %handler_result28 = call double @fAddHandlerDouble(double %189, double 1.000000e+00), !dbg !1462
  %190 = fmul double %handler_result28, %187, !dbg !1462
  tail call void @llvm.dbg.value(metadata double %190, metadata !1179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1439
  %191 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result19, double noundef %168, double noundef %160, double noundef %190, ptr noundef %3) #7, !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !1165, metadata !DIExpression()), !dbg !1302
  br label %258, !dbg !1464

192:                                              ; preds = %159
  %handler_result29 = call double @fSubHandlerDouble(double %1, double %handler_result8), !dbg !1465
  %193 = call double @llvm.fabs.f64(double %handler_result29), !dbg !1465
  %handler_result30 = call double @fSubHandlerDouble(double %0, double %handler_result6), !dbg !1466
  %194 = call double @llvm.fabs.f64(double %handler_result30), !dbg !1466
  %handler_result31 = call double @fAddHandlerDouble(double %194, double %193), !dbg !1467
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 1.000000e+00), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !1180, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1182, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %160, metadata !1185, metadata !DIExpression()), !dbg !1469
  %handler_result33 = call double @fSubHandlerDouble(double %handler_result8, double %0), !dbg !1470
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double -1.000000e+00), !dbg !1471
  %195 = fmul double %handler_result34, %0, !dbg !1471
  %196 = fmul double %195, %161, !dbg !1472
  %handler_result35 = call double @fAddHandlerDouble(double %0, double %2), !dbg !1473
  %197 = fmul double %handler_result35, %160, !dbg !1473
  %handler_result36 = call double @fAddHandlerDouble(double %197, double %196), !dbg !1474
  %198 = fdiv double %handler_result36, %2, !dbg !1474
  tail call void @llvm.dbg.value(metadata double %198, metadata !1186, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double poison, metadata !1188, metadata !DIExpression()), !dbg !1469
  %handler_result37 = call double @fAddHandlerDouble(double %1, double -1.000000e-01), !dbg !1475
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result8, double 1.000000e+00), !dbg !1476
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %handler_result38, metadata !1188, metadata !DIExpression()), !dbg !1469
  %199 = fcmp olt double %handler_result38, %handler_result37, !dbg !1476
  br i1 %199, label %200, label %225, !dbg !1477

200:                                              ; preds = %220, %192
  %201 = phi double [ %handler_result43, %220 ], [ %handler_result38, %192 ]
  %202 = phi i32 [ %223, %220 ], [ %162, %192 ]
  %203 = phi double [ %222, %220 ], [ %160, %192 ]
  %204 = phi double [ %221, %220 ], [ %198, %192 ]
  tail call void @llvm.dbg.value(metadata i32 %202, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %203, metadata !1185, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %204, metadata !1186, metadata !DIExpression()), !dbg !1469
  %handler_result39 = call double @fSubHandlerDouble(double %handler_result3, double %201), !dbg !1478
  %205 = fmul double %handler_result39, %203, !dbg !1478
  %handler_result40 = call double @fAddHandlerDouble(double %201, double %2), !dbg !1479
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double -1.000000e+00), !dbg !1480
  %206 = fmul double %204, %handler_result41, !dbg !1480
  %handler_result42 = call double @fAddHandlerDouble(double %205, double %206), !dbg !1481
  %207 = fdiv double %handler_result42, %2, !dbg !1481
  tail call void @llvm.dbg.value(metadata double %207, metadata !1187, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %204, metadata !1185, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %207, metadata !1186, metadata !DIExpression()), !dbg !1469
  %208 = call double @llvm.fabs.f64(double %207), !dbg !1482
  tail call void @llvm.dbg.value(metadata double %208, metadata !1189, metadata !DIExpression()), !dbg !1483
  %209 = fcmp ogt double %208, 0x5FEFFFFFFFFFFFFF, !dbg !1484
  br i1 %209, label %210, label %214, !dbg !1482

210:                                              ; preds = %200
  %211 = fdiv double %207, 0x5FEFFFFFFFFFFFFF, !dbg !1486
  tail call void @llvm.dbg.value(metadata double %211, metadata !1186, metadata !DIExpression()), !dbg !1469
  %212 = fdiv double %204, 0x5FEFFFFFFFFFFFFF, !dbg !1486
  tail call void @llvm.dbg.value(metadata double %212, metadata !1185, metadata !DIExpression()), !dbg !1469
  %213 = add nsw i32 %202, 1, !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !1157, metadata !DIExpression()), !dbg !1302
  br label %220, !dbg !1486

214:                                              ; preds = %200
  %215 = fcmp olt double %208, 0x1FF0000000000001, !dbg !1488
  br i1 %215, label %216, label %220, !dbg !1484

216:                                              ; preds = %214
  %217 = fmul double %207, 0x5FEFFFFFFFFFFFFF, !dbg !1490
  tail call void @llvm.dbg.value(metadata double %217, metadata !1186, metadata !DIExpression()), !dbg !1469
  %218 = fmul double %204, 0x5FEFFFFFFFFFFFFF, !dbg !1490
  tail call void @llvm.dbg.value(metadata double %218, metadata !1185, metadata !DIExpression()), !dbg !1469
  %219 = add nsw i32 %202, -1, !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !1157, metadata !DIExpression()), !dbg !1302
  br label %220, !dbg !1490

220:                                              ; preds = %216, %214, %210
  %221 = phi double [ %211, %210 ], [ %217, %216 ], [ %207, %214 ], !dbg !1492
  %222 = phi double [ %212, %210 ], [ %218, %216 ], [ %204, %214 ], !dbg !1492
  %223 = phi i32 [ %213, %210 ], [ %219, %216 ], [ %202, %214 ], !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !1157, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata double %222, metadata !1185, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %221, metadata !1186, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata double poison, metadata !1188, metadata !DIExpression()), !dbg !1469
  %handler_result43 = call double @fAddHandlerDouble(double %201, double 1.000000e+00), !dbg !1476
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !1188, metadata !DIExpression()), !dbg !1469
  %224 = fcmp olt double %handler_result43, %handler_result37, !dbg !1476
  br i1 %224, label %200, label %225, !dbg !1477, !llvm.loop !1493

225:                                              ; preds = %220, %192
  %226 = phi double [ %198, %192 ], [ %221, %220 ], !dbg !1469
  %227 = phi i32 [ %162, %192 ], [ %223, %220 ], !dbg !1302
  %228 = sitofp i32 %227 to double, !dbg !1495
  %229 = fmul double %228, 0x40762E42FEFA39EF, !dbg !1496
  %handler_result44 = call double @fAddHandlerDouble(double %126, double %229), !dbg !1497
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !1183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1469
  %230 = call double @llvm.fabs.f64(double %126), !dbg !1497
  %231 = call double @llvm.fabs.f64(double %229), !dbg !1498
  %handler_result45 = call double @fAddHandlerDouble(double %230, double %231), !dbg !1499
  %232 = fmul double %handler_result45, 0x3CC0000000000000, !dbg !1499
  tail call void @llvm.dbg.value(metadata double %232, metadata !1183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %226, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1469
  %233 = fmul double %handler_result32, 2.000000e+00, !dbg !1500
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1501
  %235 = load double, ptr %234, align 8, !dbg !1501, !tbaa !188
  %236 = load double, ptr %13, align 8, !dbg !1502, !tbaa !180
  %237 = fdiv double %235, %236, !dbg !1503
  %238 = call double @llvm.fabs.f64(double %237), !dbg !1504
  %239 = fmul double %233, %238, !dbg !1505
  %240 = call double @llvm.fabs.f64(double %226), !dbg !1506
  %241 = fmul double %240, %239, !dbg !1507
  tail call void @llvm.dbg.value(metadata double %241, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1508
  %243 = load double, ptr %242, align 8, !dbg !1508, !tbaa !188
  %244 = load double, ptr %14, align 8, !dbg !1509, !tbaa !180
  %245 = fdiv double %243, %244, !dbg !1510
  %246 = call double @llvm.fabs.f64(double %245), !dbg !1511
  %247 = fmul double %233, %246, !dbg !1512
  %248 = fmul double %240, %247, !dbg !1513
  %handler_result46 = call double @fAddHandlerDouble(double %241, double %248), !dbg !1514
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  %249 = fmul double %handler_result32, 0x3CC0000000000000, !dbg !1514
  %250 = fmul double %249, %240, !dbg !1515
  %handler_result47 = call double @fAddHandlerDouble(double %250, double %handler_result46), !dbg !1516
  tail call void @llvm.dbg.value(metadata double %handler_result47, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  %251 = load double, ptr %11, align 8, !dbg !1516, !tbaa !553
  %handler_result48 = call double @fSubHandlerDouble(double %251, double %126), !dbg !1517
  %252 = call double @llvm.fabs.f64(double %handler_result48), !dbg !1517
  %handler_result49 = call double @fAddHandlerDouble(double %252, double 1.000000e+00), !dbg !1518
  %253 = fmul double %handler_result49, %handler_result47, !dbg !1518
  tail call void @llvm.dbg.value(metadata double %253, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  %254 = load double, ptr %12, align 8, !dbg !1519, !tbaa !553
  %handler_result50 = call double @fSubHandlerDouble(double %254, double %126), !dbg !1520
  %255 = call double @llvm.fabs.f64(double %handler_result50), !dbg !1520
  %handler_result51 = call double @fAddHandlerDouble(double %255, double 1.000000e+00), !dbg !1521
  %256 = fmul double %handler_result51, %253, !dbg !1521
  tail call void @llvm.dbg.value(metadata double %256, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1469
  %257 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result44, double noundef %232, double noundef %226, double noundef %256, ptr noundef %3) #7, !dbg !1522
  tail call void @llvm.dbg.value(metadata i32 %257, metadata !1165, metadata !DIExpression()), !dbg !1302
  br label %258

258:                                              ; preds = %225, %164
  %259 = phi i32 [ %191, %164 ], [ %257, %225 ], !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %259, metadata !1165, metadata !DIExpression()), !dbg !1302
  %260 = icmp eq i32 %259, 0, !dbg !1524
  %261 = icmp eq i32 %119, 0, !dbg !1524
  %262 = select i1 %261, i32 %120, i32 %119, !dbg !1524
  %263 = select i1 %260, i32 %262, i32 %259, !dbg !1524
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7, !dbg !1525
  br label %522

264:                                              ; preds = %115
  %265 = fmul double %0, 2.000000e+00, !dbg !1526
  %handler_result52 = call double @fAddHandlerDouble(double %265, double %2), !dbg !1527
  %266 = fcmp ugt double %handler_result52, %1, !dbg !1527
  br i1 %266, label %347, label %267, !dbg !1528

267:                                              ; preds = %264
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1307
  %268 = tail call double @llvm.floor.f64(double %0), !dbg !1529
  %handler_result53 = call double @fSubHandlerDouble(double %0, double %268), !dbg !1530
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !1197, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1198, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #7, !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #7, !dbg !1530
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !1531
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7, !dbg !1532
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double -1.000000e+00), !dbg !1533
  %269 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result54, double noundef %1, double noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %15), !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %269, metadata !1205, metadata !DIExpression()), !dbg !1307
  %270 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result53, double noundef %1, double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %16), !dbg !1534
  tail call void @llvm.dbg.value(metadata i32 %270, metadata !1206, metadata !DIExpression()), !dbg !1307
  %271 = load double, ptr %17, align 8, !dbg !1535, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %271, metadata !1210, metadata !DIExpression()), !dbg !1307
  %272 = load double, ptr %18, align 8, !dbg !1536, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %272, metadata !1211, metadata !DIExpression()), !dbg !1307
  %273 = load double, ptr %15, align 8, !dbg !1537
  %274 = load double, ptr %16, align 8, !dbg !1537
  %275 = fcmp ogt double %273, %274, !dbg !1537
  %276 = select i1 %275, double %273, double %274, !dbg !1537
  tail call void @llvm.dbg.value(metadata double %276, metadata !1202, metadata !DIExpression()), !dbg !1307
  %handler_result55 = call double @fSubHandlerDouble(double %273, double %276), !dbg !1538
  %277 = call double @exp(double noundef %handler_result55) #7, !dbg !1538
  tail call void @llvm.dbg.value(metadata double poison, metadata !1210, metadata !DIExpression()), !dbg !1307
  %278 = load double, ptr %16, align 8, !dbg !1539, !tbaa !553
  %handler_result56 = call double @fSubHandlerDouble(double %278, double %276), !dbg !1540
  %279 = call double @exp(double noundef %handler_result56) #7, !dbg !1540
  %280 = fmul double %272, %279, !dbg !1541
  tail call void @llvm.dbg.value(metadata double %280, metadata !1211, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !1213, metadata !DIExpression()), !dbg !1307
  %handler_result57 = call double @fAddHandlerDouble(double %0, double -1.000000e-01), !dbg !1542
  %281 = fcmp olt double %handler_result53, %handler_result57, !dbg !1542
  br i1 %281, label %282, label %314, !dbg !1543

282:                                              ; preds = %267
  %283 = fmul double %271, %277, !dbg !1544
  tail call void @llvm.dbg.value(metadata double %283, metadata !1210, metadata !DIExpression()), !dbg !1307
  br label %284, !dbg !1543

284:                                              ; preds = %306, %282
  %285 = phi i32 [ %309, %306 ], [ 0, %282 ]
  %286 = phi double [ %308, %306 ], [ %283, %282 ]
  %287 = phi double [ %307, %306 ], [ %280, %282 ]
  %288 = phi double [ %handler_result61, %306 ], [ %handler_result53, %282 ]
  tail call void @llvm.dbg.value(metadata i32 %285, metadata !1194, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %286, metadata !1210, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %287, metadata !1211, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %288, metadata !1213, metadata !DIExpression()), !dbg !1307
  %289 = fmul double %288, 2.000000e+00, !dbg !1545
  %handler_result58 = call double @fSubHandlerDouble(double %1, double %289), !dbg !1546
  %handler_result59 = call double @fSubHandlerDouble(double %handler_result58, double %2), !dbg !1547
  %290 = fmul double %287, %handler_result59, !dbg !1547
  %handler_result60 = call double @fAddHandlerDouble(double %286, double %290), !dbg !1548
  %291 = fneg double %handler_result60, !dbg !1548
  %handler_result61 = call double @fAddHandlerDouble(double %288, double 1.000000e+00), !dbg !1549
  %handler_result62 = call double @fSubHandlerDouble(double %handler_result61, double %1), !dbg !1550
  %292 = fmul double %288, %handler_result62, !dbg !1550
  %293 = fdiv double %291, %292, !dbg !1551
  tail call void @llvm.dbg.value(metadata double %293, metadata !1212, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %287, metadata !1210, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %293, metadata !1211, metadata !DIExpression()), !dbg !1307
  %294 = call double @llvm.fabs.f64(double %293), !dbg !1552
  tail call void @llvm.dbg.value(metadata double %294, metadata !1214, metadata !DIExpression()), !dbg !1553
  %295 = fcmp ogt double %294, 0x5FEFFFFFFFFFFFFF, !dbg !1554
  br i1 %295, label %296, label %300, !dbg !1552

296:                                              ; preds = %284
  %297 = fdiv double %293, 0x5FEFFFFFFFFFFFFF, !dbg !1556
  tail call void @llvm.dbg.value(metadata double %297, metadata !1211, metadata !DIExpression()), !dbg !1307
  %298 = fdiv double %287, 0x5FEFFFFFFFFFFFFF, !dbg !1556
  tail call void @llvm.dbg.value(metadata double %298, metadata !1210, metadata !DIExpression()), !dbg !1307
  %299 = add nsw i32 %285, 1, !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %299, metadata !1194, metadata !DIExpression()), !dbg !1307
  br label %306, !dbg !1556

300:                                              ; preds = %284
  %301 = fcmp olt double %294, 0x1FF0000000000001, !dbg !1558
  br i1 %301, label %302, label %306, !dbg !1554

302:                                              ; preds = %300
  %303 = fmul double %293, 0x5FEFFFFFFFFFFFFF, !dbg !1560
  tail call void @llvm.dbg.value(metadata double %303, metadata !1211, metadata !DIExpression()), !dbg !1307
  %304 = fmul double %287, 0x5FEFFFFFFFFFFFFF, !dbg !1560
  tail call void @llvm.dbg.value(metadata double %304, metadata !1210, metadata !DIExpression()), !dbg !1307
  %305 = add nsw i32 %285, -1, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %305, metadata !1194, metadata !DIExpression()), !dbg !1307
  br label %306, !dbg !1560

306:                                              ; preds = %302, %300, %296
  %307 = phi double [ %297, %296 ], [ %303, %302 ], [ %293, %300 ], !dbg !1562
  %308 = phi double [ %298, %296 ], [ %304, %302 ], [ %287, %300 ], !dbg !1562
  %309 = phi i32 [ %299, %296 ], [ %305, %302 ], [ %285, %300 ], !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %309, metadata !1194, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %308, metadata !1210, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %307, metadata !1211, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %handler_result61, metadata !1213, metadata !DIExpression()), !dbg !1307
  %310 = fcmp olt double %handler_result61, %handler_result57, !dbg !1542
  br i1 %310, label %284, label %311, !dbg !1543, !llvm.loop !1563

311:                                              ; preds = %306
  %312 = sitofp i32 %309 to double, !dbg !1565
  %313 = fmul double %312, 0x40762E42FEFA39EF, !dbg !1566
  br label %314, !dbg !1565

314:                                              ; preds = %311, %267
  %315 = phi double [ %280, %267 ], [ %307, %311 ], !dbg !1307
  %316 = phi double [ 0.000000e+00, %267 ], [ %313, %311 ], !dbg !1307
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1199, metadata !DIExpression()), !dbg !1307
  %handler_result63 = call double @fAddHandlerDouble(double %276, double %316), !dbg !1567
  tail call void @llvm.dbg.value(metadata double %handler_result63, metadata !1208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  %317 = call double @llvm.fabs.f64(double %276), !dbg !1567
  %318 = call double @llvm.fabs.f64(double %316), !dbg !1568
  %handler_result64 = call double @fAddHandlerDouble(double %317, double %318), !dbg !1569
  %319 = fmul double %handler_result64, 0x3CC0000000000000, !dbg !1569
  tail call void @llvm.dbg.value(metadata double %319, metadata !1208, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %315, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1570
  %321 = load double, ptr %320, align 8, !dbg !1570, !tbaa !188
  %322 = load double, ptr %17, align 8, !dbg !1571, !tbaa !180
  %323 = fdiv double %321, %322, !dbg !1572
  %324 = call double @llvm.fabs.f64(double %315), !dbg !1573
  %325 = fmul double %315, %323, !dbg !1574
  %326 = call double @llvm.fabs.f64(double %325), !dbg !1574
  tail call void @llvm.dbg.value(metadata double %326, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %327 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1575
  %328 = load double, ptr %327, align 8, !dbg !1575, !tbaa !188
  %329 = load double, ptr %18, align 8, !dbg !1576, !tbaa !180
  %330 = fdiv double %328, %329, !dbg !1577
  %331 = fmul double %315, %330, !dbg !1578
  %332 = call double @llvm.fabs.f64(double %331), !dbg !1578
  %handler_result65 = call double @fAddHandlerDouble(double %326, double %332), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %handler_result66 = call double @fSubHandlerDouble(double %0, double %handler_result53), !dbg !1580
  %333 = call double @llvm.fabs.f64(double %handler_result66), !dbg !1580
  %handler_result67 = call double @fAddHandlerDouble(double %333, double 1.000000e+00), !dbg !1581
  %334 = fmul double %handler_result67, 0x3CC0000000000000, !dbg !1581
  %335 = fmul double %334, %324, !dbg !1582
  %handler_result68 = call double @fAddHandlerDouble(double %335, double %handler_result65), !dbg !1583
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %336 = load double, ptr %15, align 8, !dbg !1583, !tbaa !553
  %handler_result69 = call double @fSubHandlerDouble(double %336, double %276), !dbg !1584
  %337 = call double @llvm.fabs.f64(double %handler_result69), !dbg !1584
  %handler_result70 = call double @fAddHandlerDouble(double %337, double 1.000000e+00), !dbg !1585
  %338 = fmul double %handler_result70, %handler_result68, !dbg !1585
  tail call void @llvm.dbg.value(metadata double %338, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %339 = load double, ptr %16, align 8, !dbg !1586, !tbaa !553
  %handler_result71 = call double @fSubHandlerDouble(double %339, double %276), !dbg !1587
  %340 = call double @llvm.fabs.f64(double %handler_result71), !dbg !1587
  %handler_result72 = call double @fAddHandlerDouble(double %340, double 1.000000e+00), !dbg !1588
  %341 = fmul double %handler_result72, %338, !dbg !1588
  tail call void @llvm.dbg.value(metadata double %341, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %342 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result63, double noundef %319, double noundef %315, double noundef %341, ptr noundef %3) #7, !dbg !1589
  tail call void @llvm.dbg.value(metadata i32 %342, metadata !1207, metadata !DIExpression()), !dbg !1307
  %343 = icmp eq i32 %342, 0, !dbg !1590
  %344 = icmp eq i32 %269, 0, !dbg !1590
  %345 = select i1 %344, i32 %270, i32 %269, !dbg !1590
  %346 = select i1 %343, i32 %345, i32 %342, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #7, !dbg !1591
  br label %522

347:                                              ; preds = %264
  %348 = fcmp ugt double %1, %2, !dbg !1592
  %349 = tail call double @llvm.floor.f64(double %0), !dbg !1593
  %handler_result73 = call double @fSubHandlerDouble(double %0, double %349), !dbg !1594
  br i1 %348, label %414, label %350, !dbg !1594

350:                                              ; preds = %347
  tail call void @llvm.dbg.value(metadata double %handler_result73, metadata !1219, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1223, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1224, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #7, !dbg !1595
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #7, !dbg !1596
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #7, !dbg !1597
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #7, !dbg !1598
  %351 = call fastcc i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %21, ptr noundef nonnull %22), !dbg !1599
  tail call void @llvm.dbg.value(metadata i32 %351, metadata !1237, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double poison, metadata !1235, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1230, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double poison, metadata !1229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %0, metadata !1233, metadata !DIExpression()), !dbg !1312
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 1.000000e-01), !dbg !1600
  %352 = fcmp olt double %handler_result74, %0, !dbg !1600
  br i1 %352, label %353, label %387, !dbg !1601

353:                                              ; preds = %350
  %354 = load double, ptr %21, align 8, !dbg !1602, !tbaa !553
  %355 = fdiv double %354, %0, !dbg !1603
  tail call void @llvm.dbg.value(metadata double %355, metadata !1235, metadata !DIExpression()), !dbg !1312
  %356 = fmul double %355, 0x2000000000000000, !dbg !1604
  tail call void @llvm.dbg.value(metadata double %356, metadata !1229, metadata !DIExpression()), !dbg !1312
  br label %357, !dbg !1601

357:                                              ; preds = %379, %353
  %358 = phi i32 [ %382, %379 ], [ 0, %353 ]
  %359 = phi double [ %381, %379 ], [ %356, %353 ]
  %360 = phi double [ %380, %379 ], [ 0x2000000000000000, %353 ]
  %361 = phi double [ %handler_result80, %379 ], [ %0, %353 ]
  tail call void @llvm.dbg.value(metadata i32 %358, metadata !1224, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %359, metadata !1229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %360, metadata !1230, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %361, metadata !1233, metadata !DIExpression()), !dbg !1312
  %362 = fmul double %361, 2.000000e+00, !dbg !1605
  %handler_result75 = call double @fSubHandlerDouble(double %1, double %362), !dbg !1606
  %handler_result76 = call double @fSubHandlerDouble(double %handler_result75, double %2), !dbg !1607
  %363 = fmul double %360, %handler_result76, !dbg !1607
  %handler_result77 = call double @fAddHandlerDouble(double %361, double 1.000000e+00), !dbg !1608
  %handler_result78 = call double @fSubHandlerDouble(double %handler_result77, double %1), !dbg !1609
  %364 = fmul double %361, %handler_result78, !dbg !1609
  %365 = fmul double %359, %364, !dbg !1610
  %handler_result79 = call double @fAddHandlerDouble(double %363, double %365), !dbg !1611
  %366 = fneg double %handler_result79, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %366, metadata !1231, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %360, metadata !1229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %366, metadata !1230, metadata !DIExpression()), !dbg !1312
  %367 = tail call double @llvm.fabs.f64(double %366), !dbg !1612
  tail call void @llvm.dbg.value(metadata double %367, metadata !1240, metadata !DIExpression()), !dbg !1613
  %368 = fcmp ogt double %367, 0x5FEFFFFFFFFFFFFF, !dbg !1614
  br i1 %368, label %369, label %373, !dbg !1612

369:                                              ; preds = %357
  %370 = fdiv double %handler_result79, 0xDFEFFFFFFFFFFFFF, !dbg !1616
  tail call void @llvm.dbg.value(metadata double %370, metadata !1230, metadata !DIExpression()), !dbg !1312
  %371 = fdiv double %360, 0x5FEFFFFFFFFFFFFF, !dbg !1616
  tail call void @llvm.dbg.value(metadata double %371, metadata !1229, metadata !DIExpression()), !dbg !1312
  %372 = add nsw i32 %358, 1, !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %372, metadata !1224, metadata !DIExpression()), !dbg !1312
  br label %379, !dbg !1616

373:                                              ; preds = %357
  %374 = fcmp olt double %367, 0x1FF0000000000001, !dbg !1618
  br i1 %374, label %375, label %379, !dbg !1614

375:                                              ; preds = %373
  %376 = fmul double %handler_result79, 0xDFEFFFFFFFFFFFFF, !dbg !1620
  tail call void @llvm.dbg.value(metadata double %376, metadata !1230, metadata !DIExpression()), !dbg !1312
  %377 = fmul double %360, 0x5FEFFFFFFFFFFFFF, !dbg !1620
  tail call void @llvm.dbg.value(metadata double %377, metadata !1229, metadata !DIExpression()), !dbg !1312
  %378 = add nsw i32 %358, -1, !dbg !1620
  tail call void @llvm.dbg.value(metadata i32 %378, metadata !1224, metadata !DIExpression()), !dbg !1312
  br label %379, !dbg !1620

379:                                              ; preds = %375, %373, %369
  %380 = phi double [ %370, %369 ], [ %376, %375 ], [ %366, %373 ], !dbg !1622
  %381 = phi double [ %371, %369 ], [ %377, %375 ], [ %360, %373 ], !dbg !1622
  %382 = phi i32 [ %372, %369 ], [ %378, %375 ], [ %358, %373 ], !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %382, metadata !1224, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %381, metadata !1229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double %380, metadata !1230, metadata !DIExpression()), !dbg !1312
  %handler_result80 = call double @fAddHandlerDouble(double %361, double -1.000000e+00), !dbg !1600
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !1233, metadata !DIExpression()), !dbg !1312
  %383 = fcmp ogt double %handler_result80, %handler_result74, !dbg !1600
  br i1 %383, label %357, label %384, !dbg !1601, !llvm.loop !1623

384:                                              ; preds = %379
  %385 = sitofp i32 %382 to double, !dbg !1625
  %386 = fmul double %385, 0x40762E42FEFA39EF, !dbg !1626
  br label %387, !dbg !1627

387:                                              ; preds = %384, %350
  %388 = phi double [ 0x2000000000000000, %350 ], [ %380, %384 ], !dbg !1312
  %389 = phi double [ 0.000000e+00, %350 ], [ %386, %384 ], !dbg !1312
  %390 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result73, double noundef %1, double noundef %2, ptr noundef nonnull %20, ptr noundef nonnull %19), !dbg !1627
  tail call void @llvm.dbg.value(metadata i32 %390, metadata !1238, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1227, metadata !DIExpression()), !dbg !1312
  %391 = load double, ptr %19, align 8, !dbg !1628, !tbaa !553
  %handler_result81 = call double @fSubHandlerDouble(double %391, double %389), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result81, metadata !1225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1312
  %392 = call double @llvm.fabs.f64(double %391), !dbg !1629
  %393 = call double @llvm.fabs.f64(double %389), !dbg !1630
  %handler_result82 = call double @fAddHandlerDouble(double %393, double %392), !dbg !1631
  %394 = fmul double %handler_result82, 0x3CC0000000000000, !dbg !1631
  tail call void @llvm.dbg.value(metadata double %394, metadata !1225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1312
  %395 = load double, ptr %20, align 8, !dbg !1632, !tbaa !180
  %396 = fdiv double %395, %388, !dbg !1633
  %397 = fmul double %396, 0x2000000000000000, !dbg !1634
  tail call void @llvm.dbg.value(metadata double %397, metadata !1226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1312
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !1635
  %399 = load double, ptr %398, align 8, !dbg !1635, !tbaa !188
  %400 = call double @llvm.fabs.f64(double %388), !dbg !1636
  %401 = fdiv double %399, %400, !dbg !1637
  %402 = fmul double %401, 0x2000000000000000, !dbg !1638
  tail call void @llvm.dbg.value(metadata double %402, metadata !1226, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1312
  %handler_result83 = call double @fSubHandlerDouble(double %handler_result73, double %0), !dbg !1639
  %403 = call double @llvm.fabs.f64(double %handler_result83), !dbg !1639
  %404 = load i32, ptr %22, align 4, !dbg !1640, !tbaa !652
  %405 = sitofp i32 %404 to double, !dbg !1640
  %handler_result84 = call double @fAddHandlerDouble(double %403, double %405), !dbg !1641
  %handler_result85 = call double @fAddHandlerDouble(double %handler_result84, double 1.000000e+00), !dbg !1642
  %406 = fmul double %handler_result85, 0x3CC0000000000000, !dbg !1642
  %407 = call double @llvm.fabs.f64(double %397), !dbg !1643
  %408 = fmul double %407, %406, !dbg !1644
  %handler_result86 = call double @fAddHandlerDouble(double %402, double %408), !dbg !1645
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !1226, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1312
  %409 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result81, double noundef %394, double noundef %397, double noundef %handler_result86, ptr noundef %3) #7, !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %409, metadata !1239, metadata !DIExpression()), !dbg !1312
  %410 = icmp eq i32 %409, 0, !dbg !1646
  %411 = icmp eq i32 %390, 0, !dbg !1646
  %412 = select i1 %411, i32 %351, i32 %390, !dbg !1646
  %413 = select i1 %410, i32 %412, i32 %409, !dbg !1646
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #7, !dbg !1647
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #7, !dbg !1647
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #7, !dbg !1647
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #7, !dbg !1647
  br label %522

414:                                              ; preds = %347
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1245, metadata !DIExpression()), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1247, metadata !DIExpression()), !dbg !1317
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1248, metadata !DIExpression()), !dbg !1317
  tail call void @llvm.dbg.value(metadata double %handler_result73, metadata !1249, metadata !DIExpression()), !dbg !1317
  %415 = fcmp oeq double %handler_result73, 0.000000e+00, !dbg !1648
  %416 = select i1 %415, double 1.000000e+00, double %handler_result73, !dbg !1649
  tail call void @llvm.dbg.value(metadata double %416, metadata !1250, metadata !DIExpression()), !dbg !1317
  %handler_result87 = call double @fSubHandlerDouble(double %1, double %2), !dbg !1650
  %417 = fmul double %handler_result87, 5.000000e-01, !dbg !1650
  %handler_result88 = call double @fSubHandlerDouble(double %417, double %416), !dbg !1651
  %418 = tail call double @llvm.ceil.f64(double %handler_result88), !dbg !1651
  %handler_result89 = call double @fAddHandlerDouble(double %416, double %418), !dbg !1652
  tail call void @llvm.dbg.value(metadata double %handler_result89, metadata !1251, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #7, !dbg !1652
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #7, !dbg !1653
  %419 = call fastcc i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %24, ptr noundef nonnull %23), !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !1269, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double poison, metadata !1268, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1264, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double poison, metadata !1262, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %0, metadata !1266, metadata !DIExpression()), !dbg !1319
  %handler_result90 = call double @fAddHandlerDouble(double %handler_result89, double 1.000000e-01), !dbg !1655
  %420 = fcmp olt double %handler_result90, %0, !dbg !1655
  br i1 %420, label %421, label %452, !dbg !1656

421:                                              ; preds = %414
  %422 = load double, ptr %24, align 8, !dbg !1657, !tbaa !553
  %423 = fdiv double %422, %0, !dbg !1658
  tail call void @llvm.dbg.value(metadata double %423, metadata !1268, metadata !DIExpression()), !dbg !1319
  %424 = fmul double %423, 0x2000000000000000, !dbg !1659
  tail call void @llvm.dbg.value(metadata double %424, metadata !1262, metadata !DIExpression()), !dbg !1319
  br label %425, !dbg !1656

425:                                              ; preds = %447, %421
  %426 = phi double [ %handler_result96, %447 ], [ %0, %421 ]
  %427 = phi double [ %450, %447 ], [ 0x2000000000000000, %421 ]
  %428 = phi double [ %449, %447 ], [ %424, %421 ]
  %429 = phi i32 [ %448, %447 ], [ 0, %421 ]
  tail call void @llvm.dbg.value(metadata double %426, metadata !1266, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %427, metadata !1264, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %428, metadata !1262, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %429, metadata !1247, metadata !DIExpression()), !dbg !1317
  %430 = fmul double %426, 2.000000e+00, !dbg !1660
  %handler_result91 = call double @fSubHandlerDouble(double %1, double %430), !dbg !1661
  %handler_result92 = call double @fSubHandlerDouble(double %handler_result91, double %2), !dbg !1662
  %431 = fmul double %427, %handler_result92, !dbg !1662
  %handler_result93 = call double @fAddHandlerDouble(double %426, double 1.000000e+00), !dbg !1663
  %handler_result94 = call double @fSubHandlerDouble(double %handler_result93, double %1), !dbg !1664
  %432 = fmul double %426, %handler_result94, !dbg !1664
  %433 = fmul double %428, %432, !dbg !1665
  %handler_result95 = call double @fAddHandlerDouble(double %431, double %433), !dbg !1666
  %434 = fneg double %handler_result95, !dbg !1666
  tail call void @llvm.dbg.value(metadata double %434, metadata !1265, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %427, metadata !1262, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %434, metadata !1264, metadata !DIExpression()), !dbg !1319
  %435 = tail call double @llvm.fabs.f64(double %434), !dbg !1667
  tail call void @llvm.dbg.value(metadata double %435, metadata !1270, metadata !DIExpression()), !dbg !1668
  %436 = fcmp ogt double %435, 0x5FEFFFFFFFFFFFFF, !dbg !1669
  br i1 %436, label %437, label %441, !dbg !1667

437:                                              ; preds = %425
  %438 = fdiv double %handler_result95, 0xDFEFFFFFFFFFFFFF, !dbg !1671
  tail call void @llvm.dbg.value(metadata double %438, metadata !1264, metadata !DIExpression()), !dbg !1319
  %439 = fdiv double %427, 0x5FEFFFFFFFFFFFFF, !dbg !1671
  tail call void @llvm.dbg.value(metadata double %439, metadata !1262, metadata !DIExpression()), !dbg !1319
  %440 = add nsw i32 %429, 1, !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %440, metadata !1247, metadata !DIExpression()), !dbg !1317
  br label %447, !dbg !1671

441:                                              ; preds = %425
  %442 = fcmp olt double %435, 0x1FF0000000000001, !dbg !1673
  br i1 %442, label %443, label %447, !dbg !1669

443:                                              ; preds = %441
  %444 = fmul double %handler_result95, 0xDFEFFFFFFFFFFFFF, !dbg !1675
  tail call void @llvm.dbg.value(metadata double %444, metadata !1264, metadata !DIExpression()), !dbg !1319
  %445 = fmul double %427, 0x5FEFFFFFFFFFFFFF, !dbg !1675
  tail call void @llvm.dbg.value(metadata double %445, metadata !1262, metadata !DIExpression()), !dbg !1319
  %446 = add nsw i32 %429, -1, !dbg !1675
  tail call void @llvm.dbg.value(metadata i32 %446, metadata !1247, metadata !DIExpression()), !dbg !1317
  br label %447, !dbg !1675

447:                                              ; preds = %443, %441, %437
  %448 = phi i32 [ %440, %437 ], [ %446, %443 ], [ %429, %441 ], !dbg !1317
  %449 = phi double [ %439, %437 ], [ %445, %443 ], [ %427, %441 ], !dbg !1677
  %450 = phi double [ %438, %437 ], [ %444, %443 ], [ %434, %441 ], !dbg !1677
  tail call void @llvm.dbg.value(metadata double %450, metadata !1264, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata double %449, metadata !1262, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %448, metadata !1247, metadata !DIExpression()), !dbg !1317
  %handler_result96 = call double @fAddHandlerDouble(double %426, double -1.000000e+00), !dbg !1655
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !1266, metadata !DIExpression()), !dbg !1319
  %451 = fcmp ogt double %handler_result96, %handler_result90, !dbg !1655
  br i1 %451, label %425, label %452, !dbg !1656, !llvm.loop !1678

452:                                              ; preds = %447, %414
  %453 = phi i32 [ 0, %414 ], [ %448, %447 ], !dbg !1317
  %454 = phi double [ 0x2000000000000000, %414 ], [ %450, %447 ], !dbg !1319
  tail call void @llvm.dbg.value(metadata double %454, metadata !1256, metadata !DIExpression()), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !1259, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #7, !dbg !1680
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #7, !dbg !1681
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #7, !dbg !1682
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #7, !dbg !1683
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #7, !dbg !1683
  %handler_result97 = call double @fAddHandlerDouble(double %416, double -1.000000e+00), !dbg !1684
  %455 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %handler_result97, double noundef %1, double noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %27), !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %455, metadata !1280, metadata !DIExpression()), !dbg !1321
  %456 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %416, double noundef %1, double noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %28), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %456, metadata !1281, metadata !DIExpression()), !dbg !1321
  %457 = load double, ptr %25, align 8, !dbg !1686, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %457, metadata !1282, metadata !DIExpression()), !dbg !1321
  %458 = load double, ptr %26, align 8, !dbg !1687, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %458, metadata !1283, metadata !DIExpression()), !dbg !1321
  %459 = load double, ptr %27, align 8, !dbg !1688
  %460 = load double, ptr %28, align 8, !dbg !1688
  %461 = fcmp ogt double %459, %460, !dbg !1688
  %462 = select i1 %461, double %459, double %460, !dbg !1688
  tail call void @llvm.dbg.value(metadata double %462, metadata !1254, metadata !DIExpression()), !dbg !1317
  %handler_result98 = call double @fSubHandlerDouble(double %459, double %462), !dbg !1689
  %463 = call double @exp(double noundef %handler_result98) #7, !dbg !1689
  tail call void @llvm.dbg.value(metadata double poison, metadata !1282, metadata !DIExpression()), !dbg !1321
  %464 = load double, ptr %28, align 8, !dbg !1690, !tbaa !553
  %handler_result99 = call double @fSubHandlerDouble(double %464, double %462), !dbg !1691
  %465 = call double @exp(double noundef %handler_result99) #7, !dbg !1691
  %466 = fmul double %458, %465, !dbg !1692
  tail call void @llvm.dbg.value(metadata double %466, metadata !1283, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %416, metadata !1285, metadata !DIExpression()), !dbg !1321
  %handler_result100 = call double @fAddHandlerDouble(double %handler_result89, double -1.000000e-01), !dbg !1693
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1245, metadata !DIExpression()), !dbg !1317
  %467 = fcmp olt double %416, %handler_result100, !dbg !1693
  br i1 %467, label %468, label %497, !dbg !1694

468:                                              ; preds = %452
  %469 = fmul double %457, %463, !dbg !1695
  tail call void @llvm.dbg.value(metadata double %469, metadata !1282, metadata !DIExpression()), !dbg !1321
  br label %470, !dbg !1694

470:                                              ; preds = %492, %468
  %471 = phi double [ %handler_result104, %492 ], [ %416, %468 ]
  %472 = phi double [ %495, %492 ], [ %466, %468 ]
  %473 = phi double [ %494, %492 ], [ %469, %468 ]
  %474 = phi i32 [ %493, %492 ], [ 0, %468 ]
  tail call void @llvm.dbg.value(metadata double %471, metadata !1285, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %472, metadata !1283, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %473, metadata !1282, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %474, metadata !1245, metadata !DIExpression()), !dbg !1317
  %475 = fmul double %471, 2.000000e+00, !dbg !1696
  %handler_result101 = call double @fSubHandlerDouble(double %1, double %475), !dbg !1697
  %handler_result102 = call double @fSubHandlerDouble(double %handler_result101, double %2), !dbg !1698
  %476 = fmul double %472, %handler_result102, !dbg !1698
  %handler_result103 = call double @fAddHandlerDouble(double %473, double %476), !dbg !1699
  %477 = fneg double %handler_result103, !dbg !1699
  %handler_result104 = call double @fAddHandlerDouble(double %471, double 1.000000e+00), !dbg !1700
  %handler_result105 = call double @fSubHandlerDouble(double %handler_result104, double %1), !dbg !1701
  %478 = fmul double %471, %handler_result105, !dbg !1701
  %479 = fdiv double %477, %478, !dbg !1702
  tail call void @llvm.dbg.value(metadata double %479, metadata !1284, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %472, metadata !1282, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %479, metadata !1283, metadata !DIExpression()), !dbg !1321
  %480 = call double @llvm.fabs.f64(double %479), !dbg !1703
  tail call void @llvm.dbg.value(metadata double %480, metadata !1286, metadata !DIExpression()), !dbg !1704
  %481 = fcmp ogt double %480, 0x5FEFFFFFFFFFFFFF, !dbg !1705
  br i1 %481, label %482, label %486, !dbg !1703

482:                                              ; preds = %470
  %483 = fdiv double %479, 0x5FEFFFFFFFFFFFFF, !dbg !1707
  tail call void @llvm.dbg.value(metadata double %483, metadata !1283, metadata !DIExpression()), !dbg !1321
  %484 = fdiv double %472, 0x5FEFFFFFFFFFFFFF, !dbg !1707
  tail call void @llvm.dbg.value(metadata double %484, metadata !1282, metadata !DIExpression()), !dbg !1321
  %485 = add nsw i32 %474, 1, !dbg !1707
  tail call void @llvm.dbg.value(metadata i32 %485, metadata !1245, metadata !DIExpression()), !dbg !1317
  br label %492, !dbg !1707

486:                                              ; preds = %470
  %487 = fcmp olt double %480, 0x1FF0000000000001, !dbg !1709
  br i1 %487, label %488, label %492, !dbg !1705

488:                                              ; preds = %486
  %489 = fmul double %479, 0x5FEFFFFFFFFFFFFF, !dbg !1711
  tail call void @llvm.dbg.value(metadata double %489, metadata !1283, metadata !DIExpression()), !dbg !1321
  %490 = fmul double %472, 0x5FEFFFFFFFFFFFFF, !dbg !1711
  tail call void @llvm.dbg.value(metadata double %490, metadata !1282, metadata !DIExpression()), !dbg !1321
  %491 = add nsw i32 %474, -1, !dbg !1711
  tail call void @llvm.dbg.value(metadata i32 %491, metadata !1245, metadata !DIExpression()), !dbg !1317
  br label %492, !dbg !1711

492:                                              ; preds = %488, %486, %482
  %493 = phi i32 [ %485, %482 ], [ %491, %488 ], [ %474, %486 ], !dbg !1317
  %494 = phi double [ %484, %482 ], [ %490, %488 ], [ %472, %486 ], !dbg !1713
  %495 = phi double [ %483, %482 ], [ %489, %488 ], [ %479, %486 ], !dbg !1713
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !1285, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %495, metadata !1283, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %494, metadata !1282, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %493, metadata !1245, metadata !DIExpression()), !dbg !1317
  %496 = fcmp olt double %handler_result104, %handler_result100, !dbg !1693
  br i1 %496, label %470, label %497, !dbg !1694, !llvm.loop !1714

497:                                              ; preds = %492, %452
  %498 = phi i32 [ 0, %452 ], [ %493, %492 ], !dbg !1317
  %499 = phi double [ %466, %452 ], [ %495, %492 ], !dbg !1321
  tail call void @llvm.dbg.value(metadata double %499, metadata !1257, metadata !DIExpression()), !dbg !1317
  %500 = icmp eq i32 %455, 0, !dbg !1716
  %501 = select i1 %500, i32 %456, i32 %455, !dbg !1716
  tail call void @llvm.dbg.value(metadata i32 %501, metadata !1258, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #7, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #7, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #7, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #7, !dbg !1717
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1255, metadata !DIExpression()), !dbg !1317
  %502 = sub nsw i32 %498, %453, !dbg !1718
  %503 = sitofp i32 %502 to double, !dbg !1719
  %504 = fmul double %503, 0x40762E42FEFA39EF, !dbg !1720
  %handler_result106 = call double @fAddHandlerDouble(double %462, double %504), !dbg !1721
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  %505 = call double @llvm.fabs.f64(double %462), !dbg !1721
  %506 = call double @llvm.fabs.f64(double %503), !dbg !1722
  %507 = fmul double %506, 0x40762E42FEFA39EF, !dbg !1723
  %handler_result107 = call double @fAddHandlerDouble(double %505, double %507), !dbg !1724
  %508 = fmul double %handler_result107, 0x3CC0000000000000, !dbg !1724
  tail call void @llvm.dbg.value(metadata double %508, metadata !1252, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %509 = fmul double %499, 0x2000000000000000, !dbg !1725
  %510 = fdiv double %509, %454, !dbg !1726
  tail call void @llvm.dbg.value(metadata double %510, metadata !1253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  %handler_result108 = call double @fSubHandlerDouble(double %0, double %416), !dbg !1727
  %511 = call double @llvm.fabs.f64(double %handler_result108), !dbg !1727
  %512 = load i32, ptr %23, align 4, !dbg !1728, !tbaa !652
  %513 = sitofp i32 %512 to double, !dbg !1728
  %handler_result109 = call double @fAddHandlerDouble(double %511, double %513), !dbg !1729
  %handler_result110 = call double @fAddHandlerDouble(double %handler_result109, double 1.000000e+00), !dbg !1730
  %514 = fmul double %handler_result110, 0x3CC0000000000000, !dbg !1730
  %515 = call double @llvm.fabs.f64(double %510), !dbg !1731
  %516 = fmul double %515, %514, !dbg !1732
  tail call void @llvm.dbg.value(metadata double %516, metadata !1253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %517 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result106, double noundef %508, double noundef %510, double noundef %516, ptr noundef %3) #7, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %517, metadata !1260, metadata !DIExpression()), !dbg !1317
  %518 = icmp eq i32 %517, 0, !dbg !1734
  %519 = icmp eq i32 %419, 0, !dbg !1734
  %520 = select i1 %519, i32 %501, i32 %419, !dbg !1734
  %521 = select i1 %518, i32 %520, i32 %517, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #7, !dbg !1735
  br label %522

522:                                              ; preds = %497, %387, %314, %258, %108, %85, %71, %42, %32
  %523 = phi i32 [ 0, %32 ], [ %59, %42 ], [ %82, %71 ], [ %95, %85 ], [ %109, %108 ], [ %263, %258 ], [ %346, %314 ], [ %413, %387 ], [ %521, %497 ], !dbg !1736
  ret i32 %523, !dbg !1737
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_int_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1738 {
  %5 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1746, metadata !DIExpression(), metadata !1749, metadata ptr %5, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1743, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %2, metadata !1744, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7, !dbg !1751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !dbg !1752, !DIAssignID !1753
  call void @llvm.dbg.assign(metadata i8 0, metadata !1746, metadata !DIExpression(), metadata !1753, metadata ptr %5, metadata !DIExpression()), !dbg !1750
  %6 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1747, metadata !DIExpression()), !dbg !1750
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %5, ptr noundef %3) #7, !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1748, metadata !DIExpression()), !dbg !1750
  %8 = icmp eq i32 %7, 0, !dbg !1756
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1756
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7, !dbg !1757
  ret i32 %9, !dbg !1758
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !1759 i32 @gsl_sf_result_smash_e(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1764 {
  %5 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1772, metadata !DIExpression(), metadata !1775, metadata ptr %5, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata double %0, metadata !1768, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata double %1, metadata !1769, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata double %2, metadata !1770, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1771, metadata !DIExpression()), !dbg !1776
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7, !dbg !1777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !dbg !1778, !DIAssignID !1779
  call void @llvm.dbg.assign(metadata i8 0, metadata !1772, metadata !DIExpression(), metadata !1779, metadata ptr %5, metadata !DIExpression()), !dbg !1776
  %6 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1773, metadata !DIExpression()), !dbg !1776
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %5, ptr noundef %3) #7, !dbg !1781
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1774, metadata !DIExpression()), !dbg !1776
  %8 = icmp eq i32 %7, 0, !dbg !1782
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1782
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7, !dbg !1783
  ret i32 %9, !dbg !1784
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_U_int(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !1785 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1794
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1792, metadata !DIExpression(), metadata !1795, metadata ptr %5, metadata !DIExpression()), !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1789, metadata !DIExpression()), !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1796
  tail call void @llvm.dbg.value(metadata double %2, metadata !1791, metadata !DIExpression()), !dbg !1796
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1746, metadata !DIExpression(), metadata !1794, metadata ptr %4, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %1, metadata !1743, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata double %2, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7, !dbg !1800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !dbg !1801, !DIAssignID !1802
  call void @llvm.dbg.assign(metadata i8 0, metadata !1746, metadata !DIExpression(), metadata !1802, metadata ptr %4, metadata !DIExpression()), !dbg !1798
  %6 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %6, metadata !1747, metadata !DIExpression()), !dbg !1798
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #7, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %7, metadata !1748, metadata !DIExpression()), !dbg !1798
  %8 = icmp eq i32 %7, 0, !dbg !1805
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7, !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1793, metadata !DIExpression()), !dbg !1796
  %10 = icmp eq i32 %9, 0, !dbg !1807
  br i1 %10, label %12, label %11, !dbg !1797

11:                                               ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1781, i32 noundef %9) #7, !dbg !1809
  br label %12, !dbg !1809

12:                                               ; preds = %11, %3
  %13 = load double, ptr %5, align 8, !dbg !1797, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1812
  ret double %13, !dbg !1812
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_U(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !1813 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1822
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1820, metadata !DIExpression(), metadata !1823, metadata ptr %5, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata double %0, metadata !1817, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata double %1, metadata !1818, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata double %2, metadata !1819, metadata !DIExpression()), !dbg !1824
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1825
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1772, metadata !DIExpression(), metadata !1822, metadata ptr %4, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata double %0, metadata !1768, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata double %1, metadata !1769, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata double %2, metadata !1770, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %5, metadata !1771, metadata !DIExpression()), !dbg !1826
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7, !dbg !1828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !dbg !1829, !DIAssignID !1830
  call void @llvm.dbg.assign(metadata i8 0, metadata !1772, metadata !DIExpression(), metadata !1830, metadata ptr %4, metadata !DIExpression()), !dbg !1826
  %6 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1831
  call void @llvm.dbg.value(metadata i32 %6, metadata !1773, metadata !DIExpression()), !dbg !1826
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #7, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %7, metadata !1774, metadata !DIExpression()), !dbg !1826
  %8 = icmp eq i32 %7, 0, !dbg !1833
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1833
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1821, metadata !DIExpression()), !dbg !1824
  %10 = icmp eq i32 %9, 0, !dbg !1835
  br i1 %10, label %12, label %11, !dbg !1825

11:                                               ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1786, i32 noundef %9) #7, !dbg !1837
  br label %12, !dbg !1837

12:                                               ; preds = %11, %3
  %13 = load double, ptr %5, align 8, !dbg !1825, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1840
  ret double %13, !dbg !1840
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1841 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !1842 i32 @gsl_sf_exp_e10_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !1845 {
  %5 = alloca [4 x double], align 16, !DIAssignID !1868
  %6 = alloca [4 x double], align 16, !DIAssignID !1869
  tail call void @llvm.dbg.value(metadata double %0, metadata !1847, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata double %1, metadata !1848, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata double %2, metadata !1849, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1850, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata double %0, metadata !1851, metadata !DIExpression()), !dbg !1870
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1871
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !1872
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1852, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata double poison, metadata !1853, metadata !DIExpression()), !dbg !1870
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 5.000000e-01), !dbg !1873
  %7 = tail call double @llvm.floor.f64(double %handler_result2), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %7, metadata !1854, metadata !DIExpression()), !dbg !1870
  %8 = fcmp olt double %0, 0.000000e+00, !dbg !1874
  br i1 %8, label %9, label %13, !dbg !1875

9:                                                ; preds = %4
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1876
  %10 = tail call double @llvm.floor.f64(double %handler_result3), !dbg !1876
  tail call void @llvm.dbg.value(metadata double %10, metadata !1853, metadata !DIExpression()), !dbg !1870
  %handler_result4 = call double @fSubHandlerDouble(double %0, double %10), !dbg !1877
  %11 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !1877
  %12 = fcmp olt double %11, 0x3D4F400000000000, !dbg !1878
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i1 [ false, %4 ], [ %12, %9 ], !dbg !1870
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !1855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1870
  %15 = fcmp olt double %handler_result1, 0.000000e+00, !dbg !1879
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result1, double %7), !dbg !1880
  %16 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !1880
  %17 = fcmp olt double %16, 0x3D4F400000000000, !dbg !1880
  %18 = and i1 %15, %17, !dbg !1880
  tail call void @llvm.dbg.value(metadata i1 %18, metadata !1856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1870
  %19 = select i1 %14, i1 true, i1 %18, !dbg !1881
  br i1 %19, label %20, label %48, !dbg !1881

20:                                               ; preds = %13
  %21 = fdiv double -1.000000e+00, %2, !dbg !1882
  tail call void @llvm.dbg.value(metadata double %21, metadata !1857, metadata !DIExpression()), !dbg !1883
  %22 = fcmp ogt double %handler_result1, %0, !dbg !1884
  %23 = select i1 %22, double %0, double %handler_result1, !dbg !1884
  %handler_result6 = call double @fAddHandlerDouble(double %23, double -1.000000e-01), !dbg !1885
  %24 = fptosi double %handler_result6 to i32, !dbg !1885
  %25 = sub nsw i32 0, %24, !dbg !1886
  %26 = sitofp i32 %25 to double, !dbg !1886
  tail call void @llvm.dbg.value(metadata double %26, metadata !1860, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1861, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1862, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1863, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1864, metadata !DIExpression()), !dbg !1883
  %27 = icmp sgt i32 %24, -1, !dbg !1887
  br i1 %27, label %40, label %28, !dbg !1888

28:                                               ; preds = %28, %20
  %29 = phi double [ %36, %28 ], [ 1.000000e+00, %20 ]
  %30 = phi double [ %handler_result12, %28 ], [ 0.000000e+00, %20 ]
  %31 = phi double [ %handler_result13, %28 ], [ 1.000000e+00, %20 ]
  %32 = phi double [ %handler_result11, %28 ], [ 1.000000e+00, %20 ]
  tail call void @llvm.dbg.value(metadata double %29, metadata !1861, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double %30, metadata !1864, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double %31, metadata !1863, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double %32, metadata !1862, metadata !DIExpression()), !dbg !1883
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %0), !dbg !1889
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double -1.000000e+00), !dbg !1890
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1865, metadata !DIExpression()), !dbg !1891
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result1, double %31), !dbg !1892
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double -1.000000e+00), !dbg !1893
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1867, metadata !DIExpression()), !dbg !1891
  %33 = fdiv double %handler_result8, %31, !dbg !1893
  %34 = fmul double %21, %33, !dbg !1894
  %35 = fmul double %handler_result10, %34, !dbg !1895
  %36 = fmul double %29, %35, !dbg !1896
  tail call void @llvm.dbg.value(metadata double %36, metadata !1861, metadata !DIExpression()), !dbg !1883
  %handler_result11 = call double @fAddHandlerDouble(double %32, double %36), !dbg !1897
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1862, metadata !DIExpression()), !dbg !1883
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !1897
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !1898
  %handler_result12 = call double @fAddHandlerDouble(double %30, double %38), !dbg !1899
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1864, metadata !DIExpression()), !dbg !1883
  %handler_result13 = call double @fAddHandlerDouble(double %31, double 1.000000e+00), !dbg !1887
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1863, metadata !DIExpression()), !dbg !1883
  %39 = fcmp ugt double %handler_result13, %26, !dbg !1887
  br i1 %39, label %40, label %28, !dbg !1888, !llvm.loop !1900

40:                                               ; preds = %28, %20
  %41 = phi double [ 1.000000e+00, %20 ], [ %handler_result11, %28 ], !dbg !1883
  %42 = phi double [ 0.000000e+00, %20 ], [ %handler_result12, %28 ], !dbg !1883
  store double %41, ptr %3, align 8, !dbg !1902, !tbaa !180
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1903
  %44 = tail call double @llvm.fabs.f64(double %26), !dbg !1904
  %handler_result14 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !1905
  %45 = fmul double %handler_result14, 0x3CC0000000000000, !dbg !1905
  %46 = tail call double @llvm.fabs.f64(double %41), !dbg !1906
  %47 = fmul double %45, %46, !dbg !1907
  %handler_result15 = call double @fAddHandlerDouble(double %42, double %47), !dbg !1908
  store double %handler_result15, ptr %43, align 8, !dbg !1908, !tbaa !188
  br label %123

48:                                               ; preds = %13
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1909, metadata !DIExpression(), metadata !1868, metadata ptr %5, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1918, metadata !DIExpression(), metadata !1869, metadata ptr %6, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double %0, metadata !1912, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double %1, metadata !1913, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double %2, metadata !1914, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata ptr %3, metadata !1915, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double 0x3CE0000000000000, metadata !1916, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 500, metadata !1917, metadata !DIExpression()), !dbg !1940
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6), !dbg !1943
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !1923, metadata !DIExpression()), !dbg !1940
  %49 = fmul double %handler_result1, %0, !dbg !1944
  call void @llvm.dbg.value(metadata double %49, metadata !1924, metadata !DIExpression()), !dbg !1940
  %handler_result16 = call double @fSubHandlerDouble(double %2, double %49), !dbg !1945
  %50 = fmul double %handler_result16, 2.000000e+00, !dbg !1945
  call void @llvm.dbg.value(metadata double %50, metadata !1925, metadata !DIExpression()), !dbg !1940
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result1, double %0), !dbg !1946
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !1926, metadata !DIExpression()), !dbg !1940
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 1.000000e+00), !dbg !1947
  %handler_result19 = call double @fAddHandlerDouble(double %49, double %handler_result18), !dbg !1948
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !1927, metadata !DIExpression()), !dbg !1940
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result19), !dbg !1949
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 3.000000e+00), !dbg !1950
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !1928, metadata !DIExpression()), !dbg !1940
  %51 = fmul double %2, 2.000000e+00, !dbg !1950
  %52 = fdiv double %51, %handler_result21, !dbg !1951
  %handler_result22 = call double @fAddHandlerDouble(double %52, double 1.000000e+00), !dbg !1952
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !1929, metadata !DIExpression()), !dbg !1940
  store double 1.000000e+00, ptr %6, align 16, !dbg !1952, !tbaa !553, !DIAssignID !1953
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !1918, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1953, metadata ptr %6, metadata !DIExpression()), !dbg !1940
  store double 1.000000e+00, ptr %5, align 16, !dbg !1954, !tbaa !553, !DIAssignID !1955
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !1909, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1955, metadata ptr %5, metadata !DIExpression()), !dbg !1940
  %53 = fdiv double %51, %handler_result19, !dbg !1956
  %handler_result23 = call double @fAddHandlerDouble(double %53, double 1.000000e+00), !dbg !1957
  %54 = getelementptr inbounds i8, ptr %6, i64 8, !dbg !1957
  store double %handler_result23, ptr %54, align 8, !dbg !1957, !tbaa !553, !DIAssignID !1958
  call void @llvm.dbg.assign(metadata double %handler_result23, metadata !1918, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1958, metadata ptr %54, metadata !DIExpression()), !dbg !1940
  %55 = fdiv double %50, %handler_result19, !dbg !1959
  %handler_result24 = call double @fAddHandlerDouble(double %55, double 1.000000e+00), !dbg !1960
  %56 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !1960
  store double %handler_result24, ptr %56, align 8, !dbg !1960, !tbaa !553, !DIAssignID !1961
  call void @llvm.dbg.assign(metadata double %handler_result24, metadata !1909, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1961, metadata ptr %56, metadata !DIExpression()), !dbg !1940
  %57 = fmul double %handler_result22, 6.000000e+00, !dbg !1962
  %58 = fmul double %57, %2, !dbg !1963
  %59 = fdiv double %58, %handler_result19, !dbg !1964
  %handler_result25 = call double @fAddHandlerDouble(double %59, double 1.000000e+00), !dbg !1965
  %60 = getelementptr inbounds i8, ptr %6, i64 16, !dbg !1965
  store double %handler_result25, ptr %60, align 16, !dbg !1965, !tbaa !553, !DIAssignID !1966
  call void @llvm.dbg.assign(metadata double %handler_result25, metadata !1918, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !1966, metadata ptr %60, metadata !DIExpression()), !dbg !1940
  %61 = fmul double %49, 6.000000e+00, !dbg !1967
  %62 = fdiv double %61, %handler_result21, !dbg !1968
  %handler_result26 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !1969
  %63 = fmul double %handler_result22, 3.000000e+00, !dbg !1969
  %64 = fmul double %50, %63, !dbg !1970
  %65 = fdiv double %64, %handler_result19, !dbg !1971
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %65), !dbg !1972
  %66 = getelementptr inbounds i8, ptr %5, i64 16, !dbg !1972
  store double %handler_result27, ptr %66, align 16, !dbg !1972, !tbaa !553, !DIAssignID !1973
  call void @llvm.dbg.assign(metadata double %handler_result27, metadata !1909, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !1973, metadata ptr %66, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 4, metadata !1922, metadata !DIExpression()), !dbg !1940
  %67 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !1974
  %68 = getelementptr inbounds i8, ptr %6, i64 16
  %69 = getelementptr inbounds i8, ptr %6, i64 8
  %70 = getelementptr inbounds i8, ptr %6, i64 24
  %71 = getelementptr inbounds i8, ptr %5, i64 16
  %72 = getelementptr inbounds i8, ptr %5, i64 8
  %73 = getelementptr inbounds i8, ptr %5, i64 24
  %74 = getelementptr inbounds i8, ptr %6, i64 8
  br label %75, !dbg !1978

75:                                               ; preds = %110, %48
  %76 = phi i32 [ 4, %48 ], [ %111, %110 ]
  %77 = phi double [ %handler_result21, %48 ], [ %handler_result30, %110 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !1922, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double %77, metadata !1928, metadata !DIExpression()), !dbg !1940
  %78 = shl nuw nsw i32 %76, 1, !dbg !1979
  %79 = add nsw i32 %78, -3, !dbg !1980
  %80 = sitofp i32 %79 to double, !dbg !1981
  call void @llvm.dbg.value(metadata double %80, metadata !1939, metadata !DIExpression()), !dbg !1982
  %handler_result28 = call double @fAddHandlerDouble(double %80, double -2.000000e+00), !dbg !1983
  %81 = fdiv double %80, %handler_result28, !dbg !1983
  call void @llvm.dbg.value(metadata double %81, metadata !1929, metadata !DIExpression()), !dbg !1940
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result17, double %80), !dbg !1984
  %handler_result30 = call double @fAddHandlerDouble(double %77, double %handler_result29), !dbg !1985
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !1928, metadata !DIExpression()), !dbg !1940
  %handler_result31 = call double @fAddHandlerDouble(double %80, double -1.000000e+00), !dbg !1986
  %82 = fdiv double %handler_result31, %handler_result30, !dbg !1986
  call void @llvm.dbg.value(metadata double %82, metadata !1925, metadata !DIExpression()), !dbg !1940
  %83 = fmul double %82, %80, !dbg !1987
  %handler_result32 = call double @fAddHandlerDouble(double %83, double -1.000000e+00), !dbg !1988
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !1934, metadata !DIExpression()), !dbg !1982
  %84 = fmul double %80, 2.000000e+00, !dbg !1988
  %85 = fmul double %84, %2, !dbg !1989
  %86 = fdiv double %85, %handler_result30, !dbg !1990
  call void @llvm.dbg.value(metadata double %86, metadata !1935, metadata !DIExpression()), !dbg !1982
  %87 = fmul double %handler_result17, %82, !dbg !1991
  call void @llvm.dbg.value(metadata double %87, metadata !1927, metadata !DIExpression()), !dbg !1940
  %handler_result33 = call double @fAddHandlerDouble(double %87, double %handler_result32), !dbg !1992
  %88 = fmul double %81, %handler_result33, !dbg !1992
  %handler_result34 = call double @fAddHandlerDouble(double %86, double %88), !dbg !1993
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !1936, metadata !DIExpression()), !dbg !1982
  %handler_result35 = call double @fSubHandlerDouble(double %86, double %handler_result32), !dbg !1994
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !1937, metadata !DIExpression()), !dbg !1982
  %handler_result36 = call double @fSubHandlerDouble(double 1.000000e+00, double %87), !dbg !1995
  %89 = fmul double %82, 2.000000e+00, !dbg !1995
  %handler_result37 = call double @fSubHandlerDouble(double %handler_result36, double %89), !dbg !1996
  %90 = fmul double %81, %handler_result37, !dbg !1996
  call void @llvm.dbg.value(metadata double %90, metadata !1938, metadata !DIExpression()), !dbg !1982
  %91 = load double, ptr %68, align 16, !dbg !1997, !tbaa !553
  %92 = fmul double %91, %handler_result34, !dbg !1998
  %93 = load double, ptr %69, align 8, !dbg !1999, !tbaa !553
  %94 = fmul double %93, %handler_result35, !dbg !2000
  %handler_result38 = call double @fAddHandlerDouble(double %94, double %92), !dbg !2001
  %95 = load double, ptr %6, align 16, !dbg !2001, !tbaa !553
  %96 = fmul double %95, %90, !dbg !2002
  %handler_result39 = call double @fAddHandlerDouble(double %96, double %handler_result38), !dbg !2003
  store double %handler_result39, ptr %70, align 8, !dbg !2003, !tbaa !553, !DIAssignID !2004
  call void @llvm.dbg.assign(metadata double %handler_result39, metadata !1918, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !2004, metadata ptr %70, metadata !DIExpression()), !dbg !1940
  %97 = load double, ptr %71, align 16, !dbg !2005, !tbaa !553
  %98 = fmul double %97, %handler_result34, !dbg !2006
  %99 = load double, ptr %72, align 8, !dbg !2007, !tbaa !553
  %100 = fmul double %99, %handler_result35, !dbg !2008
  %handler_result40 = call double @fAddHandlerDouble(double %100, double %98), !dbg !2009
  %101 = load double, ptr %5, align 16, !dbg !2009, !tbaa !553
  %102 = fmul double %101, %90, !dbg !2010
  %handler_result41 = call double @fAddHandlerDouble(double %102, double %handler_result40), !dbg !2011
  store double %handler_result41, ptr %73, align 8, !dbg !2011, !tbaa !553, !DIAssignID !2012
  call void @llvm.dbg.assign(metadata double %handler_result41, metadata !1909, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !2012, metadata ptr %73, metadata !DIExpression()), !dbg !1940
  %103 = fmul double %95, %handler_result41, !dbg !2013
  %104 = fmul double %101, %handler_result39, !dbg !2015
  %handler_result42 = call double @fSubHandlerDouble(double %103, double %104), !dbg !2016
  %105 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !2016
  %106 = fmul double %95, %handler_result39, !dbg !2017
  %107 = tail call double @llvm.fabs.f64(double %106), !dbg !2018
  %108 = fmul double %107, 0x3CE0000000000000, !dbg !2019
  %109 = fcmp olt double %105, %108, !dbg !2020
  br i1 %109, label %113, label %110, !dbg !2021

110:                                              ; preds = %75
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %67, i64 24, i1 false), !dbg !1974, !tbaa !553
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %74, i64 24, i1 false), !dbg !2022, !tbaa !553
  call void @llvm.dbg.value(metadata i64 poison, metadata !1930, metadata !DIExpression()), !dbg !1982
  %111 = add nuw nsw i32 %76, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %111, metadata !1922, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !1928, metadata !DIExpression()), !dbg !1940
  %112 = icmp eq i32 %111, 500, !dbg !2024
  br i1 %112, label %113, label %75, !dbg !1978, !llvm.loop !2025

113:                                              ; preds = %110, %75
  %114 = phi i32 [ %76, %75 ], [ 500, %110 ], !dbg !2027
  %115 = fdiv double %handler_result41, %handler_result39, !dbg !2028
  store double %115, ptr %3, align 8, !dbg !2029, !tbaa !180
  %116 = tail call double @llvm.fabs.f64(double %115), !dbg !2030
  %117 = fmul double %116, 0x3CE0000000000000, !dbg !2031
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2032
  store double %117, ptr %118, align 8, !dbg !2033, !tbaa !188
  %119 = icmp eq i32 %114, 500, !dbg !2034
  br i1 %119, label %120, label %121, !dbg !2036

120:                                              ; preds = %113
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef 11) #7, !dbg !2037
  br label %121, !dbg !2037

121:                                              ; preds = %120, %113
  %122 = phi i32 [ 11, %120 ], [ 0, %113 ], !dbg !2040
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6), !dbg !2041
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5), !dbg !2041
  br label %123, !dbg !2042

123:                                              ; preds = %121, %40
  %124 = phi i32 [ 0, %40 ], [ %122, %121 ], !dbg !2043
  ret i32 %124, !dbg !2044
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2045 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2068
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2069
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2070
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2071
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2072
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2073
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2074
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2075
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2076
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2077
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2078
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2079
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2080
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2081
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2082
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2083
  %21 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2084
  %22 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2085
  %23 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2086
  %24 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2087
  %25 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2088
  %26 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2089
  %27 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2090
  %28 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2091
  %29 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2092
  %30 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2093
  %31 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2094
  %32 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2095
  %33 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2096
  %34 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2097
  %35 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2098
  tail call void @llvm.dbg.value(metadata double %0, metadata !2047, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double %1, metadata !2048, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double %2, metadata !2049, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2050, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double 0x3E56A09E667F3BCD, metadata !2051, metadata !DIExpression()), !dbg !2099
  %36 = fcmp olt double %1, 0.000000e+00, !dbg !2100
  br i1 %36, label %37, label %39, !dbg !2101

37:                                               ; preds = %4
  %handler_result = call double @fAddHandlerDouble(double %1, double -5.000000e-01), !dbg !2102
  %38 = tail call double @llvm.ceil.f64(double %handler_result), !dbg !2102
  br label %41, !dbg !2101

39:                                               ; preds = %4
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 5.000000e-01), !dbg !2103
  %40 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !2103
  br label %41, !dbg !2101

41:                                               ; preds = %39, %37
  %42 = phi double [ %38, %37 ], [ %40, %39 ], !dbg !2101
  tail call void @llvm.dbg.value(metadata double %42, metadata !2052, metadata !DIExpression()), !dbg !2099
  %handler_result2 = call double @fSubHandlerDouble(double %1, double %42), !dbg !2104
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !2053, metadata !DIExpression()), !dbg !2099
  %handler_result3 = call double @fSubHandlerDouble(double %0, double %handler_result2), !dbg !2105
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !2054, metadata !DIExpression()), !dbg !2099
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 5.000000e-01), !dbg !2106
  %43 = tail call double @llvm.floor.f64(double %handler_result4), !dbg !2106
  tail call void @llvm.dbg.value(metadata double %43, metadata !2055, metadata !DIExpression()), !dbg !2099
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result3, double %43), !dbg !2107
  %44 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !2107
  %45 = fcmp olt double %44, 0x3D4F400000000000, !dbg !2108
  tail call void @llvm.dbg.value(metadata double poison, metadata !2056, metadata !DIExpression()), !dbg !2099
  %46 = fcmp ole double %handler_result3, 0.000000e+00
  %47 = and i1 %46, %45, !dbg !2109
  br i1 %47, label %48, label %50, !dbg !2109

48:                                               ; preds = %41
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !2111
  %49 = tail call double @llvm.floor.f64(double %handler_result3), !dbg !2111
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %49), !dbg !2113
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !2053, metadata !DIExpression()), !dbg !2099
  %handler_result8 = call double @fAddHandlerDouble(double %42, double 1.000000e+00), !dbg !2114
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result8, double %49), !dbg !2115
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !2052, metadata !DIExpression()), !dbg !2099
  br label %50, !dbg !2115

50:                                               ; preds = %48, %41
  %51 = phi double [ %handler_result7, %48 ], [ %handler_result2, %41 ], !dbg !2099
  %52 = phi double [ %handler_result9, %48 ], [ %42, %41 ], !dbg !2099
  tail call void @llvm.dbg.value(metadata double %52, metadata !2052, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double %51, metadata !2053, metadata !DIExpression()), !dbg !2099
  %handler_result10 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !2116
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result10, double %1), !dbg !2117
  %53 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !2117
  %54 = fcmp olt double %53, 0x3E56A09E667F3BCD, !dbg !2118
  %handler_result176 = call double @callHandler(i32 12, double %2, double %2), !dbg !2119
  br i1 %54, label %55, label %64, !dbg !2119

55:                                               ; preds = %50
  %56 = fneg double %0, !dbg !2120
  %57 = fmul double %handler_result176, %56, !dbg !2121
  tail call void @llvm.dbg.value(metadata double %57, metadata !2057, metadata !DIExpression()), !dbg !2122
  %58 = tail call i32 @gsl_sf_exp_e(double noundef %57, ptr noundef %3) #7, !dbg !2123
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2060, metadata !DIExpression()), !dbg !2122
  %59 = load double, ptr %3, align 8, !dbg !2124, !tbaa !180
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !2125
  %61 = fmul double %60, 0x3E66A09E667F3BCD, !dbg !2126
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2127
  %63 = load double, ptr %62, align 8, !dbg !2128, !tbaa !188
  %handler_result12 = call double @fAddHandlerDouble(double %63, double %61), !dbg !2128
  store double %handler_result12, ptr %62, align 8, !dbg !2128, !tbaa !188
  br label %785

64:                                               ; preds = %50
  %65 = fptosi double %52 to i32, !dbg !2129
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !2061, metadata !DIExpression()), !dbg !2130
  tail call void @llvm.dbg.value(metadata double %handler_result176, metadata !2063, metadata !DIExpression()), !dbg !2130
  %66 = fneg double %51, !dbg !2131
  %67 = fmul double %handler_result176, %66, !dbg !2132
  %68 = tail call double @exp(double noundef %67) #7, !dbg !2133
  tail call void @llvm.dbg.value(metadata double %68, metadata !2064, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2134, metadata !DIExpression(), metadata !2095, metadata ptr %32, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2160, metadata !DIExpression(), metadata !2096, metadata ptr %33, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2163, metadata !DIExpression(), metadata !2097, metadata ptr %34, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2172, metadata !DIExpression(), metadata !2098, metadata ptr %35, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 %65, metadata !2141, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %0, metadata !2142, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %1, metadata !2143, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %2, metadata !2144, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %68, metadata !2145, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr undef, metadata !2146, metadata !DIExpression()), !dbg !2184
  %69 = icmp slt i32 %65, 1, !dbg !2185
  br i1 %69, label %70, label %116, !dbg !2186

70:                                               ; preds = %64
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2150, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2151, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %32) #7, !dbg !2187
  call void @llvm.dbg.value(metadata i32 1, metadata !2147, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2148, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2149, metadata !DIExpression()), !dbg !2184
  %71 = icmp sgt i32 %65, -1, !dbg !2188
  br i1 %71, label %95, label %72, !dbg !2189

72:                                               ; preds = %70
  %73 = sub i32 0, %65
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 1), !dbg !2189
  br label %75, !dbg !2189

75:                                               ; preds = %75, %72
  %76 = phi i32 [ %93, %75 ], [ 1, %72 ]
  %77 = phi double [ %handler_result18, %75 ], [ 1.000000e+00, %72 ]
  %78 = phi double [ %handler_result19, %75 ], [ 0.000000e+00, %72 ]
  %79 = phi double [ %86, %75 ], [ 1.000000e+00, %72 ]
  %80 = phi double [ %handler_result17, %75 ], [ 0.000000e+00, %72 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !2147, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %77, metadata !2148, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %78, metadata !2149, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %79, metadata !2150, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata double %80, metadata !2151, metadata !DIExpression()), !dbg !2180
  %81 = add nsw i32 %76, -1, !dbg !2190
  %82 = sitofp i32 %81 to double, !dbg !2191
  call void @llvm.dbg.value(metadata double %82, metadata !2153, metadata !DIExpression()), !dbg !2192
  %handler_result13 = call double @fAddHandlerDouble(double %82, double %0), !dbg !2193
  %83 = fmul double %handler_result13, %2, !dbg !2193
  %handler_result14 = call double @fAddHandlerDouble(double %82, double %1), !dbg !2194
  %handler_result15 = call double @fAddHandlerDouble(double %82, double 1.000000e+00), !dbg !2195
  %84 = fmul double %handler_result14, %handler_result15, !dbg !2195
  %85 = fdiv double %83, %84, !dbg !2196
  call void @llvm.dbg.value(metadata double %85, metadata !2157, metadata !DIExpression()), !dbg !2192
  %86 = fmul double %79, %85, !dbg !2197
  call void @llvm.dbg.value(metadata double %86, metadata !2150, metadata !DIExpression()), !dbg !2180
  %87 = tail call double @llvm.fabs.f64(double %85), !dbg !2198
  %88 = fmul double %80, %87, !dbg !2199
  %89 = tail call double @llvm.fabs.f64(double %86), !dbg !2200
  %90 = fmul double %89, 8.000000e+00, !dbg !2201
  %91 = fmul double %90, 2.000000e+00, !dbg !2202
  %92 = fmul double %91, 0x3CB0000000000000, !dbg !2203
  %handler_result16 = call double @fAddHandlerDouble(double %88, double %92), !dbg !2204
  %handler_result17 = call double @fAddHandlerDouble(double %80, double %handler_result16), !dbg !2205
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !2151, metadata !DIExpression()), !dbg !2180
  %handler_result18 = call double @fAddHandlerDouble(double %77, double %86), !dbg !2206
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !2148, metadata !DIExpression()), !dbg !2184
  %handler_result19 = call double @fAddHandlerDouble(double %78, double %handler_result17), !dbg !2207
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !2149, metadata !DIExpression()), !dbg !2184
  %93 = add nuw i32 %76, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %93, metadata !2147, metadata !DIExpression()), !dbg !2184
  %94 = icmp eq i32 %76, %74, !dbg !2188
  br i1 %94, label %95, label %75, !dbg !2189, !llvm.loop !2208

95:                                               ; preds = %75, %70
  %96 = phi double [ 0.000000e+00, %70 ], [ %handler_result19, %75 ], !dbg !2180
  %97 = phi double [ 1.000000e+00, %70 ], [ %handler_result18, %75 ], !dbg !2180
  %98 = fneg double %0, !dbg !2210
  %99 = call i32 @gsl_sf_poch_e(double noundef %handler_result11, double noundef %98, ptr noundef nonnull %32) #7, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %99, metadata !2152, metadata !DIExpression()), !dbg !2180
  %100 = load double, ptr %32, align 8, !dbg !2212, !tbaa !180
  %101 = fmul double %97, %100, !dbg !2213
  tail call void @llvm.dbg.value(metadata double %101, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2130
  %102 = call double @llvm.fabs.f64(double %97), !dbg !2214
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %32, i64 0, i32 1, !dbg !2215
  %104 = load double, ptr %103, align 8, !dbg !2215, !tbaa !188
  %105 = fmul double %102, %104, !dbg !2216
  %106 = call double @llvm.fabs.f64(double %100), !dbg !2217
  %107 = fmul double %96, %106, !dbg !2218
  %handler_result20 = call double @fAddHandlerDouble(double %107, double %105), !dbg !2219
  %108 = sitofp i32 %65 to double, !dbg !2219
  %109 = call double @llvm.fabs.f64(double %108), !dbg !2220
  %handler_result21 = call double @fAddHandlerDouble(double %109, double 2.000000e+00), !dbg !2221
  %110 = fmul double %handler_result21, %106, !dbg !2221
  %111 = fmul double %110, 0x3CB0000000000000, !dbg !2222
  %112 = fmul double %102, %111, !dbg !2223
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result20, double %112), !dbg !2224
  %113 = call double @llvm.fabs.f64(double %101), !dbg !2224
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !2225
  %handler_result23 = call double @fAddHandlerDouble(double %114, double %handler_result22), !dbg !2226
  %115 = fmul double %handler_result23, 2.000000e+00, !dbg !2226
  tail call void @llvm.dbg.value(metadata double %115, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %32) #7, !dbg !2227
  br label %189

116:                                              ; preds = %64
  call void @llvm.dbg.value(metadata i32 %65, metadata !2158, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2228
  %117 = icmp eq i32 %65, 1, !dbg !2229
  br i1 %117, label %189, label %118, !dbg !2230

118:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #7, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #7, !dbg !2232
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2166, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2167, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2148, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2149, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 1, metadata !2147, metadata !DIExpression()), !dbg !2184
  %119 = icmp ult i32 %65, 3, !dbg !2233
  br i1 %119, label %141, label %120, !dbg !2234

120:                                              ; preds = %118
  %handler_result24 = call double @fSubHandlerDouble(double %0, double %1)
  %handler_result25 = call double @fSubHandlerDouble(double 1.000000e+00, double %1)
  %121 = add nsw i32 %65, -2
  br label %122, !dbg !2234

122:                                              ; preds = %122, %120
  %123 = phi i32 [ 1, %120 ], [ %139, %122 ]
  %124 = phi double [ 1.000000e+00, %120 ], [ %handler_result30, %122 ]
  %125 = phi double [ 0.000000e+00, %120 ], [ %handler_result31, %122 ]
  %126 = phi double [ 0.000000e+00, %120 ], [ %handler_result29, %122 ]
  %127 = phi double [ 1.000000e+00, %120 ], [ %132, %122 ]
  call void @llvm.dbg.value(metadata i32 %123, metadata !2147, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %124, metadata !2148, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %125, metadata !2149, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata double %126, metadata !2167, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata double %127, metadata !2166, metadata !DIExpression()), !dbg !2182
  %128 = sitofp i32 %123 to double, !dbg !2235
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result24, double %128), !dbg !2236
  %129 = fmul double %handler_result26, %2, !dbg !2236
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result25, double %128), !dbg !2237
  %130 = fmul double %handler_result27, %128, !dbg !2237
  %131 = fdiv double %129, %130, !dbg !2238
  call void @llvm.dbg.value(metadata double %131, metadata !2168, metadata !DIExpression()), !dbg !2239
  %132 = fmul double %127, %131, !dbg !2240
  call void @llvm.dbg.value(metadata double %132, metadata !2166, metadata !DIExpression()), !dbg !2182
  %133 = tail call double @llvm.fabs.f64(double %131), !dbg !2241
  %134 = fmul double %126, %133, !dbg !2242
  %135 = tail call double @llvm.fabs.f64(double %132), !dbg !2243
  %136 = fmul double %135, 8.000000e+00, !dbg !2244
  %137 = fmul double %136, 2.000000e+00, !dbg !2245
  %138 = fmul double %137, 0x3CB0000000000000, !dbg !2246
  %handler_result28 = call double @fAddHandlerDouble(double %134, double %138), !dbg !2247
  %handler_result29 = call double @fAddHandlerDouble(double %126, double %handler_result28), !dbg !2248
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !2167, metadata !DIExpression()), !dbg !2182
  %handler_result30 = call double @fAddHandlerDouble(double %124, double %132), !dbg !2249
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !2148, metadata !DIExpression()), !dbg !2184
  %handler_result31 = call double @fAddHandlerDouble(double %125, double %handler_result29), !dbg !2250
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !2149, metadata !DIExpression()), !dbg !2184
  %139 = add nuw nsw i32 %123, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %139, metadata !2147, metadata !DIExpression()), !dbg !2184
  %140 = icmp eq i32 %123, %121, !dbg !2233
  br i1 %140, label %141, label %122, !dbg !2234, !llvm.loop !2251

141:                                              ; preds = %122, %118
  %142 = phi double [ 0.000000e+00, %118 ], [ %handler_result31, %122 ], !dbg !2182
  %143 = phi double [ 1.000000e+00, %118 ], [ %handler_result30, %122 ], !dbg !2182
  %handler_result32 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !2253
  %144 = call i32 @gsl_sf_gamma_e(double noundef %handler_result32, ptr noundef nonnull %33) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %144, metadata !2164, metadata !DIExpression()), !dbg !2182
  %145 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %34) #7, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %145, metadata !2165, metadata !DIExpression()), !dbg !2182
  %146 = icmp eq i32 %144, 0, !dbg !2255
  br i1 %146, label %147, label %185, !dbg !2256

147:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #7, !dbg !2257
  %148 = sub nsw i32 1, %65, !dbg !2258
  %149 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %148, ptr noundef nonnull %35) #7, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %149, metadata !2175, metadata !DIExpression()), !dbg !2183
  %150 = load double, ptr %35, align 8, !dbg !2260, !tbaa !180
  %151 = fmul double %68, %150, !dbg !2261
  call void @llvm.dbg.value(metadata double %151, metadata !2176, metadata !DIExpression()), !dbg !2183
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %35, i64 0, i32 1, !dbg !2262
  %153 = load double, ptr %152, align 8, !dbg !2262, !tbaa !188
  %154 = call double @llvm.fabs.f64(double %68), !dbg !2263
  %155 = fmul double %154, %153, !dbg !2264
  %156 = call double @llvm.fabs.f64(double %151), !dbg !2265
  %157 = fmul double %156, 0x3CC0000000000000, !dbg !2266
  %handler_result33 = call double @fAddHandlerDouble(double %155, double %157), !dbg !2267
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !2177, metadata !DIExpression()), !dbg !2183
  %158 = load double, ptr %33, align 8, !dbg !2267, !tbaa !180
  %159 = load double, ptr %34, align 8, !dbg !2268, !tbaa !180
  %160 = fmul double %158, %159, !dbg !2269
  %161 = fmul double %151, %160, !dbg !2270
  call void @llvm.dbg.value(metadata double %161, metadata !2178, metadata !DIExpression()), !dbg !2183
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %33, i64 0, i32 1, !dbg !2271
  %163 = load double, ptr %162, align 8, !dbg !2271, !tbaa !188
  %164 = fmul double %151, %159, !dbg !2272
  %165 = call double @llvm.fabs.f64(double %164), !dbg !2273
  %166 = fmul double %163, %165, !dbg !2274
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %34, i64 0, i32 1, !dbg !2275
  %168 = load double, ptr %167, align 8, !dbg !2275, !tbaa !188
  %169 = fmul double %151, %158, !dbg !2276
  %170 = call double @llvm.fabs.f64(double %169), !dbg !2277
  %171 = fmul double %170, %168, !dbg !2278
  %handler_result34 = call double @fAddHandlerDouble(double %166, double %171), !dbg !2279
  %172 = call double @llvm.fabs.f64(double %160), !dbg !2279
  %173 = fmul double %handler_result33, %172, !dbg !2280
  %handler_result35 = call double @fAddHandlerDouble(double %173, double %handler_result34), !dbg !2281
  %174 = call double @llvm.fabs.f64(double %161), !dbg !2281
  %175 = fmul double %174, 0x3CC0000000000000, !dbg !2282
  %handler_result36 = call double @fAddHandlerDouble(double %175, double %handler_result35), !dbg !2283
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !2179, metadata !DIExpression()), !dbg !2183
  %176 = fmul double %143, %161, !dbg !2283
  %177 = call double @llvm.fabs.f64(double %143), !dbg !2284
  %178 = fmul double %177, %handler_result36, !dbg !2285
  %179 = fmul double %142, %174, !dbg !2286
  %handler_result37 = call double @fAddHandlerDouble(double %179, double %178), !dbg !2287
  %180 = sitofp i32 %65 to double, !dbg !2287
  %181 = fmul double %180, 0x3CC0000000000000, !dbg !2288
  %182 = call double @llvm.fabs.f64(double %176), !dbg !2289
  %183 = fmul double %181, %182, !dbg !2290
  %handler_result38 = call double @fAddHandlerDouble(double %183, double %handler_result37), !dbg !2291
  %184 = fmul double %handler_result38, 2.000000e+00, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #7, !dbg !2292
  br label %185

185:                                              ; preds = %147, %141
  %186 = phi double [ %176, %147 ], [ 0.000000e+00, %141 ], !dbg !2293
  %187 = phi double [ %184, %147 ], [ 0.000000e+00, %141 ], !dbg !2293
  %188 = phi i32 [ %149, %147 ], [ %144, %141 ], !dbg !2293
  tail call void @llvm.dbg.value(metadata double %186, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2130
  tail call void @llvm.dbg.value(metadata double %187, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #7, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #7, !dbg !2294
  br label %189

189:                                              ; preds = %185, %116, %95
  %190 = phi double [ %101, %95 ], [ %186, %185 ], [ 0.000000e+00, %116 ], !dbg !2295
  %191 = phi double [ %115, %95 ], [ %187, %185 ], [ 0.000000e+00, %116 ], !dbg !2295
  %192 = phi i32 [ %99, %95 ], [ %188, %185 ], [ 0, %116 ], !dbg !2295
  tail call void @llvm.dbg.value(metadata double %191, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2130
  tail call void @llvm.dbg.value(metadata double %190, metadata !2065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !2066, metadata !DIExpression()), !dbg !2130
  %handler_result39 = call double @fAddHandlerDouble(double %68, double -1.000000e+00), !dbg !2296
  %193 = call double @llvm.fabs.f64(double %handler_result39), !dbg !2296
  %194 = fcmp ogt double %193, 5.000000e-01, !dbg !2298
  br i1 %194, label %195, label %359, !dbg !2299

195:                                              ; preds = %189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2300, metadata !DIExpression(), metadata !2087, metadata ptr %24, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2317, metadata !DIExpression(), metadata !2088, metadata ptr %25, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2324, metadata !DIExpression(), metadata !2089, metadata ptr %26, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2325, metadata !DIExpression(), metadata !2090, metadata ptr %27, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2326, metadata !DIExpression(), metadata !2091, metadata ptr %28, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2332, metadata !DIExpression(), metadata !2092, metadata ptr %29, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2333, metadata !DIExpression(), metadata !2093, metadata ptr %30, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2344, metadata !DIExpression(), metadata !2094, metadata ptr %31, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %190, metadata !2312, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2355
  call void @llvm.dbg.value(metadata double %191, metadata !2312, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %65, metadata !2305, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %0, metadata !2306, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %52, metadata !2307, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %1, metadata !2308, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %51, metadata !2309, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %2, metadata !2310, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %68, metadata !2311, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %3, metadata !2313, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !2314, metadata !DIExpression()), !dbg !2355
  %196 = sub nsw i32 1, %65, !dbg !2358
  %197 = icmp sgt i32 %65, 0, !dbg !2358
  %198 = select i1 %197, i32 0, i32 %196, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %198, metadata !2315, metadata !DIExpression()), !dbg !2355
  %199 = sitofp i32 %198 to double, !dbg !2359
  call void @llvm.dbg.value(metadata double %199, metadata !2316, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #7, !dbg !2360
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #7, !dbg !2361
  %200 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result11, ptr noundef nonnull %24) #7, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %200, metadata !2318, metadata !DIExpression()), !dbg !2355
  %201 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %198, ptr noundef nonnull %25) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %201, metadata !2319, metadata !DIExpression()), !dbg !2355
  %202 = fmul double %51, 0x400921FB54442D18, !dbg !2364
  call void @llvm.dbg.value(metadata double %202, metadata !2320, metadata !DIExpression()), !dbg !2355
  %203 = fcmp une double %202, 0.000000e+00, !dbg !2365
  br i1 %203, label %204, label %206, !dbg !2366

204:                                              ; preds = %195
  %handler_result177 = call double @callHandler(i32 1, double %202, double %202), !dbg !2367
  %205 = fdiv double %202, %handler_result177, !dbg !2367
  br label %206, !dbg !2366

206:                                              ; preds = %204, %195
  %207 = phi double [ %205, %204 ], [ 1.000000e+00, %195 ], !dbg !2366
  call void @llvm.dbg.value(metadata double %207, metadata !2321, metadata !DIExpression()), !dbg !2355
  %208 = and i32 %65, 1, !dbg !2368
  %209 = icmp eq i32 %208, 0, !dbg !2368
  %210 = fneg double %207, !dbg !2369
  %211 = select i1 %209, double %207, double %210, !dbg !2369
  %212 = load double, ptr %24, align 8, !dbg !2370, !tbaa !180
  %213 = fmul double %211, %212, !dbg !2371
  %214 = load double, ptr %25, align 8, !dbg !2372, !tbaa !180
  %215 = fmul double %213, %214, !dbg !2373
  call void @llvm.dbg.value(metadata double %215, metadata !2322, metadata !DIExpression()), !dbg !2355
  %216 = call double @llvm.fabs.f64(double %212), !dbg !2374
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %25, i64 0, i32 1, !dbg !2375
  %218 = load double, ptr %217, align 8, !dbg !2375, !tbaa !188
  %219 = fmul double %216, %218, !dbg !2376
  %220 = call double @llvm.fabs.f64(double %214), !dbg !2377
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !2378
  %222 = load double, ptr %221, align 8, !dbg !2378, !tbaa !188
  %223 = fmul double %220, %222, !dbg !2379
  %handler_result40 = call double @fAddHandlerDouble(double %219, double %223), !dbg !2380
  %224 = call double @llvm.fabs.f64(double %215), !dbg !2380
  %225 = fmul double %224, 0x3CC0000000000000, !dbg !2381
  %handler_result41 = call double @fAddHandlerDouble(double %225, double %handler_result40), !dbg !2382
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !2323, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #7, !dbg !2382
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #7, !dbg !2383
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #7, !dbg !2384
  %226 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %199, ptr noundef nonnull %26) #7, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %226, metadata !2327, metadata !DIExpression()), !dbg !2355
  %handler_result42 = call double @fAddHandlerDouble(double %199, double 1.000000e+00), !dbg !2386
  %227 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result42, ptr noundef nonnull %27) #7, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %227, metadata !2328, metadata !DIExpression()), !dbg !2355
  %handler_result43 = call double @fAddHandlerDouble(double %52, double %199), !dbg !2387
  %228 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result43, ptr noundef nonnull %28) #7, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %228, metadata !2329, metadata !DIExpression()), !dbg !2355
  %229 = icmp eq i32 %200, 0, !dbg !2388
  %230 = icmp eq i32 %227, 0, !dbg !2388
  %231 = select i1 %230, i32 %228, i32 %227, !dbg !2388
  %232 = select i1 %229, i32 %231, i32 %200, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %232, metadata !2330, metadata !DIExpression()), !dbg !2355
  %233 = icmp eq i32 %232, 0, !dbg !2389
  %234 = icmp eq i32 %226, 0, !dbg !2389
  %235 = select i1 %234, i32 %201, i32 %226, !dbg !2389
  %236 = select i1 %233, i32 %235, i32 %232, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %236, metadata !2331, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #7, !dbg !2390
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #7, !dbg !2391
  %handler_result44 = call double @fSubHandlerDouble(double %199, double %51), !dbg !2392
  %237 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %handler_result44, ptr noundef nonnull %29) #7, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %237, metadata !2334, metadata !DIExpression()), !dbg !2355
  %handler_result45 = call double @fSubHandlerDouble(double %handler_result42, double %51), !dbg !2393
  %238 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result45, ptr noundef nonnull %30) #7, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %238, metadata !2335, metadata !DIExpression()), !dbg !2355
  %239 = icmp eq i32 %236, 0, !dbg !2394
  %240 = icmp eq i32 %237, 0, !dbg !2394
  %241 = select i1 %240, i32 %238, i32 %237, !dbg !2394
  %242 = select i1 %239, i32 %241, i32 %236, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %242, metadata !2336, metadata !DIExpression()), !dbg !2355
  %243 = load double, ptr %29, align 8, !dbg !2395, !tbaa !180
  %244 = fmul double %215, %243, !dbg !2396
  %245 = load double, ptr %28, align 8, !dbg !2397, !tbaa !180
  %246 = fmul double %244, %245, !dbg !2398
  %247 = load double, ptr %30, align 8, !dbg !2399, !tbaa !180
  %248 = fmul double %246, %247, !dbg !2400
  call void @llvm.dbg.value(metadata double %248, metadata !2337, metadata !DIExpression()), !dbg !2355
  %249 = call double @llvm.fabs.f64(double %246), !dbg !2401
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !2402
  %251 = load double, ptr %250, align 8, !dbg !2402, !tbaa !188
  %252 = fmul double %249, %251, !dbg !2403
  %253 = fmul double %244, %247, !dbg !2404
  %254 = call double @llvm.fabs.f64(double %253), !dbg !2405
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %28, i64 0, i32 1, !dbg !2406
  %256 = load double, ptr %255, align 8, !dbg !2406, !tbaa !188
  %257 = fmul double %254, %256, !dbg !2407
  %handler_result46 = call double @fAddHandlerDouble(double %252, double %257), !dbg !2408
  %258 = fmul double %215, %245, !dbg !2408
  %259 = fmul double %258, %247, !dbg !2409
  %260 = call double @llvm.fabs.f64(double %259), !dbg !2410
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !2411
  %262 = load double, ptr %261, align 8, !dbg !2411, !tbaa !188
  %263 = fmul double %260, %262, !dbg !2412
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %263), !dbg !2413
  %264 = fmul double %243, %245, !dbg !2413
  %265 = fmul double %264, %247, !dbg !2414
  %266 = call double @llvm.fabs.f64(double %265), !dbg !2415
  %267 = fmul double %handler_result41, %266, !dbg !2416
  %handler_result48 = call double @fAddHandlerDouble(double %267, double %handler_result47), !dbg !2417
  %268 = call double @llvm.fabs.f64(double %248), !dbg !2417
  %269 = fmul double %268, 0x3CC0000000000000, !dbg !2418
  %handler_result49 = call double @fAddHandlerDouble(double %269, double %handler_result48), !dbg !2419
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !2338, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #7, !dbg !2419
  %handler_result50 = call double @fAddHandlerDouble(double %199, double %1), !dbg !2420
  %270 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result50, ptr noundef nonnull %31) #7, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %270, metadata !2345, metadata !DIExpression()), !dbg !2355
  %271 = load double, ptr %26, align 8, !dbg !2421, !tbaa !180
  %272 = fmul double %215, %271, !dbg !2422
  %273 = load double, ptr %31, align 8, !dbg !2423, !tbaa !180
  %274 = fmul double %272, %273, !dbg !2424
  %275 = load double, ptr %27, align 8, !dbg !2425, !tbaa !180
  %276 = fmul double %274, %275, !dbg !2426
  %277 = fdiv double %276, %51, !dbg !2427
  call void @llvm.dbg.value(metadata double %277, metadata !2346, metadata !DIExpression()), !dbg !2355
  %278 = fdiv double %274, %51, !dbg !2428
  %279 = call double @llvm.fabs.f64(double %278), !dbg !2429
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %27, i64 0, i32 1, !dbg !2430
  %281 = load double, ptr %280, align 8, !dbg !2430, !tbaa !188
  %282 = fmul double %281, %279, !dbg !2431
  %283 = fmul double %272, %275, !dbg !2432
  %284 = fdiv double %283, %51, !dbg !2433
  %285 = call double @llvm.fabs.f64(double %284), !dbg !2434
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !2435
  %287 = load double, ptr %286, align 8, !dbg !2435, !tbaa !188
  %288 = fmul double %287, %285, !dbg !2436
  %handler_result51 = call double @fAddHandlerDouble(double %282, double %288), !dbg !2437
  %289 = fmul double %215, %273, !dbg !2437
  %290 = fmul double %289, %275, !dbg !2438
  %291 = fdiv double %290, %51, !dbg !2439
  %292 = call double @llvm.fabs.f64(double %291), !dbg !2440
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %26, i64 0, i32 1, !dbg !2441
  %294 = load double, ptr %293, align 8, !dbg !2441, !tbaa !188
  %295 = fmul double %292, %294, !dbg !2442
  %handler_result52 = call double @fAddHandlerDouble(double %295, double %handler_result51), !dbg !2443
  %296 = fmul double %271, %273, !dbg !2443
  %297 = fmul double %296, %275, !dbg !2444
  %298 = fdiv double %297, %51, !dbg !2445
  %299 = call double @llvm.fabs.f64(double %298), !dbg !2446
  %300 = fmul double %handler_result41, %299, !dbg !2447
  %handler_result53 = call double @fAddHandlerDouble(double %300, double %handler_result52), !dbg !2448
  %301 = call double @llvm.fabs.f64(double %277), !dbg !2448
  %302 = fmul double %301, 0x3CC0000000000000, !dbg !2449
  %handler_result54 = call double @fAddHandlerDouble(double %302, double %handler_result53), !dbg !2450
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !2347, metadata !DIExpression()), !dbg !2355
  %303 = icmp eq i32 %242, 0, !dbg !2450
  %304 = select i1 %303, i32 %270, i32 %242, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %304, metadata !2336, metadata !DIExpression()), !dbg !2355
  %305 = fmul double %68, %248, !dbg !2451
  %306 = fdiv double %305, %51, !dbg !2452
  call void @llvm.dbg.value(metadata double %306, metadata !2337, metadata !DIExpression()), !dbg !2355
  %307 = fdiv double %68, %51, !dbg !2453
  %308 = call double @llvm.fabs.f64(double %307), !dbg !2454
  %309 = fmul double %308, %handler_result49, !dbg !2455
  %310 = call double @llvm.fabs.f64(double %306), !dbg !2456
  %311 = fmul double %310, 0x3CD0000000000000, !dbg !2457
  %handler_result55 = call double @fAddHandlerDouble(double %311, double %309), !dbg !2458
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !2338, metadata !DIExpression()), !dbg !2355
  %handler_result56 = call double @fAddHandlerDouble(double %190, double %277), !dbg !2459
  %handler_result57 = call double @fSubHandlerDouble(double %handler_result56, double %306), !dbg !2460
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !2340, metadata !DIExpression()), !dbg !2355
  %handler_result58 = call double @fAddHandlerDouble(double %191, double %handler_result54), !dbg !2461
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result55, double %handler_result58), !dbg !2462
  %312 = call double @llvm.fabs.f64(double %190), !dbg !2462
  %handler_result60 = call double @fAddHandlerDouble(double %312, double %301), !dbg !2463
  %handler_result61 = call double @fAddHandlerDouble(double %310, double %handler_result60), !dbg !2464
  %313 = fmul double %handler_result61, 0x3CC0000000000000, !dbg !2464
  %handler_result62 = call double @fAddHandlerDouble(double %313, double %handler_result59), !dbg !2465
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !2341, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 1, metadata !2339, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double undef, metadata !2342, metadata !DIExpression()), !dbg !2355
  br label %314, !dbg !2465

314:                                              ; preds = %342, %206
  %315 = phi double [ %306, %206 ], [ %335, %342 ]
  %316 = phi double [ %handler_result55, %206 ], [ %handler_result69, %342 ]
  %317 = phi double [ %handler_result54, %206 ], [ %handler_result68, %342 ]
  %318 = phi double [ %277, %206 ], [ %332, %342 ]
  %319 = phi i32 [ 1, %206 ], [ %343, %342 ]
  %320 = phi double [ %handler_result57, %206 ], [ %handler_result72, %342 ]
  %321 = phi double [ %handler_result62, %206 ], [ %handler_result73, %342 ]
  call void @llvm.dbg.value(metadata double %315, metadata !2337, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %316, metadata !2338, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %317, metadata !2347, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %318, metadata !2346, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %319, metadata !2339, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %320, metadata !2340, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %321, metadata !2341, metadata !DIExpression()), !dbg !2355
  %322 = add nsw i32 %319, %198, !dbg !2466
  %323 = sitofp i32 %322 to double, !dbg !2467
  call void @llvm.dbg.value(metadata double %323, metadata !2348, metadata !DIExpression()), !dbg !2468
  %324 = add nsw i32 %322, -1, !dbg !2469
  %325 = sitofp i32 %324 to double, !dbg !2470
  call void @llvm.dbg.value(metadata double %325, metadata !2352, metadata !DIExpression()), !dbg !2468
  %handler_result63 = call double @fAddHandlerDouble(double %325, double %0), !dbg !2471
  %326 = fmul double %handler_result63, %2, !dbg !2471
  %handler_result64 = call double @fAddHandlerDouble(double %325, double %1), !dbg !2472
  %327 = fmul double %handler_result64, %323, !dbg !2472
  %328 = fdiv double %326, %327, !dbg !2473
  call void @llvm.dbg.value(metadata double %328, metadata !2353, metadata !DIExpression()), !dbg !2468
  %handler_result65 = call double @fSubHandlerDouble(double %handler_result63, double %51), !dbg !2474
  %329 = fmul double %handler_result65, %2, !dbg !2474
  %handler_result66 = call double @fAddHandlerDouble(double %52, double %325), !dbg !2475
  %handler_result67 = call double @fSubHandlerDouble(double %323, double %51), !dbg !2476
  %330 = fmul double %handler_result67, %handler_result66, !dbg !2476
  %331 = fdiv double %329, %330, !dbg !2477
  call void @llvm.dbg.value(metadata double %331, metadata !2354, metadata !DIExpression()), !dbg !2468
  %332 = fmul double %318, %328, !dbg !2478
  call void @llvm.dbg.value(metadata double %332, metadata !2346, metadata !DIExpression()), !dbg !2355
  %333 = call double @llvm.fabs.f64(double %328), !dbg !2479
  %334 = fmul double %317, %333, !dbg !2480
  %handler_result68 = call double @fAddHandlerDouble(double %317, double %334), !dbg !2481
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !2347, metadata !DIExpression()), !dbg !2355
  %335 = fmul double %315, %331, !dbg !2481
  call void @llvm.dbg.value(metadata double %335, metadata !2337, metadata !DIExpression()), !dbg !2355
  %336 = call double @llvm.fabs.f64(double %331), !dbg !2482
  %337 = fmul double %316, %336, !dbg !2483
  %handler_result69 = call double @fAddHandlerDouble(double %316, double %337), !dbg !2484
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !2338, metadata !DIExpression()), !dbg !2355
  %handler_result70 = call double @fSubHandlerDouble(double %332, double %335), !dbg !2485
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !2342, metadata !DIExpression()), !dbg !2355
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result68, double %handler_result69), !dbg !2486
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !2343, metadata !DIExpression()), !dbg !2355
  %handler_result72 = call double @fAddHandlerDouble(double %320, double %handler_result70), !dbg !2487
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !2340, metadata !DIExpression()), !dbg !2355
  %handler_result73 = call double @fAddHandlerDouble(double %321, double %handler_result71), !dbg !2488
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !2341, metadata !DIExpression()), !dbg !2355
  %338 = call double @llvm.fabs.f64(double %handler_result70), !dbg !2488
  %339 = call double @llvm.fabs.f64(double %handler_result72), !dbg !2490
  %340 = fmul double %339, 0x3CC0000000000000, !dbg !2491
  %341 = fcmp olt double %338, %340, !dbg !2492
  br i1 %341, label %345, label %342

342:                                              ; preds = %314
  %343 = add nuw nsw i32 %319, 1, !dbg !2493
  call void @llvm.dbg.value(metadata double %335, metadata !2337, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !2338, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !2347, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %332, metadata !2346, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %343, metadata !2339, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !2340, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !2342, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !2341, metadata !DIExpression()), !dbg !2355
  %344 = icmp eq i32 %343, 2000, !dbg !2494
  br i1 %344, label %345, label %314, !dbg !2465, !llvm.loop !2495

345:                                              ; preds = %342, %314
  %346 = phi i32 [ %319, %314 ], [ 2000, %342 ], !dbg !2497
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !2340, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !2342, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !2341, metadata !DIExpression()), !dbg !2355
  store double %handler_result72, ptr %3, align 8, !dbg !2498, !tbaa !180
  %347 = fmul double %handler_result73, 2.000000e+00, !dbg !2499
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2500
  %349 = fmul double %338, 2.000000e+00, !dbg !2501
  %handler_result74 = call double @fAddHandlerDouble(double %349, double %347), !dbg !2502
  %350 = add nuw nsw i32 %346, 2, !dbg !2502
  %351 = sitofp i32 %350 to double, !dbg !2502
  %352 = fmul double %351, 0x3CD0000000000000, !dbg !2503
  %353 = fmul double %339, %352, !dbg !2504
  %handler_result75 = call double @fAddHandlerDouble(double %handler_result74, double %353), !dbg !2505
  %354 = fmul double %handler_result75, 2.000000e+00, !dbg !2505
  store double %354, ptr %348, align 8, !dbg !2505, !tbaa !188
  %355 = icmp ugt i32 %346, 1999, !dbg !2506
  br i1 %355, label %356, label %357, !dbg !2508

356:                                              ; preds = %345
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 11) #7, !dbg !2509
  br label %357, !dbg !2509

357:                                              ; preds = %356, %345
  %358 = phi i32 [ 11, %356 ], [ %304, %345 ], !dbg !2512
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #7, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #7, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %358, metadata !2067, metadata !DIExpression()), !dbg !2130
  br label %781, !dbg !2514

359:                                              ; preds = %189
  %360 = fcmp olt double %handler_result11, 0.000000e+00, !dbg !2515
  br i1 %360, label %361, label %544, !dbg !2517

361:                                              ; preds = %359
  %362 = call double @llvm.floor.f64(double %handler_result11), !dbg !2518
  %363 = fcmp oeq double %handler_result11, %362, !dbg !2519
  %364 = fcmp une double %51, 0.000000e+00
  %365 = and i1 %363, %364, !dbg !2520
  br i1 %365, label %366, label %544, !dbg !2520

366:                                              ; preds = %361
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2079, metadata ptr %16, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2541, metadata !DIExpression(), metadata !2080, metadata ptr %17, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2081, metadata ptr %18, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2543, metadata !DIExpression(), metadata !2082, metadata ptr %19, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2549, metadata !DIExpression(), metadata !2083, metadata ptr %20, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2550, metadata !DIExpression(), metadata !2084, metadata ptr %21, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2562, metadata !DIExpression(), metadata !2085, metadata ptr %22, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2563, metadata !DIExpression(), metadata !2086, metadata ptr %23, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %190, metadata !2531, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2575
  call void @llvm.dbg.value(metadata double %191, metadata !2531, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %65, metadata !2524, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %0, metadata !2525, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %52, metadata !2526, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %1, metadata !2527, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %51, metadata !2528, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %2, metadata !2529, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %68, metadata !2530, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %3, metadata !2532, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !2533, metadata !DIExpression()), !dbg !2575
  %367 = sub nsw i32 1, %65, !dbg !2578
  %368 = icmp sgt i32 %65, 0, !dbg !2578
  %369 = select i1 %368, i32 0, i32 %367, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %369, metadata !2534, metadata !DIExpression()), !dbg !2575
  %370 = sitofp i32 %369 to double, !dbg !2579
  call void @llvm.dbg.value(metadata double %370, metadata !2535, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !2580
  %371 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %369, ptr noundef nonnull %16) #7, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %371, metadata !2536, metadata !DIExpression()), !dbg !2575
  %372 = fmul double %51, 0x400921FB54442D18, !dbg !2582
  call void @llvm.dbg.value(metadata double %372, metadata !2537, metadata !DIExpression()), !dbg !2575
  %373 = fcmp une double %372, 0.000000e+00, !dbg !2583
  br i1 %373, label %374, label %376, !dbg !2584

374:                                              ; preds = %366
  %handler_result178 = call double @callHandler(i32 1, double %372, double %372), !dbg !2585
  %375 = fdiv double %372, %handler_result178, !dbg !2585
  br label %376, !dbg !2584

376:                                              ; preds = %374, %366
  %377 = phi double [ %375, %374 ], [ 1.000000e+00, %366 ], !dbg !2584
  call void @llvm.dbg.value(metadata double %377, metadata !2538, metadata !DIExpression()), !dbg !2575
  %378 = and i32 %65, 1, !dbg !2586
  %379 = icmp eq i32 %378, 0, !dbg !2586
  %380 = fneg double %377, !dbg !2587
  %381 = select i1 %379, double %377, double %380, !dbg !2587
  %382 = load double, ptr %16, align 8, !dbg !2588, !tbaa !180
  %383 = fmul double %381, %382, !dbg !2589
  call void @llvm.dbg.value(metadata double %383, metadata !2539, metadata !DIExpression()), !dbg !2575
  %384 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !2590
  %385 = load double, ptr %384, align 8, !dbg !2590, !tbaa !188
  %386 = call double @llvm.fabs.f64(double %385), !dbg !2591
  %387 = call double @llvm.fabs.f64(double %383), !dbg !2592
  %388 = fmul double %387, 0x3CC0000000000000, !dbg !2593
  %handler_result76 = call double @fAddHandlerDouble(double %386, double %388), !dbg !2594
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !2540, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7, !dbg !2595
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #7, !dbg !2596
  %389 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %370, ptr noundef nonnull %17) #7, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %389, metadata !2544, metadata !DIExpression()), !dbg !2575
  %handler_result77 = call double @fAddHandlerDouble(double %370, double 1.000000e+00), !dbg !2598
  %390 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result77, ptr noundef nonnull %18) #7, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %390, metadata !2545, metadata !DIExpression()), !dbg !2575
  %handler_result78 = call double @fAddHandlerDouble(double %52, double %370), !dbg !2599
  %391 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result78, ptr noundef nonnull %19) #7, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %391, metadata !2546, metadata !DIExpression()), !dbg !2575
  %392 = icmp eq i32 %390, 0, !dbg !2600
  %393 = select i1 %392, i32 %391, i32 %390, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %393, metadata !2547, metadata !DIExpression()), !dbg !2575
  %394 = icmp eq i32 %393, 0, !dbg !2601
  %395 = icmp eq i32 %389, 0, !dbg !2601
  %396 = select i1 %395, i32 %371, i32 %389, !dbg !2601
  %397 = select i1 %394, i32 %396, i32 %393, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %397, metadata !2548, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #7, !dbg !2602
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #7, !dbg !2603
  %handler_result79 = call double @fSubHandlerDouble(double %370, double %51), !dbg !2604
  %398 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %handler_result79, ptr noundef nonnull %20) #7, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %398, metadata !2551, metadata !DIExpression()), !dbg !2575
  %handler_result80 = call double @fSubHandlerDouble(double %handler_result77, double %51), !dbg !2605
  %399 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result80, ptr noundef nonnull %21) #7, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %399, metadata !2552, metadata !DIExpression()), !dbg !2575
  %400 = icmp eq i32 %397, 0, !dbg !2606
  %401 = icmp eq i32 %398, 0, !dbg !2606
  %402 = select i1 %401, i32 %399, i32 %398, !dbg !2606
  %403 = select i1 %400, i32 %402, i32 %397, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %403, metadata !2553, metadata !DIExpression()), !dbg !2575
  %404 = load double, ptr %16, align 8, !dbg !2607, !tbaa !180
  %405 = fmul double %381, %404, !dbg !2608
  %handler_result81 = call double @fAddHandlerDouble(double %370, double -1.000000e+00), !dbg !2609
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double %1), !dbg !2610
  %handler_result83 = call double @fSubHandlerDouble(double %handler_result82, double %51), !dbg !2611
  %406 = call double @gsl_sf_poch(double noundef %handler_result11, double noundef %handler_result83) #7, !dbg !2611
  %407 = fmul double %405, %406, !dbg !2612
  %408 = call double @gsl_sf_gammainv(double noundef %0) #7, !dbg !2613
  %409 = fmul double %407, %408, !dbg !2614
  call void @llvm.dbg.value(metadata double %409, metadata !2554, metadata !DIExpression()), !dbg !2575
  %410 = load double, ptr %19, align 8, !dbg !2615, !tbaa !180
  %411 = fmul double %409, %410, !dbg !2616
  %412 = load double, ptr %21, align 8, !dbg !2617, !tbaa !180
  %413 = fmul double %411, %412, !dbg !2618
  call void @llvm.dbg.value(metadata double %413, metadata !2555, metadata !DIExpression()), !dbg !2575
  %414 = load double, ptr %20, align 8, !dbg !2619, !tbaa !180
  %415 = fmul double %383, %414, !dbg !2620
  %416 = fmul double %410, %415, !dbg !2621
  %417 = call double @llvm.fabs.f64(double %416), !dbg !2622
  %418 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !2623
  %419 = load double, ptr %418, align 8, !dbg !2623, !tbaa !188
  %420 = fmul double %419, %417, !dbg !2624
  %421 = fmul double %412, %415, !dbg !2625
  %422 = call double @llvm.fabs.f64(double %421), !dbg !2626
  %423 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !2627
  %424 = load double, ptr %423, align 8, !dbg !2627, !tbaa !188
  %425 = fmul double %424, %422, !dbg !2628
  %handler_result84 = call double @fAddHandlerDouble(double %420, double %425), !dbg !2629
  %426 = fmul double %383, %410, !dbg !2629
  %427 = fmul double %426, %412, !dbg !2630
  %428 = call double @llvm.fabs.f64(double %427), !dbg !2631
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !2632
  %430 = load double, ptr %429, align 8, !dbg !2632, !tbaa !188
  %431 = fmul double %428, %430, !dbg !2633
  %handler_result85 = call double @fAddHandlerDouble(double %431, double %handler_result84), !dbg !2634
  %432 = fmul double %410, %414, !dbg !2634
  %433 = fmul double %412, %432, !dbg !2635
  %434 = call double @llvm.fabs.f64(double %433), !dbg !2636
  %435 = fmul double %handler_result76, %434, !dbg !2637
  %handler_result86 = call double @fAddHandlerDouble(double %435, double %handler_result85), !dbg !2638
  %436 = call double @llvm.fabs.f64(double %413), !dbg !2638
  %437 = fmul double %436, 0x3CC0000000000000, !dbg !2639
  %handler_result87 = call double @fAddHandlerDouble(double %437, double %handler_result86), !dbg !2640
  call void @llvm.dbg.value(metadata double %handler_result87, metadata !2556, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #7, !dbg !2640
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #7, !dbg !2641
  %438 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result11, ptr noundef nonnull %22) #7, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %438, metadata !2564, metadata !DIExpression()), !dbg !2575
  %handler_result88 = call double @fAddHandlerDouble(double %370, double %1), !dbg !2643
  %439 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result88, ptr noundef nonnull %23) #7, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %439, metadata !2565, metadata !DIExpression()), !dbg !2575
  %440 = load double, ptr %22, align 8, !dbg !2644, !tbaa !180
  %441 = fmul double %383, %440, !dbg !2645
  %442 = load double, ptr %17, align 8, !dbg !2646, !tbaa !180
  %443 = fmul double %441, %442, !dbg !2647
  %444 = load double, ptr %23, align 8, !dbg !2648, !tbaa !180
  %445 = fmul double %443, %444, !dbg !2649
  %446 = load double, ptr %18, align 8, !dbg !2650, !tbaa !180
  %447 = fmul double %445, %446, !dbg !2651
  %448 = fdiv double %447, %51, !dbg !2652
  call void @llvm.dbg.value(metadata double %448, metadata !2566, metadata !DIExpression()), !dbg !2575
  %449 = fmul double %383, %442, !dbg !2653
  %450 = fmul double %449, %444, !dbg !2654
  %451 = fmul double %450, %446, !dbg !2655
  %452 = fdiv double %451, %51, !dbg !2656
  %453 = call double @llvm.fabs.f64(double %452), !dbg !2657
  %454 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !2658
  %455 = load double, ptr %454, align 8, !dbg !2658, !tbaa !188
  %456 = fmul double %455, %453, !dbg !2659
  %457 = fmul double %441, %444, !dbg !2660
  %458 = fmul double %457, %446, !dbg !2661
  %459 = fdiv double %458, %51, !dbg !2662
  %460 = call double @llvm.fabs.f64(double %459), !dbg !2663
  %461 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !2664
  %462 = load double, ptr %461, align 8, !dbg !2664, !tbaa !188
  %463 = fmul double %462, %460, !dbg !2665
  %handler_result89 = call double @fAddHandlerDouble(double %456, double %463), !dbg !2666
  %464 = fmul double %443, %446, !dbg !2666
  %465 = fdiv double %464, %51, !dbg !2667
  %466 = call double @llvm.fabs.f64(double %465), !dbg !2668
  %467 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !2669
  %468 = load double, ptr %467, align 8, !dbg !2669, !tbaa !188
  %469 = fmul double %466, %468, !dbg !2670
  %handler_result90 = call double @fAddHandlerDouble(double %469, double %handler_result89), !dbg !2671
  %470 = fdiv double %445, %51, !dbg !2671
  %471 = call double @llvm.fabs.f64(double %470), !dbg !2672
  %472 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !2673
  %473 = load double, ptr %472, align 8, !dbg !2673, !tbaa !188
  %474 = fmul double %471, %473, !dbg !2674
  %handler_result91 = call double @fAddHandlerDouble(double %474, double %handler_result90), !dbg !2675
  %475 = fmul double %440, %442, !dbg !2675
  %476 = fmul double %475, %444, !dbg !2676
  %477 = fmul double %476, %446, !dbg !2677
  %478 = fdiv double %477, %51, !dbg !2678
  %479 = call double @llvm.fabs.f64(double %478), !dbg !2679
  %480 = fmul double %handler_result76, %479, !dbg !2680
  %handler_result92 = call double @fAddHandlerDouble(double %480, double %handler_result91), !dbg !2681
  %481 = call double @llvm.fabs.f64(double %448), !dbg !2681
  %482 = fmul double %481, 0x3CC0000000000000, !dbg !2682
  %handler_result93 = call double @fAddHandlerDouble(double %482, double %handler_result92), !dbg !2683
  call void @llvm.dbg.value(metadata double %handler_result93, metadata !2567, metadata !DIExpression()), !dbg !2575
  %483 = icmp eq i32 %403, 0, !dbg !2683
  %484 = icmp eq i32 %438, 0, !dbg !2683
  %485 = select i1 %484, i32 %439, i32 %438, !dbg !2683
  %486 = select i1 %483, i32 %485, i32 %403, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %486, metadata !2553, metadata !DIExpression()), !dbg !2575
  %487 = fmul double %68, %413, !dbg !2684
  %488 = fdiv double %487, %51, !dbg !2685
  call void @llvm.dbg.value(metadata double %488, metadata !2555, metadata !DIExpression()), !dbg !2575
  %489 = fdiv double %68, %51, !dbg !2686
  %490 = call double @llvm.fabs.f64(double %489), !dbg !2687
  %491 = fmul double %490, %handler_result87, !dbg !2688
  %492 = call double @llvm.fabs.f64(double %488), !dbg !2689
  %493 = fmul double %492, 0x3CD0000000000000, !dbg !2690
  %handler_result94 = call double @fAddHandlerDouble(double %493, double %491), !dbg !2691
  call void @llvm.dbg.value(metadata double %handler_result94, metadata !2556, metadata !DIExpression()), !dbg !2575
  %handler_result95 = call double @fAddHandlerDouble(double %190, double %448), !dbg !2692
  %handler_result96 = call double @fSubHandlerDouble(double %handler_result95, double %488), !dbg !2693
  call void @llvm.dbg.value(metadata double %handler_result96, metadata !2558, metadata !DIExpression()), !dbg !2575
  %handler_result97 = call double @fAddHandlerDouble(double %191, double %handler_result93), !dbg !2694
  %handler_result98 = call double @fAddHandlerDouble(double %handler_result94, double %handler_result97), !dbg !2695
  %494 = call double @llvm.fabs.f64(double %190), !dbg !2695
  %handler_result99 = call double @fAddHandlerDouble(double %494, double %481), !dbg !2696
  %handler_result100 = call double @fAddHandlerDouble(double %492, double %handler_result99), !dbg !2697
  %495 = fmul double %handler_result100, 0x3CC0000000000000, !dbg !2697
  %handler_result101 = call double @fAddHandlerDouble(double %495, double %handler_result98), !dbg !2698
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !2559, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 1, metadata !2557, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double undef, metadata !2560, metadata !DIExpression()), !dbg !2575
  br label %496, !dbg !2698

496:                                              ; preds = %527, %376
  %497 = phi double [ %488, %376 ], [ %517, %527 ]
  %498 = phi double [ %handler_result94, %376 ], [ %handler_result108, %527 ]
  %499 = phi double [ %handler_result93, %376 ], [ %handler_result107, %527 ]
  %500 = phi double [ %448, %376 ], [ %514, %527 ]
  %501 = phi i32 [ 1, %376 ], [ %528, %527 ]
  %502 = phi double [ %handler_result96, %376 ], [ %handler_result111, %527 ]
  %503 = phi double [ %handler_result101, %376 ], [ %handler_result112, %527 ]
  call void @llvm.dbg.value(metadata double %497, metadata !2555, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %498, metadata !2556, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %499, metadata !2567, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %500, metadata !2566, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %501, metadata !2557, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %502, metadata !2558, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %503, metadata !2559, metadata !DIExpression()), !dbg !2575
  %504 = add nsw i32 %501, %369, !dbg !2699
  %505 = sitofp i32 %504 to double, !dbg !2700
  call void @llvm.dbg.value(metadata double %505, metadata !2568, metadata !DIExpression()), !dbg !2701
  %506 = add nsw i32 %504, -1, !dbg !2702
  %507 = sitofp i32 %506 to double, !dbg !2703
  call void @llvm.dbg.value(metadata double %507, metadata !2572, metadata !DIExpression()), !dbg !2701
  %handler_result102 = call double @fAddHandlerDouble(double %507, double %0), !dbg !2704
  %508 = fmul double %handler_result102, %2, !dbg !2704
  %handler_result103 = call double @fAddHandlerDouble(double %507, double %1), !dbg !2705
  %509 = fmul double %handler_result103, %505, !dbg !2705
  %510 = fdiv double %508, %509, !dbg !2706
  call void @llvm.dbg.value(metadata double %510, metadata !2573, metadata !DIExpression()), !dbg !2701
  %handler_result104 = call double @fSubHandlerDouble(double %handler_result102, double %51), !dbg !2707
  %511 = fmul double %handler_result104, %2, !dbg !2707
  %handler_result105 = call double @fAddHandlerDouble(double %52, double %507), !dbg !2708
  %handler_result106 = call double @fSubHandlerDouble(double %505, double %51), !dbg !2709
  %512 = fmul double %handler_result106, %handler_result105, !dbg !2709
  %513 = fdiv double %511, %512, !dbg !2710
  call void @llvm.dbg.value(metadata double %513, metadata !2574, metadata !DIExpression()), !dbg !2701
  %514 = fmul double %500, %510, !dbg !2711
  call void @llvm.dbg.value(metadata double %514, metadata !2566, metadata !DIExpression()), !dbg !2575
  %515 = call double @llvm.fabs.f64(double %510), !dbg !2712
  %516 = fmul double %499, %515, !dbg !2713
  %handler_result107 = call double @fAddHandlerDouble(double %499, double %516), !dbg !2714
  call void @llvm.dbg.value(metadata double %handler_result107, metadata !2567, metadata !DIExpression()), !dbg !2575
  %517 = fmul double %497, %513, !dbg !2714
  call void @llvm.dbg.value(metadata double %517, metadata !2555, metadata !DIExpression()), !dbg !2575
  %518 = call double @llvm.fabs.f64(double %513), !dbg !2715
  %519 = fmul double %498, %518, !dbg !2716
  %handler_result108 = call double @fAddHandlerDouble(double %498, double %519), !dbg !2717
  call void @llvm.dbg.value(metadata double %handler_result108, metadata !2556, metadata !DIExpression()), !dbg !2575
  %handler_result109 = call double @fSubHandlerDouble(double %514, double %517), !dbg !2718
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !2560, metadata !DIExpression()), !dbg !2575
  %handler_result110 = call double @fAddHandlerDouble(double %handler_result107, double %handler_result108), !dbg !2719
  call void @llvm.dbg.value(metadata double %handler_result110, metadata !2561, metadata !DIExpression()), !dbg !2575
  %handler_result111 = call double @fAddHandlerDouble(double %502, double %handler_result109), !dbg !2720
  call void @llvm.dbg.value(metadata double %handler_result111, metadata !2558, metadata !DIExpression()), !dbg !2575
  %handler_result112 = call double @fAddHandlerDouble(double %503, double %handler_result110), !dbg !2721
  call void @llvm.dbg.value(metadata double %handler_result112, metadata !2559, metadata !DIExpression()), !dbg !2575
  %520 = call i32 @gsl_finite(double noundef %handler_result109) #7, !dbg !2721
  %521 = icmp eq i32 %520, 0, !dbg !2721
  %522 = call double @llvm.fabs.f64(double %handler_result109), !dbg !2575
  %523 = call double @llvm.fabs.f64(double %handler_result111), !dbg !2575
  %524 = fmul double %523, 0x3CC0000000000000
  %525 = fcmp olt double %522, %524
  %526 = select i1 %521, i1 true, i1 %525, !dbg !2723
  br i1 %526, label %530, label %527, !dbg !2723

527:                                              ; preds = %496
  %528 = add nuw nsw i32 %501, 1, !dbg !2724
  call void @llvm.dbg.value(metadata double %517, metadata !2555, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result108, metadata !2556, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result107, metadata !2567, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %514, metadata !2566, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %528, metadata !2557, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result111, metadata !2558, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result112, metadata !2559, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !2560, metadata !DIExpression()), !dbg !2575
  %529 = icmp eq i32 %528, 2000, !dbg !2725
  br i1 %529, label %530, label %496, !dbg !2698, !llvm.loop !2726

530:                                              ; preds = %527, %496
  %531 = phi i32 [ %501, %496 ], [ 2000, %527 ], !dbg !2728
  call void @llvm.dbg.value(metadata double %handler_result111, metadata !2558, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result112, metadata !2559, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !2560, metadata !DIExpression()), !dbg !2575
  store double %handler_result111, ptr %3, align 8, !dbg !2729, !tbaa !180
  %532 = fmul double %handler_result112, 2.000000e+00, !dbg !2730
  %533 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2731
  %534 = fmul double %522, 2.000000e+00, !dbg !2732
  %handler_result113 = call double @fAddHandlerDouble(double %532, double %534), !dbg !2733
  %535 = add nuw nsw i32 %531, 2, !dbg !2733
  %536 = sitofp i32 %535 to double, !dbg !2733
  %537 = fmul double %536, 0x3CD0000000000000, !dbg !2734
  %538 = fmul double %523, %537, !dbg !2735
  %handler_result114 = call double @fAddHandlerDouble(double %handler_result113, double %538), !dbg !2736
  %539 = fmul double %handler_result114, 2.000000e+00, !dbg !2736
  store double %539, ptr %533, align 8, !dbg !2736, !tbaa !188
  %540 = icmp ugt i32 %531, 1999, !dbg !2737
  br i1 %540, label %541, label %542, !dbg !2739

541:                                              ; preds = %530
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 537, i32 noundef 11) #7, !dbg !2740
  br label %542, !dbg !2740

542:                                              ; preds = %541, %530
  %543 = phi i32 [ 11, %541 ], [ %486, %530 ], !dbg !2743
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %543, metadata !2067, metadata !DIExpression()), !dbg !2130
  br label %781, !dbg !2745

544:                                              ; preds = %361, %359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2746, metadata !DIExpression(), metadata !2068, metadata ptr %5, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2762, metadata !DIExpression(), metadata !2069, metadata ptr %6, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2070, metadata ptr %7, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2770, metadata !DIExpression(), metadata !2071, metadata ptr %8, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2771, metadata !DIExpression(), metadata !2072, metadata ptr %9, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2777, metadata !DIExpression(), metadata !2073, metadata ptr %10, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2778, metadata !DIExpression(), metadata !2074, metadata ptr %11, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2075, metadata ptr %12, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2786, metadata !DIExpression(), metadata !2076, metadata ptr %13, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2787, metadata !DIExpression(), metadata !2077, metadata ptr %14, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2797, metadata !DIExpression(), metadata !2078, metadata ptr %15, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %190, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2815
  call void @llvm.dbg.value(metadata double %191, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %65, metadata !2749, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %0, metadata !2750, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %52, metadata !2751, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %1, metadata !2752, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %51, metadata !2753, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %2, metadata !2754, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %68, metadata !2755, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %3, metadata !2757, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !2758, metadata !DIExpression()), !dbg !2815
  %handler_result179 = call double @callHandler(i32 12, double %2, double %2), !dbg !2818
  call void @llvm.dbg.value(metadata double %handler_result179, metadata !2759, metadata !DIExpression()), !dbg !2815
  %545 = sub nsw i32 1, %65, !dbg !2818
  %546 = icmp sgt i32 %65, 0, !dbg !2818
  %547 = select i1 %546, i32 0, i32 %545, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %547, metadata !2760, metadata !DIExpression()), !dbg !2815
  %548 = sitofp i32 %547 to double, !dbg !2819
  call void @llvm.dbg.value(metadata double %548, metadata !2761, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !2820
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !2821
  %549 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result11, ptr noundef nonnull %5) #7, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %549, metadata !2763, metadata !DIExpression()), !dbg !2815
  %550 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %547, ptr noundef nonnull %6) #7, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %550, metadata !2764, metadata !DIExpression()), !dbg !2815
  %551 = fmul double %51, 0x400921FB54442D18, !dbg !2824
  call void @llvm.dbg.value(metadata double %551, metadata !2765, metadata !DIExpression()), !dbg !2815
  %552 = fcmp une double %551, 0.000000e+00, !dbg !2825
  br i1 %552, label %553, label %555, !dbg !2826

553:                                              ; preds = %544
  %handler_result180 = call double @callHandler(i32 1, double %551, double %551), !dbg !2827
  %554 = fdiv double %551, %handler_result180, !dbg !2827
  br label %555, !dbg !2826

555:                                              ; preds = %553, %544
  %556 = phi double [ %554, %553 ], [ 1.000000e+00, %544 ], !dbg !2826
  call void @llvm.dbg.value(metadata double %556, metadata !2766, metadata !DIExpression()), !dbg !2815
  %557 = and i32 %65, 1, !dbg !2828
  %558 = icmp eq i32 %557, 0, !dbg !2828
  %559 = fneg double %556, !dbg !2829
  %560 = select i1 %558, double %556, double %559, !dbg !2829
  %561 = load double, ptr %5, align 8, !dbg !2830, !tbaa !180
  %562 = fmul double %560, %561, !dbg !2831
  %563 = load double, ptr %6, align 8, !dbg !2832, !tbaa !180
  %564 = fmul double %562, %563, !dbg !2833
  call void @llvm.dbg.value(metadata double %564, metadata !2767, metadata !DIExpression()), !dbg !2815
  %565 = call double @llvm.fabs.f64(double %561), !dbg !2834
  %566 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !2835
  %567 = load double, ptr %566, align 8, !dbg !2835, !tbaa !188
  %568 = fmul double %565, %567, !dbg !2836
  %569 = call double @llvm.fabs.f64(double %563), !dbg !2837
  %570 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2838
  %571 = load double, ptr %570, align 8, !dbg !2838, !tbaa !188
  %572 = fmul double %569, %571, !dbg !2839
  %handler_result115 = call double @fAddHandlerDouble(double %568, double %572), !dbg !2840
  %573 = call double @llvm.fabs.f64(double %564), !dbg !2840
  %574 = fmul double %573, 0x3CC0000000000000, !dbg !2841
  %handler_result116 = call double @fAddHandlerDouble(double %574, double %handler_result115), !dbg !2842
  call void @llvm.dbg.value(metadata double %handler_result116, metadata !2768, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !2842
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !2843
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !2844
  %575 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %548, ptr noundef nonnull %7) #7, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %575, metadata !2772, metadata !DIExpression()), !dbg !2815
  %handler_result117 = call double @fAddHandlerDouble(double %548, double 1.000000e+00), !dbg !2846
  %576 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result117, ptr noundef nonnull %8) #7, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %576, metadata !2773, metadata !DIExpression()), !dbg !2815
  %handler_result118 = call double @fAddHandlerDouble(double %52, double %548), !dbg !2847
  %577 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result118, ptr noundef nonnull %9) #7, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %577, metadata !2774, metadata !DIExpression()), !dbg !2815
  %578 = icmp eq i32 %549, 0, !dbg !2848
  %579 = icmp eq i32 %576, 0, !dbg !2848
  %580 = select i1 %579, i32 %577, i32 %576, !dbg !2848
  %581 = select i1 %578, i32 %580, i32 %549, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %581, metadata !2775, metadata !DIExpression()), !dbg !2815
  %582 = icmp eq i32 %581, 0, !dbg !2849
  %583 = icmp eq i32 %575, 0, !dbg !2849
  %584 = select i1 %583, i32 %550, i32 %575, !dbg !2849
  %585 = select i1 %582, i32 %584, i32 %581, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %585, metadata !2776, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !2850
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !2851
  %handler_result119 = call double @fSubHandlerDouble(double %548, double %51), !dbg !2852
  %586 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %handler_result119, ptr noundef nonnull %10) #7, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %586, metadata !2779, metadata !DIExpression()), !dbg !2815
  %handler_result120 = call double @fSubHandlerDouble(double %handler_result117, double %51), !dbg !2853
  %587 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result120, ptr noundef nonnull %11) #7, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %587, metadata !2780, metadata !DIExpression()), !dbg !2815
  %588 = icmp eq i32 %585, 0, !dbg !2854
  %589 = icmp eq i32 %586, 0, !dbg !2854
  %590 = select i1 %589, i32 %587, i32 %586, !dbg !2854
  %591 = select i1 %588, i32 %590, i32 %585, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %591, metadata !2781, metadata !DIExpression()), !dbg !2815
  %592 = load double, ptr %10, align 8, !dbg !2855, !tbaa !180
  %593 = fmul double %564, %592, !dbg !2856
  %594 = load double, ptr %9, align 8, !dbg !2857, !tbaa !180
  %595 = fmul double %593, %594, !dbg !2858
  %596 = load double, ptr %11, align 8, !dbg !2859, !tbaa !180
  %597 = fmul double %595, %596, !dbg !2860
  call void @llvm.dbg.value(metadata double %597, metadata !2782, metadata !DIExpression()), !dbg !2815
  %598 = call double @llvm.fabs.f64(double %595), !dbg !2861
  %599 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2862
  %600 = load double, ptr %599, align 8, !dbg !2862, !tbaa !188
  %601 = fmul double %598, %600, !dbg !2863
  %602 = fmul double %593, %596, !dbg !2864
  %603 = call double @llvm.fabs.f64(double %602), !dbg !2865
  %604 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2866
  %605 = load double, ptr %604, align 8, !dbg !2866, !tbaa !188
  %606 = fmul double %603, %605, !dbg !2867
  %handler_result121 = call double @fAddHandlerDouble(double %601, double %606), !dbg !2868
  %607 = fmul double %564, %594, !dbg !2868
  %608 = fmul double %607, %596, !dbg !2869
  %609 = call double @llvm.fabs.f64(double %608), !dbg !2870
  %610 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2871
  %611 = load double, ptr %610, align 8, !dbg !2871, !tbaa !188
  %612 = fmul double %609, %611, !dbg !2872
  %handler_result122 = call double @fAddHandlerDouble(double %handler_result121, double %612), !dbg !2873
  %613 = fmul double %592, %594, !dbg !2873
  %614 = fmul double %613, %596, !dbg !2874
  %615 = call double @llvm.fabs.f64(double %614), !dbg !2875
  %616 = fmul double %handler_result116, %615, !dbg !2876
  %handler_result123 = call double @fAddHandlerDouble(double %616, double %handler_result122), !dbg !2877
  %617 = call double @llvm.fabs.f64(double %597), !dbg !2877
  %618 = fmul double %617, 0x3CC0000000000000, !dbg !2878
  %handler_result124 = call double @fAddHandlerDouble(double %618, double %handler_result123), !dbg !2879
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !2783, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !2879
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !2880
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !2881
  %handler_result125 = call double @fAddHandlerDouble(double %548, double %0), !dbg !2882
  %619 = call i32 @gsl_sf_pochrel_e(double noundef %handler_result125, double noundef %66, ptr noundef nonnull %12) #7, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %619, metadata !2788, metadata !DIExpression()), !dbg !2815
  %620 = call i32 @gsl_sf_pochrel_e(double noundef %handler_result120, double noundef %51, ptr noundef nonnull %13) #7, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %620, metadata !2789, metadata !DIExpression()), !dbg !2815
  %handler_result126 = call double @fAddHandlerDouble(double %548, double %1), !dbg !2884
  %621 = call i32 @gsl_sf_pochrel_e(double noundef %handler_result126, double noundef %66, ptr noundef nonnull %14) #7, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %621, metadata !2790, metadata !DIExpression()), !dbg !2815
  %622 = load double, ptr %12, align 8, !dbg !2885, !tbaa !180
  %623 = fmul double %51, %622, !dbg !2886
  %624 = load double, ptr %13, align 8, !dbg !2887, !tbaa !180
  %625 = fmul double %623, %624, !dbg !2888
  call void @llvm.dbg.value(metadata double %625, metadata !2791, metadata !DIExpression()), !dbg !2815
  %626 = call double @llvm.fabs.f64(double %623), !dbg !2889
  %627 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !2890
  %628 = load double, ptr %627, align 8, !dbg !2890, !tbaa !188
  %629 = fmul double %626, %628, !dbg !2891
  %630 = fmul double %51, %624, !dbg !2892
  %631 = call double @llvm.fabs.f64(double %630), !dbg !2892
  %632 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !2893
  %633 = load double, ptr %632, align 8, !dbg !2893, !tbaa !188
  %634 = fmul double %631, %633, !dbg !2894
  %handler_result127 = call double @fAddHandlerDouble(double %629, double %634), !dbg !2895
  %635 = call double @llvm.fabs.f64(double %625), !dbg !2895
  %636 = fmul double %635, 0x3CC0000000000000, !dbg !2896
  %handler_result128 = call double @fAddHandlerDouble(double %636, double %handler_result127), !dbg !2897
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !2792, metadata !DIExpression()), !dbg !2815
  %637 = load double, ptr %14, align 8, !dbg !2897, !tbaa !180
  %handler_result129 = call double @fSubHandlerDouble(double %622, double %637), !dbg !2898
  %handler_result130 = call double @fSubHandlerDouble(double %handler_result129, double %624), !dbg !2899
  %handler_result131 = call double @fAddHandlerDouble(double %625, double %handler_result130), !dbg !2900
  call void @llvm.dbg.value(metadata double %handler_result131, metadata !2793, metadata !DIExpression()), !dbg !2815
  %638 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !2900
  %639 = load double, ptr %638, align 8, !dbg !2900, !tbaa !188
  %handler_result132 = call double @fAddHandlerDouble(double %633, double %639), !dbg !2901
  %handler_result133 = call double @fAddHandlerDouble(double %628, double %handler_result132), !dbg !2902
  %handler_result134 = call double @fAddHandlerDouble(double %handler_result128, double %handler_result133), !dbg !2903
  %640 = call double @llvm.fabs.f64(double %handler_result131), !dbg !2903
  %641 = fmul double %640, 0x3CC0000000000000, !dbg !2904
  %handler_result135 = call double @fAddHandlerDouble(double %handler_result134, double %641), !dbg !2905
  call void @llvm.dbg.value(metadata double %handler_result135, metadata !2794, metadata !DIExpression()), !dbg !2815
  %642 = load double, ptr %7, align 8, !dbg !2905, !tbaa !180
  %643 = fmul double %564, %642, !dbg !2906
  %644 = load double, ptr %9, align 8, !dbg !2907, !tbaa !180
  %645 = fmul double %643, %644, !dbg !2908
  %646 = load double, ptr %8, align 8, !dbg !2909, !tbaa !180
  %647 = fmul double %645, %646, !dbg !2910
  %648 = fmul double %handler_result131, %647, !dbg !2911
  call void @llvm.dbg.value(metadata double %648, metadata !2795, metadata !DIExpression()), !dbg !2815
  %649 = call double @llvm.fabs.f64(double %647), !dbg !2912
  %650 = fmul double %649, %handler_result135, !dbg !2913
  %651 = fmul double %handler_result131, %645, !dbg !2914
  %652 = call double @llvm.fabs.f64(double %651), !dbg !2915
  %653 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !2916
  %654 = load double, ptr %653, align 8, !dbg !2916, !tbaa !188
  %655 = fmul double %654, %652, !dbg !2917
  %handler_result136 = call double @fAddHandlerDouble(double %650, double %655), !dbg !2918
  %656 = fmul double %643, %646, !dbg !2918
  %657 = fmul double %handler_result131, %656, !dbg !2919
  %658 = call double @llvm.fabs.f64(double %657), !dbg !2920
  %659 = load double, ptr %604, align 8, !dbg !2921, !tbaa !188
  %660 = fmul double %659, %658, !dbg !2922
  %handler_result137 = call double @fAddHandlerDouble(double %handler_result136, double %660), !dbg !2923
  %661 = fmul double %564, %644, !dbg !2923
  %662 = fmul double %661, %646, !dbg !2924
  %663 = fmul double %handler_result131, %662, !dbg !2925
  %664 = call double @llvm.fabs.f64(double %663), !dbg !2926
  %665 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2927
  %666 = load double, ptr %665, align 8, !dbg !2927, !tbaa !188
  %667 = fmul double %664, %666, !dbg !2928
  %handler_result138 = call double @fAddHandlerDouble(double %667, double %handler_result137), !dbg !2929
  %668 = fmul double %642, %644, !dbg !2929
  %669 = fmul double %668, %646, !dbg !2930
  %670 = fmul double %handler_result131, %669, !dbg !2931
  %671 = call double @llvm.fabs.f64(double %670), !dbg !2932
  %672 = fmul double %handler_result116, %671, !dbg !2933
  %handler_result139 = call double @fAddHandlerDouble(double %672, double %handler_result138), !dbg !2934
  %673 = call double @llvm.fabs.f64(double %648), !dbg !2934
  %674 = fmul double %673, 0x3CC0000000000000, !dbg !2935
  %handler_result140 = call double @fAddHandlerDouble(double %674, double %handler_result139), !dbg !2936
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !2796, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !2936
  %675 = fmul double %handler_result179, %66, !dbg !2937
  %676 = call i32 @gsl_sf_exprel_e(double noundef %675, ptr noundef nonnull %15) #7, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %676, metadata !2798, metadata !DIExpression()), !dbg !2815
  %677 = load double, ptr %15, align 8, !dbg !2939, !tbaa !180
  %678 = fmul double %handler_result179, %677, !dbg !2940
  call void @llvm.dbg.value(metadata double %678, metadata !2799, metadata !DIExpression()), !dbg !2815
  %679 = fmul double %51, %handler_result179, !dbg !2941
  %680 = call double @llvm.fabs.f64(double %679), !dbg !2942
  %handler_result141 = call double @fAddHandlerDouble(double %680, double 1.000000e+00), !dbg !2943
  %681 = fmul double %handler_result141, 0x3CC0000000000000, !dbg !2943
  %682 = call double @llvm.fabs.f64(double %677), !dbg !2944
  %683 = fmul double %681, %682, !dbg !2945
  %684 = call double @llvm.fabs.f64(double %handler_result179), !dbg !2946
  %685 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !2947
  %686 = load double, ptr %685, align 8, !dbg !2947, !tbaa !188
  %687 = fmul double %684, %686, !dbg !2948
  %handler_result142 = call double @fAddHandlerDouble(double %683, double %687), !dbg !2949
  %688 = call double @llvm.fabs.f64(double %678), !dbg !2949
  %689 = fmul double %688, 0x3CC0000000000000, !dbg !2950
  %handler_result143 = call double @fAddHandlerDouble(double %handler_result142, double %689), !dbg !2951
  call void @llvm.dbg.value(metadata double %handler_result143, metadata !2800, metadata !DIExpression()), !dbg !2815
  %handler_result144 = call double @fAddHandlerDouble(double %190, double %648), !dbg !2952
  %690 = fmul double %597, %678, !dbg !2952
  %handler_result145 = call double @fAddHandlerDouble(double %handler_result144, double %690), !dbg !2953
  call void @llvm.dbg.value(metadata double %handler_result145, metadata !2801, metadata !DIExpression()), !dbg !2815
  %handler_result146 = call double @fAddHandlerDouble(double %191, double %handler_result140), !dbg !2954
  %691 = fmul double %handler_result124, %688, !dbg !2954
  %handler_result147 = call double @fAddHandlerDouble(double %handler_result146, double %691), !dbg !2955
  %692 = fmul double %617, %handler_result143, !dbg !2955
  %handler_result148 = call double @fAddHandlerDouble(double %handler_result147, double %692), !dbg !2956
  %693 = fmul double %handler_result179, %597, !dbg !2956
  %694 = call double @llvm.fabs.f64(double %693), !dbg !2957
  %695 = fmul double %694, %686, !dbg !2958
  %handler_result149 = call double @fAddHandlerDouble(double %695, double %handler_result148), !dbg !2959
  %696 = call double @llvm.fabs.f64(double %190), !dbg !2959
  %handler_result150 = call double @fAddHandlerDouble(double %696, double %673), !dbg !2960
  %697 = call double @llvm.fabs.f64(double %690), !dbg !2960
  %handler_result151 = call double @fAddHandlerDouble(double %handler_result150, double %697), !dbg !2961
  %698 = fmul double %handler_result151, 0x3CC0000000000000, !dbg !2961
  %handler_result152 = call double @fAddHandlerDouble(double %698, double %handler_result149), !dbg !2962
  call void @llvm.dbg.value(metadata double %handler_result152, metadata !2802, metadata !DIExpression()), !dbg !2815
  %699 = sitofp i32 %65 to double, !dbg !2962
  call void @llvm.dbg.value(metadata double %699, metadata !2803, metadata !DIExpression()), !dbg !2815
  %700 = icmp eq i32 %591, 0, !dbg !2963
  br i1 %700, label %701, label %708, !dbg !2963

701:                                              ; preds = %555
  %702 = icmp eq i32 %676, 0, !dbg !2963
  br i1 %702, label %703, label %708, !dbg !2963

703:                                              ; preds = %701
  %704 = icmp eq i32 %621, 0, !dbg !2963
  br i1 %704, label %705, label %708, !dbg !2963

705:                                              ; preds = %703
  %706 = icmp eq i32 %620, 0, !dbg !2963
  %707 = select i1 %706, i32 %619, i32 %620, !dbg !2963
  br label %708, !dbg !2963

708:                                              ; preds = %705, %703, %701, %555
  %709 = phi i32 [ %591, %555 ], [ %676, %701 ], [ %621, %703 ], [ %707, %705 ], !dbg !2963
  call void @llvm.dbg.value(metadata i32 %709, metadata !2781, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 1, metadata !2784, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %597, metadata !2782, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !2783, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %648, metadata !2795, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !2796, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double undef, metadata !2804, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result145, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result152, metadata !2802, metadata !DIExpression()), !dbg !2815
  %handler_result153 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !2964
  br label %710, !dbg !2964

710:                                              ; preds = %764, %708
  %711 = phi double [ %597, %708 ], [ %733, %764 ]
  %712 = phi double [ %handler_result124, %708 ], [ %handler_result163, %764 ]
  %713 = phi i32 [ 1, %708 ], [ %765, %764 ]
  %714 = phi double [ %648, %708 ], [ %handler_result164, %764 ]
  %715 = phi double [ %handler_result140, %708 ], [ %handler_result167, %764 ]
  %716 = phi double [ %handler_result145, %708 ], [ %handler_result172, %764 ]
  %717 = phi double [ %handler_result152, %708 ], [ %handler_result173, %764 ]
  call void @llvm.dbg.value(metadata double %711, metadata !2782, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %712, metadata !2783, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %713, metadata !2784, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %714, metadata !2795, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %715, metadata !2796, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %716, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %717, metadata !2802, metadata !DIExpression()), !dbg !2815
  %718 = add nsw i32 %713, %547, !dbg !2965
  %719 = sitofp i32 %718 to double, !dbg !2966
  call void @llvm.dbg.value(metadata double %719, metadata !2806, metadata !DIExpression()), !dbg !2967
  %720 = add nsw i32 %718, -1, !dbg !2968
  %721 = sitofp i32 %720 to double, !dbg !2969
  call void @llvm.dbg.value(metadata double %721, metadata !2810, metadata !DIExpression()), !dbg !2967
  %722 = fmul double %719, 2.000000e+00, !dbg !2970
  %handler_result154 = call double @fAddHandlerDouble(double %722, double %699), !dbg !2971
  %handler_result155 = call double @fAddHandlerDouble(double %handler_result154, double -1.000000e+00), !dbg !2972
  %723 = fmul double %handler_result153, %handler_result155, !dbg !2972
  %handler_result156 = call double @fSubHandlerDouble(double %719, double %51), !dbg !2973
  %724 = fmul double %handler_result156, %719, !dbg !2973
  %handler_result157 = call double @fAddHandlerDouble(double %724, double %723), !dbg !2974
  call void @llvm.dbg.value(metadata double %handler_result157, metadata !2811, metadata !DIExpression()), !dbg !2967
  %handler_result158 = call double @fAddHandlerDouble(double %721, double %0), !dbg !2975
  %handler_result159 = call double @fSubHandlerDouble(double %handler_result158, double %51), !dbg !2976
  %725 = fmul double %handler_result159, %2, !dbg !2976
  %handler_result160 = call double @fAddHandlerDouble(double %699, double %721), !dbg !2977
  %726 = fmul double %handler_result156, %handler_result160, !dbg !2977
  %727 = fdiv double %725, %726, !dbg !2978
  call void @llvm.dbg.value(metadata double %727, metadata !2812, metadata !DIExpression()), !dbg !2967
  %728 = fmul double %handler_result158, %2, !dbg !2979
  %handler_result161 = call double @fAddHandlerDouble(double %721, double %1), !dbg !2980
  %729 = fmul double %handler_result161, %719, !dbg !2980
  %730 = fdiv double %728, %729, !dbg !2981
  call void @llvm.dbg.value(metadata double %730, metadata !2813, metadata !DIExpression()), !dbg !2967
  %731 = fmul double %729, %handler_result159, !dbg !2982
  %732 = fdiv double %handler_result157, %731, !dbg !2983
  call void @llvm.dbg.value(metadata double %732, metadata !2814, metadata !DIExpression()), !dbg !2967
  %733 = fmul double %711, %727, !dbg !2984
  call void @llvm.dbg.value(metadata double %733, metadata !2782, metadata !DIExpression()), !dbg !2815
  %734 = call double @llvm.fabs.f64(double %727), !dbg !2985
  %735 = fmul double %712, %734, !dbg !2986
  %736 = call double @llvm.fabs.f64(double %733), !dbg !2987
  %737 = fmul double %736, 8.000000e+00, !dbg !2988
  %738 = fmul double %737, 2.000000e+00, !dbg !2989
  %739 = fmul double %738, 0x3CB0000000000000, !dbg !2990
  %handler_result162 = call double @fAddHandlerDouble(double %735, double %739), !dbg !2991
  %handler_result163 = call double @fAddHandlerDouble(double %712, double %handler_result162), !dbg !2992
  call void @llvm.dbg.value(metadata double %handler_result163, metadata !2783, metadata !DIExpression()), !dbg !2815
  %740 = fmul double %714, %730, !dbg !2992
  %741 = fmul double %732, %733, !dbg !2993
  %handler_result164 = call double @fSubHandlerDouble(double %740, double %741), !dbg !2994
  call void @llvm.dbg.value(metadata double %handler_result164, metadata !2795, metadata !DIExpression()), !dbg !2815
  %742 = call double @llvm.fabs.f64(double %730), !dbg !2994
  %743 = fmul double %715, %742, !dbg !2995
  %744 = call double @llvm.fabs.f64(double %732), !dbg !2996
  %745 = fmul double %744, %handler_result163, !dbg !2997
  %handler_result165 = call double @fAddHandlerDouble(double %743, double %745), !dbg !2998
  %746 = call double @llvm.fabs.f64(double %handler_result164), !dbg !2998
  %747 = fmul double %746, 8.000000e+00, !dbg !2999
  %748 = fmul double %747, 2.000000e+00, !dbg !3000
  %749 = fmul double %748, 0x3CB0000000000000, !dbg !3001
  %handler_result166 = call double @fAddHandlerDouble(double %749, double %handler_result165), !dbg !3002
  %750 = call double @llvm.fabs.f64(double %741), !dbg !3002
  %751 = fmul double %750, 1.600000e+01, !dbg !3003
  %752 = fmul double %751, 2.000000e+00, !dbg !3004
  %753 = fmul double %752, 0x3CB0000000000000, !dbg !3005
  %handler_result167 = call double @fAddHandlerDouble(double %753, double %handler_result166), !dbg !3006
  call void @llvm.dbg.value(metadata double %handler_result167, metadata !2796, metadata !DIExpression()), !dbg !2815
  %754 = fmul double %678, %733, !dbg !3006
  %handler_result168 = call double @fAddHandlerDouble(double %754, double %handler_result164), !dbg !3007
  call void @llvm.dbg.value(metadata double %handler_result168, metadata !2804, metadata !DIExpression()), !dbg !2815
  %755 = fmul double %688, %handler_result163, !dbg !3007
  %handler_result169 = call double @fAddHandlerDouble(double %755, double %handler_result167), !dbg !3008
  call void @llvm.dbg.value(metadata double %handler_result169, metadata !2805, metadata !DIExpression()), !dbg !2815
  %756 = fmul double %handler_result179, %733, !dbg !3008
  %757 = call double @llvm.fabs.f64(double %756), !dbg !3009
  %758 = fmul double %686, %757, !dbg !3010
  %handler_result170 = call double @fAddHandlerDouble(double %758, double %handler_result169), !dbg !3011
  call void @llvm.dbg.value(metadata double %handler_result170, metadata !2805, metadata !DIExpression()), !dbg !2815
  %759 = fmul double %handler_result143, %736, !dbg !3011
  %handler_result171 = call double @fAddHandlerDouble(double %759, double %handler_result170), !dbg !3012
  call void @llvm.dbg.value(metadata double %handler_result171, metadata !2805, metadata !DIExpression()), !dbg !2815
  %handler_result172 = call double @fAddHandlerDouble(double %716, double %handler_result168), !dbg !3013
  call void @llvm.dbg.value(metadata double %handler_result172, metadata !2801, metadata !DIExpression()), !dbg !2815
  %handler_result173 = call double @fAddHandlerDouble(double %717, double %handler_result171), !dbg !3014
  call void @llvm.dbg.value(metadata double %handler_result173, metadata !2802, metadata !DIExpression()), !dbg !2815
  %760 = call double @llvm.fabs.f64(double %handler_result168), !dbg !3014
  %761 = call double @llvm.fabs.f64(double %handler_result172), !dbg !3016
  %762 = fmul double %761, 0x3CC0000000000000, !dbg !3017
  %763 = fcmp olt double %760, %762, !dbg !3018
  br i1 %763, label %767, label %764

764:                                              ; preds = %710
  %765 = add nuw nsw i32 %713, 1, !dbg !3019
  call void @llvm.dbg.value(metadata double %733, metadata !2782, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result163, metadata !2783, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %765, metadata !2784, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result164, metadata !2795, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result167, metadata !2796, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result168, metadata !2804, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result172, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result173, metadata !2802, metadata !DIExpression()), !dbg !2815
  %766 = icmp eq i32 %765, 2000, !dbg !3020
  br i1 %766, label %767, label %710, !dbg !2964, !llvm.loop !3021

767:                                              ; preds = %764, %710
  %768 = phi i32 [ %713, %710 ], [ 2000, %764 ], !dbg !3023
  call void @llvm.dbg.value(metadata double %handler_result168, metadata !2804, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result172, metadata !2801, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata double %handler_result173, metadata !2802, metadata !DIExpression()), !dbg !2815
  store double %handler_result172, ptr %3, align 8, !dbg !3024, !tbaa !180
  %769 = fmul double %handler_result173, 2.000000e+00, !dbg !3025
  %770 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3026
  %771 = fmul double %760, 2.000000e+00, !dbg !3027
  %handler_result174 = call double @fAddHandlerDouble(double %771, double %769), !dbg !3028
  %772 = add nuw nsw i32 %768, 2, !dbg !3028
  %773 = sitofp i32 %772 to double, !dbg !3028
  %774 = fmul double %773, 0x3CD0000000000000, !dbg !3029
  %775 = fmul double %761, %774, !dbg !3030
  %handler_result175 = call double @fAddHandlerDouble(double %handler_result174, double %775), !dbg !3031
  %776 = fmul double %handler_result175, 2.000000e+00, !dbg !3031
  store double %776, ptr %770, align 8, !dbg !3031, !tbaa !188
  %777 = icmp ugt i32 %768, 1999, !dbg !3032
  br i1 %777, label %778, label %779, !dbg !3034

778:                                              ; preds = %767
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 664, i32 noundef 11) #7, !dbg !3035
  br label %779, !dbg !3035

779:                                              ; preds = %778, %767
  %780 = phi i32 [ 11, %778 ], [ %709, %767 ], !dbg !3038
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !3039
  tail call void @llvm.dbg.value(metadata i32 %780, metadata !2067, metadata !DIExpression()), !dbg !2130
  br label %781

781:                                              ; preds = %779, %542, %357
  %782 = phi i32 [ %358, %357 ], [ %543, %542 ], [ %780, %779 ], !dbg !3040
  tail call void @llvm.dbg.value(metadata i32 %782, metadata !2067, metadata !DIExpression()), !dbg !2130
  %783 = icmp eq i32 %192, 0, !dbg !3041
  %784 = select i1 %783, i32 %782, i32 %192, !dbg !3041
  br label %785

785:                                              ; preds = %781, %55
  %786 = phi i32 [ %58, %55 ], [ %784, %781 ], !dbg !3042
  ret i32 %786, !dbg !3043
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !dbg !3044 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3062, metadata !DIExpression(), metadata !3070, metadata ptr %6, metadata !DIExpression()), !dbg !3071
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3072
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3063, metadata !DIExpression(), metadata !3072, metadata ptr %7, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %0, metadata !3049, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata double %1, metadata !3050, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata double %2, metadata !3051, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3052, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3053, metadata !DIExpression()), !dbg !3073
  %8 = fcmp oeq double %0, 0.000000e+00, !dbg !3074
  br i1 %8, label %9, label %11, !dbg !3075

9:                                                ; preds = %5
  store double 1.000000e+00, ptr %3, align 8, !dbg !3076, !tbaa !180
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3078
  store double 0.000000e+00, ptr %10, align 8, !dbg !3079, !tbaa !188
  store double 0.000000e+00, ptr %4, align 8, !dbg !3080, !tbaa !553
  br label %65, !dbg !3081

11:                                               ; preds = %5
  %12 = fcmp ogt double %1, 5.000000e+03, !dbg !3082
  br i1 %12, label %13, label %17, !dbg !3083

13:                                               ; preds = %11
  %14 = tail call double @llvm.fabs.f64(double %1), !dbg !3084
  %15 = fmul double %14, 9.000000e-01, !dbg !3085
  %16 = fcmp ogt double %15, %2, !dbg !3086
  br i1 %16, label %23, label %17, !dbg !3087

17:                                               ; preds = %13, %11
  %18 = fcmp ogt double %1, 5.000000e+02, !dbg !3088
  br i1 %18, label %19, label %27, !dbg !3089

19:                                               ; preds = %17
  %20 = tail call double @llvm.fabs.f64(double %1), !dbg !3090
  %21 = fmul double %20, 5.000000e-01, !dbg !3091
  %22 = fcmp ogt double %21, %2, !dbg !3092
  br i1 %22, label %23, label %27, !dbg !3093

23:                                               ; preds = %19, %13
  %24 = tail call i32 @gsl_sf_hyperg_U_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) #7, !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !3054, metadata !DIExpression()), !dbg !3095
  %25 = icmp eq i32 %24, 16, !dbg !3096
  %26 = select i1 %25, i32 0, i32 %24, !dbg !3098
  br label %65

27:                                               ; preds = %19, %17
  %28 = fcmp ogt double %1, 1.500000e+01, !dbg !3099
  br i1 %28, label %29, label %63, !dbg !3100

29:                                               ; preds = %27
  %30 = tail call double @llvm.floor.f64(double %1), !dbg !3101
  %handler_result = call double @fSubHandlerDouble(double %1, double %30), !dbg !3102
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !3058, metadata !DIExpression()), !dbg !3071
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !3103
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !3061, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !3103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !3104
  %31 = call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %handler_result1, double noundef %2, ptr noundef nonnull %6), !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !3064, metadata !DIExpression()), !dbg !3071
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 1.000000e+00), !dbg !3106
  %32 = call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %handler_result2, double noundef %2, ptr noundef nonnull %7), !dbg !3106
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !3065, metadata !DIExpression()), !dbg !3071
  %33 = load double, ptr %6, align 8, !dbg !3107, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %33, metadata !3066, metadata !DIExpression()), !dbg !3071
  %34 = load double, ptr %7, align 8, !dbg !3108, !tbaa !180
  tail call void @llvm.dbg.value(metadata double %34, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !3069, metadata !DIExpression()), !dbg !3071
  %handler_result3 = call double @fAddHandlerDouble(double %1, double -1.000000e-01), !dbg !3109
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !3069, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %34, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %33, metadata !3066, metadata !DIExpression()), !dbg !3071
  %35 = fcmp olt double %handler_result2, %handler_result3, !dbg !3109
  br i1 %35, label %36, label %45, !dbg !3112

36:                                               ; preds = %29
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !3112
  br label %37, !dbg !3112

37:                                               ; preds = %37, %36
  %38 = phi double [ %handler_result2, %36 ], [ %handler_result9, %37 ]
  %39 = phi double [ %34, %36 ], [ %43, %37 ]
  %40 = phi double [ %33, %36 ], [ %39, %37 ]
  tail call void @llvm.dbg.value(metadata double %38, metadata !3069, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %39, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %40, metadata !3066, metadata !DIExpression()), !dbg !3071
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %38), !dbg !3113
  %41 = fmul double %40, %handler_result5, !dbg !3113
  %handler_result6 = call double @fAddHandlerDouble(double %38, double %2), !dbg !3115
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double -1.000000e+00), !dbg !3116
  %42 = fmul double %39, %handler_result7, !dbg !3116
  %handler_result8 = call double @fAddHandlerDouble(double %41, double %42), !dbg !3117
  %43 = fdiv double %handler_result8, %2, !dbg !3117
  tail call void @llvm.dbg.value(metadata double %43, metadata !3068, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %39, metadata !3066, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata double %43, metadata !3067, metadata !DIExpression()), !dbg !3071
  %handler_result9 = call double @fAddHandlerDouble(double %38, double 1.000000e+00), !dbg !3109
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !3069, metadata !DIExpression()), !dbg !3071
  %44 = fcmp olt double %handler_result9, %handler_result3, !dbg !3109
  br i1 %44, label %37, label %45, !dbg !3112, !llvm.loop !3118

45:                                               ; preds = %37, %29
  %46 = phi double [ %34, %29 ], [ %43, %37 ], !dbg !3071
  store double %46, ptr %3, align 8, !dbg !3120, !tbaa !180
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3121
  %48 = load double, ptr %47, align 8, !dbg !3121, !tbaa !188
  %49 = fdiv double %48, %33, !dbg !3122
  %50 = call double @llvm.fabs.f64(double %49), !dbg !3123
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !3124
  %52 = load double, ptr %51, align 8, !dbg !3124, !tbaa !188
  %53 = fdiv double %52, %34, !dbg !3125
  %54 = call double @llvm.fabs.f64(double %53), !dbg !3126
  %handler_result10 = call double @fAddHandlerDouble(double %50, double %54), !dbg !3127
  %55 = call double @llvm.fabs.f64(double %46), !dbg !3127
  %56 = fmul double %55, %handler_result10, !dbg !3128
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3129
  %handler_result11 = call double @fSubHandlerDouble(double %1, double %handler_result1), !dbg !3130
  %58 = call double @llvm.fabs.f64(double %handler_result11), !dbg !3130
  %handler_result12 = call double @fAddHandlerDouble(double %58, double 1.000000e+00), !dbg !3131
  %59 = fmul double %handler_result12, 0x3CC0000000000000, !dbg !3131
  %60 = fmul double %59, %55, !dbg !3132
  %handler_result13 = call double @fAddHandlerDouble(double %60, double %56), !dbg !3133
  store double %handler_result13, ptr %57, align 8, !dbg !3133, !tbaa !188
  store double 0.000000e+00, ptr %4, align 8, !dbg !3134, !tbaa !553
  %61 = icmp eq i32 %31, 0, !dbg !3135
  %62 = select i1 %61, i32 %32, i32 %31, !dbg !3135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !3136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !3136
  br label %65

63:                                               ; preds = %27
  store double 0.000000e+00, ptr %4, align 8, !dbg !3137, !tbaa !553
  %64 = tail call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !3139
  br label %65, !dbg !3140

65:                                               ; preds = %63, %45, %23, %9
  %66 = phi i32 [ 0, %9 ], [ %26, %23 ], [ %62, %45 ], [ %64, %63 ], !dbg !3141
  ret i32 %66, !dbg !3142
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3143 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !3144 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !3149, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %1, metadata !3150, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %2, metadata !3152, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3153, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3154, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !3155, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !3156, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3157, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3158, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3159, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3160, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3161, metadata !DIExpression()), !dbg !3172
  %handler_result = call double @fAddHandlerDouble(double %0, double 0.000000e+00), !dbg !3173
  tail call void @llvm.dbg.value(metadata double poison, metadata !3162, metadata !DIExpression()), !dbg !3172
  %6 = fmul double %0, 2.000000e+00, !dbg !3173
  %handler_result1 = call double @fSubHandlerDouble(double %1, double %6), !dbg !3174
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %2), !dbg !3175
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -2.000000e+00), !dbg !3176
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !3163, metadata !DIExpression()), !dbg !3172
  %7 = fmul double %handler_result3, 0.000000e+00, !dbg !3176
  %handler_result4 = call double @fSubHandlerDouble(double %7, double %handler_result), !dbg !3177
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !3164, metadata !DIExpression()), !dbg !3172
  %8 = fmul double %handler_result, 0.000000e+00, !dbg !3177
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result3, double %8), !dbg !3178
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !3165, metadata !DIExpression()), !dbg !3172
  %9 = fdiv double %handler_result4, %handler_result5, !dbg !3178
  tail call void @llvm.dbg.value(metadata double %9, metadata !3168, metadata !DIExpression()), !dbg !3172
  br label %10, !dbg !3179

10:                                               ; preds = %39, %5
  %11 = phi double [ 1.000000e+00, %5 ], [ %40, %39 ], !dbg !3172
  %12 = phi double [ 0.000000e+00, %5 ], [ %41, %39 ], !dbg !3172
  %13 = phi double [ %handler_result4, %5 ], [ %42, %39 ], !dbg !3172
  %14 = phi double [ %handler_result5, %5 ], [ %43, %39 ], !dbg !3172
  %15 = phi double [ %9, %5 ], [ %44, %39 ], !dbg !3172
  %16 = phi i32 [ 1, %5 ], [ %20, %39 ], !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3157, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %15, metadata !3168, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %14, metadata !3165, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %13, metadata !3164, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %12, metadata !3160, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %11, metadata !3161, metadata !DIExpression()), !dbg !3172
  %17 = icmp eq i32 %16, 20000, !dbg !3180
  br i1 %17, label %18, label %19, !dbg !3179

18:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !3157, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %15, metadata !3168, metadata !DIExpression()), !dbg !3172
  store double %15, ptr %3, align 8, !dbg !3181, !tbaa !553
  store i32 20000, ptr %4, align 4, !dbg !3182, !tbaa !652
  br label %50, !dbg !3183

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %16, 1, !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3157, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %12, metadata !3158, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %11, metadata !3159, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %13, metadata !3160, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %14, metadata !3161, metadata !DIExpression()), !dbg !3172
  %21 = sitofp i32 %20 to double, !dbg !3185
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result, double %21), !dbg !3186
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result6, double %1), !dbg !3187
  %22 = fneg double %handler_result7, !dbg !3187
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double -1.000000e+00), !dbg !3188
  %23 = fmul double %handler_result8, %22, !dbg !3188
  tail call void @llvm.dbg.value(metadata double %23, metadata !3166, metadata !DIExpression()), !dbg !3172
  %24 = fmul double %21, 2.000000e+00, !dbg !3189
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result2, double %24), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !3167, metadata !DIExpression()), !dbg !3172
  %25 = fmul double %13, %handler_result9, !dbg !3190
  %26 = fmul double %12, %23, !dbg !3191
  %handler_result10 = call double @fAddHandlerDouble(double %25, double %26), !dbg !3192
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !3164, metadata !DIExpression()), !dbg !3172
  %27 = fmul double %14, %handler_result9, !dbg !3192
  %28 = fmul double %11, %23, !dbg !3193
  %handler_result11 = call double @fAddHandlerDouble(double %27, double %28), !dbg !3194
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !3165, metadata !DIExpression()), !dbg !3172
  %29 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !3194
  %30 = fcmp ogt double %29, 0x5FEFFFFFFFFFFFFF, !dbg !3196
  %31 = tail call double @llvm.fabs.f64(double %handler_result11)
  %32 = fcmp ogt double %31, 0x5FEFFFFFFFFFFFFF
  %33 = select i1 %30, i1 true, i1 %32, !dbg !3197
  br i1 %33, label %34, label %39, !dbg !3197

34:                                               ; preds = %19
  %35 = fdiv double %handler_result10, 0x5FEFFFFFFFFFFFFF, !dbg !3198
  tail call void @llvm.dbg.value(metadata double %35, metadata !3164, metadata !DIExpression()), !dbg !3172
  %36 = fdiv double %handler_result11, 0x5FEFFFFFFFFFFFFF, !dbg !3200
  tail call void @llvm.dbg.value(metadata double %36, metadata !3165, metadata !DIExpression()), !dbg !3172
  %37 = fdiv double %13, 0x5FEFFFFFFFFFFFFF, !dbg !3201
  tail call void @llvm.dbg.value(metadata double %37, metadata !3160, metadata !DIExpression()), !dbg !3172
  %38 = fdiv double %14, 0x5FEFFFFFFFFFFFFF, !dbg !3202
  tail call void @llvm.dbg.value(metadata double %38, metadata !3161, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double poison, metadata !3158, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double poison, metadata !3159, metadata !DIExpression()), !dbg !3172
  br label %39, !dbg !3203

39:                                               ; preds = %34, %19
  %40 = phi double [ %38, %34 ], [ %14, %19 ], !dbg !3204
  %41 = phi double [ %37, %34 ], [ %13, %19 ], !dbg !3204
  %42 = phi double [ %35, %34 ], [ %handler_result10, %19 ], !dbg !3204
  %43 = phi double [ %36, %34 ], [ %handler_result11, %19 ], !dbg !3204
  tail call void @llvm.dbg.value(metadata double %43, metadata !3165, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %42, metadata !3164, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %41, metadata !3160, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %40, metadata !3161, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %15, metadata !3169, metadata !DIExpression()), !dbg !3204
  %44 = fdiv double %42, %43, !dbg !3205
  tail call void @llvm.dbg.value(metadata double %44, metadata !3168, metadata !DIExpression()), !dbg !3172
  %45 = fdiv double %15, %44, !dbg !3206
  tail call void @llvm.dbg.value(metadata double %45, metadata !3171, metadata !DIExpression()), !dbg !3204
  %handler_result12 = call double @fAddHandlerDouble(double %45, double -1.000000e+00), !dbg !3207
  %46 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !3207
  %47 = fcmp olt double %46, 0x3CE4000000000000, !dbg !3209
  br i1 %47, label %48, label %10

48:                                               ; preds = %39
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3157, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata double %44, metadata !3168, metadata !DIExpression()), !dbg !3172
  store double %44, ptr %3, align 8, !dbg !3181, !tbaa !553
  store i32 %20, ptr %4, align 4, !dbg !3182, !tbaa !652
  %49 = icmp eq i32 %20, 20000, !dbg !3210
  br i1 %49, label %50, label %51, !dbg !3183

50:                                               ; preds = %48, %18
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef 11) #7, !dbg !3212
  br label %51, !dbg !3212

51:                                               ; preds = %50, %48
  %52 = phi i32 [ 11, %50 ], [ 0, %48 ], !dbg !3214
  ret i32 %52, !dbg !3215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @hyperg_lnU_beq2a(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !3216 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3226, metadata !DIExpression(), metadata !3227, metadata ptr %4, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata double %0, metadata !3220, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata double %1, metadata !3221, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3222, metadata !DIExpression()), !dbg !3228
  %handler_result8 = call double @callHandler(i32 12, double %1, double %1), !dbg !3229
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !3223, metadata !DIExpression()), !dbg !3228
  %handler_result = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !3229
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !3224, metadata !DIExpression()), !dbg !3228
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 0xBFF250D048E7A1BD), !dbg !3230
  %5 = fmul double %handler_result1, 5.000000e-01, !dbg !3230
  %6 = fmul double %handler_result, %handler_result8, !dbg !3231
  %handler_result2 = call double @fSubHandlerDouble(double %5, double %6), !dbg !3232
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !3225, metadata !DIExpression()), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !3232
  %7 = fmul double %1, 5.000000e-01, !dbg !3233
  %8 = call i32 @gsl_sf_bessel_lnKnu_e(double noundef %handler_result, double noundef %7, ptr noundef nonnull %4) #7, !dbg !3234
  %9 = load double, ptr %4, align 8, !dbg !3235, !tbaa !180
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %9), !dbg !3236
  store double %handler_result3, ptr %2, align 8, !dbg !3236, !tbaa !180
  %10 = call double @llvm.fabs.f64(double %7), !dbg !3237
  %handler_result4 = call double @fAddHandlerDouble(double %10, double 0x3FE250D048E7A1BD), !dbg !3238
  %11 = call double @llvm.fabs.f64(double %6), !dbg !3238
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %11), !dbg !3239
  %12 = fmul double %handler_result5, 0x3CC0000000000000, !dbg !3239
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3240
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !3241
  %15 = load double, ptr %14, align 8, !dbg !3241, !tbaa !188
  %handler_result6 = call double @fAddHandlerDouble(double %12, double %15), !dbg !3242
  %16 = call double @llvm.fabs.f64(double %handler_result3), !dbg !3242
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !3243
  %handler_result7 = call double @fAddHandlerDouble(double %17, double %handler_result6), !dbg !3244
  store double %handler_result7, ptr %13, align 8, !dbg !3244, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !3245
  ret void, !dbg !3246
}

declare !dbg !3247 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3249 i32 @gsl_sf_exp_err_e10_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3250 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3253 i32 @gsl_sf_poch_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3255 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3256 i32 @gsl_sf_gammainv_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3257 double @sin(double noundef) local_unnamed_addr #3

declare !dbg !3258 double @gsl_sf_poch(double noundef, double noundef) local_unnamed_addr #1

declare !dbg !3261 double @gsl_sf_gammainv(double noundef) local_unnamed_addr #1

declare !dbg !3264 i32 @gsl_finite(double noundef) local_unnamed_addr #1

declare !dbg !3268 i32 @gsl_sf_pochrel_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3269 i32 @gsl_sf_exprel_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3270 i32 @gsl_sf_hyperg_U_large_b_e(double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3272 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3283, metadata !DIExpression(), metadata !3285, metadata ptr %5, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.dbg.value(metadata double %0, metadata !3274, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata double %1, metadata !3275, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata double %2, metadata !3276, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3277, metadata !DIExpression()), !dbg !3287
  %6 = fcmp oeq double %0, -1.000000e+00, !dbg !3288
  br i1 %6, label %7, label %14, !dbg !3289

7:                                                ; preds = %4
  %handler_result = call double @fSubHandlerDouble(double %2, double %1), !dbg !3290
  store double %handler_result, ptr %3, align 8, !dbg !3290, !tbaa !180
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !3292
  %9 = tail call double @llvm.fabs.f64(double %2), !dbg !3293
  %handler_result1 = call double @fAddHandlerDouble(double %8, double %9), !dbg !3294
  %10 = fmul double %handler_result1, 0x3CC0000000000000, !dbg !3294
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3295
  %12 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !3296
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !3297
  %handler_result2 = call double @fAddHandlerDouble(double %10, double %13), !dbg !3298
  store double %handler_result2, ptr %11, align 8, !dbg !3298, !tbaa !188
  br label %47, !dbg !3299

14:                                               ; preds = %4
  %15 = fcmp oeq double %0, 0.000000e+00, !dbg !3300
  br i1 %15, label %16, label %18, !dbg !3301

16:                                               ; preds = %14
  store double 1.000000e+00, ptr %3, align 8, !dbg !3302, !tbaa !180
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3304
  store double 0.000000e+00, ptr %17, align 8, !dbg !3305, !tbaa !188
  br label %47, !dbg !3306

18:                                               ; preds = %14
  %19 = tail call double @llvm.fabs.f64(double %0), !dbg !3307
  tail call void @llvm.dbg.value(metadata double %19, metadata !469, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !3308
  %20 = fcmp ogt double %19, 1.000000e+00, !dbg !3310
  %21 = select i1 %20, double %19, double 1.000000e+00, !dbg !3310
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !3307
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %1), !dbg !3307
  %22 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !3307
  tail call void @llvm.dbg.value(metadata double %22, metadata !469, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !475, metadata !DIExpression()), !dbg !3311
  %23 = fcmp ogt double %22, 1.000000e+00, !dbg !3313
  %24 = select i1 %23, double %22, double 1.000000e+00, !dbg !3313
  %25 = fmul double %21, %24, !dbg !3307
  %26 = tail call double @llvm.fabs.f64(double %2), !dbg !3307
  %27 = fmul double %26, 0x3FEFAE147AE147AE, !dbg !3307
  %28 = fcmp olt double %25, %27, !dbg !3307
  br i1 %28, label %29, label %45, !dbg !3314

29:                                               ; preds = %18
  %30 = fneg double %0, !dbg !3315
  %31 = tail call double @pow(double noundef %2, double noundef %30) #7, !dbg !3316
  tail call void @llvm.dbg.value(metadata double %31, metadata !3278, metadata !DIExpression()), !dbg !3286
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !3317
  %32 = call fastcc i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !3318, !range !489
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !3284, metadata !DIExpression()), !dbg !3286
  %33 = load double, ptr %5, align 8, !dbg !3319, !tbaa !180
  %34 = fmul double %31, %33, !dbg !3320
  store double %34, ptr %3, align 8, !dbg !3321, !tbaa !180
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3322
  %36 = load double, ptr %35, align 8, !dbg !3322, !tbaa !188
  %37 = fmul double %31, %36, !dbg !3323
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3324
  %39 = tail call double @llvm.fabs.f64(double %33), !dbg !3325
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !3326
  %41 = fmul double %19, %40, !dbg !3327
  %42 = fmul double %31, %41, !dbg !3328
  %handler_result5 = call double @fAddHandlerDouble(double %37, double %42), !dbg !3329
  %43 = tail call double @llvm.fabs.f64(double %34), !dbg !3329
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !3330
  %handler_result6 = call double @fAddHandlerDouble(double %44, double %handler_result5), !dbg !3331
  store double %handler_result6, ptr %38, align 8, !dbg !3331, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !3332
  br label %47

45:                                               ; preds = %18
  %46 = tail call fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !3333
  br label %47, !dbg !3335

47:                                               ; preds = %45, %29, %16, %7
  %48 = phi i32 [ 0, %7 ], [ 0, %16 ], [ %32, %29 ], [ %46, %45 ], !dbg !3336
  ret i32 %48, !dbg !3337
}

declare !dbg !3338 i32 @gsl_sf_bessel_lnKnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3340 i32 @gsl_sf_hyperg_1F1_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3342 i32 @gsl_sf_laguerre_n_e(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3346 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1656, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_U.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "833b28b32fc0013eac5fb5ad486b17bd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1656, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1781, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 40)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1786, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 36)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1002, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 6)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1131, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 10)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1548, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1581, type: !14, isLocal: true, isDefinition: true)
!36 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, retainedTypes: !77, globals: !79, splitDebugInlining: false, nameTableKind: None)
!37 = !{!38}
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 39, baseType: !40, size: 32, elements: !41)
!39 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!42 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!43 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!44 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!45 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!46 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!47 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!48 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!49 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!50 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!51 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!52 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!53 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!54 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!55 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!56 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!57 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!58 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!59 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!60 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!61 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!62 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!63 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!64 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!65 = !DIEnumerator(name: "GSL_ESING", value: 21)
!66 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!67 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!68 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!69 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!70 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!71 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!72 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!73 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!74 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!75 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!76 = !DIEnumerator(name: "GSL_EOF", value: 32)
!77 = !{!78, !40}
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !{!0, !7, !12, !17, !22, !27, !32, !34}
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 2}
!86 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!87 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!88 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int_e10_e", scope: !2, file: !2, line: 1650, type: !89, scopeLine: 1652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !101)
!89 = !DISubroutineType(types: !90)
!90 = !{!40, !91, !91, !92, !93}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !95, line: 51, baseType: !96)
!95 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !95, line: 46, size: 192, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !95, line: 47, baseType: !78, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !96, file: !95, line: 48, baseType: !78, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !96, file: !95, line: 49, baseType: !40, size: 32, offset: 128)
!101 = !{!102, !103, !104, !105, !106, !113, !114, !115, !116, !117, !118, !119}
!102 = !DILocalVariable(name: "a", arg: 1, scope: !88, file: !2, line: 1650, type: !91)
!103 = !DILocalVariable(name: "b", arg: 2, scope: !88, file: !2, line: 1650, type: !91)
!104 = !DILocalVariable(name: "x", arg: 3, scope: !88, file: !2, line: 1650, type: !92)
!105 = !DILocalVariable(name: "result", arg: 4, scope: !88, file: !2, line: 1651, type: !93)
!106 = !DILocalVariable(name: "U", scope: !107, file: !2, line: 1671, type: !94)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 1667, column: 10)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 1664, column: 8)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 1663, column: 8)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 1660, column: 14)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 1658, column: 12)
!112 = distinct !DILexicalBlock(scope: !88, file: !2, line: 1655, column: 6)
!113 = !DILocalVariable(name: "ln_x", scope: !107, file: !2, line: 1672, type: !78)
!114 = !DILocalVariable(name: "ap", scope: !107, file: !2, line: 1673, type: !40)
!115 = !DILocalVariable(name: "bp", scope: !107, file: !2, line: 1674, type: !40)
!116 = !DILocalVariable(name: "stat_e", scope: !107, file: !2, line: 1675, type: !40)
!117 = !DILocalVariable(name: "stat_U", scope: !107, file: !2, line: 1676, type: !40)
!118 = !DILocalVariable(name: "ln_pre_val", scope: !107, file: !2, line: 1677, type: !78)
!119 = !DILocalVariable(name: "ln_pre_err", scope: !107, file: !2, line: 1678, type: !78)
!120 = distinct !DIAssignID()
!121 = distinct !DIAssignID()
!122 = distinct !DIAssignID()
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !107)
!125 = !DILocation(line: 0, scope: !88)
!126 = !DILocation(line: 1655, column: 8, scope: !112)
!127 = !DILocation(line: 1655, column: 15, scope: !112)
!128 = !DILocation(line: 1656, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 1656, column: 5)
!130 = distinct !DILexicalBlock(scope: !112, file: !2, line: 1655, column: 26)
!131 = !{!132, !133, i64 0}
!132 = !{!"gsl_sf_result_e10_struct", !133, i64 0, !133, i64 8, !136, i64 16}
!133 = !{!"double", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !{!"int", !134, i64 0}
!137 = !{!132, !133, i64 8}
!138 = !{!132, !136, i64 16}
!139 = !DILocation(line: 1656, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !2, line: 1656, column: 5)
!141 = !DILocation(line: 1658, column: 12, scope: !112)
!142 = !DILocalVariable(name: "a", arg: 1, scope: !143, file: !2, line: 1487, type: !91)
!143 = distinct !DISubprogram(name: "hyperg_U_int_origin", scope: !2, file: !2, line: 1487, type: !144, scopeLine: 1488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!40, !91, !91, !93}
!146 = !{!142, !147, !148}
!147 = !DILocalVariable(name: "b", arg: 2, scope: !143, file: !2, line: 1487, type: !91)
!148 = !DILocalVariable(name: "result", arg: 3, scope: !143, file: !2, line: 1487, type: !93)
!149 = !DILocation(line: 0, scope: !143, inlinedAt: !150)
!150 = distinct !DILocation(line: 1659, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !111, file: !2, line: 1658, column: 22)
!152 = !DILocation(line: 1489, column: 27, scope: !143, inlinedAt: !150)
!153 = !DILocation(line: 1489, column: 30, scope: !143, inlinedAt: !150)
!154 = !DILocalVariable(name: "r1", scope: !155, file: !2, line: 1474, type: !163)
!155 = distinct !DISubprogram(name: "hyperg_U_origin", scope: !2, file: !2, line: 1472, type: !156, scopeLine: 1473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!40, !92, !92, !93}
!158 = !{!159, !160, !161, !154, !162, !168, !169, !170}
!159 = !DILocalVariable(name: "a", arg: 1, scope: !155, file: !2, line: 1472, type: !92)
!160 = !DILocalVariable(name: "b", arg: 2, scope: !155, file: !2, line: 1472, type: !92)
!161 = !DILocalVariable(name: "result", arg: 3, scope: !155, file: !2, line: 1472, type: !93)
!162 = !DILocalVariable(name: "r2", scope: !155, file: !2, line: 1474, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !95, line: 41, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !95, line: 37, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !95, line: 38, baseType: !78, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !95, line: 39, baseType: !78, size: 64, offset: 64)
!168 = !DILocalVariable(name: "stat_1", scope: !155, file: !2, line: 1475, type: !40)
!169 = !DILocalVariable(name: "stat_2", scope: !155, file: !2, line: 1476, type: !40)
!170 = !DILocalVariable(name: "factor", scope: !155, file: !2, line: 1477, type: !78)
!171 = !DILocation(line: 0, scope: !155, inlinedAt: !172)
!172 = distinct !DILocation(line: 1489, column: 10, scope: !143, inlinedAt: !150)
!173 = !DILocation(line: 1474, column: 3, scope: !155, inlinedAt: !172)
!174 = !DILocation(line: 1475, column: 37, scope: !155, inlinedAt: !172)
!175 = !DILocation(line: 1475, column: 16, scope: !155, inlinedAt: !172)
!176 = !DILocation(line: 1476, column: 16, scope: !155, inlinedAt: !172)
!177 = !DILocation(line: 1477, column: 34, scope: !155, inlinedAt: !172)
!178 = !DILocation(line: 1477, column: 24, scope: !155, inlinedAt: !172)
!179 = !DILocation(line: 1479, column: 29, scope: !155, inlinedAt: !172)
!180 = !{!181, !133, i64 0}
!181 = !{!"gsl_sf_result_struct", !133, i64 0, !133, i64 8}
!182 = !DILocation(line: 1479, column: 24, scope: !155, inlinedAt: !172)
!183 = !DILocation(line: 1479, column: 38, scope: !155, inlinedAt: !172)
!184 = !DILocation(line: 1479, column: 33, scope: !155, inlinedAt: !172)
!185 = !DILocation(line: 1479, column: 15, scope: !155, inlinedAt: !172)
!186 = !DILocation(line: 1480, column: 17, scope: !155, inlinedAt: !172)
!187 = !DILocation(line: 1480, column: 36, scope: !155, inlinedAt: !172)
!188 = !{!181, !133, i64 8}
!189 = !DILocation(line: 1480, column: 45, scope: !155, inlinedAt: !172)
!190 = !DILocation(line: 1480, column: 30, scope: !155, inlinedAt: !172)
!191 = !DILocation(line: 1480, column: 11, scope: !155, inlinedAt: !172)
!192 = !DILocation(line: 1480, column: 15, scope: !155, inlinedAt: !172)
!193 = !DILocation(line: 1481, column: 11, scope: !155, inlinedAt: !172)
!194 = !DILocation(line: 1481, column: 15, scope: !155, inlinedAt: !172)
!195 = !DILocation(line: 1483, column: 10, scope: !155, inlinedAt: !172)
!196 = !DILocation(line: 1484, column: 1, scope: !155, inlinedAt: !172)
!197 = !DILocation(line: 1659, column: 5, scope: !151)
!198 = !DILocation(line: 1660, column: 16, scope: !110)
!199 = !DILocation(line: 1660, column: 14, scope: !111)
!200 = !DILocalVariable(name: "r1", scope: !201, file: !2, line: 1630, type: !94)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 1629, column: 5)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 1628, column: 7)
!203 = distinct !DISubprogram(name: "hyperg_U_int_negx", scope: !2, file: !2, line: 1622, type: !89, scopeLine: 1623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !204)
!204 = !{!205, !206, !207, !208, !200, !209, !210, !211, !212}
!205 = !DILocalVariable(name: "a", arg: 1, scope: !203, file: !2, line: 1622, type: !91)
!206 = !DILocalVariable(name: "b", arg: 2, scope: !203, file: !2, line: 1622, type: !91)
!207 = !DILocalVariable(name: "x", arg: 3, scope: !203, file: !2, line: 1622, type: !92)
!208 = !DILocalVariable(name: "result", arg: 4, scope: !203, file: !2, line: 1622, type: !93)
!209 = !DILocalVariable(name: "z21_z", scope: !201, file: !2, line: 1631, type: !78)
!210 = !DILocalVariable(name: "status", scope: !201, file: !2, line: 1632, type: !40)
!211 = !DILocalVariable(name: "res_tem", scope: !201, file: !2, line: 1633, type: !78)
!212 = !DILocalVariable(name: "res_tem_err", scope: !201, file: !2, line: 1634, type: !78)
!213 = !DILocation(line: 0, scope: !201, inlinedAt: !214)
!214 = distinct !DILocation(line: 1661, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !110, file: !2, line: 1660, column: 24)
!216 = !DILocation(line: 0, scope: !203, inlinedAt: !214)
!217 = !DILocation(line: 1628, column: 8, scope: !202, inlinedAt: !214)
!218 = !DILocation(line: 1628, column: 11, scope: !202, inlinedAt: !214)
!219 = !DILocation(line: 1630, column: 7, scope: !201, inlinedAt: !214)
!220 = !DILocation(line: 1631, column: 30, scope: !201, inlinedAt: !214)
!221 = !DILocation(line: 1631, column: 29, scope: !201, inlinedAt: !214)
!222 = !DILocation(line: 1631, column: 22, scope: !201, inlinedAt: !214)
!223 = !DILocation(line: 1632, column: 36, scope: !201, inlinedAt: !214)
!224 = !DILocation(line: 1632, column: 38, scope: !201, inlinedAt: !214)
!225 = !DILocation(line: 1632, column: 35, scope: !201, inlinedAt: !214)
!226 = !DILocation(line: 1632, column: 42, scope: !201, inlinedAt: !214)
!227 = !DILocation(line: 1632, column: 41, scope: !201, inlinedAt: !214)
!228 = !DILocation(line: 1632, column: 20, scope: !201, inlinedAt: !214)
!229 = !DILocation(line: 1633, column: 31, scope: !201, inlinedAt: !214)
!230 = !DILocation(line: 1633, column: 27, scope: !201, inlinedAt: !214)
!231 = !DILocation(line: 1634, column: 28, scope: !201, inlinedAt: !214)
!232 = !DILocation(line: 1634, column: 43, scope: !201, inlinedAt: !214)
!233 = !DILocation(line: 1634, column: 39, scope: !201, inlinedAt: !214)
!234 = !DILocation(line: 1635, column: 19, scope: !201, inlinedAt: !214)
!235 = !DILocation(line: 1636, column: 15, scope: !201, inlinedAt: !214)
!236 = !DILocation(line: 1636, column: 19, scope: !201, inlinedAt: !214)
!237 = !DILocation(line: 1638, column: 5, scope: !202, inlinedAt: !214)
!238 = !DILocation(line: 1641, column: 29, scope: !239, inlinedAt: !214)
!239 = distinct !DILexicalBlock(scope: !202, file: !2, line: 1640, column: 5)
!240 = !DILocation(line: 1641, column: 32, scope: !239, inlinedAt: !214)
!241 = !DILocation(line: 1641, column: 14, scope: !239, inlinedAt: !214)
!242 = !DILocation(line: 1641, column: 7, scope: !239, inlinedAt: !214)
!243 = !DILocation(line: 1664, column: 8, scope: !109)
!244 = !DILocation(line: 1665, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !108, file: !2, line: 1664, column: 16)
!246 = !DILocation(line: 1665, column: 7, scope: !245)
!247 = !DILocation(line: 1671, column: 7, scope: !107)
!248 = !DILocation(line: 1673, column: 18, scope: !107)
!249 = !DILocation(line: 1673, column: 22, scope: !107)
!250 = !DILocation(line: 1674, column: 18, scope: !107)
!251 = !DILocation(line: 1676, column: 20, scope: !107)
!252 = !DILocation(line: 1677, column: 32, scope: !107)
!253 = !DILocation(line: 1677, column: 34, scope: !107)
!254 = !DILocation(line: 1678, column: 52, scope: !107)
!255 = !DILocation(line: 1678, column: 49, scope: !107)
!256 = !DILocation(line: 1678, column: 67, scope: !107)
!257 = !DILocation(line: 1678, column: 65, scope: !107)
!258 = !DILocation(line: 1679, column: 45, scope: !107)
!259 = !DILocation(line: 1679, column: 43, scope: !107)
!260 = !DILocation(line: 1680, column: 57, scope: !107)
!261 = !DILocation(line: 1680, column: 55, scope: !107)
!262 = !DILocation(line: 1680, column: 60, scope: !107)
!263 = !DILocation(line: 1681, column: 47, scope: !107)
!264 = !DILocation(line: 1681, column: 54, scope: !107)
!265 = !DILocation(line: 1680, column: 16, scope: !107)
!266 = !DILocation(line: 1683, column: 14, scope: !107)
!267 = !DILocation(line: 1684, column: 5, scope: !108)
!268 = !DILocation(line: 0, scope: !112)
!269 = !DILocation(line: 1686, column: 1, scope: !88)
!270 = !DISubprogram(name: "gsl_error", scope: !39, file: !39, line: 77, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !273, !273, !40, !40}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!275 = distinct !DISubprogram(name: "hyperg_U_int_bge1", scope: !2, file: !2, line: 860, type: !89, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !276)
!276 = !{!277, !278, !279, !280, !281, !287, !288, !289, !290, !291, !294, !295, !298, !299, !300, !301, !302, !303, !304, !305, !306, !311, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !331, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !350, !353, !354, !355, !356, !357, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !372, !373, !374, !375, !376, !377, !378, !383, !387, !388, !389, !390, !392, !393, !394, !395, !396, !397, !402, !406, !407, !408, !409, !410, !411, !412, !413}
!277 = !DILocalVariable(name: "a", arg: 1, scope: !275, file: !2, line: 860, type: !91)
!278 = !DILocalVariable(name: "b", arg: 2, scope: !275, file: !2, line: 860, type: !91)
!279 = !DILocalVariable(name: "x", arg: 3, scope: !275, file: !2, line: 860, type: !92)
!280 = !DILocalVariable(name: "result", arg: 4, scope: !275, file: !2, line: 861, type: !93)
!281 = !DILocalVariable(name: "ln_pre_val", scope: !282, file: !2, line: 882, type: !92)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 881, column: 33)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 881, column: 11)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 876, column: 11)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 869, column: 11)
!286 = distinct !DILexicalBlock(scope: !275, file: !2, line: 863, column: 6)
!287 = !DILocalVariable(name: "ln_pre_err", scope: !282, file: !2, line: 883, type: !92)
!288 = !DILocalVariable(name: "asymp", scope: !282, file: !2, line: 884, type: !163)
!289 = !DILocalVariable(name: "stat_asymp", scope: !282, file: !2, line: 885, type: !40)
!290 = !DILocalVariable(name: "stat_e", scope: !282, file: !2, line: 886, type: !40)
!291 = !DILocalVariable(name: "ser", scope: !292, file: !2, line: 892, type: !163)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 891, column: 51)
!293 = distinct !DILexicalBlock(scope: !283, file: !2, line: 891, column: 11)
!294 = !DILocalVariable(name: "stat_ser", scope: !292, file: !2, line: 893, type: !91)
!295 = !DILocalVariable(name: "scale_count", scope: !296, file: !2, line: 902, type: !40)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 899, column: 18)
!297 = distinct !DILexicalBlock(scope: !293, file: !2, line: 899, column: 11)
!298 = !DILocalVariable(name: "scale_factor", scope: !296, file: !2, line: 903, type: !92)
!299 = !DILocalVariable(name: "lnm", scope: !296, file: !2, line: 904, type: !163)
!300 = !DILocalVariable(name: "y", scope: !296, file: !2, line: 905, type: !163)
!301 = !DILocalVariable(name: "lnscale", scope: !296, file: !2, line: 906, type: !78)
!302 = !DILocalVariable(name: "Uap1", scope: !296, file: !2, line: 907, type: !78)
!303 = !DILocalVariable(name: "Ua", scope: !296, file: !2, line: 908, type: !78)
!304 = !DILocalVariable(name: "Uam1", scope: !296, file: !2, line: 909, type: !78)
!305 = !DILocalVariable(name: "ap", scope: !296, file: !2, line: 910, type: !40)
!306 = !DILocalVariable(name: "au0", scope: !307, file: !2, line: 916, type: !78)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 916, column: 7)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 912, column: 28)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 912, column: 5)
!310 = distinct !DILexicalBlock(scope: !296, file: !2, line: 912, column: 5)
!311 = !DILocalVariable(name: "scale_count", scope: !312, file: !2, line: 929, type: !40)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 926, column: 27)
!313 = distinct !DILexicalBlock(scope: !297, file: !2, line: 926, column: 11)
!314 = !DILocalVariable(name: "scale_factor", scope: !312, file: !2, line: 930, type: !92)
!315 = !DILocalVariable(name: "r_Ua", scope: !312, file: !2, line: 931, type: !163)
!316 = !DILocalVariable(name: "lnm", scope: !312, file: !2, line: 932, type: !163)
!317 = !DILocalVariable(name: "y", scope: !312, file: !2, line: 933, type: !163)
!318 = !DILocalVariable(name: "lnscale", scope: !312, file: !2, line: 934, type: !78)
!319 = !DILocalVariable(name: "lm", scope: !312, file: !2, line: 935, type: !78)
!320 = !DILocalVariable(name: "stat_1", scope: !312, file: !2, line: 936, type: !40)
!321 = !DILocalVariable(name: "stat_e", scope: !312, file: !2, line: 937, type: !40)
!322 = !DILocalVariable(name: "Uam1", scope: !312, file: !2, line: 938, type: !78)
!323 = !DILocalVariable(name: "Ua", scope: !312, file: !2, line: 939, type: !78)
!324 = !DILocalVariable(name: "Uap1", scope: !312, file: !2, line: 940, type: !78)
!325 = !DILocalVariable(name: "ap", scope: !312, file: !2, line: 941, type: !40)
!326 = !DILocalVariable(name: "au0", scope: !327, file: !2, line: 949, type: !78)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 949, column: 7)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 945, column: 27)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 945, column: 5)
!330 = distinct !DILexicalBlock(scope: !312, file: !2, line: 945, column: 5)
!331 = !DILocalVariable(name: "scale_factor", scope: !332, file: !2, line: 966, type: !92)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 962, column: 16)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 962, column: 8)
!334 = distinct !DILexicalBlock(scope: !313, file: !2, line: 961, column: 8)
!335 = !DILocalVariable(name: "scale_count", scope: !332, file: !2, line: 967, type: !40)
!336 = !DILocalVariable(name: "stat_CF1", scope: !332, file: !2, line: 968, type: !40)
!337 = !DILocalVariable(name: "ru", scope: !332, file: !2, line: 969, type: !78)
!338 = !DILocalVariable(name: "CF1_count", scope: !332, file: !2, line: 970, type: !40)
!339 = !DILocalVariable(name: "a_target", scope: !332, file: !2, line: 971, type: !40)
!340 = !DILocalVariable(name: "lnU_target", scope: !332, file: !2, line: 972, type: !78)
!341 = !DILocalVariable(name: "Ua", scope: !332, file: !2, line: 973, type: !78)
!342 = !DILocalVariable(name: "Uap1", scope: !332, file: !2, line: 974, type: !78)
!343 = !DILocalVariable(name: "Uam1", scope: !332, file: !2, line: 975, type: !78)
!344 = !DILocalVariable(name: "ap", scope: !332, file: !2, line: 976, type: !40)
!345 = !DILocalVariable(name: "au0", scope: !346, file: !2, line: 995, type: !78)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 995, column: 9)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 991, column: 36)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 991, column: 7)
!349 = distinct !DILexicalBlock(scope: !332, file: !2, line: 991, column: 7)
!350 = !DILocalVariable(name: "lnscl", scope: !351, file: !2, line: 1005, type: !78)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 1004, column: 12)
!352 = distinct !DILexicalBlock(scope: !332, file: !2, line: 998, column: 10)
!353 = !DILocalVariable(name: "lnpre_val", scope: !351, file: !2, line: 1006, type: !78)
!354 = !DILocalVariable(name: "lnpre_err", scope: !351, file: !2, line: 1007, type: !78)
!355 = !DILocalVariable(name: "oUa_err", scope: !351, file: !2, line: 1008, type: !78)
!356 = !DILocalVariable(name: "stat_e", scope: !351, file: !2, line: 1009, type: !40)
!357 = !DILocalVariable(name: "scale_factor", scope: !358, file: !2, line: 1022, type: !92)
!358 = distinct !DILexicalBlock(scope: !333, file: !2, line: 1015, column: 10)
!359 = !DILocalVariable(name: "scale_count_for", scope: !358, file: !2, line: 1023, type: !40)
!360 = !DILocalVariable(name: "scale_count_bck", scope: !358, file: !2, line: 1024, type: !40)
!361 = !DILocalVariable(name: "a0", scope: !358, file: !2, line: 1025, type: !40)
!362 = !DILocalVariable(name: "a1", scope: !358, file: !2, line: 1026, type: !40)
!363 = !DILocalVariable(name: "Ua1_bck_val", scope: !358, file: !2, line: 1027, type: !78)
!364 = !DILocalVariable(name: "Ua1_bck_err", scope: !358, file: !2, line: 1028, type: !78)
!365 = !DILocalVariable(name: "Ua1_for_val", scope: !358, file: !2, line: 1029, type: !78)
!366 = !DILocalVariable(name: "Ua1_for_err", scope: !358, file: !2, line: 1030, type: !78)
!367 = !DILocalVariable(name: "stat_for", scope: !358, file: !2, line: 1031, type: !40)
!368 = !DILocalVariable(name: "stat_bck", scope: !358, file: !2, line: 1032, type: !40)
!369 = !DILocalVariable(name: "lm_for", scope: !358, file: !2, line: 1033, type: !163)
!370 = !DILocalVariable(name: "ru", scope: !371, file: !2, line: 1038, type: !78)
!371 = distinct !DILexicalBlock(scope: !358, file: !2, line: 1035, column: 7)
!372 = !DILocalVariable(name: "CF1_count", scope: !371, file: !2, line: 1039, type: !40)
!373 = !DILocalVariable(name: "stat_CF1", scope: !371, file: !2, line: 1040, type: !40)
!374 = !DILocalVariable(name: "Ua", scope: !371, file: !2, line: 1041, type: !78)
!375 = !DILocalVariable(name: "Uap1", scope: !371, file: !2, line: 1042, type: !78)
!376 = !DILocalVariable(name: "Uam1", scope: !371, file: !2, line: 1043, type: !78)
!377 = !DILocalVariable(name: "ap", scope: !371, file: !2, line: 1044, type: !40)
!378 = !DILocalVariable(name: "au0", scope: !379, file: !2, line: 1049, type: !78)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 1049, column: 11)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 1045, column: 32)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 1045, column: 9)
!382 = distinct !DILexicalBlock(scope: !371, file: !2, line: 1045, column: 9)
!383 = !DILocalVariable(name: "lnU00", scope: !384, file: !2, line: 1071, type: !163)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 1066, column: 40)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 1066, column: 15)
!386 = distinct !DILexicalBlock(scope: !358, file: !2, line: 1056, column: 10)
!387 = !DILocalVariable(name: "lnU12", scope: !384, file: !2, line: 1071, type: !163)
!388 = !DILocalVariable(name: "U00", scope: !384, file: !2, line: 1072, type: !163)
!389 = !DILocalVariable(name: "U12", scope: !384, file: !2, line: 1072, type: !163)
!390 = !DILocalVariable(name: "r_Ua", scope: !391, file: !2, line: 1098, type: !163)
!391 = distinct !DILexicalBlock(scope: !385, file: !2, line: 1094, column: 12)
!392 = !DILocalVariable(name: "Uam1", scope: !391, file: !2, line: 1099, type: !78)
!393 = !DILocalVariable(name: "Ua", scope: !391, file: !2, line: 1100, type: !78)
!394 = !DILocalVariable(name: "Uap1", scope: !391, file: !2, line: 1101, type: !78)
!395 = !DILocalVariable(name: "ap", scope: !391, file: !2, line: 1102, type: !40)
!396 = !DILocalVariable(name: "lm_for_local", scope: !391, file: !2, line: 1103, type: !78)
!397 = !DILocalVariable(name: "au0", scope: !398, file: !2, line: 1114, type: !78)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 1114, column: 11)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 1110, column: 33)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 1110, column: 9)
!401 = distinct !DILexicalBlock(scope: !391, file: !2, line: 1110, column: 9)
!402 = !DILocalVariable(name: "lns", scope: !403, file: !2, line: 1134, type: !78)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 1133, column: 12)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 1129, column: 15)
!405 = distinct !DILexicalBlock(scope: !358, file: !2, line: 1123, column: 10)
!406 = !DILocalVariable(name: "ln_for_val", scope: !403, file: !2, line: 1135, type: !78)
!407 = !DILocalVariable(name: "ln_for_err", scope: !403, file: !2, line: 1136, type: !78)
!408 = !DILocalVariable(name: "ln_bck_val", scope: !403, file: !2, line: 1137, type: !78)
!409 = !DILocalVariable(name: "ln_bck_err", scope: !403, file: !2, line: 1138, type: !78)
!410 = !DILocalVariable(name: "lnr_val", scope: !403, file: !2, line: 1139, type: !78)
!411 = !DILocalVariable(name: "lnr_err", scope: !403, file: !2, line: 1140, type: !78)
!412 = !DILocalVariable(name: "sgn", scope: !403, file: !2, line: 1142, type: !78)
!413 = !DILocalVariable(name: "stat_e", scope: !403, file: !2, line: 1143, type: !40)
!414 = distinct !DIAssignID()
!415 = !DILocation(line: 0, scope: !282)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 0, scope: !292)
!418 = distinct !DIAssignID()
!419 = !DILocation(line: 0, scope: !312)
!420 = distinct !DIAssignID()
!421 = distinct !DIAssignID()
!422 = !DILocation(line: 0, scope: !332)
!423 = distinct !DIAssignID()
!424 = distinct !DIAssignID()
!425 = !DILocation(line: 0, scope: !358)
!426 = distinct !DIAssignID()
!427 = !DILocation(line: 0, scope: !371)
!428 = distinct !DIAssignID()
!429 = distinct !DIAssignID()
!430 = !DILocation(line: 0, scope: !384)
!431 = distinct !DIAssignID()
!432 = distinct !DIAssignID()
!433 = distinct !DIAssignID()
!434 = distinct !DIAssignID()
!435 = !DILocation(line: 0, scope: !391)
!436 = distinct !DIAssignID()
!437 = !DILocation(line: 0, scope: !275)
!438 = !DILocation(line: 863, column: 6, scope: !275)
!439 = !DILocation(line: 864, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !286, file: !2, line: 863, column: 14)
!441 = !DILocation(line: 865, column: 13, scope: !440)
!442 = !DILocation(line: 865, column: 17, scope: !440)
!443 = !DILocation(line: 866, column: 13, scope: !440)
!444 = !DILocation(line: 866, column: 17, scope: !440)
!445 = !DILocation(line: 867, column: 5, scope: !440)
!446 = !DILocation(line: 870, column: 20, scope: !447)
!447 = distinct !DILexicalBlock(scope: !285, file: !2, line: 869, column: 20)
!448 = !DILocation(line: 870, column: 18, scope: !447)
!449 = !DILocation(line: 871, column: 50, scope: !447)
!450 = !DILocation(line: 871, column: 45, scope: !447)
!451 = !DILocation(line: 871, column: 55, scope: !447)
!452 = !DILocation(line: 871, column: 42, scope: !447)
!453 = !DILocation(line: 871, column: 13, scope: !447)
!454 = !DILocation(line: 872, column: 44, scope: !447)
!455 = !DILocation(line: 872, column: 42, scope: !447)
!456 = !DILocation(line: 872, column: 17, scope: !447)
!457 = !DILocation(line: 873, column: 13, scope: !447)
!458 = !DILocation(line: 873, column: 18, scope: !447)
!459 = !DILocation(line: 874, column: 5, scope: !447)
!460 = !DILocation(line: 876, column: 18, scope: !284)
!461 = !DILocation(line: 876, column: 13, scope: !284)
!462 = !DILocation(line: 876, column: 11, scope: !285)
!463 = !DILocation(line: 879, column: 29, scope: !464)
!464 = distinct !DILexicalBlock(scope: !284, file: !2, line: 876, column: 23)
!465 = !DILocation(line: 879, column: 31, scope: !464)
!466 = !DILocation(line: 879, column: 12, scope: !464)
!467 = !DILocation(line: 879, column: 5, scope: !464)
!468 = !DILocation(line: 881, column: 11, scope: !283)
!469 = !DILocalVariable(name: "a", arg: 1, scope: !470, file: !471, line: 69, type: !78)
!470 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !471, file: !471, line: 69, type: !472, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !474)
!471 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!472 = !DISubroutineType(types: !473)
!473 = !{!78, !78, !78}
!474 = !{!469, !475}
!475 = !DILocalVariable(name: "b", arg: 2, scope: !470, file: !471, line: 69, type: !78)
!476 = !DILocation(line: 0, scope: !470, inlinedAt: !477)
!477 = distinct !DILocation(line: 881, column: 11, scope: !283)
!478 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !477)
!479 = !DILocation(line: 0, scope: !470, inlinedAt: !480)
!480 = distinct !DILocation(line: 881, column: 11, scope: !283)
!481 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !480)
!482 = !DILocation(line: 881, column: 11, scope: !284)
!483 = !DILocation(line: 882, column: 31, scope: !282)
!484 = !DILocation(line: 882, column: 33, scope: !282)
!485 = !DILocation(line: 883, column: 55, scope: !282)
!486 = !DILocation(line: 883, column: 53, scope: !282)
!487 = !DILocation(line: 884, column: 5, scope: !282)
!488 = !DILocation(line: 885, column: 22, scope: !282)
!489 = !{i32 0, i32 12}
!490 = !DILocation(line: 887, column: 53, scope: !282)
!491 = !DILocation(line: 887, column: 64, scope: !282)
!492 = !DILocation(line: 886, column: 18, scope: !282)
!493 = !DILocation(line: 889, column: 12, scope: !282)
!494 = !DILocation(line: 890, column: 3, scope: !283)
!495 = !DILocation(line: 891, column: 11, scope: !293)
!496 = !DILocation(line: 891, column: 46, scope: !293)
!497 = !DILocation(line: 891, column: 11, scope: !283)
!498 = !DILocation(line: 892, column: 5, scope: !292)
!499 = !DILocation(line: 893, column: 26, scope: !292)
!500 = !DILocation(line: 894, column: 23, scope: !292)
!501 = !DILocation(line: 894, column: 17, scope: !292)
!502 = !DILocation(line: 895, column: 23, scope: !292)
!503 = !DILocation(line: 895, column: 13, scope: !292)
!504 = !DILocation(line: 895, column: 17, scope: !292)
!505 = !DILocation(line: 896, column: 13, scope: !292)
!506 = !DILocation(line: 896, column: 17, scope: !292)
!507 = !DILocation(line: 898, column: 3, scope: !293)
!508 = !DILocation(line: 899, column: 13, scope: !297)
!509 = !DILocation(line: 899, column: 11, scope: !293)
!510 = !DILocation(line: 0, scope: !296)
!511 = !DILocation(line: 908, column: 19, scope: !296)
!512 = !DILocation(line: 912, column: 18, scope: !309)
!513 = !DILocation(line: 912, column: 5, scope: !310)
!514 = !DILocation(line: 913, column: 14, scope: !308)
!515 = !DILocation(line: 913, column: 19, scope: !308)
!516 = !DILocation(line: 913, column: 18, scope: !308)
!517 = !DILocation(line: 913, column: 16, scope: !308)
!518 = !DILocation(line: 913, column: 27, scope: !308)
!519 = !DILocation(line: 913, column: 41, scope: !308)
!520 = !DILocation(line: 913, column: 44, scope: !308)
!521 = !DILocation(line: 913, column: 47, scope: !308)
!522 = !DILocation(line: 916, column: 7, scope: !307)
!523 = !DILocation(line: 0, scope: !307)
!524 = !DILocation(line: 916, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !307, file: !2, line: 916, column: 7)
!526 = !DILocation(line: 916, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !525, file: !2, line: 916, column: 7)
!528 = !DILocation(line: 916, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !2, line: 916, column: 7)
!530 = !DILocation(line: 916, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !2, line: 916, column: 7)
!532 = !DILocation(line: 0, scope: !308)
!533 = !DILocation(line: 912, column: 24, scope: !309)
!534 = distinct !{!534, !513, !535, !536}
!535 = !DILocation(line: 917, column: 5, scope: !310)
!536 = !{!"llvm.loop.mustprogress"}
!537 = !DILocation(line: 920, column: 15, scope: !296)
!538 = !DILocation(line: 920, column: 26, scope: !296)
!539 = !DILocation(line: 921, column: 39, scope: !296)
!540 = !DILocation(line: 921, column: 37, scope: !296)
!541 = !DILocation(line: 923, column: 35, scope: !296)
!542 = !DILocation(line: 923, column: 53, scope: !296)
!543 = !DILocation(line: 923, column: 51, scope: !296)
!544 = !DILocation(line: 924, column: 12, scope: !296)
!545 = !DILocation(line: 926, column: 19, scope: !313)
!546 = !DILocation(line: 926, column: 13, scope: !313)
!547 = !DILocation(line: 926, column: 11, scope: !297)
!548 = !DILocation(line: 931, column: 5, scope: !312)
!549 = !DILocation(line: 935, column: 5, scope: !312)
!550 = !DILocation(line: 936, column: 18, scope: !312)
!551 = !DILocation(line: 939, column: 24, scope: !312)
!552 = !DILocation(line: 943, column: 18, scope: !312)
!553 = !{!133, !133, i64 0}
!554 = !DILocation(line: 943, column: 17, scope: !312)
!555 = !DILocation(line: 943, column: 13, scope: !312)
!556 = !DILocation(line: 945, column: 17, scope: !329)
!557 = !DILocation(line: 945, column: 5, scope: !330)
!558 = !DILocation(line: 946, column: 30, scope: !328)
!559 = !DILocation(line: 946, column: 29, scope: !328)
!560 = !DILocation(line: 946, column: 32, scope: !328)
!561 = !DILocation(line: 946, column: 35, scope: !328)
!562 = !DILocation(line: 946, column: 14, scope: !328)
!563 = !DILocation(line: 946, column: 51, scope: !328)
!564 = !DILocation(line: 946, column: 43, scope: !328)
!565 = !DILocation(line: 946, column: 39, scope: !328)
!566 = !DILocation(line: 949, column: 7, scope: !327)
!567 = !DILocation(line: 0, scope: !327)
!568 = !DILocation(line: 949, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !327, file: !2, line: 949, column: 7)
!570 = !DILocation(line: 949, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !569, file: !2, line: 949, column: 7)
!572 = !DILocation(line: 949, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !2, line: 949, column: 7)
!574 = !DILocation(line: 949, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !2, line: 949, column: 7)
!576 = !DILocation(line: 0, scope: !328)
!577 = !DILocation(line: 945, column: 23, scope: !329)
!578 = distinct !{!578, !557, !579, !536}
!579 = !DILocation(line: 950, column: 5, scope: !330)
!580 = !DILocation(line: 953, column: 20, scope: !312)
!581 = !DILocation(line: 953, column: 32, scope: !312)
!582 = !DILocation(line: 953, column: 15, scope: !312)
!583 = !DILocation(line: 954, column: 40, scope: !312)
!584 = !DILocation(line: 954, column: 51, scope: !312)
!585 = !DILocation(line: 954, column: 37, scope: !312)
!586 = !DILocation(line: 956, column: 24, scope: !312)
!587 = !DILocation(line: 956, column: 33, scope: !312)
!588 = !DILocation(line: 956, column: 27, scope: !312)
!589 = !DILocation(line: 956, column: 40, scope: !312)
!590 = !DILocation(line: 956, column: 38, scope: !312)
!591 = !DILocation(line: 957, column: 36, scope: !312)
!592 = !DILocation(line: 957, column: 54, scope: !312)
!593 = !DILocation(line: 958, column: 14, scope: !312)
!594 = !DILocation(line: 959, column: 12, scope: !312)
!595 = !DILocation(line: 960, column: 3, scope: !313)
!596 = !DILocation(line: 962, column: 10, scope: !333)
!597 = !DILocation(line: 962, column: 8, scope: !334)
!598 = !DILocation(line: 969, column: 7, scope: !332)
!599 = !DILocation(line: 970, column: 7, scope: !332)
!600 = !DILocation(line: 978, column: 12, scope: !601)
!601 = distinct !DILexicalBlock(scope: !332, file: !2, line: 978, column: 10)
!602 = !DILocation(line: 978, column: 10, scope: !332)
!603 = !DILocation(line: 979, column: 21, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !2, line: 978, column: 21)
!605 = !DILocation(line: 980, column: 22, scope: !604)
!606 = !DILocation(line: 980, column: 31, scope: !604)
!607 = !DILocation(line: 981, column: 7, scope: !604)
!608 = !DILocation(line: 0, scope: !601)
!609 = !DILocation(line: 987, column: 18, scope: !332)
!610 = !DILocation(line: 991, column: 19, scope: !348)
!611 = !DILocation(line: 991, column: 7, scope: !349)
!612 = !DILocation(line: 990, column: 14, scope: !332)
!613 = !DILocation(line: 990, column: 16, scope: !332)
!614 = !DILocation(line: 992, column: 25, scope: !347)
!615 = !DILocation(line: 992, column: 24, scope: !347)
!616 = !DILocation(line: 992, column: 27, scope: !347)
!617 = !DILocation(line: 992, column: 30, scope: !347)
!618 = !DILocation(line: 992, column: 46, scope: !347)
!619 = !DILocation(line: 992, column: 38, scope: !347)
!620 = !DILocation(line: 992, column: 49, scope: !347)
!621 = !DILocation(line: 992, column: 16, scope: !347)
!622 = !DILocation(line: 995, column: 9, scope: !346)
!623 = !DILocation(line: 0, scope: !346)
!624 = !DILocation(line: 995, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !346, file: !2, line: 995, column: 9)
!626 = !DILocation(line: 995, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !625, file: !2, line: 995, column: 9)
!628 = !DILocation(line: 995, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !2, line: 995, column: 9)
!630 = !DILocation(line: 995, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !629, file: !2, line: 995, column: 9)
!632 = !DILocation(line: 0, scope: !347)
!633 = !DILocation(line: 991, column: 32, scope: !348)
!634 = distinct !{!634, !611, !635, !536}
!635 = !DILocation(line: 996, column: 7, scope: !349)
!636 = !DILocation(line: 998, column: 13, scope: !352)
!637 = !DILocation(line: 998, column: 10, scope: !332)
!638 = !DILocation(line: 1000, column: 21, scope: !639)
!639 = distinct !DILexicalBlock(scope: !352, file: !2, line: 998, column: 21)
!640 = !DILocation(line: 1002, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !2, line: 1002, column: 9)
!642 = !DILocation(line: 1005, column: 24, scope: !351)
!643 = !DILocation(line: 1005, column: 36, scope: !351)
!644 = !DILocation(line: 0, scope: !351)
!645 = !DILocation(line: 1007, column: 53, scope: !351)
!646 = !DILocation(line: 1007, column: 72, scope: !351)
!647 = !DILocation(line: 1007, column: 50, scope: !351)
!648 = !DILocation(line: 1008, column: 48, scope: !351)
!649 = !DILocation(line: 1008, column: 40, scope: !351)
!650 = !DILocation(line: 1008, column: 35, scope: !351)
!651 = !DILocation(line: 1008, column: 54, scope: !351)
!652 = !{!136, !136, i64 0}
!653 = !DILocation(line: 1008, column: 64, scope: !351)
!654 = !DILocation(line: 1008, column: 32, scope: !351)
!655 = !DILocation(line: 1008, column: 71, scope: !351)
!656 = !DILocation(line: 1008, column: 99, scope: !351)
!657 = !DILocation(line: 1008, column: 91, scope: !351)
!658 = !DILocation(line: 1008, column: 89, scope: !351)
!659 = !DILocation(line: 1009, column: 22, scope: !351)
!660 = !DILocation(line: 1012, column: 16, scope: !351)
!661 = !DILocation(line: 0, scope: !352)
!662 = !DILocation(line: 1014, column: 5, scope: !333)
!663 = !DILocation(line: 1026, column: 29, scope: !358)
!664 = !DILocation(line: 1026, column: 21, scope: !358)
!665 = !DILocation(line: 1026, column: 16, scope: !358)
!666 = !DILocation(line: 1033, column: 7, scope: !358)
!667 = !DILocation(line: 1038, column: 9, scope: !371)
!668 = !DILocation(line: 1039, column: 9, scope: !371)
!669 = !DILocation(line: 1040, column: 24, scope: !371)
!670 = !DILocation(line: 1045, column: 21, scope: !381)
!671 = !DILocation(line: 1045, column: 9, scope: !382)
!672 = !DILocation(line: 1042, column: 23, scope: !371)
!673 = !DILocation(line: 1042, column: 25, scope: !371)
!674 = !DILocation(line: 1046, column: 27, scope: !380)
!675 = !DILocation(line: 1046, column: 26, scope: !380)
!676 = !DILocation(line: 1046, column: 29, scope: !380)
!677 = !DILocation(line: 1046, column: 32, scope: !380)
!678 = !DILocation(line: 1046, column: 48, scope: !380)
!679 = !DILocation(line: 1046, column: 40, scope: !380)
!680 = !DILocation(line: 1046, column: 51, scope: !380)
!681 = !DILocation(line: 1046, column: 18, scope: !380)
!682 = !DILocation(line: 1049, column: 11, scope: !379)
!683 = !DILocation(line: 0, scope: !379)
!684 = !DILocation(line: 1049, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !379, file: !2, line: 1049, column: 11)
!686 = !DILocation(line: 1049, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !2, line: 1049, column: 11)
!688 = !DILocation(line: 1049, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !2, line: 1049, column: 11)
!690 = !DILocation(line: 1049, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !2, line: 1049, column: 11)
!692 = !DILocation(line: 0, scope: !380)
!693 = !DILocation(line: 1045, column: 28, scope: !381)
!694 = distinct !{!694, !671, !695, !536}
!695 = !DILocation(line: 1050, column: 9, scope: !382)
!696 = !DILocation(line: 1052, column: 55, scope: !371)
!697 = !DILocation(line: 1052, column: 53, scope: !371)
!698 = !DILocation(line: 1052, column: 48, scope: !371)
!699 = !DILocation(line: 1052, column: 59, scope: !371)
!700 = !DILocation(line: 1052, column: 68, scope: !371)
!701 = !DILocation(line: 1052, column: 45, scope: !371)
!702 = !DILocation(line: 1052, column: 76, scope: !371)
!703 = !DILocation(line: 1052, column: 74, scope: !371)
!704 = !DILocation(line: 1054, column: 7, scope: !358)
!705 = !DILocation(line: 1056, column: 16, scope: !386)
!706 = !DILocation(line: 1056, column: 12, scope: !386)
!707 = !DILocation(line: 1056, column: 20, scope: !386)
!708 = !DILocation(line: 1066, column: 25, scope: !385)
!709 = !DILocation(line: 1066, column: 17, scope: !385)
!710 = !DILocation(line: 1066, column: 29, scope: !385)
!711 = !DILocation(line: 1071, column: 9, scope: !384)
!712 = !DILocation(line: 1072, column: 9, scope: !384)
!713 = !DILocation(line: 1073, column: 26, scope: !384)
!714 = !DILocation(line: 1073, column: 9, scope: !384)
!715 = !DILocation(line: 1074, column: 9, scope: !384)
!716 = !DILocation(line: 1075, column: 18, scope: !717)
!717 = distinct !DILexicalBlock(scope: !384, file: !2, line: 1075, column: 12)
!718 = !DILocation(line: 1075, column: 30, scope: !717)
!719 = !DILocation(line: 1075, column: 22, scope: !717)
!720 = !DILocation(line: 1075, column: 12, scope: !384)
!721 = distinct !DIAssignID()
!722 = !DILocation(line: 1077, column: 30, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !2, line: 1075, column: 35)
!724 = distinct !DIAssignID()
!725 = distinct !DIAssignID()
!726 = distinct !DIAssignID()
!727 = !DILocation(line: 1080, column: 58, scope: !723)
!728 = !DILocation(line: 1080, column: 11, scope: !723)
!729 = !DILocation(line: 1089, column: 33, scope: !384)
!730 = !DILocation(line: 1090, column: 37, scope: !384)
!731 = !DILocation(line: 1081, column: 9, scope: !723)
!732 = !DILocation(line: 1084, column: 30, scope: !733)
!733 = distinct !DILexicalBlock(scope: !717, file: !2, line: 1082, column: 14)
!734 = distinct !DIAssignID()
!735 = distinct !DIAssignID()
!736 = !DILocation(line: 1087, column: 58, scope: !733)
!737 = !DILocation(line: 1087, column: 11, scope: !733)
!738 = !DILocation(line: 1089, column: 43, scope: !384)
!739 = !DILocation(line: 1090, column: 47, scope: !384)
!740 = !DILocation(line: 0, scope: !717)
!741 = !DILocation(line: 1089, column: 27, scope: !384)
!742 = !DILocation(line: 1089, column: 54, scope: !384)
!743 = !DILocation(line: 1089, column: 48, scope: !384)
!744 = !DILocation(line: 1090, column: 32, scope: !384)
!745 = !DILocation(line: 1090, column: 54, scope: !384)
!746 = !DILocation(line: 1090, column: 52, scope: !384)
!747 = !DILocation(line: 1091, column: 48, scope: !384)
!748 = !DILocation(line: 1091, column: 46, scope: !384)
!749 = !DILocation(line: 1093, column: 7, scope: !385)
!750 = !DILocation(line: 1093, column: 7, scope: !384)
!751 = !DILocation(line: 1098, column: 9, scope: !391)
!752 = !DILocation(line: 1103, column: 9, scope: !391)
!753 = !DILocation(line: 1104, column: 20, scope: !391)
!754 = !DILocation(line: 1105, column: 19, scope: !391)
!755 = !DILocation(line: 1106, column: 22, scope: !391)
!756 = !DILocation(line: 1106, column: 21, scope: !391)
!757 = !DILocation(line: 1106, column: 17, scope: !391)
!758 = !DILocation(line: 1107, column: 22, scope: !391)
!759 = distinct !DIAssignID()
!760 = distinct !DIAssignID()
!761 = !DILocation(line: 1110, column: 9, scope: !401)
!762 = !DILocation(line: 1111, column: 34, scope: !399)
!763 = !DILocation(line: 1111, column: 33, scope: !399)
!764 = !DILocation(line: 1111, column: 36, scope: !399)
!765 = !DILocation(line: 1111, column: 39, scope: !399)
!766 = !DILocation(line: 1111, column: 18, scope: !399)
!767 = !DILocation(line: 1111, column: 55, scope: !399)
!768 = !DILocation(line: 1111, column: 47, scope: !399)
!769 = !DILocation(line: 1111, column: 43, scope: !399)
!770 = !DILocation(line: 1114, column: 11, scope: !398)
!771 = !DILocation(line: 0, scope: !398)
!772 = !DILocation(line: 1114, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !398, file: !2, line: 1114, column: 11)
!774 = !DILocation(line: 1114, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1114, column: 11)
!776 = !DILocation(line: 1114, column: 11, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1114, column: 11)
!778 = !DILocation(line: 1114, column: 11, scope: !779)
!779 = distinct !DILexicalBlock(scope: !777, file: !2, line: 1114, column: 11)
!780 = !DILocation(line: 0, scope: !399)
!781 = !DILocation(line: 1110, column: 29, scope: !400)
!782 = !DILocation(line: 1110, column: 22, scope: !400)
!783 = distinct !{!783, !761, !784, !536}
!784 = !DILocation(line: 1115, column: 9, scope: !401)
!785 = !DILocation(line: 1117, column: 24, scope: !391)
!786 = !DILocation(line: 1117, column: 45, scope: !391)
!787 = !DILocation(line: 1117, column: 54, scope: !391)
!788 = !DILocation(line: 1117, column: 48, scope: !391)
!789 = !DILocation(line: 1117, column: 33, scope: !391)
!790 = !DILocation(line: 1118, column: 56, scope: !391)
!791 = !DILocation(line: 1118, column: 54, scope: !391)
!792 = !DILocation(line: 1118, column: 49, scope: !391)
!793 = !DILocation(line: 1118, column: 46, scope: !391)
!794 = !DILocation(line: 1118, column: 66, scope: !391)
!795 = !DILocation(line: 1119, column: 7, scope: !385)
!796 = !DILocation(line: 1023, column: 11, scope: !358)
!797 = !DILocation(line: 0, scope: !386)
!798 = !DILocation(line: 1123, column: 22, scope: !405)
!799 = !DILocation(line: 1123, column: 10, scope: !358)
!800 = !DILocation(line: 1061, column: 26, scope: !801)
!801 = distinct !DILexicalBlock(scope: !386, file: !2, line: 1056, column: 31)
!802 = !DILocation(line: 1061, column: 9, scope: !801)
!803 = !DILocation(line: 1139, column: 33, scope: !403)
!804 = !DILocation(line: 1140, column: 33, scope: !403)
!805 = !DILocation(line: 1125, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !405, file: !2, line: 1123, column: 30)
!807 = !DILocation(line: 1127, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !806, file: !2, line: 1127, column: 9)
!809 = !DILocation(line: 1129, column: 27, scope: !404)
!810 = !DILocation(line: 1129, column: 15, scope: !405)
!811 = !DILocation(line: 1131, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !2, line: 1131, column: 9)
!813 = distinct !DILexicalBlock(scope: !404, file: !2, line: 1129, column: 35)
!814 = !DILocation(line: 1131, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !2, line: 1131, column: 9)
!816 = !DILocation(line: 1134, column: 39, scope: !403)
!817 = !DILocation(line: 1134, column: 22, scope: !403)
!818 = !DILocation(line: 1134, column: 57, scope: !403)
!819 = !DILocation(line: 0, scope: !403)
!820 = !DILocation(line: 1135, column: 33, scope: !403)
!821 = !DILocation(line: 1136, column: 63, scope: !403)
!822 = !DILocation(line: 1136, column: 47, scope: !403)
!823 = !DILocation(line: 1137, column: 29, scope: !403)
!824 = !DILocation(line: 1138, column: 63, scope: !403)
!825 = !DILocation(line: 1138, column: 47, scope: !403)
!826 = !DILocation(line: 1139, column: 37, scope: !403)
!827 = !DILocation(line: 1139, column: 50, scope: !403)
!828 = !DILocation(line: 1139, column: 63, scope: !403)
!829 = !DILocation(line: 1140, column: 37, scope: !403)
!830 = !DILocation(line: 1140, column: 50, scope: !403)
!831 = !DILocation(line: 1141, column: 38, scope: !403)
!832 = !DILocation(line: 1141, column: 57, scope: !403)
!833 = !DILocation(line: 1141, column: 76, scope: !403)
!834 = !DILocation(line: 1141, column: 95, scope: !403)
!835 = !DILocation(line: 1141, column: 35, scope: !403)
!836 = !DILocation(line: 1142, column: 22, scope: !403)
!837 = !DILocation(line: 1142, column: 46, scope: !403)
!838 = !DILocation(line: 1142, column: 44, scope: !403)
!839 = !DILocation(line: 1143, column: 22, scope: !403)
!840 = !DILocation(line: 1144, column: 21, scope: !403)
!841 = !DILocation(line: 1145, column: 16, scope: !403)
!842 = !DILocation(line: 0, scope: !405)
!843 = !DILocation(line: 1147, column: 5, scope: !333)
!844 = !DILocation(line: 0, scope: !286)
!845 = !DILocation(line: 1149, column: 1, scope: !275)
!846 = !DISubprogram(name: "log", scope: !847, file: !847, line: 104, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!848 = !DISubroutineType(types: !849)
!849 = !{!78, !78}
!850 = !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !851, file: !851, line: 130, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!852 = !DISubroutineType(types: !853)
!853 = !{!40, !92, !92, !92, !92, !93}
!854 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e10_e", scope: !2, file: !2, line: 1690, type: !855, scopeLine: 1692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!40, !92, !92, !92, !93}
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !872, !878, !879, !880, !881, !882, !883, !884}
!858 = !DILocalVariable(name: "a", arg: 1, scope: !854, file: !2, line: 1690, type: !92)
!859 = !DILocalVariable(name: "b", arg: 2, scope: !854, file: !2, line: 1690, type: !92)
!860 = !DILocalVariable(name: "x", arg: 3, scope: !854, file: !2, line: 1690, type: !92)
!861 = !DILocalVariable(name: "result", arg: 4, scope: !854, file: !2, line: 1691, type: !93)
!862 = !DILocalVariable(name: "rinta", scope: !854, file: !2, line: 1693, type: !92)
!863 = !DILocalVariable(name: "rintb", scope: !854, file: !2, line: 1694, type: !92)
!864 = !DILocalVariable(name: "a_integer", scope: !854, file: !2, line: 1695, type: !91)
!865 = !DILocalVariable(name: "b_integer", scope: !854, file: !2, line: 1696, type: !91)
!866 = !DILocalVariable(name: "powx1N_1", scope: !867, file: !2, line: 1715, type: !163)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 1714, column: 4)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 1712, column: 11)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 1709, column: 12)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 1703, column: 11)
!871 = distinct !DILexicalBlock(scope: !854, file: !2, line: 1700, column: 6)
!872 = !DILocalVariable(name: "lnx", scope: !873, file: !2, line: 1739, type: !92)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 1735, column: 10)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 1730, column: 8)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 1729, column: 8)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 1726, column: 12)
!877 = distinct !DILexicalBlock(scope: !868, file: !2, line: 1723, column: 12)
!878 = !DILocalVariable(name: "ln_pre_val", scope: !873, file: !2, line: 1740, type: !92)
!879 = !DILocalVariable(name: "ln_pre_err", scope: !873, file: !2, line: 1741, type: !92)
!880 = !DILocalVariable(name: "ap", scope: !873, file: !2, line: 1742, type: !92)
!881 = !DILocalVariable(name: "bp", scope: !873, file: !2, line: 1743, type: !92)
!882 = !DILocalVariable(name: "U", scope: !873, file: !2, line: 1744, type: !94)
!883 = !DILocalVariable(name: "stat_U", scope: !873, file: !2, line: 1745, type: !40)
!884 = !DILocalVariable(name: "stat_e", scope: !873, file: !2, line: 1746, type: !40)
!885 = distinct !DIAssignID()
!886 = distinct !DIAssignID()
!887 = distinct !DIAssignID()
!888 = !DILocation(line: 0, scope: !867)
!889 = distinct !DIAssignID()
!890 = !DILocation(line: 0, scope: !873)
!891 = !DILocation(line: 0, scope: !854)
!892 = !DILocation(line: 1693, column: 24, scope: !854)
!893 = !DILocation(line: 1694, column: 24, scope: !854)
!894 = !DILocation(line: 1695, column: 27, scope: !854)
!895 = !DILocation(line: 1695, column: 43, scope: !854)
!896 = !DILocation(line: 1696, column: 27, scope: !854)
!897 = !DILocation(line: 1696, column: 43, scope: !854)
!898 = !DILocation(line: 1700, column: 8, scope: !871)
!899 = !DILocation(line: 1700, column: 15, scope: !871)
!900 = !DILocation(line: 1701, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 1701, column: 5)
!902 = distinct !DILexicalBlock(scope: !871, file: !2, line: 1700, column: 26)
!903 = !DILocation(line: 1701, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !2, line: 1701, column: 5)
!905 = !DILocation(line: 1703, column: 13, scope: !870)
!906 = !DILocation(line: 1703, column: 11, scope: !871)
!907 = !DILocation(line: 1704, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !870, file: !2, line: 1703, column: 21)
!909 = !DILocation(line: 1705, column: 13, scope: !908)
!910 = !DILocation(line: 1705, column: 17, scope: !908)
!911 = !DILocation(line: 1706, column: 13, scope: !908)
!912 = !DILocation(line: 1706, column: 17, scope: !908)
!913 = !DILocation(line: 1707, column: 5, scope: !908)
!914 = !DILocation(line: 1709, column: 12, scope: !870)
!915 = !DILocation(line: 0, scope: !155, inlinedAt: !916)
!916 = distinct !DILocation(line: 1710, column: 12, scope: !917)
!917 = distinct !DILexicalBlock(scope: !869, file: !2, line: 1709, column: 22)
!918 = !DILocation(line: 1474, column: 3, scope: !155, inlinedAt: !916)
!919 = !DILocation(line: 1475, column: 37, scope: !155, inlinedAt: !916)
!920 = !DILocation(line: 1475, column: 16, scope: !155, inlinedAt: !916)
!921 = !DILocation(line: 1476, column: 16, scope: !155, inlinedAt: !916)
!922 = !DILocation(line: 1477, column: 34, scope: !155, inlinedAt: !916)
!923 = !DILocation(line: 1477, column: 24, scope: !155, inlinedAt: !916)
!924 = !DILocation(line: 1479, column: 29, scope: !155, inlinedAt: !916)
!925 = !DILocation(line: 1479, column: 24, scope: !155, inlinedAt: !916)
!926 = !DILocation(line: 1479, column: 38, scope: !155, inlinedAt: !916)
!927 = !DILocation(line: 1479, column: 33, scope: !155, inlinedAt: !916)
!928 = !DILocation(line: 1479, column: 15, scope: !155, inlinedAt: !916)
!929 = !DILocation(line: 1480, column: 17, scope: !155, inlinedAt: !916)
!930 = !DILocation(line: 1480, column: 36, scope: !155, inlinedAt: !916)
!931 = !DILocation(line: 1480, column: 45, scope: !155, inlinedAt: !916)
!932 = !DILocation(line: 1480, column: 30, scope: !155, inlinedAt: !916)
!933 = !DILocation(line: 1480, column: 11, scope: !155, inlinedAt: !916)
!934 = !DILocation(line: 1480, column: 15, scope: !155, inlinedAt: !916)
!935 = !DILocation(line: 1481, column: 11, scope: !155, inlinedAt: !916)
!936 = !DILocation(line: 1481, column: 15, scope: !155, inlinedAt: !916)
!937 = !DILocation(line: 1483, column: 10, scope: !155, inlinedAt: !916)
!938 = !DILocation(line: 1484, column: 1, scope: !155, inlinedAt: !916)
!939 = !DILocation(line: 1710, column: 5, scope: !917)
!940 = !DILocation(line: 1712, column: 21, scope: !868)
!941 = !DILocation(line: 1715, column: 6, scope: !867)
!942 = !DILocation(line: 1716, column: 26, scope: !867)
!943 = !DILocation(line: 1716, column: 6, scope: !867)
!944 = !DILocation(line: 1717, column: 29, scope: !867)
!945 = !DILocation(line: 1717, column: 18, scope: !867)
!946 = !DILocation(line: 1718, column: 29, scope: !867)
!947 = !DILocation(line: 1718, column: 14, scope: !867)
!948 = !DILocation(line: 1718, column: 18, scope: !867)
!949 = !DILocation(line: 1719, column: 14, scope: !867)
!950 = !DILocation(line: 1719, column: 18, scope: !867)
!951 = !DILocation(line: 1722, column: 4, scope: !868)
!952 = !DILocation(line: 1723, column: 22, scope: !877)
!953 = !DILocation(line: 1724, column: 39, scope: !954)
!954 = distinct !DILexicalBlock(scope: !877, file: !2, line: 1723, column: 36)
!955 = !DILocation(line: 1724, column: 46, scope: !954)
!956 = !DILocation(line: 1724, column: 13, scope: !954)
!957 = !DILocation(line: 1724, column: 6, scope: !954)
!958 = !DILocation(line: 1726, column: 14, scope: !876)
!959 = !DILocation(line: 1726, column: 12, scope: !877)
!960 = !DILocation(line: 1727, column: 12, scope: !961)
!961 = distinct !DILexicalBlock(scope: !876, file: !2, line: 1726, column: 21)
!962 = !DILocation(line: 1727, column: 5, scope: !961)
!963 = !DILocation(line: 1730, column: 8, scope: !875)
!964 = !DILocation(line: 1733, column: 14, scope: !965)
!965 = distinct !DILexicalBlock(scope: !874, file: !2, line: 1730, column: 18)
!966 = !DILocation(line: 1733, column: 7, scope: !965)
!967 = !DILocation(line: 1740, column: 40, scope: !873)
!968 = !DILocation(line: 1741, column: 33, scope: !873)
!969 = !DILocation(line: 1741, column: 43, scope: !873)
!970 = !DILocation(line: 1741, column: 49, scope: !873)
!971 = !DILocation(line: 1741, column: 76, scope: !873)
!972 = !DILocation(line: 1741, column: 67, scope: !873)
!973 = !DILocation(line: 1743, column: 29, scope: !873)
!974 = !DILocation(line: 1744, column: 7, scope: !873)
!975 = !DILocation(line: 1745, column: 20, scope: !873)
!976 = !DILocation(line: 1746, column: 61, scope: !873)
!977 = !DILocation(line: 1746, column: 59, scope: !873)
!978 = !DILocation(line: 1746, column: 64, scope: !873)
!979 = !DILocation(line: 1747, column: 47, scope: !873)
!980 = !DILocation(line: 1747, column: 54, scope: !873)
!981 = !DILocation(line: 1746, column: 20, scope: !873)
!982 = !DILocation(line: 1749, column: 14, scope: !873)
!983 = !DILocation(line: 1750, column: 5, scope: !874)
!984 = !DILocation(line: 0, scope: !871)
!985 = !DILocation(line: 1752, column: 1, scope: !854)
!986 = !DISubprogram(name: "gsl_sf_pow_int_e", scope: !987, file: !987, line: 43, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!988 = !DISubroutineType(types: !989)
!989 = !{!40, !78, !40, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!991 = distinct !DISubprogram(name: "hyperg_U_negx", scope: !2, file: !2, line: 1522, type: !855, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1013, !1014, !1019, !1020}
!993 = !DILocalVariable(name: "a", arg: 1, scope: !991, file: !2, line: 1522, type: !92)
!994 = !DILocalVariable(name: "b", arg: 2, scope: !991, file: !2, line: 1522, type: !92)
!995 = !DILocalVariable(name: "x", arg: 3, scope: !991, file: !2, line: 1522, type: !92)
!996 = !DILocalVariable(name: "result", arg: 4, scope: !991, file: !2, line: 1522, type: !93)
!997 = !DILocalVariable(name: "r1", scope: !991, file: !2, line: 1524, type: !163)
!998 = !DILocalVariable(name: "r2", scope: !991, file: !2, line: 1524, type: !163)
!999 = !DILocalVariable(name: "stat_1", scope: !991, file: !2, line: 1525, type: !40)
!1000 = !DILocalVariable(name: "stat_2", scope: !991, file: !2, line: 1525, type: !40)
!1001 = !DILocalVariable(name: "status", scope: !991, file: !2, line: 1525, type: !40)
!1002 = !DILocalVariable(name: "a_int", scope: !991, file: !2, line: 1526, type: !40)
!1003 = !DILocalVariable(name: "b_int", scope: !991, file: !2, line: 1527, type: !40)
!1004 = !DILocalVariable(name: "T1", scope: !991, file: !2, line: 1529, type: !78)
!1005 = !DILocalVariable(name: "T1_err", scope: !991, file: !2, line: 1529, type: !78)
!1006 = !DILocalVariable(name: "T2", scope: !991, file: !2, line: 1529, type: !78)
!1007 = !DILocalVariable(name: "T2_err", scope: !991, file: !2, line: 1529, type: !78)
!1008 = !DILocalVariable(name: "Mr1", scope: !1009, file: !2, line: 1557, type: !163)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1556, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 1555, column: 11)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 1551, column: 5)
!1012 = distinct !DILexicalBlock(scope: !991, file: !2, line: 1533, column: 7)
!1013 = !DILocalVariable(name: "stat_Mr1", scope: !1009, file: !2, line: 1558, type: !40)
!1014 = !DILocalVariable(name: "Mr2", scope: !1015, file: !2, line: 1598, type: !163)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 1597, column: 9)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 1596, column: 11)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 1584, column: 5)
!1018 = distinct !DILexicalBlock(scope: !991, file: !2, line: 1570, column: 7)
!1019 = !DILocalVariable(name: "stat_Mr2", scope: !1015, file: !2, line: 1599, type: !40)
!1020 = !DILocalVariable(name: "x1mb", scope: !1021, file: !2, line: 1607, type: !78)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 1606, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 1605, column: 15)
!1023 = distinct !DIAssignID()
!1024 = !DILocation(line: 0, scope: !991)
!1025 = distinct !DIAssignID()
!1026 = distinct !DIAssignID()
!1027 = !DILocation(line: 0, scope: !1009)
!1028 = distinct !DIAssignID()
!1029 = !DILocation(line: 0, scope: !1015)
!1030 = !DILocation(line: 1524, column: 3, scope: !991)
!1031 = !DILocation(line: 1526, column: 21, scope: !991)
!1032 = !DILocation(line: 1526, column: 18, scope: !991)
!1033 = !DILocation(line: 1527, column: 21, scope: !991)
!1034 = !DILocation(line: 1527, column: 18, scope: !991)
!1035 = !DILocation(line: 1533, column: 13, scope: !1012)
!1036 = !DILocation(line: 1533, column: 34, scope: !1012)
!1037 = !DILocation(line: 1547, column: 19, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 1534, column: 5)
!1039 = !DILocation(line: 1547, column: 38, scope: !1038)
!1040 = !DILocation(line: 1547, column: 42, scope: !1038)
!1041 = !DILocation(line: 1548, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1548, column: 7)
!1043 = !DILocation(line: 1552, column: 33, scope: !1011)
!1044 = !DILocation(line: 1552, column: 36, scope: !1011)
!1045 = !DILocation(line: 1552, column: 16, scope: !1011)
!1046 = !DILocation(line: 1555, column: 14, scope: !1010)
!1047 = !DILocation(line: 1555, column: 18, scope: !1010)
!1048 = !DILocation(line: 1555, column: 11, scope: !1011)
!1049 = !DILocation(line: 1557, column: 11, scope: !1009)
!1050 = !DILocation(line: 1558, column: 26, scope: !1009)
!1051 = !DILocation(line: 1559, column: 20, scope: !1009)
!1052 = !DILocation(line: 1561, column: 20, scope: !1009)
!1053 = !DILocation(line: 1561, column: 29, scope: !1009)
!1054 = !DILocation(line: 1561, column: 24, scope: !1009)
!1055 = !DILocation(line: 1562, column: 44, scope: !1009)
!1056 = !DILocation(line: 1562, column: 42, scope: !1009)
!1057 = !DILocation(line: 1563, column: 24, scope: !1009)
!1058 = !DILocation(line: 1563, column: 28, scope: !1009)
!1059 = !DILocation(line: 1563, column: 15, scope: !1009)
!1060 = !DILocation(line: 1563, column: 58, scope: !1009)
!1061 = !DILocation(line: 1563, column: 53, scope: !1009)
!1062 = !DILocation(line: 1563, column: 40, scope: !1009)
!1063 = !DILocation(line: 1564, column: 9, scope: !1010)
!1064 = !DILocation(line: 1564, column: 9, scope: !1009)
!1065 = !DILocation(line: 0, scope: !1011)
!1066 = !DILocation(line: 1570, column: 13, scope: !1018)
!1067 = !DILocation(line: 1570, column: 34, scope: !1018)
!1068 = !DILocation(line: 1580, column: 19, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 1571, column: 5)
!1070 = !DILocation(line: 1580, column: 38, scope: !1069)
!1071 = !DILocation(line: 1580, column: 42, scope: !1069)
!1072 = !DILocation(line: 1581, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 1581, column: 7)
!1074 = !DILocation(line: 1585, column: 17, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 1585, column: 11)
!1076 = !DILocation(line: 1592, column: 36, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 1591, column: 9)
!1078 = !DILocation(line: 1592, column: 20, scope: !1077)
!1079 = !DILocation(line: 1593, column: 20, scope: !1077)
!1080 = !DILocation(line: 1596, column: 14, scope: !1016)
!1081 = !DILocation(line: 1596, column: 18, scope: !1016)
!1082 = !DILocation(line: 1596, column: 11, scope: !1017)
!1083 = !DILocation(line: 1598, column: 11, scope: !1015)
!1084 = !DILocation(line: 1599, column: 26, scope: !1015)
!1085 = !DILocation(line: 1600, column: 21, scope: !1015)
!1086 = !DILocation(line: 1600, column: 30, scope: !1015)
!1087 = !DILocation(line: 1600, column: 25, scope: !1015)
!1088 = !DILocation(line: 1601, column: 44, scope: !1015)
!1089 = !DILocation(line: 1601, column: 42, scope: !1015)
!1090 = !DILocation(line: 1602, column: 24, scope: !1015)
!1091 = !DILocation(line: 1602, column: 28, scope: !1015)
!1092 = !DILocation(line: 1602, column: 15, scope: !1015)
!1093 = !DILocation(line: 1602, column: 58, scope: !1015)
!1094 = !DILocation(line: 1602, column: 53, scope: !1015)
!1095 = !DILocation(line: 1602, column: 40, scope: !1015)
!1096 = !DILocation(line: 1603, column: 20, scope: !1015)
!1097 = !DILocation(line: 1605, column: 18, scope: !1022)
!1098 = !DILocation(line: 1605, column: 15, scope: !1015)
!1099 = !DILocation(line: 1607, column: 29, scope: !1021)
!1100 = !DILocation(line: 0, scope: !1021)
!1101 = !DILocation(line: 1608, column: 25, scope: !1021)
!1102 = !DILocation(line: 1609, column: 24, scope: !1021)
!1103 = !DILocation(line: 1609, column: 35, scope: !1021)
!1104 = !DILocation(line: 1610, column: 13, scope: !1021)
!1105 = !DILocation(line: 1611, column: 9, scope: !1016)
!1106 = !DILocation(line: 1611, column: 9, scope: !1015)
!1107 = !DILocation(line: 1614, column: 15, scope: !991)
!1108 = !DILocation(line: 1615, column: 41, scope: !991)
!1109 = !DILocation(line: 1615, column: 39, scope: !991)
!1110 = !DILocation(line: 1615, column: 59, scope: !991)
!1111 = !DILocation(line: 1615, column: 11, scope: !991)
!1112 = !DILocation(line: 1615, column: 15, scope: !991)
!1113 = !DILocation(line: 1616, column: 11, scope: !991)
!1114 = !DILocation(line: 1616, column: 15, scope: !991)
!1115 = !DILocation(line: 1618, column: 3, scope: !991)
!1116 = !DILocation(line: 1619, column: 1, scope: !991)
!1117 = distinct !DISubprogram(name: "hyperg_U_bge1", scope: !2, file: !2, line: 1156, type: !855, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1129, !1130, !1131, !1132, !1133, !1135, !1138, !1139, !1140, !1141, !1142, !1145, !1146, !1147, !1148, !1151, !1152, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1175, !1178, !1179, !1180, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1194, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1219, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1245, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1275, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1119 = !DILocalVariable(name: "a", arg: 1, scope: !1117, file: !2, line: 1156, type: !92)
!1120 = !DILocalVariable(name: "b", arg: 2, scope: !1117, file: !2, line: 1156, type: !92)
!1121 = !DILocalVariable(name: "x", arg: 3, scope: !1117, file: !2, line: 1156, type: !92)
!1122 = !DILocalVariable(name: "result", arg: 4, scope: !1117, file: !2, line: 1157, type: !93)
!1123 = !DILocalVariable(name: "rinta", scope: !1117, file: !2, line: 1159, type: !92)
!1124 = !DILocalVariable(name: "a_neg_integer", scope: !1117, file: !2, line: 1160, type: !91)
!1125 = !DILocalVariable(name: "n", scope: !1126, file: !2, line: 1171, type: !91)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 1168, column: 51)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 1168, column: 11)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 1162, column: 6)
!1129 = !DILocalVariable(name: "sgn", scope: !1126, file: !2, line: 1172, type: !92)
!1130 = !DILocalVariable(name: "lnfact", scope: !1126, file: !2, line: 1173, type: !163)
!1131 = !DILocalVariable(name: "L", scope: !1126, file: !2, line: 1174, type: !163)
!1132 = !DILocalVariable(name: "stat_L", scope: !1126, file: !2, line: 1175, type: !91)
!1133 = !DILocalVariable(name: "stat_e", scope: !1134, file: !2, line: 1178, type: !91)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 1177, column: 5)
!1135 = !DILocalVariable(name: "ln_pre_val", scope: !1136, file: !2, line: 1185, type: !92)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1184, column: 33)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 1184, column: 11)
!1138 = !DILocalVariable(name: "ln_pre_err", scope: !1136, file: !2, line: 1186, type: !92)
!1139 = !DILocalVariable(name: "asymp", scope: !1136, file: !2, line: 1187, type: !163)
!1140 = !DILocalVariable(name: "stat_asymp", scope: !1136, file: !2, line: 1188, type: !40)
!1141 = !DILocalVariable(name: "stat_e", scope: !1136, file: !2, line: 1189, type: !40)
!1142 = !DILocalVariable(name: "rU", scope: !1143, file: !2, line: 1195, type: !163)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 1194, column: 27)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1194, column: 11)
!1145 = !DILocalVariable(name: "ln_multiplier", scope: !1143, file: !2, line: 1196, type: !78)
!1146 = !DILocalVariable(name: "stat_U", scope: !1143, file: !2, line: 1197, type: !40)
!1147 = !DILocalVariable(name: "stat_e", scope: !1143, file: !2, line: 1198, type: !40)
!1148 = !DILocalVariable(name: "ser", scope: !1149, file: !2, line: 1202, type: !163)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1201, column: 34)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 1201, column: 11)
!1151 = !DILocalVariable(name: "stat_ser", scope: !1149, file: !2, line: 1203, type: !91)
!1152 = !DILocalVariable(name: "scale_factor", scope: !1153, file: !2, line: 1212, type: !92)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 1209, column: 20)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1209, column: 11)
!1155 = !DILocalVariable(name: "a0", scope: !1153, file: !2, line: 1213, type: !92)
!1156 = !DILocalVariable(name: "b0", scope: !1153, file: !2, line: 1214, type: !92)
!1157 = !DILocalVariable(name: "scale_count", scope: !1153, file: !2, line: 1215, type: !40)
!1158 = !DILocalVariable(name: "lm_0", scope: !1153, file: !2, line: 1216, type: !78)
!1159 = !DILocalVariable(name: "lm_1", scope: !1153, file: !2, line: 1216, type: !78)
!1160 = !DILocalVariable(name: "lm_max", scope: !1153, file: !2, line: 1217, type: !78)
!1161 = !DILocalVariable(name: "r_Uap1", scope: !1153, file: !2, line: 1218, type: !163)
!1162 = !DILocalVariable(name: "r_Ua", scope: !1153, file: !2, line: 1219, type: !163)
!1163 = !DILocalVariable(name: "stat_0", scope: !1153, file: !2, line: 1220, type: !40)
!1164 = !DILocalVariable(name: "stat_1", scope: !1153, file: !2, line: 1221, type: !40)
!1165 = !DILocalVariable(name: "stat_e", scope: !1153, file: !2, line: 1222, type: !40)
!1166 = !DILocalVariable(name: "Uap1", scope: !1153, file: !2, line: 1223, type: !78)
!1167 = !DILocalVariable(name: "Ua", scope: !1153, file: !2, line: 1224, type: !78)
!1168 = !DILocalVariable(name: "Uam1", scope: !1153, file: !2, line: 1225, type: !78)
!1169 = !DILocalVariable(name: "ap", scope: !1153, file: !2, line: 1226, type: !78)
!1170 = !DILocalVariable(name: "au0", scope: !1171, file: !2, line: 1237, type: !78)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1237, column: 7)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 1233, column: 37)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1233, column: 5)
!1174 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 1233, column: 5)
!1175 = !DILocalVariable(name: "lnscale", scope: !1176, file: !2, line: 1243, type: !92)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 1240, column: 17)
!1177 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 1240, column: 8)
!1178 = !DILocalVariable(name: "lnm", scope: !1176, file: !2, line: 1244, type: !163)
!1179 = !DILocalVariable(name: "y", scope: !1176, file: !2, line: 1245, type: !163)
!1180 = !DILocalVariable(name: "err_mult", scope: !1181, file: !2, line: 1259, type: !92)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 1256, column: 10)
!1182 = !DILocalVariable(name: "lnscale", scope: !1181, file: !2, line: 1260, type: !92)
!1183 = !DILocalVariable(name: "lnm", scope: !1181, file: !2, line: 1261, type: !163)
!1184 = !DILocalVariable(name: "y", scope: !1181, file: !2, line: 1262, type: !163)
!1185 = !DILocalVariable(name: "Ubm1", scope: !1181, file: !2, line: 1264, type: !78)
!1186 = !DILocalVariable(name: "Ub", scope: !1181, file: !2, line: 1265, type: !78)
!1187 = !DILocalVariable(name: "Ubp1", scope: !1181, file: !2, line: 1266, type: !78)
!1188 = !DILocalVariable(name: "bp", scope: !1181, file: !2, line: 1267, type: !78)
!1189 = !DILocalVariable(name: "au0", scope: !1190, file: !2, line: 1272, type: !78)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1272, column: 9)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 1268, column: 43)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 1268, column: 7)
!1193 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 1268, column: 7)
!1194 = !DILocalVariable(name: "scale_count", scope: !1195, file: !2, line: 1294, type: !40)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 1287, column: 25)
!1196 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 1287, column: 11)
!1197 = !DILocalVariable(name: "a0", scope: !1195, file: !2, line: 1295, type: !92)
!1198 = !DILocalVariable(name: "scale_factor", scope: !1195, file: !2, line: 1296, type: !92)
!1199 = !DILocalVariable(name: "lnscale", scope: !1195, file: !2, line: 1297, type: !78)
!1200 = !DILocalVariable(name: "lm_0", scope: !1195, file: !2, line: 1298, type: !78)
!1201 = !DILocalVariable(name: "lm_1", scope: !1195, file: !2, line: 1298, type: !78)
!1202 = !DILocalVariable(name: "lm_max", scope: !1195, file: !2, line: 1298, type: !78)
!1203 = !DILocalVariable(name: "r_Uam1", scope: !1195, file: !2, line: 1299, type: !163)
!1204 = !DILocalVariable(name: "r_Ua", scope: !1195, file: !2, line: 1300, type: !163)
!1205 = !DILocalVariable(name: "stat_0", scope: !1195, file: !2, line: 1301, type: !40)
!1206 = !DILocalVariable(name: "stat_1", scope: !1195, file: !2, line: 1302, type: !40)
!1207 = !DILocalVariable(name: "stat_e", scope: !1195, file: !2, line: 1303, type: !40)
!1208 = !DILocalVariable(name: "lnm", scope: !1195, file: !2, line: 1304, type: !163)
!1209 = !DILocalVariable(name: "y", scope: !1195, file: !2, line: 1305, type: !163)
!1210 = !DILocalVariable(name: "Uam1", scope: !1195, file: !2, line: 1306, type: !78)
!1211 = !DILocalVariable(name: "Ua", scope: !1195, file: !2, line: 1307, type: !78)
!1212 = !DILocalVariable(name: "Uap1", scope: !1195, file: !2, line: 1308, type: !78)
!1213 = !DILocalVariable(name: "ap", scope: !1195, file: !2, line: 1309, type: !78)
!1214 = !DILocalVariable(name: "au0", scope: !1215, file: !2, line: 1318, type: !78)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 1318, column: 7)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1314, column: 37)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1314, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 1314, column: 5)
!1219 = !DILocalVariable(name: "a0", scope: !1220, file: !2, line: 1337, type: !92)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 1334, column: 16)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 1334, column: 8)
!1222 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 1333, column: 8)
!1223 = !DILocalVariable(name: "scale_factor", scope: !1220, file: !2, line: 1338, type: !92)
!1224 = !DILocalVariable(name: "scale_count", scope: !1220, file: !2, line: 1339, type: !40)
!1225 = !DILocalVariable(name: "lnm", scope: !1220, file: !2, line: 1340, type: !163)
!1226 = !DILocalVariable(name: "y", scope: !1220, file: !2, line: 1341, type: !163)
!1227 = !DILocalVariable(name: "lnscale", scope: !1220, file: !2, line: 1342, type: !78)
!1228 = !DILocalVariable(name: "lm_0", scope: !1220, file: !2, line: 1343, type: !78)
!1229 = !DILocalVariable(name: "Uap1", scope: !1220, file: !2, line: 1344, type: !78)
!1230 = !DILocalVariable(name: "Ua", scope: !1220, file: !2, line: 1345, type: !78)
!1231 = !DILocalVariable(name: "Uam1", scope: !1220, file: !2, line: 1346, type: !78)
!1232 = !DILocalVariable(name: "U0", scope: !1220, file: !2, line: 1347, type: !163)
!1233 = !DILocalVariable(name: "ap", scope: !1220, file: !2, line: 1348, type: !78)
!1234 = !DILocalVariable(name: "ru", scope: !1220, file: !2, line: 1349, type: !78)
!1235 = !DILocalVariable(name: "r", scope: !1220, file: !2, line: 1350, type: !78)
!1236 = !DILocalVariable(name: "CF1_count", scope: !1220, file: !2, line: 1351, type: !40)
!1237 = !DILocalVariable(name: "stat_CF1", scope: !1220, file: !2, line: 1352, type: !40)
!1238 = !DILocalVariable(name: "stat_U0", scope: !1220, file: !2, line: 1353, type: !40)
!1239 = !DILocalVariable(name: "stat_e", scope: !1220, file: !2, line: 1354, type: !40)
!1240 = !DILocalVariable(name: "au0", scope: !1241, file: !2, line: 1362, type: !78)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 1362, column: 9)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 1358, column: 39)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 1358, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 1358, column: 7)
!1245 = !DILocalVariable(name: "scale_count_for", scope: !1246, file: !2, line: 1380, type: !40)
!1246 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 1376, column: 10)
!1247 = !DILocalVariable(name: "scale_count_bck", scope: !1246, file: !2, line: 1381, type: !40)
!1248 = !DILocalVariable(name: "scale_factor", scope: !1246, file: !2, line: 1382, type: !92)
!1249 = !DILocalVariable(name: "eps", scope: !1246, file: !2, line: 1383, type: !92)
!1250 = !DILocalVariable(name: "a0", scope: !1246, file: !2, line: 1384, type: !92)
!1251 = !DILocalVariable(name: "a1", scope: !1246, file: !2, line: 1385, type: !92)
!1252 = !DILocalVariable(name: "lnm", scope: !1246, file: !2, line: 1386, type: !163)
!1253 = !DILocalVariable(name: "y", scope: !1246, file: !2, line: 1387, type: !163)
!1254 = !DILocalVariable(name: "lm_for", scope: !1246, file: !2, line: 1388, type: !78)
!1255 = !DILocalVariable(name: "lnscale", scope: !1246, file: !2, line: 1389, type: !78)
!1256 = !DILocalVariable(name: "Ua1_bck", scope: !1246, file: !2, line: 1390, type: !78)
!1257 = !DILocalVariable(name: "Ua1_for", scope: !1246, file: !2, line: 1391, type: !78)
!1258 = !DILocalVariable(name: "stat_for", scope: !1246, file: !2, line: 1392, type: !40)
!1259 = !DILocalVariable(name: "stat_bck", scope: !1246, file: !2, line: 1393, type: !40)
!1260 = !DILocalVariable(name: "stat_e", scope: !1246, file: !2, line: 1394, type: !40)
!1261 = !DILocalVariable(name: "CF1_count", scope: !1246, file: !2, line: 1395, type: !40)
!1262 = !DILocalVariable(name: "Uap1", scope: !1263, file: !2, line: 1400, type: !78)
!1263 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 1397, column: 7)
!1264 = !DILocalVariable(name: "Ua", scope: !1263, file: !2, line: 1401, type: !78)
!1265 = !DILocalVariable(name: "Uam1", scope: !1263, file: !2, line: 1402, type: !78)
!1266 = !DILocalVariable(name: "ap", scope: !1263, file: !2, line: 1403, type: !78)
!1267 = !DILocalVariable(name: "ru", scope: !1263, file: !2, line: 1404, type: !78)
!1268 = !DILocalVariable(name: "r", scope: !1263, file: !2, line: 1405, type: !78)
!1269 = !DILocalVariable(name: "stat_CF1", scope: !1263, file: !2, line: 1406, type: !40)
!1270 = !DILocalVariable(name: "au0", scope: !1271, file: !2, line: 1414, type: !78)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 1414, column: 11)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 1410, column: 41)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 1410, column: 9)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1410, column: 9)
!1275 = !DILocalVariable(name: "r_Uam1", scope: !1276, file: !2, line: 1423, type: !163)
!1276 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 1419, column: 7)
!1277 = !DILocalVariable(name: "r_Ua", scope: !1276, file: !2, line: 1424, type: !163)
!1278 = !DILocalVariable(name: "lm_0", scope: !1276, file: !2, line: 1425, type: !78)
!1279 = !DILocalVariable(name: "lm_1", scope: !1276, file: !2, line: 1425, type: !78)
!1280 = !DILocalVariable(name: "stat_0", scope: !1276, file: !2, line: 1426, type: !40)
!1281 = !DILocalVariable(name: "stat_1", scope: !1276, file: !2, line: 1427, type: !40)
!1282 = !DILocalVariable(name: "Uam1", scope: !1276, file: !2, line: 1428, type: !78)
!1283 = !DILocalVariable(name: "Ua", scope: !1276, file: !2, line: 1429, type: !78)
!1284 = !DILocalVariable(name: "Uap1", scope: !1276, file: !2, line: 1430, type: !78)
!1285 = !DILocalVariable(name: "ap", scope: !1276, file: !2, line: 1431, type: !78)
!1286 = !DILocalVariable(name: "au0", scope: !1287, file: !2, line: 1441, type: !78)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 1441, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 1437, column: 42)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 1437, column: 9)
!1290 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 1437, column: 9)
!1291 = distinct !DIAssignID()
!1292 = !DILocation(line: 0, scope: !1126)
!1293 = distinct !DIAssignID()
!1294 = distinct !DIAssignID()
!1295 = !DILocation(line: 0, scope: !1136)
!1296 = distinct !DIAssignID()
!1297 = !DILocation(line: 0, scope: !1143)
!1298 = distinct !DIAssignID()
!1299 = distinct !DIAssignID()
!1300 = !DILocation(line: 0, scope: !1149)
!1301 = distinct !DIAssignID()
!1302 = !DILocation(line: 0, scope: !1153)
!1303 = distinct !DIAssignID()
!1304 = distinct !DIAssignID()
!1305 = distinct !DIAssignID()
!1306 = distinct !DIAssignID()
!1307 = !DILocation(line: 0, scope: !1195)
!1308 = distinct !DIAssignID()
!1309 = distinct !DIAssignID()
!1310 = distinct !DIAssignID()
!1311 = distinct !DIAssignID()
!1312 = !DILocation(line: 0, scope: !1220)
!1313 = distinct !DIAssignID()
!1314 = distinct !DIAssignID()
!1315 = distinct !DIAssignID()
!1316 = distinct !DIAssignID()
!1317 = !DILocation(line: 0, scope: !1246)
!1318 = distinct !DIAssignID()
!1319 = !DILocation(line: 0, scope: !1263)
!1320 = distinct !DIAssignID()
!1321 = !DILocation(line: 0, scope: !1276)
!1322 = distinct !DIAssignID()
!1323 = distinct !DIAssignID()
!1324 = distinct !DIAssignID()
!1325 = !DILocation(line: 0, scope: !1117)
!1326 = !DILocation(line: 1159, column: 24, scope: !1117)
!1327 = !DILocation(line: 1160, column: 32, scope: !1117)
!1328 = !DILocation(line: 1162, column: 8, scope: !1128)
!1329 = !DILocation(line: 1162, column: 6, scope: !1117)
!1330 = !DILocation(line: 1163, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 1162, column: 16)
!1332 = !DILocation(line: 1164, column: 13, scope: !1331)
!1333 = !DILocation(line: 1164, column: 17, scope: !1331)
!1334 = !DILocation(line: 1165, column: 13, scope: !1331)
!1335 = !DILocation(line: 1165, column: 17, scope: !1331)
!1336 = !DILocation(line: 1166, column: 5, scope: !1331)
!1337 = !DILocation(line: 1160, column: 38, scope: !1117)
!1338 = !DILocation(line: 1168, column: 25, scope: !1127)
!1339 = !DILocation(line: 1171, column: 20, scope: !1126)
!1340 = !DILocation(line: 1171, column: 19, scope: !1126)
!1341 = !DILocation(line: 1172, column: 25, scope: !1126)
!1342 = !DILocation(line: 1173, column: 5, scope: !1126)
!1343 = !DILocation(line: 1174, column: 5, scope: !1126)
!1344 = !DILocation(line: 1175, column: 24, scope: !1126)
!1345 = !DILocation(line: 1176, column: 5, scope: !1126)
!1346 = !DILocation(line: 1178, column: 59, scope: !1134)
!1347 = !DILocation(line: 1178, column: 71, scope: !1134)
!1348 = !DILocation(line: 1179, column: 61, scope: !1134)
!1349 = !DILocation(line: 1179, column: 58, scope: !1134)
!1350 = !DILocation(line: 1179, column: 68, scope: !1134)
!1351 = !DILocation(line: 1178, column: 26, scope: !1134)
!1352 = !DILocation(line: 0, scope: !1134)
!1353 = !DILocation(line: 1181, column: 14, scope: !1134)
!1354 = !DILocation(line: 1183, column: 3, scope: !1127)
!1355 = !DILocation(line: 1184, column: 11, scope: !1137)
!1356 = !DILocation(line: 0, scope: !470, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 1184, column: 11, scope: !1137)
!1358 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !1357)
!1359 = !DILocation(line: 0, scope: !470, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 1184, column: 11, scope: !1137)
!1361 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !1360)
!1362 = !DILocation(line: 1184, column: 11, scope: !1127)
!1363 = !DILocation(line: 1185, column: 31, scope: !1136)
!1364 = !DILocation(line: 1185, column: 33, scope: !1136)
!1365 = !DILocation(line: 1186, column: 55, scope: !1136)
!1366 = !DILocation(line: 1186, column: 53, scope: !1136)
!1367 = !DILocation(line: 1187, column: 5, scope: !1136)
!1368 = !DILocation(line: 1188, column: 22, scope: !1136)
!1369 = !DILocation(line: 1190, column: 53, scope: !1136)
!1370 = !DILocation(line: 1190, column: 64, scope: !1136)
!1371 = !DILocation(line: 1189, column: 18, scope: !1136)
!1372 = !DILocation(line: 1192, column: 12, scope: !1136)
!1373 = !DILocation(line: 1193, column: 3, scope: !1137)
!1374 = !DILocation(line: 1194, column: 19, scope: !1144)
!1375 = !DILocation(line: 1194, column: 11, scope: !1137)
!1376 = !DILocation(line: 1195, column: 5, scope: !1143)
!1377 = !DILocation(line: 1196, column: 5, scope: !1143)
!1378 = !DILocation(line: 1197, column: 18, scope: !1143)
!1379 = !DILocation(line: 1198, column: 44, scope: !1143)
!1380 = !DILocation(line: 1198, column: 79, scope: !1143)
!1381 = !DILocation(line: 1198, column: 78, scope: !1143)
!1382 = !DILocation(line: 1198, column: 103, scope: !1143)
!1383 = !DILocation(line: 1198, column: 111, scope: !1143)
!1384 = !DILocation(line: 1198, column: 18, scope: !1143)
!1385 = !DILocation(line: 1199, column: 12, scope: !1143)
!1386 = !DILocation(line: 1200, column: 3, scope: !1144)
!1387 = !DILocation(line: 1201, column: 11, scope: !1150)
!1388 = !DILocation(line: 1202, column: 5, scope: !1149)
!1389 = !DILocation(line: 1203, column: 26, scope: !1149)
!1390 = !DILocation(line: 1204, column: 23, scope: !1149)
!1391 = !DILocation(line: 1204, column: 17, scope: !1149)
!1392 = !DILocation(line: 1205, column: 23, scope: !1149)
!1393 = !DILocation(line: 1205, column: 13, scope: !1149)
!1394 = !DILocation(line: 1205, column: 17, scope: !1149)
!1395 = !DILocation(line: 1206, column: 13, scope: !1149)
!1396 = !DILocation(line: 1206, column: 17, scope: !1149)
!1397 = !DILocation(line: 1208, column: 3, scope: !1150)
!1398 = !DILocation(line: 1209, column: 11, scope: !1150)
!1399 = !DILocation(line: 1213, column: 27, scope: !1153)
!1400 = !DILocation(line: 1213, column: 36, scope: !1153)
!1401 = !DILocation(line: 1214, column: 27, scope: !1153)
!1402 = !DILocation(line: 1214, column: 36, scope: !1153)
!1403 = !DILocation(line: 1216, column: 5, scope: !1153)
!1404 = !DILocation(line: 1218, column: 5, scope: !1153)
!1405 = !DILocation(line: 1219, column: 5, scope: !1153)
!1406 = !DILocation(line: 1220, column: 18, scope: !1153)
!1407 = !DILocation(line: 1221, column: 18, scope: !1153)
!1408 = !DILocation(line: 1223, column: 26, scope: !1153)
!1409 = !DILocation(line: 1224, column: 24, scope: !1153)
!1410 = !DILocation(line: 1227, column: 14, scope: !1153)
!1411 = !DILocation(line: 1228, column: 13, scope: !1153)
!1412 = !DILocation(line: 1228, column: 10, scope: !1153)
!1413 = !DILocation(line: 1229, column: 17, scope: !1153)
!1414 = !DILocation(line: 1229, column: 13, scope: !1153)
!1415 = !DILocation(line: 1229, column: 10, scope: !1153)
!1416 = !DILocation(line: 1233, column: 18, scope: !1173)
!1417 = !DILocation(line: 1233, column: 5, scope: !1174)
!1418 = !DILocation(line: 1234, column: 23, scope: !1172)
!1419 = !DILocation(line: 1234, column: 16, scope: !1172)
!1420 = !DILocation(line: 1234, column: 28, scope: !1172)
!1421 = !DILocation(line: 1234, column: 42, scope: !1172)
!1422 = !DILocation(line: 1234, column: 45, scope: !1172)
!1423 = !DILocation(line: 1234, column: 49, scope: !1172)
!1424 = !DILocation(line: 1237, column: 7, scope: !1171)
!1425 = !DILocation(line: 0, scope: !1171)
!1426 = !DILocation(line: 1237, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 1237, column: 7)
!1428 = !DILocation(line: 1237, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 1237, column: 7)
!1430 = !DILocation(line: 1237, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 1237, column: 7)
!1432 = !DILocation(line: 1237, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 1237, column: 7)
!1434 = !DILocation(line: 0, scope: !1172)
!1435 = distinct !{!1435, !1417, !1436, !536}
!1436 = !DILocation(line: 1238, column: 5, scope: !1174)
!1437 = !DILocation(line: 1240, column: 10, scope: !1177)
!1438 = !DILocation(line: 1240, column: 8, scope: !1153)
!1439 = !DILocation(line: 0, scope: !1176)
!1440 = !DILocation(line: 1246, column: 26, scope: !1176)
!1441 = !DILocation(line: 1246, column: 38, scope: !1176)
!1442 = !DILocation(line: 1247, column: 42, scope: !1176)
!1443 = !DILocation(line: 1247, column: 39, scope: !1176)
!1444 = !DILocation(line: 1249, column: 28, scope: !1176)
!1445 = !DILocation(line: 1249, column: 39, scope: !1176)
!1446 = !DILocation(line: 1249, column: 31, scope: !1176)
!1447 = !DILocation(line: 1249, column: 46, scope: !1176)
!1448 = !DILocation(line: 1249, column: 44, scope: !1176)
!1449 = !DILocation(line: 1250, column: 26, scope: !1176)
!1450 = !DILocation(line: 1250, column: 35, scope: !1176)
!1451 = !DILocation(line: 1250, column: 29, scope: !1176)
!1452 = !DILocation(line: 1250, column: 40, scope: !1176)
!1453 = !DILocation(line: 1251, column: 47, scope: !1176)
!1454 = !DILocation(line: 1251, column: 41, scope: !1176)
!1455 = !DILocation(line: 1251, column: 38, scope: !1176)
!1456 = !DILocation(line: 1251, column: 59, scope: !1176)
!1457 = !DILocation(line: 1252, column: 21, scope: !1176)
!1458 = !DILocation(line: 1252, column: 16, scope: !1176)
!1459 = !DILocation(line: 1252, column: 13, scope: !1176)
!1460 = !DILocation(line: 1253, column: 21, scope: !1176)
!1461 = !DILocation(line: 1253, column: 16, scope: !1176)
!1462 = !DILocation(line: 1253, column: 13, scope: !1176)
!1463 = !DILocation(line: 1254, column: 16, scope: !1176)
!1464 = !DILocation(line: 1255, column: 5, scope: !1176)
!1465 = !DILocation(line: 1259, column: 31, scope: !1181)
!1466 = !DILocation(line: 1259, column: 44, scope: !1181)
!1467 = !DILocation(line: 1259, column: 55, scope: !1181)
!1468 = !DILocation(line: 1265, column: 27, scope: !1181)
!1469 = !DILocation(line: 0, scope: !1181)
!1470 = !DILocation(line: 1265, column: 29, scope: !1181)
!1471 = !DILocation(line: 1265, column: 23, scope: !1181)
!1472 = !DILocation(line: 1265, column: 34, scope: !1181)
!1473 = !DILocation(line: 1265, column: 47, scope: !1181)
!1474 = !DILocation(line: 1265, column: 51, scope: !1181)
!1475 = !DILocation(line: 1268, scope: !1193)
!1476 = !DILocation(line: 1268, column: 24, scope: !1192)
!1477 = !DILocation(line: 1268, column: 7, scope: !1193)
!1478 = !DILocation(line: 1269, column: 27, scope: !1191)
!1479 = !DILocation(line: 1269, column: 40, scope: !1191)
!1480 = !DILocation(line: 1269, column: 45, scope: !1191)
!1481 = !DILocation(line: 1269, column: 49, scope: !1191)
!1482 = !DILocation(line: 1272, column: 9, scope: !1190)
!1483 = !DILocation(line: 0, scope: !1190)
!1484 = !DILocation(line: 1272, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 1272, column: 9)
!1486 = !DILocation(line: 1272, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1272, column: 9)
!1488 = !DILocation(line: 1272, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1272, column: 9)
!1490 = !DILocation(line: 1272, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1272, column: 9)
!1492 = !DILocation(line: 0, scope: !1191)
!1493 = distinct !{!1493, !1477, !1494, !536}
!1494 = !DILocation(line: 1273, column: 7, scope: !1193)
!1495 = !DILocation(line: 1275, column: 26, scope: !1181)
!1496 = !DILocation(line: 1275, column: 38, scope: !1181)
!1497 = !DILocation(line: 1276, column: 42, scope: !1181)
!1498 = !DILocation(line: 1276, column: 57, scope: !1181)
!1499 = !DILocation(line: 1276, column: 39, scope: !1181)
!1500 = !DILocation(line: 1278, column: 20, scope: !1181)
!1501 = !DILocation(line: 1278, column: 45, scope: !1181)
!1502 = !DILocation(line: 1278, column: 56, scope: !1181)
!1503 = !DILocation(line: 1278, column: 48, scope: !1181)
!1504 = !DILocation(line: 1278, column: 33, scope: !1181)
!1505 = !DILocation(line: 1278, column: 31, scope: !1181)
!1506 = !DILocation(line: 1278, column: 63, scope: !1181)
!1507 = !DILocation(line: 1278, column: 61, scope: !1181)
!1508 = !DILocation(line: 1279, column: 43, scope: !1181)
!1509 = !DILocation(line: 1279, column: 52, scope: !1181)
!1510 = !DILocation(line: 1279, column: 46, scope: !1181)
!1511 = !DILocation(line: 1279, column: 33, scope: !1181)
!1512 = !DILocation(line: 1279, column: 31, scope: !1181)
!1513 = !DILocation(line: 1279, column: 57, scope: !1181)
!1514 = !DILocation(line: 1280, column: 38, scope: !1181)
!1515 = !DILocation(line: 1280, column: 49, scope: !1181)
!1516 = !DILocation(line: 1281, column: 21, scope: !1181)
!1517 = !DILocation(line: 1281, column: 16, scope: !1181)
!1518 = !DILocation(line: 1281, column: 13, scope: !1181)
!1519 = !DILocation(line: 1282, column: 21, scope: !1181)
!1520 = !DILocation(line: 1282, column: 16, scope: !1181)
!1521 = !DILocation(line: 1282, column: 13, scope: !1181)
!1522 = !DILocation(line: 1283, column: 16, scope: !1181)
!1523 = !DILocation(line: 0, scope: !1177)
!1524 = !DILocation(line: 1285, column: 12, scope: !1153)
!1525 = !DILocation(line: 1286, column: 3, scope: !1154)
!1526 = !DILocation(line: 1287, column: 17, scope: !1196)
!1527 = !DILocation(line: 1287, column: 13, scope: !1196)
!1528 = !DILocation(line: 1287, column: 11, scope: !1154)
!1529 = !DILocation(line: 1295, column: 27, scope: !1195)
!1530 = !DILocation(line: 1298, column: 5, scope: !1195)
!1531 = !DILocation(line: 1299, column: 5, scope: !1195)
!1532 = !DILocation(line: 1300, column: 5, scope: !1195)
!1533 = !DILocation(line: 1301, column: 18, scope: !1195)
!1534 = !DILocation(line: 1302, column: 18, scope: !1195)
!1535 = !DILocation(line: 1306, column: 26, scope: !1195)
!1536 = !DILocation(line: 1307, column: 24, scope: !1195)
!1537 = !DILocation(line: 1310, column: 14, scope: !1195)
!1538 = !DILocation(line: 1311, column: 13, scope: !1195)
!1539 = !DILocation(line: 1312, column: 17, scope: !1195)
!1540 = !DILocation(line: 1312, column: 13, scope: !1195)
!1541 = !DILocation(line: 1312, column: 10, scope: !1195)
!1542 = !DILocation(line: 1314, column: 18, scope: !1217)
!1543 = !DILocation(line: 1314, column: 5, scope: !1218)
!1544 = !DILocation(line: 1311, column: 10, scope: !1195)
!1545 = !DILocation(line: 1315, column: 29, scope: !1216)
!1546 = !DILocation(line: 1315, column: 32, scope: !1216)
!1547 = !DILocation(line: 1315, column: 35, scope: !1216)
!1548 = !DILocation(line: 1315, column: 14, scope: !1216)
!1549 = !DILocation(line: 1315, column: 51, scope: !1216)
!1550 = !DILocation(line: 1315, column: 43, scope: !1216)
!1551 = !DILocation(line: 1315, column: 39, scope: !1216)
!1552 = !DILocation(line: 1318, column: 7, scope: !1215)
!1553 = !DILocation(line: 0, scope: !1215)
!1554 = !DILocation(line: 1318, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 1318, column: 7)
!1556 = !DILocation(line: 1318, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 1318, column: 7)
!1558 = !DILocation(line: 1318, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 1318, column: 7)
!1560 = !DILocation(line: 1318, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 1318, column: 7)
!1562 = !DILocation(line: 0, scope: !1216)
!1563 = distinct !{!1563, !1543, !1564, !536}
!1564 = !DILocation(line: 1319, column: 5, scope: !1218)
!1565 = !DILocation(line: 1322, column: 24, scope: !1195)
!1566 = !DILocation(line: 1322, column: 36, scope: !1195)
!1567 = !DILocation(line: 1323, column: 40, scope: !1195)
!1568 = !DILocation(line: 1323, column: 55, scope: !1195)
!1569 = !DILocation(line: 1323, column: 37, scope: !1195)
!1570 = !DILocation(line: 1325, column: 26, scope: !1195)
!1571 = !DILocation(line: 1325, column: 37, scope: !1195)
!1572 = !DILocation(line: 1325, column: 29, scope: !1195)
!1573 = !DILocation(line: 1325, column: 44, scope: !1195)
!1574 = !DILocation(line: 1325, column: 42, scope: !1195)
!1575 = !DILocation(line: 1326, column: 24, scope: !1195)
!1576 = !DILocation(line: 1326, column: 33, scope: !1195)
!1577 = !DILocation(line: 1326, column: 27, scope: !1195)
!1578 = !DILocation(line: 1326, column: 38, scope: !1195)
!1579 = !DILocation(line: 1327, column: 45, scope: !1195)
!1580 = !DILocation(line: 1327, column: 39, scope: !1195)
!1581 = !DILocation(line: 1327, column: 36, scope: !1195)
!1582 = !DILocation(line: 1327, column: 57, scope: !1195)
!1583 = !DILocation(line: 1328, column: 19, scope: !1195)
!1584 = !DILocation(line: 1328, column: 14, scope: !1195)
!1585 = !DILocation(line: 1328, column: 11, scope: !1195)
!1586 = !DILocation(line: 1329, column: 19, scope: !1195)
!1587 = !DILocation(line: 1329, column: 14, scope: !1195)
!1588 = !DILocation(line: 1329, column: 11, scope: !1195)
!1589 = !DILocation(line: 1330, column: 14, scope: !1195)
!1590 = !DILocation(line: 1331, column: 12, scope: !1195)
!1591 = !DILocation(line: 1332, column: 3, scope: !1196)
!1592 = !DILocation(line: 1334, column: 10, scope: !1221)
!1593 = !DILocation(line: 0, scope: !1221)
!1594 = !DILocation(line: 1334, column: 8, scope: !1222)
!1595 = !DILocation(line: 1343, column: 7, scope: !1220)
!1596 = !DILocation(line: 1347, column: 7, scope: !1220)
!1597 = !DILocation(line: 1349, column: 7, scope: !1220)
!1598 = !DILocation(line: 1351, column: 7, scope: !1220)
!1599 = !DILocation(line: 1352, column: 22, scope: !1220)
!1600 = !DILocation(line: 1358, column: 19, scope: !1243)
!1601 = !DILocation(line: 1358, column: 7, scope: !1244)
!1602 = !DILocation(line: 1355, column: 11, scope: !1220)
!1603 = !DILocation(line: 1355, column: 13, scope: !1220)
!1604 = !DILocation(line: 1357, column: 16, scope: !1220)
!1605 = !DILocation(line: 1359, column: 24, scope: !1242)
!1606 = !DILocation(line: 1359, column: 27, scope: !1242)
!1607 = !DILocation(line: 1359, column: 30, scope: !1242)
!1608 = !DILocation(line: 1359, column: 46, scope: !1242)
!1609 = !DILocation(line: 1359, column: 38, scope: !1242)
!1610 = !DILocation(line: 1359, column: 49, scope: !1242)
!1611 = !DILocation(line: 1359, column: 16, scope: !1242)
!1612 = !DILocation(line: 1362, column: 9, scope: !1241)
!1613 = !DILocation(line: 0, scope: !1241)
!1614 = !DILocation(line: 1362, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 1362, column: 9)
!1616 = !DILocation(line: 1362, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 1362, column: 9)
!1618 = !DILocation(line: 1362, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 1362, column: 9)
!1620 = !DILocation(line: 1362, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 1362, column: 9)
!1622 = !DILocation(line: 0, scope: !1242)
!1623 = distinct !{!1623, !1601, !1624, !536}
!1624 = !DILocation(line: 1363, column: 7, scope: !1244)
!1625 = !DILocation(line: 1368, column: 24, scope: !1220)
!1626 = !DILocation(line: 1368, column: 36, scope: !1220)
!1627 = !DILocation(line: 1365, column: 17, scope: !1220)
!1628 = !DILocation(line: 1368, column: 17, scope: !1220)
!1629 = !DILocation(line: 1369, column: 42, scope: !1220)
!1630 = !DILocation(line: 1369, column: 55, scope: !1220)
!1631 = !DILocation(line: 1369, column: 39, scope: !1220)
!1632 = !DILocation(line: 1370, column: 37, scope: !1220)
!1633 = !DILocation(line: 1370, column: 40, scope: !1220)
!1634 = !DILocation(line: 1370, column: 32, scope: !1220)
!1635 = !DILocation(line: 1371, column: 37, scope: !1220)
!1636 = !DILocation(line: 1371, column: 41, scope: !1220)
!1637 = !DILocation(line: 1371, column: 40, scope: !1220)
!1638 = !DILocation(line: 1371, column: 32, scope: !1220)
!1639 = !DILocation(line: 1372, column: 41, scope: !1220)
!1640 = !DILocation(line: 1372, column: 54, scope: !1220)
!1641 = !DILocation(line: 1372, column: 64, scope: !1220)
!1642 = !DILocation(line: 1372, column: 38, scope: !1220)
!1643 = !DILocation(line: 1372, column: 73, scope: !1220)
!1644 = !DILocation(line: 1372, column: 71, scope: !1220)
!1645 = !DILocation(line: 1373, column: 16, scope: !1220)
!1646 = !DILocation(line: 1374, column: 14, scope: !1220)
!1647 = !DILocation(line: 1375, column: 5, scope: !1221)
!1648 = !DILocation(line: 1384, column: 31, scope: !1246)
!1649 = !DILocation(line: 1384, column: 27, scope: !1246)
!1650 = !DILocation(line: 1385, column: 38, scope: !1246)
!1651 = !DILocation(line: 1385, column: 30, scope: !1246)
!1652 = !DILocation(line: 1395, column: 7, scope: !1246)
!1653 = !DILocation(line: 1404, column: 9, scope: !1263)
!1654 = !DILocation(line: 1406, column: 24, scope: !1263)
!1655 = !DILocation(line: 1410, column: 21, scope: !1273)
!1656 = !DILocation(line: 1410, column: 9, scope: !1274)
!1657 = !DILocation(line: 1407, column: 13, scope: !1263)
!1658 = !DILocation(line: 1407, column: 15, scope: !1263)
!1659 = !DILocation(line: 1409, column: 18, scope: !1263)
!1660 = !DILocation(line: 1411, column: 26, scope: !1272)
!1661 = !DILocation(line: 1411, column: 29, scope: !1272)
!1662 = !DILocation(line: 1411, column: 32, scope: !1272)
!1663 = !DILocation(line: 1411, column: 48, scope: !1272)
!1664 = !DILocation(line: 1411, column: 40, scope: !1272)
!1665 = !DILocation(line: 1411, column: 51, scope: !1272)
!1666 = !DILocation(line: 1411, column: 18, scope: !1272)
!1667 = !DILocation(line: 1414, column: 11, scope: !1271)
!1668 = !DILocation(line: 0, scope: !1271)
!1669 = !DILocation(line: 1414, column: 11, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 1414, column: 11)
!1671 = !DILocation(line: 1414, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 1414, column: 11)
!1673 = !DILocation(line: 1414, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 1414, column: 11)
!1675 = !DILocation(line: 1414, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 1414, column: 11)
!1677 = !DILocation(line: 0, scope: !1272)
!1678 = distinct !{!1678, !1656, !1679, !536}
!1679 = !DILocation(line: 1415, column: 9, scope: !1274)
!1680 = !DILocation(line: 1418, column: 7, scope: !1246)
!1681 = !DILocation(line: 1423, column: 9, scope: !1276)
!1682 = !DILocation(line: 1424, column: 9, scope: !1276)
!1683 = !DILocation(line: 1425, column: 9, scope: !1276)
!1684 = !DILocation(line: 1426, column: 22, scope: !1276)
!1685 = !DILocation(line: 1427, column: 22, scope: !1276)
!1686 = !DILocation(line: 1428, column: 30, scope: !1276)
!1687 = !DILocation(line: 1429, column: 28, scope: !1276)
!1688 = !DILocation(line: 1433, column: 18, scope: !1276)
!1689 = !DILocation(line: 1434, column: 17, scope: !1276)
!1690 = !DILocation(line: 1435, column: 21, scope: !1276)
!1691 = !DILocation(line: 1435, column: 17, scope: !1276)
!1692 = !DILocation(line: 1435, column: 14, scope: !1276)
!1693 = !DILocation(line: 1437, column: 22, scope: !1289)
!1694 = !DILocation(line: 1437, column: 9, scope: !1290)
!1695 = !DILocation(line: 1434, column: 14, scope: !1276)
!1696 = !DILocation(line: 1438, column: 33, scope: !1288)
!1697 = !DILocation(line: 1438, column: 36, scope: !1288)
!1698 = !DILocation(line: 1438, column: 39, scope: !1288)
!1699 = !DILocation(line: 1438, column: 18, scope: !1288)
!1700 = !DILocation(line: 1438, column: 55, scope: !1288)
!1701 = !DILocation(line: 1438, column: 47, scope: !1288)
!1702 = !DILocation(line: 1438, column: 43, scope: !1288)
!1703 = !DILocation(line: 1441, column: 11, scope: !1287)
!1704 = !DILocation(line: 0, scope: !1287)
!1705 = !DILocation(line: 1441, column: 11, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 1441, column: 11)
!1707 = !DILocation(line: 1441, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1441, column: 11)
!1709 = !DILocation(line: 1441, column: 11, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1441, column: 11)
!1711 = !DILocation(line: 1441, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 1441, column: 11)
!1713 = !DILocation(line: 0, scope: !1288)
!1714 = distinct !{!1714, !1694, !1715, !536}
!1715 = !DILocation(line: 1442, column: 9, scope: !1290)
!1716 = !DILocation(line: 1444, column: 20, scope: !1276)
!1717 = !DILocation(line: 1445, column: 7, scope: !1246)
!1718 = !DILocation(line: 1448, column: 43, scope: !1246)
!1719 = !DILocation(line: 1448, column: 26, scope: !1246)
!1720 = !DILocation(line: 1448, column: 61, scope: !1246)
!1721 = !DILocation(line: 1449, column: 42, scope: !1246)
!1722 = !DILocation(line: 1449, column: 57, scope: !1246)
!1723 = !DILocation(line: 1449, column: 96, scope: !1246)
!1724 = !DILocation(line: 1449, column: 39, scope: !1246)
!1725 = !DILocation(line: 1450, column: 31, scope: !1246)
!1726 = !DILocation(line: 1450, column: 39, scope: !1246)
!1727 = !DILocation(line: 1451, column: 40, scope: !1246)
!1728 = !DILocation(line: 1451, column: 53, scope: !1246)
!1729 = !DILocation(line: 1451, column: 63, scope: !1246)
!1730 = !DILocation(line: 1451, column: 37, scope: !1246)
!1731 = !DILocation(line: 1451, column: 72, scope: !1246)
!1732 = !DILocation(line: 1451, column: 70, scope: !1246)
!1733 = !DILocation(line: 1452, column: 16, scope: !1246)
!1734 = !DILocation(line: 1453, column: 14, scope: !1246)
!1735 = !DILocation(line: 1454, column: 5, scope: !1221)
!1736 = !DILocation(line: 0, scope: !1128)
!1737 = !DILocation(line: 1456, column: 1, scope: !1117)
!1738 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int_e", scope: !2, file: !2, line: 1756, type: !1739, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!40, !91, !91, !92, !990}
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1742 = !DILocalVariable(name: "a", arg: 1, scope: !1738, file: !2, line: 1756, type: !91)
!1743 = !DILocalVariable(name: "b", arg: 2, scope: !1738, file: !2, line: 1756, type: !91)
!1744 = !DILocalVariable(name: "x", arg: 3, scope: !1738, file: !2, line: 1756, type: !92)
!1745 = !DILocalVariable(name: "result", arg: 4, scope: !1738, file: !2, line: 1756, type: !990)
!1746 = !DILocalVariable(name: "re", scope: !1738, file: !2, line: 1758, type: !94)
!1747 = !DILocalVariable(name: "stat_U", scope: !1738, file: !2, line: 1759, type: !40)
!1748 = !DILocalVariable(name: "stat_c", scope: !1738, file: !2, line: 1760, type: !40)
!1749 = distinct !DIAssignID()
!1750 = !DILocation(line: 0, scope: !1738)
!1751 = !DILocation(line: 1758, column: 3, scope: !1738)
!1752 = !DILocation(line: 1758, column: 21, scope: !1738)
!1753 = distinct !DIAssignID()
!1754 = !DILocation(line: 1759, column: 16, scope: !1738)
!1755 = !DILocation(line: 1760, column: 16, scope: !1738)
!1756 = !DILocation(line: 1761, column: 10, scope: !1738)
!1757 = !DILocation(line: 1762, column: 1, scope: !1738)
!1758 = !DILocation(line: 1761, column: 3, scope: !1738)
!1759 = !DISubprogram(name: "gsl_sf_result_smash_e", scope: !95, file: !95, line: 54, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!40, !1762, !990}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1764 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e", scope: !2, file: !2, line: 1766, type: !1765, scopeLine: 1767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!40, !92, !92, !92, !990}
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1768 = !DILocalVariable(name: "a", arg: 1, scope: !1764, file: !2, line: 1766, type: !92)
!1769 = !DILocalVariable(name: "b", arg: 2, scope: !1764, file: !2, line: 1766, type: !92)
!1770 = !DILocalVariable(name: "x", arg: 3, scope: !1764, file: !2, line: 1766, type: !92)
!1771 = !DILocalVariable(name: "result", arg: 4, scope: !1764, file: !2, line: 1766, type: !990)
!1772 = !DILocalVariable(name: "re", scope: !1764, file: !2, line: 1768, type: !94)
!1773 = !DILocalVariable(name: "stat_U", scope: !1764, file: !2, line: 1769, type: !40)
!1774 = !DILocalVariable(name: "stat_c", scope: !1764, file: !2, line: 1770, type: !40)
!1775 = distinct !DIAssignID()
!1776 = !DILocation(line: 0, scope: !1764)
!1777 = !DILocation(line: 1768, column: 3, scope: !1764)
!1778 = !DILocation(line: 1768, column: 21, scope: !1764)
!1779 = distinct !DIAssignID()
!1780 = !DILocation(line: 1769, column: 16, scope: !1764)
!1781 = !DILocation(line: 1770, column: 16, scope: !1764)
!1782 = !DILocation(line: 1771, column: 10, scope: !1764)
!1783 = !DILocation(line: 1772, column: 1, scope: !1764)
!1784 = !DILocation(line: 1771, column: 3, scope: !1764)
!1785 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int", scope: !2, file: !2, line: 1779, type: !1786, scopeLine: 1780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!78, !91, !91, !92}
!1788 = !{!1789, !1790, !1791, !1792, !1793}
!1789 = !DILocalVariable(name: "a", arg: 1, scope: !1785, file: !2, line: 1779, type: !91)
!1790 = !DILocalVariable(name: "b", arg: 2, scope: !1785, file: !2, line: 1779, type: !91)
!1791 = !DILocalVariable(name: "x", arg: 3, scope: !1785, file: !2, line: 1779, type: !92)
!1792 = !DILocalVariable(name: "result", scope: !1785, file: !2, line: 1781, type: !163)
!1793 = !DILocalVariable(name: "status", scope: !1785, file: !2, line: 1781, type: !40)
!1794 = distinct !DIAssignID()
!1795 = distinct !DIAssignID()
!1796 = !DILocation(line: 0, scope: !1785)
!1797 = !DILocation(line: 1781, column: 3, scope: !1785)
!1798 = !DILocation(line: 0, scope: !1738, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1781, column: 3, scope: !1785)
!1800 = !DILocation(line: 1758, column: 3, scope: !1738, inlinedAt: !1799)
!1801 = !DILocation(line: 1758, column: 21, scope: !1738, inlinedAt: !1799)
!1802 = distinct !DIAssignID()
!1803 = !DILocation(line: 1759, column: 16, scope: !1738, inlinedAt: !1799)
!1804 = !DILocation(line: 1760, column: 16, scope: !1738, inlinedAt: !1799)
!1805 = !DILocation(line: 1761, column: 10, scope: !1738, inlinedAt: !1799)
!1806 = !DILocation(line: 1762, column: 1, scope: !1738, inlinedAt: !1799)
!1807 = !DILocation(line: 1781, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1781, column: 3)
!1809 = !DILocation(line: 1781, column: 3, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 1781, column: 3)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 1781, column: 3)
!1812 = !DILocation(line: 1782, column: 1, scope: !1785)
!1813 = distinct !DISubprogram(name: "gsl_sf_hyperg_U", scope: !2, file: !2, line: 1784, type: !1814, scopeLine: 1785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!78, !92, !92, !92}
!1816 = !{!1817, !1818, !1819, !1820, !1821}
!1817 = !DILocalVariable(name: "a", arg: 1, scope: !1813, file: !2, line: 1784, type: !92)
!1818 = !DILocalVariable(name: "b", arg: 2, scope: !1813, file: !2, line: 1784, type: !92)
!1819 = !DILocalVariable(name: "x", arg: 3, scope: !1813, file: !2, line: 1784, type: !92)
!1820 = !DILocalVariable(name: "result", scope: !1813, file: !2, line: 1786, type: !163)
!1821 = !DILocalVariable(name: "status", scope: !1813, file: !2, line: 1786, type: !40)
!1822 = distinct !DIAssignID()
!1823 = distinct !DIAssignID()
!1824 = !DILocation(line: 0, scope: !1813)
!1825 = !DILocation(line: 1786, column: 3, scope: !1813)
!1826 = !DILocation(line: 0, scope: !1764, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1786, column: 3, scope: !1813)
!1828 = !DILocation(line: 1768, column: 3, scope: !1764, inlinedAt: !1827)
!1829 = !DILocation(line: 1768, column: 21, scope: !1764, inlinedAt: !1827)
!1830 = distinct !DIAssignID()
!1831 = !DILocation(line: 1769, column: 16, scope: !1764, inlinedAt: !1827)
!1832 = !DILocation(line: 1770, column: 16, scope: !1764, inlinedAt: !1827)
!1833 = !DILocation(line: 1771, column: 10, scope: !1764, inlinedAt: !1827)
!1834 = !DILocation(line: 1772, column: 1, scope: !1764, inlinedAt: !1827)
!1835 = !DILocation(line: 1786, column: 3, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 1786, column: 3)
!1837 = !DILocation(line: 1786, column: 3, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 1786, column: 3)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 1786, column: 3)
!1840 = !DILocation(line: 1787, column: 1, scope: !1813)
!1841 = !DISubprogram(name: "pow", scope: !847, file: !847, line: 140, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubprogram(name: "gsl_sf_exp_e10_e", scope: !851, file: !851, line: 53, type: !1843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!40, !92, !93}
!1845 = distinct !DISubprogram(name: "hyperg_zaU_asymp", scope: !2, file: !2, line: 216, type: !1765, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1860, !1861, !1862, !1863, !1864, !1865, !1867}
!1847 = !DILocalVariable(name: "a", arg: 1, scope: !1845, file: !2, line: 216, type: !92)
!1848 = !DILocalVariable(name: "b", arg: 2, scope: !1845, file: !2, line: 216, type: !92)
!1849 = !DILocalVariable(name: "x", arg: 3, scope: !1845, file: !2, line: 216, type: !92)
!1850 = !DILocalVariable(name: "result", arg: 4, scope: !1845, file: !2, line: 216, type: !990)
!1851 = !DILocalVariable(name: "ap", scope: !1845, file: !2, line: 218, type: !92)
!1852 = !DILocalVariable(name: "bp", scope: !1845, file: !2, line: 219, type: !92)
!1853 = !DILocalVariable(name: "rintap", scope: !1845, file: !2, line: 220, type: !92)
!1854 = !DILocalVariable(name: "rintbp", scope: !1845, file: !2, line: 221, type: !92)
!1855 = !DILocalVariable(name: "ap_neg_int", scope: !1845, file: !2, line: 222, type: !91)
!1856 = !DILocalVariable(name: "bp_neg_int", scope: !1845, file: !2, line: 223, type: !91)
!1857 = !DILocalVariable(name: "mxi", scope: !1858, file: !2, line: 228, type: !78)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 225, column: 32)
!1859 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 225, column: 6)
!1860 = !DILocalVariable(name: "nmax", scope: !1858, file: !2, line: 229, type: !78)
!1861 = !DILocalVariable(name: "tn", scope: !1858, file: !2, line: 230, type: !78)
!1862 = !DILocalVariable(name: "sum", scope: !1858, file: !2, line: 231, type: !78)
!1863 = !DILocalVariable(name: "n", scope: !1858, file: !2, line: 232, type: !78)
!1864 = !DILocalVariable(name: "sum_err", scope: !1858, file: !2, line: 233, type: !78)
!1865 = !DILocalVariable(name: "apn", scope: !1866, file: !2, line: 235, type: !78)
!1866 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 234, column: 22)
!1867 = !DILocalVariable(name: "bpn", scope: !1866, file: !2, line: 236, type: !78)
!1868 = distinct !DIAssignID()
!1869 = distinct !DIAssignID()
!1870 = !DILocation(line: 0, scope: !1845)
!1871 = !DILocation(line: 219, column: 29, scope: !1845)
!1872 = !DILocation(line: 221, column: 34, scope: !1845)
!1873 = !DILocation(line: 221, column: 25, scope: !1845)
!1874 = !DILocation(line: 222, column: 31, scope: !1845)
!1875 = !DILocation(line: 222, column: 37, scope: !1845)
!1876 = !DILocation(line: 220, column: 25, scope: !1845)
!1877 = !DILocation(line: 222, column: 40, scope: !1845)
!1878 = !DILocation(line: 222, column: 58, scope: !1845)
!1879 = !DILocation(line: 223, column: 31, scope: !1845)
!1880 = !DILocation(line: 223, column: 37, scope: !1845)
!1881 = !DILocation(line: 225, column: 17, scope: !1859)
!1882 = !DILocation(line: 228, column: 22, scope: !1858)
!1883 = !DILocation(line: 0, scope: !1858)
!1884 = !DILocation(line: 229, column: 26, scope: !1858)
!1885 = !DILocation(line: 229, column: 20, scope: !1858)
!1886 = !DILocation(line: 229, column: 19, scope: !1858)
!1887 = !DILocation(line: 234, column: 13, scope: !1858)
!1888 = !DILocation(line: 234, column: 5, scope: !1858)
!1889 = !DILocation(line: 235, column: 25, scope: !1866)
!1890 = !DILocation(line: 236, column: 23, scope: !1866)
!1891 = !DILocation(line: 0, scope: !1866)
!1892 = !DILocation(line: 236, column: 25, scope: !1866)
!1893 = !DILocation(line: 237, column: 19, scope: !1866)
!1894 = !DILocation(line: 237, column: 22, scope: !1866)
!1895 = !DILocation(line: 237, column: 27, scope: !1866)
!1896 = !DILocation(line: 237, column: 11, scope: !1866)
!1897 = !DILocation(line: 239, column: 42, scope: !1866)
!1898 = !DILocation(line: 239, column: 40, scope: !1866)
!1899 = !DILocation(line: 240, column: 9, scope: !1866)
!1900 = distinct !{!1900, !1888, !1901, !536}
!1901 = !DILocation(line: 241, column: 5, scope: !1858)
!1902 = !DILocation(line: 242, column: 18, scope: !1858)
!1903 = !DILocation(line: 243, column: 13, scope: !1858)
!1904 = !DILocation(line: 244, column: 45, scope: !1858)
!1905 = !DILocation(line: 244, column: 42, scope: !1858)
!1906 = !DILocation(line: 244, column: 63, scope: !1858)
!1907 = !DILocation(line: 244, column: 61, scope: !1858)
!1908 = !DILocation(line: 244, column: 17, scope: !1858)
!1909 = !DILocalVariable(name: "aa", scope: !1910, file: !2, line: 148, type: !1919)
!1910 = distinct !DISubprogram(name: "d9chu", scope: !2, file: !2, line: 144, type: !1765, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1909, !1918, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1934, !1935, !1936, !1937, !1938, !1939}
!1912 = !DILocalVariable(name: "a", arg: 1, scope: !1910, file: !2, line: 144, type: !92)
!1913 = !DILocalVariable(name: "b", arg: 2, scope: !1910, file: !2, line: 144, type: !92)
!1914 = !DILocalVariable(name: "x", arg: 3, scope: !1910, file: !2, line: 144, type: !92)
!1915 = !DILocalVariable(name: "result", arg: 4, scope: !1910, file: !2, line: 144, type: !990)
!1916 = !DILocalVariable(name: "EPS", scope: !1910, file: !2, line: 146, type: !92)
!1917 = !DILocalVariable(name: "maxiter", scope: !1910, file: !2, line: 147, type: !91)
!1918 = !DILocalVariable(name: "bb", scope: !1910, file: !2, line: 148, type: !1919)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 4)
!1922 = !DILocalVariable(name: "i", scope: !1910, file: !2, line: 149, type: !40)
!1923 = !DILocalVariable(name: "bp", scope: !1910, file: !2, line: 151, type: !78)
!1924 = !DILocalVariable(name: "ab", scope: !1910, file: !2, line: 152, type: !78)
!1925 = !DILocalVariable(name: "ct2", scope: !1910, file: !2, line: 153, type: !78)
!1926 = !DILocalVariable(name: "sab", scope: !1910, file: !2, line: 154, type: !78)
!1927 = !DILocalVariable(name: "ct3", scope: !1910, file: !2, line: 156, type: !78)
!1928 = !DILocalVariable(name: "anbn", scope: !1910, file: !2, line: 157, type: !78)
!1929 = !DILocalVariable(name: "ct1", scope: !1910, file: !2, line: 158, type: !78)
!1930 = !DILocalVariable(name: "j", scope: !1931, file: !2, line: 170, type: !40)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 169, column: 28)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 169, column: 3)
!1933 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 169, column: 3)
!1934 = !DILocalVariable(name: "c2", scope: !1931, file: !2, line: 171, type: !78)
!1935 = !DILocalVariable(name: "d1z", scope: !1931, file: !2, line: 172, type: !78)
!1936 = !DILocalVariable(name: "g1", scope: !1931, file: !2, line: 173, type: !78)
!1937 = !DILocalVariable(name: "g2", scope: !1931, file: !2, line: 173, type: !78)
!1938 = !DILocalVariable(name: "g3", scope: !1931, file: !2, line: 173, type: !78)
!1939 = !DILocalVariable(name: "x2i1", scope: !1931, file: !2, line: 174, type: !78)
!1940 = !DILocation(line: 0, scope: !1910, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 248, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 247, column: 8)
!1943 = !DILocation(line: 148, column: 3, scope: !1910, inlinedAt: !1941)
!1944 = !DILocation(line: 152, column: 16, scope: !1910, inlinedAt: !1941)
!1945 = !DILocation(line: 153, column: 20, scope: !1910, inlinedAt: !1941)
!1946 = !DILocation(line: 156, column: 20, scope: !1910, inlinedAt: !1941)
!1947 = !DILocation(line: 156, column: 26, scope: !1910, inlinedAt: !1941)
!1948 = !DILocation(line: 157, column: 21, scope: !1910, inlinedAt: !1941)
!1949 = !DILocation(line: 157, column: 27, scope: !1910, inlinedAt: !1941)
!1950 = !DILocation(line: 158, column: 25, scope: !1910, inlinedAt: !1941)
!1951 = !DILocation(line: 158, column: 27, scope: !1910, inlinedAt: !1941)
!1952 = !DILocation(line: 160, column: 9, scope: !1910, inlinedAt: !1941)
!1953 = distinct !DIAssignID()
!1954 = !DILocation(line: 161, column: 9, scope: !1910, inlinedAt: !1941)
!1955 = distinct !DIAssignID()
!1956 = !DILocation(line: 163, column: 22, scope: !1910, inlinedAt: !1941)
!1957 = !DILocation(line: 163, column: 9, scope: !1910, inlinedAt: !1941)
!1958 = distinct !DIAssignID()
!1959 = !DILocation(line: 164, column: 20, scope: !1910, inlinedAt: !1941)
!1960 = !DILocation(line: 164, column: 9, scope: !1910, inlinedAt: !1941)
!1961 = distinct !DIAssignID()
!1962 = !DILocation(line: 166, column: 20, scope: !1910, inlinedAt: !1941)
!1963 = !DILocation(line: 166, column: 24, scope: !1910, inlinedAt: !1941)
!1964 = !DILocation(line: 166, column: 26, scope: !1910, inlinedAt: !1941)
!1965 = !DILocation(line: 166, column: 9, scope: !1910, inlinedAt: !1941)
!1966 = distinct !DIAssignID()
!1967 = !DILocation(line: 167, column: 20, scope: !1910, inlinedAt: !1941)
!1968 = !DILocation(line: 167, column: 23, scope: !1910, inlinedAt: !1941)
!1969 = !DILocation(line: 167, column: 34, scope: !1910, inlinedAt: !1941)
!1970 = !DILocation(line: 167, column: 38, scope: !1910, inlinedAt: !1941)
!1971 = !DILocation(line: 167, column: 42, scope: !1910, inlinedAt: !1941)
!1972 = !DILocation(line: 167, column: 9, scope: !1910, inlinedAt: !1941)
!1973 = distinct !DIAssignID()
!1974 = !DILocation(line: 192, column: 13, scope: !1975, inlinedAt: !1941)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 191, column: 24)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 191, column: 5)
!1977 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 191, column: 5)
!1978 = !DILocation(line: 169, column: 3, scope: !1933, inlinedAt: !1941)
!1979 = !DILocation(line: 174, column: 20, scope: !1931, inlinedAt: !1941)
!1980 = !DILocation(line: 174, column: 23, scope: !1931, inlinedAt: !1941)
!1981 = !DILocation(line: 174, column: 19, scope: !1931, inlinedAt: !1941)
!1982 = !DILocation(line: 0, scope: !1931, inlinedAt: !1941)
!1983 = !DILocation(line: 175, column: 17, scope: !1931, inlinedAt: !1941)
!1984 = !DILocation(line: 176, column: 10, scope: !1931, inlinedAt: !1941)
!1985 = !DILocation(line: 177, column: 19, scope: !1931, inlinedAt: !1941)
!1986 = !DILocation(line: 177, column: 25, scope: !1931, inlinedAt: !1941)
!1987 = !DILocation(line: 178, column: 17, scope: !1931, inlinedAt: !1941)
!1988 = !DILocation(line: 179, column: 16, scope: !1931, inlinedAt: !1941)
!1989 = !DILocation(line: 179, column: 21, scope: !1931, inlinedAt: !1941)
!1990 = !DILocation(line: 179, column: 23, scope: !1931, inlinedAt: !1941)
!1991 = !DILocation(line: 181, column: 14, scope: !1931, inlinedAt: !1941)
!1992 = !DILocation(line: 182, column: 20, scope: !1931, inlinedAt: !1941)
!1993 = !DILocation(line: 183, column: 15, scope: !1931, inlinedAt: !1941)
!1994 = !DILocation(line: 184, column: 20, scope: !1931, inlinedAt: !1941)
!1995 = !DILocation(line: 184, column: 31, scope: !1931, inlinedAt: !1941)
!1996 = !DILocation(line: 184, column: 14, scope: !1931, inlinedAt: !1941)
!1997 = !DILocation(line: 186, column: 16, scope: !1931, inlinedAt: !1941)
!1998 = !DILocation(line: 186, column: 15, scope: !1931, inlinedAt: !1941)
!1999 = !DILocation(line: 186, column: 27, scope: !1931, inlinedAt: !1941)
!2000 = !DILocation(line: 186, column: 26, scope: !1931, inlinedAt: !1941)
!2001 = !DILocation(line: 186, column: 38, scope: !1931, inlinedAt: !1941)
!2002 = !DILocation(line: 186, column: 37, scope: !1931, inlinedAt: !1941)
!2003 = !DILocation(line: 186, column: 11, scope: !1931, inlinedAt: !1941)
!2004 = distinct !DIAssignID()
!2005 = !DILocation(line: 187, column: 16, scope: !1931, inlinedAt: !1941)
!2006 = !DILocation(line: 187, column: 15, scope: !1931, inlinedAt: !1941)
!2007 = !DILocation(line: 187, column: 27, scope: !1931, inlinedAt: !1941)
!2008 = !DILocation(line: 187, column: 26, scope: !1931, inlinedAt: !1941)
!2009 = !DILocation(line: 187, column: 38, scope: !1931, inlinedAt: !1941)
!2010 = !DILocation(line: 187, column: 37, scope: !1931, inlinedAt: !1941)
!2011 = !DILocation(line: 187, column: 11, scope: !1931, inlinedAt: !1941)
!2012 = distinct !DIAssignID()
!2013 = !DILocation(line: 189, column: 18, scope: !2014, inlinedAt: !1941)
!2014 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 189, column: 8)
!2015 = !DILocation(line: 189, column: 30, scope: !2014, inlinedAt: !1941)
!2016 = !DILocation(line: 189, column: 8, scope: !2014, inlinedAt: !1941)
!2017 = !DILocation(line: 189, column: 54, scope: !2014, inlinedAt: !1941)
!2018 = !DILocation(line: 189, column: 44, scope: !2014, inlinedAt: !1941)
!2019 = !DILocation(line: 189, column: 43, scope: !2014, inlinedAt: !1941)
!2020 = !DILocation(line: 189, column: 38, scope: !2014, inlinedAt: !1941)
!2021 = !DILocation(line: 189, column: 8, scope: !1931, inlinedAt: !1941)
!2022 = !DILocation(line: 193, column: 13, scope: !1975, inlinedAt: !1941)
!2023 = !DILocation(line: 169, column: 24, scope: !1932, inlinedAt: !1941)
!2024 = !DILocation(line: 169, column: 13, scope: !1932, inlinedAt: !1941)
!2025 = distinct !{!2025, !1978, !2026, !536}
!2026 = !DILocation(line: 195, column: 3, scope: !1933, inlinedAt: !1941)
!2027 = !DILocation(line: 169, scope: !1933, inlinedAt: !1941)
!2028 = !DILocation(line: 197, column: 22, scope: !1910, inlinedAt: !1941)
!2029 = !DILocation(line: 197, column: 15, scope: !1910, inlinedAt: !1941)
!2030 = !DILocation(line: 198, column: 41, scope: !1910, inlinedAt: !1941)
!2031 = !DILocation(line: 198, column: 39, scope: !1910, inlinedAt: !1941)
!2032 = !DILocation(line: 198, column: 11, scope: !1910, inlinedAt: !1941)
!2033 = !DILocation(line: 198, column: 15, scope: !1910, inlinedAt: !1941)
!2034 = !DILocation(line: 200, column: 8, scope: !2035, inlinedAt: !1941)
!2035 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 200, column: 6)
!2036 = !DILocation(line: 200, column: 6, scope: !1910, inlinedAt: !1941)
!2037 = !DILocation(line: 201, column: 5, scope: !2038, inlinedAt: !1941)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 201, column: 5)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 200, column: 20)
!2040 = !DILocation(line: 0, scope: !2035, inlinedAt: !1941)
!2041 = !DILocation(line: 206, column: 1, scope: !1910, inlinedAt: !1941)
!2042 = !DILocation(line: 248, column: 5, scope: !1942)
!2043 = !DILocation(line: 0, scope: !1859)
!2044 = !DILocation(line: 250, column: 1, scope: !1845)
!2045 = distinct !DISubprogram(name: "hyperg_U_series", scope: !2, file: !2, line: 680, type: !1765, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2046)
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2060, !2061, !2063, !2064, !2065, !2066, !2067}
!2047 = !DILocalVariable(name: "a", arg: 1, scope: !2045, file: !2, line: 680, type: !92)
!2048 = !DILocalVariable(name: "b", arg: 2, scope: !2045, file: !2, line: 680, type: !92)
!2049 = !DILocalVariable(name: "x", arg: 3, scope: !2045, file: !2, line: 680, type: !92)
!2050 = !DILocalVariable(name: "result", arg: 4, scope: !2045, file: !2, line: 680, type: !990)
!2051 = !DILocalVariable(name: "SQRT_EPS", scope: !2045, file: !2, line: 682, type: !92)
!2052 = !DILocalVariable(name: "bint", scope: !2045, file: !2, line: 683, type: !78)
!2053 = !DILocalVariable(name: "beps", scope: !2045, file: !2, line: 684, type: !78)
!2054 = !DILocalVariable(name: "a_beps", scope: !2045, file: !2, line: 685, type: !78)
!2055 = !DILocalVariable(name: "r_a_beps", scope: !2045, file: !2, line: 686, type: !78)
!2056 = !DILocalVariable(name: "a_beps_int", scope: !2045, file: !2, line: 687, type: !78)
!2057 = !DILocalVariable(name: "lnr", scope: !2058, file: !2, line: 703, type: !78)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 696, column: 36)
!2059 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 696, column: 6)
!2060 = !DILocalVariable(name: "stat_e", scope: !2058, file: !2, line: 704, type: !40)
!2061 = !DILocalVariable(name: "N", scope: !2062, file: !2, line: 709, type: !40)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 708, column: 8)
!2063 = !DILocalVariable(name: "lnx", scope: !2062, file: !2, line: 711, type: !78)
!2064 = !DILocalVariable(name: "xeps", scope: !2062, file: !2, line: 712, type: !78)
!2065 = !DILocalVariable(name: "sum", scope: !2062, file: !2, line: 716, type: !163)
!2066 = !DILocalVariable(name: "stat_sum", scope: !2062, file: !2, line: 717, type: !40)
!2067 = !DILocalVariable(name: "stat_inf", scope: !2062, file: !2, line: 718, type: !40)
!2068 = distinct !DIAssignID()
!2069 = distinct !DIAssignID()
!2070 = distinct !DIAssignID()
!2071 = distinct !DIAssignID()
!2072 = distinct !DIAssignID()
!2073 = distinct !DIAssignID()
!2074 = distinct !DIAssignID()
!2075 = distinct !DIAssignID()
!2076 = distinct !DIAssignID()
!2077 = distinct !DIAssignID()
!2078 = distinct !DIAssignID()
!2079 = distinct !DIAssignID()
!2080 = distinct !DIAssignID()
!2081 = distinct !DIAssignID()
!2082 = distinct !DIAssignID()
!2083 = distinct !DIAssignID()
!2084 = distinct !DIAssignID()
!2085 = distinct !DIAssignID()
!2086 = distinct !DIAssignID()
!2087 = distinct !DIAssignID()
!2088 = distinct !DIAssignID()
!2089 = distinct !DIAssignID()
!2090 = distinct !DIAssignID()
!2091 = distinct !DIAssignID()
!2092 = distinct !DIAssignID()
!2093 = distinct !DIAssignID()
!2094 = distinct !DIAssignID()
!2095 = distinct !DIAssignID()
!2096 = distinct !DIAssignID()
!2097 = distinct !DIAssignID()
!2098 = distinct !DIAssignID()
!2099 = !DILocation(line: 0, scope: !2045)
!2100 = !DILocation(line: 683, column: 19, scope: !2045)
!2101 = !DILocation(line: 683, column: 17, scope: !2045)
!2102 = !DILocation(line: 683, column: 27, scope: !2045)
!2103 = !DILocation(line: 683, column: 41, scope: !2045)
!2104 = !DILocation(line: 685, column: 21, scope: !2045)
!2105 = !DILocation(line: 686, column: 34, scope: !2045)
!2106 = !DILocation(line: 686, column: 21, scope: !2045)
!2107 = !DILocation(line: 687, column: 25, scope: !2045)
!2108 = !DILocation(line: 687, column: 49, scope: !2045)
!2109 = !DILocation(line: 692, column: 18, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 692, column: 7)
!2111 = !DILocation(line: 693, column: 22, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 693, column: 3)
!2113 = !DILocation(line: 693, column: 46, scope: !2112)
!2114 = !DILocation(line: 693, column: 50, scope: !2112)
!2115 = !DILocation(line: 694, column: 3, scope: !2112)
!2116 = !DILocation(line: 696, column: 19, scope: !2059)
!2117 = !DILocation(line: 696, column: 6, scope: !2059)
!2118 = !DILocation(line: 696, column: 24, scope: !2059)
!2119 = !DILocation(line: 696, column: 6, scope: !2045)
!2120 = !DILocation(line: 703, column: 18, scope: !2058)
!2121 = !DILocation(line: 703, column: 21, scope: !2058)
!2122 = !DILocation(line: 0, scope: !2058)
!2123 = !DILocation(line: 704, column: 19, scope: !2058)
!2124 = !DILocation(line: 705, column: 50, scope: !2058)
!2125 = !DILocation(line: 705, column: 37, scope: !2058)
!2126 = !DILocation(line: 705, column: 35, scope: !2058)
!2127 = !DILocation(line: 705, column: 13, scope: !2058)
!2128 = !DILocation(line: 705, column: 17, scope: !2058)
!2129 = !DILocation(line: 709, column: 14, scope: !2062)
!2130 = !DILocation(line: 0, scope: !2062)
!2131 = !DILocation(line: 712, column: 23, scope: !2062)
!2132 = !DILocation(line: 712, column: 28, scope: !2062)
!2133 = !DILocation(line: 712, column: 19, scope: !2062)
!2134 = !DILocalVariable(name: "poch", scope: !2135, file: !2, line: 267, type: !163)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 264, column: 14)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 264, column: 6)
!2137 = distinct !DISubprogram(name: "hyperg_U_finite_sum", scope: !2, file: !2, line: 257, type: !2138, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!40, !40, !78, !78, !78, !78, !990}
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2134, !2152, !2153, !2157, !2158, !2160, !2163, !2164, !2165, !2166, !2167, !2168, !2172, !2175, !2176, !2177, !2178, !2179}
!2141 = !DILocalVariable(name: "N", arg: 1, scope: !2137, file: !2, line: 257, type: !40)
!2142 = !DILocalVariable(name: "a", arg: 2, scope: !2137, file: !2, line: 257, type: !78)
!2143 = !DILocalVariable(name: "b", arg: 3, scope: !2137, file: !2, line: 257, type: !78)
!2144 = !DILocalVariable(name: "x", arg: 4, scope: !2137, file: !2, line: 257, type: !78)
!2145 = !DILocalVariable(name: "xeps", arg: 5, scope: !2137, file: !2, line: 257, type: !78)
!2146 = !DILocalVariable(name: "result", arg: 6, scope: !2137, file: !2, line: 258, type: !990)
!2147 = !DILocalVariable(name: "i", scope: !2137, file: !2, line: 260, type: !40)
!2148 = !DILocalVariable(name: "sum_val", scope: !2137, file: !2, line: 261, type: !78)
!2149 = !DILocalVariable(name: "sum_err", scope: !2137, file: !2, line: 262, type: !78)
!2150 = !DILocalVariable(name: "t_val", scope: !2135, file: !2, line: 265, type: !78)
!2151 = !DILocalVariable(name: "t_err", scope: !2135, file: !2, line: 266, type: !78)
!2152 = !DILocalVariable(name: "stat_poch", scope: !2135, file: !2, line: 268, type: !40)
!2153 = !DILocalVariable(name: "xi1", scope: !2154, file: !2, line: 273, type: !92)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 272, column: 27)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 272, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 272, column: 5)
!2157 = !DILocalVariable(name: "mult", scope: !2154, file: !2, line: 274, type: !92)
!2158 = !DILocalVariable(name: "M", scope: !2159, file: !2, line: 291, type: !91)
!2159 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 290, column: 8)
!2160 = !DILocalVariable(name: "gbm1", scope: !2161, file: !2, line: 298, type: !163)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 297, column: 10)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 292, column: 8)
!2163 = !DILocalVariable(name: "gamr", scope: !2161, file: !2, line: 299, type: !163)
!2164 = !DILocalVariable(name: "stat_gbm1", scope: !2161, file: !2, line: 300, type: !40)
!2165 = !DILocalVariable(name: "stat_gamr", scope: !2161, file: !2, line: 301, type: !40)
!2166 = !DILocalVariable(name: "t_val", scope: !2161, file: !2, line: 302, type: !78)
!2167 = !DILocalVariable(name: "t_err", scope: !2161, file: !2, line: 303, type: !78)
!2168 = !DILocalVariable(name: "mult", scope: !2169, file: !2, line: 308, type: !92)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 307, column: 27)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 307, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 307, column: 7)
!2172 = !DILocalVariable(name: "powx1N", scope: !2173, file: !2, line: 319, type: !163)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 318, column: 36)
!2174 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 318, column: 10)
!2175 = !DILocalVariable(name: "stat_p", scope: !2173, file: !2, line: 320, type: !40)
!2176 = !DILocalVariable(name: "pe_val", scope: !2173, file: !2, line: 321, type: !78)
!2177 = !DILocalVariable(name: "pe_err", scope: !2173, file: !2, line: 322, type: !78)
!2178 = !DILocalVariable(name: "coeff_val", scope: !2173, file: !2, line: 323, type: !78)
!2179 = !DILocalVariable(name: "coeff_err", scope: !2173, file: !2, line: 324, type: !78)
!2180 = !DILocation(line: 0, scope: !2135, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 717, column: 20, scope: !2062)
!2182 = !DILocation(line: 0, scope: !2161, inlinedAt: !2181)
!2183 = !DILocation(line: 0, scope: !2173, inlinedAt: !2181)
!2184 = !DILocation(line: 0, scope: !2137, inlinedAt: !2181)
!2185 = !DILocation(line: 264, column: 8, scope: !2136, inlinedAt: !2181)
!2186 = !DILocation(line: 264, column: 6, scope: !2137, inlinedAt: !2181)
!2187 = !DILocation(line: 267, column: 5, scope: !2135, inlinedAt: !2181)
!2188 = !DILocation(line: 272, column: 15, scope: !2155, inlinedAt: !2181)
!2189 = !DILocation(line: 272, column: 5, scope: !2156, inlinedAt: !2181)
!2190 = !DILocation(line: 273, column: 29, scope: !2154, inlinedAt: !2181)
!2191 = !DILocation(line: 273, column: 27, scope: !2154, inlinedAt: !2181)
!2192 = !DILocation(line: 0, scope: !2154, inlinedAt: !2181)
!2193 = !DILocation(line: 274, column: 34, scope: !2154, inlinedAt: !2181)
!2194 = !DILocation(line: 274, column: 50, scope: !2154, inlinedAt: !2181)
!2195 = !DILocation(line: 274, column: 45, scope: !2154, inlinedAt: !2181)
!2196 = !DILocation(line: 274, column: 36, scope: !2154, inlinedAt: !2181)
!2197 = !DILocation(line: 275, column: 13, scope: !2154, inlinedAt: !2181)
!2198 = !DILocation(line: 276, column: 16, scope: !2154, inlinedAt: !2181)
!2199 = !DILocation(line: 276, column: 27, scope: !2154, inlinedAt: !2181)
!2200 = !DILocation(line: 276, column: 37, scope: !2154, inlinedAt: !2181)
!2201 = !DILocation(line: 276, column: 49, scope: !2154, inlinedAt: !2181)
!2202 = !DILocation(line: 276, column: 55, scope: !2154, inlinedAt: !2181)
!2203 = !DILocation(line: 276, column: 61, scope: !2154, inlinedAt: !2181)
!2204 = !DILocation(line: 276, column: 13, scope: !2154, inlinedAt: !2181)
!2205 = !DILocation(line: 277, column: 15, scope: !2154, inlinedAt: !2181)
!2206 = !DILocation(line: 278, column: 15, scope: !2154, inlinedAt: !2181)
!2207 = !DILocation(line: 272, column: 23, scope: !2155, inlinedAt: !2181)
!2208 = distinct !{!2208, !2189, !2209, !536}
!2209 = !DILocation(line: 279, column: 5, scope: !2156, inlinedAt: !2181)
!2210 = !DILocation(line: 281, column: 40, scope: !2135, inlinedAt: !2181)
!2211 = !DILocation(line: 281, column: 17, scope: !2135, inlinedAt: !2181)
!2212 = !DILocation(line: 283, column: 35, scope: !2135, inlinedAt: !2181)
!2213 = !DILocation(line: 283, column: 28, scope: !2135, inlinedAt: !2181)
!2214 = !DILocation(line: 284, column: 20, scope: !2135, inlinedAt: !2181)
!2215 = !DILocation(line: 284, column: 41, scope: !2135, inlinedAt: !2181)
!2216 = !DILocation(line: 284, column: 34, scope: !2135, inlinedAt: !2181)
!2217 = !DILocation(line: 284, column: 57, scope: !2135, inlinedAt: !2181)
!2218 = !DILocation(line: 284, column: 55, scope: !2135, inlinedAt: !2181)
!2219 = !DILocation(line: 285, column: 43, scope: !2135, inlinedAt: !2181)
!2220 = !DILocation(line: 285, column: 38, scope: !2135, inlinedAt: !2181)
!2221 = !DILocation(line: 285, column: 35, scope: !2135, inlinedAt: !2181)
!2222 = !DILocation(line: 285, column: 53, scope: !2135, inlinedAt: !2181)
!2223 = !DILocation(line: 285, column: 71, scope: !2135, inlinedAt: !2181)
!2224 = !DILocation(line: 286, column: 44, scope: !2135, inlinedAt: !2181)
!2225 = !DILocation(line: 286, column: 42, scope: !2135, inlinedAt: !2181)
!2226 = !DILocation(line: 287, column: 17, scope: !2135, inlinedAt: !2181)
!2227 = !DILocation(line: 289, column: 3, scope: !2136, inlinedAt: !2181)
!2228 = !DILocation(line: 0, scope: !2159, inlinedAt: !2181)
!2229 = !DILocation(line: 292, column: 10, scope: !2162, inlinedAt: !2181)
!2230 = !DILocation(line: 292, column: 8, scope: !2159, inlinedAt: !2181)
!2231 = !DILocation(line: 298, column: 7, scope: !2161, inlinedAt: !2181)
!2232 = !DILocation(line: 299, column: 7, scope: !2161, inlinedAt: !2181)
!2233 = !DILocation(line: 307, column: 17, scope: !2170, inlinedAt: !2181)
!2234 = !DILocation(line: 307, column: 7, scope: !2171, inlinedAt: !2181)
!2235 = !DILocation(line: 308, column: 34, scope: !2169, inlinedAt: !2181)
!2236 = !DILocation(line: 308, column: 36, scope: !2169, inlinedAt: !2181)
!2237 = !DILocation(line: 308, column: 49, scope: !2169, inlinedAt: !2181)
!2238 = !DILocation(line: 308, column: 38, scope: !2169, inlinedAt: !2181)
!2239 = !DILocation(line: 0, scope: !2169, inlinedAt: !2181)
!2240 = !DILocation(line: 309, column: 15, scope: !2169, inlinedAt: !2181)
!2241 = !DILocation(line: 310, column: 26, scope: !2169, inlinedAt: !2181)
!2242 = !DILocation(line: 310, column: 24, scope: !2169, inlinedAt: !2181)
!2243 = !DILocation(line: 310, column: 39, scope: !2169, inlinedAt: !2181)
!2244 = !DILocation(line: 310, column: 51, scope: !2169, inlinedAt: !2181)
!2245 = !DILocation(line: 310, column: 57, scope: !2169, inlinedAt: !2181)
!2246 = !DILocation(line: 310, column: 63, scope: !2169, inlinedAt: !2181)
!2247 = !DILocation(line: 310, column: 15, scope: !2169, inlinedAt: !2181)
!2248 = !DILocation(line: 311, column: 17, scope: !2169, inlinedAt: !2181)
!2249 = !DILocation(line: 312, column: 17, scope: !2169, inlinedAt: !2181)
!2250 = !DILocation(line: 307, column: 23, scope: !2170, inlinedAt: !2181)
!2251 = distinct !{!2251, !2234, !2252, !536}
!2252 = !DILocation(line: 313, column: 7, scope: !2171, inlinedAt: !2181)
!2253 = !DILocation(line: 315, column: 19, scope: !2161, inlinedAt: !2181)
!2254 = !DILocation(line: 316, column: 19, scope: !2161, inlinedAt: !2181)
!2255 = !DILocation(line: 318, column: 20, scope: !2174, inlinedAt: !2181)
!2256 = !DILocation(line: 318, column: 10, scope: !2161, inlinedAt: !2181)
!2257 = !DILocation(line: 319, column: 9, scope: !2173, inlinedAt: !2181)
!2258 = !DILocation(line: 320, column: 43, scope: !2173, inlinedAt: !2181)
!2259 = !DILocation(line: 320, column: 22, scope: !2173, inlinedAt: !2181)
!2260 = !DILocation(line: 321, column: 32, scope: !2173, inlinedAt: !2181)
!2261 = !DILocation(line: 321, column: 36, scope: !2173, inlinedAt: !2181)
!2262 = !DILocation(line: 322, column: 32, scope: !2173, inlinedAt: !2181)
!2263 = !DILocation(line: 322, column: 38, scope: !2173, inlinedAt: !2181)
!2264 = !DILocation(line: 322, column: 36, scope: !2173, inlinedAt: !2181)
!2265 = !DILocation(line: 322, column: 75, scope: !2173, inlinedAt: !2181)
!2266 = !DILocation(line: 322, column: 73, scope: !2173, inlinedAt: !2181)
!2267 = !DILocation(line: 323, column: 33, scope: !2173, inlinedAt: !2181)
!2268 = !DILocation(line: 323, column: 44, scope: !2173, inlinedAt: !2181)
!2269 = !DILocation(line: 323, column: 37, scope: !2173, inlinedAt: !2181)
!2270 = !DILocation(line: 323, column: 48, scope: !2173, inlinedAt: !2181)
!2271 = !DILocation(line: 324, column: 33, scope: !2173, inlinedAt: !2181)
!2272 = !DILocation(line: 324, column: 53, scope: !2173, inlinedAt: !2181)
!2273 = !DILocation(line: 324, column: 39, scope: !2173, inlinedAt: !2181)
!2274 = !DILocation(line: 324, column: 37, scope: !2173, inlinedAt: !2181)
!2275 = !DILocation(line: 325, column: 33, scope: !2173, inlinedAt: !2181)
!2276 = !DILocation(line: 325, column: 53, scope: !2173, inlinedAt: !2181)
!2277 = !DILocation(line: 325, column: 39, scope: !2173, inlinedAt: !2181)
!2278 = !DILocation(line: 325, column: 37, scope: !2173, inlinedAt: !2181)
!2279 = !DILocation(line: 326, column: 28, scope: !2173, inlinedAt: !2181)
!2280 = !DILocation(line: 326, column: 54, scope: !2173, inlinedAt: !2181)
!2281 = !DILocation(line: 327, column: 52, scope: !2173, inlinedAt: !2181)
!2282 = !DILocation(line: 327, column: 50, scope: !2173, inlinedAt: !2181)
!2283 = !DILocation(line: 329, column: 32, scope: !2173, inlinedAt: !2181)
!2284 = !DILocation(line: 330, column: 24, scope: !2173, inlinedAt: !2181)
!2285 = !DILocation(line: 330, column: 38, scope: !2173, inlinedAt: !2181)
!2286 = !DILocation(line: 330, column: 60, scope: !2173, inlinedAt: !2181)
!2287 = !DILocation(line: 331, column: 50, scope: !2173, inlinedAt: !2181)
!2288 = !DILocation(line: 331, column: 46, scope: !2173, inlinedAt: !2181)
!2289 = !DILocation(line: 331, column: 58, scope: !2173, inlinedAt: !2181)
!2290 = !DILocation(line: 331, column: 56, scope: !2173, inlinedAt: !2181)
!2291 = !DILocation(line: 332, column: 21, scope: !2173, inlinedAt: !2181)
!2292 = !DILocation(line: 334, column: 7, scope: !2174, inlinedAt: !2181)
!2293 = !DILocation(line: 0, scope: !2174, inlinedAt: !2181)
!2294 = !DILocation(line: 340, column: 5, scope: !2162, inlinedAt: !2181)
!2295 = !DILocation(line: 0, scope: !2136, inlinedAt: !2181)
!2296 = !DILocation(line: 721, column: 8, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 721, column: 8)
!2298 = !DILocation(line: 721, column: 23, scope: !2297)
!2299 = !DILocation(line: 721, column: 8, scope: !2062)
!2300 = !DILocalVariable(name: "gamr", scope: !2301, file: !2, line: 357, type: !163)
!2301 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_stable", scope: !2, file: !2, line: 349, type: !2302, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!40, !40, !78, !78, !78, !78, !78, !78, !163, !990}
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2300, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2352, !2353, !2354}
!2305 = !DILocalVariable(name: "N", arg: 1, scope: !2301, file: !2, line: 349, type: !40)
!2306 = !DILocalVariable(name: "a", arg: 2, scope: !2301, file: !2, line: 349, type: !78)
!2307 = !DILocalVariable(name: "bint", arg: 3, scope: !2301, file: !2, line: 349, type: !78)
!2308 = !DILocalVariable(name: "b", arg: 4, scope: !2301, file: !2, line: 349, type: !78)
!2309 = !DILocalVariable(name: "beps", arg: 5, scope: !2301, file: !2, line: 349, type: !78)
!2310 = !DILocalVariable(name: "x", arg: 6, scope: !2301, file: !2, line: 349, type: !78)
!2311 = !DILocalVariable(name: "xeps", arg: 7, scope: !2301, file: !2, line: 349, type: !78)
!2312 = !DILocalVariable(name: "sum", arg: 8, scope: !2301, file: !2, line: 349, type: !163)
!2313 = !DILocalVariable(name: "result", arg: 9, scope: !2301, file: !2, line: 350, type: !990)
!2314 = !DILocalVariable(name: "EPS", scope: !2301, file: !2, line: 352, type: !92)
!2315 = !DILocalVariable(name: "istrt", scope: !2301, file: !2, line: 354, type: !40)
!2316 = !DILocalVariable(name: "xi", scope: !2301, file: !2, line: 355, type: !78)
!2317 = !DILocalVariable(name: "powx", scope: !2301, file: !2, line: 358, type: !163)
!2318 = !DILocalVariable(name: "stat_gamr", scope: !2301, file: !2, line: 359, type: !40)
!2319 = !DILocalVariable(name: "stat_powx", scope: !2301, file: !2, line: 360, type: !40)
!2320 = !DILocalVariable(name: "sarg", scope: !2301, file: !2, line: 361, type: !78)
!2321 = !DILocalVariable(name: "sfact", scope: !2301, file: !2, line: 362, type: !78)
!2322 = !DILocalVariable(name: "factor_val", scope: !2301, file: !2, line: 363, type: !78)
!2323 = !DILocalVariable(name: "factor_err", scope: !2301, file: !2, line: 364, type: !78)
!2324 = !DILocalVariable(name: "pochai", scope: !2301, file: !2, line: 367, type: !163)
!2325 = !DILocalVariable(name: "gamri1", scope: !2301, file: !2, line: 368, type: !163)
!2326 = !DILocalVariable(name: "gamrni", scope: !2301, file: !2, line: 369, type: !163)
!2327 = !DILocalVariable(name: "stat_pochai", scope: !2301, file: !2, line: 370, type: !40)
!2328 = !DILocalVariable(name: "stat_gamri1", scope: !2301, file: !2, line: 371, type: !40)
!2329 = !DILocalVariable(name: "stat_gamrni", scope: !2301, file: !2, line: 372, type: !40)
!2330 = !DILocalVariable(name: "stat_gam123", scope: !2301, file: !2, line: 373, type: !40)
!2331 = !DILocalVariable(name: "stat_gamall", scope: !2301, file: !2, line: 374, type: !40)
!2332 = !DILocalVariable(name: "pochaxibeps", scope: !2301, file: !2, line: 376, type: !163)
!2333 = !DILocalVariable(name: "gamrxi1beps", scope: !2301, file: !2, line: 377, type: !163)
!2334 = !DILocalVariable(name: "stat_pochaxibeps", scope: !2301, file: !2, line: 378, type: !40)
!2335 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !2301, file: !2, line: 379, type: !40)
!2336 = !DILocalVariable(name: "stat_all", scope: !2301, file: !2, line: 381, type: !40)
!2337 = !DILocalVariable(name: "b0_val", scope: !2301, file: !2, line: 383, type: !78)
!2338 = !DILocalVariable(name: "b0_err", scope: !2301, file: !2, line: 384, type: !78)
!2339 = !DILocalVariable(name: "i", scope: !2301, file: !2, line: 394, type: !40)
!2340 = !DILocalVariable(name: "dchu_val", scope: !2301, file: !2, line: 395, type: !78)
!2341 = !DILocalVariable(name: "dchu_err", scope: !2301, file: !2, line: 396, type: !78)
!2342 = !DILocalVariable(name: "t_val", scope: !2301, file: !2, line: 397, type: !78)
!2343 = !DILocalVariable(name: "t_err", scope: !2301, file: !2, line: 398, type: !78)
!2344 = !DILocalVariable(name: "dgamrbxi", scope: !2301, file: !2, line: 399, type: !163)
!2345 = !DILocalVariable(name: "stat_dgamrbxi", scope: !2301, file: !2, line: 400, type: !40)
!2346 = !DILocalVariable(name: "a0_val", scope: !2301, file: !2, line: 401, type: !78)
!2347 = !DILocalVariable(name: "a0_err", scope: !2301, file: !2, line: 402, type: !78)
!2348 = !DILocalVariable(name: "xi", scope: !2349, file: !2, line: 416, type: !78)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 415, column: 29)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 415, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 415, column: 7)
!2352 = !DILocalVariable(name: "xi1", scope: !2349, file: !2, line: 417, type: !78)
!2353 = !DILocalVariable(name: "a0_multiplier", scope: !2349, file: !2, line: 418, type: !78)
!2354 = !DILocalVariable(name: "b0_multiplier", scope: !2349, file: !2, line: 419, type: !78)
!2355 = !DILocation(line: 0, scope: !2301, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 722, column: 18, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 721, column: 31)
!2358 = !DILocation(line: 354, column: 19, scope: !2301, inlinedAt: !2356)
!2359 = !DILocation(line: 355, column: 17, scope: !2301, inlinedAt: !2356)
!2360 = !DILocation(line: 357, column: 5, scope: !2301, inlinedAt: !2356)
!2361 = !DILocation(line: 358, column: 5, scope: !2301, inlinedAt: !2356)
!2362 = !DILocation(line: 359, column: 21, scope: !2301, inlinedAt: !2356)
!2363 = !DILocation(line: 360, column: 21, scope: !2301, inlinedAt: !2356)
!2364 = !DILocation(line: 361, column: 25, scope: !2301, inlinedAt: !2356)
!2365 = !DILocation(line: 362, column: 28, scope: !2301, inlinedAt: !2356)
!2366 = !DILocation(line: 362, column: 23, scope: !2301, inlinedAt: !2356)
!2367 = !DILocation(line: 362, column: 41, scope: !2301, inlinedAt: !2356)
!2368 = !DILocation(line: 363, column: 35, scope: !2301, inlinedAt: !2356)
!2369 = !DILocation(line: 363, column: 31, scope: !2301, inlinedAt: !2356)
!2370 = !DILocation(line: 363, column: 71, scope: !2301, inlinedAt: !2356)
!2371 = !DILocation(line: 363, column: 64, scope: !2301, inlinedAt: !2356)
!2372 = !DILocation(line: 363, column: 82, scope: !2301, inlinedAt: !2356)
!2373 = !DILocation(line: 363, column: 75, scope: !2301, inlinedAt: !2356)
!2374 = !DILocation(line: 364, column: 25, scope: !2301, inlinedAt: !2356)
!2375 = !DILocation(line: 364, column: 47, scope: !2301, inlinedAt: !2356)
!2376 = !DILocation(line: 364, column: 40, scope: !2301, inlinedAt: !2356)
!2377 = !DILocation(line: 364, column: 53, scope: !2301, inlinedAt: !2356)
!2378 = !DILocation(line: 364, column: 75, scope: !2301, inlinedAt: !2356)
!2379 = !DILocation(line: 364, column: 68, scope: !2301, inlinedAt: !2356)
!2380 = !DILocation(line: 365, column: 49, scope: !2301, inlinedAt: !2356)
!2381 = !DILocation(line: 365, column: 47, scope: !2301, inlinedAt: !2356)
!2382 = !DILocation(line: 367, column: 5, scope: !2301, inlinedAt: !2356)
!2383 = !DILocation(line: 368, column: 5, scope: !2301, inlinedAt: !2356)
!2384 = !DILocation(line: 369, column: 5, scope: !2301, inlinedAt: !2356)
!2385 = !DILocation(line: 370, column: 23, scope: !2301, inlinedAt: !2356)
!2386 = !DILocation(line: 371, column: 23, scope: !2301, inlinedAt: !2356)
!2387 = !DILocation(line: 372, column: 23, scope: !2301, inlinedAt: !2356)
!2388 = !DILocation(line: 373, column: 23, scope: !2301, inlinedAt: !2356)
!2389 = !DILocation(line: 374, column: 23, scope: !2301, inlinedAt: !2356)
!2390 = !DILocation(line: 376, column: 5, scope: !2301, inlinedAt: !2356)
!2391 = !DILocation(line: 377, column: 5, scope: !2301, inlinedAt: !2356)
!2392 = !DILocation(line: 378, column: 28, scope: !2301, inlinedAt: !2356)
!2393 = !DILocation(line: 379, column: 28, scope: !2301, inlinedAt: !2356)
!2394 = !DILocation(line: 381, column: 20, scope: !2301, inlinedAt: !2356)
!2395 = !DILocation(line: 383, column: 46, scope: !2301, inlinedAt: !2356)
!2396 = !DILocation(line: 383, column: 32, scope: !2301, inlinedAt: !2356)
!2397 = !DILocation(line: 383, column: 59, scope: !2301, inlinedAt: !2356)
!2398 = !DILocation(line: 383, column: 50, scope: !2301, inlinedAt: !2356)
!2399 = !DILocation(line: 383, column: 77, scope: !2301, inlinedAt: !2356)
!2400 = !DILocation(line: 383, column: 63, scope: !2301, inlinedAt: !2356)
!2401 = !DILocation(line: 384, column: 22, scope: !2301, inlinedAt: !2356)
!2402 = !DILocation(line: 384, column: 84, scope: !2301, inlinedAt: !2356)
!2403 = !DILocation(line: 384, column: 70, scope: !2301, inlinedAt: !2356)
!2404 = !DILocation(line: 385, column: 56, scope: !2301, inlinedAt: !2356)
!2405 = !DILocation(line: 385, column: 22, scope: !2301, inlinedAt: !2356)
!2406 = !DILocation(line: 385, column: 84, scope: !2301, inlinedAt: !2356)
!2407 = !DILocation(line: 385, column: 75, scope: !2301, inlinedAt: !2356)
!2408 = !DILocation(line: 386, column: 38, scope: !2301, inlinedAt: !2356)
!2409 = !DILocation(line: 386, column: 51, scope: !2301, inlinedAt: !2356)
!2410 = !DILocation(line: 386, column: 22, scope: !2301, inlinedAt: !2356)
!2411 = !DILocation(line: 386, column: 84, scope: !2301, inlinedAt: !2356)
!2412 = !DILocation(line: 386, column: 70, scope: !2301, inlinedAt: !2356)
!2413 = !DILocation(line: 387, column: 43, scope: !2301, inlinedAt: !2356)
!2414 = !DILocation(line: 387, column: 56, scope: !2301, inlinedAt: !2356)
!2415 = !DILocation(line: 387, column: 22, scope: !2301, inlinedAt: !2356)
!2416 = !DILocation(line: 387, column: 75, scope: !2301, inlinedAt: !2356)
!2417 = !DILocation(line: 388, column: 46, scope: !2301, inlinedAt: !2356)
!2418 = !DILocation(line: 388, column: 44, scope: !2301, inlinedAt: !2356)
!2419 = !DILocation(line: 399, column: 7, scope: !2301, inlinedAt: !2356)
!2420 = !DILocation(line: 400, column: 27, scope: !2301, inlinedAt: !2356)
!2421 = !DILocation(line: 401, column: 43, scope: !2301, inlinedAt: !2356)
!2422 = !DILocation(line: 401, column: 34, scope: !2301, inlinedAt: !2356)
!2423 = !DILocation(line: 401, column: 58, scope: !2301, inlinedAt: !2356)
!2424 = !DILocation(line: 401, column: 47, scope: !2301, inlinedAt: !2356)
!2425 = !DILocation(line: 401, column: 71, scope: !2301, inlinedAt: !2356)
!2426 = !DILocation(line: 401, column: 62, scope: !2301, inlinedAt: !2356)
!2427 = !DILocation(line: 401, column: 75, scope: !2301, inlinedAt: !2356)
!2428 = !DILocation(line: 402, column: 68, scope: !2301, inlinedAt: !2356)
!2429 = !DILocation(line: 402, column: 24, scope: !2301, inlinedAt: !2356)
!2430 = !DILocation(line: 402, column: 85, scope: !2301, inlinedAt: !2356)
!2431 = !DILocation(line: 402, column: 76, scope: !2301, inlinedAt: !2356)
!2432 = !DILocation(line: 403, column: 53, scope: !2301, inlinedAt: !2356)
!2433 = !DILocation(line: 403, column: 66, scope: !2301, inlinedAt: !2356)
!2434 = !DILocation(line: 403, column: 24, scope: !2301, inlinedAt: !2356)
!2435 = !DILocation(line: 403, column: 85, scope: !2301, inlinedAt: !2356)
!2436 = !DILocation(line: 403, column: 74, scope: !2301, inlinedAt: !2356)
!2437 = !DILocation(line: 404, column: 40, scope: !2301, inlinedAt: !2356)
!2438 = !DILocation(line: 404, column: 55, scope: !2301, inlinedAt: !2356)
!2439 = !DILocation(line: 404, column: 68, scope: !2301, inlinedAt: !2356)
!2440 = !DILocation(line: 404, column: 24, scope: !2301, inlinedAt: !2356)
!2441 = !DILocation(line: 404, column: 85, scope: !2301, inlinedAt: !2356)
!2442 = !DILocation(line: 404, column: 76, scope: !2301, inlinedAt: !2356)
!2443 = !DILocation(line: 405, column: 40, scope: !2301, inlinedAt: !2356)
!2444 = !DILocation(line: 405, column: 55, scope: !2301, inlinedAt: !2356)
!2445 = !DILocation(line: 405, column: 68, scope: !2301, inlinedAt: !2356)
!2446 = !DILocation(line: 405, column: 24, scope: !2301, inlinedAt: !2356)
!2447 = !DILocation(line: 405, column: 76, scope: !2301, inlinedAt: !2356)
!2448 = !DILocation(line: 406, column: 48, scope: !2301, inlinedAt: !2356)
!2449 = !DILocation(line: 406, column: 46, scope: !2301, inlinedAt: !2356)
!2450 = !DILocation(line: 407, column: 18, scope: !2301, inlinedAt: !2356)
!2451 = !DILocation(line: 409, column: 21, scope: !2301, inlinedAt: !2356)
!2452 = !DILocation(line: 409, column: 30, scope: !2301, inlinedAt: !2356)
!2453 = !DILocation(line: 410, column: 26, scope: !2301, inlinedAt: !2356)
!2454 = !DILocation(line: 410, column: 16, scope: !2301, inlinedAt: !2356)
!2455 = !DILocation(line: 410, column: 34, scope: !2301, inlinedAt: !2356)
!2456 = !DILocation(line: 410, column: 69, scope: !2301, inlinedAt: !2356)
!2457 = !DILocation(line: 410, column: 67, scope: !2301, inlinedAt: !2356)
!2458 = !DILocation(line: 411, column: 26, scope: !2301, inlinedAt: !2356)
!2459 = !DILocation(line: 411, column: 35, scope: !2301, inlinedAt: !2356)
!2460 = !DILocation(line: 412, column: 26, scope: !2301, inlinedAt: !2356)
!2461 = !DILocation(line: 412, column: 35, scope: !2301, inlinedAt: !2356)
!2462 = !DILocation(line: 413, column: 36, scope: !2301, inlinedAt: !2356)
!2463 = !DILocation(line: 413, column: 65, scope: !2301, inlinedAt: !2356)
!2464 = !DILocation(line: 413, column: 33, scope: !2301, inlinedAt: !2356)
!2465 = !DILocation(line: 415, column: 7, scope: !2351, inlinedAt: !2356)
!2466 = !DILocation(line: 416, column: 27, scope: !2349, inlinedAt: !2356)
!2467 = !DILocation(line: 416, column: 21, scope: !2349, inlinedAt: !2356)
!2468 = !DILocation(line: 0, scope: !2349, inlinedAt: !2356)
!2469 = !DILocation(line: 417, column: 32, scope: !2349, inlinedAt: !2356)
!2470 = !DILocation(line: 417, column: 22, scope: !2349, inlinedAt: !2356)
!2471 = !DILocation(line: 418, column: 39, scope: !2349, inlinedAt: !2356)
!2472 = !DILocation(line: 418, column: 50, scope: !2349, inlinedAt: !2356)
!2473 = !DILocation(line: 418, column: 41, scope: !2349, inlinedAt: !2356)
!2474 = !DILocation(line: 419, column: 44, scope: !2349, inlinedAt: !2356)
!2475 = !DILocation(line: 419, column: 62, scope: !2349, inlinedAt: !2356)
!2476 = !DILocation(line: 419, column: 58, scope: !2349, inlinedAt: !2356)
!2477 = !DILocation(line: 419, column: 46, scope: !2349, inlinedAt: !2356)
!2478 = !DILocation(line: 420, column: 16, scope: !2349, inlinedAt: !2356)
!2479 = !DILocation(line: 421, column: 19, scope: !2349, inlinedAt: !2356)
!2480 = !DILocation(line: 421, column: 39, scope: !2349, inlinedAt: !2356)
!2481 = !DILocation(line: 422, column: 16, scope: !2349, inlinedAt: !2356)
!2482 = !DILocation(line: 423, column: 19, scope: !2349, inlinedAt: !2356)
!2483 = !DILocation(line: 423, column: 39, scope: !2349, inlinedAt: !2356)
!2484 = !DILocation(line: 424, column: 24, scope: !2349, inlinedAt: !2356)
!2485 = !DILocation(line: 425, column: 24, scope: !2349, inlinedAt: !2356)
!2486 = !DILocation(line: 426, column: 18, scope: !2349, inlinedAt: !2356)
!2487 = !DILocation(line: 427, column: 18, scope: !2349, inlinedAt: !2356)
!2488 = !DILocation(line: 428, column: 12, scope: !2489, inlinedAt: !2356)
!2489 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 428, column: 12)
!2490 = !DILocation(line: 428, column: 30, scope: !2489, inlinedAt: !2356)
!2491 = !DILocation(line: 428, column: 29, scope: !2489, inlinedAt: !2356)
!2492 = !DILocation(line: 428, column: 24, scope: !2489, inlinedAt: !2356)
!2493 = !DILocation(line: 415, column: 25, scope: !2350, inlinedAt: !2356)
!2494 = !DILocation(line: 415, column: 17, scope: !2350, inlinedAt: !2356)
!2495 = distinct !{!2495, !2465, !2496, !536}
!2496 = !DILocation(line: 429, column: 7, scope: !2351, inlinedAt: !2356)
!2497 = !DILocation(line: 415, scope: !2351, inlinedAt: !2356)
!2498 = !DILocation(line: 431, column: 20, scope: !2301, inlinedAt: !2356)
!2499 = !DILocation(line: 432, column: 26, scope: !2301, inlinedAt: !2356)
!2500 = !DILocation(line: 432, column: 15, scope: !2301, inlinedAt: !2356)
!2501 = !DILocation(line: 433, column: 26, scope: !2301, inlinedAt: !2356)
!2502 = !DILocation(line: 434, column: 48, scope: !2301, inlinedAt: !2356)
!2503 = !DILocation(line: 434, column: 44, scope: !2301, inlinedAt: !2356)
!2504 = !DILocation(line: 434, column: 54, scope: !2301, inlinedAt: !2356)
!2505 = !DILocation(line: 435, column: 19, scope: !2301, inlinedAt: !2356)
!2506 = !DILocation(line: 437, column: 12, scope: !2507, inlinedAt: !2356)
!2507 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 437, column: 10)
!2508 = !DILocation(line: 437, column: 10, scope: !2301, inlinedAt: !2356)
!2509 = !DILocation(line: 438, column: 9, scope: !2510, inlinedAt: !2356)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2, line: 438, column: 9)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 437, column: 21)
!2512 = !DILocation(line: 0, scope: !2507, inlinedAt: !2356)
!2513 = !DILocation(line: 443, column: 1, scope: !2301, inlinedAt: !2356)
!2514 = !DILocation(line: 723, column: 5, scope: !2357)
!2515 = !DILocation(line: 723, column: 22, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 723, column: 16)
!2517 = !DILocation(line: 723, column: 26, scope: !2516)
!2518 = !DILocation(line: 723, column: 36, scope: !2516)
!2519 = !DILocation(line: 723, column: 34, scope: !2516)
!2520 = !DILocation(line: 723, column: 49, scope: !2516)
!2521 = !DILocalVariable(name: "powx", scope: !2522, file: !2, line: 455, type: !163)
!2522 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_simple", scope: !2, file: !2, line: 447, type: !2302, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2521, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2572, !2573, !2574}
!2524 = !DILocalVariable(name: "N", arg: 1, scope: !2522, file: !2, line: 447, type: !40)
!2525 = !DILocalVariable(name: "a", arg: 2, scope: !2522, file: !2, line: 447, type: !78)
!2526 = !DILocalVariable(name: "bint", arg: 3, scope: !2522, file: !2, line: 447, type: !78)
!2527 = !DILocalVariable(name: "b", arg: 4, scope: !2522, file: !2, line: 447, type: !78)
!2528 = !DILocalVariable(name: "beps", arg: 5, scope: !2522, file: !2, line: 447, type: !78)
!2529 = !DILocalVariable(name: "x", arg: 6, scope: !2522, file: !2, line: 447, type: !78)
!2530 = !DILocalVariable(name: "xeps", arg: 7, scope: !2522, file: !2, line: 447, type: !78)
!2531 = !DILocalVariable(name: "sum", arg: 8, scope: !2522, file: !2, line: 447, type: !163)
!2532 = !DILocalVariable(name: "result", arg: 9, scope: !2522, file: !2, line: 448, type: !990)
!2533 = !DILocalVariable(name: "EPS", scope: !2522, file: !2, line: 450, type: !92)
!2534 = !DILocalVariable(name: "istrt", scope: !2522, file: !2, line: 452, type: !40)
!2535 = !DILocalVariable(name: "xi", scope: !2522, file: !2, line: 453, type: !78)
!2536 = !DILocalVariable(name: "stat_powx", scope: !2522, file: !2, line: 456, type: !40)
!2537 = !DILocalVariable(name: "sarg", scope: !2522, file: !2, line: 457, type: !78)
!2538 = !DILocalVariable(name: "sfact", scope: !2522, file: !2, line: 458, type: !78)
!2539 = !DILocalVariable(name: "factor_val", scope: !2522, file: !2, line: 459, type: !78)
!2540 = !DILocalVariable(name: "factor_err", scope: !2522, file: !2, line: 460, type: !78)
!2541 = !DILocalVariable(name: "pochai", scope: !2522, file: !2, line: 462, type: !163)
!2542 = !DILocalVariable(name: "gamri1", scope: !2522, file: !2, line: 463, type: !163)
!2543 = !DILocalVariable(name: "gamrni", scope: !2522, file: !2, line: 464, type: !163)
!2544 = !DILocalVariable(name: "stat_pochai", scope: !2522, file: !2, line: 465, type: !40)
!2545 = !DILocalVariable(name: "stat_gamri1", scope: !2522, file: !2, line: 466, type: !40)
!2546 = !DILocalVariable(name: "stat_gamrni", scope: !2522, file: !2, line: 467, type: !40)
!2547 = !DILocalVariable(name: "stat_gam123", scope: !2522, file: !2, line: 468, type: !40)
!2548 = !DILocalVariable(name: "stat_gamall", scope: !2522, file: !2, line: 469, type: !40)
!2549 = !DILocalVariable(name: "pochaxibeps", scope: !2522, file: !2, line: 471, type: !163)
!2550 = !DILocalVariable(name: "gamrxi1beps", scope: !2522, file: !2, line: 472, type: !163)
!2551 = !DILocalVariable(name: "stat_pochaxibeps", scope: !2522, file: !2, line: 473, type: !40)
!2552 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !2522, file: !2, line: 474, type: !40)
!2553 = !DILocalVariable(name: "stat_all", scope: !2522, file: !2, line: 476, type: !40)
!2554 = !DILocalVariable(name: "X", scope: !2522, file: !2, line: 478, type: !78)
!2555 = !DILocalVariable(name: "b0_val", scope: !2522, file: !2, line: 480, type: !78)
!2556 = !DILocalVariable(name: "b0_err", scope: !2522, file: !2, line: 481, type: !78)
!2557 = !DILocalVariable(name: "i", scope: !2522, file: !2, line: 491, type: !40)
!2558 = !DILocalVariable(name: "dchu_val", scope: !2522, file: !2, line: 492, type: !78)
!2559 = !DILocalVariable(name: "dchu_err", scope: !2522, file: !2, line: 493, type: !78)
!2560 = !DILocalVariable(name: "t_val", scope: !2522, file: !2, line: 494, type: !78)
!2561 = !DILocalVariable(name: "t_err", scope: !2522, file: !2, line: 495, type: !78)
!2562 = !DILocalVariable(name: "gamr", scope: !2522, file: !2, line: 496, type: !163)
!2563 = !DILocalVariable(name: "dgamrbxi", scope: !2522, file: !2, line: 497, type: !163)
!2564 = !DILocalVariable(name: "stat_gamr", scope: !2522, file: !2, line: 498, type: !40)
!2565 = !DILocalVariable(name: "stat_dgamrbxi", scope: !2522, file: !2, line: 499, type: !40)
!2566 = !DILocalVariable(name: "a0_val", scope: !2522, file: !2, line: 500, type: !78)
!2567 = !DILocalVariable(name: "a0_err", scope: !2522, file: !2, line: 501, type: !78)
!2568 = !DILocalVariable(name: "xi", scope: !2569, file: !2, line: 515, type: !78)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 514, column: 29)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 514, column: 7)
!2571 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 514, column: 7)
!2572 = !DILocalVariable(name: "xi1", scope: !2569, file: !2, line: 516, type: !78)
!2573 = !DILocalVariable(name: "a0_multiplier", scope: !2569, file: !2, line: 517, type: !78)
!2574 = !DILocalVariable(name: "b0_multiplier", scope: !2569, file: !2, line: 518, type: !78)
!2575 = !DILocation(line: 0, scope: !2522, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 724, column: 19, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 723, column: 63)
!2578 = !DILocation(line: 452, column: 19, scope: !2522, inlinedAt: !2576)
!2579 = !DILocation(line: 453, column: 17, scope: !2522, inlinedAt: !2576)
!2580 = !DILocation(line: 455, column: 5, scope: !2522, inlinedAt: !2576)
!2581 = !DILocation(line: 456, column: 21, scope: !2522, inlinedAt: !2576)
!2582 = !DILocation(line: 457, column: 25, scope: !2522, inlinedAt: !2576)
!2583 = !DILocation(line: 458, column: 28, scope: !2522, inlinedAt: !2576)
!2584 = !DILocation(line: 458, column: 23, scope: !2522, inlinedAt: !2576)
!2585 = !DILocation(line: 458, column: 41, scope: !2522, inlinedAt: !2576)
!2586 = !DILocation(line: 459, column: 35, scope: !2522, inlinedAt: !2576)
!2587 = !DILocation(line: 459, column: 31, scope: !2522, inlinedAt: !2576)
!2588 = !DILocation(line: 459, column: 71, scope: !2522, inlinedAt: !2576)
!2589 = !DILocation(line: 459, column: 64, scope: !2522, inlinedAt: !2576)
!2590 = !DILocation(line: 460, column: 35, scope: !2522, inlinedAt: !2576)
!2591 = !DILocation(line: 460, column: 25, scope: !2522, inlinedAt: !2576)
!2592 = !DILocation(line: 460, column: 66, scope: !2522, inlinedAt: !2576)
!2593 = !DILocation(line: 460, column: 64, scope: !2522, inlinedAt: !2576)
!2594 = !DILocation(line: 462, column: 5, scope: !2522, inlinedAt: !2576)
!2595 = !DILocation(line: 463, column: 5, scope: !2522, inlinedAt: !2576)
!2596 = !DILocation(line: 464, column: 5, scope: !2522, inlinedAt: !2576)
!2597 = !DILocation(line: 465, column: 23, scope: !2522, inlinedAt: !2576)
!2598 = !DILocation(line: 466, column: 23, scope: !2522, inlinedAt: !2576)
!2599 = !DILocation(line: 467, column: 23, scope: !2522, inlinedAt: !2576)
!2600 = !DILocation(line: 468, column: 23, scope: !2522, inlinedAt: !2576)
!2601 = !DILocation(line: 469, column: 23, scope: !2522, inlinedAt: !2576)
!2602 = !DILocation(line: 471, column: 5, scope: !2522, inlinedAt: !2576)
!2603 = !DILocation(line: 472, column: 5, scope: !2522, inlinedAt: !2576)
!2604 = !DILocation(line: 473, column: 28, scope: !2522, inlinedAt: !2576)
!2605 = !DILocation(line: 474, column: 28, scope: !2522, inlinedAt: !2576)
!2606 = !DILocation(line: 476, column: 20, scope: !2522, inlinedAt: !2576)
!2607 = !DILocation(line: 478, column: 63, scope: !2522, inlinedAt: !2576)
!2608 = !DILocation(line: 478, column: 56, scope: !2522, inlinedAt: !2576)
!2609 = !DILocation(line: 478, column: 99, scope: !2522, inlinedAt: !2576)
!2610 = !DILocation(line: 478, column: 103, scope: !2522, inlinedAt: !2576)
!2611 = !DILocation(line: 478, column: 69, scope: !2522, inlinedAt: !2576)
!2612 = !DILocation(line: 478, column: 67, scope: !2522, inlinedAt: !2576)
!2613 = !DILocation(line: 478, column: 113, scope: !2522, inlinedAt: !2576)
!2614 = !DILocation(line: 478, column: 111, scope: !2522, inlinedAt: !2576)
!2615 = !DILocation(line: 480, column: 32, scope: !2522, inlinedAt: !2576)
!2616 = !DILocation(line: 480, column: 23, scope: !2522, inlinedAt: !2576)
!2617 = !DILocation(line: 480, column: 50, scope: !2522, inlinedAt: !2576)
!2618 = !DILocation(line: 480, column: 36, scope: !2522, inlinedAt: !2576)
!2619 = !DILocation(line: 481, column: 52, scope: !2522, inlinedAt: !2576)
!2620 = !DILocation(line: 481, column: 38, scope: !2522, inlinedAt: !2576)
!2621 = !DILocation(line: 481, column: 56, scope: !2522, inlinedAt: !2576)
!2622 = !DILocation(line: 481, column: 22, scope: !2522, inlinedAt: !2576)
!2623 = !DILocation(line: 481, column: 84, scope: !2522, inlinedAt: !2576)
!2624 = !DILocation(line: 481, column: 70, scope: !2522, inlinedAt: !2576)
!2625 = !DILocation(line: 482, column: 56, scope: !2522, inlinedAt: !2576)
!2626 = !DILocation(line: 482, column: 22, scope: !2522, inlinedAt: !2576)
!2627 = !DILocation(line: 482, column: 84, scope: !2522, inlinedAt: !2576)
!2628 = !DILocation(line: 482, column: 75, scope: !2522, inlinedAt: !2576)
!2629 = !DILocation(line: 483, column: 38, scope: !2522, inlinedAt: !2576)
!2630 = !DILocation(line: 483, column: 51, scope: !2522, inlinedAt: !2576)
!2631 = !DILocation(line: 483, column: 22, scope: !2522, inlinedAt: !2576)
!2632 = !DILocation(line: 483, column: 84, scope: !2522, inlinedAt: !2576)
!2633 = !DILocation(line: 483, column: 70, scope: !2522, inlinedAt: !2576)
!2634 = !DILocation(line: 484, column: 43, scope: !2522, inlinedAt: !2576)
!2635 = !DILocation(line: 484, column: 56, scope: !2522, inlinedAt: !2576)
!2636 = !DILocation(line: 484, column: 22, scope: !2522, inlinedAt: !2576)
!2637 = !DILocation(line: 484, column: 75, scope: !2522, inlinedAt: !2576)
!2638 = !DILocation(line: 485, column: 46, scope: !2522, inlinedAt: !2576)
!2639 = !DILocation(line: 485, column: 44, scope: !2522, inlinedAt: !2576)
!2640 = !DILocation(line: 496, column: 7, scope: !2522, inlinedAt: !2576)
!2641 = !DILocation(line: 497, column: 7, scope: !2522, inlinedAt: !2576)
!2642 = !DILocation(line: 498, column: 23, scope: !2522, inlinedAt: !2576)
!2643 = !DILocation(line: 499, column: 27, scope: !2522, inlinedAt: !2576)
!2644 = !DILocation(line: 500, column: 41, scope: !2522, inlinedAt: !2576)
!2645 = !DILocation(line: 500, column: 34, scope: !2522, inlinedAt: !2576)
!2646 = !DILocation(line: 500, column: 54, scope: !2522, inlinedAt: !2576)
!2647 = !DILocation(line: 500, column: 45, scope: !2522, inlinedAt: !2576)
!2648 = !DILocation(line: 500, column: 69, scope: !2522, inlinedAt: !2576)
!2649 = !DILocation(line: 500, column: 58, scope: !2522, inlinedAt: !2576)
!2650 = !DILocation(line: 500, column: 82, scope: !2522, inlinedAt: !2576)
!2651 = !DILocation(line: 500, column: 73, scope: !2522, inlinedAt: !2576)
!2652 = !DILocation(line: 500, column: 86, scope: !2522, inlinedAt: !2576)
!2653 = !DILocation(line: 501, column: 40, scope: !2522, inlinedAt: !2576)
!2654 = !DILocation(line: 501, column: 53, scope: !2522, inlinedAt: !2576)
!2655 = !DILocation(line: 501, column: 68, scope: !2522, inlinedAt: !2576)
!2656 = !DILocation(line: 501, column: 81, scope: !2522, inlinedAt: !2576)
!2657 = !DILocation(line: 501, column: 24, scope: !2522, inlinedAt: !2576)
!2658 = !DILocation(line: 501, column: 96, scope: !2522, inlinedAt: !2576)
!2659 = !DILocation(line: 501, column: 89, scope: !2522, inlinedAt: !2576)
!2660 = !DILocation(line: 502, column: 51, scope: !2522, inlinedAt: !2576)
!2661 = !DILocation(line: 502, column: 66, scope: !2522, inlinedAt: !2576)
!2662 = !DILocation(line: 502, column: 79, scope: !2522, inlinedAt: !2576)
!2663 = !DILocation(line: 502, column: 24, scope: !2522, inlinedAt: !2576)
!2664 = !DILocation(line: 502, column: 96, scope: !2522, inlinedAt: !2576)
!2665 = !DILocation(line: 502, column: 87, scope: !2522, inlinedAt: !2576)
!2666 = !DILocation(line: 503, column: 64, scope: !2522, inlinedAt: !2576)
!2667 = !DILocation(line: 503, column: 77, scope: !2522, inlinedAt: !2576)
!2668 = !DILocation(line: 503, column: 24, scope: !2522, inlinedAt: !2576)
!2669 = !DILocation(line: 503, column: 96, scope: !2522, inlinedAt: !2576)
!2670 = !DILocation(line: 503, column: 85, scope: !2522, inlinedAt: !2576)
!2671 = !DILocation(line: 504, column: 79, scope: !2522, inlinedAt: !2576)
!2672 = !DILocation(line: 504, column: 24, scope: !2522, inlinedAt: !2576)
!2673 = !DILocation(line: 504, column: 96, scope: !2522, inlinedAt: !2576)
!2674 = !DILocation(line: 504, column: 87, scope: !2522, inlinedAt: !2576)
!2675 = !DILocation(line: 505, column: 40, scope: !2522, inlinedAt: !2576)
!2676 = !DILocation(line: 505, column: 51, scope: !2522, inlinedAt: !2576)
!2677 = !DILocation(line: 505, column: 66, scope: !2522, inlinedAt: !2576)
!2678 = !DILocation(line: 505, column: 79, scope: !2522, inlinedAt: !2576)
!2679 = !DILocation(line: 505, column: 24, scope: !2522, inlinedAt: !2576)
!2680 = !DILocation(line: 505, column: 87, scope: !2522, inlinedAt: !2576)
!2681 = !DILocation(line: 506, column: 48, scope: !2522, inlinedAt: !2576)
!2682 = !DILocation(line: 506, column: 46, scope: !2522, inlinedAt: !2576)
!2683 = !DILocation(line: 507, column: 18, scope: !2522, inlinedAt: !2576)
!2684 = !DILocation(line: 509, column: 21, scope: !2522, inlinedAt: !2576)
!2685 = !DILocation(line: 509, column: 30, scope: !2522, inlinedAt: !2576)
!2686 = !DILocation(line: 510, column: 26, scope: !2522, inlinedAt: !2576)
!2687 = !DILocation(line: 510, column: 16, scope: !2522, inlinedAt: !2576)
!2688 = !DILocation(line: 510, column: 34, scope: !2522, inlinedAt: !2576)
!2689 = !DILocation(line: 510, column: 69, scope: !2522, inlinedAt: !2576)
!2690 = !DILocation(line: 510, column: 67, scope: !2522, inlinedAt: !2576)
!2691 = !DILocation(line: 511, column: 26, scope: !2522, inlinedAt: !2576)
!2692 = !DILocation(line: 511, column: 35, scope: !2522, inlinedAt: !2576)
!2693 = !DILocation(line: 512, column: 26, scope: !2522, inlinedAt: !2576)
!2694 = !DILocation(line: 512, column: 35, scope: !2522, inlinedAt: !2576)
!2695 = !DILocation(line: 513, column: 36, scope: !2522, inlinedAt: !2576)
!2696 = !DILocation(line: 513, column: 65, scope: !2522, inlinedAt: !2576)
!2697 = !DILocation(line: 513, column: 33, scope: !2522, inlinedAt: !2576)
!2698 = !DILocation(line: 514, column: 7, scope: !2571, inlinedAt: !2576)
!2699 = !DILocation(line: 515, column: 27, scope: !2569, inlinedAt: !2576)
!2700 = !DILocation(line: 515, column: 21, scope: !2569, inlinedAt: !2576)
!2701 = !DILocation(line: 0, scope: !2569, inlinedAt: !2576)
!2702 = !DILocation(line: 516, column: 32, scope: !2569, inlinedAt: !2576)
!2703 = !DILocation(line: 516, column: 22, scope: !2569, inlinedAt: !2576)
!2704 = !DILocation(line: 517, column: 39, scope: !2569, inlinedAt: !2576)
!2705 = !DILocation(line: 517, column: 50, scope: !2569, inlinedAt: !2576)
!2706 = !DILocation(line: 517, column: 41, scope: !2569, inlinedAt: !2576)
!2707 = !DILocation(line: 518, column: 44, scope: !2569, inlinedAt: !2576)
!2708 = !DILocation(line: 518, column: 62, scope: !2569, inlinedAt: !2576)
!2709 = !DILocation(line: 518, column: 58, scope: !2569, inlinedAt: !2576)
!2710 = !DILocation(line: 518, column: 46, scope: !2569, inlinedAt: !2576)
!2711 = !DILocation(line: 519, column: 16, scope: !2569, inlinedAt: !2576)
!2712 = !DILocation(line: 520, column: 19, scope: !2569, inlinedAt: !2576)
!2713 = !DILocation(line: 520, column: 39, scope: !2569, inlinedAt: !2576)
!2714 = !DILocation(line: 521, column: 16, scope: !2569, inlinedAt: !2576)
!2715 = !DILocation(line: 522, column: 19, scope: !2569, inlinedAt: !2576)
!2716 = !DILocation(line: 522, column: 39, scope: !2569, inlinedAt: !2576)
!2717 = !DILocation(line: 523, column: 24, scope: !2569, inlinedAt: !2576)
!2718 = !DILocation(line: 524, column: 24, scope: !2569, inlinedAt: !2576)
!2719 = !DILocation(line: 525, column: 18, scope: !2569, inlinedAt: !2576)
!2720 = !DILocation(line: 526, column: 18, scope: !2569, inlinedAt: !2576)
!2721 = !DILocation(line: 527, column: 13, scope: !2722, inlinedAt: !2576)
!2722 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 527, column: 12)
!2723 = !DILocation(line: 527, column: 31, scope: !2722, inlinedAt: !2576)
!2724 = !DILocation(line: 514, column: 25, scope: !2570, inlinedAt: !2576)
!2725 = !DILocation(line: 514, column: 17, scope: !2570, inlinedAt: !2576)
!2726 = distinct !{!2726, !2698, !2727, !536}
!2727 = !DILocation(line: 528, column: 7, scope: !2571, inlinedAt: !2576)
!2728 = !DILocation(line: 514, scope: !2571, inlinedAt: !2576)
!2729 = !DILocation(line: 530, column: 20, scope: !2522, inlinedAt: !2576)
!2730 = !DILocation(line: 531, column: 26, scope: !2522, inlinedAt: !2576)
!2731 = !DILocation(line: 531, column: 15, scope: !2522, inlinedAt: !2576)
!2732 = !DILocation(line: 532, column: 26, scope: !2522, inlinedAt: !2576)
!2733 = !DILocation(line: 533, column: 48, scope: !2522, inlinedAt: !2576)
!2734 = !DILocation(line: 533, column: 44, scope: !2522, inlinedAt: !2576)
!2735 = !DILocation(line: 533, column: 54, scope: !2522, inlinedAt: !2576)
!2736 = !DILocation(line: 534, column: 19, scope: !2522, inlinedAt: !2576)
!2737 = !DILocation(line: 536, column: 12, scope: !2738, inlinedAt: !2576)
!2738 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 536, column: 10)
!2739 = !DILocation(line: 536, column: 10, scope: !2522, inlinedAt: !2576)
!2740 = !DILocation(line: 537, column: 9, scope: !2741, inlinedAt: !2576)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 537, column: 9)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 536, column: 21)
!2743 = !DILocation(line: 0, scope: !2738, inlinedAt: !2576)
!2744 = !DILocation(line: 542, column: 1, scope: !2522, inlinedAt: !2576)
!2745 = !DILocation(line: 725, column: 5, scope: !2577)
!2746 = !DILocalVariable(name: "gamr", scope: !2747, file: !2, line: 556, type: !163)
!2747 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_improved", scope: !2, file: !2, line: 547, type: !2302, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2748)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2746, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2810, !2811, !2812, !2813, !2814}
!2749 = !DILocalVariable(name: "N", arg: 1, scope: !2747, file: !2, line: 547, type: !40)
!2750 = !DILocalVariable(name: "a", arg: 2, scope: !2747, file: !2, line: 547, type: !78)
!2751 = !DILocalVariable(name: "bint", arg: 3, scope: !2747, file: !2, line: 547, type: !78)
!2752 = !DILocalVariable(name: "b", arg: 4, scope: !2747, file: !2, line: 547, type: !78)
!2753 = !DILocalVariable(name: "beps", arg: 5, scope: !2747, file: !2, line: 547, type: !78)
!2754 = !DILocalVariable(name: "x", arg: 6, scope: !2747, file: !2, line: 547, type: !78)
!2755 = !DILocalVariable(name: "xeps", arg: 7, scope: !2747, file: !2, line: 547, type: !78)
!2756 = !DILocalVariable(name: "sum", arg: 8, scope: !2747, file: !2, line: 547, type: !163)
!2757 = !DILocalVariable(name: "result", arg: 9, scope: !2747, file: !2, line: 548, type: !990)
!2758 = !DILocalVariable(name: "EPS", scope: !2747, file: !2, line: 550, type: !92)
!2759 = !DILocalVariable(name: "lnx", scope: !2747, file: !2, line: 551, type: !92)
!2760 = !DILocalVariable(name: "istrt", scope: !2747, file: !2, line: 553, type: !40)
!2761 = !DILocalVariable(name: "xi", scope: !2747, file: !2, line: 554, type: !78)
!2762 = !DILocalVariable(name: "powx", scope: !2747, file: !2, line: 557, type: !163)
!2763 = !DILocalVariable(name: "stat_gamr", scope: !2747, file: !2, line: 558, type: !40)
!2764 = !DILocalVariable(name: "stat_powx", scope: !2747, file: !2, line: 559, type: !40)
!2765 = !DILocalVariable(name: "sarg", scope: !2747, file: !2, line: 560, type: !78)
!2766 = !DILocalVariable(name: "sfact", scope: !2747, file: !2, line: 561, type: !78)
!2767 = !DILocalVariable(name: "factor_val", scope: !2747, file: !2, line: 562, type: !78)
!2768 = !DILocalVariable(name: "factor_err", scope: !2747, file: !2, line: 563, type: !78)
!2769 = !DILocalVariable(name: "pochai", scope: !2747, file: !2, line: 566, type: !163)
!2770 = !DILocalVariable(name: "gamri1", scope: !2747, file: !2, line: 567, type: !163)
!2771 = !DILocalVariable(name: "gamrni", scope: !2747, file: !2, line: 568, type: !163)
!2772 = !DILocalVariable(name: "stat_pochai", scope: !2747, file: !2, line: 569, type: !40)
!2773 = !DILocalVariable(name: "stat_gamri1", scope: !2747, file: !2, line: 570, type: !40)
!2774 = !DILocalVariable(name: "stat_gamrni", scope: !2747, file: !2, line: 571, type: !40)
!2775 = !DILocalVariable(name: "stat_gam123", scope: !2747, file: !2, line: 572, type: !40)
!2776 = !DILocalVariable(name: "stat_gamall", scope: !2747, file: !2, line: 573, type: !40)
!2777 = !DILocalVariable(name: "pochaxibeps", scope: !2747, file: !2, line: 575, type: !163)
!2778 = !DILocalVariable(name: "gamrxi1beps", scope: !2747, file: !2, line: 576, type: !163)
!2779 = !DILocalVariable(name: "stat_pochaxibeps", scope: !2747, file: !2, line: 577, type: !40)
!2780 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !2747, file: !2, line: 578, type: !40)
!2781 = !DILocalVariable(name: "stat_all", scope: !2747, file: !2, line: 580, type: !40)
!2782 = !DILocalVariable(name: "b0_val", scope: !2747, file: !2, line: 582, type: !78)
!2783 = !DILocalVariable(name: "b0_err", scope: !2747, file: !2, line: 583, type: !78)
!2784 = !DILocalVariable(name: "i", scope: !2747, file: !2, line: 593, type: !40)
!2785 = !DILocalVariable(name: "pch1ai", scope: !2747, file: !2, line: 594, type: !163)
!2786 = !DILocalVariable(name: "pch1i", scope: !2747, file: !2, line: 595, type: !163)
!2787 = !DILocalVariable(name: "poch1bxibeps", scope: !2747, file: !2, line: 596, type: !163)
!2788 = !DILocalVariable(name: "stat_pch1ai", scope: !2747, file: !2, line: 597, type: !40)
!2789 = !DILocalVariable(name: "stat_pch1i", scope: !2747, file: !2, line: 598, type: !40)
!2790 = !DILocalVariable(name: "stat_poch1bxibeps", scope: !2747, file: !2, line: 599, type: !40)
!2791 = !DILocalVariable(name: "c0_t1_val", scope: !2747, file: !2, line: 600, type: !78)
!2792 = !DILocalVariable(name: "c0_t1_err", scope: !2747, file: !2, line: 601, type: !78)
!2793 = !DILocalVariable(name: "c0_t2_val", scope: !2747, file: !2, line: 604, type: !78)
!2794 = !DILocalVariable(name: "c0_t2_err", scope: !2747, file: !2, line: 605, type: !78)
!2795 = !DILocalVariable(name: "c0_val", scope: !2747, file: !2, line: 607, type: !78)
!2796 = !DILocalVariable(name: "c0_err", scope: !2747, file: !2, line: 608, type: !78)
!2797 = !DILocalVariable(name: "dexprl", scope: !2747, file: !2, line: 617, type: !163)
!2798 = !DILocalVariable(name: "stat_dexprl", scope: !2747, file: !2, line: 618, type: !40)
!2799 = !DILocalVariable(name: "xeps1_val", scope: !2747, file: !2, line: 619, type: !78)
!2800 = !DILocalVariable(name: "xeps1_err", scope: !2747, file: !2, line: 620, type: !78)
!2801 = !DILocalVariable(name: "dchu_val", scope: !2747, file: !2, line: 623, type: !78)
!2802 = !DILocalVariable(name: "dchu_err", scope: !2747, file: !2, line: 624, type: !78)
!2803 = !DILocalVariable(name: "xn", scope: !2747, file: !2, line: 628, type: !78)
!2804 = !DILocalVariable(name: "t_val", scope: !2747, file: !2, line: 629, type: !78)
!2805 = !DILocalVariable(name: "t_err", scope: !2747, file: !2, line: 630, type: !78)
!2806 = !DILocalVariable(name: "xi", scope: !2807, file: !2, line: 635, type: !92)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !2, line: 634, column: 29)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 634, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 634, column: 7)
!2810 = !DILocalVariable(name: "xi1", scope: !2807, file: !2, line: 636, type: !92)
!2811 = !DILocalVariable(name: "tmp", scope: !2807, file: !2, line: 637, type: !92)
!2812 = !DILocalVariable(name: "b0_multiplier", scope: !2807, file: !2, line: 638, type: !92)
!2813 = !DILocalVariable(name: "c0_multiplier_1", scope: !2807, file: !2, line: 639, type: !92)
!2814 = !DILocalVariable(name: "c0_multiplier_2", scope: !2807, file: !2, line: 640, type: !92)
!2815 = !DILocation(line: 0, scope: !2747, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 726, column: 18, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 725, column: 12)
!2818 = !DILocation(line: 553, column: 19, scope: !2747, inlinedAt: !2816)
!2819 = !DILocation(line: 554, column: 17, scope: !2747, inlinedAt: !2816)
!2820 = !DILocation(line: 556, column: 5, scope: !2747, inlinedAt: !2816)
!2821 = !DILocation(line: 557, column: 5, scope: !2747, inlinedAt: !2816)
!2822 = !DILocation(line: 558, column: 21, scope: !2747, inlinedAt: !2816)
!2823 = !DILocation(line: 559, column: 21, scope: !2747, inlinedAt: !2816)
!2824 = !DILocation(line: 560, column: 25, scope: !2747, inlinedAt: !2816)
!2825 = !DILocation(line: 561, column: 28, scope: !2747, inlinedAt: !2816)
!2826 = !DILocation(line: 561, column: 23, scope: !2747, inlinedAt: !2816)
!2827 = !DILocation(line: 561, column: 41, scope: !2747, inlinedAt: !2816)
!2828 = !DILocation(line: 562, column: 35, scope: !2747, inlinedAt: !2816)
!2829 = !DILocation(line: 562, column: 31, scope: !2747, inlinedAt: !2816)
!2830 = !DILocation(line: 562, column: 71, scope: !2747, inlinedAt: !2816)
!2831 = !DILocation(line: 562, column: 64, scope: !2747, inlinedAt: !2816)
!2832 = !DILocation(line: 562, column: 82, scope: !2747, inlinedAt: !2816)
!2833 = !DILocation(line: 562, column: 75, scope: !2747, inlinedAt: !2816)
!2834 = !DILocation(line: 563, column: 25, scope: !2747, inlinedAt: !2816)
!2835 = !DILocation(line: 563, column: 47, scope: !2747, inlinedAt: !2816)
!2836 = !DILocation(line: 563, column: 40, scope: !2747, inlinedAt: !2816)
!2837 = !DILocation(line: 563, column: 53, scope: !2747, inlinedAt: !2816)
!2838 = !DILocation(line: 563, column: 75, scope: !2747, inlinedAt: !2816)
!2839 = !DILocation(line: 563, column: 68, scope: !2747, inlinedAt: !2816)
!2840 = !DILocation(line: 564, column: 49, scope: !2747, inlinedAt: !2816)
!2841 = !DILocation(line: 564, column: 47, scope: !2747, inlinedAt: !2816)
!2842 = !DILocation(line: 566, column: 5, scope: !2747, inlinedAt: !2816)
!2843 = !DILocation(line: 567, column: 5, scope: !2747, inlinedAt: !2816)
!2844 = !DILocation(line: 568, column: 5, scope: !2747, inlinedAt: !2816)
!2845 = !DILocation(line: 569, column: 23, scope: !2747, inlinedAt: !2816)
!2846 = !DILocation(line: 570, column: 23, scope: !2747, inlinedAt: !2816)
!2847 = !DILocation(line: 571, column: 23, scope: !2747, inlinedAt: !2816)
!2848 = !DILocation(line: 572, column: 23, scope: !2747, inlinedAt: !2816)
!2849 = !DILocation(line: 573, column: 23, scope: !2747, inlinedAt: !2816)
!2850 = !DILocation(line: 575, column: 5, scope: !2747, inlinedAt: !2816)
!2851 = !DILocation(line: 576, column: 5, scope: !2747, inlinedAt: !2816)
!2852 = !DILocation(line: 577, column: 28, scope: !2747, inlinedAt: !2816)
!2853 = !DILocation(line: 578, column: 28, scope: !2747, inlinedAt: !2816)
!2854 = !DILocation(line: 580, column: 20, scope: !2747, inlinedAt: !2816)
!2855 = !DILocation(line: 582, column: 46, scope: !2747, inlinedAt: !2816)
!2856 = !DILocation(line: 582, column: 32, scope: !2747, inlinedAt: !2816)
!2857 = !DILocation(line: 582, column: 59, scope: !2747, inlinedAt: !2816)
!2858 = !DILocation(line: 582, column: 50, scope: !2747, inlinedAt: !2816)
!2859 = !DILocation(line: 582, column: 77, scope: !2747, inlinedAt: !2816)
!2860 = !DILocation(line: 582, column: 63, scope: !2747, inlinedAt: !2816)
!2861 = !DILocation(line: 583, column: 22, scope: !2747, inlinedAt: !2816)
!2862 = !DILocation(line: 583, column: 84, scope: !2747, inlinedAt: !2816)
!2863 = !DILocation(line: 583, column: 70, scope: !2747, inlinedAt: !2816)
!2864 = !DILocation(line: 584, column: 56, scope: !2747, inlinedAt: !2816)
!2865 = !DILocation(line: 584, column: 22, scope: !2747, inlinedAt: !2816)
!2866 = !DILocation(line: 584, column: 84, scope: !2747, inlinedAt: !2816)
!2867 = !DILocation(line: 584, column: 75, scope: !2747, inlinedAt: !2816)
!2868 = !DILocation(line: 585, column: 38, scope: !2747, inlinedAt: !2816)
!2869 = !DILocation(line: 585, column: 51, scope: !2747, inlinedAt: !2816)
!2870 = !DILocation(line: 585, column: 22, scope: !2747, inlinedAt: !2816)
!2871 = !DILocation(line: 585, column: 84, scope: !2747, inlinedAt: !2816)
!2872 = !DILocation(line: 585, column: 70, scope: !2747, inlinedAt: !2816)
!2873 = !DILocation(line: 586, column: 43, scope: !2747, inlinedAt: !2816)
!2874 = !DILocation(line: 586, column: 56, scope: !2747, inlinedAt: !2816)
!2875 = !DILocation(line: 586, column: 22, scope: !2747, inlinedAt: !2816)
!2876 = !DILocation(line: 586, column: 75, scope: !2747, inlinedAt: !2816)
!2877 = !DILocation(line: 587, column: 46, scope: !2747, inlinedAt: !2816)
!2878 = !DILocation(line: 587, column: 44, scope: !2747, inlinedAt: !2816)
!2879 = !DILocation(line: 594, column: 7, scope: !2747, inlinedAt: !2816)
!2880 = !DILocation(line: 595, column: 7, scope: !2747, inlinedAt: !2816)
!2881 = !DILocation(line: 596, column: 7, scope: !2747, inlinedAt: !2816)
!2882 = !DILocation(line: 597, column: 25, scope: !2747, inlinedAt: !2816)
!2883 = !DILocation(line: 598, column: 25, scope: !2747, inlinedAt: !2816)
!2884 = !DILocation(line: 599, column: 31, scope: !2747, inlinedAt: !2816)
!2885 = !DILocation(line: 600, column: 38, scope: !2747, inlinedAt: !2816)
!2886 = !DILocation(line: 600, column: 30, scope: !2747, inlinedAt: !2816)
!2887 = !DILocation(line: 600, column: 48, scope: !2747, inlinedAt: !2816)
!2888 = !DILocation(line: 600, column: 41, scope: !2747, inlinedAt: !2816)
!2889 = !DILocation(line: 601, column: 37, scope: !2747, inlinedAt: !2816)
!2890 = !DILocation(line: 601, column: 64, scope: !2747, inlinedAt: !2816)
!2891 = !DILocation(line: 601, column: 56, scope: !2747, inlinedAt: !2816)
!2892 = !DILocation(line: 602, column: 37, scope: !2747, inlinedAt: !2816)
!2893 = !DILocation(line: 602, column: 65, scope: !2747, inlinedAt: !2816)
!2894 = !DILocation(line: 602, column: 56, scope: !2747, inlinedAt: !2816)
!2895 = !DILocation(line: 603, column: 50, scope: !2747, inlinedAt: !2816)
!2896 = !DILocation(line: 603, column: 48, scope: !2747, inlinedAt: !2816)
!2897 = !DILocation(line: 604, column: 40, scope: !2747, inlinedAt: !2816)
!2898 = !DILocation(line: 604, column: 57, scope: !2747, inlinedAt: !2816)
!2899 = !DILocation(line: 604, column: 69, scope: !2747, inlinedAt: !2816)
!2900 = !DILocation(line: 605, column: 40, scope: !2747, inlinedAt: !2816)
!2901 = !DILocation(line: 605, column: 57, scope: !2747, inlinedAt: !2816)
!2902 = !DILocation(line: 605, column: 69, scope: !2747, inlinedAt: !2816)
!2903 = !DILocation(line: 606, column: 50, scope: !2747, inlinedAt: !2816)
!2904 = !DILocation(line: 606, column: 48, scope: !2747, inlinedAt: !2816)
!2905 = !DILocation(line: 607, column: 43, scope: !2747, inlinedAt: !2816)
!2906 = !DILocation(line: 607, column: 34, scope: !2747, inlinedAt: !2816)
!2907 = !DILocation(line: 607, column: 56, scope: !2747, inlinedAt: !2816)
!2908 = !DILocation(line: 607, column: 47, scope: !2747, inlinedAt: !2816)
!2909 = !DILocation(line: 607, column: 69, scope: !2747, inlinedAt: !2816)
!2910 = !DILocation(line: 607, column: 60, scope: !2747, inlinedAt: !2816)
!2911 = !DILocation(line: 607, column: 73, scope: !2747, inlinedAt: !2816)
!2912 = !DILocation(line: 608, column: 24, scope: !2747, inlinedAt: !2816)
!2913 = !DILocation(line: 608, column: 80, scope: !2747, inlinedAt: !2816)
!2914 = !DILocation(line: 609, column: 66, scope: !2747, inlinedAt: !2816)
!2915 = !DILocation(line: 609, column: 24, scope: !2747, inlinedAt: !2816)
!2916 = !DILocation(line: 609, column: 88, scope: !2747, inlinedAt: !2816)
!2917 = !DILocation(line: 609, column: 79, scope: !2747, inlinedAt: !2816)
!2918 = !DILocation(line: 610, column: 53, scope: !2747, inlinedAt: !2816)
!2919 = !DILocation(line: 610, column: 66, scope: !2747, inlinedAt: !2816)
!2920 = !DILocation(line: 610, column: 24, scope: !2747, inlinedAt: !2816)
!2921 = !DILocation(line: 610, column: 88, scope: !2747, inlinedAt: !2816)
!2922 = !DILocation(line: 610, column: 79, scope: !2747, inlinedAt: !2816)
!2923 = !DILocation(line: 611, column: 40, scope: !2747, inlinedAt: !2816)
!2924 = !DILocation(line: 611, column: 53, scope: !2747, inlinedAt: !2816)
!2925 = !DILocation(line: 611, column: 66, scope: !2747, inlinedAt: !2816)
!2926 = !DILocation(line: 611, column: 24, scope: !2747, inlinedAt: !2816)
!2927 = !DILocation(line: 611, column: 88, scope: !2747, inlinedAt: !2816)
!2928 = !DILocation(line: 611, column: 79, scope: !2747, inlinedAt: !2816)
!2929 = !DILocation(line: 612, column: 40, scope: !2747, inlinedAt: !2816)
!2930 = !DILocation(line: 612, column: 53, scope: !2747, inlinedAt: !2816)
!2931 = !DILocation(line: 612, column: 66, scope: !2747, inlinedAt: !2816)
!2932 = !DILocation(line: 612, column: 24, scope: !2747, inlinedAt: !2816)
!2933 = !DILocation(line: 612, column: 79, scope: !2747, inlinedAt: !2816)
!2934 = !DILocation(line: 613, column: 48, scope: !2747, inlinedAt: !2816)
!2935 = !DILocation(line: 613, column: 46, scope: !2747, inlinedAt: !2816)
!2936 = !DILocation(line: 617, column: 7, scope: !2747, inlinedAt: !2816)
!2937 = !DILocation(line: 618, column: 46, scope: !2747, inlinedAt: !2816)
!2938 = !DILocation(line: 618, column: 25, scope: !2747, inlinedAt: !2816)
!2939 = !DILocation(line: 619, column: 39, scope: !2747, inlinedAt: !2816)
!2940 = !DILocation(line: 619, column: 30, scope: !2747, inlinedAt: !2816)
!2941 = !DILocation(line: 620, column: 66, scope: !2747, inlinedAt: !2816)
!2942 = !DILocation(line: 620, column: 57, scope: !2747, inlinedAt: !2816)
!2943 = !DILocation(line: 620, column: 48, scope: !2747, inlinedAt: !2816)
!2944 = !DILocation(line: 620, column: 75, scope: !2747, inlinedAt: !2816)
!2945 = !DILocation(line: 620, column: 73, scope: !2747, inlinedAt: !2816)
!2946 = !DILocation(line: 621, column: 26, scope: !2747, inlinedAt: !2816)
!2947 = !DILocation(line: 621, column: 45, scope: !2747, inlinedAt: !2816)
!2948 = !DILocation(line: 621, column: 36, scope: !2747, inlinedAt: !2816)
!2949 = !DILocation(line: 622, column: 50, scope: !2747, inlinedAt: !2816)
!2950 = !DILocation(line: 622, column: 48, scope: !2747, inlinedAt: !2816)
!2951 = !DILocation(line: 623, column: 33, scope: !2747, inlinedAt: !2816)
!2952 = !DILocation(line: 623, column: 53, scope: !2747, inlinedAt: !2816)
!2953 = !DILocation(line: 624, column: 33, scope: !2747, inlinedAt: !2816)
!2954 = !DILocation(line: 625, column: 40, scope: !2747, inlinedAt: !2816)
!2955 = !DILocation(line: 625, column: 60, scope: !2747, inlinedAt: !2816)
!2956 = !DILocation(line: 626, column: 36, scope: !2747, inlinedAt: !2816)
!2957 = !DILocation(line: 626, column: 25, scope: !2747, inlinedAt: !2816)
!2958 = !DILocation(line: 626, column: 41, scope: !2747, inlinedAt: !2816)
!2959 = !DILocation(line: 627, column: 50, scope: !2747, inlinedAt: !2816)
!2960 = !DILocation(line: 627, column: 81, scope: !2747, inlinedAt: !2816)
!2961 = !DILocation(line: 627, column: 47, scope: !2747, inlinedAt: !2816)
!2962 = !DILocation(line: 628, column: 19, scope: !2747, inlinedAt: !2816)
!2963 = !DILocation(line: 632, column: 18, scope: !2747, inlinedAt: !2816)
!2964 = !DILocation(line: 634, column: 7, scope: !2809, inlinedAt: !2816)
!2965 = !DILocation(line: 635, column: 34, scope: !2807, inlinedAt: !2816)
!2966 = !DILocation(line: 635, column: 28, scope: !2807, inlinedAt: !2816)
!2967 = !DILocation(line: 0, scope: !2807, inlinedAt: !2816)
!2968 = !DILocation(line: 636, column: 38, scope: !2807, inlinedAt: !2816)
!2969 = !DILocation(line: 636, column: 28, scope: !2807, inlinedAt: !2816)
!2970 = !DILocation(line: 637, column: 43, scope: !2807, inlinedAt: !2816)
!2971 = !DILocation(line: 637, column: 46, scope: !2807, inlinedAt: !2816)
!2972 = !DILocation(line: 637, column: 35, scope: !2807, inlinedAt: !2816)
!2973 = !DILocation(line: 637, column: 56, scope: !2807, inlinedAt: !2816)
!2974 = !DILocation(line: 638, column: 40, scope: !2807, inlinedAt: !2816)
!2975 = !DILocation(line: 638, column: 44, scope: !2807, inlinedAt: !2816)
!2976 = !DILocation(line: 638, column: 50, scope: !2807, inlinedAt: !2816)
!2977 = !DILocation(line: 638, column: 62, scope: !2807, inlinedAt: !2816)
!2978 = !DILocation(line: 638, column: 52, scope: !2807, inlinedAt: !2816)
!2979 = !DILocation(line: 639, column: 47, scope: !2807, inlinedAt: !2816)
!2980 = !DILocation(line: 639, column: 58, scope: !2807, inlinedAt: !2816)
!2981 = !DILocation(line: 639, column: 49, scope: !2807, inlinedAt: !2816)
!2982 = !DILocation(line: 640, column: 57, scope: !2807, inlinedAt: !2816)
!2983 = !DILocation(line: 640, column: 44, scope: !2807, inlinedAt: !2816)
!2984 = !DILocation(line: 641, column: 16, scope: !2807, inlinedAt: !2816)
!2985 = !DILocation(line: 642, column: 19, scope: !2807, inlinedAt: !2816)
!2986 = !DILocation(line: 642, column: 39, scope: !2807, inlinedAt: !2816)
!2987 = !DILocation(line: 642, column: 50, scope: !2807, inlinedAt: !2816)
!2988 = !DILocation(line: 642, column: 63, scope: !2807, inlinedAt: !2816)
!2989 = !DILocation(line: 642, column: 69, scope: !2807, inlinedAt: !2816)
!2990 = !DILocation(line: 642, column: 75, scope: !2807, inlinedAt: !2816)
!2991 = !DILocation(line: 642, column: 16, scope: !2807, inlinedAt: !2816)
!2992 = !DILocation(line: 643, column: 35, scope: !2807, inlinedAt: !2816)
!2993 = !DILocation(line: 643, column: 62, scope: !2807, inlinedAt: !2816)
!2994 = !DILocation(line: 644, column: 20, scope: !2807, inlinedAt: !2816)
!2995 = !DILocation(line: 644, column: 42, scope: !2807, inlinedAt: !2816)
!2996 = !DILocation(line: 645, column: 20, scope: !2807, inlinedAt: !2816)
!2997 = !DILocation(line: 645, column: 42, scope: !2807, inlinedAt: !2816)
!2998 = !DILocation(line: 646, column: 20, scope: !2807, inlinedAt: !2816)
!2999 = !DILocation(line: 646, column: 33, scope: !2807, inlinedAt: !2816)
!3000 = !DILocation(line: 646, column: 39, scope: !2807, inlinedAt: !2816)
!3001 = !DILocation(line: 646, column: 45, scope: !2807, inlinedAt: !2816)
!3002 = !DILocation(line: 647, column: 20, scope: !2807, inlinedAt: !2816)
!3003 = !DILocation(line: 647, column: 51, scope: !2807, inlinedAt: !2816)
!3004 = !DILocation(line: 647, column: 58, scope: !2807, inlinedAt: !2816)
!3005 = !DILocation(line: 647, column: 64, scope: !2807, inlinedAt: !2816)
!3006 = !DILocation(line: 648, column: 36, scope: !2807, inlinedAt: !2816)
!3007 = !DILocation(line: 649, column: 42, scope: !2807, inlinedAt: !2816)
!3008 = !DILocation(line: 650, column: 29, scope: !2807, inlinedAt: !2816)
!3009 = !DILocation(line: 650, column: 18, scope: !2807, inlinedAt: !2816)
!3010 = !DILocation(line: 650, column: 35, scope: !2807, inlinedAt: !2816)
!3011 = !DILocation(line: 651, column: 30, scope: !2807, inlinedAt: !2816)
!3012 = !DILocation(line: 652, column: 18, scope: !2807, inlinedAt: !2816)
!3013 = !DILocation(line: 653, column: 18, scope: !2807, inlinedAt: !2816)
!3014 = !DILocation(line: 654, column: 12, scope: !3015, inlinedAt: !2816)
!3015 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 654, column: 12)
!3016 = !DILocation(line: 654, column: 30, scope: !3015, inlinedAt: !2816)
!3017 = !DILocation(line: 654, column: 29, scope: !3015, inlinedAt: !2816)
!3018 = !DILocation(line: 654, column: 24, scope: !3015, inlinedAt: !2816)
!3019 = !DILocation(line: 634, column: 25, scope: !2808, inlinedAt: !2816)
!3020 = !DILocation(line: 634, column: 17, scope: !2808, inlinedAt: !2816)
!3021 = distinct !{!3021, !2964, !3022, !536}
!3022 = !DILocation(line: 655, column: 7, scope: !2809, inlinedAt: !2816)
!3023 = !DILocation(line: 634, scope: !2809, inlinedAt: !2816)
!3024 = !DILocation(line: 657, column: 20, scope: !2747, inlinedAt: !2816)
!3025 = !DILocation(line: 658, column: 26, scope: !2747, inlinedAt: !2816)
!3026 = !DILocation(line: 658, column: 15, scope: !2747, inlinedAt: !2816)
!3027 = !DILocation(line: 659, column: 26, scope: !2747, inlinedAt: !2816)
!3028 = !DILocation(line: 660, column: 48, scope: !2747, inlinedAt: !2816)
!3029 = !DILocation(line: 660, column: 44, scope: !2747, inlinedAt: !2816)
!3030 = !DILocation(line: 660, column: 54, scope: !2747, inlinedAt: !2816)
!3031 = !DILocation(line: 661, column: 19, scope: !2747, inlinedAt: !2816)
!3032 = !DILocation(line: 663, column: 12, scope: !3033, inlinedAt: !2816)
!3033 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 663, column: 10)
!3034 = !DILocation(line: 663, column: 10, scope: !2747, inlinedAt: !2816)
!3035 = !DILocation(line: 664, column: 9, scope: !3036, inlinedAt: !2816)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 664, column: 9)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !2, line: 663, column: 21)
!3038 = !DILocation(line: 0, scope: !3033, inlinedAt: !2816)
!3039 = !DILocation(line: 669, column: 1, scope: !2747, inlinedAt: !2816)
!3040 = !DILocation(line: 0, scope: !2297)
!3041 = !DILocation(line: 729, column: 12, scope: !2062)
!3042 = !DILocation(line: 0, scope: !2059)
!3043 = !DILocation(line: 732, column: 1, scope: !2045)
!3044 = distinct !DISubprogram(name: "hyperg_U_small_a_bgt0", scope: !2, file: !2, line: 777, type: !3045, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3048)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!40, !92, !92, !92, !990, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3058, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3049 = !DILocalVariable(name: "a", arg: 1, scope: !3044, file: !2, line: 777, type: !92)
!3050 = !DILocalVariable(name: "b", arg: 2, scope: !3044, file: !2, line: 777, type: !92)
!3051 = !DILocalVariable(name: "x", arg: 3, scope: !3044, file: !2, line: 777, type: !92)
!3052 = !DILocalVariable(name: "result", arg: 4, scope: !3044, file: !2, line: 778, type: !990)
!3053 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !3044, file: !2, line: 779, type: !3047)
!3054 = !DILocalVariable(name: "stat", scope: !3055, file: !2, line: 791, type: !40)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !2, line: 790, column: 7)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !2, line: 788, column: 14)
!3057 = distinct !DILexicalBlock(scope: !3044, file: !2, line: 782, column: 6)
!3058 = !DILocalVariable(name: "eps", scope: !3059, file: !2, line: 800, type: !78)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 797, column: 21)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !2, line: 797, column: 11)
!3061 = !DILocalVariable(name: "b0", scope: !3059, file: !2, line: 801, type: !78)
!3062 = !DILocalVariable(name: "r_Ubm1", scope: !3059, file: !2, line: 802, type: !163)
!3063 = !DILocalVariable(name: "r_Ub", scope: !3059, file: !2, line: 803, type: !163)
!3064 = !DILocalVariable(name: "stat_0", scope: !3059, file: !2, line: 804, type: !40)
!3065 = !DILocalVariable(name: "stat_1", scope: !3059, file: !2, line: 805, type: !40)
!3066 = !DILocalVariable(name: "Ubm1", scope: !3059, file: !2, line: 806, type: !78)
!3067 = !DILocalVariable(name: "Ub", scope: !3059, file: !2, line: 807, type: !78)
!3068 = !DILocalVariable(name: "Ubp1", scope: !3059, file: !2, line: 808, type: !78)
!3069 = !DILocalVariable(name: "bp", scope: !3059, file: !2, line: 809, type: !78)
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 0, scope: !3059)
!3072 = distinct !DIAssignID()
!3073 = !DILocation(line: 0, scope: !3044)
!3074 = !DILocation(line: 782, column: 8, scope: !3057)
!3075 = !DILocation(line: 782, column: 6, scope: !3044)
!3076 = !DILocation(line: 783, column: 17, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3057, file: !2, line: 782, column: 16)
!3078 = !DILocation(line: 784, column: 13, scope: !3077)
!3079 = !DILocation(line: 784, column: 17, scope: !3077)
!3080 = !DILocation(line: 785, column: 20, scope: !3077)
!3081 = !DILocation(line: 786, column: 5, scope: !3077)
!3082 = !DILocation(line: 788, column: 17, scope: !3056)
!3083 = !DILocation(line: 788, column: 26, scope: !3056)
!3084 = !DILocation(line: 788, column: 40, scope: !3056)
!3085 = !DILocation(line: 788, column: 38, scope: !3056)
!3086 = !DILocation(line: 788, column: 31, scope: !3056)
!3087 = !DILocation(line: 789, column: 11, scope: !3056)
!3088 = !DILocation(line: 789, column: 17, scope: !3056)
!3089 = !DILocation(line: 789, column: 26, scope: !3056)
!3090 = !DILocation(line: 789, column: 40, scope: !3056)
!3091 = !DILocation(line: 789, column: 38, scope: !3056)
!3092 = !DILocation(line: 789, column: 31, scope: !3056)
!3093 = !DILocation(line: 788, column: 14, scope: !3057)
!3094 = !DILocation(line: 791, column: 16, scope: !3055)
!3095 = !DILocation(line: 0, scope: !3055)
!3096 = !DILocation(line: 792, column: 13, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3055, file: !2, line: 792, column: 8)
!3098 = !DILocation(line: 0, scope: !3097)
!3099 = !DILocation(line: 797, column: 13, scope: !3060)
!3100 = !DILocation(line: 797, column: 11, scope: !3056)
!3101 = !DILocation(line: 800, column: 22, scope: !3059)
!3102 = !DILocation(line: 801, column: 22, scope: !3059)
!3103 = !DILocation(line: 802, column: 5, scope: !3059)
!3104 = !DILocation(line: 803, column: 5, scope: !3059)
!3105 = !DILocation(line: 804, column: 18, scope: !3059)
!3106 = !DILocation(line: 805, column: 18, scope: !3059)
!3107 = !DILocation(line: 806, column: 26, scope: !3059)
!3108 = !DILocation(line: 807, column: 24, scope: !3059)
!3109 = !DILocation(line: 811, column: 24, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 811, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 811, column: 5)
!3112 = !DILocation(line: 811, column: 5, scope: !3111)
!3113 = !DILocation(line: 812, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !2, line: 811, column: 43)
!3115 = !DILocation(line: 812, column: 38, scope: !3114)
!3116 = !DILocation(line: 812, column: 43, scope: !3114)
!3117 = !DILocation(line: 812, column: 47, scope: !3114)
!3118 = distinct !{!3118, !3112, !3119, !536}
!3119 = !DILocation(line: 815, column: 5, scope: !3111)
!3120 = !DILocation(line: 816, column: 18, scope: !3059)
!3121 = !DILocation(line: 817, column: 33, scope: !3059)
!3122 = !DILocation(line: 817, column: 36, scope: !3059)
!3123 = !DILocation(line: 817, column: 21, scope: !3059)
!3124 = !DILocation(line: 817, column: 61, scope: !3059)
!3125 = !DILocation(line: 817, column: 64, scope: !3059)
!3126 = !DILocation(line: 817, column: 51, scope: !3059)
!3127 = !DILocation(line: 817, column: 78, scope: !3059)
!3128 = !DILocation(line: 817, column: 76, scope: !3059)
!3129 = !DILocation(line: 817, column: 13, scope: !3059)
!3130 = !DILocation(line: 818, column: 45, scope: !3059)
!3131 = !DILocation(line: 818, column: 42, scope: !3059)
!3132 = !DILocation(line: 818, column: 61, scope: !3059)
!3133 = !DILocation(line: 818, column: 17, scope: !3059)
!3134 = !DILocation(line: 819, column: 20, scope: !3059)
!3135 = !DILocation(line: 820, column: 12, scope: !3059)
!3136 = !DILocation(line: 821, column: 3, scope: !3060)
!3137 = !DILocation(line: 823, column: 20, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 822, column: 8)
!3139 = !DILocation(line: 824, column: 12, scope: !3138)
!3140 = !DILocation(line: 824, column: 5, scope: !3138)
!3141 = !DILocation(line: 0, scope: !3057)
!3142 = !DILocation(line: 826, column: 1, scope: !3044)
!3143 = !DISubprogram(name: "exp", scope: !847, file: !847, line: 95, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3144 = distinct !DISubprogram(name: "hyperg_U_CF1", scope: !2, file: !2, line: 71, type: !3145, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3148)
!3145 = !DISubroutineType(cc: DW_CC_nocall, types: !3146)
!3146 = !{!40, !92, !92, !91, !92, !3047, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3171}
!3149 = !DILocalVariable(name: "a", arg: 1, scope: !3144, file: !2, line: 71, type: !92)
!3150 = !DILocalVariable(name: "b", arg: 2, scope: !3144, file: !2, line: 71, type: !92)
!3151 = !DILocalVariable(name: "N", arg: 3, scope: !3144, file: !2, line: 71, type: !91)
!3152 = !DILocalVariable(name: "x", arg: 4, scope: !3144, file: !2, line: 71, type: !92)
!3153 = !DILocalVariable(name: "result", arg: 5, scope: !3144, file: !2, line: 72, type: !3047)
!3154 = !DILocalVariable(name: "count", arg: 6, scope: !3144, file: !2, line: 72, type: !3147)
!3155 = !DILocalVariable(name: "RECUR_BIG", scope: !3144, file: !2, line: 74, type: !92)
!3156 = !DILocalVariable(name: "maxiter", scope: !3144, file: !2, line: 75, type: !91)
!3157 = !DILocalVariable(name: "n", scope: !3144, file: !2, line: 76, type: !40)
!3158 = !DILocalVariable(name: "Anm2", scope: !3144, file: !2, line: 77, type: !78)
!3159 = !DILocalVariable(name: "Bnm2", scope: !3144, file: !2, line: 78, type: !78)
!3160 = !DILocalVariable(name: "Anm1", scope: !3144, file: !2, line: 79, type: !78)
!3161 = !DILocalVariable(name: "Bnm1", scope: !3144, file: !2, line: 80, type: !78)
!3162 = !DILocalVariable(name: "a1", scope: !3144, file: !2, line: 81, type: !78)
!3163 = !DILocalVariable(name: "b1", scope: !3144, file: !2, line: 82, type: !78)
!3164 = !DILocalVariable(name: "An", scope: !3144, file: !2, line: 83, type: !78)
!3165 = !DILocalVariable(name: "Bn", scope: !3144, file: !2, line: 84, type: !78)
!3166 = !DILocalVariable(name: "an", scope: !3144, file: !2, line: 85, type: !78)
!3167 = !DILocalVariable(name: "bn", scope: !3144, file: !2, line: 85, type: !78)
!3168 = !DILocalVariable(name: "fn", scope: !3144, file: !2, line: 86, type: !78)
!3169 = !DILocalVariable(name: "old_fn", scope: !3170, file: !2, line: 89, type: !78)
!3170 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 88, column: 22)
!3171 = !DILocalVariable(name: "del", scope: !3170, file: !2, line: 90, type: !78)
!3172 = !DILocation(line: 0, scope: !3144)
!3173 = !DILocation(line: 82, column: 24, scope: !3144)
!3174 = !DILocation(line: 82, column: 27, scope: !3144)
!3175 = !DILocation(line: 82, column: 31, scope: !3144)
!3176 = !DILocation(line: 83, column: 17, scope: !3144)
!3177 = !DILocation(line: 84, column: 27, scope: !3144)
!3178 = !DILocation(line: 86, column: 17, scope: !3144)
!3179 = !DILocation(line: 88, column: 3, scope: !3144)
!3180 = !DILocation(line: 88, column: 11, scope: !3144)
!3181 = !DILocation(line: 117, column: 11, scope: !3144)
!3182 = !DILocation(line: 118, column: 11, scope: !3144)
!3183 = !DILocation(line: 120, column: 6, scope: !3144)
!3184 = !DILocation(line: 91, column: 6, scope: !3170)
!3185 = !DILocation(line: 96, column: 20, scope: !3170)
!3186 = !DILocation(line: 96, column: 22, scope: !3170)
!3187 = !DILocation(line: 96, column: 10, scope: !3170)
!3188 = !DILocation(line: 96, column: 26, scope: !3170)
!3189 = !DILocation(line: 97, column: 31, scope: !3170)
!3190 = !DILocation(line: 98, column: 12, scope: !3170)
!3191 = !DILocation(line: 98, column: 22, scope: !3170)
!3192 = !DILocation(line: 99, column: 12, scope: !3170)
!3193 = !DILocation(line: 99, column: 22, scope: !3170)
!3194 = !DILocation(line: 101, column: 8, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3170, file: !2, line: 101, column: 8)
!3196 = !DILocation(line: 101, column: 17, scope: !3195)
!3197 = !DILocation(line: 101, column: 29, scope: !3195)
!3198 = !DILocation(line: 102, column: 10, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 101, column: 54)
!3200 = !DILocation(line: 103, column: 10, scope: !3199)
!3201 = !DILocation(line: 104, column: 12, scope: !3199)
!3202 = !DILocation(line: 105, column: 12, scope: !3199)
!3203 = !DILocation(line: 108, column: 5, scope: !3199)
!3204 = !DILocation(line: 0, scope: !3170)
!3205 = !DILocation(line: 111, column: 12, scope: !3170)
!3206 = !DILocation(line: 112, column: 17, scope: !3170)
!3207 = !DILocation(line: 114, column: 8, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3170, file: !2, line: 114, column: 8)
!3209 = !DILocation(line: 114, column: 24, scope: !3208)
!3210 = !DILocation(line: 120, column: 8, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 120, column: 6)
!3212 = !DILocation(line: 121, column: 5, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3211, file: !2, line: 121, column: 5)
!3214 = !DILocation(line: 0, scope: !3211)
!3215 = !DILocation(line: 124, column: 1, scope: !3144)
!3216 = distinct !DISubprogram(name: "hyperg_lnU_beq2a", scope: !2, file: !2, line: 48, type: !3217, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3219)
!3217 = !DISubroutineType(cc: DW_CC_nocall, types: !3218)
!3218 = !{!40, !92, !92, !990}
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226}
!3220 = !DILocalVariable(name: "a", arg: 1, scope: !3216, file: !2, line: 48, type: !92)
!3221 = !DILocalVariable(name: "x", arg: 2, scope: !3216, file: !2, line: 48, type: !92)
!3222 = !DILocalVariable(name: "result", arg: 3, scope: !3216, file: !2, line: 48, type: !990)
!3223 = !DILocalVariable(name: "lx", scope: !3216, file: !2, line: 50, type: !92)
!3224 = !DILocalVariable(name: "nu", scope: !3216, file: !2, line: 51, type: !92)
!3225 = !DILocalVariable(name: "lnpre", scope: !3216, file: !2, line: 52, type: !92)
!3226 = !DILocalVariable(name: "lnK", scope: !3216, file: !2, line: 53, type: !163)
!3227 = distinct !DIAssignID()
!3228 = !DILocation(line: 0, scope: !3216)
!3229 = !DILocation(line: 52, column: 31, scope: !3216)
!3230 = !DILocation(line: 52, column: 27, scope: !3216)
!3231 = !DILocation(line: 52, column: 45, scope: !3216)
!3232 = !DILocation(line: 53, column: 3, scope: !3216)
!3233 = !DILocation(line: 54, column: 32, scope: !3216)
!3234 = !DILocation(line: 54, column: 3, scope: !3216)
!3235 = !DILocation(line: 55, column: 30, scope: !3216)
!3236 = !DILocation(line: 55, column: 16, scope: !3216)
!3237 = !DILocation(line: 56, column: 43, scope: !3216)
!3238 = !DILocation(line: 56, column: 70, scope: !3216)
!3239 = !DILocation(line: 56, column: 40, scope: !3216)
!3240 = !DILocation(line: 56, column: 11, scope: !3216)
!3241 = !DILocation(line: 57, column: 22, scope: !3216)
!3242 = !DILocation(line: 58, column: 42, scope: !3216)
!3243 = !DILocation(line: 58, column: 40, scope: !3216)
!3244 = !DILocation(line: 58, column: 15, scope: !3216)
!3245 = !DILocation(line: 60, column: 1, scope: !3216)
!3246 = !DILocation(line: 59, column: 3, scope: !3216)
!3247 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !851, file: !851, line: 110, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3248 = !DISubroutineType(types: !3218)
!3249 = !DISubprogram(name: "gsl_sf_exp_err_e10_e", scope: !851, file: !851, line: 114, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3250 = !DISubprogram(name: "gsl_sf_exp_e", scope: !851, file: !851, line: 45, type: !3251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!40, !92, !990}
!3253 = !DISubprogram(name: "gsl_sf_poch_e", scope: !3254, file: !3254, line: 195, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3254 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!3255 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !3254, file: !3254, line: 66, type: !3251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3256 = !DISubprogram(name: "gsl_sf_gammainv_e", scope: !3254, file: !3254, line: 86, type: !3251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3257 = !DISubprogram(name: "sin", scope: !847, file: !847, line: 64, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = !DISubprogram(name: "gsl_sf_poch", scope: !3254, file: !3254, line: 196, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!78, !92, !92}
!3261 = !DISubprogram(name: "gsl_sf_gammainv", scope: !3254, file: !3254, line: 87, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!78, !92}
!3264 = !DISubprogram(name: "gsl_finite", scope: !3265, file: !3265, line: 45, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3265 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!40, !92}
!3268 = !DISubprogram(name: "gsl_sf_pochrel_e", scope: !3254, file: !3254, line: 205, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DISubprogram(name: "gsl_sf_exprel_e", scope: !851, file: !851, line: 83, type: !3251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3270 = !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !3271, file: !3271, line: 65, type: !3045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3271 = !DIFile(filename: "./hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "715d150f24566e0448edc458ffbf9b78")
!3272 = distinct !DISubprogram(name: "hyperg_U_small_ab", scope: !2, file: !2, line: 740, type: !1765, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3283, !3284}
!3274 = !DILocalVariable(name: "a", arg: 1, scope: !3272, file: !2, line: 740, type: !92)
!3275 = !DILocalVariable(name: "b", arg: 2, scope: !3272, file: !2, line: 740, type: !92)
!3276 = !DILocalVariable(name: "x", arg: 3, scope: !3272, file: !2, line: 740, type: !92)
!3277 = !DILocalVariable(name: "result", arg: 4, scope: !3272, file: !2, line: 740, type: !990)
!3278 = !DILocalVariable(name: "p", scope: !3279, file: !2, line: 758, type: !78)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !2, line: 757, column: 33)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 757, column: 11)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 750, column: 11)
!3282 = distinct !DILexicalBlock(scope: !3272, file: !2, line: 742, column: 6)
!3283 = !DILocalVariable(name: "asymp", scope: !3279, file: !2, line: 759, type: !163)
!3284 = !DILocalVariable(name: "stat_asymp", scope: !3279, file: !2, line: 760, type: !40)
!3285 = distinct !DIAssignID()
!3286 = !DILocation(line: 0, scope: !3279)
!3287 = !DILocation(line: 0, scope: !3272)
!3288 = !DILocation(line: 742, column: 8, scope: !3282)
!3289 = !DILocation(line: 742, column: 6, scope: !3272)
!3290 = !DILocation(line: 745, column: 18, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 742, column: 17)
!3292 = !DILocation(line: 746, column: 45, scope: !3291)
!3293 = !DILocation(line: 746, column: 55, scope: !3291)
!3294 = !DILocation(line: 746, column: 42, scope: !3291)
!3295 = !DILocation(line: 746, column: 13, scope: !3291)
!3296 = !DILocation(line: 747, column: 44, scope: !3291)
!3297 = !DILocation(line: 747, column: 42, scope: !3291)
!3298 = !DILocation(line: 747, column: 17, scope: !3291)
!3299 = !DILocation(line: 748, column: 5, scope: !3291)
!3300 = !DILocation(line: 750, column: 13, scope: !3281)
!3301 = !DILocation(line: 750, column: 11, scope: !3282)
!3302 = !DILocation(line: 753, column: 17, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 750, column: 21)
!3304 = !DILocation(line: 754, column: 13, scope: !3303)
!3305 = !DILocation(line: 754, column: 17, scope: !3303)
!3306 = !DILocation(line: 755, column: 5, scope: !3303)
!3307 = !DILocation(line: 757, column: 11, scope: !3280)
!3308 = !DILocation(line: 0, scope: !470, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 757, column: 11, scope: !3280)
!3310 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !470, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 757, column: 11, scope: !3280)
!3313 = !DILocation(line: 71, column: 10, scope: !470, inlinedAt: !3312)
!3314 = !DILocation(line: 757, column: 11, scope: !3281)
!3315 = !DILocation(line: 758, column: 23, scope: !3279)
!3316 = !DILocation(line: 758, column: 16, scope: !3279)
!3317 = !DILocation(line: 759, column: 5, scope: !3279)
!3318 = !DILocation(line: 760, column: 22, scope: !3279)
!3319 = !DILocation(line: 761, column: 26, scope: !3279)
!3320 = !DILocation(line: 761, column: 30, scope: !3279)
!3321 = !DILocation(line: 761, column: 18, scope: !3279)
!3322 = !DILocation(line: 762, column: 26, scope: !3279)
!3323 = !DILocation(line: 762, column: 30, scope: !3279)
!3324 = !DILocation(line: 762, column: 13, scope: !3279)
!3325 = !DILocation(line: 763, column: 20, scope: !3279)
!3326 = !DILocation(line: 763, column: 36, scope: !3279)
!3327 = !DILocation(line: 763, column: 54, scope: !3279)
!3328 = !DILocation(line: 763, column: 64, scope: !3279)
!3329 = !DILocation(line: 764, column: 44, scope: !3279)
!3330 = !DILocation(line: 764, column: 42, scope: !3279)
!3331 = !DILocation(line: 764, column: 17, scope: !3279)
!3332 = !DILocation(line: 766, column: 3, scope: !3280)
!3333 = !DILocation(line: 768, column: 12, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3280, file: !2, line: 767, column: 8)
!3335 = !DILocation(line: 768, column: 5, scope: !3334)
!3336 = !DILocation(line: 0, scope: !3282)
!3337 = !DILocation(line: 770, column: 1, scope: !3272)
!3338 = !DISubprogram(name: "gsl_sf_bessel_lnKnu_e", scope: !3339, file: !3339, line: 519, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3339 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!3340 = !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !3341, file: !3341, line: 65, type: !1765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3341 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!3342 = !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !3343, file: !3343, line: 62, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3343 = !DIFile(filename: "../gsl/gsl_sf_laguerre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "58c60843776affae828c7538cacd7802")
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!40, !91, !92, !92, !990}
!3346 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !3254, file: !3254, line: 136, type: !3347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!40, !3349, !990}
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
