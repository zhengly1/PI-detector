; ModuleID = 'hyperg_U.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1656, i32 noundef 1) #8, !dbg !139
  br label %99, !dbg !139

15:                                               ; preds = %4
  br i1 %9, label %16, label %41, !dbg !141

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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !173
  %19 = fadd double %17, 1.000000e+00, !dbg !174
  %20 = fsub double %19, %18, !dbg !175
  %21 = call i32 @gsl_sf_gammainv_e(double noundef %20, ptr noundef nonnull %6) #8, !dbg !176
  call void @llvm.dbg.value(metadata i32 %21, metadata !168, metadata !DIExpression()), !dbg !171
  %22 = call i32 @gsl_sf_gammainv_e(double noundef %18, ptr noundef nonnull %7) #8, !dbg !177
  call void @llvm.dbg.value(metadata i32 %22, metadata !169, metadata !DIExpression()), !dbg !171
  %23 = fmul double %18, 0x400921FB54442D18, !dbg !178
  %24 = call double @sin(double noundef %23) #8, !dbg !179
  %25 = fdiv double 0x400921FB54442D18, %24, !dbg !180
  call void @llvm.dbg.value(metadata double %25, metadata !170, metadata !DIExpression()), !dbg !171
  %26 = load double, ptr %6, align 8, !dbg !181, !tbaa !182
  %27 = fmul double %25, %26, !dbg !184
  %28 = load double, ptr %7, align 8, !dbg !185, !tbaa !182
  %29 = fmul double %27, %28, !dbg !186
  store double %29, ptr %3, align 8, !dbg !187, !tbaa !131
  %30 = call double @llvm.fabs.f64(double %25), !dbg !188
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !189
  %32 = load double, ptr %31, align 8, !dbg !189, !tbaa !190
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !191
  %34 = load double, ptr %33, align 8, !dbg !191, !tbaa !190
  %35 = fadd double %32, %34, !dbg !192
  %36 = fmul double %30, %35, !dbg !193
  %37 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !194
  store double %36, ptr %37, align 8, !dbg !195, !tbaa !137
  %38 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !196
  store i32 0, ptr %38, align 8, !dbg !197, !tbaa !138
  %39 = icmp eq i32 %21, 0, !dbg !198
  %40 = select i1 %39, i32 %22, i32 %21, !dbg !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !199
  br label %99, !dbg !200

41:                                               ; preds = %15
  %42 = fcmp olt double %2, 0.000000e+00, !dbg !201
  br i1 %42, label %43, label %68, !dbg !202

43:                                               ; preds = %41
  call void @llvm.dbg.assign(metadata i1 undef, metadata !203, metadata !DIExpression(), metadata !120, metadata ptr %5, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %0, metadata !208, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 %1, metadata !209, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata double %2, metadata !210, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata ptr %3, metadata !211, metadata !DIExpression()), !dbg !219
  %44 = icmp slt i32 %0, %1, !dbg !220
  %45 = icmp slt i32 %1, 1
  %46 = and i1 %44, %45, !dbg !221
  br i1 %46, label %47, label %64, !dbg !221

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8, !dbg !222
  %48 = sub nsw i32 1, %1, !dbg !223
  %49 = sitofp i32 %48 to double, !dbg !224
  %50 = tail call double @pow(double noundef %2, double noundef %49) #8, !dbg !225
  call void @llvm.dbg.value(metadata double %50, metadata !212, metadata !DIExpression()), !dbg !216
  %51 = add nsw i32 %0, 1, !dbg !226
  %52 = sub i32 %51, %1, !dbg !227
  %53 = sitofp i32 %52 to double, !dbg !228
  %54 = sub nsw i32 2, %1, !dbg !229
  %55 = sitofp i32 %54 to double, !dbg !230
  %56 = call fastcc i32 @hyperg_U_negx(double noundef %53, double noundef %55, double noundef %2, ptr noundef nonnull %5), !dbg !231
  call void @llvm.dbg.value(metadata i32 %56, metadata !213, metadata !DIExpression()), !dbg !216
  %57 = load double, ptr %5, align 8, !dbg !232, !tbaa !131
  %58 = fmul double %50, %57, !dbg !233
  call void @llvm.dbg.value(metadata double %58, metadata !214, metadata !DIExpression()), !dbg !216
  %59 = tail call double @llvm.fabs.f64(double %50), !dbg !234
  %60 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %5, i64 0, i32 1, !dbg !235
  %61 = load double, ptr %60, align 8, !dbg !235, !tbaa !137
  %62 = fmul double %59, %61, !dbg !236
  call void @llvm.dbg.value(metadata double %62, metadata !215, metadata !DIExpression()), !dbg !216
  store double %58, ptr %3, align 8, !dbg !237, !tbaa !131
  %63 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !238
  store double %62, ptr %63, align 8, !dbg !239, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8, !dbg !240
  br label %99

64:                                               ; preds = %43
  %65 = sitofp i32 %0 to double, !dbg !241
  %66 = sitofp i32 %1 to double, !dbg !243
  %67 = tail call fastcc i32 @hyperg_U_negx(double noundef %65, double noundef %66, double noundef %2, ptr noundef %3), !dbg !244
  br label %99, !dbg !245

68:                                               ; preds = %41
  br i1 %10, label %69, label %71, !dbg !246

69:                                               ; preds = %68
  %70 = tail call fastcc i32 @hyperg_U_int_bge1(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !247
  br label %99, !dbg !249

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8, !dbg !250
  %72 = tail call double @log(double noundef %2) #8, !dbg !251
  tail call void @llvm.dbg.value(metadata double %72, metadata !113, metadata !DIExpression()), !dbg !124
  %73 = add nsw i32 %0, 1, !dbg !252
  %74 = sub i32 %73, %1, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !114, metadata !DIExpression()), !dbg !124
  %75 = sub nsw i32 2, %1, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !115, metadata !DIExpression()), !dbg !124
  %76 = call fastcc i32 @hyperg_U_int_bge1(i32 noundef %74, i32 noundef %75, double noundef %2, ptr noundef nonnull %8), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !117, metadata !DIExpression()), !dbg !124
  %77 = sitofp i32 %1 to double, !dbg !256
  %78 = fsub double 1.000000e+00, %77, !dbg !257
  %79 = fmul double %78, %72, !dbg !258
  tail call void @llvm.dbg.value(metadata double %79, metadata !118, metadata !DIExpression()), !dbg !124
  %80 = call double @llvm.fabs.f64(double %77), !dbg !259
  %81 = fadd double %80, 1.000000e+00, !dbg !260
  %82 = fmul double %81, 0x3CC0000000000000, !dbg !261
  %83 = call double @llvm.fabs.f64(double %72), !dbg !262
  %84 = fmul double %82, %83, !dbg !263
  tail call void @llvm.dbg.value(metadata double %84, metadata !119, metadata !DIExpression()), !dbg !124
  %85 = call double @llvm.fabs.f64(double %78), !dbg !264
  %86 = fmul double %85, 0x3CC0000000000000, !dbg !265
  %87 = fadd double %86, %84, !dbg !266
  tail call void @llvm.dbg.value(metadata double %87, metadata !119, metadata !DIExpression()), !dbg !124
  %88 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 2, !dbg !267
  %89 = load i32, ptr %88, align 8, !dbg !267, !tbaa !138
  %90 = sitofp i32 %89 to double, !dbg !268
  %91 = fmul double %90, 0x40026BB1BBB55516, !dbg !269
  %92 = fadd double %79, %91, !dbg !270
  %93 = load double, ptr %8, align 8, !dbg !271, !tbaa !131
  %94 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 1, !dbg !272
  %95 = load double, ptr %94, align 8, !dbg !272, !tbaa !137
  %96 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %92, double noundef %87, double noundef %93, double noundef %95, ptr noundef %3) #8, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !116, metadata !DIExpression()), !dbg !124
  %97 = icmp eq i32 %96, 0, !dbg !274
  %98 = select i1 %97, i32 %76, i32 %96, !dbg !274
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8, !dbg !275
  br label %99

99:                                               ; preds = %64, %47, %12, %16, %69, %71
  %100 = phi i32 [ 1, %12 ], [ %40, %16 ], [ %70, %69 ], [ %98, %71 ], [ %56, %47 ], [ %67, %64 ], !dbg !276
  ret i32 %100, !dbg !277
}

declare !dbg !278 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_int_bge1(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !283 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !296, metadata !DIExpression(), metadata !422, metadata ptr %5, metadata !DIExpression()), !dbg !423
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !299, metadata !DIExpression(), metadata !424, metadata ptr %6, metadata !DIExpression()), !dbg !425
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !323, metadata !DIExpression(), metadata !426, metadata ptr %7, metadata !DIExpression()), !dbg !427
  %8 = alloca double, align 8, !DIAssignID !428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !327, metadata !DIExpression(), metadata !428, metadata ptr %8, metadata !DIExpression()), !dbg !427
  %9 = alloca double, align 8, !DIAssignID !429
  call void @llvm.dbg.assign(metadata i1 undef, metadata !345, metadata !DIExpression(), metadata !429, metadata ptr %9, metadata !DIExpression()), !dbg !430
  %10 = alloca i32, align 4, !DIAssignID !431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !346, metadata !DIExpression(), metadata !431, metadata ptr %10, metadata !DIExpression()), !dbg !430
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !377, metadata !DIExpression(), metadata !432, metadata ptr %11, metadata !DIExpression()), !dbg !433
  %12 = alloca double, align 8, !DIAssignID !434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !378, metadata !DIExpression(), metadata !434, metadata ptr %12, metadata !DIExpression()), !dbg !435
  %13 = alloca i32, align 4, !DIAssignID !436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !436, metadata ptr %13, metadata !DIExpression()), !dbg !435
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !391, metadata !DIExpression(), metadata !437, metadata ptr %14, metadata !DIExpression()), !dbg !438
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !439, metadata ptr %15, metadata !DIExpression()), !dbg !438
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !396, metadata !DIExpression(), metadata !440, metadata ptr %16, metadata !DIExpression()), !dbg !438
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !397, metadata !DIExpression(), metadata !441, metadata ptr %17, metadata !DIExpression()), !dbg !438
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !398, metadata !DIExpression(), metadata !442, metadata ptr %18, metadata !DIExpression()), !dbg !443
  %19 = alloca double, align 8, !DIAssignID !444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !404, metadata !DIExpression(), metadata !444, metadata ptr %19, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !285, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !286, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata double %2, metadata !287, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !288, metadata !DIExpression()), !dbg !445
  switch i32 %0, label %37 [
    i32 0, label %20
    i32 -1, label %23
  ], !dbg !446

20:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !447, !tbaa !131
  %21 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !449
  store double 0.000000e+00, ptr %21, align 8, !dbg !450, !tbaa !137
  %22 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !451
  store i32 0, ptr %22, align 8, !dbg !452, !tbaa !138
  br label %547, !dbg !453

23:                                               ; preds = %4
  %24 = sub nsw i32 0, %1, !dbg !454
  %25 = sitofp i32 %24 to double, !dbg !454
  %26 = fadd double %25, %2, !dbg !456
  store double %26, ptr %3, align 8, !dbg !457, !tbaa !131
  %27 = sitofp i32 %1 to double, !dbg !458
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !459
  %29 = tail call double @llvm.fabs.f64(double %2), !dbg !460
  %30 = fadd double %28, %29, !dbg !461
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !462
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !463
  %33 = tail call double @llvm.fabs.f64(double %26), !dbg !464
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !465
  %35 = fadd double %31, %34, !dbg !466
  store double %35, ptr %32, align 8, !dbg !466, !tbaa !137
  %36 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !467
  store i32 0, ptr %36, align 8, !dbg !468, !tbaa !138
  br label %547, !dbg !469

37:                                               ; preds = %4
  %38 = add nuw nsw i32 %0, 1, !dbg !470
  %39 = icmp eq i32 %38, %1, !dbg !471
  br i1 %39, label %40, label %46, !dbg !472

40:                                               ; preds = %37
  %41 = sub nsw i32 0, %0, !dbg !473
  %42 = sitofp i32 %41 to double, !dbg !473
  %43 = tail call double @log(double noundef %2) #8, !dbg !475
  %44 = fmul double %43, %42, !dbg !476
  %45 = tail call i32 @gsl_sf_exp_e10_e(double noundef %44, ptr noundef %3) #8, !dbg !477
  br label %547, !dbg !478

46:                                               ; preds = %37
  %47 = sitofp i32 %0 to double, !dbg !479
  %48 = tail call double @llvm.fabs.f64(double %47), !dbg !479
  tail call void @llvm.dbg.value(metadata double %48, metadata !480, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !487
  %49 = fcmp ogt double %48, 1.000000e+00, !dbg !489
  %50 = select i1 %49, double %48, double 1.000000e+00, !dbg !489
  %51 = fadd double %47, 1.000000e+00, !dbg !479
  %52 = sitofp i32 %1 to double, !dbg !479
  %53 = fsub double %51, %52, !dbg !479
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !479
  tail call void @llvm.dbg.value(metadata double %54, metadata !480, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !490
  %55 = fcmp ogt double %54, 1.000000e+00, !dbg !492
  %56 = select i1 %55, double %54, double 1.000000e+00, !dbg !492
  %57 = fmul double %50, %56, !dbg !479
  %58 = tail call double @llvm.fabs.f64(double %2), !dbg !479
  %59 = fmul double %58, 0x3FEFAE147AE147AE, !dbg !479
  %60 = fcmp olt double %57, %59, !dbg !479
  br i1 %60, label %61, label %75, !dbg !493

61:                                               ; preds = %46
  %62 = sub nsw i32 0, %0, !dbg !494
  %63 = sitofp i32 %62 to double, !dbg !494
  %64 = tail call double @log(double noundef %2) #8, !dbg !495
  %65 = fmul double %64, %63, !dbg !496
  tail call void @llvm.dbg.value(metadata double %65, metadata !289, metadata !DIExpression()), !dbg !423
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !497
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !498
  tail call void @llvm.dbg.value(metadata double %67, metadata !295, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !499
  %68 = call fastcc i32 @hyperg_zaU_asymp(double noundef %47, double noundef %52, double noundef %2, ptr noundef nonnull %5), !dbg !500, !range !501
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !297, metadata !DIExpression()), !dbg !423
  %69 = load double, ptr %5, align 8, !dbg !502, !tbaa !182
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !503
  %71 = load double, ptr %70, align 8, !dbg !503, !tbaa !190
  %72 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %65, double noundef %67, double noundef %69, double noundef %71, ptr noundef %3) #8, !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !298, metadata !DIExpression()), !dbg !423
  %73 = icmp eq i32 %72, 0, !dbg !505
  %74 = select i1 %73, i32 %68, i32 %72, !dbg !505
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !506
  br label %547

75:                                               ; preds = %46
  %76 = fcmp olt double %48, 5.000000e+00, !dbg !507
  %77 = icmp slt i32 %1, 5, !dbg !507
  %78 = and i1 %77, %76, !dbg !507
  %79 = fcmp olt double %2, 2.000000e+00, !dbg !507
  %80 = and i1 %79, %78, !dbg !507
  br i1 %80, label %89, label %81, !dbg !507

81:                                               ; preds = %75
  %82 = fcmp olt double %48, 1.000000e+01, !dbg !507
  %83 = icmp slt i32 %1, 10, !dbg !507
  %84 = and i1 %83, %82, !dbg !507
  %85 = fcmp olt double %2, 1.000000e+00, !dbg !507
  %86 = and i1 %85, %84, !dbg !507
  %87 = icmp sge i32 %0, %1
  %88 = and i1 %87, %86, !dbg !507
  br i1 %88, label %91, label %98, !dbg !507

89:                                               ; preds = %75
  %90 = icmp slt i32 %0, %1, !dbg !508
  br i1 %90, label %98, label %91, !dbg !509

91:                                               ; preds = %81, %89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !510
  %92 = call fastcc i32 @hyperg_U_series(double noundef %47, double noundef %52, double noundef %2, ptr noundef nonnull %6), !dbg !511
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !302, metadata !DIExpression()), !dbg !425
  %93 = load double, ptr %6, align 8, !dbg !512, !tbaa !182
  store double %93, ptr %3, align 8, !dbg !513, !tbaa !131
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !514
  %95 = load double, ptr %94, align 8, !dbg !514, !tbaa !190
  %96 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !515
  store double %95, ptr %96, align 8, !dbg !516, !tbaa !137
  %97 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !517
  store i32 0, ptr %97, align 8, !dbg !518, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !519
  br label %547

98:                                               ; preds = %89, %81
  %99 = icmp slt i32 %0, 0, !dbg !520
  br i1 %99, label %100, label %152, !dbg !521

100:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !306, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !310, metadata !DIExpression()), !dbg !522
  %101 = sub nsw i32 0, %1, !dbg !523
  %102 = sitofp i32 %101 to double, !dbg !523
  %103 = fadd double %102, %2, !dbg !524
  tail call void @llvm.dbg.value(metadata double %103, metadata !311, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !313, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !310, metadata !DIExpression()), !dbg !522
  %104 = icmp eq i32 %0, -1, !dbg !525
  br i1 %104, label %142, label %105, !dbg !526

105:                                              ; preds = %100, %133
  %106 = phi i32 [ %136, %133 ], [ 0, %100 ]
  %107 = phi double [ %135, %133 ], [ 1.000000e+00, %100 ]
  %108 = phi double [ %134, %133 ], [ %103, %100 ]
  %109 = phi i32 [ %137, %133 ], [ -1, %100 ]
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !303, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %107, metadata !310, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %108, metadata !311, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !313, metadata !DIExpression()), !dbg !522
  %110 = sitofp i32 %109 to double, !dbg !527
  %111 = sub nsw i32 %1, %109, !dbg !528
  %112 = sitofp i32 %111 to double, !dbg !529
  %113 = fadd double %112, -1.000000e+00, !dbg !530
  %114 = fmul double %113, %110, !dbg !531
  %115 = fmul double %107, %114, !dbg !532
  %116 = fmul double %110, 2.000000e+00, !dbg !533
  %117 = fadd double %116, %2, !dbg !534
  %118 = fsub double %117, %52, !dbg !535
  %119 = fmul double %108, %118, !dbg !536
  %120 = fadd double %115, %119, !dbg !537
  tail call void @llvm.dbg.value(metadata double %120, metadata !312, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %108, metadata !310, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %120, metadata !311, metadata !DIExpression()), !dbg !522
  %121 = tail call double @llvm.fabs.f64(double %120), !dbg !538
  tail call void @llvm.dbg.value(metadata double %121, metadata !314, metadata !DIExpression()), !dbg !539
  %122 = fcmp ogt double %121, 0x5FEFFFFFFFFFFFFF, !dbg !540
  br i1 %122, label %123, label %127, !dbg !538

123:                                              ; preds = %105
  %124 = fdiv double %120, 0x5FEFFFFFFFFFFFFF, !dbg !542
  tail call void @llvm.dbg.value(metadata double %124, metadata !311, metadata !DIExpression()), !dbg !522
  %125 = fdiv double %108, 0x5FEFFFFFFFFFFFFF, !dbg !542
  tail call void @llvm.dbg.value(metadata double %125, metadata !310, metadata !DIExpression()), !dbg !522
  %126 = add nsw i32 %106, 1, !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !303, metadata !DIExpression()), !dbg !522
  br label %133, !dbg !542

127:                                              ; preds = %105
  %128 = fcmp olt double %121, 0x1FF0000000000001, !dbg !544
  br i1 %128, label %129, label %133, !dbg !540

129:                                              ; preds = %127
  %130 = fmul double %120, 0x5FEFFFFFFFFFFFFF, !dbg !546
  tail call void @llvm.dbg.value(metadata double %130, metadata !311, metadata !DIExpression()), !dbg !522
  %131 = fmul double %108, 0x5FEFFFFFFFFFFFFF, !dbg !546
  tail call void @llvm.dbg.value(metadata double %131, metadata !310, metadata !DIExpression()), !dbg !522
  %132 = add nsw i32 %106, -1, !dbg !546
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !303, metadata !DIExpression()), !dbg !522
  br label %133, !dbg !546

133:                                              ; preds = %127, %129, %123
  %134 = phi double [ %124, %123 ], [ %130, %129 ], [ %120, %127 ], !dbg !548
  %135 = phi double [ %125, %123 ], [ %131, %129 ], [ %108, %127 ], !dbg !548
  %136 = phi i32 [ %126, %123 ], [ %132, %129 ], [ %106, %127 ], !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !303, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %135, metadata !310, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %134, metadata !311, metadata !DIExpression()), !dbg !522
  %137 = add nsw i32 %109, -1, !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !313, metadata !DIExpression()), !dbg !522
  %138 = icmp sgt i32 %137, %0, !dbg !525
  br i1 %138, label %105, label %139, !dbg !526, !llvm.loop !550

139:                                              ; preds = %133
  %140 = sitofp i32 %136 to double, !dbg !553
  %141 = fmul double %140, 0x40762E42FEFA39EF, !dbg !554
  br label %142, !dbg !553

142:                                              ; preds = %139, %100
  %143 = phi double [ %103, %100 ], [ %134, %139 ], !dbg !522
  %144 = phi double [ 0.000000e+00, %100 ], [ %141, %139 ], !dbg !522
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !309, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata double %144, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  %145 = tail call double @llvm.fabs.f64(double %144), !dbg !555
  %146 = fmul double %145, 0x3CC0000000000000, !dbg !556
  tail call void @llvm.dbg.value(metadata double %146, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  tail call void @llvm.dbg.value(metadata double %143, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  %147 = fadd double %48, 1.000000e+00, !dbg !557
  %148 = fmul double %147, 0x3CD0000000000000, !dbg !558
  %149 = tail call double @llvm.fabs.f64(double %143), !dbg !559
  %150 = fmul double %148, %149, !dbg !560
  tail call void @llvm.dbg.value(metadata double %150, metadata !308, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  %151 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %144, double noundef %146, double noundef %143, double noundef %150, ptr noundef %3) #8, !dbg !561
  br label %547

152:                                              ; preds = %98
  %153 = fmul double %47, 2.000000e+00, !dbg !562
  %154 = fadd double %153, %2, !dbg !563
  %155 = fcmp ugt double %154, %52, !dbg !564
  br i1 %155, label %223, label %156, !dbg !565

156:                                              ; preds = %152
  tail call void @llvm.dbg.value(metadata i32 0, metadata !319, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !322, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !566
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !567
  %157 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef 1.000000e+00, double noundef %52, double noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !328, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !330, metadata !DIExpression()), !dbg !427
  %158 = load double, ptr %7, align 8, !dbg !569, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %158, metadata !331, metadata !DIExpression()), !dbg !427
  %159 = load double, ptr %8, align 8, !dbg !570, !tbaa !571
  %160 = fneg double %159, !dbg !572
  %161 = call double @exp(double noundef %160) #8, !dbg !573
  tail call void @llvm.dbg.value(metadata double %161, metadata !330, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 1, metadata !333, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 0, metadata !319, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %158, metadata !331, metadata !DIExpression()), !dbg !427
  %162 = icmp ugt i32 %0, 1, !dbg !574
  br i1 %162, label %163, label %200, !dbg !575

163:                                              ; preds = %156, %191
  %164 = phi i32 [ %194, %191 ], [ 0, %156 ]
  %165 = phi double [ %193, %191 ], [ %161, %156 ]
  %166 = phi double [ %192, %191 ], [ %158, %156 ]
  %167 = phi i32 [ %195, %191 ], [ 1, %156 ]
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !319, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %165, metadata !330, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %166, metadata !331, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !333, metadata !DIExpression()), !dbg !427
  %168 = sitofp i32 %167 to double, !dbg !576
  %169 = fmul double %168, 2.000000e+00, !dbg !577
  %170 = fsub double %52, %169, !dbg !578
  %171 = fsub double %170, %2, !dbg !579
  %172 = fmul double %166, %171, !dbg !580
  %173 = fadd double %165, %172, !dbg !581
  %174 = fneg double %173, !dbg !582
  %175 = fadd double %168, 1.000000e+00, !dbg !583
  %176 = fsub double %175, %52, !dbg !584
  %177 = fmul double %176, %168, !dbg !585
  %178 = fdiv double %174, %177, !dbg !586
  tail call void @llvm.dbg.value(metadata double %178, metadata !332, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %166, metadata !330, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %178, metadata !331, metadata !DIExpression()), !dbg !427
  %179 = call double @llvm.fabs.f64(double %178), !dbg !587
  tail call void @llvm.dbg.value(metadata double %179, metadata !334, metadata !DIExpression()), !dbg !588
  %180 = fcmp ogt double %179, 0x5FEFFFFFFFFFFFFF, !dbg !589
  br i1 %180, label %181, label %185, !dbg !587

181:                                              ; preds = %163
  %182 = fdiv double %178, 0x5FEFFFFFFFFFFFFF, !dbg !591
  tail call void @llvm.dbg.value(metadata double %182, metadata !331, metadata !DIExpression()), !dbg !427
  %183 = fdiv double %166, 0x5FEFFFFFFFFFFFFF, !dbg !591
  tail call void @llvm.dbg.value(metadata double %183, metadata !330, metadata !DIExpression()), !dbg !427
  %184 = add nsw i32 %164, 1, !dbg !591
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !319, metadata !DIExpression()), !dbg !427
  br label %191, !dbg !591

185:                                              ; preds = %163
  %186 = fcmp olt double %179, 0x1FF0000000000001, !dbg !593
  br i1 %186, label %187, label %191, !dbg !589

187:                                              ; preds = %185
  %188 = fmul double %178, 0x5FEFFFFFFFFFFFFF, !dbg !595
  tail call void @llvm.dbg.value(metadata double %188, metadata !331, metadata !DIExpression()), !dbg !427
  %189 = fmul double %166, 0x5FEFFFFFFFFFFFFF, !dbg !595
  tail call void @llvm.dbg.value(metadata double %189, metadata !330, metadata !DIExpression()), !dbg !427
  %190 = add nsw i32 %164, -1, !dbg !595
  tail call void @llvm.dbg.value(metadata i32 %190, metadata !319, metadata !DIExpression()), !dbg !427
  br label %191, !dbg !595

191:                                              ; preds = %185, %187, %181
  %192 = phi double [ %182, %181 ], [ %188, %187 ], [ %178, %185 ], !dbg !597
  %193 = phi double [ %183, %181 ], [ %189, %187 ], [ %166, %185 ], !dbg !597
  %194 = phi i32 [ %184, %181 ], [ %190, %187 ], [ %164, %185 ], !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !319, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %193, metadata !330, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %192, metadata !331, metadata !DIExpression()), !dbg !427
  %195 = add nuw nsw i32 %167, 1, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %195, metadata !333, metadata !DIExpression()), !dbg !427
  %196 = icmp eq i32 %195, %0, !dbg !574
  br i1 %196, label %197, label %163, !dbg !575, !llvm.loop !599

197:                                              ; preds = %191
  %198 = sitofp i32 %194 to double, !dbg !601
  %199 = fmul double %198, 0x40762E42FEFA39EF, !dbg !602
  br label %200, !dbg !603

200:                                              ; preds = %197, %156
  %201 = phi double [ %158, %156 ], [ %192, %197 ], !dbg !427
  %202 = phi double [ 0.000000e+00, %156 ], [ %199, %197 ], !dbg !427
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !326, metadata !DIExpression()), !dbg !427
  %203 = load double, ptr %8, align 8, !dbg !603, !tbaa !571
  %204 = fadd double %202, %203, !dbg !604
  tail call void @llvm.dbg.value(metadata double %204, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !427
  %205 = call double @llvm.fabs.f64(double %203), !dbg !605
  %206 = call double @llvm.fabs.f64(double %202), !dbg !606
  %207 = fadd double %206, %205, !dbg !607
  %208 = fmul double %207, 0x3CC0000000000000, !dbg !608
  tail call void @llvm.dbg.value(metadata double %208, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !427
  tail call void @llvm.dbg.value(metadata double %201, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !427
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !609
  %210 = load double, ptr %209, align 8, !dbg !609, !tbaa !190
  %211 = load double, ptr %7, align 8, !dbg !610, !tbaa !182
  %212 = fdiv double %210, %211, !dbg !611
  %213 = call double @llvm.fabs.f64(double %201), !dbg !612
  %214 = fmul double %201, %212, !dbg !613
  %215 = call double @llvm.fabs.f64(double %214), !dbg !613
  tail call void @llvm.dbg.value(metadata double %215, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !427
  %216 = fadd double %48, 1.000000e+00, !dbg !614
  %217 = fmul double %216, 0x3CC0000000000000, !dbg !615
  %218 = fmul double %217, %213, !dbg !616
  %219 = fadd double %218, %215, !dbg !617
  tail call void @llvm.dbg.value(metadata double %219, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !427
  %220 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %204, double noundef %208, double noundef %201, double noundef %219, ptr noundef %3) #8, !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %220, metadata !329, metadata !DIExpression()), !dbg !427
  %221 = icmp eq i32 %220, 0, !dbg !619
  %222 = select i1 %221, i32 %157, i32 %220, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !620
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !620
  br label %547

223:                                              ; preds = %152
  %224 = fcmp ugt double %52, %2, !dbg !621
  br i1 %224, label %306, label %225, !dbg !622

225:                                              ; preds = %223
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !339, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i32 0, metadata !343, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !623
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8, !dbg !624
  %226 = icmp slt i32 %0, %1, !dbg !625
  br i1 %226, label %233, label %227, !dbg !627

227:                                              ; preds = %225
  %228 = add nsw i32 %1, -1, !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %228, metadata !347, metadata !DIExpression()), !dbg !430
  %229 = sub nsw i32 1, %1, !dbg !630
  %230 = sitofp i32 %229 to double, !dbg !630
  %231 = tail call double @log(double noundef %2) #8, !dbg !631
  %232 = fmul double %231, %230, !dbg !632
  tail call void @llvm.dbg.value(metadata double %232, metadata !348, metadata !DIExpression()), !dbg !430
  br label %233, !dbg !633

233:                                              ; preds = %225, %227
  %234 = phi double [ %232, %227 ], [ 0.000000e+00, %225 ], !dbg !634
  %235 = phi i32 [ %228, %227 ], [ 0, %225 ], !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !347, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %234, metadata !348, metadata !DIExpression()), !dbg !430
  %236 = call fastcc i32 @hyperg_U_CF1(double noundef %47, double noundef %52, double noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %236, metadata !344, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !349, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double poison, metadata !350, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !352, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i32 0, metadata !343, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !349, metadata !DIExpression()), !dbg !430
  %237 = icmp slt i32 %235, %0, !dbg !636
  br i1 %237, label %238, label %278, !dbg !637

238:                                              ; preds = %233
  %239 = load double, ptr %9, align 8, !dbg !638, !tbaa !571
  %240 = fdiv double %239, %47, !dbg !639
  tail call void @llvm.dbg.value(metadata double %240, metadata !350, metadata !DIExpression()), !dbg !430
  br label %241, !dbg !637

241:                                              ; preds = %238, %269
  %242 = phi i32 [ %272, %269 ], [ 0, %238 ]
  %243 = phi double [ %271, %269 ], [ 1.000000e+00, %238 ]
  %244 = phi double [ %270, %269 ], [ %240, %238 ]
  %245 = phi i32 [ %273, %269 ], [ %0, %238 ]
  tail call void @llvm.dbg.value(metadata i32 %242, metadata !343, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %243, metadata !349, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %244, metadata !350, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %245, metadata !352, metadata !DIExpression()), !dbg !430
  %246 = sitofp i32 %245 to double, !dbg !640
  %247 = fmul double %246, 2.000000e+00, !dbg !641
  %248 = fsub double %52, %247, !dbg !642
  %249 = fsub double %248, %2, !dbg !643
  %250 = fmul double %243, %249, !dbg !644
  %251 = fadd double %246, 1.000000e+00, !dbg !645
  %252 = fsub double %251, %52, !dbg !646
  %253 = fmul double %252, %246, !dbg !647
  %254 = fmul double %244, %253, !dbg !648
  %255 = fadd double %250, %254, !dbg !649
  %256 = fneg double %255, !dbg !650
  tail call void @llvm.dbg.value(metadata double %256, metadata !351, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %243, metadata !350, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %256, metadata !349, metadata !DIExpression()), !dbg !430
  %257 = tail call double @llvm.fabs.f64(double %256), !dbg !651
  tail call void @llvm.dbg.value(metadata double %257, metadata !353, metadata !DIExpression()), !dbg !652
  %258 = fcmp ogt double %257, 0x5FEFFFFFFFFFFFFF, !dbg !653
  br i1 %258, label %259, label %263, !dbg !651

259:                                              ; preds = %241
  %260 = fdiv double %255, 0xDFEFFFFFFFFFFFFF, !dbg !655
  tail call void @llvm.dbg.value(metadata double %260, metadata !349, metadata !DIExpression()), !dbg !430
  %261 = fdiv double %243, 0x5FEFFFFFFFFFFFFF, !dbg !655
  tail call void @llvm.dbg.value(metadata double %261, metadata !350, metadata !DIExpression()), !dbg !430
  %262 = add nsw i32 %242, 1, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %262, metadata !343, metadata !DIExpression()), !dbg !430
  br label %269, !dbg !655

263:                                              ; preds = %241
  %264 = fcmp olt double %257, 0x1FF0000000000001, !dbg !657
  br i1 %264, label %265, label %269, !dbg !653

265:                                              ; preds = %263
  %266 = fmul double %255, 0xDFEFFFFFFFFFFFFF, !dbg !659
  tail call void @llvm.dbg.value(metadata double %266, metadata !349, metadata !DIExpression()), !dbg !430
  %267 = fmul double %243, 0x5FEFFFFFFFFFFFFF, !dbg !659
  tail call void @llvm.dbg.value(metadata double %267, metadata !350, metadata !DIExpression()), !dbg !430
  %268 = add nsw i32 %242, -1, !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %268, metadata !343, metadata !DIExpression()), !dbg !430
  br label %269, !dbg !659

269:                                              ; preds = %263, %265, %259
  %270 = phi double [ %261, %259 ], [ %267, %265 ], [ %243, %263 ], !dbg !661
  %271 = phi double [ %260, %259 ], [ %266, %265 ], [ %256, %263 ], !dbg !661
  %272 = phi i32 [ %262, %259 ], [ %268, %265 ], [ %242, %263 ], !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %272, metadata !343, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %271, metadata !349, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata double %270, metadata !350, metadata !DIExpression()), !dbg !430
  %273 = add nsw i32 %245, -1, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 %273, metadata !352, metadata !DIExpression()), !dbg !430
  %274 = icmp sgt i32 %273, %235, !dbg !636
  br i1 %274, label %241, label %275, !dbg !637, !llvm.loop !663

275:                                              ; preds = %269
  %276 = fcmp oeq double %271, 0.000000e+00, !dbg !665
  br i1 %276, label %277, label %278, !dbg !666

277:                                              ; preds = %275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false), !dbg !667
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1002, i32 noundef 12) #8, !dbg !669
  br label %304, !dbg !669

278:                                              ; preds = %233, %275
  %279 = phi i32 [ %272, %275 ], [ 0, %233 ]
  %280 = phi double [ %271, %275 ], [ 1.000000e+00, %233 ]
  %281 = sub nsw i32 0, %279, !dbg !671
  %282 = sitofp i32 %281 to double, !dbg !671
  %283 = fmul double %282, 0x40762E42FEFA39EF, !dbg !672
  tail call void @llvm.dbg.value(metadata double %283, metadata !358, metadata !DIExpression()), !dbg !673
  %284 = fadd double %234, %283, !dbg !674
  tail call void @llvm.dbg.value(metadata double %284, metadata !361, metadata !DIExpression()), !dbg !673
  %285 = tail call double @llvm.fabs.f64(double %234), !dbg !675
  %286 = tail call double @llvm.fabs.f64(double %283), !dbg !676
  %287 = fadd double %285, %286, !dbg !677
  %288 = fmul double %287, 0x3CC0000000000000, !dbg !678
  tail call void @llvm.dbg.value(metadata double %288, metadata !362, metadata !DIExpression()), !dbg !673
  %289 = sub nsw i32 %235, %0, !dbg !679
  %290 = sitofp i32 %289 to double, !dbg !680
  %291 = tail call double @llvm.fabs.f64(double %290), !dbg !681
  %292 = load i32, ptr %10, align 4, !dbg !682, !tbaa !683
  %293 = sitofp i32 %292 to double, !dbg !682
  %294 = fadd double %291, %293, !dbg !684
  %295 = fadd double %294, 1.000000e+00, !dbg !685
  %296 = fmul double %295, 2.000000e+00, !dbg !686
  %297 = fmul double %296, 0x3CB0000000000000, !dbg !687
  %298 = fdiv double 1.000000e+00, %280, !dbg !688
  %299 = tail call double @llvm.fabs.f64(double %298), !dbg !689
  %300 = fmul double %299, %297, !dbg !690
  tail call void @llvm.dbg.value(metadata double %300, metadata !363, metadata !DIExpression()), !dbg !673
  %301 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %284, double noundef %288, double noundef %298, double noundef %300, ptr noundef %3) #8, !dbg !691
  tail call void @llvm.dbg.value(metadata i32 %301, metadata !364, metadata !DIExpression()), !dbg !673
  %302 = icmp eq i32 %301, 0, !dbg !692
  %303 = select i1 %302, i32 %236, i32 %301, !dbg !692
  br label %304

304:                                              ; preds = %278, %277
  %305 = phi i32 [ 12, %277 ], [ %303, %278 ], !dbg !693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8, !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !694
  br label %547

306:                                              ; preds = %223
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !365, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, metadata !368, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()), !dbg !433
  %307 = fsub double %52, %2, !dbg !695
  %308 = fmul double %307, 5.000000e-01, !dbg !696
  %309 = fadd double %308, -1.000000e+00, !dbg !697
  %310 = tail call double @llvm.ceil.f64(double %309), !dbg !698
  %311 = fadd double %310, 1.000000e+00, !dbg !699
  %312 = fptosi double %311 to i32, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %312, metadata !370, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8, !dbg !702
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8, !dbg !703
  %313 = call fastcc i32 @hyperg_U_CF1(double noundef %47, double noundef %52, double noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13), !dbg !704
  tail call void @llvm.dbg.value(metadata i32 %313, metadata !381, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double poison, metadata !383, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !385, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !382, metadata !DIExpression()), !dbg !435
  %314 = icmp slt i32 %312, %0, !dbg !705
  br i1 %314, label %315, label %352, !dbg !706

315:                                              ; preds = %306
  %316 = load double, ptr %12, align 8, !dbg !707, !tbaa !571
  %317 = fdiv double %316, %47, !dbg !708
  tail call void @llvm.dbg.value(metadata double %317, metadata !383, metadata !DIExpression()), !dbg !435
  br label %318, !dbg !706

318:                                              ; preds = %315, %346
  %319 = phi i32 [ %350, %346 ], [ %0, %315 ]
  %320 = phi double [ %349, %346 ], [ %317, %315 ]
  %321 = phi double [ %348, %346 ], [ 1.000000e+00, %315 ]
  %322 = phi i32 [ %347, %346 ], [ 0, %315 ]
  tail call void @llvm.dbg.value(metadata i32 %319, metadata !385, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %320, metadata !383, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %321, metadata !382, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %322, metadata !368, metadata !DIExpression()), !dbg !433
  %323 = sitofp i32 %319 to double, !dbg !709
  %324 = fmul double %323, 2.000000e+00, !dbg !710
  %325 = fsub double %52, %324, !dbg !711
  %326 = fsub double %325, %2, !dbg !712
  %327 = fmul double %321, %326, !dbg !713
  %328 = fadd double %323, 1.000000e+00, !dbg !714
  %329 = fsub double %328, %52, !dbg !715
  %330 = fmul double %329, %323, !dbg !716
  %331 = fmul double %320, %330, !dbg !717
  %332 = fadd double %327, %331, !dbg !718
  %333 = fneg double %332, !dbg !719
  tail call void @llvm.dbg.value(metadata double %333, metadata !384, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %321, metadata !383, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %333, metadata !382, metadata !DIExpression()), !dbg !435
  %334 = tail call double @llvm.fabs.f64(double %333), !dbg !720
  tail call void @llvm.dbg.value(metadata double %334, metadata !386, metadata !DIExpression()), !dbg !721
  %335 = fcmp ogt double %334, 0x5FEFFFFFFFFFFFFF, !dbg !722
  br i1 %335, label %336, label %340, !dbg !720

336:                                              ; preds = %318
  %337 = fdiv double %332, 0xDFEFFFFFFFFFFFFF, !dbg !724
  tail call void @llvm.dbg.value(metadata double %337, metadata !382, metadata !DIExpression()), !dbg !435
  %338 = fdiv double %321, 0x5FEFFFFFFFFFFFFF, !dbg !724
  tail call void @llvm.dbg.value(metadata double %338, metadata !383, metadata !DIExpression()), !dbg !435
  %339 = add nsw i32 %322, 1, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 %339, metadata !368, metadata !DIExpression()), !dbg !433
  br label %346, !dbg !724

340:                                              ; preds = %318
  %341 = fcmp olt double %334, 0x1FF0000000000001, !dbg !726
  br i1 %341, label %342, label %346, !dbg !722

342:                                              ; preds = %340
  %343 = fmul double %332, 0xDFEFFFFFFFFFFFFF, !dbg !728
  tail call void @llvm.dbg.value(metadata double %343, metadata !382, metadata !DIExpression()), !dbg !435
  %344 = fmul double %321, 0x5FEFFFFFFFFFFFFF, !dbg !728
  tail call void @llvm.dbg.value(metadata double %344, metadata !383, metadata !DIExpression()), !dbg !435
  %345 = add nsw i32 %322, -1, !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %345, metadata !368, metadata !DIExpression()), !dbg !433
  br label %346, !dbg !728

346:                                              ; preds = %340, %342, %336
  %347 = phi i32 [ %339, %336 ], [ %345, %342 ], [ %322, %340 ], !dbg !433
  %348 = phi double [ %337, %336 ], [ %343, %342 ], [ %333, %340 ], !dbg !730
  %349 = phi double [ %338, %336 ], [ %344, %342 ], [ %321, %340 ], !dbg !730
  tail call void @llvm.dbg.value(metadata double %349, metadata !383, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %348, metadata !382, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %347, metadata !368, metadata !DIExpression()), !dbg !433
  %350 = add nsw i32 %319, -1, !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %350, metadata !385, metadata !DIExpression()), !dbg !435
  %351 = icmp sgt i32 %350, %312, !dbg !705
  br i1 %351, label %318, label %352, !dbg !706, !llvm.loop !732

352:                                              ; preds = %346, %306
  %353 = phi i32 [ 0, %306 ], [ %347, %346 ], !dbg !433
  %354 = phi double [ 1.000000e+00, %306 ], [ %348, %346 ], !dbg !435
  tail call void @llvm.dbg.value(metadata double %354, metadata !371, metadata !DIExpression()), !dbg !433
  %355 = sub nsw i32 %312, %0, !dbg !734
  %356 = sitofp i32 %355 to double, !dbg !735
  %357 = tail call double @llvm.fabs.f64(double %356), !dbg !736
  %358 = load i32, ptr %13, align 4, !dbg !737, !tbaa !683
  %359 = sitofp i32 %358 to double, !dbg !737
  %360 = fadd double %357, %359, !dbg !738
  %361 = fadd double %360, 1.000000e+00, !dbg !739
  %362 = fmul double %361, 0x3CC0000000000000, !dbg !740
  %363 = tail call double @llvm.fabs.f64(double %354), !dbg !741
  %364 = fmul double %363, %362, !dbg !742
  tail call void @llvm.dbg.value(metadata double %364, metadata !372, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 %313, metadata !376, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8, !dbg !743
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8, !dbg !743
  %365 = shl nsw i32 %312, 1, !dbg !744
  %366 = icmp eq i32 %365, %1, !dbg !745
  %367 = icmp sgt i32 %312, 1
  %368 = and i1 %367, %366, !dbg !746
  br i1 %368, label %486, label %369, !dbg !746

369:                                              ; preds = %352
  %370 = add nsw i32 %365, -1, !dbg !747
  %371 = icmp eq i32 %370, %1, !dbg !748
  %372 = and i1 %367, %371, !dbg !749
  br i1 %372, label %373, label %420, !dbg !749

373:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !751
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !751
  %374 = sitofp i32 %312 to double, !dbg !752
  %375 = fadd double %374, -1.000000e+00, !dbg !753
  call fastcc void @hyperg_lnU_beq2a(double noundef %375, double noundef %2, ptr noundef nonnull %14), !dbg !754
  call fastcc void @hyperg_lnU_beq2a(double noundef %374, double noundef %2, ptr noundef nonnull %15), !dbg !755
  %376 = load double, ptr %14, align 8, !dbg !756, !tbaa !182
  %377 = load double, ptr %15, align 8, !dbg !758, !tbaa !182
  %378 = fcmp ogt double %376, %377, !dbg !759
  br i1 %378, label %379, label %390, !dbg !760

379:                                              ; preds = %373
  call void @llvm.dbg.assign(metadata double %376, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !761, metadata ptr %11, metadata !DIExpression()), !dbg !433
  %380 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !762
  %381 = load double, ptr %380, align 8, !dbg !762, !tbaa !190
  call void @llvm.dbg.assign(metadata double %381, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !764, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !433
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !396, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !765, metadata ptr %16, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !396, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !766, metadata ptr %16, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !438
  %382 = fsub double %377, %376, !dbg !767
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !768
  %384 = load double, ptr %383, align 8, !dbg !768, !tbaa !190
  %385 = fadd double %381, %384, !dbg !769
  %386 = call i32 @gsl_sf_exp_err_e(double noundef %382, double noundef %385, ptr noundef nonnull %17) #8, !dbg !770
  %387 = load double, ptr %17, align 8, !dbg !771, !tbaa !182
  %388 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1
  %389 = load double, ptr %388, align 8, !dbg !772, !tbaa !190
  br label %401, !dbg !773

390:                                              ; preds = %373
  call void @llvm.dbg.assign(metadata double %377, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !761, metadata ptr %11, metadata !DIExpression()), !dbg !433
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !774
  %392 = load double, ptr %391, align 8, !dbg !774, !tbaa !190
  call void @llvm.dbg.assign(metadata double %392, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !764, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !433
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !776, metadata ptr %17, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !777, metadata ptr %17, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !438
  %393 = fsub double %376, %377, !dbg !778
  %394 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !779
  %395 = load double, ptr %394, align 8, !dbg !779, !tbaa !190
  %396 = fadd double %392, %395, !dbg !780
  %397 = call i32 @gsl_sf_exp_err_e(double noundef %393, double noundef %396, ptr noundef nonnull %16) #8, !dbg !781
  %398 = load double, ptr %16, align 8, !dbg !782, !tbaa !182
  %399 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1
  %400 = load double, ptr %399, align 8, !dbg !783, !tbaa !190
  br label %401

401:                                              ; preds = %390, %379
  %402 = phi double [ 0.000000e+00, %379 ], [ %400, %390 ], !dbg !783
  %403 = phi double [ %389, %379 ], [ 0.000000e+00, %390 ], !dbg !772
  %404 = phi double [ 1.000000e+00, %379 ], [ %398, %390 ], !dbg !782
  %405 = phi double [ %387, %379 ], [ 1.000000e+00, %390 ], !dbg !771
  %406 = phi double [ %376, %379 ], [ %377, %390 ], !dbg !784
  %407 = phi double [ %381, %379 ], [ %392, %390 ], !dbg !784
  %408 = fmul double %405, %2, !dbg !785
  %409 = fsub double %408, %404, !dbg !786
  %410 = fmul double %374, 2.000000e+00, !dbg !787
  %411 = fadd double %410, -2.000000e+00, !dbg !788
  %412 = fdiv double %409, %411, !dbg !789
  tail call void @llvm.dbg.value(metadata double %412, metadata !373, metadata !DIExpression()), !dbg !433
  %413 = fmul double %58, %403, !dbg !790
  %414 = fadd double %413, %402, !dbg !791
  %415 = call double @llvm.fabs.f64(double %411), !dbg !792
  %416 = fdiv double %414, %415, !dbg !793
  tail call void @llvm.dbg.value(metadata double %416, metadata !374, metadata !DIExpression()), !dbg !433
  %417 = call double @llvm.fabs.f64(double %412), !dbg !794
  %418 = fmul double %417, 0x3CC0000000000000, !dbg !795
  %419 = fadd double %416, %418, !dbg !796
  tail call void @llvm.dbg.value(metadata double %419, metadata !374, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, metadata !375, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !797
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !797
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !797
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !797
  br label %478, !dbg !798

420:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !799
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !400, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8, !dbg !800
  %421 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef 1.000000e+00, double noundef %52, double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %19), !dbg !801
  tail call void @llvm.dbg.value(metadata i32 %421, metadata !375, metadata !DIExpression()), !dbg !433
  %422 = load double, ptr %18, align 8, !dbg !802, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %422, metadata !401, metadata !DIExpression()), !dbg !443
  %423 = load double, ptr %19, align 8, !dbg !803, !tbaa !571
  %424 = fneg double %423, !dbg !804
  %425 = call double @exp(double noundef %424) #8, !dbg !805
  tail call void @llvm.dbg.value(metadata double %425, metadata !400, metadata !DIExpression()), !dbg !443
  %426 = load double, ptr %19, align 8, !dbg !806, !tbaa !571
  call void @llvm.dbg.assign(metadata double %426, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !807, metadata ptr %11, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !377, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !808, metadata ptr %11, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 1, metadata !403, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !433
  br i1 %367, label %427, label %461, !dbg !809

427:                                              ; preds = %420, %455
  %428 = phi i32 [ %459, %455 ], [ 1, %420 ]
  %429 = phi double [ %458, %455 ], [ %422, %420 ]
  %430 = phi double [ %457, %455 ], [ %425, %420 ]
  %431 = phi i32 [ %456, %455 ], [ 0, %420 ]
  tail call void @llvm.dbg.value(metadata i32 %428, metadata !403, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %429, metadata !401, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %430, metadata !400, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %431, metadata !367, metadata !DIExpression()), !dbg !433
  %432 = sitofp i32 %428 to double, !dbg !810
  %433 = fmul double %432, 2.000000e+00, !dbg !811
  %434 = fsub double %52, %433, !dbg !812
  %435 = fsub double %434, %2, !dbg !813
  %436 = fmul double %429, %435, !dbg !814
  %437 = fadd double %430, %436, !dbg !815
  %438 = fneg double %437, !dbg !816
  %439 = fadd double %432, 1.000000e+00, !dbg !817
  %440 = fsub double %439, %52, !dbg !818
  %441 = fmul double %440, %432, !dbg !819
  %442 = fdiv double %438, %441, !dbg !820
  tail call void @llvm.dbg.value(metadata double %442, metadata !402, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %429, metadata !400, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %442, metadata !401, metadata !DIExpression()), !dbg !443
  %443 = call double @llvm.fabs.f64(double %442), !dbg !821
  tail call void @llvm.dbg.value(metadata double %443, metadata !405, metadata !DIExpression()), !dbg !822
  %444 = fcmp ogt double %443, 0x5FEFFFFFFFFFFFFF, !dbg !823
  br i1 %444, label %445, label %449, !dbg !821

445:                                              ; preds = %427
  %446 = fdiv double %442, 0x5FEFFFFFFFFFFFFF, !dbg !825
  tail call void @llvm.dbg.value(metadata double %446, metadata !401, metadata !DIExpression()), !dbg !443
  %447 = fdiv double %429, 0x5FEFFFFFFFFFFFFF, !dbg !825
  tail call void @llvm.dbg.value(metadata double %447, metadata !400, metadata !DIExpression()), !dbg !443
  %448 = add nsw i32 %431, 1, !dbg !825
  tail call void @llvm.dbg.value(metadata i32 %448, metadata !367, metadata !DIExpression()), !dbg !433
  br label %455, !dbg !825

449:                                              ; preds = %427
  %450 = fcmp olt double %443, 0x1FF0000000000001, !dbg !827
  br i1 %450, label %451, label %455, !dbg !823

451:                                              ; preds = %449
  %452 = fmul double %442, 0x5FEFFFFFFFFFFFFF, !dbg !829
  tail call void @llvm.dbg.value(metadata double %452, metadata !401, metadata !DIExpression()), !dbg !443
  %453 = fmul double %429, 0x5FEFFFFFFFFFFFFF, !dbg !829
  tail call void @llvm.dbg.value(metadata double %453, metadata !400, metadata !DIExpression()), !dbg !443
  %454 = add nsw i32 %431, -1, !dbg !829
  tail call void @llvm.dbg.value(metadata i32 %454, metadata !367, metadata !DIExpression()), !dbg !433
  br label %455, !dbg !829

455:                                              ; preds = %449, %451, %445
  %456 = phi i32 [ %448, %445 ], [ %454, %451 ], [ %431, %449 ], !dbg !433
  %457 = phi double [ %447, %445 ], [ %453, %451 ], [ %429, %449 ], !dbg !831
  %458 = phi double [ %446, %445 ], [ %452, %451 ], [ %442, %449 ], !dbg !831
  tail call void @llvm.dbg.value(metadata double %458, metadata !401, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %457, metadata !400, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %456, metadata !367, metadata !DIExpression()), !dbg !433
  %459 = add nuw nsw i32 %428, 1, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %459, metadata !403, metadata !DIExpression()), !dbg !443
  %460 = icmp eq i32 %459, %312, !dbg !833
  br i1 %460, label %461, label %427, !dbg !809, !llvm.loop !834

461:                                              ; preds = %455, %420
  %462 = phi i32 [ 0, %420 ], [ %456, %455 ], !dbg !433
  %463 = phi double [ %422, %420 ], [ %458, %455 ], !dbg !443
  tail call void @llvm.dbg.value(metadata double %463, metadata !373, metadata !DIExpression()), !dbg !433
  %464 = call double @llvm.fabs.f64(double %463), !dbg !836
  %465 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !837
  %466 = load double, ptr %465, align 8, !dbg !837, !tbaa !190
  %467 = load double, ptr %18, align 8, !dbg !838, !tbaa !182
  %468 = fdiv double %466, %467, !dbg !839
  %469 = fmul double %463, %468, !dbg !840
  %470 = call double @llvm.fabs.f64(double %469), !dbg !840
  tail call void @llvm.dbg.value(metadata double %470, metadata !374, metadata !DIExpression()), !dbg !433
  %471 = add nsw i32 %312, -1, !dbg !841
  %472 = sitofp i32 %471 to double, !dbg !842
  %473 = call double @llvm.fabs.f64(double %472), !dbg !843
  %474 = fadd double %473, 1.000000e+00, !dbg !844
  %475 = fmul double %474, 0x3CC0000000000000, !dbg !845
  %476 = fmul double %475, %464, !dbg !846
  %477 = fadd double %476, %470, !dbg !847
  tail call void @llvm.dbg.value(metadata double %477, metadata !374, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8, !dbg !848
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !848
  br label %478

478:                                              ; preds = %401, %461
  %479 = phi double [ %407, %401 ], [ 0.000000e+00, %461 ]
  %480 = phi double [ %406, %401 ], [ %426, %461 ]
  %481 = phi i32 [ 0, %401 ], [ %462, %461 ], !dbg !849
  %482 = phi double [ %412, %401 ], [ %463, %461 ], !dbg !850
  %483 = phi double [ %419, %401 ], [ %477, %461 ], !dbg !850
  %484 = phi i32 [ 0, %401 ], [ %421, %461 ], !dbg !850
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !375, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata double %483, metadata !374, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata double %482, metadata !373, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 %481, metadata !367, metadata !DIExpression()), !dbg !433
  %485 = fcmp oeq double %354, 0.000000e+00, !dbg !851
  br i1 %485, label %493, label %494, !dbg !852

486:                                              ; preds = %352
  %487 = sitofp i32 %312 to double, !dbg !853
  call fastcc void @hyperg_lnU_beq2a(double noundef %487, double noundef %2, ptr noundef nonnull %11), !dbg !855
  tail call void @llvm.dbg.value(metadata i32 0, metadata !375, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !374, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !373, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !433
  %488 = fcmp oeq double %354, 0.000000e+00, !dbg !851
  br i1 %488, label %493, label %489, !dbg !852

489:                                              ; preds = %486
  %490 = load double, ptr %11, align 8, !dbg !856, !tbaa !182
  %491 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1
  %492 = load double, ptr %491, align 8, !dbg !857, !tbaa !190
  br label %499, !dbg !852

493:                                              ; preds = %486, %478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false), !dbg !858
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1127, i32 noundef 12) #8, !dbg !860
  br label %545, !dbg !860

494:                                              ; preds = %478
  %495 = fcmp oeq double %482, 0.000000e+00, !dbg !862
  br i1 %495, label %496, label %499, !dbg !863

496:                                              ; preds = %494
  store double 0.000000e+00, ptr %3, align 8, !dbg !864, !tbaa !131
  %497 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !864
  store double 0x10000000000000, ptr %497, align 8, !dbg !864, !tbaa !137
  %498 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !864
  store i32 0, ptr %498, align 8, !dbg !864, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1131, i32 noundef 15) #8, !dbg !867
  br label %545, !dbg !867

499:                                              ; preds = %489, %494
  %500 = phi double [ %479, %494 ], [ %492, %489 ], !dbg !857
  %501 = phi double [ %480, %494 ], [ %490, %489 ], !dbg !856
  %502 = phi i32 [ %481, %494 ], [ 0, %489 ]
  %503 = phi double [ %482, %494 ], [ 1.000000e+00, %489 ]
  %504 = phi double [ %483, %494 ], [ 0.000000e+00, %489 ]
  %505 = phi i32 [ %484, %494 ], [ 0, %489 ]
  %506 = sub nsw i32 %502, %353, !dbg !869
  %507 = sitofp i32 %506 to double, !dbg !870
  %508 = fmul double %507, 0x40762E42FEFA39EF, !dbg !871
  tail call void @llvm.dbg.value(metadata double %508, metadata !410, metadata !DIExpression()), !dbg !872
  %509 = call double @llvm.fabs.f64(double %503), !dbg !873
  %510 = call double @log(double noundef %509) #8, !dbg !874
  tail call void @llvm.dbg.value(metadata double %510, metadata !414, metadata !DIExpression()), !dbg !872
  %511 = fdiv double %504, %503, !dbg !875
  %512 = call double @llvm.fabs.f64(double %511), !dbg !876
  %513 = fadd double %512, 0x3CB0000000000000, !dbg !877
  tail call void @llvm.dbg.value(metadata double %513, metadata !415, metadata !DIExpression()), !dbg !872
  %514 = call double @log(double noundef %363) #8, !dbg !878
  tail call void @llvm.dbg.value(metadata double %514, metadata !416, metadata !DIExpression()), !dbg !872
  %515 = fdiv double %364, %354, !dbg !879
  %516 = call double @llvm.fabs.f64(double %515), !dbg !880
  %517 = fadd double %516, 0x3CB0000000000000, !dbg !881
  tail call void @llvm.dbg.value(metadata double %517, metadata !417, metadata !DIExpression()), !dbg !872
  %518 = fadd double %510, %501, !dbg !882
  %519 = fsub double %518, %514, !dbg !883
  %520 = fadd double %508, %519, !dbg !884
  tail call void @llvm.dbg.value(metadata double %520, metadata !418, metadata !DIExpression()), !dbg !872
  %521 = fadd double %513, %500, !dbg !885
  %522 = fadd double %517, %521, !dbg !886
  %523 = call double @llvm.fabs.f64(double %501), !dbg !887
  %524 = call double @llvm.fabs.f64(double %510), !dbg !888
  %525 = fadd double %524, %523, !dbg !889
  %526 = call double @llvm.fabs.f64(double %514), !dbg !890
  %527 = fadd double %526, %525, !dbg !891
  %528 = call double @llvm.fabs.f64(double %508), !dbg !892
  %529 = fadd double %528, %527, !dbg !893
  %530 = fmul double %529, 0x3CC0000000000000, !dbg !894
  %531 = fadd double %522, %530, !dbg !895
  tail call void @llvm.dbg.value(metadata double %531, metadata !419, metadata !DIExpression()), !dbg !872
  %532 = fcmp oge double %503, 0.000000e+00, !dbg !896
  %533 = fcmp oge double %354, 0.000000e+00, !dbg !897
  %534 = select i1 %533, i32 1, i32 -1, !dbg !897
  %535 = sub nsw i32 0, %534, !dbg !898
  %536 = select i1 %532, i32 %534, i32 %535, !dbg !898
  %537 = sitofp i32 %536 to double, !dbg !896
  tail call void @llvm.dbg.value(metadata double %537, metadata !420, metadata !DIExpression()), !dbg !872
  %538 = call i32 @gsl_sf_exp_err_e10_e(double noundef %520, double noundef %531, ptr noundef %3) #8, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %538, metadata !421, metadata !DIExpression()), !dbg !872
  %539 = load double, ptr %3, align 8, !dbg !900, !tbaa !131
  %540 = fmul double %539, %537, !dbg !900
  store double %540, ptr %3, align 8, !dbg !900, !tbaa !131
  %541 = icmp eq i32 %538, 0, !dbg !901
  %542 = icmp eq i32 %313, 0, !dbg !901
  %543 = select i1 %542, i32 %505, i32 %313, !dbg !901
  %544 = select i1 %541, i32 %543, i32 %538, !dbg !901
  br label %545

545:                                              ; preds = %499, %496, %493
  %546 = phi i32 [ 12, %493 ], [ 15, %496 ], [ %544, %499 ], !dbg !902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !903
  br label %547

547:                                              ; preds = %545, %304, %20, %23, %40, %61, %91, %142, %200
  %548 = phi i32 [ 0, %20 ], [ 0, %23 ], [ %45, %40 ], [ %74, %61 ], [ %92, %91 ], [ %151, %142 ], [ %222, %200 ], [ %305, %304 ], [ %546, %545 ], !dbg !904
  ret i32 %548, !dbg !905
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !906 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !910 i32 @gsl_sf_exp_mult_err_e10_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !914 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !945
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !946
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !947
  call void @llvm.dbg.assign(metadata i1 undef, metadata !926, metadata !DIExpression(), metadata !947, metadata ptr %7, metadata !DIExpression()), !dbg !948
  %8 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !949
  call void @llvm.dbg.assign(metadata i1 undef, metadata !942, metadata !DIExpression(), metadata !949, metadata ptr %8, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double %0, metadata !918, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %1, metadata !919, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %2, metadata !920, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !921, metadata !DIExpression()), !dbg !951
  %9 = fadd double %0, 5.000000e-01, !dbg !952
  %10 = tail call double @llvm.floor.f64(double %9), !dbg !953
  tail call void @llvm.dbg.value(metadata double %10, metadata !922, metadata !DIExpression()), !dbg !951
  %11 = fadd double %1, 5.000000e-01, !dbg !954
  %12 = tail call double @llvm.floor.f64(double %11), !dbg !955
  tail call void @llvm.dbg.value(metadata double %12, metadata !923, metadata !DIExpression()), !dbg !951
  %13 = fsub double %0, %10, !dbg !956
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !957
  %15 = fcmp olt double %14, 0x3D4F400000000000, !dbg !958
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !951
  %16 = fsub double %1, %12, !dbg !959
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !960
  %18 = fcmp olt double %17, 0x3D4F400000000000, !dbg !961
  tail call void @llvm.dbg.value(metadata i1 %18, metadata !925, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !951
  %19 = fcmp oeq double %2, 0.000000e+00, !dbg !962
  %20 = fcmp oge double %1, 1.000000e+00
  %21 = and i1 %20, %19, !dbg !963
  br i1 %21, label %22, label %25, !dbg !963

22:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !964, !tbaa !131
  %23 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !964
  store double 0x7FF8000000000000, ptr %23, align 8, !dbg !964, !tbaa !137
  %24 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !964
  store i32 0, ptr %24, align 8, !dbg !964, !tbaa !138
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1701, i32 noundef 1) #8, !dbg !967
  br label %104, !dbg !967

25:                                               ; preds = %4
  %26 = fcmp oeq double %0, 0.000000e+00, !dbg !969
  br i1 %26, label %27, label %30, !dbg !970

27:                                               ; preds = %25
  store double 1.000000e+00, ptr %3, align 8, !dbg !971, !tbaa !131
  %28 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !973
  store double 0.000000e+00, ptr %28, align 8, !dbg !974, !tbaa !137
  %29 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !975
  store i32 0, ptr %29, align 8, !dbg !976, !tbaa !138
  br label %104, !dbg !977

30:                                               ; preds = %25
  br i1 %19, label %31, label %54, !dbg !978

31:                                               ; preds = %30
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !945, metadata ptr %5, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.assign(metadata i1 undef, metadata !162, metadata !DIExpression(), metadata !946, metadata ptr %6, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %1, metadata !160, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %3, metadata !161, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !982
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !982
  %32 = fadd double %0, 1.000000e+00, !dbg !983
  %33 = fsub double %32, %1, !dbg !984
  %34 = call i32 @gsl_sf_gammainv_e(double noundef %33, ptr noundef nonnull %5) #8, !dbg !985
  call void @llvm.dbg.value(metadata i32 %34, metadata !168, metadata !DIExpression()), !dbg !979
  %35 = call i32 @gsl_sf_gammainv_e(double noundef %1, ptr noundef nonnull %6) #8, !dbg !986
  call void @llvm.dbg.value(metadata i32 %35, metadata !169, metadata !DIExpression()), !dbg !979
  %36 = fmul double %1, 0x400921FB54442D18, !dbg !987
  %37 = call double @sin(double noundef %36) #8, !dbg !988
  %38 = fdiv double 0x400921FB54442D18, %37, !dbg !989
  call void @llvm.dbg.value(metadata double %38, metadata !170, metadata !DIExpression()), !dbg !979
  %39 = load double, ptr %5, align 8, !dbg !990, !tbaa !182
  %40 = fmul double %38, %39, !dbg !991
  %41 = load double, ptr %6, align 8, !dbg !992, !tbaa !182
  %42 = fmul double %40, %41, !dbg !993
  store double %42, ptr %3, align 8, !dbg !994, !tbaa !131
  %43 = call double @llvm.fabs.f64(double %38), !dbg !995
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !996
  %45 = load double, ptr %44, align 8, !dbg !996, !tbaa !190
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !997
  %47 = load double, ptr %46, align 8, !dbg !997, !tbaa !190
  %48 = fadd double %45, %47, !dbg !998
  %49 = fmul double %43, %48, !dbg !999
  %50 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1000
  store double %49, ptr %50, align 8, !dbg !1001, !tbaa !137
  %51 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1002
  store i32 0, ptr %51, align 8, !dbg !1003, !tbaa !138
  %52 = icmp eq i32 %34, 0, !dbg !1004
  %53 = select i1 %52, i32 %35, i32 %34, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1005
  br label %104, !dbg !1006

54:                                               ; preds = %30
  %55 = fadd double %0, 1.000000e+00
  %56 = fcmp oeq double %55, %1
  %57 = and i1 %56, %15, !dbg !1007
  br i1 %57, label %58, label %67, !dbg !1007

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1008
  %59 = fneg double %0, !dbg !1009
  %60 = fptosi double %59 to i32, !dbg !1009
  %61 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %60, ptr noundef nonnull %7) #8, !dbg !1010
  %62 = load double, ptr %7, align 8, !dbg !1011, !tbaa !182
  store double %62, ptr %3, align 8, !dbg !1012, !tbaa !131
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1013
  %64 = load double, ptr %63, align 8, !dbg !1013, !tbaa !190
  %65 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1014
  store double %64, ptr %65, align 8, !dbg !1015, !tbaa !137
  %66 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1016
  store i32 0, ptr %66, align 8, !dbg !1017, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1018
  br label %104

67:                                               ; preds = %54
  %68 = and i1 %15, %18, !dbg !1019
  br i1 %68, label %69, label %73, !dbg !1019

69:                                               ; preds = %67
  %70 = fptosi double %10 to i32, !dbg !1020
  %71 = fptosi double %12 to i32, !dbg !1022
  %72 = tail call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %70, i32 noundef %71, double noundef %2, ptr noundef %3), !dbg !1023
  br label %104, !dbg !1024

73:                                               ; preds = %67
  %74 = fcmp olt double %2, 0.000000e+00, !dbg !1025
  br i1 %74, label %75, label %77, !dbg !1026

75:                                               ; preds = %73
  %76 = tail call fastcc i32 @hyperg_U_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1027
  br label %104, !dbg !1029

77:                                               ; preds = %73
  br i1 %20, label %78, label %80, !dbg !1030

78:                                               ; preds = %77
  %79 = tail call fastcc i32 @hyperg_U_bge1(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1031
  br label %104, !dbg !1033

80:                                               ; preds = %77
  %81 = tail call double @log(double noundef %2) #8, !dbg !1034
  tail call void @llvm.dbg.value(metadata double %81, metadata !932, metadata !DIExpression()), !dbg !950
  %82 = fsub double 1.000000e+00, %1, !dbg !1035
  %83 = fmul double %82, %81, !dbg !1036
  tail call void @llvm.dbg.value(metadata double %83, metadata !938, metadata !DIExpression()), !dbg !950
  %84 = tail call double @llvm.fabs.f64(double %81), !dbg !1037
  %85 = fmul double %84, 2.000000e+00, !dbg !1038
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !1039
  %87 = tail call double @llvm.fabs.f64(double %1), !dbg !1040
  %88 = fadd double %87, 1.000000e+00, !dbg !1041
  %89 = fmul double %88, %86, !dbg !1042
  tail call void @llvm.dbg.value(metadata double %89, metadata !939, metadata !DIExpression()), !dbg !950
  %90 = fsub double %55, %1, !dbg !1043
  tail call void @llvm.dbg.value(metadata double %90, metadata !940, metadata !DIExpression()), !dbg !950
  %91 = fsub double 2.000000e+00, %1, !dbg !1044
  tail call void @llvm.dbg.value(metadata double %91, metadata !941, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8, !dbg !1045
  %92 = call fastcc i32 @hyperg_U_bge1(double noundef %90, double noundef %91, double noundef %2, ptr noundef nonnull %8), !dbg !1046
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !943, metadata !DIExpression()), !dbg !950
  %93 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 2, !dbg !1047
  %94 = load i32, ptr %93, align 8, !dbg !1047, !tbaa !138
  %95 = sitofp i32 %94 to double, !dbg !1048
  %96 = fmul double %95, 0x40026BB1BBB55516, !dbg !1049
  %97 = fadd double %83, %96, !dbg !1050
  %98 = load double, ptr %8, align 8, !dbg !1051, !tbaa !131
  %99 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %8, i64 0, i32 1, !dbg !1052
  %100 = load double, ptr %99, align 8, !dbg !1052, !tbaa !137
  %101 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %97, double noundef %89, double noundef %98, double noundef %100, ptr noundef %3) #8, !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !944, metadata !DIExpression()), !dbg !950
  %102 = icmp eq i32 %101, 0, !dbg !1054
  %103 = select i1 %102, i32 %92, i32 %101, !dbg !1054
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8, !dbg !1055
  br label %104

104:                                              ; preds = %80, %78, %75, %69, %58, %31, %27, %22
  %105 = phi i32 [ 1, %22 ], [ 0, %27 ], [ %53, %31 ], [ 0, %58 ], [ %72, %69 ], [ %76, %75 ], [ %79, %78 ], [ %103, %80 ], !dbg !1056
  ret i32 %105, !dbg !1057
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !1058 i32 @gsl_sf_pow_int_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_negx(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !1063 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1095
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1069, metadata !DIExpression(), metadata !1095, metadata ptr %5, metadata !DIExpression()), !dbg !1096
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1070, metadata !DIExpression(), metadata !1097, metadata ptr %6, metadata !DIExpression()), !dbg !1096
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1080, metadata !DIExpression(), metadata !1098, metadata ptr %7, metadata !DIExpression()), !dbg !1099
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1086, metadata !DIExpression(), metadata !1100, metadata ptr %8, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %0, metadata !1065, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %1, metadata !1066, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %2, metadata !1067, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1068, metadata !DIExpression()), !dbg !1096
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1102
  %9 = tail call double @llvm.floor.f64(double %0), !dbg !1103
  %10 = fcmp oeq double %9, %0, !dbg !1104
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %11 = tail call double @llvm.floor.f64(double %1), !dbg !1105
  %12 = fcmp oeq double %11, %1, !dbg !1106
  tail call void @llvm.dbg.value(metadata i1 %12, metadata !1075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1076, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1077, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1078, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1079, metadata !DIExpression()), !dbg !1096
  %13 = fcmp ole double %1, 0.000000e+00
  %14 = and i1 %13, %12, !dbg !1107
  br i1 %14, label %15, label %22, !dbg !1107

15:                                               ; preds = %4
  %16 = fcmp ole double %0, 0.000000e+00
  %17 = fcmp oge double %0, %1
  %18 = and i1 %16, %17, !dbg !1108
  %19 = and i1 %10, %18, !dbg !1108
  br i1 %19, label %22, label %20, !dbg !1108

20:                                               ; preds = %15
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1109, !tbaa !131
  %21 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1111
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !1112, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1548, i32 noundef 24) #8, !dbg !1113
  br label %113, !dbg !1113

22:                                               ; preds = %15, %4
  %23 = fadd double %0, 1.000000e+00, !dbg !1115
  %24 = fsub double %23, %1, !dbg !1116
  %25 = fneg double %0, !dbg !1117
  %26 = call i32 @gsl_sf_poch_e(double noundef %24, double noundef %25, ptr noundef nonnull %5) #8, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1071, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1073, metadata !DIExpression()), !dbg !1096
  %27 = load double, ptr %5, align 8, !dbg !1119, !tbaa !182
  %28 = fcmp une double %27, 0.000000e+00, !dbg !1120
  br i1 %28, label %29, label %48, !dbg !1121

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1122
  %30 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7) #8, !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1085, metadata !DIExpression()), !dbg !1099
  %31 = icmp eq i32 %26, 0, !dbg !1124
  %32 = select i1 %31, i32 %30, i32 %26, !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1073, metadata !DIExpression()), !dbg !1096
  %33 = load double, ptr %7, align 8, !dbg !1125, !tbaa !182
  %34 = load double, ptr %5, align 8, !dbg !1126, !tbaa !182
  %35 = fmul double %33, %34, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %35, metadata !1076, metadata !DIExpression()), !dbg !1096
  %36 = call double @llvm.fabs.f64(double %35), !dbg !1128
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !1129
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1130
  %39 = load double, ptr %38, align 8, !dbg !1130, !tbaa !190
  %40 = fmul double %34, %39, !dbg !1131
  %41 = call double @llvm.fabs.f64(double %40), !dbg !1132
  %42 = fadd double %37, %41, !dbg !1133
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1134
  %44 = load double, ptr %43, align 8, !dbg !1134, !tbaa !190
  %45 = fmul double %33, %44, !dbg !1135
  %46 = call double @llvm.fabs.f64(double %45), !dbg !1136
  %47 = fadd double %42, %46, !dbg !1137
  tail call void @llvm.dbg.value(metadata double %47, metadata !1077, metadata !DIExpression()), !dbg !1096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1138
  br label %48, !dbg !1139

48:                                               ; preds = %22, %29
  %49 = phi double [ %47, %29 ], [ 0.000000e+00, %22 ], !dbg !1096
  %50 = phi double [ %35, %29 ], [ 0.000000e+00, %22 ], !dbg !1096
  %51 = phi i32 [ %32, %29 ], [ %26, %22 ], !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1073, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %50, metadata !1076, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %49, metadata !1077, metadata !DIExpression()), !dbg !1096
  %52 = fcmp oge double %1, 2.000000e+00
  %53 = and i1 %52, %12, !dbg !1141
  br i1 %53, label %54, label %60, !dbg !1141

54:                                               ; preds = %48
  %55 = fadd double %1, -2.000000e+00
  %56 = fcmp oge double %55, %0
  %57 = and i1 %10, %56, !dbg !1142
  br i1 %57, label %60, label %58, !dbg !1142

58:                                               ; preds = %54
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1143, !tbaa !131
  %59 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1145
  store double 0x7FF8000000000000, ptr %59, align 8, !dbg !1146, !tbaa !137
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1581, i32 noundef 24) #8, !dbg !1147
  br label %113, !dbg !1147

60:                                               ; preds = %54, %48
  %61 = fcmp ole double %0, 0.000000e+00
  %62 = fcmp oge double %1, 1.000000e+00
  %63 = and i1 %61, %62, !dbg !1149
  %64 = and i1 %10, %63, !dbg !1149
  br i1 %64, label %102, label %65, !dbg !1149

65:                                               ; preds = %60
  %66 = fneg double %24, !dbg !1151
  %67 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %66, ptr noundef nonnull %6) #8, !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1072, metadata !DIExpression()), !dbg !1096
  %68 = icmp eq i32 %51, 0, !dbg !1154
  %69 = select i1 %68, i32 %67, i32 %51, !dbg !1154
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !1073, metadata !DIExpression()), !dbg !1096
  %70 = load double, ptr %6, align 8, !dbg !1155, !tbaa !182
  %71 = fcmp une double %70, 0.000000e+00, !dbg !1156
  br i1 %71, label %72, label %102, !dbg !1157

72:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1158
  %73 = fsub double 2.000000e+00, %1, !dbg !1159
  %74 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %24, double noundef %73, double noundef %2, ptr noundef nonnull %8) #8, !dbg !1160
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1091, metadata !DIExpression()), !dbg !1101
  %75 = load double, ptr %8, align 8, !dbg !1161, !tbaa !182
  %76 = load double, ptr %6, align 8, !dbg !1162, !tbaa !182
  %77 = fmul double %75, %76, !dbg !1163
  tail call void @llvm.dbg.value(metadata double %77, metadata !1078, metadata !DIExpression()), !dbg !1096
  %78 = call double @llvm.fabs.f64(double %77), !dbg !1164
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !1165
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1166
  %81 = load double, ptr %80, align 8, !dbg !1166, !tbaa !190
  %82 = fmul double %76, %81, !dbg !1167
  %83 = call double @llvm.fabs.f64(double %82), !dbg !1168
  %84 = fadd double %79, %83, !dbg !1169
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1170
  %86 = load double, ptr %85, align 8, !dbg !1170, !tbaa !190
  %87 = fmul double %75, %86, !dbg !1171
  %88 = call double @llvm.fabs.f64(double %87), !dbg !1172
  %89 = fadd double %84, %88, !dbg !1173
  tail call void @llvm.dbg.value(metadata double %89, metadata !1079, metadata !DIExpression()), !dbg !1096
  %90 = icmp eq i32 %69, 0, !dbg !1174
  %91 = select i1 %90, i32 %74, i32 %69, !dbg !1174
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !1073, metadata !DIExpression()), !dbg !1096
  %92 = fcmp une double %77, 0.000000e+00, !dbg !1175
  br i1 %92, label %93, label %99, !dbg !1176

93:                                               ; preds = %72
  %94 = fsub double 1.000000e+00, %1, !dbg !1177
  %95 = call double @pow(double noundef %2, double noundef %94) #8, !dbg !1178
  tail call void @llvm.dbg.value(metadata double %95, metadata !1092, metadata !DIExpression()), !dbg !1179
  %96 = fmul double %77, %95, !dbg !1180
  tail call void @llvm.dbg.value(metadata double %96, metadata !1078, metadata !DIExpression()), !dbg !1096
  %97 = call double @llvm.fabs.f64(double %95), !dbg !1181
  %98 = fmul double %89, %97, !dbg !1182
  tail call void @llvm.dbg.value(metadata double %98, metadata !1079, metadata !DIExpression()), !dbg !1096
  br label %99, !dbg !1183

99:                                               ; preds = %93, %72
  %100 = phi double [ %96, %93 ], [ %77, %72 ], !dbg !1101
  %101 = phi double [ %98, %93 ], [ %89, %72 ], !dbg !1101
  tail call void @llvm.dbg.value(metadata double %101, metadata !1079, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %100, metadata !1078, metadata !DIExpression()), !dbg !1096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1184
  br label %102, !dbg !1185

102:                                              ; preds = %60, %65, %99
  %103 = phi double [ %100, %99 ], [ 0.000000e+00, %65 ], [ 0.000000e+00, %60 ], !dbg !1096
  %104 = phi double [ %101, %99 ], [ 0.000000e+00, %65 ], [ 0.000000e+00, %60 ], !dbg !1096
  %105 = phi i32 [ %91, %99 ], [ %69, %65 ], [ %51, %60 ], !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !1073, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %104, metadata !1079, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %103, metadata !1078, metadata !DIExpression()), !dbg !1096
  %106 = fadd double %50, %103, !dbg !1186
  store double %106, ptr %3, align 8, !dbg !1187, !tbaa !131
  %107 = call double @llvm.fabs.f64(double %106), !dbg !1188
  %108 = fmul double %107, 0x3CC0000000000000, !dbg !1189
  %109 = fadd double %49, %104, !dbg !1190
  %110 = fadd double %109, %108, !dbg !1191
  %111 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1192
  store double %110, ptr %111, align 8, !dbg !1193, !tbaa !137
  %112 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1194
  store i32 0, ptr %112, align 8, !dbg !1195, !tbaa !138
  br label %113, !dbg !1196

113:                                              ; preds = %102, %58, %20
  %114 = phi i32 [ %105, %102 ], [ 24, %58 ], [ 24, %20 ], !dbg !1096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1197
  ret i32 %114, !dbg !1197
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_bge1(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1198 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1211, metadata !DIExpression(), metadata !1372, metadata ptr %5, metadata !DIExpression()), !dbg !1373
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1212, metadata !DIExpression(), metadata !1374, metadata ptr %6, metadata !DIExpression()), !dbg !1373
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1220, metadata !DIExpression(), metadata !1375, metadata ptr %7, metadata !DIExpression()), !dbg !1376
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1223, metadata !DIExpression(), metadata !1377, metadata ptr %8, metadata !DIExpression()), !dbg !1378
  %9 = alloca double, align 8, !DIAssignID !1379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1226, metadata !DIExpression(), metadata !1379, metadata ptr %9, metadata !DIExpression()), !dbg !1378
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1229, metadata !DIExpression(), metadata !1380, metadata ptr %10, metadata !DIExpression()), !dbg !1381
  %11 = alloca double, align 8, !DIAssignID !1382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1239, metadata !DIExpression(), metadata !1382, metadata ptr %11, metadata !DIExpression()), !dbg !1383
  %12 = alloca double, align 8, !DIAssignID !1384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1240, metadata !DIExpression(), metadata !1384, metadata ptr %12, metadata !DIExpression()), !dbg !1383
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1242, metadata !DIExpression(), metadata !1385, metadata ptr %13, metadata !DIExpression()), !dbg !1383
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1243, metadata !DIExpression(), metadata !1386, metadata ptr %14, metadata !DIExpression()), !dbg !1383
  %15 = alloca double, align 8, !DIAssignID !1387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1281, metadata !DIExpression(), metadata !1387, metadata ptr %15, metadata !DIExpression()), !dbg !1388
  %16 = alloca double, align 8, !DIAssignID !1389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1282, metadata !DIExpression(), metadata !1389, metadata ptr %16, metadata !DIExpression()), !dbg !1388
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1284, metadata !DIExpression(), metadata !1390, metadata ptr %17, metadata !DIExpression()), !dbg !1388
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1285, metadata !DIExpression(), metadata !1391, metadata ptr %18, metadata !DIExpression()), !dbg !1388
  %19 = alloca double, align 8, !DIAssignID !1392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1309, metadata !DIExpression(), metadata !1392, metadata ptr %19, metadata !DIExpression()), !dbg !1393
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1313, metadata !DIExpression(), metadata !1394, metadata ptr %20, metadata !DIExpression()), !dbg !1393
  %21 = alloca double, align 8, !DIAssignID !1395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1315, metadata !DIExpression(), metadata !1395, metadata ptr %21, metadata !DIExpression()), !dbg !1393
  %22 = alloca i32, align 4, !DIAssignID !1396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1317, metadata !DIExpression(), metadata !1396, metadata ptr %22, metadata !DIExpression()), !dbg !1393
  %23 = alloca i32, align 4, !DIAssignID !1397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1342, metadata !DIExpression(), metadata !1397, metadata ptr %23, metadata !DIExpression()), !dbg !1398
  %24 = alloca double, align 8, !DIAssignID !1399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1348, metadata !DIExpression(), metadata !1399, metadata ptr %24, metadata !DIExpression()), !dbg !1400
  %25 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1356, metadata !DIExpression(), metadata !1401, metadata ptr %25, metadata !DIExpression()), !dbg !1402
  %26 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1403
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1358, metadata !DIExpression(), metadata !1403, metadata ptr %26, metadata !DIExpression()), !dbg !1402
  %27 = alloca double, align 8, !DIAssignID !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1359, metadata !DIExpression(), metadata !1404, metadata ptr %27, metadata !DIExpression()), !dbg !1402
  %28 = alloca double, align 8, !DIAssignID !1405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1360, metadata !DIExpression(), metadata !1405, metadata ptr %28, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %0, metadata !1200, metadata !DIExpression()), !dbg !1406
  tail call void @llvm.dbg.value(metadata double %1, metadata !1201, metadata !DIExpression()), !dbg !1406
  tail call void @llvm.dbg.value(metadata double %2, metadata !1202, metadata !DIExpression()), !dbg !1406
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1203, metadata !DIExpression()), !dbg !1406
  %29 = fadd double %0, 5.000000e-01, !dbg !1407
  %30 = tail call double @llvm.floor.f64(double %29), !dbg !1408
  tail call void @llvm.dbg.value(metadata double %30, metadata !1204, metadata !DIExpression()), !dbg !1406
  %31 = fcmp olt double %0, 0.000000e+00, !dbg !1409
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !1205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  %32 = fcmp oeq double %0, 0.000000e+00, !dbg !1410
  br i1 %32, label %33, label %36, !dbg !1411

33:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1412, !tbaa !131
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1414
  store double 0.000000e+00, ptr %34, align 8, !dbg !1415, !tbaa !137
  %35 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1416
  store i32 0, ptr %35, align 8, !dbg !1417, !tbaa !138
  br label %634, !dbg !1418

36:                                               ; preds = %4
  %37 = fsub double %0, %30, !dbg !1419
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1419
  %39 = fcmp olt double %38, 0x3D4F400000000000, !dbg !1419
  tail call void @llvm.dbg.value(metadata !DIArgList(i1 %31, i1 %39), metadata !1205, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  %40 = tail call double @llvm.fabs.f64(double %30)
  %41 = fcmp olt double %40, 0x41DFFFFFFFC00000
  %42 = and i1 %41, %39, !dbg !1420
  %43 = and i1 %31, %42, !dbg !1420
  br i1 %43, label %44, label %63, !dbg !1420

44:                                               ; preds = %36
  %45 = fptosi double %30 to i32, !dbg !1421
  %46 = sub nsw i32 0, %45, !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1206, metadata !DIExpression()), !dbg !1373
  %47 = and i32 %46, 1, !dbg !1423
  %48 = icmp eq i32 %47, 0, !dbg !1423
  tail call void @llvm.dbg.value(metadata double poison, metadata !1210, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1425
  %49 = fadd double %1, -1.000000e+00, !dbg !1426
  %50 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %46, double noundef %49, double noundef %2, ptr noundef nonnull %6) #8, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !1213, metadata !DIExpression()), !dbg !1373
  %51 = call i32 @gsl_sf_lnfact_e(i32 noundef %46, ptr noundef nonnull %5) #8, !dbg !1428
  %52 = load double, ptr %5, align 8, !dbg !1429, !tbaa !182
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1430
  %54 = load double, ptr %53, align 8, !dbg !1430, !tbaa !190
  %55 = load double, ptr %6, align 8, !dbg !1431, !tbaa !182
  %56 = fneg double %55, !dbg !1432
  %57 = select i1 %48, double %55, double %56, !dbg !1432
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1433
  %59 = load double, ptr %58, align 8, !dbg !1433, !tbaa !190
  %60 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %52, double noundef %54, double noundef %57, double noundef %59, ptr noundef %3) #8, !dbg !1434
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !1214, metadata !DIExpression()), !dbg !1435
  %61 = icmp eq i32 %60, 0, !dbg !1436
  %62 = select i1 %61, i32 %50, i32 %60, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1437
  br label %634

63:                                               ; preds = %36
  %64 = tail call double @llvm.fabs.f64(double %0), !dbg !1438
  tail call void @llvm.dbg.value(metadata double %64, metadata !480, metadata !DIExpression()), !dbg !1439
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !1439
  %65 = fcmp ogt double %64, 1.000000e+00, !dbg !1441
  %66 = select i1 %65, double %64, double 1.000000e+00, !dbg !1441
  %67 = fadd double %0, 1.000000e+00, !dbg !1438
  %68 = fsub double %67, %1, !dbg !1438
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !1438
  tail call void @llvm.dbg.value(metadata double %69, metadata !480, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !1442
  %70 = fcmp ogt double %69, 1.000000e+00, !dbg !1444
  %71 = select i1 %70, double %69, double 1.000000e+00, !dbg !1444
  %72 = fmul double %66, %71, !dbg !1438
  %73 = tail call double @llvm.fabs.f64(double %2), !dbg !1438
  %74 = fmul double %73, 0x3FEFAE147AE147AE, !dbg !1438
  %75 = fcmp olt double %72, %74, !dbg !1438
  br i1 %75, label %76, label %89, !dbg !1445

76:                                               ; preds = %63
  %77 = fneg double %0, !dbg !1446
  %78 = tail call double @log(double noundef %2) #8, !dbg !1447
  %79 = fmul double %78, %77, !dbg !1448
  tail call void @llvm.dbg.value(metadata double %79, metadata !1216, metadata !DIExpression()), !dbg !1376
  %80 = tail call double @llvm.fabs.f64(double %79), !dbg !1449
  %81 = fmul double %80, 0x3CC0000000000000, !dbg !1450
  tail call void @llvm.dbg.value(metadata double %81, metadata !1219, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1451
  %82 = call fastcc i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !1452, !range !501
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1221, metadata !DIExpression()), !dbg !1376
  %83 = load double, ptr %7, align 8, !dbg !1453, !tbaa !182
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1454
  %85 = load double, ptr %84, align 8, !dbg !1454, !tbaa !190
  %86 = tail call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %79, double noundef %81, double noundef %83, double noundef %85, ptr noundef %3) #8, !dbg !1455
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !1222, metadata !DIExpression()), !dbg !1376
  %87 = icmp eq i32 %86, 0, !dbg !1456
  %88 = select i1 %87, i32 %82, i32 %86, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1457
  br label %634

89:                                               ; preds = %63
  %90 = fcmp ugt double %64, 1.000000e+00, !dbg !1458
  br i1 %90, label %102, label %91, !dbg !1459

91:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1460
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !1461
  %92 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !1462
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !1227, metadata !DIExpression()), !dbg !1378
  %93 = load double, ptr %9, align 8, !dbg !1463, !tbaa !571
  %94 = call double @llvm.fabs.f64(double %93), !dbg !1464
  %95 = fmul double %94, 0x3CC0000000000000, !dbg !1465
  %96 = load double, ptr %8, align 8, !dbg !1466, !tbaa !182
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1467
  %98 = load double, ptr %97, align 8, !dbg !1467, !tbaa !190
  %99 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %93, double noundef %95, double noundef %96, double noundef %98, ptr noundef %3) #8, !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1228, metadata !DIExpression()), !dbg !1378
  %100 = icmp eq i32 %92, 0, !dbg !1469
  %101 = select i1 %100, i32 %99, i32 %92, !dbg !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !1470
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1470
  br label %634

102:                                              ; preds = %89
  %103 = fcmp olt double %64, 5.000000e+00, !dbg !1471
  %104 = fcmp olt double %1, 5.000000e+00, !dbg !1471
  %105 = and i1 %103, %104, !dbg !1471
  %106 = fcmp olt double %2, 2.000000e+00, !dbg !1471
  %107 = and i1 %105, %106, !dbg !1471
  br i1 %107, label %114, label %108, !dbg !1471

108:                                              ; preds = %102
  %109 = fcmp olt double %64, 1.000000e+01, !dbg !1471
  %110 = fcmp olt double %1, 1.000000e+01, !dbg !1471
  %111 = and i1 %109, %110, !dbg !1471
  %112 = fcmp olt double %2, 1.000000e+00, !dbg !1471
  %113 = and i1 %111, %112, !dbg !1471
  br i1 %113, label %114, label %121, !dbg !1471

114:                                              ; preds = %108, %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1472
  %115 = call fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1232, metadata !DIExpression()), !dbg !1381
  %116 = load double, ptr %10, align 8, !dbg !1474, !tbaa !182
  store double %116, ptr %3, align 8, !dbg !1475, !tbaa !131
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1476
  %118 = load double, ptr %117, align 8, !dbg !1476, !tbaa !190
  %119 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 1, !dbg !1477
  store double %118, ptr %119, align 8, !dbg !1478, !tbaa !137
  %120 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %3, i64 0, i32 2, !dbg !1479
  store i32 0, ptr %120, align 8, !dbg !1480, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1481
  br label %634

121:                                              ; preds = %108
  br i1 %31, label %122, label %317, !dbg !1482

122:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1233, metadata !DIExpression()), !dbg !1383
  %123 = tail call double @llvm.floor.f64(double %0), !dbg !1483
  %124 = fsub double %0, %123, !dbg !1484
  %125 = fadd double %124, -1.000000e+00, !dbg !1485
  tail call void @llvm.dbg.value(metadata double %125, metadata !1236, metadata !DIExpression()), !dbg !1383
  %126 = tail call double @llvm.floor.f64(double %1), !dbg !1486
  %127 = fsub double %1, %126, !dbg !1487
  %128 = fadd double %127, 1.000000e+00, !dbg !1488
  tail call void @llvm.dbg.value(metadata double %128, metadata !1237, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8, !dbg !1489
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8, !dbg !1489
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !1490
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !1491
  %129 = fadd double %125, 1.000000e+00, !dbg !1492
  %130 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %129, double noundef %128, double noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %11), !dbg !1493
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !1244, metadata !DIExpression()), !dbg !1383
  %131 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %125, double noundef %128, double noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %12), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !1245, metadata !DIExpression()), !dbg !1383
  %132 = load double, ptr %13, align 8, !dbg !1495, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %132, metadata !1247, metadata !DIExpression()), !dbg !1383
  %133 = load double, ptr %14, align 8, !dbg !1496, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %133, metadata !1248, metadata !DIExpression()), !dbg !1383
  %134 = load double, ptr %11, align 8, !dbg !1497
  %135 = load double, ptr %12, align 8, !dbg !1497
  %136 = fcmp ogt double %134, %135, !dbg !1497
  %137 = select i1 %136, double %134, double %135, !dbg !1497
  tail call void @llvm.dbg.value(metadata double %137, metadata !1241, metadata !DIExpression()), !dbg !1383
  %138 = fsub double %134, %137, !dbg !1498
  %139 = call double @exp(double noundef %138) #8, !dbg !1499
  %140 = fmul double %132, %139, !dbg !1500
  tail call void @llvm.dbg.value(metadata double %140, metadata !1247, metadata !DIExpression()), !dbg !1383
  %141 = load double, ptr %12, align 8, !dbg !1501, !tbaa !571
  %142 = fsub double %141, %137, !dbg !1502
  %143 = call double @exp(double noundef %142) #8, !dbg !1503
  %144 = fmul double %133, %143, !dbg !1504
  tail call void @llvm.dbg.value(metadata double %144, metadata !1248, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %125, metadata !1250, metadata !DIExpression()), !dbg !1383
  %145 = fadd double %0, 1.000000e-01
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %140, metadata !1247, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %144, metadata !1248, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %125, metadata !1250, metadata !DIExpression()), !dbg !1383
  %146 = fcmp ogt double %125, %145, !dbg !1505
  br i1 %146, label %147, label %179, !dbg !1506

147:                                              ; preds = %122, %173
  %148 = phi i32 [ %176, %173 ], [ 0, %122 ]
  %149 = phi double [ %175, %173 ], [ %140, %122 ]
  %150 = phi double [ %174, %173 ], [ %144, %122 ]
  %151 = phi double [ %177, %173 ], [ %125, %122 ]
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %149, metadata !1247, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %150, metadata !1248, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %151, metadata !1250, metadata !DIExpression()), !dbg !1383
  %152 = fsub double %128, %151, !dbg !1507
  %153 = fadd double %152, -1.000000e+00, !dbg !1508
  %154 = fmul double %151, %153, !dbg !1509
  %155 = fmul double %149, %154, !dbg !1510
  %156 = fmul double %151, 2.000000e+00, !dbg !1511
  %157 = fadd double %156, %2, !dbg !1512
  %158 = fsub double %157, %128, !dbg !1513
  %159 = fmul double %150, %158, !dbg !1514
  %160 = fadd double %155, %159, !dbg !1515
  tail call void @llvm.dbg.value(metadata double %160, metadata !1249, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %150, metadata !1247, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %160, metadata !1248, metadata !DIExpression()), !dbg !1383
  %161 = call double @llvm.fabs.f64(double %160), !dbg !1516
  tail call void @llvm.dbg.value(metadata double %161, metadata !1251, metadata !DIExpression()), !dbg !1517
  %162 = fcmp ogt double %161, 0x5FEFFFFFFFFFFFFF, !dbg !1518
  br i1 %162, label %163, label %167, !dbg !1516

163:                                              ; preds = %147
  %164 = fdiv double %160, 0x5FEFFFFFFFFFFFFF, !dbg !1520
  tail call void @llvm.dbg.value(metadata double %164, metadata !1248, metadata !DIExpression()), !dbg !1383
  %165 = fdiv double %150, 0x5FEFFFFFFFFFFFFF, !dbg !1520
  tail call void @llvm.dbg.value(metadata double %165, metadata !1247, metadata !DIExpression()), !dbg !1383
  %166 = add nsw i32 %148, 1, !dbg !1520
  tail call void @llvm.dbg.value(metadata i32 %166, metadata !1238, metadata !DIExpression()), !dbg !1383
  br label %173, !dbg !1520

167:                                              ; preds = %147
  %168 = fcmp olt double %161, 0x1FF0000000000001, !dbg !1522
  br i1 %168, label %169, label %173, !dbg !1518

169:                                              ; preds = %167
  %170 = fmul double %160, 0x5FEFFFFFFFFFFFFF, !dbg !1524
  tail call void @llvm.dbg.value(metadata double %170, metadata !1248, metadata !DIExpression()), !dbg !1383
  %171 = fmul double %150, 0x5FEFFFFFFFFFFFFF, !dbg !1524
  tail call void @llvm.dbg.value(metadata double %171, metadata !1247, metadata !DIExpression()), !dbg !1383
  %172 = add nsw i32 %148, -1, !dbg !1524
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !1238, metadata !DIExpression()), !dbg !1383
  br label %173, !dbg !1524

173:                                              ; preds = %167, %169, %163
  %174 = phi double [ %164, %163 ], [ %170, %169 ], [ %160, %167 ], !dbg !1526
  %175 = phi double [ %165, %163 ], [ %171, %169 ], [ %150, %167 ], !dbg !1526
  %176 = phi i32 [ %166, %163 ], [ %172, %169 ], [ %148, %167 ], !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %175, metadata !1247, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %174, metadata !1248, metadata !DIExpression()), !dbg !1383
  %177 = fadd double %151, -1.000000e+00, !dbg !1527
  tail call void @llvm.dbg.value(metadata double %177, metadata !1250, metadata !DIExpression()), !dbg !1383
  %178 = fcmp ogt double %177, %145, !dbg !1505
  br i1 %178, label %147, label %179, !dbg !1506, !llvm.loop !1528

179:                                              ; preds = %173, %122
  %180 = phi double [ %144, %122 ], [ %174, %173 ], !dbg !1383
  %181 = phi double [ %140, %122 ], [ %175, %173 ], !dbg !1383
  %182 = phi i32 [ 0, %122 ], [ %176, %173 ], !dbg !1383
  %183 = fcmp olt double %1, 2.000000e+00, !dbg !1530
  br i1 %183, label %184, label %222, !dbg !1531

184:                                              ; preds = %179
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1256, metadata !DIExpression()), !dbg !1532
  %185 = sitofp i32 %182 to double, !dbg !1533
  %186 = fmul double %185, 0x40762E42FEFA39EF, !dbg !1534
  %187 = fadd double %137, %186, !dbg !1535
  tail call void @llvm.dbg.value(metadata double %187, metadata !1259, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1532
  %188 = call double @llvm.fabs.f64(double %137), !dbg !1536
  %189 = fadd double %188, %186, !dbg !1537
  %190 = fmul double %189, 0x3CC0000000000000, !dbg !1538
  tail call void @llvm.dbg.value(metadata double %190, metadata !1259, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  tail call void @llvm.dbg.value(metadata double %180, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1532
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1539
  %192 = load double, ptr %191, align 8, !dbg !1539, !tbaa !190
  %193 = load double, ptr %13, align 8, !dbg !1540, !tbaa !182
  %194 = fdiv double %192, %193, !dbg !1541
  %195 = call double @llvm.fabs.f64(double %180), !dbg !1542
  %196 = fmul double %180, %194, !dbg !1543
  %197 = call double @llvm.fabs.f64(double %196), !dbg !1543
  tail call void @llvm.dbg.value(metadata double %197, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1544
  %199 = load double, ptr %198, align 8, !dbg !1544, !tbaa !190
  %200 = load double, ptr %14, align 8, !dbg !1545, !tbaa !182
  %201 = fdiv double %199, %200, !dbg !1546
  %202 = fmul double %180, %201, !dbg !1547
  %203 = call double @llvm.fabs.f64(double %202), !dbg !1547
  %204 = fadd double %197, %203, !dbg !1548
  tail call void @llvm.dbg.value(metadata double %204, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %205 = fsub double %0, %125, !dbg !1549
  %206 = call double @llvm.fabs.f64(double %205), !dbg !1550
  %207 = fadd double %206, 1.000000e+00, !dbg !1551
  %208 = fmul double %207, 0x3CC0000000000000, !dbg !1552
  %209 = fmul double %208, %195, !dbg !1553
  %210 = fadd double %209, %204, !dbg !1554
  tail call void @llvm.dbg.value(metadata double %210, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %211 = load double, ptr %11, align 8, !dbg !1555, !tbaa !571
  %212 = fsub double %211, %137, !dbg !1556
  %213 = call double @llvm.fabs.f64(double %212), !dbg !1557
  %214 = fadd double %213, 1.000000e+00, !dbg !1558
  %215 = fmul double %214, %210, !dbg !1559
  tail call void @llvm.dbg.value(metadata double %215, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %216 = load double, ptr %12, align 8, !dbg !1560, !tbaa !571
  %217 = fsub double %216, %137, !dbg !1561
  %218 = call double @llvm.fabs.f64(double %217), !dbg !1562
  %219 = fadd double %218, 1.000000e+00, !dbg !1563
  %220 = fmul double %219, %215, !dbg !1564
  tail call void @llvm.dbg.value(metadata double %220, metadata !1260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1532
  %221 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %187, double noundef %190, double noundef %180, double noundef %220, ptr noundef %3) #8, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !1246, metadata !DIExpression()), !dbg !1383
  br label %311, !dbg !1566

222:                                              ; preds = %179
  %223 = fsub double %1, %128, !dbg !1567
  %224 = call double @llvm.fabs.f64(double %223), !dbg !1568
  %225 = fsub double %0, %125, !dbg !1569
  %226 = call double @llvm.fabs.f64(double %225), !dbg !1570
  %227 = fadd double %226, %224, !dbg !1571
  %228 = fadd double %227, 1.000000e+00, !dbg !1572
  tail call void @llvm.dbg.value(metadata double %228, metadata !1261, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1263, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %180, metadata !1266, metadata !DIExpression()), !dbg !1573
  %229 = fsub double %128, %0, !dbg !1574
  %230 = fadd double %229, -1.000000e+00, !dbg !1575
  %231 = fmul double %230, %0, !dbg !1576
  %232 = fmul double %231, %181, !dbg !1577
  %233 = fadd double %0, %2, !dbg !1578
  %234 = fmul double %233, %180, !dbg !1579
  %235 = fadd double %234, %232, !dbg !1580
  %236 = fdiv double %235, %2, !dbg !1581
  tail call void @llvm.dbg.value(metadata double %236, metadata !1267, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double poison, metadata !1269, metadata !DIExpression()), !dbg !1573
  %237 = fadd double %1, -1.000000e-01
  %238 = fadd double %128, 1.000000e+00, !dbg !1582
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %238, metadata !1269, metadata !DIExpression()), !dbg !1573
  %239 = fcmp olt double %238, %237, !dbg !1583
  br i1 %239, label %240, label %270, !dbg !1584

240:                                              ; preds = %222, %264
  %241 = phi double [ %268, %264 ], [ %238, %222 ]
  %242 = phi i32 [ %267, %264 ], [ %182, %222 ]
  %243 = phi double [ %266, %264 ], [ %180, %222 ]
  %244 = phi double [ %265, %264 ], [ %236, %222 ]
  tail call void @llvm.dbg.value(metadata i32 %242, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %243, metadata !1266, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %244, metadata !1267, metadata !DIExpression()), !dbg !1573
  %245 = fsub double %67, %241, !dbg !1585
  %246 = fmul double %245, %243, !dbg !1586
  %247 = fadd double %241, %2, !dbg !1587
  %248 = fadd double %247, -1.000000e+00, !dbg !1588
  %249 = fmul double %244, %248, !dbg !1589
  %250 = fadd double %246, %249, !dbg !1590
  %251 = fdiv double %250, %2, !dbg !1591
  tail call void @llvm.dbg.value(metadata double %251, metadata !1268, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %244, metadata !1266, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %251, metadata !1267, metadata !DIExpression()), !dbg !1573
  %252 = call double @llvm.fabs.f64(double %251), !dbg !1592
  tail call void @llvm.dbg.value(metadata double %252, metadata !1270, metadata !DIExpression()), !dbg !1593
  %253 = fcmp ogt double %252, 0x5FEFFFFFFFFFFFFF, !dbg !1594
  br i1 %253, label %254, label %258, !dbg !1592

254:                                              ; preds = %240
  %255 = fdiv double %251, 0x5FEFFFFFFFFFFFFF, !dbg !1596
  tail call void @llvm.dbg.value(metadata double %255, metadata !1267, metadata !DIExpression()), !dbg !1573
  %256 = fdiv double %244, 0x5FEFFFFFFFFFFFFF, !dbg !1596
  tail call void @llvm.dbg.value(metadata double %256, metadata !1266, metadata !DIExpression()), !dbg !1573
  %257 = add nsw i32 %242, 1, !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %257, metadata !1238, metadata !DIExpression()), !dbg !1383
  br label %264, !dbg !1596

258:                                              ; preds = %240
  %259 = fcmp olt double %252, 0x1FF0000000000001, !dbg !1598
  br i1 %259, label %260, label %264, !dbg !1594

260:                                              ; preds = %258
  %261 = fmul double %251, 0x5FEFFFFFFFFFFFFF, !dbg !1600
  tail call void @llvm.dbg.value(metadata double %261, metadata !1267, metadata !DIExpression()), !dbg !1573
  %262 = fmul double %244, 0x5FEFFFFFFFFFFFFF, !dbg !1600
  tail call void @llvm.dbg.value(metadata double %262, metadata !1266, metadata !DIExpression()), !dbg !1573
  %263 = add nsw i32 %242, -1, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %263, metadata !1238, metadata !DIExpression()), !dbg !1383
  br label %264, !dbg !1600

264:                                              ; preds = %258, %260, %254
  %265 = phi double [ %255, %254 ], [ %261, %260 ], [ %251, %258 ], !dbg !1602
  %266 = phi double [ %256, %254 ], [ %262, %260 ], [ %244, %258 ], !dbg !1602
  %267 = phi i32 [ %257, %254 ], [ %263, %260 ], [ %242, %258 ], !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %267, metadata !1238, metadata !DIExpression()), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %266, metadata !1266, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %265, metadata !1267, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata double poison, metadata !1269, metadata !DIExpression()), !dbg !1573
  %268 = fadd double %241, 1.000000e+00, !dbg !1582
  tail call void @llvm.dbg.value(metadata double %268, metadata !1269, metadata !DIExpression()), !dbg !1573
  %269 = fcmp olt double %268, %237, !dbg !1583
  br i1 %269, label %240, label %270, !dbg !1584, !llvm.loop !1603

270:                                              ; preds = %264, %222
  %271 = phi double [ %236, %222 ], [ %265, %264 ], !dbg !1573
  %272 = phi i32 [ %182, %222 ], [ %267, %264 ], !dbg !1383
  %273 = sitofp i32 %272 to double, !dbg !1605
  %274 = fmul double %273, 0x40762E42FEFA39EF, !dbg !1606
  %275 = fadd double %137, %274, !dbg !1607
  tail call void @llvm.dbg.value(metadata double %275, metadata !1264, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1573
  %276 = call double @llvm.fabs.f64(double %137), !dbg !1608
  %277 = call double @llvm.fabs.f64(double %274), !dbg !1609
  %278 = fadd double %276, %277, !dbg !1610
  %279 = fmul double %278, 0x3CC0000000000000, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %279, metadata !1264, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %271, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1573
  %280 = fmul double %228, 2.000000e+00, !dbg !1612
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1613
  %282 = load double, ptr %281, align 8, !dbg !1613, !tbaa !190
  %283 = load double, ptr %13, align 8, !dbg !1614, !tbaa !182
  %284 = fdiv double %282, %283, !dbg !1615
  %285 = call double @llvm.fabs.f64(double %284), !dbg !1616
  %286 = fmul double %280, %285, !dbg !1617
  %287 = call double @llvm.fabs.f64(double %271), !dbg !1618
  %288 = fmul double %287, %286, !dbg !1619
  tail call void @llvm.dbg.value(metadata double %288, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1620
  %290 = load double, ptr %289, align 8, !dbg !1620, !tbaa !190
  %291 = load double, ptr %14, align 8, !dbg !1621, !tbaa !182
  %292 = fdiv double %290, %291, !dbg !1622
  %293 = call double @llvm.fabs.f64(double %292), !dbg !1623
  %294 = fmul double %280, %293, !dbg !1624
  %295 = fmul double %287, %294, !dbg !1625
  %296 = fadd double %288, %295, !dbg !1626
  tail call void @llvm.dbg.value(metadata double %296, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  %297 = fmul double %228, 0x3CC0000000000000, !dbg !1627
  %298 = fmul double %297, %287, !dbg !1628
  %299 = fadd double %298, %296, !dbg !1629
  tail call void @llvm.dbg.value(metadata double %299, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  %300 = load double, ptr %11, align 8, !dbg !1630, !tbaa !571
  %301 = fsub double %300, %137, !dbg !1631
  %302 = call double @llvm.fabs.f64(double %301), !dbg !1632
  %303 = fadd double %302, 1.000000e+00, !dbg !1633
  %304 = fmul double %303, %299, !dbg !1634
  tail call void @llvm.dbg.value(metadata double %304, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  %305 = load double, ptr %12, align 8, !dbg !1635, !tbaa !571
  %306 = fsub double %305, %137, !dbg !1636
  %307 = call double @llvm.fabs.f64(double %306), !dbg !1637
  %308 = fadd double %307, 1.000000e+00, !dbg !1638
  %309 = fmul double %308, %304, !dbg !1639
  tail call void @llvm.dbg.value(metadata double %309, metadata !1265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1573
  %310 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %275, double noundef %279, double noundef %271, double noundef %309, ptr noundef %3) #8, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %310, metadata !1246, metadata !DIExpression()), !dbg !1383
  br label %311

311:                                              ; preds = %270, %184
  %312 = phi i32 [ %221, %184 ], [ %310, %270 ], !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %312, metadata !1246, metadata !DIExpression()), !dbg !1383
  %313 = icmp eq i32 %312, 0, !dbg !1642
  %314 = icmp eq i32 %130, 0, !dbg !1642
  %315 = select i1 %314, i32 %131, i32 %130, !dbg !1642
  %316 = select i1 %313, i32 %315, i32 %312, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8, !dbg !1643
  br label %634

317:                                              ; preds = %121
  %318 = fmul double %0, 2.000000e+00, !dbg !1644
  %319 = fadd double %318, %2, !dbg !1645
  %320 = fcmp ugt double %319, %1, !dbg !1646
  br i1 %320, label %421, label %321, !dbg !1647

321:                                              ; preds = %317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1275, metadata !DIExpression()), !dbg !1388
  %322 = tail call double @llvm.floor.f64(double %0), !dbg !1648
  %323 = fsub double %0, %322, !dbg !1649
  tail call void @llvm.dbg.value(metadata double %323, metadata !1278, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1279, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8, !dbg !1650
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8, !dbg !1650
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !1651
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !1652
  %324 = fadd double %323, -1.000000e+00, !dbg !1653
  %325 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %324, double noundef %1, double noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %15), !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %325, metadata !1286, metadata !DIExpression()), !dbg !1388
  %326 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %323, double noundef %1, double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %16), !dbg !1655
  tail call void @llvm.dbg.value(metadata i32 %326, metadata !1287, metadata !DIExpression()), !dbg !1388
  %327 = load double, ptr %17, align 8, !dbg !1656, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %327, metadata !1291, metadata !DIExpression()), !dbg !1388
  %328 = load double, ptr %18, align 8, !dbg !1657, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %328, metadata !1292, metadata !DIExpression()), !dbg !1388
  %329 = load double, ptr %15, align 8, !dbg !1658
  %330 = load double, ptr %16, align 8, !dbg !1658
  %331 = fcmp ogt double %329, %330, !dbg !1658
  %332 = select i1 %331, double %329, double %330, !dbg !1658
  tail call void @llvm.dbg.value(metadata double %332, metadata !1283, metadata !DIExpression()), !dbg !1388
  %333 = fsub double %329, %332, !dbg !1659
  %334 = call double @exp(double noundef %333) #8, !dbg !1660
  tail call void @llvm.dbg.value(metadata double poison, metadata !1291, metadata !DIExpression()), !dbg !1388
  %335 = load double, ptr %16, align 8, !dbg !1661, !tbaa !571
  %336 = fsub double %335, %332, !dbg !1662
  %337 = call double @exp(double noundef %336) #8, !dbg !1663
  %338 = fmul double %328, %337, !dbg !1664
  tail call void @llvm.dbg.value(metadata double %338, metadata !1292, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %323, metadata !1294, metadata !DIExpression()), !dbg !1388
  %339 = fadd double %0, -1.000000e-01
  %340 = fcmp olt double %323, %339, !dbg !1665
  br i1 %340, label %341, label %378, !dbg !1666

341:                                              ; preds = %321
  %342 = fmul double %327, %334, !dbg !1667
  tail call void @llvm.dbg.value(metadata double %342, metadata !1291, metadata !DIExpression()), !dbg !1388
  br label %343, !dbg !1666

343:                                              ; preds = %341, %370
  %344 = phi i32 [ %373, %370 ], [ 0, %341 ]
  %345 = phi double [ %372, %370 ], [ %342, %341 ]
  %346 = phi double [ %371, %370 ], [ %338, %341 ]
  %347 = phi double [ %354, %370 ], [ %323, %341 ]
  tail call void @llvm.dbg.value(metadata i32 %344, metadata !1275, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %345, metadata !1291, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %346, metadata !1292, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %347, metadata !1294, metadata !DIExpression()), !dbg !1388
  %348 = fmul double %347, 2.000000e+00, !dbg !1668
  %349 = fsub double %1, %348, !dbg !1669
  %350 = fsub double %349, %2, !dbg !1670
  %351 = fmul double %346, %350, !dbg !1671
  %352 = fadd double %345, %351, !dbg !1672
  %353 = fneg double %352, !dbg !1673
  %354 = fadd double %347, 1.000000e+00, !dbg !1674
  %355 = fsub double %354, %1, !dbg !1675
  %356 = fmul double %347, %355, !dbg !1676
  %357 = fdiv double %353, %356, !dbg !1677
  tail call void @llvm.dbg.value(metadata double %357, metadata !1293, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %346, metadata !1291, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %357, metadata !1292, metadata !DIExpression()), !dbg !1388
  %358 = call double @llvm.fabs.f64(double %357), !dbg !1678
  tail call void @llvm.dbg.value(metadata double %358, metadata !1295, metadata !DIExpression()), !dbg !1679
  %359 = fcmp ogt double %358, 0x5FEFFFFFFFFFFFFF, !dbg !1680
  br i1 %359, label %360, label %364, !dbg !1678

360:                                              ; preds = %343
  %361 = fdiv double %357, 0x5FEFFFFFFFFFFFFF, !dbg !1682
  tail call void @llvm.dbg.value(metadata double %361, metadata !1292, metadata !DIExpression()), !dbg !1388
  %362 = fdiv double %346, 0x5FEFFFFFFFFFFFFF, !dbg !1682
  tail call void @llvm.dbg.value(metadata double %362, metadata !1291, metadata !DIExpression()), !dbg !1388
  %363 = add nsw i32 %344, 1, !dbg !1682
  tail call void @llvm.dbg.value(metadata i32 %363, metadata !1275, metadata !DIExpression()), !dbg !1388
  br label %370, !dbg !1682

364:                                              ; preds = %343
  %365 = fcmp olt double %358, 0x1FF0000000000001, !dbg !1684
  br i1 %365, label %366, label %370, !dbg !1680

366:                                              ; preds = %364
  %367 = fmul double %357, 0x5FEFFFFFFFFFFFFF, !dbg !1686
  tail call void @llvm.dbg.value(metadata double %367, metadata !1292, metadata !DIExpression()), !dbg !1388
  %368 = fmul double %346, 0x5FEFFFFFFFFFFFFF, !dbg !1686
  tail call void @llvm.dbg.value(metadata double %368, metadata !1291, metadata !DIExpression()), !dbg !1388
  %369 = add nsw i32 %344, -1, !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %369, metadata !1275, metadata !DIExpression()), !dbg !1388
  br label %370, !dbg !1686

370:                                              ; preds = %364, %366, %360
  %371 = phi double [ %361, %360 ], [ %367, %366 ], [ %357, %364 ], !dbg !1688
  %372 = phi double [ %362, %360 ], [ %368, %366 ], [ %346, %364 ], !dbg !1688
  %373 = phi i32 [ %363, %360 ], [ %369, %366 ], [ %344, %364 ], !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %373, metadata !1275, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %372, metadata !1291, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %371, metadata !1292, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %354, metadata !1294, metadata !DIExpression()), !dbg !1388
  %374 = fcmp olt double %354, %339, !dbg !1665
  br i1 %374, label %343, label %375, !dbg !1666, !llvm.loop !1689

375:                                              ; preds = %370
  %376 = sitofp i32 %373 to double, !dbg !1691
  %377 = fmul double %376, 0x40762E42FEFA39EF, !dbg !1692
  br label %378, !dbg !1691

378:                                              ; preds = %375, %321
  %379 = phi double [ %338, %321 ], [ %371, %375 ], !dbg !1388
  %380 = phi double [ 0.000000e+00, %321 ], [ %377, %375 ], !dbg !1388
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1280, metadata !DIExpression()), !dbg !1388
  %381 = fadd double %332, %380, !dbg !1693
  tail call void @llvm.dbg.value(metadata double %381, metadata !1289, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1388
  %382 = call double @llvm.fabs.f64(double %332), !dbg !1694
  %383 = call double @llvm.fabs.f64(double %380), !dbg !1695
  %384 = fadd double %382, %383, !dbg !1696
  %385 = fmul double %384, 0x3CC0000000000000, !dbg !1697
  tail call void @llvm.dbg.value(metadata double %385, metadata !1289, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  tail call void @llvm.dbg.value(metadata double %379, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1388
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1698
  %387 = load double, ptr %386, align 8, !dbg !1698, !tbaa !190
  %388 = load double, ptr %17, align 8, !dbg !1699, !tbaa !182
  %389 = fdiv double %387, %388, !dbg !1700
  %390 = call double @llvm.fabs.f64(double %379), !dbg !1701
  %391 = fmul double %379, %389, !dbg !1702
  %392 = call double @llvm.fabs.f64(double %391), !dbg !1702
  tail call void @llvm.dbg.value(metadata double %392, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  %393 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1703
  %394 = load double, ptr %393, align 8, !dbg !1703, !tbaa !190
  %395 = load double, ptr %18, align 8, !dbg !1704, !tbaa !182
  %396 = fdiv double %394, %395, !dbg !1705
  %397 = fmul double %379, %396, !dbg !1706
  %398 = call double @llvm.fabs.f64(double %397), !dbg !1706
  %399 = fadd double %392, %398, !dbg !1707
  tail call void @llvm.dbg.value(metadata double %399, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  %400 = fsub double %0, %323, !dbg !1708
  %401 = call double @llvm.fabs.f64(double %400), !dbg !1709
  %402 = fadd double %401, 1.000000e+00, !dbg !1710
  %403 = fmul double %402, 0x3CC0000000000000, !dbg !1711
  %404 = fmul double %403, %390, !dbg !1712
  %405 = fadd double %404, %399, !dbg !1713
  tail call void @llvm.dbg.value(metadata double %405, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  %406 = load double, ptr %15, align 8, !dbg !1714, !tbaa !571
  %407 = fsub double %406, %332, !dbg !1715
  %408 = call double @llvm.fabs.f64(double %407), !dbg !1716
  %409 = fadd double %408, 1.000000e+00, !dbg !1717
  %410 = fmul double %409, %405, !dbg !1718
  tail call void @llvm.dbg.value(metadata double %410, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  %411 = load double, ptr %16, align 8, !dbg !1719, !tbaa !571
  %412 = fsub double %411, %332, !dbg !1720
  %413 = call double @llvm.fabs.f64(double %412), !dbg !1721
  %414 = fadd double %413, 1.000000e+00, !dbg !1722
  %415 = fmul double %414, %410, !dbg !1723
  tail call void @llvm.dbg.value(metadata double %415, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1388
  %416 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %381, double noundef %385, double noundef %379, double noundef %415, ptr noundef %3) #8, !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %416, metadata !1288, metadata !DIExpression()), !dbg !1388
  %417 = icmp eq i32 %416, 0, !dbg !1725
  %418 = icmp eq i32 %325, 0, !dbg !1725
  %419 = select i1 %418, i32 %326, i32 %325, !dbg !1725
  %420 = select i1 %417, i32 %419, i32 %416, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8, !dbg !1726
  br label %634

421:                                              ; preds = %317
  %422 = fcmp ugt double %1, %2, !dbg !1727
  %423 = tail call double @llvm.floor.f64(double %0), !dbg !1728
  %424 = fsub double %0, %423, !dbg !1728
  br i1 %422, label %502, label %425, !dbg !1729

425:                                              ; preds = %421
  tail call void @llvm.dbg.value(metadata double %424, metadata !1300, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1304, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1305, metadata !DIExpression()), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8, !dbg !1730
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8, !dbg !1731
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8, !dbg !1732
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #8, !dbg !1733
  %426 = call fastcc i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %21, ptr noundef nonnull %22), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %426, metadata !1318, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double poison, metadata !1316, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1311, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double poison, metadata !1310, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %0, metadata !1314, metadata !DIExpression()), !dbg !1393
  %427 = fadd double %424, 1.000000e-01
  %428 = fcmp olt double %427, %0, !dbg !1735
  br i1 %428, label %429, label %469, !dbg !1736

429:                                              ; preds = %425
  %430 = load double, ptr %21, align 8, !dbg !1737, !tbaa !571
  %431 = fdiv double %430, %0, !dbg !1738
  tail call void @llvm.dbg.value(metadata double %431, metadata !1316, metadata !DIExpression()), !dbg !1393
  %432 = fmul double %431, 0x2000000000000000, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %432, metadata !1310, metadata !DIExpression()), !dbg !1393
  br label %433, !dbg !1736

433:                                              ; preds = %429, %460
  %434 = phi i32 [ %463, %460 ], [ 0, %429 ]
  %435 = phi double [ %462, %460 ], [ %432, %429 ]
  %436 = phi double [ %461, %460 ], [ 0x2000000000000000, %429 ]
  %437 = phi double [ %464, %460 ], [ %0, %429 ]
  tail call void @llvm.dbg.value(metadata i32 %434, metadata !1305, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %435, metadata !1310, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %436, metadata !1311, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %437, metadata !1314, metadata !DIExpression()), !dbg !1393
  %438 = fmul double %437, 2.000000e+00, !dbg !1740
  %439 = fsub double %1, %438, !dbg !1741
  %440 = fsub double %439, %2, !dbg !1742
  %441 = fmul double %436, %440, !dbg !1743
  %442 = fadd double %437, 1.000000e+00, !dbg !1744
  %443 = fsub double %442, %1, !dbg !1745
  %444 = fmul double %437, %443, !dbg !1746
  %445 = fmul double %435, %444, !dbg !1747
  %446 = fadd double %441, %445, !dbg !1748
  %447 = fneg double %446, !dbg !1749
  tail call void @llvm.dbg.value(metadata double %447, metadata !1312, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %436, metadata !1310, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %447, metadata !1311, metadata !DIExpression()), !dbg !1393
  %448 = tail call double @llvm.fabs.f64(double %447), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %448, metadata !1321, metadata !DIExpression()), !dbg !1751
  %449 = fcmp ogt double %448, 0x5FEFFFFFFFFFFFFF, !dbg !1752
  br i1 %449, label %450, label %454, !dbg !1750

450:                                              ; preds = %433
  %451 = fdiv double %446, 0xDFEFFFFFFFFFFFFF, !dbg !1754
  tail call void @llvm.dbg.value(metadata double %451, metadata !1311, metadata !DIExpression()), !dbg !1393
  %452 = fdiv double %436, 0x5FEFFFFFFFFFFFFF, !dbg !1754
  tail call void @llvm.dbg.value(metadata double %452, metadata !1310, metadata !DIExpression()), !dbg !1393
  %453 = add nsw i32 %434, 1, !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %453, metadata !1305, metadata !DIExpression()), !dbg !1393
  br label %460, !dbg !1754

454:                                              ; preds = %433
  %455 = fcmp olt double %448, 0x1FF0000000000001, !dbg !1756
  br i1 %455, label %456, label %460, !dbg !1752

456:                                              ; preds = %454
  %457 = fmul double %446, 0xDFEFFFFFFFFFFFFF, !dbg !1758
  tail call void @llvm.dbg.value(metadata double %457, metadata !1311, metadata !DIExpression()), !dbg !1393
  %458 = fmul double %436, 0x5FEFFFFFFFFFFFFF, !dbg !1758
  tail call void @llvm.dbg.value(metadata double %458, metadata !1310, metadata !DIExpression()), !dbg !1393
  %459 = add nsw i32 %434, -1, !dbg !1758
  tail call void @llvm.dbg.value(metadata i32 %459, metadata !1305, metadata !DIExpression()), !dbg !1393
  br label %460, !dbg !1758

460:                                              ; preds = %454, %456, %450
  %461 = phi double [ %451, %450 ], [ %457, %456 ], [ %447, %454 ], !dbg !1760
  %462 = phi double [ %452, %450 ], [ %458, %456 ], [ %436, %454 ], !dbg !1760
  %463 = phi i32 [ %453, %450 ], [ %459, %456 ], [ %434, %454 ], !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 %463, metadata !1305, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %462, metadata !1310, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double %461, metadata !1311, metadata !DIExpression()), !dbg !1393
  %464 = fadd double %437, -1.000000e+00, !dbg !1761
  tail call void @llvm.dbg.value(metadata double %464, metadata !1314, metadata !DIExpression()), !dbg !1393
  %465 = fcmp ogt double %464, %427, !dbg !1735
  br i1 %465, label %433, label %466, !dbg !1736, !llvm.loop !1762

466:                                              ; preds = %460
  %467 = sitofp i32 %463 to double, !dbg !1764
  %468 = fmul double %467, 0x40762E42FEFA39EF, !dbg !1765
  br label %469, !dbg !1766

469:                                              ; preds = %466, %425
  %470 = phi double [ 0x2000000000000000, %425 ], [ %461, %466 ], !dbg !1393
  %471 = phi double [ 0.000000e+00, %425 ], [ %468, %466 ], !dbg !1393
  %472 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %424, double noundef %1, double noundef %2, ptr noundef nonnull %20, ptr noundef nonnull %19), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 %472, metadata !1319, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1308, metadata !DIExpression()), !dbg !1393
  %473 = load double, ptr %19, align 8, !dbg !1767, !tbaa !571
  %474 = fsub double %473, %471, !dbg !1768
  tail call void @llvm.dbg.value(metadata double %474, metadata !1306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1393
  %475 = call double @llvm.fabs.f64(double %473), !dbg !1769
  %476 = call double @llvm.fabs.f64(double %471), !dbg !1770
  %477 = fadd double %476, %475, !dbg !1771
  %478 = fmul double %477, 0x3CC0000000000000, !dbg !1772
  tail call void @llvm.dbg.value(metadata double %478, metadata !1306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1393
  %479 = load double, ptr %20, align 8, !dbg !1773, !tbaa !182
  %480 = fdiv double %479, %470, !dbg !1774
  %481 = fmul double %480, 0x2000000000000000, !dbg !1775
  tail call void @llvm.dbg.value(metadata double %481, metadata !1307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1393
  %482 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !1776
  %483 = load double, ptr %482, align 8, !dbg !1776, !tbaa !190
  %484 = call double @llvm.fabs.f64(double %470), !dbg !1777
  %485 = fdiv double %483, %484, !dbg !1778
  %486 = fmul double %485, 0x2000000000000000, !dbg !1779
  tail call void @llvm.dbg.value(metadata double %486, metadata !1307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1393
  %487 = fsub double %424, %0, !dbg !1780
  %488 = call double @llvm.fabs.f64(double %487), !dbg !1781
  %489 = load i32, ptr %22, align 4, !dbg !1782, !tbaa !683
  %490 = sitofp i32 %489 to double, !dbg !1782
  %491 = fadd double %488, %490, !dbg !1783
  %492 = fadd double %491, 1.000000e+00, !dbg !1784
  %493 = fmul double %492, 0x3CC0000000000000, !dbg !1785
  %494 = call double @llvm.fabs.f64(double %481), !dbg !1786
  %495 = fmul double %494, %493, !dbg !1787
  %496 = fadd double %486, %495, !dbg !1788
  tail call void @llvm.dbg.value(metadata double %496, metadata !1307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1393
  %497 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %474, double noundef %478, double noundef %481, double noundef %496, ptr noundef %3) #8, !dbg !1789
  tail call void @llvm.dbg.value(metadata i32 %497, metadata !1320, metadata !DIExpression()), !dbg !1393
  %498 = icmp eq i32 %497, 0, !dbg !1790
  %499 = icmp eq i32 %472, 0, !dbg !1790
  %500 = select i1 %499, i32 %426, i32 %472, !dbg !1790
  %501 = select i1 %498, i32 %500, i32 %497, !dbg !1790
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #8, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8, !dbg !1791
  br label %634

502:                                              ; preds = %421
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1326, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1328, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !1329, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata double %424, metadata !1330, metadata !DIExpression()), !dbg !1398
  %503 = fcmp oeq double %424, 0.000000e+00, !dbg !1792
  %504 = select i1 %503, double 1.000000e+00, double %424, !dbg !1793
  tail call void @llvm.dbg.value(metadata double %504, metadata !1331, metadata !DIExpression()), !dbg !1398
  %505 = fsub double %1, %2, !dbg !1794
  %506 = fmul double %505, 5.000000e-01, !dbg !1795
  %507 = fsub double %506, %504, !dbg !1796
  %508 = tail call double @llvm.ceil.f64(double %507), !dbg !1797
  %509 = fadd double %504, %508, !dbg !1798
  tail call void @llvm.dbg.value(metadata double %509, metadata !1332, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #8, !dbg !1799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #8, !dbg !1800
  %510 = call fastcc i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %24, ptr noundef nonnull %23), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %510, metadata !1350, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double poison, metadata !1349, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1345, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double poison, metadata !1343, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %0, metadata !1347, metadata !DIExpression()), !dbg !1400
  %511 = fadd double %509, 1.000000e-01
  %512 = fcmp olt double %511, %0, !dbg !1802
  br i1 %512, label %513, label %550, !dbg !1803

513:                                              ; preds = %502
  %514 = load double, ptr %24, align 8, !dbg !1804, !tbaa !571
  %515 = fdiv double %514, %0, !dbg !1805
  tail call void @llvm.dbg.value(metadata double %515, metadata !1349, metadata !DIExpression()), !dbg !1400
  %516 = fmul double %515, 0x2000000000000000, !dbg !1806
  tail call void @llvm.dbg.value(metadata double %516, metadata !1343, metadata !DIExpression()), !dbg !1400
  br label %517, !dbg !1803

517:                                              ; preds = %513, %544
  %518 = phi double [ %548, %544 ], [ %0, %513 ]
  %519 = phi double [ %547, %544 ], [ 0x2000000000000000, %513 ]
  %520 = phi double [ %546, %544 ], [ %516, %513 ]
  %521 = phi i32 [ %545, %544 ], [ 0, %513 ]
  tail call void @llvm.dbg.value(metadata double %518, metadata !1347, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %519, metadata !1345, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %520, metadata !1343, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %521, metadata !1328, metadata !DIExpression()), !dbg !1398
  %522 = fmul double %518, 2.000000e+00, !dbg !1807
  %523 = fsub double %1, %522, !dbg !1808
  %524 = fsub double %523, %2, !dbg !1809
  %525 = fmul double %519, %524, !dbg !1810
  %526 = fadd double %518, 1.000000e+00, !dbg !1811
  %527 = fsub double %526, %1, !dbg !1812
  %528 = fmul double %518, %527, !dbg !1813
  %529 = fmul double %520, %528, !dbg !1814
  %530 = fadd double %525, %529, !dbg !1815
  %531 = fneg double %530, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %531, metadata !1346, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %519, metadata !1343, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %531, metadata !1345, metadata !DIExpression()), !dbg !1400
  %532 = tail call double @llvm.fabs.f64(double %531), !dbg !1817
  tail call void @llvm.dbg.value(metadata double %532, metadata !1351, metadata !DIExpression()), !dbg !1818
  %533 = fcmp ogt double %532, 0x5FEFFFFFFFFFFFFF, !dbg !1819
  br i1 %533, label %534, label %538, !dbg !1817

534:                                              ; preds = %517
  %535 = fdiv double %530, 0xDFEFFFFFFFFFFFFF, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %535, metadata !1345, metadata !DIExpression()), !dbg !1400
  %536 = fdiv double %519, 0x5FEFFFFFFFFFFFFF, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %536, metadata !1343, metadata !DIExpression()), !dbg !1400
  %537 = add nsw i32 %521, 1, !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 %537, metadata !1328, metadata !DIExpression()), !dbg !1398
  br label %544, !dbg !1821

538:                                              ; preds = %517
  %539 = fcmp olt double %532, 0x1FF0000000000001, !dbg !1823
  br i1 %539, label %540, label %544, !dbg !1819

540:                                              ; preds = %538
  %541 = fmul double %530, 0xDFEFFFFFFFFFFFFF, !dbg !1825
  tail call void @llvm.dbg.value(metadata double %541, metadata !1345, metadata !DIExpression()), !dbg !1400
  %542 = fmul double %519, 0x5FEFFFFFFFFFFFFF, !dbg !1825
  tail call void @llvm.dbg.value(metadata double %542, metadata !1343, metadata !DIExpression()), !dbg !1400
  %543 = add nsw i32 %521, -1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %543, metadata !1328, metadata !DIExpression()), !dbg !1398
  br label %544, !dbg !1825

544:                                              ; preds = %538, %540, %534
  %545 = phi i32 [ %537, %534 ], [ %543, %540 ], [ %521, %538 ], !dbg !1398
  %546 = phi double [ %536, %534 ], [ %542, %540 ], [ %519, %538 ], !dbg !1827
  %547 = phi double [ %535, %534 ], [ %541, %540 ], [ %531, %538 ], !dbg !1827
  tail call void @llvm.dbg.value(metadata double %547, metadata !1345, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata double %546, metadata !1343, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %545, metadata !1328, metadata !DIExpression()), !dbg !1398
  %548 = fadd double %518, -1.000000e+00, !dbg !1828
  tail call void @llvm.dbg.value(metadata double %548, metadata !1347, metadata !DIExpression()), !dbg !1400
  %549 = fcmp ogt double %548, %511, !dbg !1802
  br i1 %549, label %517, label %550, !dbg !1803, !llvm.loop !1829

550:                                              ; preds = %544, %502
  %551 = phi i32 [ 0, %502 ], [ %545, %544 ], !dbg !1398
  %552 = phi double [ 0x2000000000000000, %502 ], [ %547, %544 ], !dbg !1400
  tail call void @llvm.dbg.value(metadata double %552, metadata !1337, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %510, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #8, !dbg !1831
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #8, !dbg !1832
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #8, !dbg !1833
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #8, !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8, !dbg !1834
  %553 = fadd double %504, -1.000000e+00, !dbg !1835
  %554 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %553, double noundef %1, double noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %27), !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %554, metadata !1361, metadata !DIExpression()), !dbg !1402
  %555 = call fastcc i32 @hyperg_U_small_a_bgt0(double noundef %504, double noundef %1, double noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %28), !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 %555, metadata !1362, metadata !DIExpression()), !dbg !1402
  %556 = load double, ptr %25, align 8, !dbg !1838, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %556, metadata !1363, metadata !DIExpression()), !dbg !1402
  %557 = load double, ptr %26, align 8, !dbg !1839, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %557, metadata !1364, metadata !DIExpression()), !dbg !1402
  %558 = load double, ptr %27, align 8, !dbg !1840
  %559 = load double, ptr %28, align 8, !dbg !1840
  %560 = fcmp ogt double %558, %559, !dbg !1840
  %561 = select i1 %560, double %558, double %559, !dbg !1840
  tail call void @llvm.dbg.value(metadata double %561, metadata !1335, metadata !DIExpression()), !dbg !1398
  %562 = fsub double %558, %561, !dbg !1841
  %563 = call double @exp(double noundef %562) #8, !dbg !1842
  tail call void @llvm.dbg.value(metadata double poison, metadata !1363, metadata !DIExpression()), !dbg !1402
  %564 = load double, ptr %28, align 8, !dbg !1843, !tbaa !571
  %565 = fsub double %564, %561, !dbg !1844
  %566 = call double @exp(double noundef %565) #8, !dbg !1845
  %567 = fmul double %557, %566, !dbg !1846
  tail call void @llvm.dbg.value(metadata double %567, metadata !1364, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %504, metadata !1366, metadata !DIExpression()), !dbg !1402
  %568 = fadd double %509, -1.000000e-01
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1326, metadata !DIExpression()), !dbg !1398
  %569 = fcmp olt double %504, %568, !dbg !1847
  br i1 %569, label %570, label %604, !dbg !1848

570:                                              ; preds = %550
  %571 = fmul double %556, %563, !dbg !1849
  tail call void @llvm.dbg.value(metadata double %571, metadata !1363, metadata !DIExpression()), !dbg !1402
  br label %572, !dbg !1848

572:                                              ; preds = %570, %599
  %573 = phi double [ %583, %599 ], [ %504, %570 ]
  %574 = phi double [ %602, %599 ], [ %567, %570 ]
  %575 = phi double [ %601, %599 ], [ %571, %570 ]
  %576 = phi i32 [ %600, %599 ], [ 0, %570 ]
  tail call void @llvm.dbg.value(metadata double %573, metadata !1366, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %574, metadata !1364, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %575, metadata !1363, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %576, metadata !1326, metadata !DIExpression()), !dbg !1398
  %577 = fmul double %573, 2.000000e+00, !dbg !1850
  %578 = fsub double %1, %577, !dbg !1851
  %579 = fsub double %578, %2, !dbg !1852
  %580 = fmul double %574, %579, !dbg !1853
  %581 = fadd double %575, %580, !dbg !1854
  %582 = fneg double %581, !dbg !1855
  %583 = fadd double %573, 1.000000e+00, !dbg !1856
  %584 = fsub double %583, %1, !dbg !1857
  %585 = fmul double %573, %584, !dbg !1858
  %586 = fdiv double %582, %585, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %586, metadata !1365, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %574, metadata !1363, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %586, metadata !1364, metadata !DIExpression()), !dbg !1402
  %587 = call double @llvm.fabs.f64(double %586), !dbg !1860
  tail call void @llvm.dbg.value(metadata double %587, metadata !1367, metadata !DIExpression()), !dbg !1861
  %588 = fcmp ogt double %587, 0x5FEFFFFFFFFFFFFF, !dbg !1862
  br i1 %588, label %589, label %593, !dbg !1860

589:                                              ; preds = %572
  %590 = fdiv double %586, 0x5FEFFFFFFFFFFFFF, !dbg !1864
  tail call void @llvm.dbg.value(metadata double %590, metadata !1364, metadata !DIExpression()), !dbg !1402
  %591 = fdiv double %574, 0x5FEFFFFFFFFFFFFF, !dbg !1864
  tail call void @llvm.dbg.value(metadata double %591, metadata !1363, metadata !DIExpression()), !dbg !1402
  %592 = add nsw i32 %576, 1, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %592, metadata !1326, metadata !DIExpression()), !dbg !1398
  br label %599, !dbg !1864

593:                                              ; preds = %572
  %594 = fcmp olt double %587, 0x1FF0000000000001, !dbg !1866
  br i1 %594, label %595, label %599, !dbg !1862

595:                                              ; preds = %593
  %596 = fmul double %586, 0x5FEFFFFFFFFFFFFF, !dbg !1868
  tail call void @llvm.dbg.value(metadata double %596, metadata !1364, metadata !DIExpression()), !dbg !1402
  %597 = fmul double %574, 0x5FEFFFFFFFFFFFFF, !dbg !1868
  tail call void @llvm.dbg.value(metadata double %597, metadata !1363, metadata !DIExpression()), !dbg !1402
  %598 = add nsw i32 %576, -1, !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %598, metadata !1326, metadata !DIExpression()), !dbg !1398
  br label %599, !dbg !1868

599:                                              ; preds = %593, %595, %589
  %600 = phi i32 [ %592, %589 ], [ %598, %595 ], [ %576, %593 ], !dbg !1398
  %601 = phi double [ %591, %589 ], [ %597, %595 ], [ %574, %593 ], !dbg !1870
  %602 = phi double [ %590, %589 ], [ %596, %595 ], [ %586, %593 ], !dbg !1870
  tail call void @llvm.dbg.value(metadata double %583, metadata !1366, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %602, metadata !1364, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata double %601, metadata !1363, metadata !DIExpression()), !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %600, metadata !1326, metadata !DIExpression()), !dbg !1398
  %603 = fcmp olt double %583, %568, !dbg !1847
  br i1 %603, label %572, label %604, !dbg !1848, !llvm.loop !1871

604:                                              ; preds = %599, %550
  %605 = phi i32 [ 0, %550 ], [ %600, %599 ], !dbg !1398
  %606 = phi double [ %567, %550 ], [ %602, %599 ], !dbg !1402
  tail call void @llvm.dbg.value(metadata double %606, metadata !1338, metadata !DIExpression()), !dbg !1398
  %607 = icmp eq i32 %554, 0, !dbg !1873
  %608 = select i1 %607, i32 %555, i32 %554, !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 %608, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #8, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #8, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #8, !dbg !1874
  tail call void @llvm.dbg.value(metadata double 0x40762E42FEFA39EF, metadata !1336, metadata !DIExpression()), !dbg !1398
  %609 = sub nsw i32 %605, %551, !dbg !1875
  %610 = sitofp i32 %609 to double, !dbg !1876
  %611 = fmul double %610, 0x40762E42FEFA39EF, !dbg !1877
  %612 = fadd double %561, %611, !dbg !1878
  tail call void @llvm.dbg.value(metadata double %612, metadata !1333, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1398
  %613 = call double @llvm.fabs.f64(double %561), !dbg !1879
  %614 = call double @llvm.fabs.f64(double %610), !dbg !1880
  %615 = fmul double %614, 0x40762E42FEFA39EF, !dbg !1881
  %616 = fadd double %613, %615, !dbg !1882
  %617 = fmul double %616, 0x3CC0000000000000, !dbg !1883
  tail call void @llvm.dbg.value(metadata double %617, metadata !1333, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1398
  %618 = fmul double %606, 0x2000000000000000, !dbg !1884
  %619 = fdiv double %618, %552, !dbg !1885
  tail call void @llvm.dbg.value(metadata double %619, metadata !1334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1398
  %620 = fsub double %0, %504, !dbg !1886
  %621 = call double @llvm.fabs.f64(double %620), !dbg !1887
  %622 = load i32, ptr %23, align 4, !dbg !1888, !tbaa !683
  %623 = sitofp i32 %622 to double, !dbg !1888
  %624 = fadd double %621, %623, !dbg !1889
  %625 = fadd double %624, 1.000000e+00, !dbg !1890
  %626 = fmul double %625, 0x3CC0000000000000, !dbg !1891
  %627 = call double @llvm.fabs.f64(double %619), !dbg !1892
  %628 = fmul double %627, %626, !dbg !1893
  tail call void @llvm.dbg.value(metadata double %628, metadata !1334, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1398
  %629 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %612, double noundef %617, double noundef %619, double noundef %628, ptr noundef %3) #8, !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %629, metadata !1341, metadata !DIExpression()), !dbg !1398
  %630 = icmp eq i32 %629, 0, !dbg !1895
  %631 = icmp eq i32 %510, 0, !dbg !1895
  %632 = select i1 %631, i32 %608, i32 %510, !dbg !1895
  %633 = select i1 %630, i32 %632, i32 %629, !dbg !1895
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #8, !dbg !1896
  br label %634

634:                                              ; preds = %604, %469, %378, %311, %114, %91, %76, %44, %33
  %635 = phi i32 [ 0, %33 ], [ %62, %44 ], [ %88, %76 ], [ %101, %91 ], [ %115, %114 ], [ %316, %311 ], [ %420, %378 ], [ %501, %469 ], [ %633, %604 ], !dbg !1897
  ret i32 %635, !dbg !1898
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_int_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1899 {
  %5 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1907, metadata !DIExpression(), metadata !1910, metadata ptr %5, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1903, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1904, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata double %2, metadata !1905, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1906, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8, !dbg !1912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !dbg !1913, !DIAssignID !1914
  call void @llvm.dbg.assign(metadata i8 0, metadata !1907, metadata !DIExpression(), metadata !1914, metadata ptr %5, metadata !DIExpression()), !dbg !1911
  %6 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1908, metadata !DIExpression()), !dbg !1911
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %5, ptr noundef %3) #8, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1909, metadata !DIExpression()), !dbg !1911
  %8 = icmp eq i32 %7, 0, !dbg !1917
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8, !dbg !1918
  ret i32 %9, !dbg !1919
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !1920 i32 @gsl_sf_result_smash_e(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1925 {
  %5 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1936
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1933, metadata !DIExpression(), metadata !1936, metadata ptr %5, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata double %0, metadata !1929, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata double %1, metadata !1930, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata double %2, metadata !1931, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1932, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8, !dbg !1938
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !dbg !1939, !DIAssignID !1940
  call void @llvm.dbg.assign(metadata i8 0, metadata !1933, metadata !DIExpression(), metadata !1940, metadata ptr %5, metadata !DIExpression()), !dbg !1937
  %6 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1934, metadata !DIExpression()), !dbg !1937
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %5, ptr noundef %3) #8, !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1935, metadata !DIExpression()), !dbg !1937
  %8 = icmp eq i32 %7, 0, !dbg !1943
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8, !dbg !1944
  ret i32 %9, !dbg !1945
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_U_int(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !1946 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1955
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1956
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1953, metadata !DIExpression(), metadata !1956, metadata ptr %5, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1950, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1951, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata double %2, metadata !1952, metadata !DIExpression()), !dbg !1957
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1958
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1907, metadata !DIExpression(), metadata !1955, metadata ptr %4, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %0, metadata !1903, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %1, metadata !1904, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata double %2, metadata !1905, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata ptr %5, metadata !1906, metadata !DIExpression()), !dbg !1959
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8, !dbg !1961
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !dbg !1962, !DIAssignID !1963
  call void @llvm.dbg.assign(metadata i8 0, metadata !1907, metadata !DIExpression(), metadata !1963, metadata ptr %4, metadata !DIExpression()), !dbg !1959
  %6 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %6, metadata !1908, metadata !DIExpression()), !dbg !1959
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #8, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %7, metadata !1909, metadata !DIExpression()), !dbg !1959
  %8 = icmp eq i32 %7, 0, !dbg !1966
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1966
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1954, metadata !DIExpression()), !dbg !1957
  %10 = icmp eq i32 %9, 0, !dbg !1968
  br i1 %10, label %12, label %11, !dbg !1958

11:                                               ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1781, i32 noundef %9) #8, !dbg !1970
  br label %12, !dbg !1970

12:                                               ; preds = %3, %11
  %13 = load double, ptr %5, align 8, !dbg !1958, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1973
  ret double %13, !dbg !1973
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_U(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !1974 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !1983
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1984
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1981, metadata !DIExpression(), metadata !1984, metadata ptr %5, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %0, metadata !1978, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %1, metadata !1979, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %2, metadata !1980, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1933, metadata !DIExpression(), metadata !1983, metadata ptr %4, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata double %0, metadata !1929, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata double %1, metadata !1930, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata double %2, metadata !1931, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata ptr %5, metadata !1932, metadata !DIExpression()), !dbg !1987
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8, !dbg !1989
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !dbg !1990, !DIAssignID !1991
  call void @llvm.dbg.assign(metadata i8 0, metadata !1933, metadata !DIExpression(), metadata !1991, metadata ptr %4, metadata !DIExpression()), !dbg !1987
  %6 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1992
  call void @llvm.dbg.value(metadata i32 %6, metadata !1934, metadata !DIExpression()), !dbg !1987
  %7 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #8, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %7, metadata !1935, metadata !DIExpression()), !dbg !1987
  %8 = icmp eq i32 %7, 0, !dbg !1994
  %9 = select i1 %8, i32 %6, i32 %7, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1982, metadata !DIExpression()), !dbg !1985
  %10 = icmp eq i32 %9, 0, !dbg !1996
  br i1 %10, label %12, label %11, !dbg !1986

11:                                               ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1786, i32 noundef %9) #8, !dbg !1998
  br label %12, !dbg !1998

12:                                               ; preds = %3, %11
  %13 = load double, ptr %5, align 8, !dbg !1986, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2001
  ret double %13, !dbg !2001
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2002 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !2003 i32 @gsl_sf_exp_e10_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !2006 {
  %5 = alloca [4 x double], align 16, !DIAssignID !2029
  %6 = alloca [4 x double], align 16, !DIAssignID !2030
  tail call void @llvm.dbg.value(metadata double %0, metadata !2008, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata double %1, metadata !2009, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata double %2, metadata !2010, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2011, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata double %0, metadata !2012, metadata !DIExpression()), !dbg !2031
  %7 = fadd double %0, 1.000000e+00, !dbg !2032
  %8 = fsub double %7, %1, !dbg !2033
  tail call void @llvm.dbg.value(metadata double %8, metadata !2013, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.dbg.value(metadata double poison, metadata !2014, metadata !DIExpression()), !dbg !2031
  %9 = fadd double %8, 5.000000e-01, !dbg !2034
  %10 = tail call double @llvm.floor.f64(double %9), !dbg !2035
  tail call void @llvm.dbg.value(metadata double %10, metadata !2015, metadata !DIExpression()), !dbg !2031
  %11 = fcmp olt double %0, 0.000000e+00, !dbg !2036
  br i1 %11, label %12, label %18, !dbg !2037

12:                                               ; preds = %4
  %13 = fadd double %0, 5.000000e-01, !dbg !2038
  %14 = tail call double @llvm.floor.f64(double %13), !dbg !2039
  tail call void @llvm.dbg.value(metadata double %14, metadata !2014, metadata !DIExpression()), !dbg !2031
  %15 = fsub double %0, %14, !dbg !2040
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !2041
  %17 = fcmp olt double %16, 0x3D4F400000000000, !dbg !2042
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i1 [ false, %4 ], [ %17, %12 ], !dbg !2031
  tail call void @llvm.dbg.value(metadata i1 %19, metadata !2016, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2031
  %20 = fcmp olt double %8, 0.000000e+00, !dbg !2043
  %21 = fsub double %8, %10, !dbg !2044
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !2044
  %23 = fcmp olt double %22, 0x3D4F400000000000, !dbg !2044
  %24 = and i1 %20, %23, !dbg !2044
  tail call void @llvm.dbg.value(metadata i1 %24, metadata !2017, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2031
  %25 = select i1 %19, i1 true, i1 %24, !dbg !2045
  br i1 %25, label %26, label %64, !dbg !2045

26:                                               ; preds = %18
  %27 = fdiv double -1.000000e+00, %2, !dbg !2046
  tail call void @llvm.dbg.value(metadata double %27, metadata !2018, metadata !DIExpression()), !dbg !2047
  %28 = fcmp ogt double %8, %0, !dbg !2048
  %29 = select i1 %28, double %0, double %8, !dbg !2048
  %30 = fadd double %29, -1.000000e-01, !dbg !2049
  %31 = fptosi double %30 to i32, !dbg !2050
  %32 = sub nsw i32 0, %31, !dbg !2051
  %33 = sitofp i32 %32 to double, !dbg !2051
  tail call void @llvm.dbg.value(metadata double %33, metadata !2021, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2022, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2023, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2024, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2025, metadata !DIExpression()), !dbg !2047
  %34 = icmp sgt i32 %31, -1, !dbg !2052
  br i1 %34, label %54, label %35, !dbg !2053

35:                                               ; preds = %26, %35
  %36 = phi double [ %47, %35 ], [ 1.000000e+00, %26 ]
  %37 = phi double [ %51, %35 ], [ 0.000000e+00, %26 ]
  %38 = phi double [ %52, %35 ], [ 1.000000e+00, %26 ]
  %39 = phi double [ %48, %35 ], [ 1.000000e+00, %26 ]
  tail call void @llvm.dbg.value(metadata double %36, metadata !2022, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double %37, metadata !2025, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double %38, metadata !2024, metadata !DIExpression()), !dbg !2047
  tail call void @llvm.dbg.value(metadata double %39, metadata !2023, metadata !DIExpression()), !dbg !2047
  %40 = fadd double %38, %0, !dbg !2054
  %41 = fadd double %40, -1.000000e+00, !dbg !2055
  tail call void @llvm.dbg.value(metadata double %41, metadata !2026, metadata !DIExpression()), !dbg !2056
  %42 = fadd double %8, %38, !dbg !2057
  %43 = fadd double %42, -1.000000e+00, !dbg !2058
  tail call void @llvm.dbg.value(metadata double %43, metadata !2028, metadata !DIExpression()), !dbg !2056
  %44 = fdiv double %41, %38, !dbg !2059
  %45 = fmul double %27, %44, !dbg !2060
  %46 = fmul double %43, %45, !dbg !2061
  %47 = fmul double %36, %46, !dbg !2062
  tail call void @llvm.dbg.value(metadata double %47, metadata !2022, metadata !DIExpression()), !dbg !2047
  %48 = fadd double %39, %47, !dbg !2063
  tail call void @llvm.dbg.value(metadata double %48, metadata !2023, metadata !DIExpression()), !dbg !2047
  %49 = tail call double @llvm.fabs.f64(double %47), !dbg !2064
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !2065
  %51 = fadd double %37, %50, !dbg !2066
  tail call void @llvm.dbg.value(metadata double %51, metadata !2025, metadata !DIExpression()), !dbg !2047
  %52 = fadd double %38, 1.000000e+00, !dbg !2067
  tail call void @llvm.dbg.value(metadata double %52, metadata !2024, metadata !DIExpression()), !dbg !2047
  %53 = fcmp ugt double %52, %33, !dbg !2052
  br i1 %53, label %54, label %35, !dbg !2053, !llvm.loop !2068

54:                                               ; preds = %35, %26
  %55 = phi double [ 1.000000e+00, %26 ], [ %48, %35 ], !dbg !2047
  %56 = phi double [ 0.000000e+00, %26 ], [ %51, %35 ], !dbg !2047
  store double %55, ptr %3, align 8, !dbg !2070, !tbaa !182
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2071
  %58 = tail call double @llvm.fabs.f64(double %33), !dbg !2072
  %59 = fadd double %58, 1.000000e+00, !dbg !2073
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !2074
  %61 = tail call double @llvm.fabs.f64(double %55), !dbg !2075
  %62 = fmul double %60, %61, !dbg !2076
  %63 = fadd double %56, %62, !dbg !2077
  store double %63, ptr %57, align 8, !dbg !2077, !tbaa !190
  br label %166

64:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2078, metadata !DIExpression(), metadata !2029, metadata ptr %5, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2087, metadata !DIExpression(), metadata !2030, metadata ptr %6, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double %0, metadata !2081, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double %1, metadata !2082, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double %2, metadata !2083, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata ptr %3, metadata !2084, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double 0x3CE0000000000000, metadata !2085, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 500, metadata !2086, metadata !DIExpression()), !dbg !2109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6), !dbg !2112
  call void @llvm.dbg.value(metadata double %8, metadata !2092, metadata !DIExpression()), !dbg !2109
  %65 = fmul double %8, %0, !dbg !2113
  call void @llvm.dbg.value(metadata double %65, metadata !2093, metadata !DIExpression()), !dbg !2109
  %66 = fsub double %2, %65, !dbg !2114
  %67 = fmul double %66, 2.000000e+00, !dbg !2115
  call void @llvm.dbg.value(metadata double %67, metadata !2094, metadata !DIExpression()), !dbg !2109
  %68 = fadd double %8, %0, !dbg !2116
  call void @llvm.dbg.value(metadata double %68, metadata !2095, metadata !DIExpression()), !dbg !2109
  %69 = fadd double %68, 1.000000e+00, !dbg !2117
  %70 = fadd double %65, %69, !dbg !2118
  call void @llvm.dbg.value(metadata double %70, metadata !2096, metadata !DIExpression()), !dbg !2109
  %71 = fadd double %68, %70, !dbg !2119
  %72 = fadd double %71, 3.000000e+00, !dbg !2120
  call void @llvm.dbg.value(metadata double %72, metadata !2097, metadata !DIExpression()), !dbg !2109
  %73 = fmul double %2, 2.000000e+00, !dbg !2121
  %74 = fdiv double %73, %72, !dbg !2122
  %75 = fadd double %74, 1.000000e+00, !dbg !2123
  call void @llvm.dbg.value(metadata double %75, metadata !2098, metadata !DIExpression()), !dbg !2109
  store double 1.000000e+00, ptr %6, align 16, !dbg !2124, !tbaa !571, !DIAssignID !2125
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !2087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2125, metadata ptr %6, metadata !DIExpression()), !dbg !2109
  store double 1.000000e+00, ptr %5, align 16, !dbg !2126, !tbaa !571, !DIAssignID !2127
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !2078, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2127, metadata ptr %5, metadata !DIExpression()), !dbg !2109
  %76 = fdiv double %73, %70, !dbg !2128
  %77 = fadd double %76, 1.000000e+00, !dbg !2129
  %78 = getelementptr inbounds i8, ptr %6, i64 8, !dbg !2130
  store double %77, ptr %78, align 8, !dbg !2130, !tbaa !571, !DIAssignID !2131
  call void @llvm.dbg.assign(metadata double %77, metadata !2087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2131, metadata ptr %78, metadata !DIExpression()), !dbg !2109
  %79 = fdiv double %67, %70, !dbg !2132
  %80 = fadd double %79, 1.000000e+00, !dbg !2133
  %81 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !2134
  store double %80, ptr %81, align 8, !dbg !2134, !tbaa !571, !DIAssignID !2135
  call void @llvm.dbg.assign(metadata double %80, metadata !2078, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2135, metadata ptr %81, metadata !DIExpression()), !dbg !2109
  %82 = fmul double %75, 6.000000e+00, !dbg !2136
  %83 = fmul double %82, %2, !dbg !2137
  %84 = fdiv double %83, %70, !dbg !2138
  %85 = fadd double %84, 1.000000e+00, !dbg !2139
  %86 = getelementptr inbounds i8, ptr %6, i64 16, !dbg !2140
  store double %85, ptr %86, align 16, !dbg !2140, !tbaa !571, !DIAssignID !2141
  call void @llvm.dbg.assign(metadata double %85, metadata !2087, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !2141, metadata ptr %86, metadata !DIExpression()), !dbg !2109
  %87 = fmul double %65, 6.000000e+00, !dbg !2142
  %88 = fdiv double %87, %72, !dbg !2143
  %89 = fadd double %88, 1.000000e+00, !dbg !2144
  %90 = fmul double %75, 3.000000e+00, !dbg !2145
  %91 = fmul double %67, %90, !dbg !2146
  %92 = fdiv double %91, %70, !dbg !2147
  %93 = fadd double %89, %92, !dbg !2148
  %94 = getelementptr inbounds i8, ptr %5, i64 16, !dbg !2149
  store double %93, ptr %94, align 16, !dbg !2149, !tbaa !571, !DIAssignID !2150
  call void @llvm.dbg.assign(metadata double %93, metadata !2078, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !2150, metadata ptr %94, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 4, metadata !2091, metadata !DIExpression()), !dbg !2109
  %95 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !2151
  %96 = getelementptr inbounds i8, ptr %6, i64 16
  %97 = getelementptr inbounds i8, ptr %6, i64 8
  %98 = getelementptr inbounds i8, ptr %6, i64 24
  %99 = getelementptr inbounds i8, ptr %5, i64 16
  %100 = getelementptr inbounds i8, ptr %5, i64 8
  %101 = getelementptr inbounds i8, ptr %5, i64 24
  %102 = getelementptr inbounds i8, ptr %6, i64 8
  br label %103, !dbg !2155

103:                                              ; preds = %153, %64
  %104 = phi i32 [ 4, %64 ], [ %154, %153 ]
  %105 = phi double [ %72, %64 ], [ %112, %153 ]
  call void @llvm.dbg.value(metadata i32 %104, metadata !2091, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double %105, metadata !2097, metadata !DIExpression()), !dbg !2109
  %106 = shl nuw nsw i32 %104, 1, !dbg !2156
  %107 = add nsw i32 %106, -3, !dbg !2157
  %108 = sitofp i32 %107 to double, !dbg !2158
  call void @llvm.dbg.value(metadata double %108, metadata !2108, metadata !DIExpression()), !dbg !2159
  %109 = fadd double %108, -2.000000e+00, !dbg !2160
  %110 = fdiv double %108, %109, !dbg !2161
  call void @llvm.dbg.value(metadata double %110, metadata !2098, metadata !DIExpression()), !dbg !2109
  %111 = fadd double %68, %108, !dbg !2162
  %112 = fadd double %105, %111, !dbg !2163
  call void @llvm.dbg.value(metadata double %112, metadata !2097, metadata !DIExpression()), !dbg !2109
  %113 = fadd double %108, -1.000000e+00, !dbg !2164
  %114 = fdiv double %113, %112, !dbg !2165
  call void @llvm.dbg.value(metadata double %114, metadata !2094, metadata !DIExpression()), !dbg !2109
  %115 = fmul double %114, %108, !dbg !2166
  %116 = fadd double %115, -1.000000e+00, !dbg !2167
  call void @llvm.dbg.value(metadata double %116, metadata !2103, metadata !DIExpression()), !dbg !2159
  %117 = fmul double %108, 2.000000e+00, !dbg !2168
  %118 = fmul double %117, %2, !dbg !2169
  %119 = fdiv double %118, %112, !dbg !2170
  call void @llvm.dbg.value(metadata double %119, metadata !2104, metadata !DIExpression()), !dbg !2159
  %120 = fmul double %68, %114, !dbg !2171
  call void @llvm.dbg.value(metadata double %120, metadata !2096, metadata !DIExpression()), !dbg !2109
  %121 = fadd double %120, %116, !dbg !2172
  %122 = fmul double %110, %121, !dbg !2173
  %123 = fadd double %119, %122, !dbg !2174
  call void @llvm.dbg.value(metadata double %123, metadata !2105, metadata !DIExpression()), !dbg !2159
  %124 = fsub double %119, %116, !dbg !2175
  call void @llvm.dbg.value(metadata double %124, metadata !2106, metadata !DIExpression()), !dbg !2159
  %125 = fsub double 1.000000e+00, %120, !dbg !2176
  %126 = fmul double %114, 2.000000e+00, !dbg !2177
  %127 = fsub double %125, %126, !dbg !2178
  %128 = fmul double %110, %127, !dbg !2179
  call void @llvm.dbg.value(metadata double %128, metadata !2107, metadata !DIExpression()), !dbg !2159
  %129 = load double, ptr %96, align 16, !dbg !2180, !tbaa !571
  %130 = fmul double %129, %123, !dbg !2181
  %131 = load double, ptr %97, align 8, !dbg !2182, !tbaa !571
  %132 = fmul double %131, %124, !dbg !2183
  %133 = fadd double %132, %130, !dbg !2184
  %134 = load double, ptr %6, align 16, !dbg !2185, !tbaa !571
  %135 = fmul double %134, %128, !dbg !2186
  %136 = fadd double %135, %133, !dbg !2187
  store double %136, ptr %98, align 8, !dbg !2188, !tbaa !571, !DIAssignID !2189
  call void @llvm.dbg.assign(metadata double %136, metadata !2087, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !2189, metadata ptr %98, metadata !DIExpression()), !dbg !2109
  %137 = load double, ptr %99, align 16, !dbg !2190, !tbaa !571
  %138 = fmul double %137, %123, !dbg !2191
  %139 = load double, ptr %100, align 8, !dbg !2192, !tbaa !571
  %140 = fmul double %139, %124, !dbg !2193
  %141 = fadd double %140, %138, !dbg !2194
  %142 = load double, ptr %5, align 16, !dbg !2195, !tbaa !571
  %143 = fmul double %142, %128, !dbg !2196
  %144 = fadd double %143, %141, !dbg !2197
  store double %144, ptr %101, align 8, !dbg !2198, !tbaa !571, !DIAssignID !2199
  call void @llvm.dbg.assign(metadata double %144, metadata !2078, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !2199, metadata ptr %101, metadata !DIExpression()), !dbg !2109
  %145 = fmul double %134, %144, !dbg !2200
  %146 = fmul double %142, %136, !dbg !2202
  %147 = fsub double %145, %146, !dbg !2203
  %148 = tail call double @llvm.fabs.f64(double %147), !dbg !2204
  %149 = fmul double %134, %136, !dbg !2205
  %150 = tail call double @llvm.fabs.f64(double %149), !dbg !2206
  %151 = fmul double %150, 0x3CE0000000000000, !dbg !2207
  %152 = fcmp olt double %148, %151, !dbg !2208
  br i1 %152, label %156, label %153, !dbg !2209

153:                                              ; preds = %103
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %95, i64 24, i1 false), !dbg !2151, !tbaa !571
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %102, i64 24, i1 false), !dbg !2210, !tbaa !571
  call void @llvm.dbg.value(metadata i64 poison, metadata !2099, metadata !DIExpression()), !dbg !2159
  %154 = add nuw nsw i32 %104, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %154, metadata !2091, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata double %112, metadata !2097, metadata !DIExpression()), !dbg !2109
  %155 = icmp eq i32 %154, 500, !dbg !2212
  br i1 %155, label %156, label %103, !dbg !2155, !llvm.loop !2213

156:                                              ; preds = %153, %103
  %157 = phi i32 [ %104, %103 ], [ 500, %153 ], !dbg !2215
  %158 = fdiv double %144, %136, !dbg !2216
  store double %158, ptr %3, align 8, !dbg !2217, !tbaa !182
  %159 = tail call double @llvm.fabs.f64(double %158), !dbg !2218
  %160 = fmul double %159, 0x3CE0000000000000, !dbg !2219
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2220
  store double %160, ptr %161, align 8, !dbg !2221, !tbaa !190
  %162 = icmp eq i32 %157, 500, !dbg !2222
  br i1 %162, label %163, label %164, !dbg !2224

163:                                              ; preds = %156
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef 11) #8, !dbg !2225
  br label %164, !dbg !2225

164:                                              ; preds = %156, %163
  %165 = phi i32 [ 11, %163 ], [ 0, %156 ], !dbg !2228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6), !dbg !2229
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5), !dbg !2229
  br label %166, !dbg !2230

166:                                              ; preds = %164, %54
  %167 = phi i32 [ 0, %54 ], [ %165, %164 ], !dbg !2231
  ret i32 %167, !dbg !2232
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2233 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2256
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2257
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2258
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2259
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2260
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2261
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2262
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2263
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2264
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2265
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2266
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2267
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2268
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2269
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2270
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2271
  %21 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2272
  %22 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2273
  %23 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2274
  %24 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2275
  %25 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2276
  %26 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2277
  %27 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2278
  %28 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2279
  %29 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2280
  %30 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2281
  %31 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2282
  %32 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2283
  %33 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2284
  %34 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2285
  %35 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2286
  tail call void @llvm.dbg.value(metadata double %0, metadata !2235, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata double %1, metadata !2236, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata double %2, metadata !2237, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2238, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata double 0x3E56A09E667F3BCD, metadata !2239, metadata !DIExpression()), !dbg !2287
  %36 = fcmp olt double %1, 0.000000e+00, !dbg !2288
  br i1 %36, label %37, label %40, !dbg !2289

37:                                               ; preds = %4
  %38 = fadd double %1, -5.000000e-01, !dbg !2290
  %39 = tail call double @llvm.ceil.f64(double %38), !dbg !2291
  br label %43, !dbg !2289

40:                                               ; preds = %4
  %41 = fadd double %1, 5.000000e-01, !dbg !2292
  %42 = tail call double @llvm.floor.f64(double %41), !dbg !2293
  br label %43, !dbg !2289

43:                                               ; preds = %40, %37
  %44 = phi double [ %39, %37 ], [ %42, %40 ], !dbg !2289
  tail call void @llvm.dbg.value(metadata double %44, metadata !2240, metadata !DIExpression()), !dbg !2287
  %45 = fsub double %1, %44, !dbg !2294
  tail call void @llvm.dbg.value(metadata double %45, metadata !2241, metadata !DIExpression()), !dbg !2287
  %46 = fsub double %0, %45, !dbg !2295
  tail call void @llvm.dbg.value(metadata double %46, metadata !2242, metadata !DIExpression()), !dbg !2287
  %47 = fadd double %46, 5.000000e-01, !dbg !2296
  %48 = tail call double @llvm.floor.f64(double %47), !dbg !2297
  tail call void @llvm.dbg.value(metadata double %48, metadata !2243, metadata !DIExpression()), !dbg !2287
  %49 = fsub double %46, %48, !dbg !2298
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !2299
  %51 = fcmp olt double %50, 0x3D4F400000000000, !dbg !2300
  tail call void @llvm.dbg.value(metadata double poison, metadata !2244, metadata !DIExpression()), !dbg !2287
  %52 = fcmp ole double %46, 0.000000e+00
  %53 = and i1 %52, %51, !dbg !2301
  br i1 %53, label %54, label %60, !dbg !2301

54:                                               ; preds = %43
  %55 = fadd double %45, -1.000000e+00, !dbg !2303
  %56 = tail call double @llvm.floor.f64(double %46), !dbg !2305
  %57 = fadd double %55, %56, !dbg !2306
  tail call void @llvm.dbg.value(metadata double %57, metadata !2241, metadata !DIExpression()), !dbg !2287
  %58 = fadd double %44, 1.000000e+00, !dbg !2307
  %59 = fsub double %58, %56, !dbg !2308
  tail call void @llvm.dbg.value(metadata double %59, metadata !2240, metadata !DIExpression()), !dbg !2287
  br label %60, !dbg !2309

60:                                               ; preds = %54, %43
  %61 = phi double [ %57, %54 ], [ %45, %43 ], !dbg !2287
  %62 = phi double [ %59, %54 ], [ %44, %43 ], !dbg !2287
  tail call void @llvm.dbg.value(metadata double %62, metadata !2240, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata double %61, metadata !2241, metadata !DIExpression()), !dbg !2287
  %63 = fadd double %0, 1.000000e+00, !dbg !2310
  %64 = fsub double %63, %1, !dbg !2311
  %65 = tail call double @llvm.fabs.f64(double %64), !dbg !2312
  %66 = fcmp olt double %65, 0x3E56A09E667F3BCD, !dbg !2313
  %67 = tail call double @log(double noundef %2) #8, !dbg !2314
  br i1 %66, label %68, label %78, !dbg !2315

68:                                               ; preds = %60
  %69 = fneg double %0, !dbg !2316
  %70 = fmul double %67, %69, !dbg !2317
  tail call void @llvm.dbg.value(metadata double %70, metadata !2245, metadata !DIExpression()), !dbg !2318
  %71 = tail call i32 @gsl_sf_exp_e(double noundef %70, ptr noundef %3) #8, !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !2248, metadata !DIExpression()), !dbg !2318
  %72 = load double, ptr %3, align 8, !dbg !2320, !tbaa !182
  %73 = tail call double @llvm.fabs.f64(double %72), !dbg !2321
  %74 = fmul double %73, 0x3E66A09E667F3BCD, !dbg !2322
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2323
  %76 = load double, ptr %75, align 8, !dbg !2324, !tbaa !190
  %77 = fadd double %76, %74, !dbg !2324
  store double %77, ptr %75, align 8, !dbg !2324, !tbaa !190
  br label %966

78:                                               ; preds = %60
  %79 = fptosi double %62 to i32, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !2249, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.dbg.value(metadata double %67, metadata !2251, metadata !DIExpression()), !dbg !2326
  %80 = fneg double %61, !dbg !2327
  %81 = fmul double %67, %80, !dbg !2328
  %82 = tail call double @exp(double noundef %81) #8, !dbg !2329
  tail call void @llvm.dbg.value(metadata double %82, metadata !2252, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2330, metadata !DIExpression(), metadata !2283, metadata ptr %32, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2356, metadata !DIExpression(), metadata !2284, metadata ptr %33, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2359, metadata !DIExpression(), metadata !2285, metadata ptr %34, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2368, metadata !DIExpression(), metadata !2286, metadata ptr %35, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 %79, metadata !2337, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %0, metadata !2338, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %1, metadata !2339, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %2, metadata !2340, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %82, metadata !2341, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr undef, metadata !2342, metadata !DIExpression()), !dbg !2380
  %83 = icmp slt i32 %79, 1, !dbg !2381
  br i1 %83, label %84, label %141, !dbg !2382

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2346, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2347, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %32) #8, !dbg !2383
  call void @llvm.dbg.value(metadata i32 1, metadata !2343, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2344, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2345, metadata !DIExpression()), !dbg !2380
  %85 = icmp sgt i32 %79, -1, !dbg !2384
  br i1 %85, label %116, label %86, !dbg !2385

86:                                               ; preds = %84
  %87 = sub i32 0, %79
  %88 = tail call i32 @llvm.smax.i32(i32 %87, i32 1), !dbg !2385
  br label %89, !dbg !2385

89:                                               ; preds = %89, %86
  %90 = phi i32 [ %114, %89 ], [ 1, %86 ]
  %91 = phi double [ %112, %89 ], [ 1.000000e+00, %86 ]
  %92 = phi double [ %113, %89 ], [ 0.000000e+00, %86 ]
  %93 = phi double [ %103, %89 ], [ 1.000000e+00, %86 ]
  %94 = phi double [ %111, %89 ], [ 0.000000e+00, %86 ]
  call void @llvm.dbg.value(metadata i32 %90, metadata !2343, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %91, metadata !2344, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %92, metadata !2345, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %93, metadata !2346, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata double %94, metadata !2347, metadata !DIExpression()), !dbg !2376
  %95 = add nsw i32 %90, -1, !dbg !2386
  %96 = sitofp i32 %95 to double, !dbg !2387
  call void @llvm.dbg.value(metadata double %96, metadata !2349, metadata !DIExpression()), !dbg !2388
  %97 = fadd double %96, %0, !dbg !2389
  %98 = fmul double %97, %2, !dbg !2390
  %99 = fadd double %96, %1, !dbg !2391
  %100 = fadd double %96, 1.000000e+00, !dbg !2392
  %101 = fmul double %99, %100, !dbg !2393
  %102 = fdiv double %98, %101, !dbg !2394
  call void @llvm.dbg.value(metadata double %102, metadata !2353, metadata !DIExpression()), !dbg !2388
  %103 = fmul double %93, %102, !dbg !2395
  call void @llvm.dbg.value(metadata double %103, metadata !2346, metadata !DIExpression()), !dbg !2376
  %104 = tail call double @llvm.fabs.f64(double %102), !dbg !2396
  %105 = fmul double %94, %104, !dbg !2397
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !2398
  %107 = fmul double %106, 8.000000e+00, !dbg !2399
  %108 = fmul double %107, 2.000000e+00, !dbg !2400
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !2401
  %110 = fadd double %105, %109, !dbg !2402
  %111 = fadd double %94, %110, !dbg !2403
  call void @llvm.dbg.value(metadata double %111, metadata !2347, metadata !DIExpression()), !dbg !2376
  %112 = fadd double %91, %103, !dbg !2404
  call void @llvm.dbg.value(metadata double %112, metadata !2344, metadata !DIExpression()), !dbg !2380
  %113 = fadd double %92, %111, !dbg !2405
  call void @llvm.dbg.value(metadata double %113, metadata !2345, metadata !DIExpression()), !dbg !2380
  %114 = add nuw i32 %90, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %114, metadata !2343, metadata !DIExpression()), !dbg !2380
  %115 = icmp eq i32 %90, %88, !dbg !2384
  br i1 %115, label %116, label %89, !dbg !2385, !llvm.loop !2407

116:                                              ; preds = %89, %84
  %117 = phi double [ 0.000000e+00, %84 ], [ %113, %89 ], !dbg !2376
  %118 = phi double [ 1.000000e+00, %84 ], [ %112, %89 ], !dbg !2376
  %119 = fneg double %0, !dbg !2409
  %120 = call i32 @gsl_sf_poch_e(double noundef %64, double noundef %119, ptr noundef nonnull %32) #8, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %120, metadata !2348, metadata !DIExpression()), !dbg !2376
  %121 = load double, ptr %32, align 8, !dbg !2411, !tbaa !182
  %122 = fmul double %118, %121, !dbg !2412
  tail call void @llvm.dbg.value(metadata double %122, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2326
  %123 = call double @llvm.fabs.f64(double %118), !dbg !2413
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %32, i64 0, i32 1, !dbg !2414
  %125 = load double, ptr %124, align 8, !dbg !2414, !tbaa !190
  %126 = fmul double %123, %125, !dbg !2415
  %127 = call double @llvm.fabs.f64(double %121), !dbg !2416
  %128 = fmul double %117, %127, !dbg !2417
  %129 = fadd double %128, %126, !dbg !2418
  %130 = sitofp i32 %79 to double, !dbg !2419
  %131 = call double @llvm.fabs.f64(double %130), !dbg !2420
  %132 = fadd double %131, 2.000000e+00, !dbg !2421
  %133 = fmul double %132, %127, !dbg !2422
  %134 = fmul double %133, 0x3CB0000000000000, !dbg !2423
  %135 = fmul double %123, %134, !dbg !2424
  %136 = fadd double %129, %135, !dbg !2425
  %137 = call double @llvm.fabs.f64(double %122), !dbg !2426
  %138 = fmul double %137, 0x3CC0000000000000, !dbg !2427
  %139 = fadd double %138, %136, !dbg !2428
  %140 = fmul double %139, 2.000000e+00, !dbg !2429
  tail call void @llvm.dbg.value(metadata double %140, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2326
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %32) #8, !dbg !2430
  br label %229

141:                                              ; preds = %78
  call void @llvm.dbg.value(metadata i32 %79, metadata !2354, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2431
  %142 = icmp eq i32 %79, 1, !dbg !2432
  br i1 %142, label %229, label %143, !dbg !2433

143:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #8, !dbg !2434
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #8, !dbg !2435
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2362, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2363, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2344, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2345, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 1, metadata !2343, metadata !DIExpression()), !dbg !2380
  %144 = icmp ult i32 %79, 3, !dbg !2436
  br i1 %144, label %174, label %145, !dbg !2437

145:                                              ; preds = %143
  %146 = fsub double %0, %1
  %147 = fsub double 1.000000e+00, %1
  %148 = add nsw i32 %79, -2
  br label %149, !dbg !2437

149:                                              ; preds = %149, %145
  %150 = phi i32 [ 1, %145 ], [ %172, %149 ]
  %151 = phi double [ 1.000000e+00, %145 ], [ %170, %149 ]
  %152 = phi double [ 0.000000e+00, %145 ], [ %171, %149 ]
  %153 = phi double [ 0.000000e+00, %145 ], [ %169, %149 ]
  %154 = phi double [ 1.000000e+00, %145 ], [ %161, %149 ]
  call void @llvm.dbg.value(metadata i32 %150, metadata !2343, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %151, metadata !2344, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %152, metadata !2345, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata double %153, metadata !2363, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata double %154, metadata !2362, metadata !DIExpression()), !dbg !2378
  %155 = sitofp i32 %150 to double, !dbg !2438
  %156 = fadd double %146, %155, !dbg !2439
  %157 = fmul double %156, %2, !dbg !2440
  %158 = fadd double %147, %155, !dbg !2441
  %159 = fmul double %158, %155, !dbg !2442
  %160 = fdiv double %157, %159, !dbg !2443
  call void @llvm.dbg.value(metadata double %160, metadata !2364, metadata !DIExpression()), !dbg !2444
  %161 = fmul double %154, %160, !dbg !2445
  call void @llvm.dbg.value(metadata double %161, metadata !2362, metadata !DIExpression()), !dbg !2378
  %162 = tail call double @llvm.fabs.f64(double %160), !dbg !2446
  %163 = fmul double %153, %162, !dbg !2447
  %164 = tail call double @llvm.fabs.f64(double %161), !dbg !2448
  %165 = fmul double %164, 8.000000e+00, !dbg !2449
  %166 = fmul double %165, 2.000000e+00, !dbg !2450
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !2451
  %168 = fadd double %163, %167, !dbg !2452
  %169 = fadd double %153, %168, !dbg !2453
  call void @llvm.dbg.value(metadata double %169, metadata !2363, metadata !DIExpression()), !dbg !2378
  %170 = fadd double %151, %161, !dbg !2454
  call void @llvm.dbg.value(metadata double %170, metadata !2344, metadata !DIExpression()), !dbg !2380
  %171 = fadd double %152, %169, !dbg !2455
  call void @llvm.dbg.value(metadata double %171, metadata !2345, metadata !DIExpression()), !dbg !2380
  %172 = add nuw nsw i32 %150, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %172, metadata !2343, metadata !DIExpression()), !dbg !2380
  %173 = icmp eq i32 %150, %148, !dbg !2436
  br i1 %173, label %174, label %149, !dbg !2437, !llvm.loop !2457

174:                                              ; preds = %149, %143
  %175 = phi double [ 0.000000e+00, %143 ], [ %171, %149 ], !dbg !2378
  %176 = phi double [ 1.000000e+00, %143 ], [ %170, %149 ], !dbg !2378
  %177 = fadd double %1, -1.000000e+00, !dbg !2459
  %178 = call i32 @gsl_sf_gamma_e(double noundef %177, ptr noundef nonnull %33) #8, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %178, metadata !2360, metadata !DIExpression()), !dbg !2378
  %179 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %34) #8, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %179, metadata !2361, metadata !DIExpression()), !dbg !2378
  %180 = icmp eq i32 %178, 0, !dbg !2462
  br i1 %180, label %181, label %225, !dbg !2463

181:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #8, !dbg !2464
  %182 = sub nsw i32 1, %79, !dbg !2465
  %183 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %182, ptr noundef nonnull %35) #8, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %183, metadata !2371, metadata !DIExpression()), !dbg !2379
  %184 = load double, ptr %35, align 8, !dbg !2467, !tbaa !182
  %185 = fmul double %82, %184, !dbg !2468
  call void @llvm.dbg.value(metadata double %185, metadata !2372, metadata !DIExpression()), !dbg !2379
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %35, i64 0, i32 1, !dbg !2469
  %187 = load double, ptr %186, align 8, !dbg !2469, !tbaa !190
  %188 = call double @llvm.fabs.f64(double %82), !dbg !2470
  %189 = fmul double %188, %187, !dbg !2471
  %190 = call double @llvm.fabs.f64(double %185), !dbg !2472
  %191 = fmul double %190, 0x3CC0000000000000, !dbg !2473
  %192 = fadd double %189, %191, !dbg !2474
  call void @llvm.dbg.value(metadata double %192, metadata !2373, metadata !DIExpression()), !dbg !2379
  %193 = load double, ptr %33, align 8, !dbg !2475, !tbaa !182
  %194 = load double, ptr %34, align 8, !dbg !2476, !tbaa !182
  %195 = fmul double %193, %194, !dbg !2477
  %196 = fmul double %185, %195, !dbg !2478
  call void @llvm.dbg.value(metadata double %196, metadata !2374, metadata !DIExpression()), !dbg !2379
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %33, i64 0, i32 1, !dbg !2479
  %198 = load double, ptr %197, align 8, !dbg !2479, !tbaa !190
  %199 = fmul double %185, %194, !dbg !2480
  %200 = call double @llvm.fabs.f64(double %199), !dbg !2481
  %201 = fmul double %198, %200, !dbg !2482
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %34, i64 0, i32 1, !dbg !2483
  %203 = load double, ptr %202, align 8, !dbg !2483, !tbaa !190
  %204 = fmul double %185, %193, !dbg !2484
  %205 = call double @llvm.fabs.f64(double %204), !dbg !2485
  %206 = fmul double %205, %203, !dbg !2486
  %207 = fadd double %201, %206, !dbg !2487
  %208 = call double @llvm.fabs.f64(double %195), !dbg !2488
  %209 = fmul double %192, %208, !dbg !2489
  %210 = fadd double %209, %207, !dbg !2490
  %211 = call double @llvm.fabs.f64(double %196), !dbg !2491
  %212 = fmul double %211, 0x3CC0000000000000, !dbg !2492
  %213 = fadd double %212, %210, !dbg !2493
  call void @llvm.dbg.value(metadata double %213, metadata !2375, metadata !DIExpression()), !dbg !2379
  %214 = fmul double %176, %196, !dbg !2494
  %215 = call double @llvm.fabs.f64(double %176), !dbg !2495
  %216 = fmul double %215, %213, !dbg !2496
  %217 = fmul double %175, %211, !dbg !2497
  %218 = fadd double %217, %216, !dbg !2498
  %219 = sitofp i32 %79 to double, !dbg !2499
  %220 = fmul double %219, 0x3CC0000000000000, !dbg !2500
  %221 = call double @llvm.fabs.f64(double %214), !dbg !2501
  %222 = fmul double %220, %221, !dbg !2502
  %223 = fadd double %222, %218, !dbg !2503
  %224 = fmul double %223, 2.000000e+00, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #8, !dbg !2505
  br label %225

225:                                              ; preds = %181, %174
  %226 = phi double [ %214, %181 ], [ 0.000000e+00, %174 ], !dbg !2506
  %227 = phi double [ %224, %181 ], [ 0.000000e+00, %174 ], !dbg !2506
  %228 = phi i32 [ %183, %181 ], [ %178, %174 ], !dbg !2506
  tail call void @llvm.dbg.value(metadata double %226, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2326
  tail call void @llvm.dbg.value(metadata double %227, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2326
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #8, !dbg !2507
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #8, !dbg !2507
  br label %229

229:                                              ; preds = %141, %116, %225
  %230 = phi double [ %122, %116 ], [ %226, %225 ], [ 0.000000e+00, %141 ], !dbg !2508
  %231 = phi double [ %140, %116 ], [ %227, %225 ], [ 0.000000e+00, %141 ], !dbg !2508
  %232 = phi i32 [ %120, %116 ], [ %228, %225 ], [ 0, %141 ], !dbg !2508
  tail call void @llvm.dbg.value(metadata double %231, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2326
  tail call void @llvm.dbg.value(metadata double %230, metadata !2253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 %232, metadata !2254, metadata !DIExpression()), !dbg !2326
  %233 = fadd double %82, -1.000000e+00, !dbg !2509
  %234 = call double @llvm.fabs.f64(double %233), !dbg !2511
  %235 = fcmp ogt double %234, 5.000000e-01, !dbg !2512
  br i1 %235, label %236, label %437, !dbg !2513

236:                                              ; preds = %229
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2514, metadata !DIExpression(), metadata !2275, metadata ptr %24, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2531, metadata !DIExpression(), metadata !2276, metadata ptr %25, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2538, metadata !DIExpression(), metadata !2277, metadata ptr %26, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2539, metadata !DIExpression(), metadata !2278, metadata ptr %27, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2279, metadata ptr %28, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2546, metadata !DIExpression(), metadata !2280, metadata ptr %29, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2547, metadata !DIExpression(), metadata !2281, metadata ptr %30, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2558, metadata !DIExpression(), metadata !2282, metadata ptr %31, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %230, metadata !2526, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2569
  call void @llvm.dbg.value(metadata double %231, metadata !2526, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %79, metadata !2519, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %0, metadata !2520, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %62, metadata !2521, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %1, metadata !2522, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %61, metadata !2523, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %2, metadata !2524, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %82, metadata !2525, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %3, metadata !2527, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !2528, metadata !DIExpression()), !dbg !2569
  %237 = sub nsw i32 1, %79, !dbg !2572
  %238 = icmp sgt i32 %79, 0, !dbg !2572
  %239 = select i1 %238, i32 0, i32 %237, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %239, metadata !2529, metadata !DIExpression()), !dbg !2569
  %240 = sitofp i32 %239 to double, !dbg !2573
  call void @llvm.dbg.value(metadata double %240, metadata !2530, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #8, !dbg !2574
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #8, !dbg !2575
  %241 = call i32 @gsl_sf_gammainv_e(double noundef %64, ptr noundef nonnull %24) #8, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %241, metadata !2532, metadata !DIExpression()), !dbg !2569
  %242 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %239, ptr noundef nonnull %25) #8, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %242, metadata !2533, metadata !DIExpression()), !dbg !2569
  %243 = fmul double %61, 0x400921FB54442D18, !dbg !2578
  call void @llvm.dbg.value(metadata double %243, metadata !2534, metadata !DIExpression()), !dbg !2569
  %244 = fcmp une double %243, 0.000000e+00, !dbg !2579
  br i1 %244, label %245, label %248, !dbg !2580

245:                                              ; preds = %236
  %246 = call double @sin(double noundef %243) #8, !dbg !2581
  %247 = fdiv double %243, %246, !dbg !2582
  br label %248, !dbg !2580

248:                                              ; preds = %245, %236
  %249 = phi double [ %247, %245 ], [ 1.000000e+00, %236 ], !dbg !2580
  call void @llvm.dbg.value(metadata double %249, metadata !2535, metadata !DIExpression()), !dbg !2569
  %250 = and i32 %79, 1, !dbg !2583
  %251 = icmp eq i32 %250, 0, !dbg !2583
  %252 = fneg double %249, !dbg !2584
  %253 = select i1 %251, double %249, double %252, !dbg !2584
  %254 = load double, ptr %24, align 8, !dbg !2585, !tbaa !182
  %255 = fmul double %253, %254, !dbg !2586
  %256 = load double, ptr %25, align 8, !dbg !2587, !tbaa !182
  %257 = fmul double %255, %256, !dbg !2588
  call void @llvm.dbg.value(metadata double %257, metadata !2536, metadata !DIExpression()), !dbg !2569
  %258 = call double @llvm.fabs.f64(double %254), !dbg !2589
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %25, i64 0, i32 1, !dbg !2590
  %260 = load double, ptr %259, align 8, !dbg !2590, !tbaa !190
  %261 = fmul double %258, %260, !dbg !2591
  %262 = call double @llvm.fabs.f64(double %256), !dbg !2592
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !2593
  %264 = load double, ptr %263, align 8, !dbg !2593, !tbaa !190
  %265 = fmul double %262, %264, !dbg !2594
  %266 = fadd double %261, %265, !dbg !2595
  %267 = call double @llvm.fabs.f64(double %257), !dbg !2596
  %268 = fmul double %267, 0x3CC0000000000000, !dbg !2597
  %269 = fadd double %268, %266, !dbg !2598
  call void @llvm.dbg.value(metadata double %269, metadata !2537, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #8, !dbg !2599
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #8, !dbg !2600
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #8, !dbg !2601
  %270 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %240, ptr noundef nonnull %26) #8, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %270, metadata !2541, metadata !DIExpression()), !dbg !2569
  %271 = fadd double %240, 1.000000e+00, !dbg !2603
  %272 = call i32 @gsl_sf_gammainv_e(double noundef %271, ptr noundef nonnull %27) #8, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %272, metadata !2542, metadata !DIExpression()), !dbg !2569
  %273 = fadd double %62, %240, !dbg !2605
  %274 = call i32 @gsl_sf_gammainv_e(double noundef %273, ptr noundef nonnull %28) #8, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %274, metadata !2543, metadata !DIExpression()), !dbg !2569
  %275 = icmp eq i32 %241, 0, !dbg !2607
  %276 = icmp eq i32 %272, 0, !dbg !2607
  %277 = select i1 %276, i32 %274, i32 %272, !dbg !2607
  %278 = select i1 %275, i32 %277, i32 %241, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %278, metadata !2544, metadata !DIExpression()), !dbg !2569
  %279 = icmp eq i32 %278, 0, !dbg !2608
  %280 = icmp eq i32 %270, 0, !dbg !2608
  %281 = select i1 %280, i32 %242, i32 %270, !dbg !2608
  %282 = select i1 %279, i32 %281, i32 %278, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %282, metadata !2545, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #8, !dbg !2609
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #8, !dbg !2610
  %283 = fsub double %240, %61, !dbg !2611
  %284 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %283, ptr noundef nonnull %29) #8, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %284, metadata !2548, metadata !DIExpression()), !dbg !2569
  %285 = fsub double %271, %61, !dbg !2613
  %286 = call i32 @gsl_sf_gammainv_e(double noundef %285, ptr noundef nonnull %30) #8, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %286, metadata !2549, metadata !DIExpression()), !dbg !2569
  %287 = icmp eq i32 %282, 0, !dbg !2615
  %288 = icmp eq i32 %284, 0, !dbg !2615
  %289 = select i1 %288, i32 %286, i32 %284, !dbg !2615
  %290 = select i1 %287, i32 %289, i32 %282, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %290, metadata !2550, metadata !DIExpression()), !dbg !2569
  %291 = load double, ptr %29, align 8, !dbg !2616, !tbaa !182
  %292 = fmul double %257, %291, !dbg !2617
  %293 = load double, ptr %28, align 8, !dbg !2618, !tbaa !182
  %294 = fmul double %292, %293, !dbg !2619
  %295 = load double, ptr %30, align 8, !dbg !2620, !tbaa !182
  %296 = fmul double %294, %295, !dbg !2621
  call void @llvm.dbg.value(metadata double %296, metadata !2551, metadata !DIExpression()), !dbg !2569
  %297 = call double @llvm.fabs.f64(double %294), !dbg !2622
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !2623
  %299 = load double, ptr %298, align 8, !dbg !2623, !tbaa !190
  %300 = fmul double %297, %299, !dbg !2624
  %301 = fmul double %292, %295, !dbg !2625
  %302 = call double @llvm.fabs.f64(double %301), !dbg !2626
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %28, i64 0, i32 1, !dbg !2627
  %304 = load double, ptr %303, align 8, !dbg !2627, !tbaa !190
  %305 = fmul double %302, %304, !dbg !2628
  %306 = fadd double %300, %305, !dbg !2629
  %307 = fmul double %257, %293, !dbg !2630
  %308 = fmul double %307, %295, !dbg !2631
  %309 = call double @llvm.fabs.f64(double %308), !dbg !2632
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !2633
  %311 = load double, ptr %310, align 8, !dbg !2633, !tbaa !190
  %312 = fmul double %309, %311, !dbg !2634
  %313 = fadd double %306, %312, !dbg !2635
  %314 = fmul double %291, %293, !dbg !2636
  %315 = fmul double %314, %295, !dbg !2637
  %316 = call double @llvm.fabs.f64(double %315), !dbg !2638
  %317 = fmul double %269, %316, !dbg !2639
  %318 = fadd double %317, %313, !dbg !2640
  %319 = call double @llvm.fabs.f64(double %296), !dbg !2641
  %320 = fmul double %319, 0x3CC0000000000000, !dbg !2642
  %321 = fadd double %320, %318, !dbg !2643
  call void @llvm.dbg.value(metadata double %321, metadata !2552, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #8, !dbg !2644
  %322 = fadd double %240, %1, !dbg !2645
  %323 = call i32 @gsl_sf_gammainv_e(double noundef %322, ptr noundef nonnull %31) #8, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %323, metadata !2559, metadata !DIExpression()), !dbg !2569
  %324 = load double, ptr %26, align 8, !dbg !2647, !tbaa !182
  %325 = fmul double %257, %324, !dbg !2648
  %326 = load double, ptr %31, align 8, !dbg !2649, !tbaa !182
  %327 = fmul double %325, %326, !dbg !2650
  %328 = load double, ptr %27, align 8, !dbg !2651, !tbaa !182
  %329 = fmul double %327, %328, !dbg !2652
  %330 = fdiv double %329, %61, !dbg !2653
  call void @llvm.dbg.value(metadata double %330, metadata !2560, metadata !DIExpression()), !dbg !2569
  %331 = fdiv double %327, %61, !dbg !2654
  %332 = call double @llvm.fabs.f64(double %331), !dbg !2655
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %27, i64 0, i32 1, !dbg !2656
  %334 = load double, ptr %333, align 8, !dbg !2656, !tbaa !190
  %335 = fmul double %334, %332, !dbg !2657
  %336 = fmul double %325, %328, !dbg !2658
  %337 = fdiv double %336, %61, !dbg !2659
  %338 = call double @llvm.fabs.f64(double %337), !dbg !2660
  %339 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !2661
  %340 = load double, ptr %339, align 8, !dbg !2661, !tbaa !190
  %341 = fmul double %340, %338, !dbg !2662
  %342 = fadd double %335, %341, !dbg !2663
  %343 = fmul double %257, %326, !dbg !2664
  %344 = fmul double %343, %328, !dbg !2665
  %345 = fdiv double %344, %61, !dbg !2666
  %346 = call double @llvm.fabs.f64(double %345), !dbg !2667
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %26, i64 0, i32 1, !dbg !2668
  %348 = load double, ptr %347, align 8, !dbg !2668, !tbaa !190
  %349 = fmul double %346, %348, !dbg !2669
  %350 = fadd double %349, %342, !dbg !2670
  %351 = fmul double %324, %326, !dbg !2671
  %352 = fmul double %351, %328, !dbg !2672
  %353 = fdiv double %352, %61, !dbg !2673
  %354 = call double @llvm.fabs.f64(double %353), !dbg !2674
  %355 = fmul double %269, %354, !dbg !2675
  %356 = fadd double %355, %350, !dbg !2676
  %357 = call double @llvm.fabs.f64(double %330), !dbg !2677
  %358 = fmul double %357, 0x3CC0000000000000, !dbg !2678
  %359 = fadd double %358, %356, !dbg !2679
  call void @llvm.dbg.value(metadata double %359, metadata !2561, metadata !DIExpression()), !dbg !2569
  %360 = icmp eq i32 %290, 0, !dbg !2680
  %361 = select i1 %360, i32 %323, i32 %290, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %361, metadata !2550, metadata !DIExpression()), !dbg !2569
  %362 = fmul double %82, %296, !dbg !2681
  %363 = fdiv double %362, %61, !dbg !2682
  call void @llvm.dbg.value(metadata double %363, metadata !2551, metadata !DIExpression()), !dbg !2569
  %364 = fdiv double %82, %61, !dbg !2683
  %365 = call double @llvm.fabs.f64(double %364), !dbg !2684
  %366 = fmul double %365, %321, !dbg !2685
  %367 = call double @llvm.fabs.f64(double %363), !dbg !2686
  %368 = fmul double %367, 0x3CD0000000000000, !dbg !2687
  %369 = fadd double %368, %366, !dbg !2688
  call void @llvm.dbg.value(metadata double %369, metadata !2552, metadata !DIExpression()), !dbg !2569
  %370 = fadd double %230, %330, !dbg !2689
  %371 = fsub double %370, %363, !dbg !2690
  call void @llvm.dbg.value(metadata double %371, metadata !2554, metadata !DIExpression()), !dbg !2569
  %372 = fadd double %231, %359, !dbg !2691
  %373 = fadd double %369, %372, !dbg !2692
  %374 = call double @llvm.fabs.f64(double %230), !dbg !2693
  %375 = fadd double %374, %357, !dbg !2694
  %376 = fadd double %367, %375, !dbg !2695
  %377 = fmul double %376, 0x3CC0000000000000, !dbg !2696
  %378 = fadd double %377, %373, !dbg !2697
  call void @llvm.dbg.value(metadata double %378, metadata !2555, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 1, metadata !2553, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double undef, metadata !2556, metadata !DIExpression()), !dbg !2569
  br label %379, !dbg !2698

379:                                              ; preds = %418, %248
  %380 = phi double [ %363, %248 ], [ %406, %418 ]
  %381 = phi double [ %369, %248 ], [ %409, %418 ]
  %382 = phi double [ %359, %248 ], [ %405, %418 ]
  %383 = phi double [ %330, %248 ], [ %402, %418 ]
  %384 = phi i32 [ 1, %248 ], [ %419, %418 ]
  %385 = phi double [ %371, %248 ], [ %412, %418 ]
  %386 = phi double [ %378, %248 ], [ %413, %418 ]
  call void @llvm.dbg.value(metadata double %380, metadata !2551, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %381, metadata !2552, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %382, metadata !2561, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %383, metadata !2560, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %384, metadata !2553, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %385, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %386, metadata !2555, metadata !DIExpression()), !dbg !2569
  %387 = add nsw i32 %384, %239, !dbg !2699
  %388 = sitofp i32 %387 to double, !dbg !2700
  call void @llvm.dbg.value(metadata double %388, metadata !2562, metadata !DIExpression()), !dbg !2701
  %389 = add nsw i32 %387, -1, !dbg !2702
  %390 = sitofp i32 %389 to double, !dbg !2703
  call void @llvm.dbg.value(metadata double %390, metadata !2566, metadata !DIExpression()), !dbg !2701
  %391 = fadd double %390, %0, !dbg !2704
  %392 = fmul double %391, %2, !dbg !2705
  %393 = fadd double %390, %1, !dbg !2706
  %394 = fmul double %393, %388, !dbg !2707
  %395 = fdiv double %392, %394, !dbg !2708
  call void @llvm.dbg.value(metadata double %395, metadata !2567, metadata !DIExpression()), !dbg !2701
  %396 = fsub double %391, %61, !dbg !2709
  %397 = fmul double %396, %2, !dbg !2710
  %398 = fadd double %62, %390, !dbg !2711
  %399 = fsub double %388, %61, !dbg !2712
  %400 = fmul double %399, %398, !dbg !2713
  %401 = fdiv double %397, %400, !dbg !2714
  call void @llvm.dbg.value(metadata double %401, metadata !2568, metadata !DIExpression()), !dbg !2701
  %402 = fmul double %383, %395, !dbg !2715
  call void @llvm.dbg.value(metadata double %402, metadata !2560, metadata !DIExpression()), !dbg !2569
  %403 = call double @llvm.fabs.f64(double %395), !dbg !2716
  %404 = fmul double %382, %403, !dbg !2717
  %405 = fadd double %382, %404, !dbg !2718
  call void @llvm.dbg.value(metadata double %405, metadata !2561, metadata !DIExpression()), !dbg !2569
  %406 = fmul double %380, %401, !dbg !2719
  call void @llvm.dbg.value(metadata double %406, metadata !2551, metadata !DIExpression()), !dbg !2569
  %407 = call double @llvm.fabs.f64(double %401), !dbg !2720
  %408 = fmul double %381, %407, !dbg !2721
  %409 = fadd double %381, %408, !dbg !2722
  call void @llvm.dbg.value(metadata double %409, metadata !2552, metadata !DIExpression()), !dbg !2569
  %410 = fsub double %402, %406, !dbg !2723
  call void @llvm.dbg.value(metadata double %410, metadata !2556, metadata !DIExpression()), !dbg !2569
  %411 = fadd double %405, %409, !dbg !2724
  call void @llvm.dbg.value(metadata double %411, metadata !2557, metadata !DIExpression()), !dbg !2569
  %412 = fadd double %385, %410, !dbg !2725
  call void @llvm.dbg.value(metadata double %412, metadata !2554, metadata !DIExpression()), !dbg !2569
  %413 = fadd double %386, %411, !dbg !2726
  call void @llvm.dbg.value(metadata double %413, metadata !2555, metadata !DIExpression()), !dbg !2569
  %414 = call double @llvm.fabs.f64(double %410), !dbg !2727
  %415 = call double @llvm.fabs.f64(double %412), !dbg !2729
  %416 = fmul double %415, 0x3CC0000000000000, !dbg !2730
  %417 = fcmp olt double %414, %416, !dbg !2731
  br i1 %417, label %421, label %418

418:                                              ; preds = %379
  %419 = add nuw nsw i32 %384, 1, !dbg !2732
  call void @llvm.dbg.value(metadata double %406, metadata !2551, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %409, metadata !2552, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %405, metadata !2561, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %402, metadata !2560, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %419, metadata !2553, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %412, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %410, metadata !2556, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %413, metadata !2555, metadata !DIExpression()), !dbg !2569
  %420 = icmp eq i32 %419, 2000, !dbg !2733
  br i1 %420, label %421, label %379, !dbg !2698, !llvm.loop !2734

421:                                              ; preds = %418, %379
  %422 = phi i32 [ %384, %379 ], [ 2000, %418 ], !dbg !2736
  call void @llvm.dbg.value(metadata double %412, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %410, metadata !2556, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata double %413, metadata !2555, metadata !DIExpression()), !dbg !2569
  store double %412, ptr %3, align 8, !dbg !2737, !tbaa !182
  %423 = fmul double %413, 2.000000e+00, !dbg !2738
  %424 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2739
  %425 = fmul double %414, 2.000000e+00, !dbg !2740
  %426 = fadd double %425, %423, !dbg !2741
  %427 = add nuw nsw i32 %422, 2, !dbg !2742
  %428 = sitofp i32 %427 to double, !dbg !2742
  %429 = fmul double %428, 0x3CD0000000000000, !dbg !2743
  %430 = fmul double %415, %429, !dbg !2744
  %431 = fadd double %426, %430, !dbg !2745
  %432 = fmul double %431, 2.000000e+00, !dbg !2746
  store double %432, ptr %424, align 8, !dbg !2746, !tbaa !190
  %433 = icmp ugt i32 %422, 1999, !dbg !2747
  br i1 %433, label %434, label %435, !dbg !2749

434:                                              ; preds = %421
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 11) #8, !dbg !2750
  br label %435, !dbg !2750

435:                                              ; preds = %421, %434
  %436 = phi i32 [ 11, %434 ], [ %361, %421 ], !dbg !2753
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #8, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #8, !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 %436, metadata !2255, metadata !DIExpression()), !dbg !2326
  br label %962, !dbg !2755

437:                                              ; preds = %229
  %438 = fcmp olt double %64, 0.000000e+00, !dbg !2756
  br i1 %438, label %439, label %662, !dbg !2758

439:                                              ; preds = %437
  %440 = call double @llvm.floor.f64(double %64), !dbg !2759
  %441 = fcmp oeq double %64, %440, !dbg !2760
  %442 = fcmp une double %61, 0.000000e+00
  %443 = and i1 %441, %442, !dbg !2761
  br i1 %443, label %444, label %662, !dbg !2761

444:                                              ; preds = %439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2762, metadata !DIExpression(), metadata !2267, metadata ptr %16, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2268, metadata ptr %17, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2783, metadata !DIExpression(), metadata !2269, metadata ptr %18, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2270, metadata ptr %19, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2790, metadata !DIExpression(), metadata !2271, metadata ptr %20, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2272, metadata ptr %21, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2803, metadata !DIExpression(), metadata !2273, metadata ptr %22, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2804, metadata !DIExpression(), metadata !2274, metadata ptr %23, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %230, metadata !2772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2816
  call void @llvm.dbg.value(metadata double %231, metadata !2772, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %79, metadata !2765, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %0, metadata !2766, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %62, metadata !2767, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %1, metadata !2768, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %61, metadata !2769, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %2, metadata !2770, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %82, metadata !2771, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %3, metadata !2773, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !2774, metadata !DIExpression()), !dbg !2816
  %445 = sub nsw i32 1, %79, !dbg !2819
  %446 = icmp sgt i32 %79, 0, !dbg !2819
  %447 = select i1 %446, i32 0, i32 %445, !dbg !2819
  call void @llvm.dbg.value(metadata i32 %447, metadata !2775, metadata !DIExpression()), !dbg !2816
  %448 = sitofp i32 %447 to double, !dbg !2820
  call void @llvm.dbg.value(metadata double %448, metadata !2776, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !2821
  %449 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %447, ptr noundef nonnull %16) #8, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %449, metadata !2777, metadata !DIExpression()), !dbg !2816
  %450 = fmul double %61, 0x400921FB54442D18, !dbg !2823
  call void @llvm.dbg.value(metadata double %450, metadata !2778, metadata !DIExpression()), !dbg !2816
  %451 = fcmp une double %450, 0.000000e+00, !dbg !2824
  br i1 %451, label %452, label %455, !dbg !2825

452:                                              ; preds = %444
  %453 = call double @sin(double noundef %450) #8, !dbg !2826
  %454 = fdiv double %450, %453, !dbg !2827
  br label %455, !dbg !2825

455:                                              ; preds = %452, %444
  %456 = phi double [ %454, %452 ], [ 1.000000e+00, %444 ], !dbg !2825
  call void @llvm.dbg.value(metadata double %456, metadata !2779, metadata !DIExpression()), !dbg !2816
  %457 = and i32 %79, 1, !dbg !2828
  %458 = icmp eq i32 %457, 0, !dbg !2828
  %459 = fneg double %456, !dbg !2829
  %460 = select i1 %458, double %456, double %459, !dbg !2829
  %461 = load double, ptr %16, align 8, !dbg !2830, !tbaa !182
  %462 = fmul double %460, %461, !dbg !2831
  call void @llvm.dbg.value(metadata double %462, metadata !2780, metadata !DIExpression()), !dbg !2816
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !2832
  %464 = load double, ptr %463, align 8, !dbg !2832, !tbaa !190
  %465 = call double @llvm.fabs.f64(double %464), !dbg !2833
  %466 = call double @llvm.fabs.f64(double %462), !dbg !2834
  %467 = fmul double %466, 0x3CC0000000000000, !dbg !2835
  %468 = fadd double %465, %467, !dbg !2836
  call void @llvm.dbg.value(metadata double %468, metadata !2781, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !2837
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !2838
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8, !dbg !2839
  %469 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %448, ptr noundef nonnull %17) #8, !dbg !2840
  call void @llvm.dbg.value(metadata i32 %469, metadata !2785, metadata !DIExpression()), !dbg !2816
  %470 = fadd double %448, 1.000000e+00, !dbg !2841
  %471 = call i32 @gsl_sf_gammainv_e(double noundef %470, ptr noundef nonnull %18) #8, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %471, metadata !2786, metadata !DIExpression()), !dbg !2816
  %472 = fadd double %62, %448, !dbg !2843
  %473 = call i32 @gsl_sf_gammainv_e(double noundef %472, ptr noundef nonnull %19) #8, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %473, metadata !2787, metadata !DIExpression()), !dbg !2816
  %474 = icmp eq i32 %471, 0, !dbg !2845
  %475 = select i1 %474, i32 %473, i32 %471, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %475, metadata !2788, metadata !DIExpression()), !dbg !2816
  %476 = icmp eq i32 %475, 0, !dbg !2846
  %477 = icmp eq i32 %469, 0, !dbg !2846
  %478 = select i1 %477, i32 %449, i32 %469, !dbg !2846
  %479 = select i1 %476, i32 %478, i32 %475, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %479, metadata !2789, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8, !dbg !2847
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #8, !dbg !2848
  %480 = fsub double %448, %61, !dbg !2849
  %481 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %480, ptr noundef nonnull %20) #8, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %481, metadata !2792, metadata !DIExpression()), !dbg !2816
  %482 = fsub double %470, %61, !dbg !2851
  %483 = call i32 @gsl_sf_gammainv_e(double noundef %482, ptr noundef nonnull %21) #8, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %483, metadata !2793, metadata !DIExpression()), !dbg !2816
  %484 = icmp eq i32 %479, 0, !dbg !2853
  %485 = icmp eq i32 %481, 0, !dbg !2853
  %486 = select i1 %485, i32 %483, i32 %481, !dbg !2853
  %487 = select i1 %484, i32 %486, i32 %479, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %487, metadata !2794, metadata !DIExpression()), !dbg !2816
  %488 = load double, ptr %16, align 8, !dbg !2854, !tbaa !182
  %489 = fmul double %460, %488, !dbg !2855
  %490 = fadd double %448, -1.000000e+00, !dbg !2856
  %491 = fadd double %490, %1, !dbg !2857
  %492 = fsub double %491, %61, !dbg !2858
  %493 = call double @gsl_sf_poch(double noundef %64, double noundef %492) #8, !dbg !2859
  %494 = fmul double %489, %493, !dbg !2860
  %495 = call double @gsl_sf_gammainv(double noundef %0) #8, !dbg !2861
  %496 = fmul double %494, %495, !dbg !2862
  call void @llvm.dbg.value(metadata double %496, metadata !2795, metadata !DIExpression()), !dbg !2816
  %497 = load double, ptr %19, align 8, !dbg !2863, !tbaa !182
  %498 = fmul double %496, %497, !dbg !2864
  %499 = load double, ptr %21, align 8, !dbg !2865, !tbaa !182
  %500 = fmul double %498, %499, !dbg !2866
  call void @llvm.dbg.value(metadata double %500, metadata !2796, metadata !DIExpression()), !dbg !2816
  %501 = load double, ptr %20, align 8, !dbg !2867, !tbaa !182
  %502 = fmul double %462, %501, !dbg !2868
  %503 = fmul double %497, %502, !dbg !2869
  %504 = call double @llvm.fabs.f64(double %503), !dbg !2870
  %505 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !2871
  %506 = load double, ptr %505, align 8, !dbg !2871, !tbaa !190
  %507 = fmul double %506, %504, !dbg !2872
  %508 = fmul double %499, %502, !dbg !2873
  %509 = call double @llvm.fabs.f64(double %508), !dbg !2874
  %510 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !2875
  %511 = load double, ptr %510, align 8, !dbg !2875, !tbaa !190
  %512 = fmul double %511, %509, !dbg !2876
  %513 = fadd double %507, %512, !dbg !2877
  %514 = fmul double %462, %497, !dbg !2878
  %515 = fmul double %514, %499, !dbg !2879
  %516 = call double @llvm.fabs.f64(double %515), !dbg !2880
  %517 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !2881
  %518 = load double, ptr %517, align 8, !dbg !2881, !tbaa !190
  %519 = fmul double %516, %518, !dbg !2882
  %520 = fadd double %519, %513, !dbg !2883
  %521 = fmul double %497, %501, !dbg !2884
  %522 = fmul double %499, %521, !dbg !2885
  %523 = call double @llvm.fabs.f64(double %522), !dbg !2886
  %524 = fmul double %468, %523, !dbg !2887
  %525 = fadd double %524, %520, !dbg !2888
  %526 = call double @llvm.fabs.f64(double %500), !dbg !2889
  %527 = fmul double %526, 0x3CC0000000000000, !dbg !2890
  %528 = fadd double %527, %525, !dbg !2891
  call void @llvm.dbg.value(metadata double %528, metadata !2797, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #8, !dbg !2892
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #8, !dbg !2893
  %529 = call i32 @gsl_sf_gammainv_e(double noundef %64, ptr noundef nonnull %22) #8, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %529, metadata !2805, metadata !DIExpression()), !dbg !2816
  %530 = fadd double %448, %1, !dbg !2895
  %531 = call i32 @gsl_sf_gammainv_e(double noundef %530, ptr noundef nonnull %23) #8, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %531, metadata !2806, metadata !DIExpression()), !dbg !2816
  %532 = load double, ptr %22, align 8, !dbg !2897, !tbaa !182
  %533 = fmul double %462, %532, !dbg !2898
  %534 = load double, ptr %17, align 8, !dbg !2899, !tbaa !182
  %535 = fmul double %533, %534, !dbg !2900
  %536 = load double, ptr %23, align 8, !dbg !2901, !tbaa !182
  %537 = fmul double %535, %536, !dbg !2902
  %538 = load double, ptr %18, align 8, !dbg !2903, !tbaa !182
  %539 = fmul double %537, %538, !dbg !2904
  %540 = fdiv double %539, %61, !dbg !2905
  call void @llvm.dbg.value(metadata double %540, metadata !2807, metadata !DIExpression()), !dbg !2816
  %541 = fmul double %462, %534, !dbg !2906
  %542 = fmul double %541, %536, !dbg !2907
  %543 = fmul double %542, %538, !dbg !2908
  %544 = fdiv double %543, %61, !dbg !2909
  %545 = call double @llvm.fabs.f64(double %544), !dbg !2910
  %546 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !2911
  %547 = load double, ptr %546, align 8, !dbg !2911, !tbaa !190
  %548 = fmul double %547, %545, !dbg !2912
  %549 = fmul double %533, %536, !dbg !2913
  %550 = fmul double %549, %538, !dbg !2914
  %551 = fdiv double %550, %61, !dbg !2915
  %552 = call double @llvm.fabs.f64(double %551), !dbg !2916
  %553 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !2917
  %554 = load double, ptr %553, align 8, !dbg !2917, !tbaa !190
  %555 = fmul double %554, %552, !dbg !2918
  %556 = fadd double %548, %555, !dbg !2919
  %557 = fmul double %535, %538, !dbg !2920
  %558 = fdiv double %557, %61, !dbg !2921
  %559 = call double @llvm.fabs.f64(double %558), !dbg !2922
  %560 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !2923
  %561 = load double, ptr %560, align 8, !dbg !2923, !tbaa !190
  %562 = fmul double %559, %561, !dbg !2924
  %563 = fadd double %562, %556, !dbg !2925
  %564 = fdiv double %537, %61, !dbg !2926
  %565 = call double @llvm.fabs.f64(double %564), !dbg !2927
  %566 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !2928
  %567 = load double, ptr %566, align 8, !dbg !2928, !tbaa !190
  %568 = fmul double %565, %567, !dbg !2929
  %569 = fadd double %568, %563, !dbg !2930
  %570 = fmul double %532, %534, !dbg !2931
  %571 = fmul double %570, %536, !dbg !2932
  %572 = fmul double %571, %538, !dbg !2933
  %573 = fdiv double %572, %61, !dbg !2934
  %574 = call double @llvm.fabs.f64(double %573), !dbg !2935
  %575 = fmul double %468, %574, !dbg !2936
  %576 = fadd double %575, %569, !dbg !2937
  %577 = call double @llvm.fabs.f64(double %540), !dbg !2938
  %578 = fmul double %577, 0x3CC0000000000000, !dbg !2939
  %579 = fadd double %578, %576, !dbg !2940
  call void @llvm.dbg.value(metadata double %579, metadata !2808, metadata !DIExpression()), !dbg !2816
  %580 = icmp eq i32 %487, 0, !dbg !2941
  %581 = icmp eq i32 %529, 0, !dbg !2941
  %582 = select i1 %581, i32 %531, i32 %529, !dbg !2941
  %583 = select i1 %580, i32 %582, i32 %487, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %583, metadata !2794, metadata !DIExpression()), !dbg !2816
  %584 = fmul double %82, %500, !dbg !2942
  %585 = fdiv double %584, %61, !dbg !2943
  call void @llvm.dbg.value(metadata double %585, metadata !2796, metadata !DIExpression()), !dbg !2816
  %586 = fdiv double %82, %61, !dbg !2944
  %587 = call double @llvm.fabs.f64(double %586), !dbg !2945
  %588 = fmul double %587, %528, !dbg !2946
  %589 = call double @llvm.fabs.f64(double %585), !dbg !2947
  %590 = fmul double %589, 0x3CD0000000000000, !dbg !2948
  %591 = fadd double %590, %588, !dbg !2949
  call void @llvm.dbg.value(metadata double %591, metadata !2797, metadata !DIExpression()), !dbg !2816
  %592 = fadd double %230, %540, !dbg !2950
  %593 = fsub double %592, %585, !dbg !2951
  call void @llvm.dbg.value(metadata double %593, metadata !2799, metadata !DIExpression()), !dbg !2816
  %594 = fadd double %231, %579, !dbg !2952
  %595 = fadd double %591, %594, !dbg !2953
  %596 = call double @llvm.fabs.f64(double %230), !dbg !2954
  %597 = fadd double %596, %577, !dbg !2955
  %598 = fadd double %589, %597, !dbg !2956
  %599 = fmul double %598, 0x3CC0000000000000, !dbg !2957
  %600 = fadd double %599, %595, !dbg !2958
  call void @llvm.dbg.value(metadata double %600, metadata !2800, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !2798, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double undef, metadata !2801, metadata !DIExpression()), !dbg !2816
  br label %601, !dbg !2959

601:                                              ; preds = %643, %455
  %602 = phi double [ %585, %455 ], [ %628, %643 ]
  %603 = phi double [ %591, %455 ], [ %631, %643 ]
  %604 = phi double [ %579, %455 ], [ %627, %643 ]
  %605 = phi double [ %540, %455 ], [ %624, %643 ]
  %606 = phi i32 [ 1, %455 ], [ %644, %643 ]
  %607 = phi double [ %593, %455 ], [ %634, %643 ]
  %608 = phi double [ %600, %455 ], [ %635, %643 ]
  call void @llvm.dbg.value(metadata double %602, metadata !2796, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %603, metadata !2797, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %604, metadata !2808, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %605, metadata !2807, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %606, metadata !2798, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %607, metadata !2799, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %608, metadata !2800, metadata !DIExpression()), !dbg !2816
  %609 = add nsw i32 %606, %447, !dbg !2960
  %610 = sitofp i32 %609 to double, !dbg !2961
  call void @llvm.dbg.value(metadata double %610, metadata !2809, metadata !DIExpression()), !dbg !2962
  %611 = add nsw i32 %609, -1, !dbg !2963
  %612 = sitofp i32 %611 to double, !dbg !2964
  call void @llvm.dbg.value(metadata double %612, metadata !2813, metadata !DIExpression()), !dbg !2962
  %613 = fadd double %612, %0, !dbg !2965
  %614 = fmul double %613, %2, !dbg !2966
  %615 = fadd double %612, %1, !dbg !2967
  %616 = fmul double %615, %610, !dbg !2968
  %617 = fdiv double %614, %616, !dbg !2969
  call void @llvm.dbg.value(metadata double %617, metadata !2814, metadata !DIExpression()), !dbg !2962
  %618 = fsub double %613, %61, !dbg !2970
  %619 = fmul double %618, %2, !dbg !2971
  %620 = fadd double %62, %612, !dbg !2972
  %621 = fsub double %610, %61, !dbg !2973
  %622 = fmul double %621, %620, !dbg !2974
  %623 = fdiv double %619, %622, !dbg !2975
  call void @llvm.dbg.value(metadata double %623, metadata !2815, metadata !DIExpression()), !dbg !2962
  %624 = fmul double %605, %617, !dbg !2976
  call void @llvm.dbg.value(metadata double %624, metadata !2807, metadata !DIExpression()), !dbg !2816
  %625 = call double @llvm.fabs.f64(double %617), !dbg !2977
  %626 = fmul double %604, %625, !dbg !2978
  %627 = fadd double %604, %626, !dbg !2979
  call void @llvm.dbg.value(metadata double %627, metadata !2808, metadata !DIExpression()), !dbg !2816
  %628 = fmul double %602, %623, !dbg !2980
  call void @llvm.dbg.value(metadata double %628, metadata !2796, metadata !DIExpression()), !dbg !2816
  %629 = call double @llvm.fabs.f64(double %623), !dbg !2981
  %630 = fmul double %603, %629, !dbg !2982
  %631 = fadd double %603, %630, !dbg !2983
  call void @llvm.dbg.value(metadata double %631, metadata !2797, metadata !DIExpression()), !dbg !2816
  %632 = fsub double %624, %628, !dbg !2984
  call void @llvm.dbg.value(metadata double %632, metadata !2801, metadata !DIExpression()), !dbg !2816
  %633 = fadd double %627, %631, !dbg !2985
  call void @llvm.dbg.value(metadata double %633, metadata !2802, metadata !DIExpression()), !dbg !2816
  %634 = fadd double %607, %632, !dbg !2986
  call void @llvm.dbg.value(metadata double %634, metadata !2799, metadata !DIExpression()), !dbg !2816
  %635 = fadd double %608, %633, !dbg !2987
  call void @llvm.dbg.value(metadata double %635, metadata !2800, metadata !DIExpression()), !dbg !2816
  %636 = call i32 @gsl_finite(double noundef %632) #8, !dbg !2988
  %637 = icmp eq i32 %636, 0, !dbg !2988
  %638 = call double @llvm.fabs.f64(double %632), !dbg !2816
  %639 = call double @llvm.fabs.f64(double %634), !dbg !2816
  %640 = fmul double %639, 0x3CC0000000000000
  %641 = fcmp olt double %638, %640
  %642 = select i1 %637, i1 true, i1 %641, !dbg !2990
  br i1 %642, label %646, label %643, !dbg !2990

643:                                              ; preds = %601
  %644 = add nuw nsw i32 %606, 1, !dbg !2991
  call void @llvm.dbg.value(metadata double %628, metadata !2796, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %631, metadata !2797, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %627, metadata !2808, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %624, metadata !2807, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %644, metadata !2798, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %634, metadata !2799, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %635, metadata !2800, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %632, metadata !2801, metadata !DIExpression()), !dbg !2816
  %645 = icmp eq i32 %644, 2000, !dbg !2992
  br i1 %645, label %646, label %601, !dbg !2959, !llvm.loop !2993

646:                                              ; preds = %643, %601
  %647 = phi i32 [ %606, %601 ], [ 2000, %643 ], !dbg !2995
  call void @llvm.dbg.value(metadata double %634, metadata !2799, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %635, metadata !2800, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata double %632, metadata !2801, metadata !DIExpression()), !dbg !2816
  store double %634, ptr %3, align 8, !dbg !2996, !tbaa !182
  %648 = fmul double %635, 2.000000e+00, !dbg !2997
  %649 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2998
  %650 = fmul double %638, 2.000000e+00, !dbg !2999
  %651 = fadd double %648, %650, !dbg !3000
  %652 = add nuw nsw i32 %647, 2, !dbg !3001
  %653 = sitofp i32 %652 to double, !dbg !3001
  %654 = fmul double %653, 0x3CD0000000000000, !dbg !3002
  %655 = fmul double %639, %654, !dbg !3003
  %656 = fadd double %651, %655, !dbg !3004
  %657 = fmul double %656, 2.000000e+00, !dbg !3005
  store double %657, ptr %649, align 8, !dbg !3005, !tbaa !190
  %658 = icmp ugt i32 %647, 1999, !dbg !3006
  br i1 %658, label %659, label %660, !dbg !3008

659:                                              ; preds = %646
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 537, i32 noundef 11) #8, !dbg !3009
  br label %660, !dbg !3009

660:                                              ; preds = %646, %659
  %661 = phi i32 [ 11, %659 ], [ %583, %646 ], !dbg !3012
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !3013
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !3013
  tail call void @llvm.dbg.value(metadata i32 %661, metadata !2255, metadata !DIExpression()), !dbg !2326
  br label %962, !dbg !3014

662:                                              ; preds = %439, %437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3015, metadata !DIExpression(), metadata !2256, metadata ptr %5, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3031, metadata !DIExpression(), metadata !2257, metadata ptr %6, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3038, metadata !DIExpression(), metadata !2258, metadata ptr %7, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3039, metadata !DIExpression(), metadata !2259, metadata ptr %8, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3040, metadata !DIExpression(), metadata !2260, metadata ptr %9, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3046, metadata !DIExpression(), metadata !2261, metadata ptr %10, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3047, metadata !DIExpression(), metadata !2262, metadata ptr %11, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3054, metadata !DIExpression(), metadata !2263, metadata ptr %12, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3055, metadata !DIExpression(), metadata !2264, metadata ptr %13, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3056, metadata !DIExpression(), metadata !2265, metadata ptr %14, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3066, metadata !DIExpression(), metadata !2266, metadata ptr %15, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %230, metadata !3025, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3084
  call void @llvm.dbg.value(metadata double %231, metadata !3025, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %79, metadata !3018, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %0, metadata !3019, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %62, metadata !3020, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %1, metadata !3021, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %61, metadata !3022, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %2, metadata !3023, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %82, metadata !3024, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %3, metadata !3026, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !3027, metadata !DIExpression()), !dbg !3084
  %663 = call double @log(double noundef %2) #8, !dbg !3087
  call void @llvm.dbg.value(metadata double %663, metadata !3028, metadata !DIExpression()), !dbg !3084
  %664 = sub nsw i32 1, %79, !dbg !3088
  %665 = icmp sgt i32 %79, 0, !dbg !3088
  %666 = select i1 %665, i32 0, i32 %664, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %666, metadata !3029, metadata !DIExpression()), !dbg !3084
  %667 = sitofp i32 %666 to double, !dbg !3089
  call void @llvm.dbg.value(metadata double %667, metadata !3030, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !3090
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !3091
  %668 = call i32 @gsl_sf_gammainv_e(double noundef %64, ptr noundef nonnull %5) #8, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %668, metadata !3032, metadata !DIExpression()), !dbg !3084
  %669 = call i32 @gsl_sf_pow_int_e(double noundef %2, i32 noundef %666, ptr noundef nonnull %6) #8, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %669, metadata !3033, metadata !DIExpression()), !dbg !3084
  %670 = fmul double %61, 0x400921FB54442D18, !dbg !3094
  call void @llvm.dbg.value(metadata double %670, metadata !3034, metadata !DIExpression()), !dbg !3084
  %671 = fcmp une double %670, 0.000000e+00, !dbg !3095
  br i1 %671, label %672, label %675, !dbg !3096

672:                                              ; preds = %662
  %673 = call double @sin(double noundef %670) #8, !dbg !3097
  %674 = fdiv double %670, %673, !dbg !3098
  br label %675, !dbg !3096

675:                                              ; preds = %672, %662
  %676 = phi double [ %674, %672 ], [ 1.000000e+00, %662 ], !dbg !3096
  call void @llvm.dbg.value(metadata double %676, metadata !3035, metadata !DIExpression()), !dbg !3084
  %677 = and i32 %79, 1, !dbg !3099
  %678 = icmp eq i32 %677, 0, !dbg !3099
  %679 = fneg double %676, !dbg !3100
  %680 = select i1 %678, double %676, double %679, !dbg !3100
  %681 = load double, ptr %5, align 8, !dbg !3101, !tbaa !182
  %682 = fmul double %680, %681, !dbg !3102
  %683 = load double, ptr %6, align 8, !dbg !3103, !tbaa !182
  %684 = fmul double %682, %683, !dbg !3104
  call void @llvm.dbg.value(metadata double %684, metadata !3036, metadata !DIExpression()), !dbg !3084
  %685 = call double @llvm.fabs.f64(double %681), !dbg !3105
  %686 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3106
  %687 = load double, ptr %686, align 8, !dbg !3106, !tbaa !190
  %688 = fmul double %685, %687, !dbg !3107
  %689 = call double @llvm.fabs.f64(double %683), !dbg !3108
  %690 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3109
  %691 = load double, ptr %690, align 8, !dbg !3109, !tbaa !190
  %692 = fmul double %689, %691, !dbg !3110
  %693 = fadd double %688, %692, !dbg !3111
  %694 = call double @llvm.fabs.f64(double %684), !dbg !3112
  %695 = fmul double %694, 0x3CC0000000000000, !dbg !3113
  %696 = fadd double %695, %693, !dbg !3114
  call void @llvm.dbg.value(metadata double %696, metadata !3037, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !3115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !3116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !3117
  %697 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %667, ptr noundef nonnull %7) #8, !dbg !3118
  call void @llvm.dbg.value(metadata i32 %697, metadata !3041, metadata !DIExpression()), !dbg !3084
  %698 = fadd double %667, 1.000000e+00, !dbg !3119
  %699 = call i32 @gsl_sf_gammainv_e(double noundef %698, ptr noundef nonnull %8) #8, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %699, metadata !3042, metadata !DIExpression()), !dbg !3084
  %700 = fadd double %62, %667, !dbg !3121
  %701 = call i32 @gsl_sf_gammainv_e(double noundef %700, ptr noundef nonnull %9) #8, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %701, metadata !3043, metadata !DIExpression()), !dbg !3084
  %702 = icmp eq i32 %668, 0, !dbg !3123
  %703 = icmp eq i32 %699, 0, !dbg !3123
  %704 = select i1 %703, i32 %701, i32 %699, !dbg !3123
  %705 = select i1 %702, i32 %704, i32 %668, !dbg !3123
  call void @llvm.dbg.value(metadata i32 %705, metadata !3044, metadata !DIExpression()), !dbg !3084
  %706 = icmp eq i32 %705, 0, !dbg !3124
  %707 = icmp eq i32 %697, 0, !dbg !3124
  %708 = select i1 %707, i32 %669, i32 %697, !dbg !3124
  %709 = select i1 %706, i32 %708, i32 %705, !dbg !3124
  call void @llvm.dbg.value(metadata i32 %709, metadata !3045, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !3125
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !3126
  %710 = fsub double %667, %61, !dbg !3127
  %711 = call i32 @gsl_sf_poch_e(double noundef %0, double noundef %710, ptr noundef nonnull %10) #8, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %711, metadata !3048, metadata !DIExpression()), !dbg !3084
  %712 = fsub double %698, %61, !dbg !3129
  %713 = call i32 @gsl_sf_gammainv_e(double noundef %712, ptr noundef nonnull %11) #8, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %713, metadata !3049, metadata !DIExpression()), !dbg !3084
  %714 = icmp eq i32 %709, 0, !dbg !3131
  %715 = icmp eq i32 %711, 0, !dbg !3131
  %716 = select i1 %715, i32 %713, i32 %711, !dbg !3131
  %717 = select i1 %714, i32 %716, i32 %709, !dbg !3131
  call void @llvm.dbg.value(metadata i32 %717, metadata !3050, metadata !DIExpression()), !dbg !3084
  %718 = load double, ptr %10, align 8, !dbg !3132, !tbaa !182
  %719 = fmul double %684, %718, !dbg !3133
  %720 = load double, ptr %9, align 8, !dbg !3134, !tbaa !182
  %721 = fmul double %719, %720, !dbg !3135
  %722 = load double, ptr %11, align 8, !dbg !3136, !tbaa !182
  %723 = fmul double %721, %722, !dbg !3137
  call void @llvm.dbg.value(metadata double %723, metadata !3051, metadata !DIExpression()), !dbg !3084
  %724 = call double @llvm.fabs.f64(double %721), !dbg !3138
  %725 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !3139
  %726 = load double, ptr %725, align 8, !dbg !3139, !tbaa !190
  %727 = fmul double %724, %726, !dbg !3140
  %728 = fmul double %719, %722, !dbg !3141
  %729 = call double @llvm.fabs.f64(double %728), !dbg !3142
  %730 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !3143
  %731 = load double, ptr %730, align 8, !dbg !3143, !tbaa !190
  %732 = fmul double %729, %731, !dbg !3144
  %733 = fadd double %727, %732, !dbg !3145
  %734 = fmul double %684, %720, !dbg !3146
  %735 = fmul double %734, %722, !dbg !3147
  %736 = call double @llvm.fabs.f64(double %735), !dbg !3148
  %737 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !3149
  %738 = load double, ptr %737, align 8, !dbg !3149, !tbaa !190
  %739 = fmul double %736, %738, !dbg !3150
  %740 = fadd double %733, %739, !dbg !3151
  %741 = fmul double %718, %720, !dbg !3152
  %742 = fmul double %741, %722, !dbg !3153
  %743 = call double @llvm.fabs.f64(double %742), !dbg !3154
  %744 = fmul double %696, %743, !dbg !3155
  %745 = fadd double %744, %740, !dbg !3156
  %746 = call double @llvm.fabs.f64(double %723), !dbg !3157
  %747 = fmul double %746, 0x3CC0000000000000, !dbg !3158
  %748 = fadd double %747, %745, !dbg !3159
  call void @llvm.dbg.value(metadata double %748, metadata !3052, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !3160
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !3161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !3162
  %749 = fadd double %667, %0, !dbg !3163
  %750 = call i32 @gsl_sf_pochrel_e(double noundef %749, double noundef %80, ptr noundef nonnull %12) #8, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %750, metadata !3057, metadata !DIExpression()), !dbg !3084
  %751 = call i32 @gsl_sf_pochrel_e(double noundef %712, double noundef %61, ptr noundef nonnull %13) #8, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %751, metadata !3058, metadata !DIExpression()), !dbg !3084
  %752 = fadd double %667, %1, !dbg !3166
  %753 = call i32 @gsl_sf_pochrel_e(double noundef %752, double noundef %80, ptr noundef nonnull %14) #8, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %753, metadata !3059, metadata !DIExpression()), !dbg !3084
  %754 = load double, ptr %12, align 8, !dbg !3168, !tbaa !182
  %755 = fmul double %61, %754, !dbg !3169
  %756 = load double, ptr %13, align 8, !dbg !3170, !tbaa !182
  %757 = fmul double %755, %756, !dbg !3171
  call void @llvm.dbg.value(metadata double %757, metadata !3060, metadata !DIExpression()), !dbg !3084
  %758 = call double @llvm.fabs.f64(double %755), !dbg !3172
  %759 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !3173
  %760 = load double, ptr %759, align 8, !dbg !3173, !tbaa !190
  %761 = fmul double %758, %760, !dbg !3174
  %762 = fmul double %61, %756, !dbg !3175
  %763 = call double @llvm.fabs.f64(double %762), !dbg !3175
  %764 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !3176
  %765 = load double, ptr %764, align 8, !dbg !3176, !tbaa !190
  %766 = fmul double %763, %765, !dbg !3177
  %767 = fadd double %761, %766, !dbg !3178
  %768 = call double @llvm.fabs.f64(double %757), !dbg !3179
  %769 = fmul double %768, 0x3CC0000000000000, !dbg !3180
  %770 = fadd double %769, %767, !dbg !3181
  call void @llvm.dbg.value(metadata double %770, metadata !3061, metadata !DIExpression()), !dbg !3084
  %771 = load double, ptr %14, align 8, !dbg !3182, !tbaa !182
  %772 = fsub double %754, %771, !dbg !3183
  %773 = fsub double %772, %756, !dbg !3184
  %774 = fadd double %757, %773, !dbg !3185
  call void @llvm.dbg.value(metadata double %774, metadata !3062, metadata !DIExpression()), !dbg !3084
  %775 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !3186
  %776 = load double, ptr %775, align 8, !dbg !3186, !tbaa !190
  %777 = fadd double %765, %776, !dbg !3187
  %778 = fadd double %760, %777, !dbg !3188
  %779 = fadd double %770, %778, !dbg !3189
  %780 = call double @llvm.fabs.f64(double %774), !dbg !3190
  %781 = fmul double %780, 0x3CC0000000000000, !dbg !3191
  %782 = fadd double %779, %781, !dbg !3192
  call void @llvm.dbg.value(metadata double %782, metadata !3063, metadata !DIExpression()), !dbg !3084
  %783 = load double, ptr %7, align 8, !dbg !3193, !tbaa !182
  %784 = fmul double %684, %783, !dbg !3194
  %785 = load double, ptr %9, align 8, !dbg !3195, !tbaa !182
  %786 = fmul double %784, %785, !dbg !3196
  %787 = load double, ptr %8, align 8, !dbg !3197, !tbaa !182
  %788 = fmul double %786, %787, !dbg !3198
  %789 = fmul double %774, %788, !dbg !3199
  call void @llvm.dbg.value(metadata double %789, metadata !3064, metadata !DIExpression()), !dbg !3084
  %790 = call double @llvm.fabs.f64(double %788), !dbg !3200
  %791 = fmul double %790, %782, !dbg !3201
  %792 = fmul double %774, %786, !dbg !3202
  %793 = call double @llvm.fabs.f64(double %792), !dbg !3203
  %794 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !3204
  %795 = load double, ptr %794, align 8, !dbg !3204, !tbaa !190
  %796 = fmul double %795, %793, !dbg !3205
  %797 = fadd double %791, %796, !dbg !3206
  %798 = fmul double %784, %787, !dbg !3207
  %799 = fmul double %774, %798, !dbg !3208
  %800 = call double @llvm.fabs.f64(double %799), !dbg !3209
  %801 = load double, ptr %730, align 8, !dbg !3210, !tbaa !190
  %802 = fmul double %801, %800, !dbg !3211
  %803 = fadd double %797, %802, !dbg !3212
  %804 = fmul double %684, %785, !dbg !3213
  %805 = fmul double %804, %787, !dbg !3214
  %806 = fmul double %774, %805, !dbg !3215
  %807 = call double @llvm.fabs.f64(double %806), !dbg !3216
  %808 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !3217
  %809 = load double, ptr %808, align 8, !dbg !3217, !tbaa !190
  %810 = fmul double %807, %809, !dbg !3218
  %811 = fadd double %810, %803, !dbg !3219
  %812 = fmul double %783, %785, !dbg !3220
  %813 = fmul double %812, %787, !dbg !3221
  %814 = fmul double %774, %813, !dbg !3222
  %815 = call double @llvm.fabs.f64(double %814), !dbg !3223
  %816 = fmul double %696, %815, !dbg !3224
  %817 = fadd double %816, %811, !dbg !3225
  %818 = call double @llvm.fabs.f64(double %789), !dbg !3226
  %819 = fmul double %818, 0x3CC0000000000000, !dbg !3227
  %820 = fadd double %819, %817, !dbg !3228
  call void @llvm.dbg.value(metadata double %820, metadata !3065, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !3229
  %821 = fmul double %663, %80, !dbg !3230
  %822 = call i32 @gsl_sf_exprel_e(double noundef %821, ptr noundef nonnull %15) #8, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %822, metadata !3067, metadata !DIExpression()), !dbg !3084
  %823 = load double, ptr %15, align 8, !dbg !3232, !tbaa !182
  %824 = fmul double %663, %823, !dbg !3233
  call void @llvm.dbg.value(metadata double %824, metadata !3068, metadata !DIExpression()), !dbg !3084
  %825 = fmul double %61, %663, !dbg !3234
  %826 = call double @llvm.fabs.f64(double %825), !dbg !3235
  %827 = fadd double %826, 1.000000e+00, !dbg !3236
  %828 = fmul double %827, 0x3CC0000000000000, !dbg !3237
  %829 = call double @llvm.fabs.f64(double %823), !dbg !3238
  %830 = fmul double %828, %829, !dbg !3239
  %831 = call double @llvm.fabs.f64(double %663), !dbg !3240
  %832 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !3241
  %833 = load double, ptr %832, align 8, !dbg !3241, !tbaa !190
  %834 = fmul double %831, %833, !dbg !3242
  %835 = fadd double %830, %834, !dbg !3243
  %836 = call double @llvm.fabs.f64(double %824), !dbg !3244
  %837 = fmul double %836, 0x3CC0000000000000, !dbg !3245
  %838 = fadd double %835, %837, !dbg !3246
  call void @llvm.dbg.value(metadata double %838, metadata !3069, metadata !DIExpression()), !dbg !3084
  %839 = fadd double %230, %789, !dbg !3247
  %840 = fmul double %723, %824, !dbg !3248
  %841 = fadd double %839, %840, !dbg !3249
  call void @llvm.dbg.value(metadata double %841, metadata !3070, metadata !DIExpression()), !dbg !3084
  %842 = fadd double %231, %820, !dbg !3250
  %843 = fmul double %748, %836, !dbg !3251
  %844 = fadd double %842, %843, !dbg !3252
  %845 = fmul double %746, %838, !dbg !3253
  %846 = fadd double %844, %845, !dbg !3254
  %847 = fmul double %663, %723, !dbg !3255
  %848 = call double @llvm.fabs.f64(double %847), !dbg !3256
  %849 = fmul double %848, %833, !dbg !3257
  %850 = fadd double %849, %846, !dbg !3258
  %851 = call double @llvm.fabs.f64(double %230), !dbg !3259
  %852 = fadd double %851, %818, !dbg !3260
  %853 = call double @llvm.fabs.f64(double %840), !dbg !3261
  %854 = fadd double %852, %853, !dbg !3262
  %855 = fmul double %854, 0x3CC0000000000000, !dbg !3263
  %856 = fadd double %855, %850, !dbg !3264
  call void @llvm.dbg.value(metadata double %856, metadata !3071, metadata !DIExpression()), !dbg !3084
  %857 = sitofp i32 %79 to double, !dbg !3265
  call void @llvm.dbg.value(metadata double %857, metadata !3072, metadata !DIExpression()), !dbg !3084
  %858 = icmp eq i32 %717, 0, !dbg !3266
  br i1 %858, label %859, label %866, !dbg !3266

859:                                              ; preds = %675
  %860 = icmp eq i32 %822, 0, !dbg !3266
  br i1 %860, label %861, label %866, !dbg !3266

861:                                              ; preds = %859
  %862 = icmp eq i32 %753, 0, !dbg !3266
  br i1 %862, label %863, label %866, !dbg !3266

863:                                              ; preds = %861
  %864 = icmp eq i32 %751, 0, !dbg !3266
  %865 = select i1 %864, i32 %750, i32 %751, !dbg !3266
  br label %866, !dbg !3266

866:                                              ; preds = %863, %861, %859, %675
  %867 = phi i32 [ %717, %675 ], [ %822, %859 ], [ %753, %861 ], [ %865, %863 ], !dbg !3266
  call void @llvm.dbg.value(metadata i32 %867, metadata !3050, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 1, metadata !3053, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %723, metadata !3051, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %748, metadata !3052, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %789, metadata !3064, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %820, metadata !3065, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double undef, metadata !3073, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %841, metadata !3070, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %856, metadata !3071, metadata !DIExpression()), !dbg !3084
  %868 = fadd double %0, -1.000000e+00
  br label %869, !dbg !3267

869:                                              ; preds = %943, %866
  %870 = phi double [ %723, %866 ], [ %900, %943 ]
  %871 = phi double [ %748, %866 ], [ %908, %943 ]
  %872 = phi i32 [ 1, %866 ], [ %944, %943 ]
  %873 = phi double [ %789, %866 ], [ %911, %943 ]
  %874 = phi double [ %820, %866 ], [ %926, %943 ]
  %875 = phi double [ %841, %866 ], [ %937, %943 ]
  %876 = phi double [ %856, %866 ], [ %938, %943 ]
  call void @llvm.dbg.value(metadata double %870, metadata !3051, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %871, metadata !3052, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %872, metadata !3053, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %873, metadata !3064, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %874, metadata !3065, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %875, metadata !3070, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %876, metadata !3071, metadata !DIExpression()), !dbg !3084
  %877 = add nsw i32 %872, %666, !dbg !3268
  %878 = sitofp i32 %877 to double, !dbg !3269
  call void @llvm.dbg.value(metadata double %878, metadata !3075, metadata !DIExpression()), !dbg !3270
  %879 = add nsw i32 %877, -1, !dbg !3271
  %880 = sitofp i32 %879 to double, !dbg !3272
  call void @llvm.dbg.value(metadata double %880, metadata !3079, metadata !DIExpression()), !dbg !3270
  %881 = fmul double %878, 2.000000e+00, !dbg !3273
  %882 = fadd double %881, %857, !dbg !3274
  %883 = fadd double %882, -1.000000e+00, !dbg !3275
  %884 = fmul double %868, %883, !dbg !3276
  %885 = fsub double %878, %61, !dbg !3277
  %886 = fmul double %885, %878, !dbg !3278
  %887 = fadd double %886, %884, !dbg !3279
  call void @llvm.dbg.value(metadata double %887, metadata !3080, metadata !DIExpression()), !dbg !3270
  %888 = fadd double %880, %0, !dbg !3280
  %889 = fsub double %888, %61, !dbg !3281
  %890 = fmul double %889, %2, !dbg !3282
  %891 = fadd double %857, %880, !dbg !3283
  %892 = fmul double %885, %891, !dbg !3284
  %893 = fdiv double %890, %892, !dbg !3285
  call void @llvm.dbg.value(metadata double %893, metadata !3081, metadata !DIExpression()), !dbg !3270
  %894 = fmul double %888, %2, !dbg !3286
  %895 = fadd double %880, %1, !dbg !3287
  %896 = fmul double %895, %878, !dbg !3288
  %897 = fdiv double %894, %896, !dbg !3289
  call void @llvm.dbg.value(metadata double %897, metadata !3082, metadata !DIExpression()), !dbg !3270
  %898 = fmul double %896, %889, !dbg !3290
  %899 = fdiv double %887, %898, !dbg !3291
  call void @llvm.dbg.value(metadata double %899, metadata !3083, metadata !DIExpression()), !dbg !3270
  %900 = fmul double %870, %893, !dbg !3292
  call void @llvm.dbg.value(metadata double %900, metadata !3051, metadata !DIExpression()), !dbg !3084
  %901 = call double @llvm.fabs.f64(double %893), !dbg !3293
  %902 = fmul double %871, %901, !dbg !3294
  %903 = call double @llvm.fabs.f64(double %900), !dbg !3295
  %904 = fmul double %903, 8.000000e+00, !dbg !3296
  %905 = fmul double %904, 2.000000e+00, !dbg !3297
  %906 = fmul double %905, 0x3CB0000000000000, !dbg !3298
  %907 = fadd double %902, %906, !dbg !3299
  %908 = fadd double %871, %907, !dbg !3300
  call void @llvm.dbg.value(metadata double %908, metadata !3052, metadata !DIExpression()), !dbg !3084
  %909 = fmul double %873, %897, !dbg !3301
  %910 = fmul double %899, %900, !dbg !3302
  %911 = fsub double %909, %910, !dbg !3303
  call void @llvm.dbg.value(metadata double %911, metadata !3064, metadata !DIExpression()), !dbg !3084
  %912 = call double @llvm.fabs.f64(double %897), !dbg !3304
  %913 = fmul double %874, %912, !dbg !3305
  %914 = call double @llvm.fabs.f64(double %899), !dbg !3306
  %915 = fmul double %914, %908, !dbg !3307
  %916 = fadd double %913, %915, !dbg !3308
  %917 = call double @llvm.fabs.f64(double %911), !dbg !3309
  %918 = fmul double %917, 8.000000e+00, !dbg !3310
  %919 = fmul double %918, 2.000000e+00, !dbg !3311
  %920 = fmul double %919, 0x3CB0000000000000, !dbg !3312
  %921 = fadd double %920, %916, !dbg !3313
  %922 = call double @llvm.fabs.f64(double %910), !dbg !3314
  %923 = fmul double %922, 1.600000e+01, !dbg !3315
  %924 = fmul double %923, 2.000000e+00, !dbg !3316
  %925 = fmul double %924, 0x3CB0000000000000, !dbg !3317
  %926 = fadd double %925, %921, !dbg !3318
  call void @llvm.dbg.value(metadata double %926, metadata !3065, metadata !DIExpression()), !dbg !3084
  %927 = fmul double %824, %900, !dbg !3319
  %928 = fadd double %927, %911, !dbg !3320
  call void @llvm.dbg.value(metadata double %928, metadata !3073, metadata !DIExpression()), !dbg !3084
  %929 = fmul double %836, %908, !dbg !3321
  %930 = fadd double %929, %926, !dbg !3322
  call void @llvm.dbg.value(metadata double %930, metadata !3074, metadata !DIExpression()), !dbg !3084
  %931 = fmul double %663, %900, !dbg !3323
  %932 = call double @llvm.fabs.f64(double %931), !dbg !3324
  %933 = fmul double %833, %932, !dbg !3325
  %934 = fadd double %933, %930, !dbg !3326
  call void @llvm.dbg.value(metadata double %934, metadata !3074, metadata !DIExpression()), !dbg !3084
  %935 = fmul double %838, %903, !dbg !3327
  %936 = fadd double %935, %934, !dbg !3328
  call void @llvm.dbg.value(metadata double %936, metadata !3074, metadata !DIExpression()), !dbg !3084
  %937 = fadd double %875, %928, !dbg !3329
  call void @llvm.dbg.value(metadata double %937, metadata !3070, metadata !DIExpression()), !dbg !3084
  %938 = fadd double %876, %936, !dbg !3330
  call void @llvm.dbg.value(metadata double %938, metadata !3071, metadata !DIExpression()), !dbg !3084
  %939 = call double @llvm.fabs.f64(double %928), !dbg !3331
  %940 = call double @llvm.fabs.f64(double %937), !dbg !3333
  %941 = fmul double %940, 0x3CC0000000000000, !dbg !3334
  %942 = fcmp olt double %939, %941, !dbg !3335
  br i1 %942, label %946, label %943

943:                                              ; preds = %869
  %944 = add nuw nsw i32 %872, 1, !dbg !3336
  call void @llvm.dbg.value(metadata double %900, metadata !3051, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %908, metadata !3052, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %944, metadata !3053, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %911, metadata !3064, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %926, metadata !3065, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %928, metadata !3073, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %937, metadata !3070, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %938, metadata !3071, metadata !DIExpression()), !dbg !3084
  %945 = icmp eq i32 %944, 2000, !dbg !3337
  br i1 %945, label %946, label %869, !dbg !3267, !llvm.loop !3338

946:                                              ; preds = %943, %869
  %947 = phi i32 [ %872, %869 ], [ 2000, %943 ], !dbg !3340
  call void @llvm.dbg.value(metadata double %928, metadata !3073, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %937, metadata !3070, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata double %938, metadata !3071, metadata !DIExpression()), !dbg !3084
  store double %937, ptr %3, align 8, !dbg !3341, !tbaa !182
  %948 = fmul double %938, 2.000000e+00, !dbg !3342
  %949 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3343
  %950 = fmul double %939, 2.000000e+00, !dbg !3344
  %951 = fadd double %950, %948, !dbg !3345
  %952 = add nuw nsw i32 %947, 2, !dbg !3346
  %953 = sitofp i32 %952 to double, !dbg !3346
  %954 = fmul double %953, 0x3CD0000000000000, !dbg !3347
  %955 = fmul double %940, %954, !dbg !3348
  %956 = fadd double %951, %955, !dbg !3349
  %957 = fmul double %956, 2.000000e+00, !dbg !3350
  store double %957, ptr %949, align 8, !dbg !3350, !tbaa !190
  %958 = icmp ugt i32 %947, 1999, !dbg !3351
  br i1 %958, label %959, label %960, !dbg !3353

959:                                              ; preds = %946
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 664, i32 noundef 11) #8, !dbg !3354
  br label %960, !dbg !3354

960:                                              ; preds = %946, %959
  %961 = phi i32 [ 11, %959 ], [ %867, %946 ], !dbg !3357
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !3358
  tail call void @llvm.dbg.value(metadata i32 %961, metadata !2255, metadata !DIExpression()), !dbg !2326
  br label %962

962:                                              ; preds = %660, %960, %435
  %963 = phi i32 [ %436, %435 ], [ %661, %660 ], [ %961, %960 ], !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 %963, metadata !2255, metadata !DIExpression()), !dbg !2326
  %964 = icmp eq i32 %232, 0, !dbg !3360
  %965 = select i1 %964, i32 %963, i32 %232, !dbg !3360
  br label %966

966:                                              ; preds = %962, %68
  %967 = phi i32 [ %71, %68 ], [ %965, %962 ], !dbg !2314
  ret i32 %967, !dbg !3361
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !dbg !3362 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3380, metadata !DIExpression(), metadata !3388, metadata ptr %6, metadata !DIExpression()), !dbg !3389
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3381, metadata !DIExpression(), metadata !3390, metadata ptr %7, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %0, metadata !3367, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata double %1, metadata !3368, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata double %2, metadata !3369, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3370, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3371, metadata !DIExpression()), !dbg !3391
  %8 = fcmp oeq double %0, 0.000000e+00, !dbg !3392
  br i1 %8, label %9, label %11, !dbg !3393

9:                                                ; preds = %5
  store double 1.000000e+00, ptr %3, align 8, !dbg !3394, !tbaa !182
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3396
  store double 0.000000e+00, ptr %10, align 8, !dbg !3397, !tbaa !190
  store double 0.000000e+00, ptr %4, align 8, !dbg !3398, !tbaa !571
  br label %79, !dbg !3399

11:                                               ; preds = %5
  %12 = fcmp ogt double %1, 5.000000e+03, !dbg !3400
  br i1 %12, label %13, label %17, !dbg !3401

13:                                               ; preds = %11
  %14 = tail call double @llvm.fabs.f64(double %1), !dbg !3402
  %15 = fmul double %14, 9.000000e-01, !dbg !3403
  %16 = fcmp ogt double %15, %2, !dbg !3404
  br i1 %16, label %23, label %17, !dbg !3405

17:                                               ; preds = %13, %11
  %18 = fcmp ogt double %1, 5.000000e+02, !dbg !3406
  br i1 %18, label %19, label %27, !dbg !3407

19:                                               ; preds = %17
  %20 = tail call double @llvm.fabs.f64(double %1), !dbg !3408
  %21 = fmul double %20, 5.000000e-01, !dbg !3409
  %22 = fcmp ogt double %21, %2, !dbg !3410
  br i1 %22, label %23, label %27, !dbg !3411

23:                                               ; preds = %19, %13
  %24 = tail call i32 @gsl_sf_hyperg_U_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) #8, !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !3372, metadata !DIExpression()), !dbg !3413
  %25 = icmp eq i32 %24, 16, !dbg !3414
  %26 = select i1 %25, i32 0, i32 %24, !dbg !3416
  br label %79

27:                                               ; preds = %19, %17
  %28 = fcmp ogt double %1, 1.500000e+01, !dbg !3417
  br i1 %28, label %29, label %77, !dbg !3418

29:                                               ; preds = %27
  %30 = tail call double @llvm.floor.f64(double %1), !dbg !3419
  %31 = fsub double %1, %30, !dbg !3420
  tail call void @llvm.dbg.value(metadata double %31, metadata !3376, metadata !DIExpression()), !dbg !3389
  %32 = fadd double %31, 1.000000e+00, !dbg !3421
  tail call void @llvm.dbg.value(metadata double %32, metadata !3379, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !3422
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !3423
  %33 = call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %32, double noundef %2, ptr noundef nonnull %6), !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !3382, metadata !DIExpression()), !dbg !3389
  %34 = fadd double %32, 1.000000e+00, !dbg !3425
  %35 = call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %34, double noundef %2, ptr noundef nonnull %7), !dbg !3426
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !3383, metadata !DIExpression()), !dbg !3389
  %36 = load double, ptr %6, align 8, !dbg !3427, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %36, metadata !3384, metadata !DIExpression()), !dbg !3389
  %37 = load double, ptr %7, align 8, !dbg !3428, !tbaa !182
  tail call void @llvm.dbg.value(metadata double %37, metadata !3385, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %34, metadata !3387, metadata !DIExpression()), !dbg !3389
  %38 = fadd double %1, -1.000000e-01
  tail call void @llvm.dbg.value(metadata double %34, metadata !3387, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %37, metadata !3385, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %36, metadata !3384, metadata !DIExpression()), !dbg !3389
  %39 = fcmp olt double %34, %38, !dbg !3429
  br i1 %39, label %40, label %55, !dbg !3432

40:                                               ; preds = %29
  %41 = fadd double %0, 1.000000e+00
  br label %42, !dbg !3432

42:                                               ; preds = %40, %42
  %43 = phi double [ %34, %40 ], [ %53, %42 ]
  %44 = phi double [ %37, %40 ], [ %52, %42 ]
  %45 = phi double [ %36, %40 ], [ %44, %42 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !3387, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %44, metadata !3385, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %45, metadata !3384, metadata !DIExpression()), !dbg !3389
  %46 = fsub double %41, %43, !dbg !3433
  %47 = fmul double %45, %46, !dbg !3435
  %48 = fadd double %43, %2, !dbg !3436
  %49 = fadd double %48, -1.000000e+00, !dbg !3437
  %50 = fmul double %44, %49, !dbg !3438
  %51 = fadd double %47, %50, !dbg !3439
  %52 = fdiv double %51, %2, !dbg !3440
  tail call void @llvm.dbg.value(metadata double %52, metadata !3386, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %44, metadata !3384, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata double %52, metadata !3385, metadata !DIExpression()), !dbg !3389
  %53 = fadd double %43, 1.000000e+00, !dbg !3441
  tail call void @llvm.dbg.value(metadata double %53, metadata !3387, metadata !DIExpression()), !dbg !3389
  %54 = fcmp olt double %53, %38, !dbg !3429
  br i1 %54, label %42, label %55, !dbg !3432, !llvm.loop !3442

55:                                               ; preds = %42, %29
  %56 = phi double [ %37, %29 ], [ %52, %42 ], !dbg !3389
  store double %56, ptr %3, align 8, !dbg !3444, !tbaa !182
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3445
  %58 = load double, ptr %57, align 8, !dbg !3445, !tbaa !190
  %59 = fdiv double %58, %36, !dbg !3446
  %60 = call double @llvm.fabs.f64(double %59), !dbg !3447
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !3448
  %62 = load double, ptr %61, align 8, !dbg !3448, !tbaa !190
  %63 = fdiv double %62, %37, !dbg !3449
  %64 = call double @llvm.fabs.f64(double %63), !dbg !3450
  %65 = fadd double %60, %64, !dbg !3451
  %66 = call double @llvm.fabs.f64(double %56), !dbg !3452
  %67 = fmul double %66, %65, !dbg !3453
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3454
  %69 = fsub double %1, %32, !dbg !3455
  %70 = call double @llvm.fabs.f64(double %69), !dbg !3456
  %71 = fadd double %70, 1.000000e+00, !dbg !3457
  %72 = fmul double %71, 0x3CC0000000000000, !dbg !3458
  %73 = fmul double %72, %66, !dbg !3459
  %74 = fadd double %73, %67, !dbg !3460
  store double %74, ptr %68, align 8, !dbg !3460, !tbaa !190
  store double 0.000000e+00, ptr %4, align 8, !dbg !3461, !tbaa !571
  %75 = icmp eq i32 %33, 0, !dbg !3462
  %76 = select i1 %75, i32 %35, i32 %33, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !3463
  br label %79

77:                                               ; preds = %27
  store double 0.000000e+00, ptr %4, align 8, !dbg !3464, !tbaa !571
  %78 = tail call fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !3466
  br label %79, !dbg !3467

79:                                               ; preds = %77, %55, %23, %9
  %80 = phi i32 [ 0, %9 ], [ %26, %23 ], [ %76, %55 ], [ %78, %77 ], !dbg !3468
  ret i32 %80, !dbg !3469
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3470 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_U_CF1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !3471 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !3476, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %1, metadata !3477, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %2, metadata !3479, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3480, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !3482, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !3483, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3484, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3485, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3486, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3487, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3488, metadata !DIExpression()), !dbg !3499
  %6 = fadd double %0, 0.000000e+00, !dbg !3500
  tail call void @llvm.dbg.value(metadata double poison, metadata !3489, metadata !DIExpression()), !dbg !3499
  %7 = fmul double %0, 2.000000e+00, !dbg !3501
  %8 = fsub double %1, %7, !dbg !3502
  %9 = fsub double %8, %2, !dbg !3503
  %10 = fadd double %9, -2.000000e+00, !dbg !3504
  tail call void @llvm.dbg.value(metadata double %10, metadata !3490, metadata !DIExpression()), !dbg !3499
  %11 = fmul double %10, 0.000000e+00, !dbg !3505
  %12 = fsub double %11, %6, !dbg !3506
  tail call void @llvm.dbg.value(metadata double %12, metadata !3491, metadata !DIExpression()), !dbg !3499
  %13 = fmul double %6, 0.000000e+00, !dbg !3507
  %14 = fsub double %10, %13, !dbg !3508
  tail call void @llvm.dbg.value(metadata double %14, metadata !3492, metadata !DIExpression()), !dbg !3499
  %15 = fdiv double %12, %14, !dbg !3509
  tail call void @llvm.dbg.value(metadata double %15, metadata !3495, metadata !DIExpression()), !dbg !3499
  br label %16, !dbg !3510

16:                                               ; preds = %51, %5
  %17 = phi double [ 1.000000e+00, %5 ], [ %52, %51 ], !dbg !3499
  %18 = phi double [ 0.000000e+00, %5 ], [ %53, %51 ], !dbg !3499
  %19 = phi double [ %12, %5 ], [ %54, %51 ], !dbg !3499
  %20 = phi double [ %14, %5 ], [ %55, %51 ], !dbg !3499
  %21 = phi double [ %15, %5 ], [ %56, %51 ], !dbg !3499
  %22 = phi i32 [ 1, %5 ], [ %26, %51 ], !dbg !3499
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !3484, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %21, metadata !3495, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %20, metadata !3492, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %19, metadata !3491, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %18, metadata !3487, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %17, metadata !3488, metadata !DIExpression()), !dbg !3499
  %23 = icmp eq i32 %22, 20000, !dbg !3511
  br i1 %23, label %24, label %25, !dbg !3510

24:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !3484, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %21, metadata !3495, metadata !DIExpression()), !dbg !3499
  store double %21, ptr %3, align 8, !dbg !3512, !tbaa !571
  store i32 20000, ptr %4, align 4, !dbg !3513, !tbaa !683
  br label %63, !dbg !3514

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %22, 1, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3484, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %18, metadata !3485, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %17, metadata !3486, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %19, metadata !3487, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %20, metadata !3488, metadata !DIExpression()), !dbg !3499
  %27 = sitofp i32 %26 to double, !dbg !3516
  %28 = fadd double %6, %27, !dbg !3517
  %29 = fsub double %28, %1, !dbg !3518
  %30 = fneg double %29, !dbg !3519
  %31 = fadd double %28, -1.000000e+00, !dbg !3520
  %32 = fmul double %31, %30, !dbg !3521
  tail call void @llvm.dbg.value(metadata double %32, metadata !3493, metadata !DIExpression()), !dbg !3499
  %33 = fmul double %27, 2.000000e+00, !dbg !3522
  %34 = fsub double %9, %33, !dbg !3523
  tail call void @llvm.dbg.value(metadata double %34, metadata !3494, metadata !DIExpression()), !dbg !3499
  %35 = fmul double %19, %34, !dbg !3524
  %36 = fmul double %18, %32, !dbg !3525
  %37 = fadd double %35, %36, !dbg !3526
  tail call void @llvm.dbg.value(metadata double %37, metadata !3491, metadata !DIExpression()), !dbg !3499
  %38 = fmul double %20, %34, !dbg !3527
  %39 = fmul double %17, %32, !dbg !3528
  %40 = fadd double %38, %39, !dbg !3529
  tail call void @llvm.dbg.value(metadata double %40, metadata !3492, metadata !DIExpression()), !dbg !3499
  %41 = tail call double @llvm.fabs.f64(double %37), !dbg !3530
  %42 = fcmp ogt double %41, 0x5FEFFFFFFFFFFFFF, !dbg !3532
  %43 = tail call double @llvm.fabs.f64(double %40)
  %44 = fcmp ogt double %43, 0x5FEFFFFFFFFFFFFF
  %45 = select i1 %42, i1 true, i1 %44, !dbg !3533
  br i1 %45, label %46, label %51, !dbg !3533

46:                                               ; preds = %25
  %47 = fdiv double %37, 0x5FEFFFFFFFFFFFFF, !dbg !3534
  tail call void @llvm.dbg.value(metadata double %47, metadata !3491, metadata !DIExpression()), !dbg !3499
  %48 = fdiv double %40, 0x5FEFFFFFFFFFFFFF, !dbg !3536
  tail call void @llvm.dbg.value(metadata double %48, metadata !3492, metadata !DIExpression()), !dbg !3499
  %49 = fdiv double %19, 0x5FEFFFFFFFFFFFFF, !dbg !3537
  tail call void @llvm.dbg.value(metadata double %49, metadata !3487, metadata !DIExpression()), !dbg !3499
  %50 = fdiv double %20, 0x5FEFFFFFFFFFFFFF, !dbg !3538
  tail call void @llvm.dbg.value(metadata double %50, metadata !3488, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double poison, metadata !3485, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double poison, metadata !3486, metadata !DIExpression()), !dbg !3499
  br label %51, !dbg !3539

51:                                               ; preds = %25, %46
  %52 = phi double [ %50, %46 ], [ %20, %25 ], !dbg !3540
  %53 = phi double [ %49, %46 ], [ %19, %25 ], !dbg !3540
  %54 = phi double [ %47, %46 ], [ %37, %25 ], !dbg !3540
  %55 = phi double [ %48, %46 ], [ %40, %25 ], !dbg !3540
  tail call void @llvm.dbg.value(metadata double %55, metadata !3492, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %54, metadata !3491, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %53, metadata !3487, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %52, metadata !3488, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %21, metadata !3496, metadata !DIExpression()), !dbg !3540
  %56 = fdiv double %54, %55, !dbg !3541
  tail call void @llvm.dbg.value(metadata double %56, metadata !3495, metadata !DIExpression()), !dbg !3499
  %57 = fdiv double %21, %56, !dbg !3542
  tail call void @llvm.dbg.value(metadata double %57, metadata !3498, metadata !DIExpression()), !dbg !3540
  %58 = fadd double %57, -1.000000e+00, !dbg !3543
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !3545
  %60 = fcmp olt double %59, 0x3CE4000000000000, !dbg !3546
  br i1 %60, label %61, label %16

61:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3484, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata double %56, metadata !3495, metadata !DIExpression()), !dbg !3499
  store double %56, ptr %3, align 8, !dbg !3512, !tbaa !571
  store i32 %26, ptr %4, align 4, !dbg !3513, !tbaa !683
  %62 = icmp eq i32 %26, 20000, !dbg !3547
  br i1 %62, label %63, label %64, !dbg !3514

63:                                               ; preds = %24, %61
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef 11) #8, !dbg !3549
  br label %64, !dbg !3549

64:                                               ; preds = %61, %63
  %65 = phi i32 [ 11, %63 ], [ 0, %61 ], !dbg !3551
  ret i32 %65, !dbg !3552
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @hyperg_lnU_beq2a(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !3553 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3563, metadata !DIExpression(), metadata !3564, metadata ptr %4, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata double %0, metadata !3557, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata double %1, metadata !3558, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3559, metadata !DIExpression()), !dbg !3565
  %5 = tail call double @log(double noundef %1) #8, !dbg !3566
  tail call void @llvm.dbg.value(metadata double %5, metadata !3560, metadata !DIExpression()), !dbg !3565
  %6 = fadd double %0, -5.000000e-01, !dbg !3567
  tail call void @llvm.dbg.value(metadata double %6, metadata !3561, metadata !DIExpression()), !dbg !3565
  %7 = fadd double %1, 0xBFF250D048E7A1BD, !dbg !3568
  %8 = fmul double %7, 5.000000e-01, !dbg !3569
  %9 = fmul double %6, %5, !dbg !3570
  %10 = fsub double %8, %9, !dbg !3571
  tail call void @llvm.dbg.value(metadata double %10, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !3572
  %11 = fmul double %1, 5.000000e-01, !dbg !3573
  %12 = call i32 @gsl_sf_bessel_lnKnu_e(double noundef %6, double noundef %11, ptr noundef nonnull %4) #8, !dbg !3574
  %13 = load double, ptr %4, align 8, !dbg !3575, !tbaa !182
  %14 = fadd double %10, %13, !dbg !3576
  store double %14, ptr %2, align 8, !dbg !3577, !tbaa !182
  %15 = call double @llvm.fabs.f64(double %11), !dbg !3578
  %16 = fadd double %15, 0x3FE250D048E7A1BD, !dbg !3579
  %17 = call double @llvm.fabs.f64(double %9), !dbg !3580
  %18 = fadd double %16, %17, !dbg !3581
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !3582
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3583
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !3584
  %22 = load double, ptr %21, align 8, !dbg !3584, !tbaa !190
  %23 = fadd double %19, %22, !dbg !3585
  %24 = call double @llvm.fabs.f64(double %14), !dbg !3586
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !3587
  %26 = fadd double %25, %23, !dbg !3588
  store double %26, ptr %20, align 8, !dbg !3588, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !3589
  ret void, !dbg !3590
}

declare !dbg !3591 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3593 i32 @gsl_sf_exp_err_e10_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3594 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3597 i32 @gsl_sf_poch_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3599 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3600 i32 @gsl_sf_gammainv_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3601 double @sin(double noundef) local_unnamed_addr #3

declare !dbg !3602 double @gsl_sf_poch(double noundef, double noundef) local_unnamed_addr #1

declare !dbg !3605 double @gsl_sf_gammainv(double noundef) local_unnamed_addr #1

declare !dbg !3608 i32 @gsl_finite(double noundef) local_unnamed_addr #1

declare !dbg !3612 i32 @gsl_sf_pochrel_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3613 i32 @gsl_sf_exprel_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3614 i32 @gsl_sf_hyperg_U_large_b_e(double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_U_small_ab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3616 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3629, metadata ptr %5, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata double %0, metadata !3618, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata double %1, metadata !3619, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata double %2, metadata !3620, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3621, metadata !DIExpression()), !dbg !3631
  %6 = fcmp oeq double %0, -1.000000e+00, !dbg !3632
  br i1 %6, label %7, label %17, !dbg !3633

7:                                                ; preds = %4
  %8 = fsub double %2, %1, !dbg !3634
  store double %8, ptr %3, align 8, !dbg !3636, !tbaa !182
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !3637
  %10 = tail call double @llvm.fabs.f64(double %2), !dbg !3638
  %11 = fadd double %9, %10, !dbg !3639
  %12 = fmul double %11, 0x3CC0000000000000, !dbg !3640
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3641
  %14 = tail call double @llvm.fabs.f64(double %8), !dbg !3642
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !3643
  %16 = fadd double %12, %15, !dbg !3644
  store double %16, ptr %13, align 8, !dbg !3644, !tbaa !190
  br label %54, !dbg !3645

17:                                               ; preds = %4
  %18 = fcmp oeq double %0, 0.000000e+00, !dbg !3646
  br i1 %18, label %19, label %21, !dbg !3647

19:                                               ; preds = %17
  store double 1.000000e+00, ptr %3, align 8, !dbg !3648, !tbaa !182
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3650
  store double 0.000000e+00, ptr %20, align 8, !dbg !3651, !tbaa !190
  br label %54, !dbg !3652

21:                                               ; preds = %17
  %22 = tail call double @llvm.fabs.f64(double %0), !dbg !3653
  tail call void @llvm.dbg.value(metadata double %22, metadata !480, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !3654
  %23 = fcmp ogt double %22, 1.000000e+00, !dbg !3656
  %24 = select i1 %23, double %22, double 1.000000e+00, !dbg !3656
  %25 = fadd double %0, 1.000000e+00, !dbg !3653
  %26 = fsub double %25, %1, !dbg !3653
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !3653
  tail call void @llvm.dbg.value(metadata double %27, metadata !480, metadata !DIExpression()), !dbg !3657
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !3657
  %28 = fcmp ogt double %27, 1.000000e+00, !dbg !3659
  %29 = select i1 %28, double %27, double 1.000000e+00, !dbg !3659
  %30 = fmul double %24, %29, !dbg !3653
  %31 = tail call double @llvm.fabs.f64(double %2), !dbg !3653
  %32 = fmul double %31, 0x3FEFAE147AE147AE, !dbg !3653
  %33 = fcmp olt double %30, %32, !dbg !3653
  br i1 %33, label %34, label %52, !dbg !3660

34:                                               ; preds = %21
  %35 = fneg double %0, !dbg !3661
  %36 = tail call double @pow(double noundef %2, double noundef %35) #8, !dbg !3662
  tail call void @llvm.dbg.value(metadata double %36, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !3663
  %37 = call fastcc i32 @hyperg_zaU_asymp(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !3664, !range !501
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3628, metadata !DIExpression()), !dbg !3630
  %38 = load double, ptr %5, align 8, !dbg !3665, !tbaa !182
  %39 = fmul double %36, %38, !dbg !3666
  store double %39, ptr %3, align 8, !dbg !3667, !tbaa !182
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3668
  %41 = load double, ptr %40, align 8, !dbg !3668, !tbaa !190
  %42 = fmul double %36, %41, !dbg !3669
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3670
  %44 = tail call double @llvm.fabs.f64(double %38), !dbg !3671
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !3672
  %46 = fmul double %22, %45, !dbg !3673
  %47 = fmul double %36, %46, !dbg !3674
  %48 = fadd double %42, %47, !dbg !3675
  %49 = tail call double @llvm.fabs.f64(double %39), !dbg !3676
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !3677
  %51 = fadd double %50, %48, !dbg !3678
  store double %51, ptr %43, align 8, !dbg !3678, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !3679
  br label %54

52:                                               ; preds = %21
  %53 = tail call fastcc i32 @hyperg_U_series(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !3680
  br label %54, !dbg !3682

54:                                               ; preds = %52, %34, %19, %7
  %55 = phi i32 [ 0, %7 ], [ 0, %19 ], [ %37, %34 ], [ %53, %52 ], !dbg !3683
  ret i32 %55, !dbg !3684
}

declare !dbg !3685 i32 @gsl_sf_bessel_lnKnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3687 i32 @gsl_sf_hyperg_1F1_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3689 i32 @gsl_sf_laguerre_n_e(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3693 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }

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
!174 = !DILocation(line: 1475, column: 35, scope: !155, inlinedAt: !172)
!175 = !DILocation(line: 1475, column: 37, scope: !155, inlinedAt: !172)
!176 = !DILocation(line: 1475, column: 16, scope: !155, inlinedAt: !172)
!177 = !DILocation(line: 1476, column: 16, scope: !155, inlinedAt: !172)
!178 = !DILocation(line: 1477, column: 34, scope: !155, inlinedAt: !172)
!179 = !DILocation(line: 1477, column: 26, scope: !155, inlinedAt: !172)
!180 = !DILocation(line: 1477, column: 24, scope: !155, inlinedAt: !172)
!181 = !DILocation(line: 1479, column: 29, scope: !155, inlinedAt: !172)
!182 = !{!183, !133, i64 0}
!183 = !{!"gsl_sf_result_struct", !133, i64 0, !133, i64 8}
!184 = !DILocation(line: 1479, column: 24, scope: !155, inlinedAt: !172)
!185 = !DILocation(line: 1479, column: 38, scope: !155, inlinedAt: !172)
!186 = !DILocation(line: 1479, column: 33, scope: !155, inlinedAt: !172)
!187 = !DILocation(line: 1479, column: 15, scope: !155, inlinedAt: !172)
!188 = !DILocation(line: 1480, column: 17, scope: !155, inlinedAt: !172)
!189 = !DILocation(line: 1480, column: 36, scope: !155, inlinedAt: !172)
!190 = !{!183, !133, i64 8}
!191 = !DILocation(line: 1480, column: 45, scope: !155, inlinedAt: !172)
!192 = !DILocation(line: 1480, column: 40, scope: !155, inlinedAt: !172)
!193 = !DILocation(line: 1480, column: 30, scope: !155, inlinedAt: !172)
!194 = !DILocation(line: 1480, column: 11, scope: !155, inlinedAt: !172)
!195 = !DILocation(line: 1480, column: 15, scope: !155, inlinedAt: !172)
!196 = !DILocation(line: 1481, column: 11, scope: !155, inlinedAt: !172)
!197 = !DILocation(line: 1481, column: 15, scope: !155, inlinedAt: !172)
!198 = !DILocation(line: 1483, column: 10, scope: !155, inlinedAt: !172)
!199 = !DILocation(line: 1484, column: 1, scope: !155, inlinedAt: !172)
!200 = !DILocation(line: 1659, column: 5, scope: !151)
!201 = !DILocation(line: 1660, column: 16, scope: !110)
!202 = !DILocation(line: 1660, column: 14, scope: !111)
!203 = !DILocalVariable(name: "r1", scope: !204, file: !2, line: 1630, type: !94)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 1629, column: 5)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 1628, column: 7)
!206 = distinct !DISubprogram(name: "hyperg_U_int_negx", scope: !2, file: !2, line: 1622, type: !89, scopeLine: 1623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !207)
!207 = !{!208, !209, !210, !211, !203, !212, !213, !214, !215}
!208 = !DILocalVariable(name: "a", arg: 1, scope: !206, file: !2, line: 1622, type: !91)
!209 = !DILocalVariable(name: "b", arg: 2, scope: !206, file: !2, line: 1622, type: !91)
!210 = !DILocalVariable(name: "x", arg: 3, scope: !206, file: !2, line: 1622, type: !92)
!211 = !DILocalVariable(name: "result", arg: 4, scope: !206, file: !2, line: 1622, type: !93)
!212 = !DILocalVariable(name: "z21_z", scope: !204, file: !2, line: 1631, type: !78)
!213 = !DILocalVariable(name: "status", scope: !204, file: !2, line: 1632, type: !40)
!214 = !DILocalVariable(name: "res_tem", scope: !204, file: !2, line: 1633, type: !78)
!215 = !DILocalVariable(name: "res_tem_err", scope: !204, file: !2, line: 1634, type: !78)
!216 = !DILocation(line: 0, scope: !204, inlinedAt: !217)
!217 = distinct !DILocation(line: 1661, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !110, file: !2, line: 1660, column: 24)
!219 = !DILocation(line: 0, scope: !206, inlinedAt: !217)
!220 = !DILocation(line: 1628, column: 8, scope: !205, inlinedAt: !217)
!221 = !DILocation(line: 1628, column: 11, scope: !205, inlinedAt: !217)
!222 = !DILocation(line: 1630, column: 7, scope: !204, inlinedAt: !217)
!223 = !DILocation(line: 1631, column: 30, scope: !204, inlinedAt: !217)
!224 = !DILocation(line: 1631, column: 29, scope: !204, inlinedAt: !217)
!225 = !DILocation(line: 1631, column: 22, scope: !204, inlinedAt: !217)
!226 = !DILocation(line: 1632, column: 36, scope: !204, inlinedAt: !217)
!227 = !DILocation(line: 1632, column: 38, scope: !204, inlinedAt: !217)
!228 = !DILocation(line: 1632, column: 35, scope: !204, inlinedAt: !217)
!229 = !DILocation(line: 1632, column: 42, scope: !204, inlinedAt: !217)
!230 = !DILocation(line: 1632, column: 41, scope: !204, inlinedAt: !217)
!231 = !DILocation(line: 1632, column: 20, scope: !204, inlinedAt: !217)
!232 = !DILocation(line: 1633, column: 31, scope: !204, inlinedAt: !217)
!233 = !DILocation(line: 1633, column: 27, scope: !204, inlinedAt: !217)
!234 = !DILocation(line: 1634, column: 28, scope: !204, inlinedAt: !217)
!235 = !DILocation(line: 1634, column: 43, scope: !204, inlinedAt: !217)
!236 = !DILocation(line: 1634, column: 39, scope: !204, inlinedAt: !217)
!237 = !DILocation(line: 1635, column: 19, scope: !204, inlinedAt: !217)
!238 = !DILocation(line: 1636, column: 15, scope: !204, inlinedAt: !217)
!239 = !DILocation(line: 1636, column: 19, scope: !204, inlinedAt: !217)
!240 = !DILocation(line: 1638, column: 5, scope: !205, inlinedAt: !217)
!241 = !DILocation(line: 1641, column: 29, scope: !242, inlinedAt: !217)
!242 = distinct !DILexicalBlock(scope: !205, file: !2, line: 1640, column: 5)
!243 = !DILocation(line: 1641, column: 32, scope: !242, inlinedAt: !217)
!244 = !DILocation(line: 1641, column: 14, scope: !242, inlinedAt: !217)
!245 = !DILocation(line: 1641, column: 7, scope: !242, inlinedAt: !217)
!246 = !DILocation(line: 1664, column: 8, scope: !109)
!247 = !DILocation(line: 1665, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !108, file: !2, line: 1664, column: 16)
!249 = !DILocation(line: 1665, column: 7, scope: !248)
!250 = !DILocation(line: 1671, column: 7, scope: !107)
!251 = !DILocation(line: 1672, column: 21, scope: !107)
!252 = !DILocation(line: 1673, column: 18, scope: !107)
!253 = !DILocation(line: 1673, column: 22, scope: !107)
!254 = !DILocation(line: 1674, column: 18, scope: !107)
!255 = !DILocation(line: 1676, column: 20, scope: !107)
!256 = !DILocation(line: 1677, column: 32, scope: !107)
!257 = !DILocation(line: 1677, column: 31, scope: !107)
!258 = !DILocation(line: 1677, column: 34, scope: !107)
!259 = !DILocation(line: 1678, column: 52, scope: !107)
!260 = !DILocation(line: 1678, column: 59, scope: !107)
!261 = !DILocation(line: 1678, column: 49, scope: !107)
!262 = !DILocation(line: 1678, column: 67, scope: !107)
!263 = !DILocation(line: 1678, column: 65, scope: !107)
!264 = !DILocation(line: 1679, column: 45, scope: !107)
!265 = !DILocation(line: 1679, column: 43, scope: !107)
!266 = !DILocation(line: 1679, column: 18, scope: !107)
!267 = !DILocation(line: 1680, column: 57, scope: !107)
!268 = !DILocation(line: 1680, column: 55, scope: !107)
!269 = !DILocation(line: 1680, column: 60, scope: !107)
!270 = !DILocation(line: 1680, column: 53, scope: !107)
!271 = !DILocation(line: 1681, column: 47, scope: !107)
!272 = !DILocation(line: 1681, column: 54, scope: !107)
!273 = !DILocation(line: 1680, column: 16, scope: !107)
!274 = !DILocation(line: 1683, column: 14, scope: !107)
!275 = !DILocation(line: 1684, column: 5, scope: !108)
!276 = !DILocation(line: 0, scope: !112)
!277 = !DILocation(line: 1686, column: 1, scope: !88)
!278 = !DISubprogram(name: "gsl_error", scope: !39, file: !39, line: 77, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281, !281, !40, !40}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!283 = distinct !DISubprogram(name: "hyperg_U_int_bge1", scope: !2, file: !2, line: 860, type: !89, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !284)
!284 = !{!285, !286, !287, !288, !289, !295, !296, !297, !298, !299, !302, !303, !306, !307, !308, !309, !310, !311, !312, !313, !314, !319, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !339, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !358, !361, !362, !363, !364, !365, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !380, !381, !382, !383, !384, !385, !386, !391, !395, !396, !397, !398, !400, !401, !402, !403, !404, !405, !410, !414, !415, !416, !417, !418, !419, !420, !421}
!285 = !DILocalVariable(name: "a", arg: 1, scope: !283, file: !2, line: 860, type: !91)
!286 = !DILocalVariable(name: "b", arg: 2, scope: !283, file: !2, line: 860, type: !91)
!287 = !DILocalVariable(name: "x", arg: 3, scope: !283, file: !2, line: 860, type: !92)
!288 = !DILocalVariable(name: "result", arg: 4, scope: !283, file: !2, line: 861, type: !93)
!289 = !DILocalVariable(name: "ln_pre_val", scope: !290, file: !2, line: 882, type: !92)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 881, column: 33)
!291 = distinct !DILexicalBlock(scope: !292, file: !2, line: 881, column: 11)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 876, column: 11)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 869, column: 11)
!294 = distinct !DILexicalBlock(scope: !283, file: !2, line: 863, column: 6)
!295 = !DILocalVariable(name: "ln_pre_err", scope: !290, file: !2, line: 883, type: !92)
!296 = !DILocalVariable(name: "asymp", scope: !290, file: !2, line: 884, type: !163)
!297 = !DILocalVariable(name: "stat_asymp", scope: !290, file: !2, line: 885, type: !40)
!298 = !DILocalVariable(name: "stat_e", scope: !290, file: !2, line: 886, type: !40)
!299 = !DILocalVariable(name: "ser", scope: !300, file: !2, line: 892, type: !163)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 891, column: 51)
!301 = distinct !DILexicalBlock(scope: !291, file: !2, line: 891, column: 11)
!302 = !DILocalVariable(name: "stat_ser", scope: !300, file: !2, line: 893, type: !91)
!303 = !DILocalVariable(name: "scale_count", scope: !304, file: !2, line: 902, type: !40)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 899, column: 18)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 899, column: 11)
!306 = !DILocalVariable(name: "scale_factor", scope: !304, file: !2, line: 903, type: !92)
!307 = !DILocalVariable(name: "lnm", scope: !304, file: !2, line: 904, type: !163)
!308 = !DILocalVariable(name: "y", scope: !304, file: !2, line: 905, type: !163)
!309 = !DILocalVariable(name: "lnscale", scope: !304, file: !2, line: 906, type: !78)
!310 = !DILocalVariable(name: "Uap1", scope: !304, file: !2, line: 907, type: !78)
!311 = !DILocalVariable(name: "Ua", scope: !304, file: !2, line: 908, type: !78)
!312 = !DILocalVariable(name: "Uam1", scope: !304, file: !2, line: 909, type: !78)
!313 = !DILocalVariable(name: "ap", scope: !304, file: !2, line: 910, type: !40)
!314 = !DILocalVariable(name: "au0", scope: !315, file: !2, line: 916, type: !78)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 916, column: 7)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 912, column: 28)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 912, column: 5)
!318 = distinct !DILexicalBlock(scope: !304, file: !2, line: 912, column: 5)
!319 = !DILocalVariable(name: "scale_count", scope: !320, file: !2, line: 929, type: !40)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 926, column: 27)
!321 = distinct !DILexicalBlock(scope: !305, file: !2, line: 926, column: 11)
!322 = !DILocalVariable(name: "scale_factor", scope: !320, file: !2, line: 930, type: !92)
!323 = !DILocalVariable(name: "r_Ua", scope: !320, file: !2, line: 931, type: !163)
!324 = !DILocalVariable(name: "lnm", scope: !320, file: !2, line: 932, type: !163)
!325 = !DILocalVariable(name: "y", scope: !320, file: !2, line: 933, type: !163)
!326 = !DILocalVariable(name: "lnscale", scope: !320, file: !2, line: 934, type: !78)
!327 = !DILocalVariable(name: "lm", scope: !320, file: !2, line: 935, type: !78)
!328 = !DILocalVariable(name: "stat_1", scope: !320, file: !2, line: 936, type: !40)
!329 = !DILocalVariable(name: "stat_e", scope: !320, file: !2, line: 937, type: !40)
!330 = !DILocalVariable(name: "Uam1", scope: !320, file: !2, line: 938, type: !78)
!331 = !DILocalVariable(name: "Ua", scope: !320, file: !2, line: 939, type: !78)
!332 = !DILocalVariable(name: "Uap1", scope: !320, file: !2, line: 940, type: !78)
!333 = !DILocalVariable(name: "ap", scope: !320, file: !2, line: 941, type: !40)
!334 = !DILocalVariable(name: "au0", scope: !335, file: !2, line: 949, type: !78)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 949, column: 7)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 945, column: 27)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 945, column: 5)
!338 = distinct !DILexicalBlock(scope: !320, file: !2, line: 945, column: 5)
!339 = !DILocalVariable(name: "scale_factor", scope: !340, file: !2, line: 966, type: !92)
!340 = distinct !DILexicalBlock(scope: !341, file: !2, line: 962, column: 16)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 962, column: 8)
!342 = distinct !DILexicalBlock(scope: !321, file: !2, line: 961, column: 8)
!343 = !DILocalVariable(name: "scale_count", scope: !340, file: !2, line: 967, type: !40)
!344 = !DILocalVariable(name: "stat_CF1", scope: !340, file: !2, line: 968, type: !40)
!345 = !DILocalVariable(name: "ru", scope: !340, file: !2, line: 969, type: !78)
!346 = !DILocalVariable(name: "CF1_count", scope: !340, file: !2, line: 970, type: !40)
!347 = !DILocalVariable(name: "a_target", scope: !340, file: !2, line: 971, type: !40)
!348 = !DILocalVariable(name: "lnU_target", scope: !340, file: !2, line: 972, type: !78)
!349 = !DILocalVariable(name: "Ua", scope: !340, file: !2, line: 973, type: !78)
!350 = !DILocalVariable(name: "Uap1", scope: !340, file: !2, line: 974, type: !78)
!351 = !DILocalVariable(name: "Uam1", scope: !340, file: !2, line: 975, type: !78)
!352 = !DILocalVariable(name: "ap", scope: !340, file: !2, line: 976, type: !40)
!353 = !DILocalVariable(name: "au0", scope: !354, file: !2, line: 995, type: !78)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 995, column: 9)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 991, column: 36)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 991, column: 7)
!357 = distinct !DILexicalBlock(scope: !340, file: !2, line: 991, column: 7)
!358 = !DILocalVariable(name: "lnscl", scope: !359, file: !2, line: 1005, type: !78)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 1004, column: 12)
!360 = distinct !DILexicalBlock(scope: !340, file: !2, line: 998, column: 10)
!361 = !DILocalVariable(name: "lnpre_val", scope: !359, file: !2, line: 1006, type: !78)
!362 = !DILocalVariable(name: "lnpre_err", scope: !359, file: !2, line: 1007, type: !78)
!363 = !DILocalVariable(name: "oUa_err", scope: !359, file: !2, line: 1008, type: !78)
!364 = !DILocalVariable(name: "stat_e", scope: !359, file: !2, line: 1009, type: !40)
!365 = !DILocalVariable(name: "scale_factor", scope: !366, file: !2, line: 1022, type: !92)
!366 = distinct !DILexicalBlock(scope: !341, file: !2, line: 1015, column: 10)
!367 = !DILocalVariable(name: "scale_count_for", scope: !366, file: !2, line: 1023, type: !40)
!368 = !DILocalVariable(name: "scale_count_bck", scope: !366, file: !2, line: 1024, type: !40)
!369 = !DILocalVariable(name: "a0", scope: !366, file: !2, line: 1025, type: !40)
!370 = !DILocalVariable(name: "a1", scope: !366, file: !2, line: 1026, type: !40)
!371 = !DILocalVariable(name: "Ua1_bck_val", scope: !366, file: !2, line: 1027, type: !78)
!372 = !DILocalVariable(name: "Ua1_bck_err", scope: !366, file: !2, line: 1028, type: !78)
!373 = !DILocalVariable(name: "Ua1_for_val", scope: !366, file: !2, line: 1029, type: !78)
!374 = !DILocalVariable(name: "Ua1_for_err", scope: !366, file: !2, line: 1030, type: !78)
!375 = !DILocalVariable(name: "stat_for", scope: !366, file: !2, line: 1031, type: !40)
!376 = !DILocalVariable(name: "stat_bck", scope: !366, file: !2, line: 1032, type: !40)
!377 = !DILocalVariable(name: "lm_for", scope: !366, file: !2, line: 1033, type: !163)
!378 = !DILocalVariable(name: "ru", scope: !379, file: !2, line: 1038, type: !78)
!379 = distinct !DILexicalBlock(scope: !366, file: !2, line: 1035, column: 7)
!380 = !DILocalVariable(name: "CF1_count", scope: !379, file: !2, line: 1039, type: !40)
!381 = !DILocalVariable(name: "stat_CF1", scope: !379, file: !2, line: 1040, type: !40)
!382 = !DILocalVariable(name: "Ua", scope: !379, file: !2, line: 1041, type: !78)
!383 = !DILocalVariable(name: "Uap1", scope: !379, file: !2, line: 1042, type: !78)
!384 = !DILocalVariable(name: "Uam1", scope: !379, file: !2, line: 1043, type: !78)
!385 = !DILocalVariable(name: "ap", scope: !379, file: !2, line: 1044, type: !40)
!386 = !DILocalVariable(name: "au0", scope: !387, file: !2, line: 1049, type: !78)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 1049, column: 11)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 1045, column: 32)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 1045, column: 9)
!390 = distinct !DILexicalBlock(scope: !379, file: !2, line: 1045, column: 9)
!391 = !DILocalVariable(name: "lnU00", scope: !392, file: !2, line: 1071, type: !163)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1066, column: 40)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 1066, column: 15)
!394 = distinct !DILexicalBlock(scope: !366, file: !2, line: 1056, column: 10)
!395 = !DILocalVariable(name: "lnU12", scope: !392, file: !2, line: 1071, type: !163)
!396 = !DILocalVariable(name: "U00", scope: !392, file: !2, line: 1072, type: !163)
!397 = !DILocalVariable(name: "U12", scope: !392, file: !2, line: 1072, type: !163)
!398 = !DILocalVariable(name: "r_Ua", scope: !399, file: !2, line: 1098, type: !163)
!399 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1094, column: 12)
!400 = !DILocalVariable(name: "Uam1", scope: !399, file: !2, line: 1099, type: !78)
!401 = !DILocalVariable(name: "Ua", scope: !399, file: !2, line: 1100, type: !78)
!402 = !DILocalVariable(name: "Uap1", scope: !399, file: !2, line: 1101, type: !78)
!403 = !DILocalVariable(name: "ap", scope: !399, file: !2, line: 1102, type: !40)
!404 = !DILocalVariable(name: "lm_for_local", scope: !399, file: !2, line: 1103, type: !78)
!405 = !DILocalVariable(name: "au0", scope: !406, file: !2, line: 1114, type: !78)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 1114, column: 11)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 1110, column: 33)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 1110, column: 9)
!409 = distinct !DILexicalBlock(scope: !399, file: !2, line: 1110, column: 9)
!410 = !DILocalVariable(name: "lns", scope: !411, file: !2, line: 1134, type: !78)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 1133, column: 12)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 1129, column: 15)
!413 = distinct !DILexicalBlock(scope: !366, file: !2, line: 1123, column: 10)
!414 = !DILocalVariable(name: "ln_for_val", scope: !411, file: !2, line: 1135, type: !78)
!415 = !DILocalVariable(name: "ln_for_err", scope: !411, file: !2, line: 1136, type: !78)
!416 = !DILocalVariable(name: "ln_bck_val", scope: !411, file: !2, line: 1137, type: !78)
!417 = !DILocalVariable(name: "ln_bck_err", scope: !411, file: !2, line: 1138, type: !78)
!418 = !DILocalVariable(name: "lnr_val", scope: !411, file: !2, line: 1139, type: !78)
!419 = !DILocalVariable(name: "lnr_err", scope: !411, file: !2, line: 1140, type: !78)
!420 = !DILocalVariable(name: "sgn", scope: !411, file: !2, line: 1142, type: !78)
!421 = !DILocalVariable(name: "stat_e", scope: !411, file: !2, line: 1143, type: !40)
!422 = distinct !DIAssignID()
!423 = !DILocation(line: 0, scope: !290)
!424 = distinct !DIAssignID()
!425 = !DILocation(line: 0, scope: !300)
!426 = distinct !DIAssignID()
!427 = !DILocation(line: 0, scope: !320)
!428 = distinct !DIAssignID()
!429 = distinct !DIAssignID()
!430 = !DILocation(line: 0, scope: !340)
!431 = distinct !DIAssignID()
!432 = distinct !DIAssignID()
!433 = !DILocation(line: 0, scope: !366)
!434 = distinct !DIAssignID()
!435 = !DILocation(line: 0, scope: !379)
!436 = distinct !DIAssignID()
!437 = distinct !DIAssignID()
!438 = !DILocation(line: 0, scope: !392)
!439 = distinct !DIAssignID()
!440 = distinct !DIAssignID()
!441 = distinct !DIAssignID()
!442 = distinct !DIAssignID()
!443 = !DILocation(line: 0, scope: !399)
!444 = distinct !DIAssignID()
!445 = !DILocation(line: 0, scope: !283)
!446 = !DILocation(line: 863, column: 6, scope: !283)
!447 = !DILocation(line: 864, column: 17, scope: !448)
!448 = distinct !DILexicalBlock(scope: !294, file: !2, line: 863, column: 14)
!449 = !DILocation(line: 865, column: 13, scope: !448)
!450 = !DILocation(line: 865, column: 17, scope: !448)
!451 = !DILocation(line: 866, column: 13, scope: !448)
!452 = !DILocation(line: 866, column: 17, scope: !448)
!453 = !DILocation(line: 867, column: 5, scope: !448)
!454 = !DILocation(line: 870, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !293, file: !2, line: 869, column: 20)
!456 = !DILocation(line: 870, column: 23, scope: !455)
!457 = !DILocation(line: 870, column: 18, scope: !455)
!458 = !DILocation(line: 871, column: 50, scope: !455)
!459 = !DILocation(line: 871, column: 45, scope: !455)
!460 = !DILocation(line: 871, column: 55, scope: !455)
!461 = !DILocation(line: 871, column: 53, scope: !455)
!462 = !DILocation(line: 871, column: 42, scope: !455)
!463 = !DILocation(line: 871, column: 13, scope: !455)
!464 = !DILocation(line: 872, column: 44, scope: !455)
!465 = !DILocation(line: 872, column: 42, scope: !455)
!466 = !DILocation(line: 872, column: 17, scope: !455)
!467 = !DILocation(line: 873, column: 13, scope: !455)
!468 = !DILocation(line: 873, column: 18, scope: !455)
!469 = !DILocation(line: 874, column: 5, scope: !455)
!470 = !DILocation(line: 876, column: 18, scope: !292)
!471 = !DILocation(line: 876, column: 13, scope: !292)
!472 = !DILocation(line: 876, column: 11, scope: !293)
!473 = !DILocation(line: 879, column: 29, scope: !474)
!474 = distinct !DILexicalBlock(scope: !292, file: !2, line: 876, column: 23)
!475 = !DILocation(line: 879, column: 32, scope: !474)
!476 = !DILocation(line: 879, column: 31, scope: !474)
!477 = !DILocation(line: 879, column: 12, scope: !474)
!478 = !DILocation(line: 879, column: 5, scope: !474)
!479 = !DILocation(line: 881, column: 11, scope: !291)
!480 = !DILocalVariable(name: "a", arg: 1, scope: !481, file: !482, line: 69, type: !78)
!481 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !482, file: !482, line: 69, type: !483, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !485)
!482 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!483 = !DISubroutineType(types: !484)
!484 = !{!78, !78, !78}
!485 = !{!480, !486}
!486 = !DILocalVariable(name: "b", arg: 2, scope: !481, file: !482, line: 69, type: !78)
!487 = !DILocation(line: 0, scope: !481, inlinedAt: !488)
!488 = distinct !DILocation(line: 881, column: 11, scope: !291)
!489 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !488)
!490 = !DILocation(line: 0, scope: !481, inlinedAt: !491)
!491 = distinct !DILocation(line: 881, column: 11, scope: !291)
!492 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !491)
!493 = !DILocation(line: 881, column: 11, scope: !292)
!494 = !DILocation(line: 882, column: 31, scope: !290)
!495 = !DILocation(line: 882, column: 34, scope: !290)
!496 = !DILocation(line: 882, column: 33, scope: !290)
!497 = !DILocation(line: 883, column: 55, scope: !290)
!498 = !DILocation(line: 883, column: 53, scope: !290)
!499 = !DILocation(line: 884, column: 5, scope: !290)
!500 = !DILocation(line: 885, column: 22, scope: !290)
!501 = !{i32 0, i32 12}
!502 = !DILocation(line: 887, column: 53, scope: !290)
!503 = !DILocation(line: 887, column: 64, scope: !290)
!504 = !DILocation(line: 886, column: 18, scope: !290)
!505 = !DILocation(line: 889, column: 12, scope: !290)
!506 = !DILocation(line: 890, column: 3, scope: !291)
!507 = !DILocation(line: 891, column: 11, scope: !301)
!508 = !DILocation(line: 891, column: 46, scope: !301)
!509 = !DILocation(line: 891, column: 11, scope: !291)
!510 = !DILocation(line: 892, column: 5, scope: !300)
!511 = !DILocation(line: 893, column: 26, scope: !300)
!512 = !DILocation(line: 894, column: 23, scope: !300)
!513 = !DILocation(line: 894, column: 17, scope: !300)
!514 = !DILocation(line: 895, column: 23, scope: !300)
!515 = !DILocation(line: 895, column: 13, scope: !300)
!516 = !DILocation(line: 895, column: 17, scope: !300)
!517 = !DILocation(line: 896, column: 13, scope: !300)
!518 = !DILocation(line: 896, column: 17, scope: !300)
!519 = !DILocation(line: 898, column: 3, scope: !301)
!520 = !DILocation(line: 899, column: 13, scope: !305)
!521 = !DILocation(line: 899, column: 11, scope: !301)
!522 = !DILocation(line: 0, scope: !304)
!523 = !DILocation(line: 908, column: 19, scope: !304)
!524 = !DILocation(line: 908, column: 22, scope: !304)
!525 = !DILocation(line: 912, column: 18, scope: !317)
!526 = !DILocation(line: 912, column: 5, scope: !318)
!527 = !DILocation(line: 913, column: 14, scope: !316)
!528 = !DILocation(line: 913, column: 19, scope: !316)
!529 = !DILocation(line: 913, column: 18, scope: !316)
!530 = !DILocation(line: 913, column: 22, scope: !316)
!531 = !DILocation(line: 913, column: 16, scope: !316)
!532 = !DILocation(line: 913, column: 27, scope: !316)
!533 = !DILocation(line: 913, column: 41, scope: !316)
!534 = !DILocation(line: 913, column: 37, scope: !316)
!535 = !DILocation(line: 913, column: 44, scope: !316)
!536 = !DILocation(line: 913, column: 47, scope: !316)
!537 = !DILocation(line: 913, column: 33, scope: !316)
!538 = !DILocation(line: 916, column: 7, scope: !315)
!539 = !DILocation(line: 0, scope: !315)
!540 = !DILocation(line: 916, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !315, file: !2, line: 916, column: 7)
!542 = !DILocation(line: 916, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !541, file: !2, line: 916, column: 7)
!544 = !DILocation(line: 916, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 916, column: 7)
!546 = !DILocation(line: 916, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !2, line: 916, column: 7)
!548 = !DILocation(line: 0, scope: !316)
!549 = !DILocation(line: 912, column: 24, scope: !317)
!550 = distinct !{!550, !526, !551, !552}
!551 = !DILocation(line: 917, column: 5, scope: !318)
!552 = !{!"llvm.loop.mustprogress"}
!553 = !DILocation(line: 920, column: 15, scope: !304)
!554 = !DILocation(line: 920, column: 26, scope: !304)
!555 = !DILocation(line: 921, column: 39, scope: !304)
!556 = !DILocation(line: 921, column: 37, scope: !304)
!557 = !DILocation(line: 923, column: 45, scope: !304)
!558 = !DILocation(line: 923, column: 35, scope: !304)
!559 = !DILocation(line: 923, column: 53, scope: !304)
!560 = !DILocation(line: 923, column: 51, scope: !304)
!561 = !DILocation(line: 924, column: 12, scope: !304)
!562 = !DILocation(line: 926, column: 19, scope: !321)
!563 = !DILocation(line: 926, column: 22, scope: !321)
!564 = !DILocation(line: 926, column: 13, scope: !321)
!565 = !DILocation(line: 926, column: 11, scope: !305)
!566 = !DILocation(line: 931, column: 5, scope: !320)
!567 = !DILocation(line: 935, column: 5, scope: !320)
!568 = !DILocation(line: 936, column: 18, scope: !320)
!569 = !DILocation(line: 939, column: 24, scope: !320)
!570 = !DILocation(line: 943, column: 18, scope: !320)
!571 = !{!133, !133, i64 0}
!572 = !DILocation(line: 943, column: 17, scope: !320)
!573 = !DILocation(line: 943, column: 13, scope: !320)
!574 = !DILocation(line: 945, column: 17, scope: !337)
!575 = !DILocation(line: 945, column: 5, scope: !338)
!576 = !DILocation(line: 946, column: 30, scope: !336)
!577 = !DILocation(line: 946, column: 29, scope: !336)
!578 = !DILocation(line: 946, column: 25, scope: !336)
!579 = !DILocation(line: 946, column: 32, scope: !336)
!580 = !DILocation(line: 946, column: 35, scope: !336)
!581 = !DILocation(line: 946, column: 21, scope: !336)
!582 = !DILocation(line: 946, column: 14, scope: !336)
!583 = !DILocation(line: 946, column: 48, scope: !336)
!584 = !DILocation(line: 946, column: 51, scope: !336)
!585 = !DILocation(line: 946, column: 43, scope: !336)
!586 = !DILocation(line: 946, column: 39, scope: !336)
!587 = !DILocation(line: 949, column: 7, scope: !335)
!588 = !DILocation(line: 0, scope: !335)
!589 = !DILocation(line: 949, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !335, file: !2, line: 949, column: 7)
!591 = !DILocation(line: 949, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !2, line: 949, column: 7)
!593 = !DILocation(line: 949, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !2, line: 949, column: 7)
!595 = !DILocation(line: 949, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !2, line: 949, column: 7)
!597 = !DILocation(line: 0, scope: !336)
!598 = !DILocation(line: 945, column: 23, scope: !337)
!599 = distinct !{!599, !575, !600, !552}
!600 = !DILocation(line: 950, column: 5, scope: !338)
!601 = !DILocation(line: 953, column: 20, scope: !320)
!602 = !DILocation(line: 953, column: 32, scope: !320)
!603 = !DILocation(line: 953, column: 15, scope: !320)
!604 = !DILocation(line: 953, column: 18, scope: !320)
!605 = !DILocation(line: 954, column: 40, scope: !320)
!606 = !DILocation(line: 954, column: 51, scope: !320)
!607 = !DILocation(line: 954, column: 49, scope: !320)
!608 = !DILocation(line: 954, column: 37, scope: !320)
!609 = !DILocation(line: 956, column: 24, scope: !320)
!610 = !DILocation(line: 956, column: 33, scope: !320)
!611 = !DILocation(line: 956, column: 27, scope: !320)
!612 = !DILocation(line: 956, column: 40, scope: !320)
!613 = !DILocation(line: 956, column: 38, scope: !320)
!614 = !DILocation(line: 957, column: 47, scope: !320)
!615 = !DILocation(line: 957, column: 36, scope: !320)
!616 = !DILocation(line: 957, column: 54, scope: !320)
!617 = !DILocation(line: 957, column: 11, scope: !320)
!618 = !DILocation(line: 958, column: 14, scope: !320)
!619 = !DILocation(line: 959, column: 12, scope: !320)
!620 = !DILocation(line: 960, column: 3, scope: !321)
!621 = !DILocation(line: 962, column: 10, scope: !341)
!622 = !DILocation(line: 962, column: 8, scope: !342)
!623 = !DILocation(line: 969, column: 7, scope: !340)
!624 = !DILocation(line: 970, column: 7, scope: !340)
!625 = !DILocation(line: 978, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !340, file: !2, line: 978, column: 10)
!627 = !DILocation(line: 978, column: 10, scope: !340)
!628 = !DILocation(line: 979, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !2, line: 978, column: 21)
!630 = !DILocation(line: 980, column: 22, scope: !629)
!631 = !DILocation(line: 980, column: 32, scope: !629)
!632 = !DILocation(line: 980, column: 31, scope: !629)
!633 = !DILocation(line: 981, column: 7, scope: !629)
!634 = !DILocation(line: 0, scope: !626)
!635 = !DILocation(line: 987, column: 18, scope: !340)
!636 = !DILocation(line: 991, column: 19, scope: !356)
!637 = !DILocation(line: 991, column: 7, scope: !357)
!638 = !DILocation(line: 990, column: 14, scope: !340)
!639 = !DILocation(line: 990, column: 16, scope: !340)
!640 = !DILocation(line: 992, column: 25, scope: !355)
!641 = !DILocation(line: 992, column: 24, scope: !355)
!642 = !DILocation(line: 992, column: 20, scope: !355)
!643 = !DILocation(line: 992, column: 27, scope: !355)
!644 = !DILocation(line: 992, column: 30, scope: !355)
!645 = !DILocation(line: 992, column: 43, scope: !355)
!646 = !DILocation(line: 992, column: 46, scope: !355)
!647 = !DILocation(line: 992, column: 38, scope: !355)
!648 = !DILocation(line: 992, column: 49, scope: !355)
!649 = !DILocation(line: 992, column: 34, scope: !355)
!650 = !DILocation(line: 992, column: 16, scope: !355)
!651 = !DILocation(line: 995, column: 9, scope: !354)
!652 = !DILocation(line: 0, scope: !354)
!653 = !DILocation(line: 995, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !354, file: !2, line: 995, column: 9)
!655 = !DILocation(line: 995, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !2, line: 995, column: 9)
!657 = !DILocation(line: 995, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !2, line: 995, column: 9)
!659 = !DILocation(line: 995, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !2, line: 995, column: 9)
!661 = !DILocation(line: 0, scope: !355)
!662 = !DILocation(line: 991, column: 32, scope: !356)
!663 = distinct !{!663, !637, !664, !552}
!664 = !DILocation(line: 996, column: 7, scope: !357)
!665 = !DILocation(line: 998, column: 13, scope: !360)
!666 = !DILocation(line: 998, column: 10, scope: !340)
!667 = !DILocation(line: 1000, column: 21, scope: !668)
!668 = distinct !DILexicalBlock(scope: !360, file: !2, line: 998, column: 21)
!669 = !DILocation(line: 1002, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !668, file: !2, line: 1002, column: 9)
!671 = !DILocation(line: 1005, column: 24, scope: !359)
!672 = !DILocation(line: 1005, column: 36, scope: !359)
!673 = !DILocation(line: 0, scope: !359)
!674 = !DILocation(line: 1006, column: 39, scope: !359)
!675 = !DILocation(line: 1007, column: 53, scope: !359)
!676 = !DILocation(line: 1007, column: 72, scope: !359)
!677 = !DILocation(line: 1007, column: 70, scope: !359)
!678 = !DILocation(line: 1007, column: 50, scope: !359)
!679 = !DILocation(line: 1008, column: 48, scope: !359)
!680 = !DILocation(line: 1008, column: 40, scope: !359)
!681 = !DILocation(line: 1008, column: 35, scope: !359)
!682 = !DILocation(line: 1008, column: 54, scope: !359)
!683 = !{!136, !136, i64 0}
!684 = !DILocation(line: 1008, column: 52, scope: !359)
!685 = !DILocation(line: 1008, column: 64, scope: !359)
!686 = !DILocation(line: 1008, column: 32, scope: !359)
!687 = !DILocation(line: 1008, column: 71, scope: !359)
!688 = !DILocation(line: 1008, column: 99, scope: !359)
!689 = !DILocation(line: 1008, column: 91, scope: !359)
!690 = !DILocation(line: 1008, column: 89, scope: !359)
!691 = !DILocation(line: 1009, column: 22, scope: !359)
!692 = !DILocation(line: 1012, column: 16, scope: !359)
!693 = !DILocation(line: 0, scope: !360)
!694 = !DILocation(line: 1014, column: 5, scope: !341)
!695 = !DILocation(line: 1026, column: 32, scope: !366)
!696 = !DILocation(line: 1026, column: 29, scope: !366)
!697 = !DILocation(line: 1026, column: 36, scope: !366)
!698 = !DILocation(line: 1026, column: 21, scope: !366)
!699 = !DILocation(line: 1026, column: 19, scope: !366)
!700 = !DILocation(line: 1026, column: 16, scope: !366)
!701 = !DILocation(line: 1033, column: 7, scope: !366)
!702 = !DILocation(line: 1038, column: 9, scope: !379)
!703 = !DILocation(line: 1039, column: 9, scope: !379)
!704 = !DILocation(line: 1040, column: 24, scope: !379)
!705 = !DILocation(line: 1045, column: 21, scope: !389)
!706 = !DILocation(line: 1045, column: 9, scope: !390)
!707 = !DILocation(line: 1042, column: 23, scope: !379)
!708 = !DILocation(line: 1042, column: 25, scope: !379)
!709 = !DILocation(line: 1046, column: 27, scope: !388)
!710 = !DILocation(line: 1046, column: 26, scope: !388)
!711 = !DILocation(line: 1046, column: 22, scope: !388)
!712 = !DILocation(line: 1046, column: 29, scope: !388)
!713 = !DILocation(line: 1046, column: 32, scope: !388)
!714 = !DILocation(line: 1046, column: 45, scope: !388)
!715 = !DILocation(line: 1046, column: 48, scope: !388)
!716 = !DILocation(line: 1046, column: 40, scope: !388)
!717 = !DILocation(line: 1046, column: 51, scope: !388)
!718 = !DILocation(line: 1046, column: 36, scope: !388)
!719 = !DILocation(line: 1046, column: 18, scope: !388)
!720 = !DILocation(line: 1049, column: 11, scope: !387)
!721 = !DILocation(line: 0, scope: !387)
!722 = !DILocation(line: 1049, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !387, file: !2, line: 1049, column: 11)
!724 = !DILocation(line: 1049, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !723, file: !2, line: 1049, column: 11)
!726 = !DILocation(line: 1049, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !2, line: 1049, column: 11)
!728 = !DILocation(line: 1049, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !2, line: 1049, column: 11)
!730 = !DILocation(line: 0, scope: !388)
!731 = !DILocation(line: 1045, column: 28, scope: !389)
!732 = distinct !{!732, !706, !733, !552}
!733 = !DILocation(line: 1050, column: 9, scope: !390)
!734 = !DILocation(line: 1052, column: 55, scope: !379)
!735 = !DILocation(line: 1052, column: 53, scope: !379)
!736 = !DILocation(line: 1052, column: 48, scope: !379)
!737 = !DILocation(line: 1052, column: 59, scope: !379)
!738 = !DILocation(line: 1052, column: 58, scope: !379)
!739 = !DILocation(line: 1052, column: 68, scope: !379)
!740 = !DILocation(line: 1052, column: 45, scope: !379)
!741 = !DILocation(line: 1052, column: 76, scope: !379)
!742 = !DILocation(line: 1052, column: 74, scope: !379)
!743 = !DILocation(line: 1054, column: 7, scope: !366)
!744 = !DILocation(line: 1056, column: 16, scope: !394)
!745 = !DILocation(line: 1056, column: 12, scope: !394)
!746 = !DILocation(line: 1056, column: 20, scope: !394)
!747 = !DILocation(line: 1066, column: 25, scope: !393)
!748 = !DILocation(line: 1066, column: 17, scope: !393)
!749 = !DILocation(line: 1066, column: 29, scope: !393)
!750 = !DILocation(line: 1071, column: 9, scope: !392)
!751 = !DILocation(line: 1072, column: 9, scope: !392)
!752 = !DILocation(line: 1073, column: 26, scope: !392)
!753 = !DILocation(line: 1073, column: 28, scope: !392)
!754 = !DILocation(line: 1073, column: 9, scope: !392)
!755 = !DILocation(line: 1074, column: 9, scope: !392)
!756 = !DILocation(line: 1075, column: 18, scope: !757)
!757 = distinct !DILexicalBlock(scope: !392, file: !2, line: 1075, column: 12)
!758 = !DILocation(line: 1075, column: 30, scope: !757)
!759 = !DILocation(line: 1075, column: 22, scope: !757)
!760 = !DILocation(line: 1075, column: 12, scope: !392)
!761 = distinct !DIAssignID()
!762 = !DILocation(line: 1077, column: 30, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !2, line: 1075, column: 35)
!764 = distinct !DIAssignID()
!765 = distinct !DIAssignID()
!766 = distinct !DIAssignID()
!767 = !DILocation(line: 1080, column: 38, scope: !763)
!768 = !DILocation(line: 1080, column: 58, scope: !763)
!769 = !DILocation(line: 1080, column: 62, scope: !763)
!770 = !DILocation(line: 1080, column: 11, scope: !763)
!771 = !DILocation(line: 1089, column: 33, scope: !392)
!772 = !DILocation(line: 1090, column: 37, scope: !392)
!773 = !DILocation(line: 1081, column: 9, scope: !763)
!774 = !DILocation(line: 1084, column: 30, scope: !775)
!775 = distinct !DILexicalBlock(scope: !757, file: !2, line: 1082, column: 14)
!776 = distinct !DIAssignID()
!777 = distinct !DIAssignID()
!778 = !DILocation(line: 1087, column: 38, scope: !775)
!779 = !DILocation(line: 1087, column: 58, scope: !775)
!780 = !DILocation(line: 1087, column: 62, scope: !775)
!781 = !DILocation(line: 1087, column: 11, scope: !775)
!782 = !DILocation(line: 1089, column: 43, scope: !392)
!783 = !DILocation(line: 1090, column: 47, scope: !392)
!784 = !DILocation(line: 0, scope: !757)
!785 = !DILocation(line: 1089, column: 27, scope: !392)
!786 = !DILocation(line: 1089, column: 37, scope: !392)
!787 = !DILocation(line: 1089, column: 54, scope: !392)
!788 = !DILocation(line: 1089, column: 58, scope: !392)
!789 = !DILocation(line: 1089, column: 48, scope: !392)
!790 = !DILocation(line: 1090, column: 32, scope: !392)
!791 = !DILocation(line: 1090, column: 41, scope: !392)
!792 = !DILocation(line: 1090, column: 54, scope: !392)
!793 = !DILocation(line: 1090, column: 52, scope: !392)
!794 = !DILocation(line: 1091, column: 48, scope: !392)
!795 = !DILocation(line: 1091, column: 46, scope: !392)
!796 = !DILocation(line: 1091, column: 21, scope: !392)
!797 = !DILocation(line: 1093, column: 7, scope: !393)
!798 = !DILocation(line: 1093, column: 7, scope: !392)
!799 = !DILocation(line: 1098, column: 9, scope: !399)
!800 = !DILocation(line: 1103, column: 9, scope: !399)
!801 = !DILocation(line: 1104, column: 20, scope: !399)
!802 = !DILocation(line: 1105, column: 19, scope: !399)
!803 = !DILocation(line: 1106, column: 22, scope: !399)
!804 = !DILocation(line: 1106, column: 21, scope: !399)
!805 = !DILocation(line: 1106, column: 17, scope: !399)
!806 = !DILocation(line: 1107, column: 22, scope: !399)
!807 = distinct !DIAssignID()
!808 = distinct !DIAssignID()
!809 = !DILocation(line: 1110, column: 9, scope: !409)
!810 = !DILocation(line: 1111, column: 34, scope: !407)
!811 = !DILocation(line: 1111, column: 33, scope: !407)
!812 = !DILocation(line: 1111, column: 29, scope: !407)
!813 = !DILocation(line: 1111, column: 36, scope: !407)
!814 = !DILocation(line: 1111, column: 39, scope: !407)
!815 = !DILocation(line: 1111, column: 25, scope: !407)
!816 = !DILocation(line: 1111, column: 18, scope: !407)
!817 = !DILocation(line: 1111, column: 52, scope: !407)
!818 = !DILocation(line: 1111, column: 55, scope: !407)
!819 = !DILocation(line: 1111, column: 47, scope: !407)
!820 = !DILocation(line: 1111, column: 43, scope: !407)
!821 = !DILocation(line: 1114, column: 11, scope: !406)
!822 = !DILocation(line: 0, scope: !406)
!823 = !DILocation(line: 1114, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !406, file: !2, line: 1114, column: 11)
!825 = !DILocation(line: 1114, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !2, line: 1114, column: 11)
!827 = !DILocation(line: 1114, column: 11, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !2, line: 1114, column: 11)
!829 = !DILocation(line: 1114, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !2, line: 1114, column: 11)
!831 = !DILocation(line: 0, scope: !407)
!832 = !DILocation(line: 1110, column: 29, scope: !408)
!833 = !DILocation(line: 1110, column: 22, scope: !408)
!834 = distinct !{!834, !809, !835, !552}
!835 = !DILocation(line: 1115, column: 9, scope: !409)
!836 = !DILocation(line: 1117, column: 24, scope: !399)
!837 = !DILocation(line: 1117, column: 45, scope: !399)
!838 = !DILocation(line: 1117, column: 54, scope: !399)
!839 = !DILocation(line: 1117, column: 48, scope: !399)
!840 = !DILocation(line: 1117, column: 33, scope: !399)
!841 = !DILocation(line: 1118, column: 56, scope: !399)
!842 = !DILocation(line: 1118, column: 54, scope: !399)
!843 = !DILocation(line: 1118, column: 49, scope: !399)
!844 = !DILocation(line: 1118, column: 60, scope: !399)
!845 = !DILocation(line: 1118, column: 46, scope: !399)
!846 = !DILocation(line: 1118, column: 66, scope: !399)
!847 = !DILocation(line: 1118, column: 21, scope: !399)
!848 = !DILocation(line: 1119, column: 7, scope: !393)
!849 = !DILocation(line: 1023, column: 11, scope: !366)
!850 = !DILocation(line: 0, scope: !394)
!851 = !DILocation(line: 1123, column: 22, scope: !413)
!852 = !DILocation(line: 1123, column: 10, scope: !366)
!853 = !DILocation(line: 1061, column: 26, scope: !854)
!854 = distinct !DILexicalBlock(scope: !394, file: !2, line: 1056, column: 31)
!855 = !DILocation(line: 1061, column: 9, scope: !854)
!856 = !DILocation(line: 1139, column: 33, scope: !411)
!857 = !DILocation(line: 1140, column: 33, scope: !411)
!858 = !DILocation(line: 1125, column: 21, scope: !859)
!859 = distinct !DILexicalBlock(scope: !413, file: !2, line: 1123, column: 30)
!860 = !DILocation(line: 1127, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !2, line: 1127, column: 9)
!862 = !DILocation(line: 1129, column: 27, scope: !412)
!863 = !DILocation(line: 1129, column: 15, scope: !413)
!864 = !DILocation(line: 1131, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 1131, column: 9)
!866 = distinct !DILexicalBlock(scope: !412, file: !2, line: 1129, column: 35)
!867 = !DILocation(line: 1131, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !2, line: 1131, column: 9)
!869 = !DILocation(line: 1134, column: 39, scope: !411)
!870 = !DILocation(line: 1134, column: 22, scope: !411)
!871 = !DILocation(line: 1134, column: 57, scope: !411)
!872 = !DILocation(line: 0, scope: !411)
!873 = !DILocation(line: 1135, column: 33, scope: !411)
!874 = !DILocation(line: 1135, column: 29, scope: !411)
!875 = !DILocation(line: 1136, column: 63, scope: !411)
!876 = !DILocation(line: 1136, column: 47, scope: !411)
!877 = !DILocation(line: 1136, column: 45, scope: !411)
!878 = !DILocation(line: 1137, column: 29, scope: !411)
!879 = !DILocation(line: 1138, column: 63, scope: !411)
!880 = !DILocation(line: 1138, column: 47, scope: !411)
!881 = !DILocation(line: 1138, column: 45, scope: !411)
!882 = !DILocation(line: 1139, column: 37, scope: !411)
!883 = !DILocation(line: 1139, column: 50, scope: !411)
!884 = !DILocation(line: 1139, column: 63, scope: !411)
!885 = !DILocation(line: 1140, column: 37, scope: !411)
!886 = !DILocation(line: 1140, column: 50, scope: !411)
!887 = !DILocation(line: 1141, column: 38, scope: !411)
!888 = !DILocation(line: 1141, column: 57, scope: !411)
!889 = !DILocation(line: 1141, column: 55, scope: !411)
!890 = !DILocation(line: 1141, column: 76, scope: !411)
!891 = !DILocation(line: 1141, column: 74, scope: !411)
!892 = !DILocation(line: 1141, column: 95, scope: !411)
!893 = !DILocation(line: 1141, column: 93, scope: !411)
!894 = !DILocation(line: 1141, column: 35, scope: !411)
!895 = !DILocation(line: 1141, column: 11, scope: !411)
!896 = !DILocation(line: 1142, column: 22, scope: !411)
!897 = !DILocation(line: 1142, column: 46, scope: !411)
!898 = !DILocation(line: 1142, column: 44, scope: !411)
!899 = !DILocation(line: 1143, column: 22, scope: !411)
!900 = !DILocation(line: 1144, column: 21, scope: !411)
!901 = !DILocation(line: 1145, column: 16, scope: !411)
!902 = !DILocation(line: 0, scope: !413)
!903 = !DILocation(line: 1147, column: 5, scope: !341)
!904 = !DILocation(line: 0, scope: !294)
!905 = !DILocation(line: 1149, column: 1, scope: !283)
!906 = !DISubprogram(name: "log", scope: !907, file: !907, line: 104, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!908 = !DISubroutineType(types: !909)
!909 = !{!78, !78}
!910 = !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !911, file: !911, line: 130, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!912 = !DISubroutineType(types: !913)
!913 = !{!40, !92, !92, !92, !92, !93}
!914 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e10_e", scope: !2, file: !2, line: 1690, type: !915, scopeLine: 1692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!40, !92, !92, !92, !93}
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !932, !938, !939, !940, !941, !942, !943, !944}
!918 = !DILocalVariable(name: "a", arg: 1, scope: !914, file: !2, line: 1690, type: !92)
!919 = !DILocalVariable(name: "b", arg: 2, scope: !914, file: !2, line: 1690, type: !92)
!920 = !DILocalVariable(name: "x", arg: 3, scope: !914, file: !2, line: 1690, type: !92)
!921 = !DILocalVariable(name: "result", arg: 4, scope: !914, file: !2, line: 1691, type: !93)
!922 = !DILocalVariable(name: "rinta", scope: !914, file: !2, line: 1693, type: !92)
!923 = !DILocalVariable(name: "rintb", scope: !914, file: !2, line: 1694, type: !92)
!924 = !DILocalVariable(name: "a_integer", scope: !914, file: !2, line: 1695, type: !91)
!925 = !DILocalVariable(name: "b_integer", scope: !914, file: !2, line: 1696, type: !91)
!926 = !DILocalVariable(name: "powx1N_1", scope: !927, file: !2, line: 1715, type: !163)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 1714, column: 4)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 1712, column: 11)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 1709, column: 12)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 1703, column: 11)
!931 = distinct !DILexicalBlock(scope: !914, file: !2, line: 1700, column: 6)
!932 = !DILocalVariable(name: "lnx", scope: !933, file: !2, line: 1739, type: !92)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 1735, column: 10)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 1730, column: 8)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 1729, column: 8)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 1726, column: 12)
!937 = distinct !DILexicalBlock(scope: !928, file: !2, line: 1723, column: 12)
!938 = !DILocalVariable(name: "ln_pre_val", scope: !933, file: !2, line: 1740, type: !92)
!939 = !DILocalVariable(name: "ln_pre_err", scope: !933, file: !2, line: 1741, type: !92)
!940 = !DILocalVariable(name: "ap", scope: !933, file: !2, line: 1742, type: !92)
!941 = !DILocalVariable(name: "bp", scope: !933, file: !2, line: 1743, type: !92)
!942 = !DILocalVariable(name: "U", scope: !933, file: !2, line: 1744, type: !94)
!943 = !DILocalVariable(name: "stat_U", scope: !933, file: !2, line: 1745, type: !40)
!944 = !DILocalVariable(name: "stat_e", scope: !933, file: !2, line: 1746, type: !40)
!945 = distinct !DIAssignID()
!946 = distinct !DIAssignID()
!947 = distinct !DIAssignID()
!948 = !DILocation(line: 0, scope: !927)
!949 = distinct !DIAssignID()
!950 = !DILocation(line: 0, scope: !933)
!951 = !DILocation(line: 0, scope: !914)
!952 = !DILocation(line: 1693, column: 32, scope: !914)
!953 = !DILocation(line: 1693, column: 24, scope: !914)
!954 = !DILocation(line: 1694, column: 32, scope: !914)
!955 = !DILocation(line: 1694, column: 24, scope: !914)
!956 = !DILocation(line: 1695, column: 34, scope: !914)
!957 = !DILocation(line: 1695, column: 27, scope: !914)
!958 = !DILocation(line: 1695, column: 43, scope: !914)
!959 = !DILocation(line: 1696, column: 34, scope: !914)
!960 = !DILocation(line: 1696, column: 27, scope: !914)
!961 = !DILocation(line: 1696, column: 43, scope: !914)
!962 = !DILocation(line: 1700, column: 8, scope: !931)
!963 = !DILocation(line: 1700, column: 15, scope: !931)
!964 = !DILocation(line: 1701, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 1701, column: 5)
!966 = distinct !DILexicalBlock(scope: !931, file: !2, line: 1700, column: 26)
!967 = !DILocation(line: 1701, column: 5, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !2, line: 1701, column: 5)
!969 = !DILocation(line: 1703, column: 13, scope: !930)
!970 = !DILocation(line: 1703, column: 11, scope: !931)
!971 = !DILocation(line: 1704, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !930, file: !2, line: 1703, column: 21)
!973 = !DILocation(line: 1705, column: 13, scope: !972)
!974 = !DILocation(line: 1705, column: 17, scope: !972)
!975 = !DILocation(line: 1706, column: 13, scope: !972)
!976 = !DILocation(line: 1706, column: 17, scope: !972)
!977 = !DILocation(line: 1707, column: 5, scope: !972)
!978 = !DILocation(line: 1709, column: 12, scope: !930)
!979 = !DILocation(line: 0, scope: !155, inlinedAt: !980)
!980 = distinct !DILocation(line: 1710, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !929, file: !2, line: 1709, column: 22)
!982 = !DILocation(line: 1474, column: 3, scope: !155, inlinedAt: !980)
!983 = !DILocation(line: 1475, column: 35, scope: !155, inlinedAt: !980)
!984 = !DILocation(line: 1475, column: 37, scope: !155, inlinedAt: !980)
!985 = !DILocation(line: 1475, column: 16, scope: !155, inlinedAt: !980)
!986 = !DILocation(line: 1476, column: 16, scope: !155, inlinedAt: !980)
!987 = !DILocation(line: 1477, column: 34, scope: !155, inlinedAt: !980)
!988 = !DILocation(line: 1477, column: 26, scope: !155, inlinedAt: !980)
!989 = !DILocation(line: 1477, column: 24, scope: !155, inlinedAt: !980)
!990 = !DILocation(line: 1479, column: 29, scope: !155, inlinedAt: !980)
!991 = !DILocation(line: 1479, column: 24, scope: !155, inlinedAt: !980)
!992 = !DILocation(line: 1479, column: 38, scope: !155, inlinedAt: !980)
!993 = !DILocation(line: 1479, column: 33, scope: !155, inlinedAt: !980)
!994 = !DILocation(line: 1479, column: 15, scope: !155, inlinedAt: !980)
!995 = !DILocation(line: 1480, column: 17, scope: !155, inlinedAt: !980)
!996 = !DILocation(line: 1480, column: 36, scope: !155, inlinedAt: !980)
!997 = !DILocation(line: 1480, column: 45, scope: !155, inlinedAt: !980)
!998 = !DILocation(line: 1480, column: 40, scope: !155, inlinedAt: !980)
!999 = !DILocation(line: 1480, column: 30, scope: !155, inlinedAt: !980)
!1000 = !DILocation(line: 1480, column: 11, scope: !155, inlinedAt: !980)
!1001 = !DILocation(line: 1480, column: 15, scope: !155, inlinedAt: !980)
!1002 = !DILocation(line: 1481, column: 11, scope: !155, inlinedAt: !980)
!1003 = !DILocation(line: 1481, column: 15, scope: !155, inlinedAt: !980)
!1004 = !DILocation(line: 1483, column: 10, scope: !155, inlinedAt: !980)
!1005 = !DILocation(line: 1484, column: 1, scope: !155, inlinedAt: !980)
!1006 = !DILocation(line: 1710, column: 5, scope: !981)
!1007 = !DILocation(line: 1712, column: 21, scope: !928)
!1008 = !DILocation(line: 1715, column: 6, scope: !927)
!1009 = !DILocation(line: 1716, column: 26, scope: !927)
!1010 = !DILocation(line: 1716, column: 6, scope: !927)
!1011 = !DILocation(line: 1717, column: 29, scope: !927)
!1012 = !DILocation(line: 1717, column: 18, scope: !927)
!1013 = !DILocation(line: 1718, column: 29, scope: !927)
!1014 = !DILocation(line: 1718, column: 14, scope: !927)
!1015 = !DILocation(line: 1718, column: 18, scope: !927)
!1016 = !DILocation(line: 1719, column: 14, scope: !927)
!1017 = !DILocation(line: 1719, column: 18, scope: !927)
!1018 = !DILocation(line: 1722, column: 4, scope: !928)
!1019 = !DILocation(line: 1723, column: 22, scope: !937)
!1020 = !DILocation(line: 1724, column: 39, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !937, file: !2, line: 1723, column: 36)
!1022 = !DILocation(line: 1724, column: 46, scope: !1021)
!1023 = !DILocation(line: 1724, column: 13, scope: !1021)
!1024 = !DILocation(line: 1724, column: 6, scope: !1021)
!1025 = !DILocation(line: 1726, column: 14, scope: !936)
!1026 = !DILocation(line: 1726, column: 12, scope: !937)
!1027 = !DILocation(line: 1727, column: 12, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !936, file: !2, line: 1726, column: 21)
!1029 = !DILocation(line: 1727, column: 5, scope: !1028)
!1030 = !DILocation(line: 1730, column: 8, scope: !935)
!1031 = !DILocation(line: 1733, column: 14, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !934, file: !2, line: 1730, column: 18)
!1033 = !DILocation(line: 1733, column: 7, scope: !1032)
!1034 = !DILocation(line: 1739, column: 26, scope: !933)
!1035 = !DILocation(line: 1740, column: 37, scope: !933)
!1036 = !DILocation(line: 1740, column: 40, scope: !933)
!1037 = !DILocation(line: 1741, column: 33, scope: !933)
!1038 = !DILocation(line: 1741, column: 43, scope: !933)
!1039 = !DILocation(line: 1741, column: 49, scope: !933)
!1040 = !DILocation(line: 1741, column: 76, scope: !933)
!1041 = !DILocation(line: 1741, column: 74, scope: !933)
!1042 = !DILocation(line: 1741, column: 67, scope: !933)
!1043 = !DILocation(line: 1742, column: 33, scope: !933)
!1044 = !DILocation(line: 1743, column: 29, scope: !933)
!1045 = !DILocation(line: 1744, column: 7, scope: !933)
!1046 = !DILocation(line: 1745, column: 20, scope: !933)
!1047 = !DILocation(line: 1746, column: 61, scope: !933)
!1048 = !DILocation(line: 1746, column: 59, scope: !933)
!1049 = !DILocation(line: 1746, column: 64, scope: !933)
!1050 = !DILocation(line: 1746, column: 57, scope: !933)
!1051 = !DILocation(line: 1747, column: 47, scope: !933)
!1052 = !DILocation(line: 1747, column: 54, scope: !933)
!1053 = !DILocation(line: 1746, column: 20, scope: !933)
!1054 = !DILocation(line: 1749, column: 14, scope: !933)
!1055 = !DILocation(line: 1750, column: 5, scope: !934)
!1056 = !DILocation(line: 0, scope: !931)
!1057 = !DILocation(line: 1752, column: 1, scope: !914)
!1058 = !DISubprogram(name: "gsl_sf_pow_int_e", scope: !1059, file: !1059, line: 43, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!40, !78, !40, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1063 = distinct !DISubprogram(name: "hyperg_U_negx", scope: !2, file: !2, line: 1522, type: !915, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1085, !1086, !1091, !1092}
!1065 = !DILocalVariable(name: "a", arg: 1, scope: !1063, file: !2, line: 1522, type: !92)
!1066 = !DILocalVariable(name: "b", arg: 2, scope: !1063, file: !2, line: 1522, type: !92)
!1067 = !DILocalVariable(name: "x", arg: 3, scope: !1063, file: !2, line: 1522, type: !92)
!1068 = !DILocalVariable(name: "result", arg: 4, scope: !1063, file: !2, line: 1522, type: !93)
!1069 = !DILocalVariable(name: "r1", scope: !1063, file: !2, line: 1524, type: !163)
!1070 = !DILocalVariable(name: "r2", scope: !1063, file: !2, line: 1524, type: !163)
!1071 = !DILocalVariable(name: "stat_1", scope: !1063, file: !2, line: 1525, type: !40)
!1072 = !DILocalVariable(name: "stat_2", scope: !1063, file: !2, line: 1525, type: !40)
!1073 = !DILocalVariable(name: "status", scope: !1063, file: !2, line: 1525, type: !40)
!1074 = !DILocalVariable(name: "a_int", scope: !1063, file: !2, line: 1526, type: !40)
!1075 = !DILocalVariable(name: "b_int", scope: !1063, file: !2, line: 1527, type: !40)
!1076 = !DILocalVariable(name: "T1", scope: !1063, file: !2, line: 1529, type: !78)
!1077 = !DILocalVariable(name: "T1_err", scope: !1063, file: !2, line: 1529, type: !78)
!1078 = !DILocalVariable(name: "T2", scope: !1063, file: !2, line: 1529, type: !78)
!1079 = !DILocalVariable(name: "T2_err", scope: !1063, file: !2, line: 1529, type: !78)
!1080 = !DILocalVariable(name: "Mr1", scope: !1081, file: !2, line: 1557, type: !163)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 1556, column: 9)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1555, column: 11)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1551, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 1533, column: 7)
!1085 = !DILocalVariable(name: "stat_Mr1", scope: !1081, file: !2, line: 1558, type: !40)
!1086 = !DILocalVariable(name: "Mr2", scope: !1087, file: !2, line: 1598, type: !163)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1597, column: 9)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1596, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 1584, column: 5)
!1090 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 1570, column: 7)
!1091 = !DILocalVariable(name: "stat_Mr2", scope: !1087, file: !2, line: 1599, type: !40)
!1092 = !DILocalVariable(name: "x1mb", scope: !1093, file: !2, line: 1607, type: !78)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 1606, column: 13)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1605, column: 15)
!1095 = distinct !DIAssignID()
!1096 = !DILocation(line: 0, scope: !1063)
!1097 = distinct !DIAssignID()
!1098 = distinct !DIAssignID()
!1099 = !DILocation(line: 0, scope: !1081)
!1100 = distinct !DIAssignID()
!1101 = !DILocation(line: 0, scope: !1087)
!1102 = !DILocation(line: 1524, column: 3, scope: !1063)
!1103 = !DILocation(line: 1526, column: 21, scope: !1063)
!1104 = !DILocation(line: 1526, column: 18, scope: !1063)
!1105 = !DILocation(line: 1527, column: 21, scope: !1063)
!1106 = !DILocation(line: 1527, column: 18, scope: !1063)
!1107 = !DILocation(line: 1533, column: 13, scope: !1084)
!1108 = !DILocation(line: 1533, column: 34, scope: !1084)
!1109 = !DILocation(line: 1547, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1534, column: 5)
!1111 = !DILocation(line: 1547, column: 38, scope: !1110)
!1112 = !DILocation(line: 1547, column: 42, scope: !1110)
!1113 = !DILocation(line: 1548, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 1548, column: 7)
!1115 = !DILocation(line: 1552, column: 31, scope: !1083)
!1116 = !DILocation(line: 1552, column: 33, scope: !1083)
!1117 = !DILocation(line: 1552, column: 36, scope: !1083)
!1118 = !DILocation(line: 1552, column: 16, scope: !1083)
!1119 = !DILocation(line: 1555, column: 14, scope: !1082)
!1120 = !DILocation(line: 1555, column: 18, scope: !1082)
!1121 = !DILocation(line: 1555, column: 11, scope: !1083)
!1122 = !DILocation(line: 1557, column: 11, scope: !1081)
!1123 = !DILocation(line: 1558, column: 26, scope: !1081)
!1124 = !DILocation(line: 1559, column: 20, scope: !1081)
!1125 = !DILocation(line: 1561, column: 20, scope: !1081)
!1126 = !DILocation(line: 1561, column: 29, scope: !1081)
!1127 = !DILocation(line: 1561, column: 24, scope: !1081)
!1128 = !DILocation(line: 1562, column: 44, scope: !1081)
!1129 = !DILocation(line: 1562, column: 42, scope: !1081)
!1130 = !DILocation(line: 1563, column: 24, scope: !1081)
!1131 = !DILocation(line: 1563, column: 28, scope: !1081)
!1132 = !DILocation(line: 1563, column: 15, scope: !1081)
!1133 = !DILocation(line: 1563, column: 13, scope: !1081)
!1134 = !DILocation(line: 1563, column: 58, scope: !1081)
!1135 = !DILocation(line: 1563, column: 53, scope: !1081)
!1136 = !DILocation(line: 1563, column: 40, scope: !1081)
!1137 = !DILocation(line: 1563, column: 38, scope: !1081)
!1138 = !DILocation(line: 1564, column: 9, scope: !1082)
!1139 = !DILocation(line: 1564, column: 9, scope: !1081)
!1140 = !DILocation(line: 0, scope: !1083)
!1141 = !DILocation(line: 1570, column: 13, scope: !1090)
!1142 = !DILocation(line: 1570, column: 34, scope: !1090)
!1143 = !DILocation(line: 1580, column: 19, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 1571, column: 5)
!1145 = !DILocation(line: 1580, column: 38, scope: !1144)
!1146 = !DILocation(line: 1580, column: 42, scope: !1144)
!1147 = !DILocation(line: 1581, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 1581, column: 7)
!1149 = !DILocation(line: 1585, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1585, column: 11)
!1151 = !DILocation(line: 1592, column: 36, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1591, column: 9)
!1153 = !DILocation(line: 1592, column: 20, scope: !1152)
!1154 = !DILocation(line: 1593, column: 20, scope: !1152)
!1155 = !DILocation(line: 1596, column: 14, scope: !1088)
!1156 = !DILocation(line: 1596, column: 18, scope: !1088)
!1157 = !DILocation(line: 1596, column: 11, scope: !1089)
!1158 = !DILocation(line: 1598, column: 11, scope: !1087)
!1159 = !DILocation(line: 1599, column: 55, scope: !1087)
!1160 = !DILocation(line: 1599, column: 26, scope: !1087)
!1161 = !DILocation(line: 1600, column: 21, scope: !1087)
!1162 = !DILocation(line: 1600, column: 30, scope: !1087)
!1163 = !DILocation(line: 1600, column: 25, scope: !1087)
!1164 = !DILocation(line: 1601, column: 44, scope: !1087)
!1165 = !DILocation(line: 1601, column: 42, scope: !1087)
!1166 = !DILocation(line: 1602, column: 24, scope: !1087)
!1167 = !DILocation(line: 1602, column: 28, scope: !1087)
!1168 = !DILocation(line: 1602, column: 15, scope: !1087)
!1169 = !DILocation(line: 1602, column: 13, scope: !1087)
!1170 = !DILocation(line: 1602, column: 58, scope: !1087)
!1171 = !DILocation(line: 1602, column: 53, scope: !1087)
!1172 = !DILocation(line: 1602, column: 40, scope: !1087)
!1173 = !DILocation(line: 1602, column: 38, scope: !1087)
!1174 = !DILocation(line: 1603, column: 20, scope: !1087)
!1175 = !DILocation(line: 1605, column: 18, scope: !1094)
!1176 = !DILocation(line: 1605, column: 15, scope: !1087)
!1177 = !DILocation(line: 1607, column: 37, scope: !1093)
!1178 = !DILocation(line: 1607, column: 29, scope: !1093)
!1179 = !DILocation(line: 0, scope: !1093)
!1180 = !DILocation(line: 1608, column: 25, scope: !1093)
!1181 = !DILocation(line: 1609, column: 24, scope: !1093)
!1182 = !DILocation(line: 1609, column: 35, scope: !1093)
!1183 = !DILocation(line: 1610, column: 13, scope: !1093)
!1184 = !DILocation(line: 1611, column: 9, scope: !1088)
!1185 = !DILocation(line: 1611, column: 9, scope: !1087)
!1186 = !DILocation(line: 1614, column: 21, scope: !1063)
!1187 = !DILocation(line: 1614, column: 15, scope: !1063)
!1188 = !DILocation(line: 1615, column: 41, scope: !1063)
!1189 = !DILocation(line: 1615, column: 39, scope: !1063)
!1190 = !DILocation(line: 1615, column: 69, scope: !1063)
!1191 = !DILocation(line: 1615, column: 59, scope: !1063)
!1192 = !DILocation(line: 1615, column: 11, scope: !1063)
!1193 = !DILocation(line: 1615, column: 15, scope: !1063)
!1194 = !DILocation(line: 1616, column: 11, scope: !1063)
!1195 = !DILocation(line: 1616, column: 15, scope: !1063)
!1196 = !DILocation(line: 1618, column: 3, scope: !1063)
!1197 = !DILocation(line: 1619, column: 1, scope: !1063)
!1198 = distinct !DISubprogram(name: "hyperg_U_bge1", scope: !2, file: !2, line: 1156, type: !915, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1210, !1211, !1212, !1213, !1214, !1216, !1219, !1220, !1221, !1222, !1223, !1226, !1227, !1228, !1229, !1232, !1233, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1256, !1259, !1260, !1261, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1275, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1300, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1326, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1356, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1200 = !DILocalVariable(name: "a", arg: 1, scope: !1198, file: !2, line: 1156, type: !92)
!1201 = !DILocalVariable(name: "b", arg: 2, scope: !1198, file: !2, line: 1156, type: !92)
!1202 = !DILocalVariable(name: "x", arg: 3, scope: !1198, file: !2, line: 1156, type: !92)
!1203 = !DILocalVariable(name: "result", arg: 4, scope: !1198, file: !2, line: 1157, type: !93)
!1204 = !DILocalVariable(name: "rinta", scope: !1198, file: !2, line: 1159, type: !92)
!1205 = !DILocalVariable(name: "a_neg_integer", scope: !1198, file: !2, line: 1160, type: !91)
!1206 = !DILocalVariable(name: "n", scope: !1207, file: !2, line: 1171, type: !91)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 1168, column: 51)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1168, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 1162, column: 6)
!1210 = !DILocalVariable(name: "sgn", scope: !1207, file: !2, line: 1172, type: !92)
!1211 = !DILocalVariable(name: "lnfact", scope: !1207, file: !2, line: 1173, type: !163)
!1212 = !DILocalVariable(name: "L", scope: !1207, file: !2, line: 1174, type: !163)
!1213 = !DILocalVariable(name: "stat_L", scope: !1207, file: !2, line: 1175, type: !91)
!1214 = !DILocalVariable(name: "stat_e", scope: !1215, file: !2, line: 1178, type: !91)
!1215 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1177, column: 5)
!1216 = !DILocalVariable(name: "ln_pre_val", scope: !1217, file: !2, line: 1185, type: !92)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1184, column: 33)
!1218 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 1184, column: 11)
!1219 = !DILocalVariable(name: "ln_pre_err", scope: !1217, file: !2, line: 1186, type: !92)
!1220 = !DILocalVariable(name: "asymp", scope: !1217, file: !2, line: 1187, type: !163)
!1221 = !DILocalVariable(name: "stat_asymp", scope: !1217, file: !2, line: 1188, type: !40)
!1222 = !DILocalVariable(name: "stat_e", scope: !1217, file: !2, line: 1189, type: !40)
!1223 = !DILocalVariable(name: "rU", scope: !1224, file: !2, line: 1195, type: !163)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 1194, column: 27)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1194, column: 11)
!1226 = !DILocalVariable(name: "ln_multiplier", scope: !1224, file: !2, line: 1196, type: !78)
!1227 = !DILocalVariable(name: "stat_U", scope: !1224, file: !2, line: 1197, type: !40)
!1228 = !DILocalVariable(name: "stat_e", scope: !1224, file: !2, line: 1198, type: !40)
!1229 = !DILocalVariable(name: "ser", scope: !1230, file: !2, line: 1202, type: !163)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 1201, column: 34)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 1201, column: 11)
!1232 = !DILocalVariable(name: "stat_ser", scope: !1230, file: !2, line: 1203, type: !91)
!1233 = !DILocalVariable(name: "scale_factor", scope: !1234, file: !2, line: 1212, type: !92)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 1209, column: 20)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 1209, column: 11)
!1236 = !DILocalVariable(name: "a0", scope: !1234, file: !2, line: 1213, type: !92)
!1237 = !DILocalVariable(name: "b0", scope: !1234, file: !2, line: 1214, type: !92)
!1238 = !DILocalVariable(name: "scale_count", scope: !1234, file: !2, line: 1215, type: !40)
!1239 = !DILocalVariable(name: "lm_0", scope: !1234, file: !2, line: 1216, type: !78)
!1240 = !DILocalVariable(name: "lm_1", scope: !1234, file: !2, line: 1216, type: !78)
!1241 = !DILocalVariable(name: "lm_max", scope: !1234, file: !2, line: 1217, type: !78)
!1242 = !DILocalVariable(name: "r_Uap1", scope: !1234, file: !2, line: 1218, type: !163)
!1243 = !DILocalVariable(name: "r_Ua", scope: !1234, file: !2, line: 1219, type: !163)
!1244 = !DILocalVariable(name: "stat_0", scope: !1234, file: !2, line: 1220, type: !40)
!1245 = !DILocalVariable(name: "stat_1", scope: !1234, file: !2, line: 1221, type: !40)
!1246 = !DILocalVariable(name: "stat_e", scope: !1234, file: !2, line: 1222, type: !40)
!1247 = !DILocalVariable(name: "Uap1", scope: !1234, file: !2, line: 1223, type: !78)
!1248 = !DILocalVariable(name: "Ua", scope: !1234, file: !2, line: 1224, type: !78)
!1249 = !DILocalVariable(name: "Uam1", scope: !1234, file: !2, line: 1225, type: !78)
!1250 = !DILocalVariable(name: "ap", scope: !1234, file: !2, line: 1226, type: !78)
!1251 = !DILocalVariable(name: "au0", scope: !1252, file: !2, line: 1237, type: !78)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 1237, column: 7)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 1233, column: 37)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 1233, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 1233, column: 5)
!1256 = !DILocalVariable(name: "lnscale", scope: !1257, file: !2, line: 1243, type: !92)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 1240, column: 17)
!1258 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 1240, column: 8)
!1259 = !DILocalVariable(name: "lnm", scope: !1257, file: !2, line: 1244, type: !163)
!1260 = !DILocalVariable(name: "y", scope: !1257, file: !2, line: 1245, type: !163)
!1261 = !DILocalVariable(name: "err_mult", scope: !1262, file: !2, line: 1259, type: !92)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 1256, column: 10)
!1263 = !DILocalVariable(name: "lnscale", scope: !1262, file: !2, line: 1260, type: !92)
!1264 = !DILocalVariable(name: "lnm", scope: !1262, file: !2, line: 1261, type: !163)
!1265 = !DILocalVariable(name: "y", scope: !1262, file: !2, line: 1262, type: !163)
!1266 = !DILocalVariable(name: "Ubm1", scope: !1262, file: !2, line: 1264, type: !78)
!1267 = !DILocalVariable(name: "Ub", scope: !1262, file: !2, line: 1265, type: !78)
!1268 = !DILocalVariable(name: "Ubp1", scope: !1262, file: !2, line: 1266, type: !78)
!1269 = !DILocalVariable(name: "bp", scope: !1262, file: !2, line: 1267, type: !78)
!1270 = !DILocalVariable(name: "au0", scope: !1271, file: !2, line: 1272, type: !78)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 1272, column: 9)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 1268, column: 43)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 1268, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 1268, column: 7)
!1275 = !DILocalVariable(name: "scale_count", scope: !1276, file: !2, line: 1294, type: !40)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 1287, column: 25)
!1277 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 1287, column: 11)
!1278 = !DILocalVariable(name: "a0", scope: !1276, file: !2, line: 1295, type: !92)
!1279 = !DILocalVariable(name: "scale_factor", scope: !1276, file: !2, line: 1296, type: !92)
!1280 = !DILocalVariable(name: "lnscale", scope: !1276, file: !2, line: 1297, type: !78)
!1281 = !DILocalVariable(name: "lm_0", scope: !1276, file: !2, line: 1298, type: !78)
!1282 = !DILocalVariable(name: "lm_1", scope: !1276, file: !2, line: 1298, type: !78)
!1283 = !DILocalVariable(name: "lm_max", scope: !1276, file: !2, line: 1298, type: !78)
!1284 = !DILocalVariable(name: "r_Uam1", scope: !1276, file: !2, line: 1299, type: !163)
!1285 = !DILocalVariable(name: "r_Ua", scope: !1276, file: !2, line: 1300, type: !163)
!1286 = !DILocalVariable(name: "stat_0", scope: !1276, file: !2, line: 1301, type: !40)
!1287 = !DILocalVariable(name: "stat_1", scope: !1276, file: !2, line: 1302, type: !40)
!1288 = !DILocalVariable(name: "stat_e", scope: !1276, file: !2, line: 1303, type: !40)
!1289 = !DILocalVariable(name: "lnm", scope: !1276, file: !2, line: 1304, type: !163)
!1290 = !DILocalVariable(name: "y", scope: !1276, file: !2, line: 1305, type: !163)
!1291 = !DILocalVariable(name: "Uam1", scope: !1276, file: !2, line: 1306, type: !78)
!1292 = !DILocalVariable(name: "Ua", scope: !1276, file: !2, line: 1307, type: !78)
!1293 = !DILocalVariable(name: "Uap1", scope: !1276, file: !2, line: 1308, type: !78)
!1294 = !DILocalVariable(name: "ap", scope: !1276, file: !2, line: 1309, type: !78)
!1295 = !DILocalVariable(name: "au0", scope: !1296, file: !2, line: 1318, type: !78)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 1318, column: 7)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 1314, column: 37)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 1314, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 1314, column: 5)
!1300 = !DILocalVariable(name: "a0", scope: !1301, file: !2, line: 1337, type: !92)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 1334, column: 16)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 1334, column: 8)
!1303 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 1333, column: 8)
!1304 = !DILocalVariable(name: "scale_factor", scope: !1301, file: !2, line: 1338, type: !92)
!1305 = !DILocalVariable(name: "scale_count", scope: !1301, file: !2, line: 1339, type: !40)
!1306 = !DILocalVariable(name: "lnm", scope: !1301, file: !2, line: 1340, type: !163)
!1307 = !DILocalVariable(name: "y", scope: !1301, file: !2, line: 1341, type: !163)
!1308 = !DILocalVariable(name: "lnscale", scope: !1301, file: !2, line: 1342, type: !78)
!1309 = !DILocalVariable(name: "lm_0", scope: !1301, file: !2, line: 1343, type: !78)
!1310 = !DILocalVariable(name: "Uap1", scope: !1301, file: !2, line: 1344, type: !78)
!1311 = !DILocalVariable(name: "Ua", scope: !1301, file: !2, line: 1345, type: !78)
!1312 = !DILocalVariable(name: "Uam1", scope: !1301, file: !2, line: 1346, type: !78)
!1313 = !DILocalVariable(name: "U0", scope: !1301, file: !2, line: 1347, type: !163)
!1314 = !DILocalVariable(name: "ap", scope: !1301, file: !2, line: 1348, type: !78)
!1315 = !DILocalVariable(name: "ru", scope: !1301, file: !2, line: 1349, type: !78)
!1316 = !DILocalVariable(name: "r", scope: !1301, file: !2, line: 1350, type: !78)
!1317 = !DILocalVariable(name: "CF1_count", scope: !1301, file: !2, line: 1351, type: !40)
!1318 = !DILocalVariable(name: "stat_CF1", scope: !1301, file: !2, line: 1352, type: !40)
!1319 = !DILocalVariable(name: "stat_U0", scope: !1301, file: !2, line: 1353, type: !40)
!1320 = !DILocalVariable(name: "stat_e", scope: !1301, file: !2, line: 1354, type: !40)
!1321 = !DILocalVariable(name: "au0", scope: !1322, file: !2, line: 1362, type: !78)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 1362, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 1358, column: 39)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 1358, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 1358, column: 7)
!1326 = !DILocalVariable(name: "scale_count_for", scope: !1327, file: !2, line: 1380, type: !40)
!1327 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 1376, column: 10)
!1328 = !DILocalVariable(name: "scale_count_bck", scope: !1327, file: !2, line: 1381, type: !40)
!1329 = !DILocalVariable(name: "scale_factor", scope: !1327, file: !2, line: 1382, type: !92)
!1330 = !DILocalVariable(name: "eps", scope: !1327, file: !2, line: 1383, type: !92)
!1331 = !DILocalVariable(name: "a0", scope: !1327, file: !2, line: 1384, type: !92)
!1332 = !DILocalVariable(name: "a1", scope: !1327, file: !2, line: 1385, type: !92)
!1333 = !DILocalVariable(name: "lnm", scope: !1327, file: !2, line: 1386, type: !163)
!1334 = !DILocalVariable(name: "y", scope: !1327, file: !2, line: 1387, type: !163)
!1335 = !DILocalVariable(name: "lm_for", scope: !1327, file: !2, line: 1388, type: !78)
!1336 = !DILocalVariable(name: "lnscale", scope: !1327, file: !2, line: 1389, type: !78)
!1337 = !DILocalVariable(name: "Ua1_bck", scope: !1327, file: !2, line: 1390, type: !78)
!1338 = !DILocalVariable(name: "Ua1_for", scope: !1327, file: !2, line: 1391, type: !78)
!1339 = !DILocalVariable(name: "stat_for", scope: !1327, file: !2, line: 1392, type: !40)
!1340 = !DILocalVariable(name: "stat_bck", scope: !1327, file: !2, line: 1393, type: !40)
!1341 = !DILocalVariable(name: "stat_e", scope: !1327, file: !2, line: 1394, type: !40)
!1342 = !DILocalVariable(name: "CF1_count", scope: !1327, file: !2, line: 1395, type: !40)
!1343 = !DILocalVariable(name: "Uap1", scope: !1344, file: !2, line: 1400, type: !78)
!1344 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 1397, column: 7)
!1345 = !DILocalVariable(name: "Ua", scope: !1344, file: !2, line: 1401, type: !78)
!1346 = !DILocalVariable(name: "Uam1", scope: !1344, file: !2, line: 1402, type: !78)
!1347 = !DILocalVariable(name: "ap", scope: !1344, file: !2, line: 1403, type: !78)
!1348 = !DILocalVariable(name: "ru", scope: !1344, file: !2, line: 1404, type: !78)
!1349 = !DILocalVariable(name: "r", scope: !1344, file: !2, line: 1405, type: !78)
!1350 = !DILocalVariable(name: "stat_CF1", scope: !1344, file: !2, line: 1406, type: !40)
!1351 = !DILocalVariable(name: "au0", scope: !1352, file: !2, line: 1414, type: !78)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 1414, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 1410, column: 41)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 1410, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 1410, column: 9)
!1356 = !DILocalVariable(name: "r_Uam1", scope: !1357, file: !2, line: 1423, type: !163)
!1357 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 1419, column: 7)
!1358 = !DILocalVariable(name: "r_Ua", scope: !1357, file: !2, line: 1424, type: !163)
!1359 = !DILocalVariable(name: "lm_0", scope: !1357, file: !2, line: 1425, type: !78)
!1360 = !DILocalVariable(name: "lm_1", scope: !1357, file: !2, line: 1425, type: !78)
!1361 = !DILocalVariable(name: "stat_0", scope: !1357, file: !2, line: 1426, type: !40)
!1362 = !DILocalVariable(name: "stat_1", scope: !1357, file: !2, line: 1427, type: !40)
!1363 = !DILocalVariable(name: "Uam1", scope: !1357, file: !2, line: 1428, type: !78)
!1364 = !DILocalVariable(name: "Ua", scope: !1357, file: !2, line: 1429, type: !78)
!1365 = !DILocalVariable(name: "Uap1", scope: !1357, file: !2, line: 1430, type: !78)
!1366 = !DILocalVariable(name: "ap", scope: !1357, file: !2, line: 1431, type: !78)
!1367 = !DILocalVariable(name: "au0", scope: !1368, file: !2, line: 1441, type: !78)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 1441, column: 11)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 1437, column: 42)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 1437, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 1437, column: 9)
!1372 = distinct !DIAssignID()
!1373 = !DILocation(line: 0, scope: !1207)
!1374 = distinct !DIAssignID()
!1375 = distinct !DIAssignID()
!1376 = !DILocation(line: 0, scope: !1217)
!1377 = distinct !DIAssignID()
!1378 = !DILocation(line: 0, scope: !1224)
!1379 = distinct !DIAssignID()
!1380 = distinct !DIAssignID()
!1381 = !DILocation(line: 0, scope: !1230)
!1382 = distinct !DIAssignID()
!1383 = !DILocation(line: 0, scope: !1234)
!1384 = distinct !DIAssignID()
!1385 = distinct !DIAssignID()
!1386 = distinct !DIAssignID()
!1387 = distinct !DIAssignID()
!1388 = !DILocation(line: 0, scope: !1276)
!1389 = distinct !DIAssignID()
!1390 = distinct !DIAssignID()
!1391 = distinct !DIAssignID()
!1392 = distinct !DIAssignID()
!1393 = !DILocation(line: 0, scope: !1301)
!1394 = distinct !DIAssignID()
!1395 = distinct !DIAssignID()
!1396 = distinct !DIAssignID()
!1397 = distinct !DIAssignID()
!1398 = !DILocation(line: 0, scope: !1327)
!1399 = distinct !DIAssignID()
!1400 = !DILocation(line: 0, scope: !1344)
!1401 = distinct !DIAssignID()
!1402 = !DILocation(line: 0, scope: !1357)
!1403 = distinct !DIAssignID()
!1404 = distinct !DIAssignID()
!1405 = distinct !DIAssignID()
!1406 = !DILocation(line: 0, scope: !1198)
!1407 = !DILocation(line: 1159, column: 31, scope: !1198)
!1408 = !DILocation(line: 1159, column: 24, scope: !1198)
!1409 = !DILocation(line: 1160, column: 32, scope: !1198)
!1410 = !DILocation(line: 1162, column: 8, scope: !1209)
!1411 = !DILocation(line: 1162, column: 6, scope: !1198)
!1412 = !DILocation(line: 1163, column: 17, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1162, column: 16)
!1414 = !DILocation(line: 1164, column: 13, scope: !1413)
!1415 = !DILocation(line: 1164, column: 17, scope: !1413)
!1416 = !DILocation(line: 1165, column: 13, scope: !1413)
!1417 = !DILocation(line: 1165, column: 17, scope: !1413)
!1418 = !DILocation(line: 1166, column: 5, scope: !1413)
!1419 = !DILocation(line: 1160, column: 38, scope: !1198)
!1420 = !DILocation(line: 1168, column: 25, scope: !1208)
!1421 = !DILocation(line: 1171, column: 20, scope: !1207)
!1422 = !DILocation(line: 1171, column: 19, scope: !1207)
!1423 = !DILocation(line: 1172, column: 25, scope: !1207)
!1424 = !DILocation(line: 1173, column: 5, scope: !1207)
!1425 = !DILocation(line: 1174, column: 5, scope: !1207)
!1426 = !DILocation(line: 1175, column: 48, scope: !1207)
!1427 = !DILocation(line: 1175, column: 24, scope: !1207)
!1428 = !DILocation(line: 1176, column: 5, scope: !1207)
!1429 = !DILocation(line: 1178, column: 59, scope: !1215)
!1430 = !DILocation(line: 1178, column: 71, scope: !1215)
!1431 = !DILocation(line: 1179, column: 61, scope: !1215)
!1432 = !DILocation(line: 1179, column: 58, scope: !1215)
!1433 = !DILocation(line: 1179, column: 68, scope: !1215)
!1434 = !DILocation(line: 1178, column: 26, scope: !1215)
!1435 = !DILocation(line: 0, scope: !1215)
!1436 = !DILocation(line: 1181, column: 14, scope: !1215)
!1437 = !DILocation(line: 1183, column: 3, scope: !1208)
!1438 = !DILocation(line: 1184, column: 11, scope: !1218)
!1439 = !DILocation(line: 0, scope: !481, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 1184, column: 11, scope: !1218)
!1441 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !1440)
!1442 = !DILocation(line: 0, scope: !481, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1184, column: 11, scope: !1218)
!1444 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !1443)
!1445 = !DILocation(line: 1184, column: 11, scope: !1208)
!1446 = !DILocation(line: 1185, column: 31, scope: !1217)
!1447 = !DILocation(line: 1185, column: 34, scope: !1217)
!1448 = !DILocation(line: 1185, column: 33, scope: !1217)
!1449 = !DILocation(line: 1186, column: 55, scope: !1217)
!1450 = !DILocation(line: 1186, column: 53, scope: !1217)
!1451 = !DILocation(line: 1187, column: 5, scope: !1217)
!1452 = !DILocation(line: 1188, column: 22, scope: !1217)
!1453 = !DILocation(line: 1190, column: 53, scope: !1217)
!1454 = !DILocation(line: 1190, column: 64, scope: !1217)
!1455 = !DILocation(line: 1189, column: 18, scope: !1217)
!1456 = !DILocation(line: 1192, column: 12, scope: !1217)
!1457 = !DILocation(line: 1193, column: 3, scope: !1218)
!1458 = !DILocation(line: 1194, column: 19, scope: !1225)
!1459 = !DILocation(line: 1194, column: 11, scope: !1218)
!1460 = !DILocation(line: 1195, column: 5, scope: !1224)
!1461 = !DILocation(line: 1196, column: 5, scope: !1224)
!1462 = !DILocation(line: 1197, column: 18, scope: !1224)
!1463 = !DILocation(line: 1198, column: 44, scope: !1224)
!1464 = !DILocation(line: 1198, column: 79, scope: !1224)
!1465 = !DILocation(line: 1198, column: 78, scope: !1224)
!1466 = !DILocation(line: 1198, column: 103, scope: !1224)
!1467 = !DILocation(line: 1198, column: 111, scope: !1224)
!1468 = !DILocation(line: 1198, column: 18, scope: !1224)
!1469 = !DILocation(line: 1199, column: 12, scope: !1224)
!1470 = !DILocation(line: 1200, column: 3, scope: !1225)
!1471 = !DILocation(line: 1201, column: 11, scope: !1231)
!1472 = !DILocation(line: 1202, column: 5, scope: !1230)
!1473 = !DILocation(line: 1203, column: 26, scope: !1230)
!1474 = !DILocation(line: 1204, column: 23, scope: !1230)
!1475 = !DILocation(line: 1204, column: 17, scope: !1230)
!1476 = !DILocation(line: 1205, column: 23, scope: !1230)
!1477 = !DILocation(line: 1205, column: 13, scope: !1230)
!1478 = !DILocation(line: 1205, column: 17, scope: !1230)
!1479 = !DILocation(line: 1206, column: 13, scope: !1230)
!1480 = !DILocation(line: 1206, column: 17, scope: !1230)
!1481 = !DILocation(line: 1208, column: 3, scope: !1231)
!1482 = !DILocation(line: 1209, column: 11, scope: !1231)
!1483 = !DILocation(line: 1213, column: 27, scope: !1234)
!1484 = !DILocation(line: 1213, column: 25, scope: !1234)
!1485 = !DILocation(line: 1213, column: 36, scope: !1234)
!1486 = !DILocation(line: 1214, column: 27, scope: !1234)
!1487 = !DILocation(line: 1214, column: 25, scope: !1234)
!1488 = !DILocation(line: 1214, column: 36, scope: !1234)
!1489 = !DILocation(line: 1216, column: 5, scope: !1234)
!1490 = !DILocation(line: 1218, column: 5, scope: !1234)
!1491 = !DILocation(line: 1219, column: 5, scope: !1234)
!1492 = !DILocation(line: 1220, column: 42, scope: !1234)
!1493 = !DILocation(line: 1220, column: 18, scope: !1234)
!1494 = !DILocation(line: 1221, column: 18, scope: !1234)
!1495 = !DILocation(line: 1223, column: 26, scope: !1234)
!1496 = !DILocation(line: 1224, column: 24, scope: !1234)
!1497 = !DILocation(line: 1227, column: 14, scope: !1234)
!1498 = !DILocation(line: 1228, column: 21, scope: !1234)
!1499 = !DILocation(line: 1228, column: 13, scope: !1234)
!1500 = !DILocation(line: 1228, column: 10, scope: !1234)
!1501 = !DILocation(line: 1229, column: 17, scope: !1234)
!1502 = !DILocation(line: 1229, column: 21, scope: !1234)
!1503 = !DILocation(line: 1229, column: 13, scope: !1234)
!1504 = !DILocation(line: 1229, column: 10, scope: !1234)
!1505 = !DILocation(line: 1233, column: 18, scope: !1254)
!1506 = !DILocation(line: 1233, column: 5, scope: !1255)
!1507 = !DILocation(line: 1234, column: 20, scope: !1253)
!1508 = !DILocation(line: 1234, column: 23, scope: !1253)
!1509 = !DILocation(line: 1234, column: 16, scope: !1253)
!1510 = !DILocation(line: 1234, column: 28, scope: !1253)
!1511 = !DILocation(line: 1234, column: 42, scope: !1253)
!1512 = !DILocation(line: 1234, column: 38, scope: !1253)
!1513 = !DILocation(line: 1234, column: 45, scope: !1253)
!1514 = !DILocation(line: 1234, column: 49, scope: !1253)
!1515 = !DILocation(line: 1234, column: 34, scope: !1253)
!1516 = !DILocation(line: 1237, column: 7, scope: !1252)
!1517 = !DILocation(line: 0, scope: !1252)
!1518 = !DILocation(line: 1237, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 1237, column: 7)
!1520 = !DILocation(line: 1237, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 1237, column: 7)
!1522 = !DILocation(line: 1237, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 1237, column: 7)
!1524 = !DILocation(line: 1237, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 1237, column: 7)
!1526 = !DILocation(line: 0, scope: !1253)
!1527 = !DILocation(line: 1233, column: 29, scope: !1254)
!1528 = distinct !{!1528, !1506, !1529, !552}
!1529 = !DILocation(line: 1238, column: 5, scope: !1255)
!1530 = !DILocation(line: 1240, column: 10, scope: !1258)
!1531 = !DILocation(line: 1240, column: 8, scope: !1234)
!1532 = !DILocation(line: 0, scope: !1257)
!1533 = !DILocation(line: 1246, column: 26, scope: !1257)
!1534 = !DILocation(line: 1246, column: 38, scope: !1257)
!1535 = !DILocation(line: 1246, column: 24, scope: !1257)
!1536 = !DILocation(line: 1247, column: 42, scope: !1257)
!1537 = !DILocation(line: 1247, column: 55, scope: !1257)
!1538 = !DILocation(line: 1247, column: 39, scope: !1257)
!1539 = !DILocation(line: 1249, column: 28, scope: !1257)
!1540 = !DILocation(line: 1249, column: 39, scope: !1257)
!1541 = !DILocation(line: 1249, column: 31, scope: !1257)
!1542 = !DILocation(line: 1249, column: 46, scope: !1257)
!1543 = !DILocation(line: 1249, column: 44, scope: !1257)
!1544 = !DILocation(line: 1250, column: 26, scope: !1257)
!1545 = !DILocation(line: 1250, column: 35, scope: !1257)
!1546 = !DILocation(line: 1250, column: 29, scope: !1257)
!1547 = !DILocation(line: 1250, column: 40, scope: !1257)
!1548 = !DILocation(line: 1250, column: 13, scope: !1257)
!1549 = !DILocation(line: 1251, column: 47, scope: !1257)
!1550 = !DILocation(line: 1251, column: 41, scope: !1257)
!1551 = !DILocation(line: 1251, column: 52, scope: !1257)
!1552 = !DILocation(line: 1251, column: 38, scope: !1257)
!1553 = !DILocation(line: 1251, column: 59, scope: !1257)
!1554 = !DILocation(line: 1251, column: 13, scope: !1257)
!1555 = !DILocation(line: 1252, column: 21, scope: !1257)
!1556 = !DILocation(line: 1252, column: 25, scope: !1257)
!1557 = !DILocation(line: 1252, column: 16, scope: !1257)
!1558 = !DILocation(line: 1252, column: 34, scope: !1257)
!1559 = !DILocation(line: 1252, column: 13, scope: !1257)
!1560 = !DILocation(line: 1253, column: 21, scope: !1257)
!1561 = !DILocation(line: 1253, column: 25, scope: !1257)
!1562 = !DILocation(line: 1253, column: 16, scope: !1257)
!1563 = !DILocation(line: 1253, column: 34, scope: !1257)
!1564 = !DILocation(line: 1253, column: 13, scope: !1257)
!1565 = !DILocation(line: 1254, column: 16, scope: !1257)
!1566 = !DILocation(line: 1255, column: 5, scope: !1257)
!1567 = !DILocation(line: 1259, column: 37, scope: !1262)
!1568 = !DILocation(line: 1259, column: 31, scope: !1262)
!1569 = !DILocation(line: 1259, column: 50, scope: !1262)
!1570 = !DILocation(line: 1259, column: 44, scope: !1262)
!1571 = !DILocation(line: 1259, column: 42, scope: !1262)
!1572 = !DILocation(line: 1259, column: 55, scope: !1262)
!1573 = !DILocation(line: 0, scope: !1262)
!1574 = !DILocation(line: 1265, column: 27, scope: !1262)
!1575 = !DILocation(line: 1265, column: 29, scope: !1262)
!1576 = !DILocation(line: 1265, column: 23, scope: !1262)
!1577 = !DILocation(line: 1265, column: 34, scope: !1262)
!1578 = !DILocation(line: 1265, column: 44, scope: !1262)
!1579 = !DILocation(line: 1265, column: 47, scope: !1262)
!1580 = !DILocation(line: 1265, column: 40, scope: !1262)
!1581 = !DILocation(line: 1265, column: 51, scope: !1262)
!1582 = !DILocation(line: 1268, scope: !1274)
!1583 = !DILocation(line: 1268, column: 24, scope: !1273)
!1584 = !DILocation(line: 1268, column: 7, scope: !1274)
!1585 = !DILocation(line: 1269, column: 23, scope: !1272)
!1586 = !DILocation(line: 1269, column: 27, scope: !1272)
!1587 = !DILocation(line: 1269, column: 38, scope: !1272)
!1588 = !DILocation(line: 1269, column: 40, scope: !1272)
!1589 = !DILocation(line: 1269, column: 45, scope: !1272)
!1590 = !DILocation(line: 1269, column: 33, scope: !1272)
!1591 = !DILocation(line: 1269, column: 49, scope: !1272)
!1592 = !DILocation(line: 1272, column: 9, scope: !1271)
!1593 = !DILocation(line: 0, scope: !1271)
!1594 = !DILocation(line: 1272, column: 9, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 1272, column: 9)
!1596 = !DILocation(line: 1272, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 1272, column: 9)
!1598 = !DILocation(line: 1272, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 1272, column: 9)
!1600 = !DILocation(line: 1272, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 1272, column: 9)
!1602 = !DILocation(line: 0, scope: !1272)
!1603 = distinct !{!1603, !1584, !1604, !552}
!1604 = !DILocation(line: 1273, column: 7, scope: !1274)
!1605 = !DILocation(line: 1275, column: 26, scope: !1262)
!1606 = !DILocation(line: 1275, column: 38, scope: !1262)
!1607 = !DILocation(line: 1275, column: 24, scope: !1262)
!1608 = !DILocation(line: 1276, column: 42, scope: !1262)
!1609 = !DILocation(line: 1276, column: 57, scope: !1262)
!1610 = !DILocation(line: 1276, column: 55, scope: !1262)
!1611 = !DILocation(line: 1276, column: 39, scope: !1262)
!1612 = !DILocation(line: 1278, column: 20, scope: !1262)
!1613 = !DILocation(line: 1278, column: 45, scope: !1262)
!1614 = !DILocation(line: 1278, column: 56, scope: !1262)
!1615 = !DILocation(line: 1278, column: 48, scope: !1262)
!1616 = !DILocation(line: 1278, column: 33, scope: !1262)
!1617 = !DILocation(line: 1278, column: 31, scope: !1262)
!1618 = !DILocation(line: 1278, column: 63, scope: !1262)
!1619 = !DILocation(line: 1278, column: 61, scope: !1262)
!1620 = !DILocation(line: 1279, column: 43, scope: !1262)
!1621 = !DILocation(line: 1279, column: 52, scope: !1262)
!1622 = !DILocation(line: 1279, column: 46, scope: !1262)
!1623 = !DILocation(line: 1279, column: 33, scope: !1262)
!1624 = !DILocation(line: 1279, column: 31, scope: !1262)
!1625 = !DILocation(line: 1279, column: 57, scope: !1262)
!1626 = !DILocation(line: 1279, column: 13, scope: !1262)
!1627 = !DILocation(line: 1280, column: 38, scope: !1262)
!1628 = !DILocation(line: 1280, column: 49, scope: !1262)
!1629 = !DILocation(line: 1280, column: 13, scope: !1262)
!1630 = !DILocation(line: 1281, column: 21, scope: !1262)
!1631 = !DILocation(line: 1281, column: 25, scope: !1262)
!1632 = !DILocation(line: 1281, column: 16, scope: !1262)
!1633 = !DILocation(line: 1281, column: 34, scope: !1262)
!1634 = !DILocation(line: 1281, column: 13, scope: !1262)
!1635 = !DILocation(line: 1282, column: 21, scope: !1262)
!1636 = !DILocation(line: 1282, column: 25, scope: !1262)
!1637 = !DILocation(line: 1282, column: 16, scope: !1262)
!1638 = !DILocation(line: 1282, column: 34, scope: !1262)
!1639 = !DILocation(line: 1282, column: 13, scope: !1262)
!1640 = !DILocation(line: 1283, column: 16, scope: !1262)
!1641 = !DILocation(line: 0, scope: !1258)
!1642 = !DILocation(line: 1285, column: 12, scope: !1234)
!1643 = !DILocation(line: 1286, column: 3, scope: !1235)
!1644 = !DILocation(line: 1287, column: 17, scope: !1277)
!1645 = !DILocation(line: 1287, column: 20, scope: !1277)
!1646 = !DILocation(line: 1287, column: 13, scope: !1277)
!1647 = !DILocation(line: 1287, column: 11, scope: !1235)
!1648 = !DILocation(line: 1295, column: 27, scope: !1276)
!1649 = !DILocation(line: 1295, column: 25, scope: !1276)
!1650 = !DILocation(line: 1298, column: 5, scope: !1276)
!1651 = !DILocation(line: 1299, column: 5, scope: !1276)
!1652 = !DILocation(line: 1300, column: 5, scope: !1276)
!1653 = !DILocation(line: 1301, column: 42, scope: !1276)
!1654 = !DILocation(line: 1301, column: 18, scope: !1276)
!1655 = !DILocation(line: 1302, column: 18, scope: !1276)
!1656 = !DILocation(line: 1306, column: 26, scope: !1276)
!1657 = !DILocation(line: 1307, column: 24, scope: !1276)
!1658 = !DILocation(line: 1310, column: 14, scope: !1276)
!1659 = !DILocation(line: 1311, column: 21, scope: !1276)
!1660 = !DILocation(line: 1311, column: 13, scope: !1276)
!1661 = !DILocation(line: 1312, column: 17, scope: !1276)
!1662 = !DILocation(line: 1312, column: 21, scope: !1276)
!1663 = !DILocation(line: 1312, column: 13, scope: !1276)
!1664 = !DILocation(line: 1312, column: 10, scope: !1276)
!1665 = !DILocation(line: 1314, column: 18, scope: !1298)
!1666 = !DILocation(line: 1314, column: 5, scope: !1299)
!1667 = !DILocation(line: 1311, column: 10, scope: !1276)
!1668 = !DILocation(line: 1315, column: 29, scope: !1297)
!1669 = !DILocation(line: 1315, column: 25, scope: !1297)
!1670 = !DILocation(line: 1315, column: 32, scope: !1297)
!1671 = !DILocation(line: 1315, column: 35, scope: !1297)
!1672 = !DILocation(line: 1315, column: 21, scope: !1297)
!1673 = !DILocation(line: 1315, column: 14, scope: !1297)
!1674 = !DILocation(line: 1315, column: 48, scope: !1297)
!1675 = !DILocation(line: 1315, column: 51, scope: !1297)
!1676 = !DILocation(line: 1315, column: 43, scope: !1297)
!1677 = !DILocation(line: 1315, column: 39, scope: !1297)
!1678 = !DILocation(line: 1318, column: 7, scope: !1296)
!1679 = !DILocation(line: 0, scope: !1296)
!1680 = !DILocation(line: 1318, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 1318, column: 7)
!1682 = !DILocation(line: 1318, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 1318, column: 7)
!1684 = !DILocation(line: 1318, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 1318, column: 7)
!1686 = !DILocation(line: 1318, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 1318, column: 7)
!1688 = !DILocation(line: 0, scope: !1297)
!1689 = distinct !{!1689, !1666, !1690, !552}
!1690 = !DILocation(line: 1319, column: 5, scope: !1299)
!1691 = !DILocation(line: 1322, column: 24, scope: !1276)
!1692 = !DILocation(line: 1322, column: 36, scope: !1276)
!1693 = !DILocation(line: 1322, column: 22, scope: !1276)
!1694 = !DILocation(line: 1323, column: 40, scope: !1276)
!1695 = !DILocation(line: 1323, column: 55, scope: !1276)
!1696 = !DILocation(line: 1323, column: 53, scope: !1276)
!1697 = !DILocation(line: 1323, column: 37, scope: !1276)
!1698 = !DILocation(line: 1325, column: 26, scope: !1276)
!1699 = !DILocation(line: 1325, column: 37, scope: !1276)
!1700 = !DILocation(line: 1325, column: 29, scope: !1276)
!1701 = !DILocation(line: 1325, column: 44, scope: !1276)
!1702 = !DILocation(line: 1325, column: 42, scope: !1276)
!1703 = !DILocation(line: 1326, column: 24, scope: !1276)
!1704 = !DILocation(line: 1326, column: 33, scope: !1276)
!1705 = !DILocation(line: 1326, column: 27, scope: !1276)
!1706 = !DILocation(line: 1326, column: 38, scope: !1276)
!1707 = !DILocation(line: 1326, column: 11, scope: !1276)
!1708 = !DILocation(line: 1327, column: 45, scope: !1276)
!1709 = !DILocation(line: 1327, column: 39, scope: !1276)
!1710 = !DILocation(line: 1327, column: 50, scope: !1276)
!1711 = !DILocation(line: 1327, column: 36, scope: !1276)
!1712 = !DILocation(line: 1327, column: 57, scope: !1276)
!1713 = !DILocation(line: 1327, column: 11, scope: !1276)
!1714 = !DILocation(line: 1328, column: 19, scope: !1276)
!1715 = !DILocation(line: 1328, column: 23, scope: !1276)
!1716 = !DILocation(line: 1328, column: 14, scope: !1276)
!1717 = !DILocation(line: 1328, column: 32, scope: !1276)
!1718 = !DILocation(line: 1328, column: 11, scope: !1276)
!1719 = !DILocation(line: 1329, column: 19, scope: !1276)
!1720 = !DILocation(line: 1329, column: 23, scope: !1276)
!1721 = !DILocation(line: 1329, column: 14, scope: !1276)
!1722 = !DILocation(line: 1329, column: 32, scope: !1276)
!1723 = !DILocation(line: 1329, column: 11, scope: !1276)
!1724 = !DILocation(line: 1330, column: 14, scope: !1276)
!1725 = !DILocation(line: 1331, column: 12, scope: !1276)
!1726 = !DILocation(line: 1332, column: 3, scope: !1277)
!1727 = !DILocation(line: 1334, column: 10, scope: !1302)
!1728 = !DILocation(line: 0, scope: !1302)
!1729 = !DILocation(line: 1334, column: 8, scope: !1303)
!1730 = !DILocation(line: 1343, column: 7, scope: !1301)
!1731 = !DILocation(line: 1347, column: 7, scope: !1301)
!1732 = !DILocation(line: 1349, column: 7, scope: !1301)
!1733 = !DILocation(line: 1351, column: 7, scope: !1301)
!1734 = !DILocation(line: 1352, column: 22, scope: !1301)
!1735 = !DILocation(line: 1358, column: 19, scope: !1324)
!1736 = !DILocation(line: 1358, column: 7, scope: !1325)
!1737 = !DILocation(line: 1355, column: 11, scope: !1301)
!1738 = !DILocation(line: 1355, column: 13, scope: !1301)
!1739 = !DILocation(line: 1357, column: 16, scope: !1301)
!1740 = !DILocation(line: 1359, column: 24, scope: !1323)
!1741 = !DILocation(line: 1359, column: 20, scope: !1323)
!1742 = !DILocation(line: 1359, column: 27, scope: !1323)
!1743 = !DILocation(line: 1359, column: 30, scope: !1323)
!1744 = !DILocation(line: 1359, column: 43, scope: !1323)
!1745 = !DILocation(line: 1359, column: 46, scope: !1323)
!1746 = !DILocation(line: 1359, column: 38, scope: !1323)
!1747 = !DILocation(line: 1359, column: 49, scope: !1323)
!1748 = !DILocation(line: 1359, column: 34, scope: !1323)
!1749 = !DILocation(line: 1359, column: 16, scope: !1323)
!1750 = !DILocation(line: 1362, column: 9, scope: !1322)
!1751 = !DILocation(line: 0, scope: !1322)
!1752 = !DILocation(line: 1362, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 1362, column: 9)
!1754 = !DILocation(line: 1362, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 1362, column: 9)
!1756 = !DILocation(line: 1362, column: 9, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 1362, column: 9)
!1758 = !DILocation(line: 1362, column: 9, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 1362, column: 9)
!1760 = !DILocation(line: 0, scope: !1323)
!1761 = !DILocation(line: 1358, column: 31, scope: !1324)
!1762 = distinct !{!1762, !1736, !1763, !552}
!1763 = !DILocation(line: 1363, column: 7, scope: !1325)
!1764 = !DILocation(line: 1368, column: 24, scope: !1301)
!1765 = !DILocation(line: 1368, column: 36, scope: !1301)
!1766 = !DILocation(line: 1365, column: 17, scope: !1301)
!1767 = !DILocation(line: 1368, column: 17, scope: !1301)
!1768 = !DILocation(line: 1368, column: 22, scope: !1301)
!1769 = !DILocation(line: 1369, column: 42, scope: !1301)
!1770 = !DILocation(line: 1369, column: 55, scope: !1301)
!1771 = !DILocation(line: 1369, column: 53, scope: !1301)
!1772 = !DILocation(line: 1369, column: 39, scope: !1301)
!1773 = !DILocation(line: 1370, column: 37, scope: !1301)
!1774 = !DILocation(line: 1370, column: 40, scope: !1301)
!1775 = !DILocation(line: 1370, column: 32, scope: !1301)
!1776 = !DILocation(line: 1371, column: 37, scope: !1301)
!1777 = !DILocation(line: 1371, column: 41, scope: !1301)
!1778 = !DILocation(line: 1371, column: 40, scope: !1301)
!1779 = !DILocation(line: 1371, column: 32, scope: !1301)
!1780 = !DILocation(line: 1372, column: 48, scope: !1301)
!1781 = !DILocation(line: 1372, column: 41, scope: !1301)
!1782 = !DILocation(line: 1372, column: 54, scope: !1301)
!1783 = !DILocation(line: 1372, column: 52, scope: !1301)
!1784 = !DILocation(line: 1372, column: 64, scope: !1301)
!1785 = !DILocation(line: 1372, column: 38, scope: !1301)
!1786 = !DILocation(line: 1372, column: 73, scope: !1301)
!1787 = !DILocation(line: 1372, column: 71, scope: !1301)
!1788 = !DILocation(line: 1372, column: 13, scope: !1301)
!1789 = !DILocation(line: 1373, column: 16, scope: !1301)
!1790 = !DILocation(line: 1374, column: 14, scope: !1301)
!1791 = !DILocation(line: 1375, column: 5, scope: !1302)
!1792 = !DILocation(line: 1384, column: 31, scope: !1327)
!1793 = !DILocation(line: 1384, column: 27, scope: !1327)
!1794 = !DILocation(line: 1385, column: 41, scope: !1327)
!1795 = !DILocation(line: 1385, column: 38, scope: !1327)
!1796 = !DILocation(line: 1385, column: 45, scope: !1327)
!1797 = !DILocation(line: 1385, column: 30, scope: !1327)
!1798 = !DILocation(line: 1385, column: 28, scope: !1327)
!1799 = !DILocation(line: 1395, column: 7, scope: !1327)
!1800 = !DILocation(line: 1404, column: 9, scope: !1344)
!1801 = !DILocation(line: 1406, column: 24, scope: !1344)
!1802 = !DILocation(line: 1410, column: 21, scope: !1354)
!1803 = !DILocation(line: 1410, column: 9, scope: !1355)
!1804 = !DILocation(line: 1407, column: 13, scope: !1344)
!1805 = !DILocation(line: 1407, column: 15, scope: !1344)
!1806 = !DILocation(line: 1409, column: 18, scope: !1344)
!1807 = !DILocation(line: 1411, column: 26, scope: !1353)
!1808 = !DILocation(line: 1411, column: 22, scope: !1353)
!1809 = !DILocation(line: 1411, column: 29, scope: !1353)
!1810 = !DILocation(line: 1411, column: 32, scope: !1353)
!1811 = !DILocation(line: 1411, column: 45, scope: !1353)
!1812 = !DILocation(line: 1411, column: 48, scope: !1353)
!1813 = !DILocation(line: 1411, column: 40, scope: !1353)
!1814 = !DILocation(line: 1411, column: 51, scope: !1353)
!1815 = !DILocation(line: 1411, column: 36, scope: !1353)
!1816 = !DILocation(line: 1411, column: 18, scope: !1353)
!1817 = !DILocation(line: 1414, column: 11, scope: !1352)
!1818 = !DILocation(line: 0, scope: !1352)
!1819 = !DILocation(line: 1414, column: 11, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 1414, column: 11)
!1821 = !DILocation(line: 1414, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 1414, column: 11)
!1823 = !DILocation(line: 1414, column: 11, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 1414, column: 11)
!1825 = !DILocation(line: 1414, column: 11, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 1414, column: 11)
!1827 = !DILocation(line: 0, scope: !1353)
!1828 = !DILocation(line: 1410, column: 33, scope: !1354)
!1829 = distinct !{!1829, !1803, !1830, !552}
!1830 = !DILocation(line: 1415, column: 9, scope: !1355)
!1831 = !DILocation(line: 1418, column: 7, scope: !1327)
!1832 = !DILocation(line: 1423, column: 9, scope: !1357)
!1833 = !DILocation(line: 1424, column: 9, scope: !1357)
!1834 = !DILocation(line: 1425, column: 9, scope: !1357)
!1835 = !DILocation(line: 1426, column: 46, scope: !1357)
!1836 = !DILocation(line: 1426, column: 22, scope: !1357)
!1837 = !DILocation(line: 1427, column: 22, scope: !1357)
!1838 = !DILocation(line: 1428, column: 30, scope: !1357)
!1839 = !DILocation(line: 1429, column: 28, scope: !1357)
!1840 = !DILocation(line: 1433, column: 18, scope: !1357)
!1841 = !DILocation(line: 1434, column: 26, scope: !1357)
!1842 = !DILocation(line: 1434, column: 17, scope: !1357)
!1843 = !DILocation(line: 1435, column: 21, scope: !1357)
!1844 = !DILocation(line: 1435, column: 26, scope: !1357)
!1845 = !DILocation(line: 1435, column: 17, scope: !1357)
!1846 = !DILocation(line: 1435, column: 14, scope: !1357)
!1847 = !DILocation(line: 1437, column: 22, scope: !1370)
!1848 = !DILocation(line: 1437, column: 9, scope: !1371)
!1849 = !DILocation(line: 1434, column: 14, scope: !1357)
!1850 = !DILocation(line: 1438, column: 33, scope: !1369)
!1851 = !DILocation(line: 1438, column: 29, scope: !1369)
!1852 = !DILocation(line: 1438, column: 36, scope: !1369)
!1853 = !DILocation(line: 1438, column: 39, scope: !1369)
!1854 = !DILocation(line: 1438, column: 25, scope: !1369)
!1855 = !DILocation(line: 1438, column: 18, scope: !1369)
!1856 = !DILocation(line: 1438, column: 52, scope: !1369)
!1857 = !DILocation(line: 1438, column: 55, scope: !1369)
!1858 = !DILocation(line: 1438, column: 47, scope: !1369)
!1859 = !DILocation(line: 1438, column: 43, scope: !1369)
!1860 = !DILocation(line: 1441, column: 11, scope: !1368)
!1861 = !DILocation(line: 0, scope: !1368)
!1862 = !DILocation(line: 1441, column: 11, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 1441, column: 11)
!1864 = !DILocation(line: 1441, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 1441, column: 11)
!1866 = !DILocation(line: 1441, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 1441, column: 11)
!1868 = !DILocation(line: 1441, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 1441, column: 11)
!1870 = !DILocation(line: 0, scope: !1369)
!1871 = distinct !{!1871, !1848, !1872, !552}
!1872 = !DILocation(line: 1442, column: 9, scope: !1371)
!1873 = !DILocation(line: 1444, column: 20, scope: !1357)
!1874 = !DILocation(line: 1445, column: 7, scope: !1327)
!1875 = !DILocation(line: 1448, column: 43, scope: !1327)
!1876 = !DILocation(line: 1448, column: 26, scope: !1327)
!1877 = !DILocation(line: 1448, column: 61, scope: !1327)
!1878 = !DILocation(line: 1448, column: 24, scope: !1327)
!1879 = !DILocation(line: 1449, column: 42, scope: !1327)
!1880 = !DILocation(line: 1449, column: 57, scope: !1327)
!1881 = !DILocation(line: 1449, column: 96, scope: !1327)
!1882 = !DILocation(line: 1449, column: 55, scope: !1327)
!1883 = !DILocation(line: 1449, column: 39, scope: !1327)
!1884 = !DILocation(line: 1450, column: 31, scope: !1327)
!1885 = !DILocation(line: 1450, column: 39, scope: !1327)
!1886 = !DILocation(line: 1451, column: 46, scope: !1327)
!1887 = !DILocation(line: 1451, column: 40, scope: !1327)
!1888 = !DILocation(line: 1451, column: 53, scope: !1327)
!1889 = !DILocation(line: 1451, column: 51, scope: !1327)
!1890 = !DILocation(line: 1451, column: 63, scope: !1327)
!1891 = !DILocation(line: 1451, column: 37, scope: !1327)
!1892 = !DILocation(line: 1451, column: 72, scope: !1327)
!1893 = !DILocation(line: 1451, column: 70, scope: !1327)
!1894 = !DILocation(line: 1452, column: 16, scope: !1327)
!1895 = !DILocation(line: 1453, column: 14, scope: !1327)
!1896 = !DILocation(line: 1454, column: 5, scope: !1302)
!1897 = !DILocation(line: 0, scope: !1209)
!1898 = !DILocation(line: 1456, column: 1, scope: !1198)
!1899 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int_e", scope: !2, file: !2, line: 1756, type: !1900, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!40, !91, !91, !92, !1062}
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1903 = !DILocalVariable(name: "a", arg: 1, scope: !1899, file: !2, line: 1756, type: !91)
!1904 = !DILocalVariable(name: "b", arg: 2, scope: !1899, file: !2, line: 1756, type: !91)
!1905 = !DILocalVariable(name: "x", arg: 3, scope: !1899, file: !2, line: 1756, type: !92)
!1906 = !DILocalVariable(name: "result", arg: 4, scope: !1899, file: !2, line: 1756, type: !1062)
!1907 = !DILocalVariable(name: "re", scope: !1899, file: !2, line: 1758, type: !94)
!1908 = !DILocalVariable(name: "stat_U", scope: !1899, file: !2, line: 1759, type: !40)
!1909 = !DILocalVariable(name: "stat_c", scope: !1899, file: !2, line: 1760, type: !40)
!1910 = distinct !DIAssignID()
!1911 = !DILocation(line: 0, scope: !1899)
!1912 = !DILocation(line: 1758, column: 3, scope: !1899)
!1913 = !DILocation(line: 1758, column: 21, scope: !1899)
!1914 = distinct !DIAssignID()
!1915 = !DILocation(line: 1759, column: 16, scope: !1899)
!1916 = !DILocation(line: 1760, column: 16, scope: !1899)
!1917 = !DILocation(line: 1761, column: 10, scope: !1899)
!1918 = !DILocation(line: 1762, column: 1, scope: !1899)
!1919 = !DILocation(line: 1761, column: 3, scope: !1899)
!1920 = !DISubprogram(name: "gsl_sf_result_smash_e", scope: !95, file: !95, line: 54, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!40, !1923, !1062}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1925 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e", scope: !2, file: !2, line: 1766, type: !1926, scopeLine: 1767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!40, !92, !92, !92, !1062}
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1929 = !DILocalVariable(name: "a", arg: 1, scope: !1925, file: !2, line: 1766, type: !92)
!1930 = !DILocalVariable(name: "b", arg: 2, scope: !1925, file: !2, line: 1766, type: !92)
!1931 = !DILocalVariable(name: "x", arg: 3, scope: !1925, file: !2, line: 1766, type: !92)
!1932 = !DILocalVariable(name: "result", arg: 4, scope: !1925, file: !2, line: 1766, type: !1062)
!1933 = !DILocalVariable(name: "re", scope: !1925, file: !2, line: 1768, type: !94)
!1934 = !DILocalVariable(name: "stat_U", scope: !1925, file: !2, line: 1769, type: !40)
!1935 = !DILocalVariable(name: "stat_c", scope: !1925, file: !2, line: 1770, type: !40)
!1936 = distinct !DIAssignID()
!1937 = !DILocation(line: 0, scope: !1925)
!1938 = !DILocation(line: 1768, column: 3, scope: !1925)
!1939 = !DILocation(line: 1768, column: 21, scope: !1925)
!1940 = distinct !DIAssignID()
!1941 = !DILocation(line: 1769, column: 16, scope: !1925)
!1942 = !DILocation(line: 1770, column: 16, scope: !1925)
!1943 = !DILocation(line: 1771, column: 10, scope: !1925)
!1944 = !DILocation(line: 1772, column: 1, scope: !1925)
!1945 = !DILocation(line: 1771, column: 3, scope: !1925)
!1946 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int", scope: !2, file: !2, line: 1779, type: !1947, scopeLine: 1780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!78, !91, !91, !92}
!1949 = !{!1950, !1951, !1952, !1953, !1954}
!1950 = !DILocalVariable(name: "a", arg: 1, scope: !1946, file: !2, line: 1779, type: !91)
!1951 = !DILocalVariable(name: "b", arg: 2, scope: !1946, file: !2, line: 1779, type: !91)
!1952 = !DILocalVariable(name: "x", arg: 3, scope: !1946, file: !2, line: 1779, type: !92)
!1953 = !DILocalVariable(name: "result", scope: !1946, file: !2, line: 1781, type: !163)
!1954 = !DILocalVariable(name: "status", scope: !1946, file: !2, line: 1781, type: !40)
!1955 = distinct !DIAssignID()
!1956 = distinct !DIAssignID()
!1957 = !DILocation(line: 0, scope: !1946)
!1958 = !DILocation(line: 1781, column: 3, scope: !1946)
!1959 = !DILocation(line: 0, scope: !1899, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 1781, column: 3, scope: !1946)
!1961 = !DILocation(line: 1758, column: 3, scope: !1899, inlinedAt: !1960)
!1962 = !DILocation(line: 1758, column: 21, scope: !1899, inlinedAt: !1960)
!1963 = distinct !DIAssignID()
!1964 = !DILocation(line: 1759, column: 16, scope: !1899, inlinedAt: !1960)
!1965 = !DILocation(line: 1760, column: 16, scope: !1899, inlinedAt: !1960)
!1966 = !DILocation(line: 1761, column: 10, scope: !1899, inlinedAt: !1960)
!1967 = !DILocation(line: 1762, column: 1, scope: !1899, inlinedAt: !1960)
!1968 = !DILocation(line: 1781, column: 3, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 1781, column: 3)
!1970 = !DILocation(line: 1781, column: 3, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1781, column: 3)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1781, column: 3)
!1973 = !DILocation(line: 1782, column: 1, scope: !1946)
!1974 = distinct !DISubprogram(name: "gsl_sf_hyperg_U", scope: !2, file: !2, line: 1784, type: !1975, scopeLine: 1785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!78, !92, !92, !92}
!1977 = !{!1978, !1979, !1980, !1981, !1982}
!1978 = !DILocalVariable(name: "a", arg: 1, scope: !1974, file: !2, line: 1784, type: !92)
!1979 = !DILocalVariable(name: "b", arg: 2, scope: !1974, file: !2, line: 1784, type: !92)
!1980 = !DILocalVariable(name: "x", arg: 3, scope: !1974, file: !2, line: 1784, type: !92)
!1981 = !DILocalVariable(name: "result", scope: !1974, file: !2, line: 1786, type: !163)
!1982 = !DILocalVariable(name: "status", scope: !1974, file: !2, line: 1786, type: !40)
!1983 = distinct !DIAssignID()
!1984 = distinct !DIAssignID()
!1985 = !DILocation(line: 0, scope: !1974)
!1986 = !DILocation(line: 1786, column: 3, scope: !1974)
!1987 = !DILocation(line: 0, scope: !1925, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 1786, column: 3, scope: !1974)
!1989 = !DILocation(line: 1768, column: 3, scope: !1925, inlinedAt: !1988)
!1990 = !DILocation(line: 1768, column: 21, scope: !1925, inlinedAt: !1988)
!1991 = distinct !DIAssignID()
!1992 = !DILocation(line: 1769, column: 16, scope: !1925, inlinedAt: !1988)
!1993 = !DILocation(line: 1770, column: 16, scope: !1925, inlinedAt: !1988)
!1994 = !DILocation(line: 1771, column: 10, scope: !1925, inlinedAt: !1988)
!1995 = !DILocation(line: 1772, column: 1, scope: !1925, inlinedAt: !1988)
!1996 = !DILocation(line: 1786, column: 3, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 1786, column: 3)
!1998 = !DILocation(line: 1786, column: 3, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 1786, column: 3)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 1786, column: 3)
!2001 = !DILocation(line: 1787, column: 1, scope: !1974)
!2002 = !DISubprogram(name: "pow", scope: !907, file: !907, line: 140, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2003 = !DISubprogram(name: "gsl_sf_exp_e10_e", scope: !911, file: !911, line: 53, type: !2004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!40, !92, !93}
!2006 = distinct !DISubprogram(name: "hyperg_zaU_asymp", scope: !2, file: !2, line: 216, type: !1926, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2007)
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2021, !2022, !2023, !2024, !2025, !2026, !2028}
!2008 = !DILocalVariable(name: "a", arg: 1, scope: !2006, file: !2, line: 216, type: !92)
!2009 = !DILocalVariable(name: "b", arg: 2, scope: !2006, file: !2, line: 216, type: !92)
!2010 = !DILocalVariable(name: "x", arg: 3, scope: !2006, file: !2, line: 216, type: !92)
!2011 = !DILocalVariable(name: "result", arg: 4, scope: !2006, file: !2, line: 216, type: !1062)
!2012 = !DILocalVariable(name: "ap", scope: !2006, file: !2, line: 218, type: !92)
!2013 = !DILocalVariable(name: "bp", scope: !2006, file: !2, line: 219, type: !92)
!2014 = !DILocalVariable(name: "rintap", scope: !2006, file: !2, line: 220, type: !92)
!2015 = !DILocalVariable(name: "rintbp", scope: !2006, file: !2, line: 221, type: !92)
!2016 = !DILocalVariable(name: "ap_neg_int", scope: !2006, file: !2, line: 222, type: !91)
!2017 = !DILocalVariable(name: "bp_neg_int", scope: !2006, file: !2, line: 223, type: !91)
!2018 = !DILocalVariable(name: "mxi", scope: !2019, file: !2, line: 228, type: !78)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 225, column: 32)
!2020 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 225, column: 6)
!2021 = !DILocalVariable(name: "nmax", scope: !2019, file: !2, line: 229, type: !78)
!2022 = !DILocalVariable(name: "tn", scope: !2019, file: !2, line: 230, type: !78)
!2023 = !DILocalVariable(name: "sum", scope: !2019, file: !2, line: 231, type: !78)
!2024 = !DILocalVariable(name: "n", scope: !2019, file: !2, line: 232, type: !78)
!2025 = !DILocalVariable(name: "sum_err", scope: !2019, file: !2, line: 233, type: !78)
!2026 = !DILocalVariable(name: "apn", scope: !2027, file: !2, line: 235, type: !78)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 234, column: 22)
!2028 = !DILocalVariable(name: "bpn", scope: !2027, file: !2, line: 236, type: !78)
!2029 = distinct !DIAssignID()
!2030 = distinct !DIAssignID()
!2031 = !DILocation(line: 0, scope: !2006)
!2032 = !DILocation(line: 219, column: 25, scope: !2006)
!2033 = !DILocation(line: 219, column: 29, scope: !2006)
!2034 = !DILocation(line: 221, column: 34, scope: !2006)
!2035 = !DILocation(line: 221, column: 25, scope: !2006)
!2036 = !DILocation(line: 222, column: 31, scope: !2006)
!2037 = !DILocation(line: 222, column: 37, scope: !2006)
!2038 = !DILocation(line: 220, column: 34, scope: !2006)
!2039 = !DILocation(line: 220, column: 25, scope: !2006)
!2040 = !DILocation(line: 222, column: 48, scope: !2006)
!2041 = !DILocation(line: 222, column: 40, scope: !2006)
!2042 = !DILocation(line: 222, column: 58, scope: !2006)
!2043 = !DILocation(line: 223, column: 31, scope: !2006)
!2044 = !DILocation(line: 223, column: 37, scope: !2006)
!2045 = !DILocation(line: 225, column: 17, scope: !2020)
!2046 = !DILocation(line: 228, column: 22, scope: !2019)
!2047 = !DILocation(line: 0, scope: !2019)
!2048 = !DILocation(line: 229, column: 26, scope: !2019)
!2049 = !DILocation(line: 229, column: 41, scope: !2019)
!2050 = !DILocation(line: 229, column: 20, scope: !2019)
!2051 = !DILocation(line: 229, column: 19, scope: !2019)
!2052 = !DILocation(line: 234, column: 13, scope: !2019)
!2053 = !DILocation(line: 234, column: 5, scope: !2019)
!2054 = !DILocation(line: 235, column: 23, scope: !2027)
!2055 = !DILocation(line: 235, column: 25, scope: !2027)
!2056 = !DILocation(line: 0, scope: !2027)
!2057 = !DILocation(line: 236, column: 23, scope: !2027)
!2058 = !DILocation(line: 236, column: 25, scope: !2027)
!2059 = !DILocation(line: 237, column: 19, scope: !2027)
!2060 = !DILocation(line: 237, column: 22, scope: !2027)
!2061 = !DILocation(line: 237, column: 27, scope: !2027)
!2062 = !DILocation(line: 237, column: 11, scope: !2027)
!2063 = !DILocation(line: 238, column: 11, scope: !2027)
!2064 = !DILocation(line: 239, column: 42, scope: !2027)
!2065 = !DILocation(line: 239, column: 40, scope: !2027)
!2066 = !DILocation(line: 239, column: 15, scope: !2027)
!2067 = !DILocation(line: 240, column: 9, scope: !2027)
!2068 = distinct !{!2068, !2053, !2069, !552}
!2069 = !DILocation(line: 241, column: 5, scope: !2019)
!2070 = !DILocation(line: 242, column: 18, scope: !2019)
!2071 = !DILocation(line: 243, column: 13, scope: !2019)
!2072 = !DILocation(line: 244, column: 45, scope: !2019)
!2073 = !DILocation(line: 244, column: 55, scope: !2019)
!2074 = !DILocation(line: 244, column: 42, scope: !2019)
!2075 = !DILocation(line: 244, column: 63, scope: !2019)
!2076 = !DILocation(line: 244, column: 61, scope: !2019)
!2077 = !DILocation(line: 244, column: 17, scope: !2019)
!2078 = !DILocalVariable(name: "aa", scope: !2079, file: !2, line: 148, type: !2088)
!2079 = distinct !DISubprogram(name: "d9chu", scope: !2, file: !2, line: 144, type: !1926, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2078, !2087, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2103, !2104, !2105, !2106, !2107, !2108}
!2081 = !DILocalVariable(name: "a", arg: 1, scope: !2079, file: !2, line: 144, type: !92)
!2082 = !DILocalVariable(name: "b", arg: 2, scope: !2079, file: !2, line: 144, type: !92)
!2083 = !DILocalVariable(name: "x", arg: 3, scope: !2079, file: !2, line: 144, type: !92)
!2084 = !DILocalVariable(name: "result", arg: 4, scope: !2079, file: !2, line: 144, type: !1062)
!2085 = !DILocalVariable(name: "EPS", scope: !2079, file: !2, line: 146, type: !92)
!2086 = !DILocalVariable(name: "maxiter", scope: !2079, file: !2, line: 147, type: !91)
!2087 = !DILocalVariable(name: "bb", scope: !2079, file: !2, line: 148, type: !2088)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 4)
!2091 = !DILocalVariable(name: "i", scope: !2079, file: !2, line: 149, type: !40)
!2092 = !DILocalVariable(name: "bp", scope: !2079, file: !2, line: 151, type: !78)
!2093 = !DILocalVariable(name: "ab", scope: !2079, file: !2, line: 152, type: !78)
!2094 = !DILocalVariable(name: "ct2", scope: !2079, file: !2, line: 153, type: !78)
!2095 = !DILocalVariable(name: "sab", scope: !2079, file: !2, line: 154, type: !78)
!2096 = !DILocalVariable(name: "ct3", scope: !2079, file: !2, line: 156, type: !78)
!2097 = !DILocalVariable(name: "anbn", scope: !2079, file: !2, line: 157, type: !78)
!2098 = !DILocalVariable(name: "ct1", scope: !2079, file: !2, line: 158, type: !78)
!2099 = !DILocalVariable(name: "j", scope: !2100, file: !2, line: 170, type: !40)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 169, column: 28)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 169, column: 3)
!2102 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 169, column: 3)
!2103 = !DILocalVariable(name: "c2", scope: !2100, file: !2, line: 171, type: !78)
!2104 = !DILocalVariable(name: "d1z", scope: !2100, file: !2, line: 172, type: !78)
!2105 = !DILocalVariable(name: "g1", scope: !2100, file: !2, line: 173, type: !78)
!2106 = !DILocalVariable(name: "g2", scope: !2100, file: !2, line: 173, type: !78)
!2107 = !DILocalVariable(name: "g3", scope: !2100, file: !2, line: 173, type: !78)
!2108 = !DILocalVariable(name: "x2i1", scope: !2100, file: !2, line: 174, type: !78)
!2109 = !DILocation(line: 0, scope: !2079, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 248, column: 12, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 247, column: 8)
!2112 = !DILocation(line: 148, column: 3, scope: !2079, inlinedAt: !2110)
!2113 = !DILocation(line: 152, column: 16, scope: !2079, inlinedAt: !2110)
!2114 = !DILocation(line: 153, column: 25, scope: !2079, inlinedAt: !2110)
!2115 = !DILocation(line: 153, column: 20, scope: !2079, inlinedAt: !2110)
!2116 = !DILocation(line: 154, column: 18, scope: !2079, inlinedAt: !2110)
!2117 = !DILocation(line: 156, column: 20, scope: !2079, inlinedAt: !2110)
!2118 = !DILocation(line: 156, column: 26, scope: !2079, inlinedAt: !2110)
!2119 = !DILocation(line: 157, column: 21, scope: !2079, inlinedAt: !2110)
!2120 = !DILocation(line: 157, column: 27, scope: !2079, inlinedAt: !2110)
!2121 = !DILocation(line: 158, column: 25, scope: !2079, inlinedAt: !2110)
!2122 = !DILocation(line: 158, column: 27, scope: !2079, inlinedAt: !2110)
!2123 = !DILocation(line: 158, column: 20, scope: !2079, inlinedAt: !2110)
!2124 = !DILocation(line: 160, column: 9, scope: !2079, inlinedAt: !2110)
!2125 = distinct !DIAssignID()
!2126 = !DILocation(line: 161, column: 9, scope: !2079, inlinedAt: !2110)
!2127 = distinct !DIAssignID()
!2128 = !DILocation(line: 163, column: 22, scope: !2079, inlinedAt: !2110)
!2129 = !DILocation(line: 163, column: 15, scope: !2079, inlinedAt: !2110)
!2130 = !DILocation(line: 163, column: 9, scope: !2079, inlinedAt: !2110)
!2131 = distinct !DIAssignID()
!2132 = !DILocation(line: 164, column: 20, scope: !2079, inlinedAt: !2110)
!2133 = !DILocation(line: 164, column: 15, scope: !2079, inlinedAt: !2110)
!2134 = !DILocation(line: 164, column: 9, scope: !2079, inlinedAt: !2110)
!2135 = distinct !DIAssignID()
!2136 = !DILocation(line: 166, column: 20, scope: !2079, inlinedAt: !2110)
!2137 = !DILocation(line: 166, column: 24, scope: !2079, inlinedAt: !2110)
!2138 = !DILocation(line: 166, column: 26, scope: !2079, inlinedAt: !2110)
!2139 = !DILocation(line: 166, column: 15, scope: !2079, inlinedAt: !2110)
!2140 = !DILocation(line: 166, column: 9, scope: !2079, inlinedAt: !2110)
!2141 = distinct !DIAssignID()
!2142 = !DILocation(line: 167, column: 20, scope: !2079, inlinedAt: !2110)
!2143 = !DILocation(line: 167, column: 23, scope: !2079, inlinedAt: !2110)
!2144 = !DILocation(line: 167, column: 15, scope: !2079, inlinedAt: !2110)
!2145 = !DILocation(line: 167, column: 34, scope: !2079, inlinedAt: !2110)
!2146 = !DILocation(line: 167, column: 38, scope: !2079, inlinedAt: !2110)
!2147 = !DILocation(line: 167, column: 42, scope: !2079, inlinedAt: !2110)
!2148 = !DILocation(line: 167, column: 29, scope: !2079, inlinedAt: !2110)
!2149 = !DILocation(line: 167, column: 9, scope: !2079, inlinedAt: !2110)
!2150 = distinct !DIAssignID()
!2151 = !DILocation(line: 192, column: 13, scope: !2152, inlinedAt: !2110)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 191, column: 24)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 191, column: 5)
!2154 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 191, column: 5)
!2155 = !DILocation(line: 169, column: 3, scope: !2102, inlinedAt: !2110)
!2156 = !DILocation(line: 174, column: 20, scope: !2100, inlinedAt: !2110)
!2157 = !DILocation(line: 174, column: 23, scope: !2100, inlinedAt: !2110)
!2158 = !DILocation(line: 174, column: 19, scope: !2100, inlinedAt: !2110)
!2159 = !DILocation(line: 0, scope: !2100, inlinedAt: !2110)
!2160 = !DILocation(line: 175, column: 23, scope: !2100, inlinedAt: !2110)
!2161 = !DILocation(line: 175, column: 17, scope: !2100, inlinedAt: !2110)
!2162 = !DILocation(line: 176, column: 18, scope: !2100, inlinedAt: !2110)
!2163 = !DILocation(line: 176, column: 10, scope: !2100, inlinedAt: !2110)
!2164 = !DILocation(line: 177, column: 19, scope: !2100, inlinedAt: !2110)
!2165 = !DILocation(line: 177, column: 25, scope: !2100, inlinedAt: !2110)
!2166 = !DILocation(line: 178, column: 17, scope: !2100, inlinedAt: !2110)
!2167 = !DILocation(line: 178, column: 22, scope: !2100, inlinedAt: !2110)
!2168 = !DILocation(line: 179, column: 16, scope: !2100, inlinedAt: !2110)
!2169 = !DILocation(line: 179, column: 21, scope: !2100, inlinedAt: !2110)
!2170 = !DILocation(line: 179, column: 23, scope: !2100, inlinedAt: !2110)
!2171 = !DILocation(line: 181, column: 14, scope: !2100, inlinedAt: !2110)
!2172 = !DILocation(line: 182, column: 24, scope: !2100, inlinedAt: !2110)
!2173 = !DILocation(line: 182, column: 20, scope: !2100, inlinedAt: !2110)
!2174 = !DILocation(line: 182, column: 15, scope: !2100, inlinedAt: !2110)
!2175 = !DILocation(line: 183, column: 15, scope: !2100, inlinedAt: !2110)
!2176 = !DILocation(line: 184, column: 20, scope: !2100, inlinedAt: !2110)
!2177 = !DILocation(line: 184, column: 31, scope: !2100, inlinedAt: !2110)
!2178 = !DILocation(line: 184, column: 26, scope: !2100, inlinedAt: !2110)
!2179 = !DILocation(line: 184, column: 14, scope: !2100, inlinedAt: !2110)
!2180 = !DILocation(line: 186, column: 16, scope: !2100, inlinedAt: !2110)
!2181 = !DILocation(line: 186, column: 15, scope: !2100, inlinedAt: !2110)
!2182 = !DILocation(line: 186, column: 27, scope: !2100, inlinedAt: !2110)
!2183 = !DILocation(line: 186, column: 26, scope: !2100, inlinedAt: !2110)
!2184 = !DILocation(line: 186, column: 22, scope: !2100, inlinedAt: !2110)
!2185 = !DILocation(line: 186, column: 38, scope: !2100, inlinedAt: !2110)
!2186 = !DILocation(line: 186, column: 37, scope: !2100, inlinedAt: !2110)
!2187 = !DILocation(line: 186, column: 33, scope: !2100, inlinedAt: !2110)
!2188 = !DILocation(line: 186, column: 11, scope: !2100, inlinedAt: !2110)
!2189 = distinct !DIAssignID()
!2190 = !DILocation(line: 187, column: 16, scope: !2100, inlinedAt: !2110)
!2191 = !DILocation(line: 187, column: 15, scope: !2100, inlinedAt: !2110)
!2192 = !DILocation(line: 187, column: 27, scope: !2100, inlinedAt: !2110)
!2193 = !DILocation(line: 187, column: 26, scope: !2100, inlinedAt: !2110)
!2194 = !DILocation(line: 187, column: 22, scope: !2100, inlinedAt: !2110)
!2195 = !DILocation(line: 187, column: 38, scope: !2100, inlinedAt: !2110)
!2196 = !DILocation(line: 187, column: 37, scope: !2100, inlinedAt: !2110)
!2197 = !DILocation(line: 187, column: 33, scope: !2100, inlinedAt: !2110)
!2198 = !DILocation(line: 187, column: 11, scope: !2100, inlinedAt: !2110)
!2199 = distinct !DIAssignID()
!2200 = !DILocation(line: 189, column: 18, scope: !2201, inlinedAt: !2110)
!2201 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 189, column: 8)
!2202 = !DILocation(line: 189, column: 30, scope: !2201, inlinedAt: !2110)
!2203 = !DILocation(line: 189, column: 24, scope: !2201, inlinedAt: !2110)
!2204 = !DILocation(line: 189, column: 8, scope: !2201, inlinedAt: !2110)
!2205 = !DILocation(line: 189, column: 54, scope: !2201, inlinedAt: !2110)
!2206 = !DILocation(line: 189, column: 44, scope: !2201, inlinedAt: !2110)
!2207 = !DILocation(line: 189, column: 43, scope: !2201, inlinedAt: !2110)
!2208 = !DILocation(line: 189, column: 38, scope: !2201, inlinedAt: !2110)
!2209 = !DILocation(line: 189, column: 8, scope: !2100, inlinedAt: !2110)
!2210 = !DILocation(line: 193, column: 13, scope: !2152, inlinedAt: !2110)
!2211 = !DILocation(line: 169, column: 24, scope: !2101, inlinedAt: !2110)
!2212 = !DILocation(line: 169, column: 13, scope: !2101, inlinedAt: !2110)
!2213 = distinct !{!2213, !2155, !2214, !552}
!2214 = !DILocation(line: 195, column: 3, scope: !2102, inlinedAt: !2110)
!2215 = !DILocation(line: 169, scope: !2102, inlinedAt: !2110)
!2216 = !DILocation(line: 197, column: 22, scope: !2079, inlinedAt: !2110)
!2217 = !DILocation(line: 197, column: 15, scope: !2079, inlinedAt: !2110)
!2218 = !DILocation(line: 198, column: 41, scope: !2079, inlinedAt: !2110)
!2219 = !DILocation(line: 198, column: 39, scope: !2079, inlinedAt: !2110)
!2220 = !DILocation(line: 198, column: 11, scope: !2079, inlinedAt: !2110)
!2221 = !DILocation(line: 198, column: 15, scope: !2079, inlinedAt: !2110)
!2222 = !DILocation(line: 200, column: 8, scope: !2223, inlinedAt: !2110)
!2223 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 200, column: 6)
!2224 = !DILocation(line: 200, column: 6, scope: !2079, inlinedAt: !2110)
!2225 = !DILocation(line: 201, column: 5, scope: !2226, inlinedAt: !2110)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 201, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 200, column: 20)
!2228 = !DILocation(line: 0, scope: !2223, inlinedAt: !2110)
!2229 = !DILocation(line: 206, column: 1, scope: !2079, inlinedAt: !2110)
!2230 = !DILocation(line: 248, column: 5, scope: !2111)
!2231 = !DILocation(line: 0, scope: !2020)
!2232 = !DILocation(line: 250, column: 1, scope: !2006)
!2233 = distinct !DISubprogram(name: "hyperg_U_series", scope: !2, file: !2, line: 680, type: !1926, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2248, !2249, !2251, !2252, !2253, !2254, !2255}
!2235 = !DILocalVariable(name: "a", arg: 1, scope: !2233, file: !2, line: 680, type: !92)
!2236 = !DILocalVariable(name: "b", arg: 2, scope: !2233, file: !2, line: 680, type: !92)
!2237 = !DILocalVariable(name: "x", arg: 3, scope: !2233, file: !2, line: 680, type: !92)
!2238 = !DILocalVariable(name: "result", arg: 4, scope: !2233, file: !2, line: 680, type: !1062)
!2239 = !DILocalVariable(name: "SQRT_EPS", scope: !2233, file: !2, line: 682, type: !92)
!2240 = !DILocalVariable(name: "bint", scope: !2233, file: !2, line: 683, type: !78)
!2241 = !DILocalVariable(name: "beps", scope: !2233, file: !2, line: 684, type: !78)
!2242 = !DILocalVariable(name: "a_beps", scope: !2233, file: !2, line: 685, type: !78)
!2243 = !DILocalVariable(name: "r_a_beps", scope: !2233, file: !2, line: 686, type: !78)
!2244 = !DILocalVariable(name: "a_beps_int", scope: !2233, file: !2, line: 687, type: !78)
!2245 = !DILocalVariable(name: "lnr", scope: !2246, file: !2, line: 703, type: !78)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 696, column: 36)
!2247 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 696, column: 6)
!2248 = !DILocalVariable(name: "stat_e", scope: !2246, file: !2, line: 704, type: !40)
!2249 = !DILocalVariable(name: "N", scope: !2250, file: !2, line: 709, type: !40)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 708, column: 8)
!2251 = !DILocalVariable(name: "lnx", scope: !2250, file: !2, line: 711, type: !78)
!2252 = !DILocalVariable(name: "xeps", scope: !2250, file: !2, line: 712, type: !78)
!2253 = !DILocalVariable(name: "sum", scope: !2250, file: !2, line: 716, type: !163)
!2254 = !DILocalVariable(name: "stat_sum", scope: !2250, file: !2, line: 717, type: !40)
!2255 = !DILocalVariable(name: "stat_inf", scope: !2250, file: !2, line: 718, type: !40)
!2256 = distinct !DIAssignID()
!2257 = distinct !DIAssignID()
!2258 = distinct !DIAssignID()
!2259 = distinct !DIAssignID()
!2260 = distinct !DIAssignID()
!2261 = distinct !DIAssignID()
!2262 = distinct !DIAssignID()
!2263 = distinct !DIAssignID()
!2264 = distinct !DIAssignID()
!2265 = distinct !DIAssignID()
!2266 = distinct !DIAssignID()
!2267 = distinct !DIAssignID()
!2268 = distinct !DIAssignID()
!2269 = distinct !DIAssignID()
!2270 = distinct !DIAssignID()
!2271 = distinct !DIAssignID()
!2272 = distinct !DIAssignID()
!2273 = distinct !DIAssignID()
!2274 = distinct !DIAssignID()
!2275 = distinct !DIAssignID()
!2276 = distinct !DIAssignID()
!2277 = distinct !DIAssignID()
!2278 = distinct !DIAssignID()
!2279 = distinct !DIAssignID()
!2280 = distinct !DIAssignID()
!2281 = distinct !DIAssignID()
!2282 = distinct !DIAssignID()
!2283 = distinct !DIAssignID()
!2284 = distinct !DIAssignID()
!2285 = distinct !DIAssignID()
!2286 = distinct !DIAssignID()
!2287 = !DILocation(line: 0, scope: !2233)
!2288 = !DILocation(line: 683, column: 19, scope: !2233)
!2289 = !DILocation(line: 683, column: 17, scope: !2233)
!2290 = !DILocation(line: 683, column: 33, scope: !2233)
!2291 = !DILocation(line: 683, column: 27, scope: !2233)
!2292 = !DILocation(line: 683, column: 48, scope: !2233)
!2293 = !DILocation(line: 683, column: 41, scope: !2233)
!2294 = !DILocation(line: 684, column: 20, scope: !2233)
!2295 = !DILocation(line: 685, column: 21, scope: !2233)
!2296 = !DILocation(line: 686, column: 34, scope: !2233)
!2297 = !DILocation(line: 686, column: 21, scope: !2233)
!2298 = !DILocation(line: 687, column: 37, scope: !2233)
!2299 = !DILocation(line: 687, column: 25, scope: !2233)
!2300 = !DILocation(line: 687, column: 49, scope: !2233)
!2301 = !DILocation(line: 692, column: 18, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 692, column: 7)
!2303 = !DILocation(line: 693, column: 16, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 693, column: 3)
!2305 = !DILocation(line: 693, column: 22, scope: !2304)
!2306 = !DILocation(line: 693, column: 20, scope: !2304)
!2307 = !DILocation(line: 693, column: 46, scope: !2304)
!2308 = !DILocation(line: 693, column: 50, scope: !2304)
!2309 = !DILocation(line: 694, column: 3, scope: !2304)
!2310 = !DILocation(line: 696, column: 15, scope: !2247)
!2311 = !DILocation(line: 696, column: 19, scope: !2247)
!2312 = !DILocation(line: 696, column: 6, scope: !2247)
!2313 = !DILocation(line: 696, column: 24, scope: !2247)
!2314 = !DILocation(line: 0, scope: !2247)
!2315 = !DILocation(line: 696, column: 6, scope: !2233)
!2316 = !DILocation(line: 703, column: 18, scope: !2246)
!2317 = !DILocation(line: 703, column: 21, scope: !2246)
!2318 = !DILocation(line: 0, scope: !2246)
!2319 = !DILocation(line: 704, column: 19, scope: !2246)
!2320 = !DILocation(line: 705, column: 50, scope: !2246)
!2321 = !DILocation(line: 705, column: 37, scope: !2246)
!2322 = !DILocation(line: 705, column: 35, scope: !2246)
!2323 = !DILocation(line: 705, column: 13, scope: !2246)
!2324 = !DILocation(line: 705, column: 17, scope: !2246)
!2325 = !DILocation(line: 709, column: 14, scope: !2250)
!2326 = !DILocation(line: 0, scope: !2250)
!2327 = !DILocation(line: 712, column: 23, scope: !2250)
!2328 = !DILocation(line: 712, column: 28, scope: !2250)
!2329 = !DILocation(line: 712, column: 19, scope: !2250)
!2330 = !DILocalVariable(name: "poch", scope: !2331, file: !2, line: 267, type: !163)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 264, column: 14)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 264, column: 6)
!2333 = distinct !DISubprogram(name: "hyperg_U_finite_sum", scope: !2, file: !2, line: 257, type: !2334, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!40, !40, !78, !78, !78, !78, !1062}
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2330, !2348, !2349, !2353, !2354, !2356, !2359, !2360, !2361, !2362, !2363, !2364, !2368, !2371, !2372, !2373, !2374, !2375}
!2337 = !DILocalVariable(name: "N", arg: 1, scope: !2333, file: !2, line: 257, type: !40)
!2338 = !DILocalVariable(name: "a", arg: 2, scope: !2333, file: !2, line: 257, type: !78)
!2339 = !DILocalVariable(name: "b", arg: 3, scope: !2333, file: !2, line: 257, type: !78)
!2340 = !DILocalVariable(name: "x", arg: 4, scope: !2333, file: !2, line: 257, type: !78)
!2341 = !DILocalVariable(name: "xeps", arg: 5, scope: !2333, file: !2, line: 257, type: !78)
!2342 = !DILocalVariable(name: "result", arg: 6, scope: !2333, file: !2, line: 258, type: !1062)
!2343 = !DILocalVariable(name: "i", scope: !2333, file: !2, line: 260, type: !40)
!2344 = !DILocalVariable(name: "sum_val", scope: !2333, file: !2, line: 261, type: !78)
!2345 = !DILocalVariable(name: "sum_err", scope: !2333, file: !2, line: 262, type: !78)
!2346 = !DILocalVariable(name: "t_val", scope: !2331, file: !2, line: 265, type: !78)
!2347 = !DILocalVariable(name: "t_err", scope: !2331, file: !2, line: 266, type: !78)
!2348 = !DILocalVariable(name: "stat_poch", scope: !2331, file: !2, line: 268, type: !40)
!2349 = !DILocalVariable(name: "xi1", scope: !2350, file: !2, line: 273, type: !92)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 272, column: 27)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 272, column: 5)
!2352 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 272, column: 5)
!2353 = !DILocalVariable(name: "mult", scope: !2350, file: !2, line: 274, type: !92)
!2354 = !DILocalVariable(name: "M", scope: !2355, file: !2, line: 291, type: !91)
!2355 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 290, column: 8)
!2356 = !DILocalVariable(name: "gbm1", scope: !2357, file: !2, line: 298, type: !163)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 297, column: 10)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 292, column: 8)
!2359 = !DILocalVariable(name: "gamr", scope: !2357, file: !2, line: 299, type: !163)
!2360 = !DILocalVariable(name: "stat_gbm1", scope: !2357, file: !2, line: 300, type: !40)
!2361 = !DILocalVariable(name: "stat_gamr", scope: !2357, file: !2, line: 301, type: !40)
!2362 = !DILocalVariable(name: "t_val", scope: !2357, file: !2, line: 302, type: !78)
!2363 = !DILocalVariable(name: "t_err", scope: !2357, file: !2, line: 303, type: !78)
!2364 = !DILocalVariable(name: "mult", scope: !2365, file: !2, line: 308, type: !92)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 307, column: 27)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 307, column: 7)
!2367 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 307, column: 7)
!2368 = !DILocalVariable(name: "powx1N", scope: !2369, file: !2, line: 319, type: !163)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !2, line: 318, column: 36)
!2370 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 318, column: 10)
!2371 = !DILocalVariable(name: "stat_p", scope: !2369, file: !2, line: 320, type: !40)
!2372 = !DILocalVariable(name: "pe_val", scope: !2369, file: !2, line: 321, type: !78)
!2373 = !DILocalVariable(name: "pe_err", scope: !2369, file: !2, line: 322, type: !78)
!2374 = !DILocalVariable(name: "coeff_val", scope: !2369, file: !2, line: 323, type: !78)
!2375 = !DILocalVariable(name: "coeff_err", scope: !2369, file: !2, line: 324, type: !78)
!2376 = !DILocation(line: 0, scope: !2331, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 717, column: 20, scope: !2250)
!2378 = !DILocation(line: 0, scope: !2357, inlinedAt: !2377)
!2379 = !DILocation(line: 0, scope: !2369, inlinedAt: !2377)
!2380 = !DILocation(line: 0, scope: !2333, inlinedAt: !2377)
!2381 = !DILocation(line: 264, column: 8, scope: !2332, inlinedAt: !2377)
!2382 = !DILocation(line: 264, column: 6, scope: !2333, inlinedAt: !2377)
!2383 = !DILocation(line: 267, column: 5, scope: !2331, inlinedAt: !2377)
!2384 = !DILocation(line: 272, column: 15, scope: !2351, inlinedAt: !2377)
!2385 = !DILocation(line: 272, column: 5, scope: !2352, inlinedAt: !2377)
!2386 = !DILocation(line: 273, column: 29, scope: !2350, inlinedAt: !2377)
!2387 = !DILocation(line: 273, column: 27, scope: !2350, inlinedAt: !2377)
!2388 = !DILocation(line: 0, scope: !2350, inlinedAt: !2377)
!2389 = !DILocation(line: 274, column: 29, scope: !2350, inlinedAt: !2377)
!2390 = !DILocation(line: 274, column: 34, scope: !2350, inlinedAt: !2377)
!2391 = !DILocation(line: 274, column: 40, scope: !2350, inlinedAt: !2377)
!2392 = !DILocation(line: 274, column: 50, scope: !2350, inlinedAt: !2377)
!2393 = !DILocation(line: 274, column: 45, scope: !2350, inlinedAt: !2377)
!2394 = !DILocation(line: 274, column: 36, scope: !2350, inlinedAt: !2377)
!2395 = !DILocation(line: 275, column: 13, scope: !2350, inlinedAt: !2377)
!2396 = !DILocation(line: 276, column: 16, scope: !2350, inlinedAt: !2377)
!2397 = !DILocation(line: 276, column: 27, scope: !2350, inlinedAt: !2377)
!2398 = !DILocation(line: 276, column: 37, scope: !2350, inlinedAt: !2377)
!2399 = !DILocation(line: 276, column: 49, scope: !2350, inlinedAt: !2377)
!2400 = !DILocation(line: 276, column: 55, scope: !2350, inlinedAt: !2377)
!2401 = !DILocation(line: 276, column: 61, scope: !2350, inlinedAt: !2377)
!2402 = !DILocation(line: 276, column: 35, scope: !2350, inlinedAt: !2377)
!2403 = !DILocation(line: 276, column: 13, scope: !2350, inlinedAt: !2377)
!2404 = !DILocation(line: 277, column: 15, scope: !2350, inlinedAt: !2377)
!2405 = !DILocation(line: 278, column: 15, scope: !2350, inlinedAt: !2377)
!2406 = !DILocation(line: 272, column: 23, scope: !2351, inlinedAt: !2377)
!2407 = distinct !{!2407, !2385, !2408, !552}
!2408 = !DILocation(line: 279, column: 5, scope: !2352, inlinedAt: !2377)
!2409 = !DILocation(line: 281, column: 40, scope: !2331, inlinedAt: !2377)
!2410 = !DILocation(line: 281, column: 17, scope: !2331, inlinedAt: !2377)
!2411 = !DILocation(line: 283, column: 35, scope: !2331, inlinedAt: !2377)
!2412 = !DILocation(line: 283, column: 28, scope: !2331, inlinedAt: !2377)
!2413 = !DILocation(line: 284, column: 20, scope: !2331, inlinedAt: !2377)
!2414 = !DILocation(line: 284, column: 41, scope: !2331, inlinedAt: !2377)
!2415 = !DILocation(line: 284, column: 34, scope: !2331, inlinedAt: !2377)
!2416 = !DILocation(line: 284, column: 57, scope: !2331, inlinedAt: !2377)
!2417 = !DILocation(line: 284, column: 55, scope: !2331, inlinedAt: !2377)
!2418 = !DILocation(line: 284, column: 45, scope: !2331, inlinedAt: !2377)
!2419 = !DILocation(line: 285, column: 43, scope: !2331, inlinedAt: !2377)
!2420 = !DILocation(line: 285, column: 38, scope: !2331, inlinedAt: !2377)
!2421 = !DILocation(line: 285, column: 46, scope: !2331, inlinedAt: !2377)
!2422 = !DILocation(line: 285, column: 35, scope: !2331, inlinedAt: !2377)
!2423 = !DILocation(line: 285, column: 53, scope: !2331, inlinedAt: !2377)
!2424 = !DILocation(line: 285, column: 71, scope: !2331, inlinedAt: !2377)
!2425 = !DILocation(line: 285, column: 17, scope: !2331, inlinedAt: !2377)
!2426 = !DILocation(line: 286, column: 44, scope: !2331, inlinedAt: !2377)
!2427 = !DILocation(line: 286, column: 42, scope: !2331, inlinedAt: !2377)
!2428 = !DILocation(line: 286, column: 17, scope: !2331, inlinedAt: !2377)
!2429 = !DILocation(line: 287, column: 17, scope: !2331, inlinedAt: !2377)
!2430 = !DILocation(line: 289, column: 3, scope: !2332, inlinedAt: !2377)
!2431 = !DILocation(line: 0, scope: !2355, inlinedAt: !2377)
!2432 = !DILocation(line: 292, column: 10, scope: !2358, inlinedAt: !2377)
!2433 = !DILocation(line: 292, column: 8, scope: !2355, inlinedAt: !2377)
!2434 = !DILocation(line: 298, column: 7, scope: !2357, inlinedAt: !2377)
!2435 = !DILocation(line: 299, column: 7, scope: !2357, inlinedAt: !2377)
!2436 = !DILocation(line: 307, column: 17, scope: !2366, inlinedAt: !2377)
!2437 = !DILocation(line: 307, column: 7, scope: !2367, inlinedAt: !2377)
!2438 = !DILocation(line: 308, column: 34, scope: !2365, inlinedAt: !2377)
!2439 = !DILocation(line: 308, column: 33, scope: !2365, inlinedAt: !2377)
!2440 = !DILocation(line: 308, column: 36, scope: !2365, inlinedAt: !2377)
!2441 = !DILocation(line: 308, column: 46, scope: !2365, inlinedAt: !2377)
!2442 = !DILocation(line: 308, column: 49, scope: !2365, inlinedAt: !2377)
!2443 = !DILocation(line: 308, column: 38, scope: !2365, inlinedAt: !2377)
!2444 = !DILocation(line: 0, scope: !2365, inlinedAt: !2377)
!2445 = !DILocation(line: 309, column: 15, scope: !2365, inlinedAt: !2377)
!2446 = !DILocation(line: 310, column: 26, scope: !2365, inlinedAt: !2377)
!2447 = !DILocation(line: 310, column: 24, scope: !2365, inlinedAt: !2377)
!2448 = !DILocation(line: 310, column: 39, scope: !2365, inlinedAt: !2377)
!2449 = !DILocation(line: 310, column: 51, scope: !2365, inlinedAt: !2377)
!2450 = !DILocation(line: 310, column: 57, scope: !2365, inlinedAt: !2377)
!2451 = !DILocation(line: 310, column: 63, scope: !2365, inlinedAt: !2377)
!2452 = !DILocation(line: 310, column: 37, scope: !2365, inlinedAt: !2377)
!2453 = !DILocation(line: 310, column: 15, scope: !2365, inlinedAt: !2377)
!2454 = !DILocation(line: 311, column: 17, scope: !2365, inlinedAt: !2377)
!2455 = !DILocation(line: 312, column: 17, scope: !2365, inlinedAt: !2377)
!2456 = !DILocation(line: 307, column: 23, scope: !2366, inlinedAt: !2377)
!2457 = distinct !{!2457, !2437, !2458, !552}
!2458 = !DILocation(line: 313, column: 7, scope: !2367, inlinedAt: !2377)
!2459 = !DILocation(line: 315, column: 35, scope: !2357, inlinedAt: !2377)
!2460 = !DILocation(line: 315, column: 19, scope: !2357, inlinedAt: !2377)
!2461 = !DILocation(line: 316, column: 19, scope: !2357, inlinedAt: !2377)
!2462 = !DILocation(line: 318, column: 20, scope: !2370, inlinedAt: !2377)
!2463 = !DILocation(line: 318, column: 10, scope: !2357, inlinedAt: !2377)
!2464 = !DILocation(line: 319, column: 9, scope: !2369, inlinedAt: !2377)
!2465 = !DILocation(line: 320, column: 43, scope: !2369, inlinedAt: !2377)
!2466 = !DILocation(line: 320, column: 22, scope: !2369, inlinedAt: !2377)
!2467 = !DILocation(line: 321, column: 32, scope: !2369, inlinedAt: !2377)
!2468 = !DILocation(line: 321, column: 36, scope: !2369, inlinedAt: !2377)
!2469 = !DILocation(line: 322, column: 32, scope: !2369, inlinedAt: !2377)
!2470 = !DILocation(line: 322, column: 38, scope: !2369, inlinedAt: !2377)
!2471 = !DILocation(line: 322, column: 36, scope: !2369, inlinedAt: !2377)
!2472 = !DILocation(line: 322, column: 75, scope: !2369, inlinedAt: !2377)
!2473 = !DILocation(line: 322, column: 73, scope: !2369, inlinedAt: !2377)
!2474 = !DILocation(line: 322, column: 49, scope: !2369, inlinedAt: !2377)
!2475 = !DILocation(line: 323, column: 33, scope: !2369, inlinedAt: !2377)
!2476 = !DILocation(line: 323, column: 44, scope: !2369, inlinedAt: !2377)
!2477 = !DILocation(line: 323, column: 37, scope: !2369, inlinedAt: !2377)
!2478 = !DILocation(line: 323, column: 48, scope: !2369, inlinedAt: !2377)
!2479 = !DILocation(line: 324, column: 33, scope: !2369, inlinedAt: !2377)
!2480 = !DILocation(line: 324, column: 53, scope: !2369, inlinedAt: !2377)
!2481 = !DILocation(line: 324, column: 39, scope: !2369, inlinedAt: !2377)
!2482 = !DILocation(line: 324, column: 37, scope: !2369, inlinedAt: !2377)
!2483 = !DILocation(line: 325, column: 33, scope: !2369, inlinedAt: !2377)
!2484 = !DILocation(line: 325, column: 53, scope: !2369, inlinedAt: !2377)
!2485 = !DILocation(line: 325, column: 39, scope: !2369, inlinedAt: !2377)
!2486 = !DILocation(line: 325, column: 37, scope: !2369, inlinedAt: !2377)
!2487 = !DILocation(line: 325, column: 26, scope: !2369, inlinedAt: !2377)
!2488 = !DILocation(line: 326, column: 28, scope: !2369, inlinedAt: !2377)
!2489 = !DILocation(line: 326, column: 54, scope: !2369, inlinedAt: !2377)
!2490 = !DILocation(line: 326, column: 26, scope: !2369, inlinedAt: !2377)
!2491 = !DILocation(line: 327, column: 52, scope: !2369, inlinedAt: !2377)
!2492 = !DILocation(line: 327, column: 50, scope: !2369, inlinedAt: !2377)
!2493 = !DILocation(line: 327, column: 26, scope: !2369, inlinedAt: !2377)
!2494 = !DILocation(line: 329, column: 32, scope: !2369, inlinedAt: !2377)
!2495 = !DILocation(line: 330, column: 24, scope: !2369, inlinedAt: !2377)
!2496 = !DILocation(line: 330, column: 38, scope: !2369, inlinedAt: !2377)
!2497 = !DILocation(line: 330, column: 60, scope: !2369, inlinedAt: !2377)
!2498 = !DILocation(line: 330, column: 50, scope: !2369, inlinedAt: !2377)
!2499 = !DILocation(line: 331, column: 50, scope: !2369, inlinedAt: !2377)
!2500 = !DILocation(line: 331, column: 46, scope: !2369, inlinedAt: !2377)
!2501 = !DILocation(line: 331, column: 58, scope: !2369, inlinedAt: !2377)
!2502 = !DILocation(line: 331, column: 56, scope: !2369, inlinedAt: !2377)
!2503 = !DILocation(line: 331, column: 21, scope: !2369, inlinedAt: !2377)
!2504 = !DILocation(line: 332, column: 21, scope: !2369, inlinedAt: !2377)
!2505 = !DILocation(line: 334, column: 7, scope: !2370, inlinedAt: !2377)
!2506 = !DILocation(line: 0, scope: !2370, inlinedAt: !2377)
!2507 = !DILocation(line: 340, column: 5, scope: !2358, inlinedAt: !2377)
!2508 = !DILocation(line: 0, scope: !2332, inlinedAt: !2377)
!2509 = !DILocation(line: 721, column: 17, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 721, column: 8)
!2511 = !DILocation(line: 721, column: 8, scope: !2510)
!2512 = !DILocation(line: 721, column: 23, scope: !2510)
!2513 = !DILocation(line: 721, column: 8, scope: !2250)
!2514 = !DILocalVariable(name: "gamr", scope: !2515, file: !2, line: 357, type: !163)
!2515 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_stable", scope: !2, file: !2, line: 349, type: !2516, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!40, !40, !78, !78, !78, !78, !78, !78, !163, !1062}
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2514, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2566, !2567, !2568}
!2519 = !DILocalVariable(name: "N", arg: 1, scope: !2515, file: !2, line: 349, type: !40)
!2520 = !DILocalVariable(name: "a", arg: 2, scope: !2515, file: !2, line: 349, type: !78)
!2521 = !DILocalVariable(name: "bint", arg: 3, scope: !2515, file: !2, line: 349, type: !78)
!2522 = !DILocalVariable(name: "b", arg: 4, scope: !2515, file: !2, line: 349, type: !78)
!2523 = !DILocalVariable(name: "beps", arg: 5, scope: !2515, file: !2, line: 349, type: !78)
!2524 = !DILocalVariable(name: "x", arg: 6, scope: !2515, file: !2, line: 349, type: !78)
!2525 = !DILocalVariable(name: "xeps", arg: 7, scope: !2515, file: !2, line: 349, type: !78)
!2526 = !DILocalVariable(name: "sum", arg: 8, scope: !2515, file: !2, line: 349, type: !163)
!2527 = !DILocalVariable(name: "result", arg: 9, scope: !2515, file: !2, line: 350, type: !1062)
!2528 = !DILocalVariable(name: "EPS", scope: !2515, file: !2, line: 352, type: !92)
!2529 = !DILocalVariable(name: "istrt", scope: !2515, file: !2, line: 354, type: !40)
!2530 = !DILocalVariable(name: "xi", scope: !2515, file: !2, line: 355, type: !78)
!2531 = !DILocalVariable(name: "powx", scope: !2515, file: !2, line: 358, type: !163)
!2532 = !DILocalVariable(name: "stat_gamr", scope: !2515, file: !2, line: 359, type: !40)
!2533 = !DILocalVariable(name: "stat_powx", scope: !2515, file: !2, line: 360, type: !40)
!2534 = !DILocalVariable(name: "sarg", scope: !2515, file: !2, line: 361, type: !78)
!2535 = !DILocalVariable(name: "sfact", scope: !2515, file: !2, line: 362, type: !78)
!2536 = !DILocalVariable(name: "factor_val", scope: !2515, file: !2, line: 363, type: !78)
!2537 = !DILocalVariable(name: "factor_err", scope: !2515, file: !2, line: 364, type: !78)
!2538 = !DILocalVariable(name: "pochai", scope: !2515, file: !2, line: 367, type: !163)
!2539 = !DILocalVariable(name: "gamri1", scope: !2515, file: !2, line: 368, type: !163)
!2540 = !DILocalVariable(name: "gamrni", scope: !2515, file: !2, line: 369, type: !163)
!2541 = !DILocalVariable(name: "stat_pochai", scope: !2515, file: !2, line: 370, type: !40)
!2542 = !DILocalVariable(name: "stat_gamri1", scope: !2515, file: !2, line: 371, type: !40)
!2543 = !DILocalVariable(name: "stat_gamrni", scope: !2515, file: !2, line: 372, type: !40)
!2544 = !DILocalVariable(name: "stat_gam123", scope: !2515, file: !2, line: 373, type: !40)
!2545 = !DILocalVariable(name: "stat_gamall", scope: !2515, file: !2, line: 374, type: !40)
!2546 = !DILocalVariable(name: "pochaxibeps", scope: !2515, file: !2, line: 376, type: !163)
!2547 = !DILocalVariable(name: "gamrxi1beps", scope: !2515, file: !2, line: 377, type: !163)
!2548 = !DILocalVariable(name: "stat_pochaxibeps", scope: !2515, file: !2, line: 378, type: !40)
!2549 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !2515, file: !2, line: 379, type: !40)
!2550 = !DILocalVariable(name: "stat_all", scope: !2515, file: !2, line: 381, type: !40)
!2551 = !DILocalVariable(name: "b0_val", scope: !2515, file: !2, line: 383, type: !78)
!2552 = !DILocalVariable(name: "b0_err", scope: !2515, file: !2, line: 384, type: !78)
!2553 = !DILocalVariable(name: "i", scope: !2515, file: !2, line: 394, type: !40)
!2554 = !DILocalVariable(name: "dchu_val", scope: !2515, file: !2, line: 395, type: !78)
!2555 = !DILocalVariable(name: "dchu_err", scope: !2515, file: !2, line: 396, type: !78)
!2556 = !DILocalVariable(name: "t_val", scope: !2515, file: !2, line: 397, type: !78)
!2557 = !DILocalVariable(name: "t_err", scope: !2515, file: !2, line: 398, type: !78)
!2558 = !DILocalVariable(name: "dgamrbxi", scope: !2515, file: !2, line: 399, type: !163)
!2559 = !DILocalVariable(name: "stat_dgamrbxi", scope: !2515, file: !2, line: 400, type: !40)
!2560 = !DILocalVariable(name: "a0_val", scope: !2515, file: !2, line: 401, type: !78)
!2561 = !DILocalVariable(name: "a0_err", scope: !2515, file: !2, line: 402, type: !78)
!2562 = !DILocalVariable(name: "xi", scope: !2563, file: !2, line: 416, type: !78)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 415, column: 29)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 415, column: 7)
!2565 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 415, column: 7)
!2566 = !DILocalVariable(name: "xi1", scope: !2563, file: !2, line: 417, type: !78)
!2567 = !DILocalVariable(name: "a0_multiplier", scope: !2563, file: !2, line: 418, type: !78)
!2568 = !DILocalVariable(name: "b0_multiplier", scope: !2563, file: !2, line: 419, type: !78)
!2569 = !DILocation(line: 0, scope: !2515, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 722, column: 18, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 721, column: 31)
!2572 = !DILocation(line: 354, column: 19, scope: !2515, inlinedAt: !2570)
!2573 = !DILocation(line: 355, column: 17, scope: !2515, inlinedAt: !2570)
!2574 = !DILocation(line: 357, column: 5, scope: !2515, inlinedAt: !2570)
!2575 = !DILocation(line: 358, column: 5, scope: !2515, inlinedAt: !2570)
!2576 = !DILocation(line: 359, column: 21, scope: !2515, inlinedAt: !2570)
!2577 = !DILocation(line: 360, column: 21, scope: !2515, inlinedAt: !2570)
!2578 = !DILocation(line: 361, column: 25, scope: !2515, inlinedAt: !2570)
!2579 = !DILocation(line: 362, column: 28, scope: !2515, inlinedAt: !2570)
!2580 = !DILocation(line: 362, column: 23, scope: !2515, inlinedAt: !2570)
!2581 = !DILocation(line: 362, column: 42, scope: !2515, inlinedAt: !2570)
!2582 = !DILocation(line: 362, column: 41, scope: !2515, inlinedAt: !2570)
!2583 = !DILocation(line: 363, column: 35, scope: !2515, inlinedAt: !2570)
!2584 = !DILocation(line: 363, column: 31, scope: !2515, inlinedAt: !2570)
!2585 = !DILocation(line: 363, column: 71, scope: !2515, inlinedAt: !2570)
!2586 = !DILocation(line: 363, column: 64, scope: !2515, inlinedAt: !2570)
!2587 = !DILocation(line: 363, column: 82, scope: !2515, inlinedAt: !2570)
!2588 = !DILocation(line: 363, column: 75, scope: !2515, inlinedAt: !2570)
!2589 = !DILocation(line: 364, column: 25, scope: !2515, inlinedAt: !2570)
!2590 = !DILocation(line: 364, column: 47, scope: !2515, inlinedAt: !2570)
!2591 = !DILocation(line: 364, column: 40, scope: !2515, inlinedAt: !2570)
!2592 = !DILocation(line: 364, column: 53, scope: !2515, inlinedAt: !2570)
!2593 = !DILocation(line: 364, column: 75, scope: !2515, inlinedAt: !2570)
!2594 = !DILocation(line: 364, column: 68, scope: !2515, inlinedAt: !2570)
!2595 = !DILocation(line: 364, column: 51, scope: !2515, inlinedAt: !2570)
!2596 = !DILocation(line: 365, column: 49, scope: !2515, inlinedAt: !2570)
!2597 = !DILocation(line: 365, column: 47, scope: !2515, inlinedAt: !2570)
!2598 = !DILocation(line: 365, column: 23, scope: !2515, inlinedAt: !2570)
!2599 = !DILocation(line: 367, column: 5, scope: !2515, inlinedAt: !2570)
!2600 = !DILocation(line: 368, column: 5, scope: !2515, inlinedAt: !2570)
!2601 = !DILocation(line: 369, column: 5, scope: !2515, inlinedAt: !2570)
!2602 = !DILocation(line: 370, column: 23, scope: !2515, inlinedAt: !2570)
!2603 = !DILocation(line: 371, column: 44, scope: !2515, inlinedAt: !2570)
!2604 = !DILocation(line: 371, column: 23, scope: !2515, inlinedAt: !2570)
!2605 = !DILocation(line: 372, column: 46, scope: !2515, inlinedAt: !2570)
!2606 = !DILocation(line: 372, column: 23, scope: !2515, inlinedAt: !2570)
!2607 = !DILocation(line: 373, column: 23, scope: !2515, inlinedAt: !2570)
!2608 = !DILocation(line: 374, column: 23, scope: !2515, inlinedAt: !2570)
!2609 = !DILocation(line: 376, column: 5, scope: !2515, inlinedAt: !2570)
!2610 = !DILocation(line: 377, column: 5, scope: !2515, inlinedAt: !2570)
!2611 = !DILocation(line: 378, column: 47, scope: !2515, inlinedAt: !2570)
!2612 = !DILocation(line: 378, column: 28, scope: !2515, inlinedAt: !2570)
!2613 = !DILocation(line: 379, column: 55, scope: !2515, inlinedAt: !2570)
!2614 = !DILocation(line: 379, column: 28, scope: !2515, inlinedAt: !2570)
!2615 = !DILocation(line: 381, column: 20, scope: !2515, inlinedAt: !2570)
!2616 = !DILocation(line: 383, column: 46, scope: !2515, inlinedAt: !2570)
!2617 = !DILocation(line: 383, column: 32, scope: !2515, inlinedAt: !2570)
!2618 = !DILocation(line: 383, column: 59, scope: !2515, inlinedAt: !2570)
!2619 = !DILocation(line: 383, column: 50, scope: !2515, inlinedAt: !2570)
!2620 = !DILocation(line: 383, column: 77, scope: !2515, inlinedAt: !2570)
!2621 = !DILocation(line: 383, column: 63, scope: !2515, inlinedAt: !2570)
!2622 = !DILocation(line: 384, column: 22, scope: !2515, inlinedAt: !2570)
!2623 = !DILocation(line: 384, column: 84, scope: !2515, inlinedAt: !2570)
!2624 = !DILocation(line: 384, column: 70, scope: !2515, inlinedAt: !2570)
!2625 = !DILocation(line: 385, column: 56, scope: !2515, inlinedAt: !2570)
!2626 = !DILocation(line: 385, column: 22, scope: !2515, inlinedAt: !2570)
!2627 = !DILocation(line: 385, column: 84, scope: !2515, inlinedAt: !2570)
!2628 = !DILocation(line: 385, column: 75, scope: !2515, inlinedAt: !2570)
!2629 = !DILocation(line: 385, column: 20, scope: !2515, inlinedAt: !2570)
!2630 = !DILocation(line: 386, column: 38, scope: !2515, inlinedAt: !2570)
!2631 = !DILocation(line: 386, column: 51, scope: !2515, inlinedAt: !2570)
!2632 = !DILocation(line: 386, column: 22, scope: !2515, inlinedAt: !2570)
!2633 = !DILocation(line: 386, column: 84, scope: !2515, inlinedAt: !2570)
!2634 = !DILocation(line: 386, column: 70, scope: !2515, inlinedAt: !2570)
!2635 = !DILocation(line: 386, column: 20, scope: !2515, inlinedAt: !2570)
!2636 = !DILocation(line: 387, column: 43, scope: !2515, inlinedAt: !2570)
!2637 = !DILocation(line: 387, column: 56, scope: !2515, inlinedAt: !2570)
!2638 = !DILocation(line: 387, column: 22, scope: !2515, inlinedAt: !2570)
!2639 = !DILocation(line: 387, column: 75, scope: !2515, inlinedAt: !2570)
!2640 = !DILocation(line: 387, column: 20, scope: !2515, inlinedAt: !2570)
!2641 = !DILocation(line: 388, column: 46, scope: !2515, inlinedAt: !2570)
!2642 = !DILocation(line: 388, column: 44, scope: !2515, inlinedAt: !2570)
!2643 = !DILocation(line: 388, column: 20, scope: !2515, inlinedAt: !2570)
!2644 = !DILocation(line: 399, column: 7, scope: !2515, inlinedAt: !2570)
!2645 = !DILocation(line: 400, column: 46, scope: !2515, inlinedAt: !2570)
!2646 = !DILocation(line: 400, column: 27, scope: !2515, inlinedAt: !2570)
!2647 = !DILocation(line: 401, column: 43, scope: !2515, inlinedAt: !2570)
!2648 = !DILocation(line: 401, column: 34, scope: !2515, inlinedAt: !2570)
!2649 = !DILocation(line: 401, column: 58, scope: !2515, inlinedAt: !2570)
!2650 = !DILocation(line: 401, column: 47, scope: !2515, inlinedAt: !2570)
!2651 = !DILocation(line: 401, column: 71, scope: !2515, inlinedAt: !2570)
!2652 = !DILocation(line: 401, column: 62, scope: !2515, inlinedAt: !2570)
!2653 = !DILocation(line: 401, column: 75, scope: !2515, inlinedAt: !2570)
!2654 = !DILocation(line: 402, column: 68, scope: !2515, inlinedAt: !2570)
!2655 = !DILocation(line: 402, column: 24, scope: !2515, inlinedAt: !2570)
!2656 = !DILocation(line: 402, column: 85, scope: !2515, inlinedAt: !2570)
!2657 = !DILocation(line: 402, column: 76, scope: !2515, inlinedAt: !2570)
!2658 = !DILocation(line: 403, column: 53, scope: !2515, inlinedAt: !2570)
!2659 = !DILocation(line: 403, column: 66, scope: !2515, inlinedAt: !2570)
!2660 = !DILocation(line: 403, column: 24, scope: !2515, inlinedAt: !2570)
!2661 = !DILocation(line: 403, column: 85, scope: !2515, inlinedAt: !2570)
!2662 = !DILocation(line: 403, column: 74, scope: !2515, inlinedAt: !2570)
!2663 = !DILocation(line: 403, column: 22, scope: !2515, inlinedAt: !2570)
!2664 = !DILocation(line: 404, column: 40, scope: !2515, inlinedAt: !2570)
!2665 = !DILocation(line: 404, column: 55, scope: !2515, inlinedAt: !2570)
!2666 = !DILocation(line: 404, column: 68, scope: !2515, inlinedAt: !2570)
!2667 = !DILocation(line: 404, column: 24, scope: !2515, inlinedAt: !2570)
!2668 = !DILocation(line: 404, column: 85, scope: !2515, inlinedAt: !2570)
!2669 = !DILocation(line: 404, column: 76, scope: !2515, inlinedAt: !2570)
!2670 = !DILocation(line: 404, column: 22, scope: !2515, inlinedAt: !2570)
!2671 = !DILocation(line: 405, column: 40, scope: !2515, inlinedAt: !2570)
!2672 = !DILocation(line: 405, column: 55, scope: !2515, inlinedAt: !2570)
!2673 = !DILocation(line: 405, column: 68, scope: !2515, inlinedAt: !2570)
!2674 = !DILocation(line: 405, column: 24, scope: !2515, inlinedAt: !2570)
!2675 = !DILocation(line: 405, column: 76, scope: !2515, inlinedAt: !2570)
!2676 = !DILocation(line: 405, column: 22, scope: !2515, inlinedAt: !2570)
!2677 = !DILocation(line: 406, column: 48, scope: !2515, inlinedAt: !2570)
!2678 = !DILocation(line: 406, column: 46, scope: !2515, inlinedAt: !2570)
!2679 = !DILocation(line: 406, column: 22, scope: !2515, inlinedAt: !2570)
!2680 = !DILocation(line: 407, column: 18, scope: !2515, inlinedAt: !2570)
!2681 = !DILocation(line: 409, column: 21, scope: !2515, inlinedAt: !2570)
!2682 = !DILocation(line: 409, column: 30, scope: !2515, inlinedAt: !2570)
!2683 = !DILocation(line: 410, column: 26, scope: !2515, inlinedAt: !2570)
!2684 = !DILocation(line: 410, column: 16, scope: !2515, inlinedAt: !2570)
!2685 = !DILocation(line: 410, column: 34, scope: !2515, inlinedAt: !2570)
!2686 = !DILocation(line: 410, column: 69, scope: !2515, inlinedAt: !2570)
!2687 = !DILocation(line: 410, column: 67, scope: !2515, inlinedAt: !2570)
!2688 = !DILocation(line: 410, column: 43, scope: !2515, inlinedAt: !2570)
!2689 = !DILocation(line: 411, column: 26, scope: !2515, inlinedAt: !2570)
!2690 = !DILocation(line: 411, column: 35, scope: !2515, inlinedAt: !2570)
!2691 = !DILocation(line: 412, column: 26, scope: !2515, inlinedAt: !2570)
!2692 = !DILocation(line: 412, column: 35, scope: !2515, inlinedAt: !2570)
!2693 = !DILocation(line: 413, column: 36, scope: !2515, inlinedAt: !2570)
!2694 = !DILocation(line: 413, column: 50, scope: !2515, inlinedAt: !2570)
!2695 = !DILocation(line: 413, column: 65, scope: !2515, inlinedAt: !2570)
!2696 = !DILocation(line: 413, column: 33, scope: !2515, inlinedAt: !2570)
!2697 = !DILocation(line: 413, column: 9, scope: !2515, inlinedAt: !2570)
!2698 = !DILocation(line: 415, column: 7, scope: !2565, inlinedAt: !2570)
!2699 = !DILocation(line: 416, column: 27, scope: !2563, inlinedAt: !2570)
!2700 = !DILocation(line: 416, column: 21, scope: !2563, inlinedAt: !2570)
!2701 = !DILocation(line: 0, scope: !2563, inlinedAt: !2570)
!2702 = !DILocation(line: 417, column: 32, scope: !2563, inlinedAt: !2570)
!2703 = !DILocation(line: 417, column: 22, scope: !2563, inlinedAt: !2570)
!2704 = !DILocation(line: 418, column: 34, scope: !2563, inlinedAt: !2570)
!2705 = !DILocation(line: 418, column: 39, scope: !2563, inlinedAt: !2570)
!2706 = !DILocation(line: 418, column: 45, scope: !2563, inlinedAt: !2570)
!2707 = !DILocation(line: 418, column: 50, scope: !2563, inlinedAt: !2570)
!2708 = !DILocation(line: 418, column: 41, scope: !2563, inlinedAt: !2570)
!2709 = !DILocation(line: 419, column: 38, scope: !2563, inlinedAt: !2570)
!2710 = !DILocation(line: 419, column: 44, scope: !2563, inlinedAt: !2570)
!2711 = !DILocation(line: 419, column: 53, scope: !2563, inlinedAt: !2570)
!2712 = !DILocation(line: 419, column: 62, scope: !2563, inlinedAt: !2570)
!2713 = !DILocation(line: 419, column: 58, scope: !2563, inlinedAt: !2570)
!2714 = !DILocation(line: 419, column: 46, scope: !2563, inlinedAt: !2570)
!2715 = !DILocation(line: 420, column: 16, scope: !2563, inlinedAt: !2570)
!2716 = !DILocation(line: 421, column: 19, scope: !2563, inlinedAt: !2570)
!2717 = !DILocation(line: 421, column: 39, scope: !2563, inlinedAt: !2570)
!2718 = !DILocation(line: 421, column: 16, scope: !2563, inlinedAt: !2570)
!2719 = !DILocation(line: 422, column: 16, scope: !2563, inlinedAt: !2570)
!2720 = !DILocation(line: 423, column: 19, scope: !2563, inlinedAt: !2570)
!2721 = !DILocation(line: 423, column: 39, scope: !2563, inlinedAt: !2570)
!2722 = !DILocation(line: 423, column: 16, scope: !2563, inlinedAt: !2570)
!2723 = !DILocation(line: 424, column: 24, scope: !2563, inlinedAt: !2570)
!2724 = !DILocation(line: 425, column: 24, scope: !2563, inlinedAt: !2570)
!2725 = !DILocation(line: 426, column: 18, scope: !2563, inlinedAt: !2570)
!2726 = !DILocation(line: 427, column: 18, scope: !2563, inlinedAt: !2570)
!2727 = !DILocation(line: 428, column: 12, scope: !2728, inlinedAt: !2570)
!2728 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 428, column: 12)
!2729 = !DILocation(line: 428, column: 30, scope: !2728, inlinedAt: !2570)
!2730 = !DILocation(line: 428, column: 29, scope: !2728, inlinedAt: !2570)
!2731 = !DILocation(line: 428, column: 24, scope: !2728, inlinedAt: !2570)
!2732 = !DILocation(line: 415, column: 25, scope: !2564, inlinedAt: !2570)
!2733 = !DILocation(line: 415, column: 17, scope: !2564, inlinedAt: !2570)
!2734 = distinct !{!2734, !2698, !2735, !552}
!2735 = !DILocation(line: 429, column: 7, scope: !2565, inlinedAt: !2570)
!2736 = !DILocation(line: 415, scope: !2565, inlinedAt: !2570)
!2737 = !DILocation(line: 431, column: 20, scope: !2515, inlinedAt: !2570)
!2738 = !DILocation(line: 432, column: 26, scope: !2515, inlinedAt: !2570)
!2739 = !DILocation(line: 432, column: 15, scope: !2515, inlinedAt: !2570)
!2740 = !DILocation(line: 433, column: 26, scope: !2515, inlinedAt: !2570)
!2741 = !DILocation(line: 433, column: 19, scope: !2515, inlinedAt: !2570)
!2742 = !DILocation(line: 434, column: 48, scope: !2515, inlinedAt: !2570)
!2743 = !DILocation(line: 434, column: 44, scope: !2515, inlinedAt: !2570)
!2744 = !DILocation(line: 434, column: 54, scope: !2515, inlinedAt: !2570)
!2745 = !DILocation(line: 434, column: 19, scope: !2515, inlinedAt: !2570)
!2746 = !DILocation(line: 435, column: 19, scope: !2515, inlinedAt: !2570)
!2747 = !DILocation(line: 437, column: 12, scope: !2748, inlinedAt: !2570)
!2748 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 437, column: 10)
!2749 = !DILocation(line: 437, column: 10, scope: !2515, inlinedAt: !2570)
!2750 = !DILocation(line: 438, column: 9, scope: !2751, inlinedAt: !2570)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 438, column: 9)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 437, column: 21)
!2753 = !DILocation(line: 0, scope: !2748, inlinedAt: !2570)
!2754 = !DILocation(line: 443, column: 1, scope: !2515, inlinedAt: !2570)
!2755 = !DILocation(line: 723, column: 5, scope: !2571)
!2756 = !DILocation(line: 723, column: 22, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 723, column: 16)
!2758 = !DILocation(line: 723, column: 26, scope: !2757)
!2759 = !DILocation(line: 723, column: 36, scope: !2757)
!2760 = !DILocation(line: 723, column: 34, scope: !2757)
!2761 = !DILocation(line: 723, column: 49, scope: !2757)
!2762 = !DILocalVariable(name: "powx", scope: !2763, file: !2, line: 455, type: !163)
!2763 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_simple", scope: !2, file: !2, line: 447, type: !2516, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2764)
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2762, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2813, !2814, !2815}
!2765 = !DILocalVariable(name: "N", arg: 1, scope: !2763, file: !2, line: 447, type: !40)
!2766 = !DILocalVariable(name: "a", arg: 2, scope: !2763, file: !2, line: 447, type: !78)
!2767 = !DILocalVariable(name: "bint", arg: 3, scope: !2763, file: !2, line: 447, type: !78)
!2768 = !DILocalVariable(name: "b", arg: 4, scope: !2763, file: !2, line: 447, type: !78)
!2769 = !DILocalVariable(name: "beps", arg: 5, scope: !2763, file: !2, line: 447, type: !78)
!2770 = !DILocalVariable(name: "x", arg: 6, scope: !2763, file: !2, line: 447, type: !78)
!2771 = !DILocalVariable(name: "xeps", arg: 7, scope: !2763, file: !2, line: 447, type: !78)
!2772 = !DILocalVariable(name: "sum", arg: 8, scope: !2763, file: !2, line: 447, type: !163)
!2773 = !DILocalVariable(name: "result", arg: 9, scope: !2763, file: !2, line: 448, type: !1062)
!2774 = !DILocalVariable(name: "EPS", scope: !2763, file: !2, line: 450, type: !92)
!2775 = !DILocalVariable(name: "istrt", scope: !2763, file: !2, line: 452, type: !40)
!2776 = !DILocalVariable(name: "xi", scope: !2763, file: !2, line: 453, type: !78)
!2777 = !DILocalVariable(name: "stat_powx", scope: !2763, file: !2, line: 456, type: !40)
!2778 = !DILocalVariable(name: "sarg", scope: !2763, file: !2, line: 457, type: !78)
!2779 = !DILocalVariable(name: "sfact", scope: !2763, file: !2, line: 458, type: !78)
!2780 = !DILocalVariable(name: "factor_val", scope: !2763, file: !2, line: 459, type: !78)
!2781 = !DILocalVariable(name: "factor_err", scope: !2763, file: !2, line: 460, type: !78)
!2782 = !DILocalVariable(name: "pochai", scope: !2763, file: !2, line: 462, type: !163)
!2783 = !DILocalVariable(name: "gamri1", scope: !2763, file: !2, line: 463, type: !163)
!2784 = !DILocalVariable(name: "gamrni", scope: !2763, file: !2, line: 464, type: !163)
!2785 = !DILocalVariable(name: "stat_pochai", scope: !2763, file: !2, line: 465, type: !40)
!2786 = !DILocalVariable(name: "stat_gamri1", scope: !2763, file: !2, line: 466, type: !40)
!2787 = !DILocalVariable(name: "stat_gamrni", scope: !2763, file: !2, line: 467, type: !40)
!2788 = !DILocalVariable(name: "stat_gam123", scope: !2763, file: !2, line: 468, type: !40)
!2789 = !DILocalVariable(name: "stat_gamall", scope: !2763, file: !2, line: 469, type: !40)
!2790 = !DILocalVariable(name: "pochaxibeps", scope: !2763, file: !2, line: 471, type: !163)
!2791 = !DILocalVariable(name: "gamrxi1beps", scope: !2763, file: !2, line: 472, type: !163)
!2792 = !DILocalVariable(name: "stat_pochaxibeps", scope: !2763, file: !2, line: 473, type: !40)
!2793 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !2763, file: !2, line: 474, type: !40)
!2794 = !DILocalVariable(name: "stat_all", scope: !2763, file: !2, line: 476, type: !40)
!2795 = !DILocalVariable(name: "X", scope: !2763, file: !2, line: 478, type: !78)
!2796 = !DILocalVariable(name: "b0_val", scope: !2763, file: !2, line: 480, type: !78)
!2797 = !DILocalVariable(name: "b0_err", scope: !2763, file: !2, line: 481, type: !78)
!2798 = !DILocalVariable(name: "i", scope: !2763, file: !2, line: 491, type: !40)
!2799 = !DILocalVariable(name: "dchu_val", scope: !2763, file: !2, line: 492, type: !78)
!2800 = !DILocalVariable(name: "dchu_err", scope: !2763, file: !2, line: 493, type: !78)
!2801 = !DILocalVariable(name: "t_val", scope: !2763, file: !2, line: 494, type: !78)
!2802 = !DILocalVariable(name: "t_err", scope: !2763, file: !2, line: 495, type: !78)
!2803 = !DILocalVariable(name: "gamr", scope: !2763, file: !2, line: 496, type: !163)
!2804 = !DILocalVariable(name: "dgamrbxi", scope: !2763, file: !2, line: 497, type: !163)
!2805 = !DILocalVariable(name: "stat_gamr", scope: !2763, file: !2, line: 498, type: !40)
!2806 = !DILocalVariable(name: "stat_dgamrbxi", scope: !2763, file: !2, line: 499, type: !40)
!2807 = !DILocalVariable(name: "a0_val", scope: !2763, file: !2, line: 500, type: !78)
!2808 = !DILocalVariable(name: "a0_err", scope: !2763, file: !2, line: 501, type: !78)
!2809 = !DILocalVariable(name: "xi", scope: !2810, file: !2, line: 515, type: !78)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 514, column: 29)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 514, column: 7)
!2812 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 514, column: 7)
!2813 = !DILocalVariable(name: "xi1", scope: !2810, file: !2, line: 516, type: !78)
!2814 = !DILocalVariable(name: "a0_multiplier", scope: !2810, file: !2, line: 517, type: !78)
!2815 = !DILocalVariable(name: "b0_multiplier", scope: !2810, file: !2, line: 518, type: !78)
!2816 = !DILocation(line: 0, scope: !2763, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 724, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 723, column: 63)
!2819 = !DILocation(line: 452, column: 19, scope: !2763, inlinedAt: !2817)
!2820 = !DILocation(line: 453, column: 17, scope: !2763, inlinedAt: !2817)
!2821 = !DILocation(line: 455, column: 5, scope: !2763, inlinedAt: !2817)
!2822 = !DILocation(line: 456, column: 21, scope: !2763, inlinedAt: !2817)
!2823 = !DILocation(line: 457, column: 25, scope: !2763, inlinedAt: !2817)
!2824 = !DILocation(line: 458, column: 28, scope: !2763, inlinedAt: !2817)
!2825 = !DILocation(line: 458, column: 23, scope: !2763, inlinedAt: !2817)
!2826 = !DILocation(line: 458, column: 42, scope: !2763, inlinedAt: !2817)
!2827 = !DILocation(line: 458, column: 41, scope: !2763, inlinedAt: !2817)
!2828 = !DILocation(line: 459, column: 35, scope: !2763, inlinedAt: !2817)
!2829 = !DILocation(line: 459, column: 31, scope: !2763, inlinedAt: !2817)
!2830 = !DILocation(line: 459, column: 71, scope: !2763, inlinedAt: !2817)
!2831 = !DILocation(line: 459, column: 64, scope: !2763, inlinedAt: !2817)
!2832 = !DILocation(line: 460, column: 35, scope: !2763, inlinedAt: !2817)
!2833 = !DILocation(line: 460, column: 25, scope: !2763, inlinedAt: !2817)
!2834 = !DILocation(line: 460, column: 66, scope: !2763, inlinedAt: !2817)
!2835 = !DILocation(line: 460, column: 64, scope: !2763, inlinedAt: !2817)
!2836 = !DILocation(line: 460, column: 40, scope: !2763, inlinedAt: !2817)
!2837 = !DILocation(line: 462, column: 5, scope: !2763, inlinedAt: !2817)
!2838 = !DILocation(line: 463, column: 5, scope: !2763, inlinedAt: !2817)
!2839 = !DILocation(line: 464, column: 5, scope: !2763, inlinedAt: !2817)
!2840 = !DILocation(line: 465, column: 23, scope: !2763, inlinedAt: !2817)
!2841 = !DILocation(line: 466, column: 44, scope: !2763, inlinedAt: !2817)
!2842 = !DILocation(line: 466, column: 23, scope: !2763, inlinedAt: !2817)
!2843 = !DILocation(line: 467, column: 46, scope: !2763, inlinedAt: !2817)
!2844 = !DILocation(line: 467, column: 23, scope: !2763, inlinedAt: !2817)
!2845 = !DILocation(line: 468, column: 23, scope: !2763, inlinedAt: !2817)
!2846 = !DILocation(line: 469, column: 23, scope: !2763, inlinedAt: !2817)
!2847 = !DILocation(line: 471, column: 5, scope: !2763, inlinedAt: !2817)
!2848 = !DILocation(line: 472, column: 5, scope: !2763, inlinedAt: !2817)
!2849 = !DILocation(line: 473, column: 47, scope: !2763, inlinedAt: !2817)
!2850 = !DILocation(line: 473, column: 28, scope: !2763, inlinedAt: !2817)
!2851 = !DILocation(line: 474, column: 55, scope: !2763, inlinedAt: !2817)
!2852 = !DILocation(line: 474, column: 28, scope: !2763, inlinedAt: !2817)
!2853 = !DILocation(line: 476, column: 20, scope: !2763, inlinedAt: !2817)
!2854 = !DILocation(line: 478, column: 63, scope: !2763, inlinedAt: !2817)
!2855 = !DILocation(line: 478, column: 56, scope: !2763, inlinedAt: !2817)
!2856 = !DILocation(line: 478, column: 95, scope: !2763, inlinedAt: !2817)
!2857 = !DILocation(line: 478, column: 99, scope: !2763, inlinedAt: !2817)
!2858 = !DILocation(line: 478, column: 103, scope: !2763, inlinedAt: !2817)
!2859 = !DILocation(line: 478, column: 69, scope: !2763, inlinedAt: !2817)
!2860 = !DILocation(line: 478, column: 67, scope: !2763, inlinedAt: !2817)
!2861 = !DILocation(line: 478, column: 113, scope: !2763, inlinedAt: !2817)
!2862 = !DILocation(line: 478, column: 111, scope: !2763, inlinedAt: !2817)
!2863 = !DILocation(line: 480, column: 32, scope: !2763, inlinedAt: !2817)
!2864 = !DILocation(line: 480, column: 23, scope: !2763, inlinedAt: !2817)
!2865 = !DILocation(line: 480, column: 50, scope: !2763, inlinedAt: !2817)
!2866 = !DILocation(line: 480, column: 36, scope: !2763, inlinedAt: !2817)
!2867 = !DILocation(line: 481, column: 52, scope: !2763, inlinedAt: !2817)
!2868 = !DILocation(line: 481, column: 38, scope: !2763, inlinedAt: !2817)
!2869 = !DILocation(line: 481, column: 56, scope: !2763, inlinedAt: !2817)
!2870 = !DILocation(line: 481, column: 22, scope: !2763, inlinedAt: !2817)
!2871 = !DILocation(line: 481, column: 84, scope: !2763, inlinedAt: !2817)
!2872 = !DILocation(line: 481, column: 70, scope: !2763, inlinedAt: !2817)
!2873 = !DILocation(line: 482, column: 56, scope: !2763, inlinedAt: !2817)
!2874 = !DILocation(line: 482, column: 22, scope: !2763, inlinedAt: !2817)
!2875 = !DILocation(line: 482, column: 84, scope: !2763, inlinedAt: !2817)
!2876 = !DILocation(line: 482, column: 75, scope: !2763, inlinedAt: !2817)
!2877 = !DILocation(line: 482, column: 20, scope: !2763, inlinedAt: !2817)
!2878 = !DILocation(line: 483, column: 38, scope: !2763, inlinedAt: !2817)
!2879 = !DILocation(line: 483, column: 51, scope: !2763, inlinedAt: !2817)
!2880 = !DILocation(line: 483, column: 22, scope: !2763, inlinedAt: !2817)
!2881 = !DILocation(line: 483, column: 84, scope: !2763, inlinedAt: !2817)
!2882 = !DILocation(line: 483, column: 70, scope: !2763, inlinedAt: !2817)
!2883 = !DILocation(line: 483, column: 20, scope: !2763, inlinedAt: !2817)
!2884 = !DILocation(line: 484, column: 43, scope: !2763, inlinedAt: !2817)
!2885 = !DILocation(line: 484, column: 56, scope: !2763, inlinedAt: !2817)
!2886 = !DILocation(line: 484, column: 22, scope: !2763, inlinedAt: !2817)
!2887 = !DILocation(line: 484, column: 75, scope: !2763, inlinedAt: !2817)
!2888 = !DILocation(line: 484, column: 20, scope: !2763, inlinedAt: !2817)
!2889 = !DILocation(line: 485, column: 46, scope: !2763, inlinedAt: !2817)
!2890 = !DILocation(line: 485, column: 44, scope: !2763, inlinedAt: !2817)
!2891 = !DILocation(line: 485, column: 20, scope: !2763, inlinedAt: !2817)
!2892 = !DILocation(line: 496, column: 7, scope: !2763, inlinedAt: !2817)
!2893 = !DILocation(line: 497, column: 7, scope: !2763, inlinedAt: !2817)
!2894 = !DILocation(line: 498, column: 23, scope: !2763, inlinedAt: !2817)
!2895 = !DILocation(line: 499, column: 46, scope: !2763, inlinedAt: !2817)
!2896 = !DILocation(line: 499, column: 27, scope: !2763, inlinedAt: !2817)
!2897 = !DILocation(line: 500, column: 41, scope: !2763, inlinedAt: !2817)
!2898 = !DILocation(line: 500, column: 34, scope: !2763, inlinedAt: !2817)
!2899 = !DILocation(line: 500, column: 54, scope: !2763, inlinedAt: !2817)
!2900 = !DILocation(line: 500, column: 45, scope: !2763, inlinedAt: !2817)
!2901 = !DILocation(line: 500, column: 69, scope: !2763, inlinedAt: !2817)
!2902 = !DILocation(line: 500, column: 58, scope: !2763, inlinedAt: !2817)
!2903 = !DILocation(line: 500, column: 82, scope: !2763, inlinedAt: !2817)
!2904 = !DILocation(line: 500, column: 73, scope: !2763, inlinedAt: !2817)
!2905 = !DILocation(line: 500, column: 86, scope: !2763, inlinedAt: !2817)
!2906 = !DILocation(line: 501, column: 40, scope: !2763, inlinedAt: !2817)
!2907 = !DILocation(line: 501, column: 53, scope: !2763, inlinedAt: !2817)
!2908 = !DILocation(line: 501, column: 68, scope: !2763, inlinedAt: !2817)
!2909 = !DILocation(line: 501, column: 81, scope: !2763, inlinedAt: !2817)
!2910 = !DILocation(line: 501, column: 24, scope: !2763, inlinedAt: !2817)
!2911 = !DILocation(line: 501, column: 96, scope: !2763, inlinedAt: !2817)
!2912 = !DILocation(line: 501, column: 89, scope: !2763, inlinedAt: !2817)
!2913 = !DILocation(line: 502, column: 51, scope: !2763, inlinedAt: !2817)
!2914 = !DILocation(line: 502, column: 66, scope: !2763, inlinedAt: !2817)
!2915 = !DILocation(line: 502, column: 79, scope: !2763, inlinedAt: !2817)
!2916 = !DILocation(line: 502, column: 24, scope: !2763, inlinedAt: !2817)
!2917 = !DILocation(line: 502, column: 96, scope: !2763, inlinedAt: !2817)
!2918 = !DILocation(line: 502, column: 87, scope: !2763, inlinedAt: !2817)
!2919 = !DILocation(line: 502, column: 22, scope: !2763, inlinedAt: !2817)
!2920 = !DILocation(line: 503, column: 64, scope: !2763, inlinedAt: !2817)
!2921 = !DILocation(line: 503, column: 77, scope: !2763, inlinedAt: !2817)
!2922 = !DILocation(line: 503, column: 24, scope: !2763, inlinedAt: !2817)
!2923 = !DILocation(line: 503, column: 96, scope: !2763, inlinedAt: !2817)
!2924 = !DILocation(line: 503, column: 85, scope: !2763, inlinedAt: !2817)
!2925 = !DILocation(line: 503, column: 22, scope: !2763, inlinedAt: !2817)
!2926 = !DILocation(line: 504, column: 79, scope: !2763, inlinedAt: !2817)
!2927 = !DILocation(line: 504, column: 24, scope: !2763, inlinedAt: !2817)
!2928 = !DILocation(line: 504, column: 96, scope: !2763, inlinedAt: !2817)
!2929 = !DILocation(line: 504, column: 87, scope: !2763, inlinedAt: !2817)
!2930 = !DILocation(line: 504, column: 22, scope: !2763, inlinedAt: !2817)
!2931 = !DILocation(line: 505, column: 40, scope: !2763, inlinedAt: !2817)
!2932 = !DILocation(line: 505, column: 51, scope: !2763, inlinedAt: !2817)
!2933 = !DILocation(line: 505, column: 66, scope: !2763, inlinedAt: !2817)
!2934 = !DILocation(line: 505, column: 79, scope: !2763, inlinedAt: !2817)
!2935 = !DILocation(line: 505, column: 24, scope: !2763, inlinedAt: !2817)
!2936 = !DILocation(line: 505, column: 87, scope: !2763, inlinedAt: !2817)
!2937 = !DILocation(line: 505, column: 22, scope: !2763, inlinedAt: !2817)
!2938 = !DILocation(line: 506, column: 48, scope: !2763, inlinedAt: !2817)
!2939 = !DILocation(line: 506, column: 46, scope: !2763, inlinedAt: !2817)
!2940 = !DILocation(line: 506, column: 22, scope: !2763, inlinedAt: !2817)
!2941 = !DILocation(line: 507, column: 18, scope: !2763, inlinedAt: !2817)
!2942 = !DILocation(line: 509, column: 21, scope: !2763, inlinedAt: !2817)
!2943 = !DILocation(line: 509, column: 30, scope: !2763, inlinedAt: !2817)
!2944 = !DILocation(line: 510, column: 26, scope: !2763, inlinedAt: !2817)
!2945 = !DILocation(line: 510, column: 16, scope: !2763, inlinedAt: !2817)
!2946 = !DILocation(line: 510, column: 34, scope: !2763, inlinedAt: !2817)
!2947 = !DILocation(line: 510, column: 69, scope: !2763, inlinedAt: !2817)
!2948 = !DILocation(line: 510, column: 67, scope: !2763, inlinedAt: !2817)
!2949 = !DILocation(line: 510, column: 43, scope: !2763, inlinedAt: !2817)
!2950 = !DILocation(line: 511, column: 26, scope: !2763, inlinedAt: !2817)
!2951 = !DILocation(line: 511, column: 35, scope: !2763, inlinedAt: !2817)
!2952 = !DILocation(line: 512, column: 26, scope: !2763, inlinedAt: !2817)
!2953 = !DILocation(line: 512, column: 35, scope: !2763, inlinedAt: !2817)
!2954 = !DILocation(line: 513, column: 36, scope: !2763, inlinedAt: !2817)
!2955 = !DILocation(line: 513, column: 50, scope: !2763, inlinedAt: !2817)
!2956 = !DILocation(line: 513, column: 65, scope: !2763, inlinedAt: !2817)
!2957 = !DILocation(line: 513, column: 33, scope: !2763, inlinedAt: !2817)
!2958 = !DILocation(line: 513, column: 9, scope: !2763, inlinedAt: !2817)
!2959 = !DILocation(line: 514, column: 7, scope: !2812, inlinedAt: !2817)
!2960 = !DILocation(line: 515, column: 27, scope: !2810, inlinedAt: !2817)
!2961 = !DILocation(line: 515, column: 21, scope: !2810, inlinedAt: !2817)
!2962 = !DILocation(line: 0, scope: !2810, inlinedAt: !2817)
!2963 = !DILocation(line: 516, column: 32, scope: !2810, inlinedAt: !2817)
!2964 = !DILocation(line: 516, column: 22, scope: !2810, inlinedAt: !2817)
!2965 = !DILocation(line: 517, column: 34, scope: !2810, inlinedAt: !2817)
!2966 = !DILocation(line: 517, column: 39, scope: !2810, inlinedAt: !2817)
!2967 = !DILocation(line: 517, column: 45, scope: !2810, inlinedAt: !2817)
!2968 = !DILocation(line: 517, column: 50, scope: !2810, inlinedAt: !2817)
!2969 = !DILocation(line: 517, column: 41, scope: !2810, inlinedAt: !2817)
!2970 = !DILocation(line: 518, column: 38, scope: !2810, inlinedAt: !2817)
!2971 = !DILocation(line: 518, column: 44, scope: !2810, inlinedAt: !2817)
!2972 = !DILocation(line: 518, column: 53, scope: !2810, inlinedAt: !2817)
!2973 = !DILocation(line: 518, column: 62, scope: !2810, inlinedAt: !2817)
!2974 = !DILocation(line: 518, column: 58, scope: !2810, inlinedAt: !2817)
!2975 = !DILocation(line: 518, column: 46, scope: !2810, inlinedAt: !2817)
!2976 = !DILocation(line: 519, column: 16, scope: !2810, inlinedAt: !2817)
!2977 = !DILocation(line: 520, column: 19, scope: !2810, inlinedAt: !2817)
!2978 = !DILocation(line: 520, column: 39, scope: !2810, inlinedAt: !2817)
!2979 = !DILocation(line: 520, column: 16, scope: !2810, inlinedAt: !2817)
!2980 = !DILocation(line: 521, column: 16, scope: !2810, inlinedAt: !2817)
!2981 = !DILocation(line: 522, column: 19, scope: !2810, inlinedAt: !2817)
!2982 = !DILocation(line: 522, column: 39, scope: !2810, inlinedAt: !2817)
!2983 = !DILocation(line: 522, column: 16, scope: !2810, inlinedAt: !2817)
!2984 = !DILocation(line: 523, column: 24, scope: !2810, inlinedAt: !2817)
!2985 = !DILocation(line: 524, column: 24, scope: !2810, inlinedAt: !2817)
!2986 = !DILocation(line: 525, column: 18, scope: !2810, inlinedAt: !2817)
!2987 = !DILocation(line: 526, column: 18, scope: !2810, inlinedAt: !2817)
!2988 = !DILocation(line: 527, column: 13, scope: !2989, inlinedAt: !2817)
!2989 = distinct !DILexicalBlock(scope: !2810, file: !2, line: 527, column: 12)
!2990 = !DILocation(line: 527, column: 31, scope: !2989, inlinedAt: !2817)
!2991 = !DILocation(line: 514, column: 25, scope: !2811, inlinedAt: !2817)
!2992 = !DILocation(line: 514, column: 17, scope: !2811, inlinedAt: !2817)
!2993 = distinct !{!2993, !2959, !2994, !552}
!2994 = !DILocation(line: 528, column: 7, scope: !2812, inlinedAt: !2817)
!2995 = !DILocation(line: 514, scope: !2812, inlinedAt: !2817)
!2996 = !DILocation(line: 530, column: 20, scope: !2763, inlinedAt: !2817)
!2997 = !DILocation(line: 531, column: 26, scope: !2763, inlinedAt: !2817)
!2998 = !DILocation(line: 531, column: 15, scope: !2763, inlinedAt: !2817)
!2999 = !DILocation(line: 532, column: 26, scope: !2763, inlinedAt: !2817)
!3000 = !DILocation(line: 532, column: 19, scope: !2763, inlinedAt: !2817)
!3001 = !DILocation(line: 533, column: 48, scope: !2763, inlinedAt: !2817)
!3002 = !DILocation(line: 533, column: 44, scope: !2763, inlinedAt: !2817)
!3003 = !DILocation(line: 533, column: 54, scope: !2763, inlinedAt: !2817)
!3004 = !DILocation(line: 533, column: 19, scope: !2763, inlinedAt: !2817)
!3005 = !DILocation(line: 534, column: 19, scope: !2763, inlinedAt: !2817)
!3006 = !DILocation(line: 536, column: 12, scope: !3007, inlinedAt: !2817)
!3007 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 536, column: 10)
!3008 = !DILocation(line: 536, column: 10, scope: !2763, inlinedAt: !2817)
!3009 = !DILocation(line: 537, column: 9, scope: !3010, inlinedAt: !2817)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !2, line: 537, column: 9)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 536, column: 21)
!3012 = !DILocation(line: 0, scope: !3007, inlinedAt: !2817)
!3013 = !DILocation(line: 542, column: 1, scope: !2763, inlinedAt: !2817)
!3014 = !DILocation(line: 725, column: 5, scope: !2818)
!3015 = !DILocalVariable(name: "gamr", scope: !3016, file: !2, line: 556, type: !163)
!3016 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_improved", scope: !2, file: !2, line: 547, type: !2516, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3017)
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3015, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3079, !3080, !3081, !3082, !3083}
!3018 = !DILocalVariable(name: "N", arg: 1, scope: !3016, file: !2, line: 547, type: !40)
!3019 = !DILocalVariable(name: "a", arg: 2, scope: !3016, file: !2, line: 547, type: !78)
!3020 = !DILocalVariable(name: "bint", arg: 3, scope: !3016, file: !2, line: 547, type: !78)
!3021 = !DILocalVariable(name: "b", arg: 4, scope: !3016, file: !2, line: 547, type: !78)
!3022 = !DILocalVariable(name: "beps", arg: 5, scope: !3016, file: !2, line: 547, type: !78)
!3023 = !DILocalVariable(name: "x", arg: 6, scope: !3016, file: !2, line: 547, type: !78)
!3024 = !DILocalVariable(name: "xeps", arg: 7, scope: !3016, file: !2, line: 547, type: !78)
!3025 = !DILocalVariable(name: "sum", arg: 8, scope: !3016, file: !2, line: 547, type: !163)
!3026 = !DILocalVariable(name: "result", arg: 9, scope: !3016, file: !2, line: 548, type: !1062)
!3027 = !DILocalVariable(name: "EPS", scope: !3016, file: !2, line: 550, type: !92)
!3028 = !DILocalVariable(name: "lnx", scope: !3016, file: !2, line: 551, type: !92)
!3029 = !DILocalVariable(name: "istrt", scope: !3016, file: !2, line: 553, type: !40)
!3030 = !DILocalVariable(name: "xi", scope: !3016, file: !2, line: 554, type: !78)
!3031 = !DILocalVariable(name: "powx", scope: !3016, file: !2, line: 557, type: !163)
!3032 = !DILocalVariable(name: "stat_gamr", scope: !3016, file: !2, line: 558, type: !40)
!3033 = !DILocalVariable(name: "stat_powx", scope: !3016, file: !2, line: 559, type: !40)
!3034 = !DILocalVariable(name: "sarg", scope: !3016, file: !2, line: 560, type: !78)
!3035 = !DILocalVariable(name: "sfact", scope: !3016, file: !2, line: 561, type: !78)
!3036 = !DILocalVariable(name: "factor_val", scope: !3016, file: !2, line: 562, type: !78)
!3037 = !DILocalVariable(name: "factor_err", scope: !3016, file: !2, line: 563, type: !78)
!3038 = !DILocalVariable(name: "pochai", scope: !3016, file: !2, line: 566, type: !163)
!3039 = !DILocalVariable(name: "gamri1", scope: !3016, file: !2, line: 567, type: !163)
!3040 = !DILocalVariable(name: "gamrni", scope: !3016, file: !2, line: 568, type: !163)
!3041 = !DILocalVariable(name: "stat_pochai", scope: !3016, file: !2, line: 569, type: !40)
!3042 = !DILocalVariable(name: "stat_gamri1", scope: !3016, file: !2, line: 570, type: !40)
!3043 = !DILocalVariable(name: "stat_gamrni", scope: !3016, file: !2, line: 571, type: !40)
!3044 = !DILocalVariable(name: "stat_gam123", scope: !3016, file: !2, line: 572, type: !40)
!3045 = !DILocalVariable(name: "stat_gamall", scope: !3016, file: !2, line: 573, type: !40)
!3046 = !DILocalVariable(name: "pochaxibeps", scope: !3016, file: !2, line: 575, type: !163)
!3047 = !DILocalVariable(name: "gamrxi1beps", scope: !3016, file: !2, line: 576, type: !163)
!3048 = !DILocalVariable(name: "stat_pochaxibeps", scope: !3016, file: !2, line: 577, type: !40)
!3049 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !3016, file: !2, line: 578, type: !40)
!3050 = !DILocalVariable(name: "stat_all", scope: !3016, file: !2, line: 580, type: !40)
!3051 = !DILocalVariable(name: "b0_val", scope: !3016, file: !2, line: 582, type: !78)
!3052 = !DILocalVariable(name: "b0_err", scope: !3016, file: !2, line: 583, type: !78)
!3053 = !DILocalVariable(name: "i", scope: !3016, file: !2, line: 593, type: !40)
!3054 = !DILocalVariable(name: "pch1ai", scope: !3016, file: !2, line: 594, type: !163)
!3055 = !DILocalVariable(name: "pch1i", scope: !3016, file: !2, line: 595, type: !163)
!3056 = !DILocalVariable(name: "poch1bxibeps", scope: !3016, file: !2, line: 596, type: !163)
!3057 = !DILocalVariable(name: "stat_pch1ai", scope: !3016, file: !2, line: 597, type: !40)
!3058 = !DILocalVariable(name: "stat_pch1i", scope: !3016, file: !2, line: 598, type: !40)
!3059 = !DILocalVariable(name: "stat_poch1bxibeps", scope: !3016, file: !2, line: 599, type: !40)
!3060 = !DILocalVariable(name: "c0_t1_val", scope: !3016, file: !2, line: 600, type: !78)
!3061 = !DILocalVariable(name: "c0_t1_err", scope: !3016, file: !2, line: 601, type: !78)
!3062 = !DILocalVariable(name: "c0_t2_val", scope: !3016, file: !2, line: 604, type: !78)
!3063 = !DILocalVariable(name: "c0_t2_err", scope: !3016, file: !2, line: 605, type: !78)
!3064 = !DILocalVariable(name: "c0_val", scope: !3016, file: !2, line: 607, type: !78)
!3065 = !DILocalVariable(name: "c0_err", scope: !3016, file: !2, line: 608, type: !78)
!3066 = !DILocalVariable(name: "dexprl", scope: !3016, file: !2, line: 617, type: !163)
!3067 = !DILocalVariable(name: "stat_dexprl", scope: !3016, file: !2, line: 618, type: !40)
!3068 = !DILocalVariable(name: "xeps1_val", scope: !3016, file: !2, line: 619, type: !78)
!3069 = !DILocalVariable(name: "xeps1_err", scope: !3016, file: !2, line: 620, type: !78)
!3070 = !DILocalVariable(name: "dchu_val", scope: !3016, file: !2, line: 623, type: !78)
!3071 = !DILocalVariable(name: "dchu_err", scope: !3016, file: !2, line: 624, type: !78)
!3072 = !DILocalVariable(name: "xn", scope: !3016, file: !2, line: 628, type: !78)
!3073 = !DILocalVariable(name: "t_val", scope: !3016, file: !2, line: 629, type: !78)
!3074 = !DILocalVariable(name: "t_err", scope: !3016, file: !2, line: 630, type: !78)
!3075 = !DILocalVariable(name: "xi", scope: !3076, file: !2, line: 635, type: !92)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !2, line: 634, column: 29)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 634, column: 7)
!3078 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 634, column: 7)
!3079 = !DILocalVariable(name: "xi1", scope: !3076, file: !2, line: 636, type: !92)
!3080 = !DILocalVariable(name: "tmp", scope: !3076, file: !2, line: 637, type: !92)
!3081 = !DILocalVariable(name: "b0_multiplier", scope: !3076, file: !2, line: 638, type: !92)
!3082 = !DILocalVariable(name: "c0_multiplier_1", scope: !3076, file: !2, line: 639, type: !92)
!3083 = !DILocalVariable(name: "c0_multiplier_2", scope: !3076, file: !2, line: 640, type: !92)
!3084 = !DILocation(line: 0, scope: !3016, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 726, column: 18, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 725, column: 12)
!3087 = !DILocation(line: 551, column: 22, scope: !3016, inlinedAt: !3085)
!3088 = !DILocation(line: 553, column: 19, scope: !3016, inlinedAt: !3085)
!3089 = !DILocation(line: 554, column: 17, scope: !3016, inlinedAt: !3085)
!3090 = !DILocation(line: 556, column: 5, scope: !3016, inlinedAt: !3085)
!3091 = !DILocation(line: 557, column: 5, scope: !3016, inlinedAt: !3085)
!3092 = !DILocation(line: 558, column: 21, scope: !3016, inlinedAt: !3085)
!3093 = !DILocation(line: 559, column: 21, scope: !3016, inlinedAt: !3085)
!3094 = !DILocation(line: 560, column: 25, scope: !3016, inlinedAt: !3085)
!3095 = !DILocation(line: 561, column: 28, scope: !3016, inlinedAt: !3085)
!3096 = !DILocation(line: 561, column: 23, scope: !3016, inlinedAt: !3085)
!3097 = !DILocation(line: 561, column: 42, scope: !3016, inlinedAt: !3085)
!3098 = !DILocation(line: 561, column: 41, scope: !3016, inlinedAt: !3085)
!3099 = !DILocation(line: 562, column: 35, scope: !3016, inlinedAt: !3085)
!3100 = !DILocation(line: 562, column: 31, scope: !3016, inlinedAt: !3085)
!3101 = !DILocation(line: 562, column: 71, scope: !3016, inlinedAt: !3085)
!3102 = !DILocation(line: 562, column: 64, scope: !3016, inlinedAt: !3085)
!3103 = !DILocation(line: 562, column: 82, scope: !3016, inlinedAt: !3085)
!3104 = !DILocation(line: 562, column: 75, scope: !3016, inlinedAt: !3085)
!3105 = !DILocation(line: 563, column: 25, scope: !3016, inlinedAt: !3085)
!3106 = !DILocation(line: 563, column: 47, scope: !3016, inlinedAt: !3085)
!3107 = !DILocation(line: 563, column: 40, scope: !3016, inlinedAt: !3085)
!3108 = !DILocation(line: 563, column: 53, scope: !3016, inlinedAt: !3085)
!3109 = !DILocation(line: 563, column: 75, scope: !3016, inlinedAt: !3085)
!3110 = !DILocation(line: 563, column: 68, scope: !3016, inlinedAt: !3085)
!3111 = !DILocation(line: 563, column: 51, scope: !3016, inlinedAt: !3085)
!3112 = !DILocation(line: 564, column: 49, scope: !3016, inlinedAt: !3085)
!3113 = !DILocation(line: 564, column: 47, scope: !3016, inlinedAt: !3085)
!3114 = !DILocation(line: 564, column: 23, scope: !3016, inlinedAt: !3085)
!3115 = !DILocation(line: 566, column: 5, scope: !3016, inlinedAt: !3085)
!3116 = !DILocation(line: 567, column: 5, scope: !3016, inlinedAt: !3085)
!3117 = !DILocation(line: 568, column: 5, scope: !3016, inlinedAt: !3085)
!3118 = !DILocation(line: 569, column: 23, scope: !3016, inlinedAt: !3085)
!3119 = !DILocation(line: 570, column: 44, scope: !3016, inlinedAt: !3085)
!3120 = !DILocation(line: 570, column: 23, scope: !3016, inlinedAt: !3085)
!3121 = !DILocation(line: 571, column: 46, scope: !3016, inlinedAt: !3085)
!3122 = !DILocation(line: 571, column: 23, scope: !3016, inlinedAt: !3085)
!3123 = !DILocation(line: 572, column: 23, scope: !3016, inlinedAt: !3085)
!3124 = !DILocation(line: 573, column: 23, scope: !3016, inlinedAt: !3085)
!3125 = !DILocation(line: 575, column: 5, scope: !3016, inlinedAt: !3085)
!3126 = !DILocation(line: 576, column: 5, scope: !3016, inlinedAt: !3085)
!3127 = !DILocation(line: 577, column: 47, scope: !3016, inlinedAt: !3085)
!3128 = !DILocation(line: 577, column: 28, scope: !3016, inlinedAt: !3085)
!3129 = !DILocation(line: 578, column: 55, scope: !3016, inlinedAt: !3085)
!3130 = !DILocation(line: 578, column: 28, scope: !3016, inlinedAt: !3085)
!3131 = !DILocation(line: 580, column: 20, scope: !3016, inlinedAt: !3085)
!3132 = !DILocation(line: 582, column: 46, scope: !3016, inlinedAt: !3085)
!3133 = !DILocation(line: 582, column: 32, scope: !3016, inlinedAt: !3085)
!3134 = !DILocation(line: 582, column: 59, scope: !3016, inlinedAt: !3085)
!3135 = !DILocation(line: 582, column: 50, scope: !3016, inlinedAt: !3085)
!3136 = !DILocation(line: 582, column: 77, scope: !3016, inlinedAt: !3085)
!3137 = !DILocation(line: 582, column: 63, scope: !3016, inlinedAt: !3085)
!3138 = !DILocation(line: 583, column: 22, scope: !3016, inlinedAt: !3085)
!3139 = !DILocation(line: 583, column: 84, scope: !3016, inlinedAt: !3085)
!3140 = !DILocation(line: 583, column: 70, scope: !3016, inlinedAt: !3085)
!3141 = !DILocation(line: 584, column: 56, scope: !3016, inlinedAt: !3085)
!3142 = !DILocation(line: 584, column: 22, scope: !3016, inlinedAt: !3085)
!3143 = !DILocation(line: 584, column: 84, scope: !3016, inlinedAt: !3085)
!3144 = !DILocation(line: 584, column: 75, scope: !3016, inlinedAt: !3085)
!3145 = !DILocation(line: 584, column: 20, scope: !3016, inlinedAt: !3085)
!3146 = !DILocation(line: 585, column: 38, scope: !3016, inlinedAt: !3085)
!3147 = !DILocation(line: 585, column: 51, scope: !3016, inlinedAt: !3085)
!3148 = !DILocation(line: 585, column: 22, scope: !3016, inlinedAt: !3085)
!3149 = !DILocation(line: 585, column: 84, scope: !3016, inlinedAt: !3085)
!3150 = !DILocation(line: 585, column: 70, scope: !3016, inlinedAt: !3085)
!3151 = !DILocation(line: 585, column: 20, scope: !3016, inlinedAt: !3085)
!3152 = !DILocation(line: 586, column: 43, scope: !3016, inlinedAt: !3085)
!3153 = !DILocation(line: 586, column: 56, scope: !3016, inlinedAt: !3085)
!3154 = !DILocation(line: 586, column: 22, scope: !3016, inlinedAt: !3085)
!3155 = !DILocation(line: 586, column: 75, scope: !3016, inlinedAt: !3085)
!3156 = !DILocation(line: 586, column: 20, scope: !3016, inlinedAt: !3085)
!3157 = !DILocation(line: 587, column: 46, scope: !3016, inlinedAt: !3085)
!3158 = !DILocation(line: 587, column: 44, scope: !3016, inlinedAt: !3085)
!3159 = !DILocation(line: 587, column: 20, scope: !3016, inlinedAt: !3085)
!3160 = !DILocation(line: 594, column: 7, scope: !3016, inlinedAt: !3085)
!3161 = !DILocation(line: 595, column: 7, scope: !3016, inlinedAt: !3085)
!3162 = !DILocation(line: 596, column: 7, scope: !3016, inlinedAt: !3085)
!3163 = !DILocation(line: 597, column: 44, scope: !3016, inlinedAt: !3085)
!3164 = !DILocation(line: 597, column: 25, scope: !3016, inlinedAt: !3085)
!3165 = !DILocation(line: 598, column: 25, scope: !3016, inlinedAt: !3085)
!3166 = !DILocation(line: 599, column: 49, scope: !3016, inlinedAt: !3085)
!3167 = !DILocation(line: 599, column: 31, scope: !3016, inlinedAt: !3085)
!3168 = !DILocation(line: 600, column: 38, scope: !3016, inlinedAt: !3085)
!3169 = !DILocation(line: 600, column: 30, scope: !3016, inlinedAt: !3085)
!3170 = !DILocation(line: 600, column: 48, scope: !3016, inlinedAt: !3085)
!3171 = !DILocation(line: 600, column: 41, scope: !3016, inlinedAt: !3085)
!3172 = !DILocation(line: 601, column: 37, scope: !3016, inlinedAt: !3085)
!3173 = !DILocation(line: 601, column: 64, scope: !3016, inlinedAt: !3085)
!3174 = !DILocation(line: 601, column: 56, scope: !3016, inlinedAt: !3085)
!3175 = !DILocation(line: 602, column: 37, scope: !3016, inlinedAt: !3085)
!3176 = !DILocation(line: 602, column: 65, scope: !3016, inlinedAt: !3085)
!3177 = !DILocation(line: 602, column: 56, scope: !3016, inlinedAt: !3085)
!3178 = !DILocation(line: 602, column: 24, scope: !3016, inlinedAt: !3085)
!3179 = !DILocation(line: 603, column: 50, scope: !3016, inlinedAt: !3085)
!3180 = !DILocation(line: 603, column: 48, scope: !3016, inlinedAt: !3085)
!3181 = !DILocation(line: 603, column: 24, scope: !3016, inlinedAt: !3085)
!3182 = !DILocation(line: 604, column: 40, scope: !3016, inlinedAt: !3085)
!3183 = !DILocation(line: 604, column: 44, scope: !3016, inlinedAt: !3085)
!3184 = !DILocation(line: 604, column: 57, scope: !3016, inlinedAt: !3085)
!3185 = !DILocation(line: 604, column: 69, scope: !3016, inlinedAt: !3085)
!3186 = !DILocation(line: 605, column: 40, scope: !3016, inlinedAt: !3085)
!3187 = !DILocation(line: 605, column: 44, scope: !3016, inlinedAt: !3085)
!3188 = !DILocation(line: 605, column: 57, scope: !3016, inlinedAt: !3085)
!3189 = !DILocation(line: 605, column: 69, scope: !3016, inlinedAt: !3085)
!3190 = !DILocation(line: 606, column: 50, scope: !3016, inlinedAt: !3085)
!3191 = !DILocation(line: 606, column: 48, scope: !3016, inlinedAt: !3085)
!3192 = !DILocation(line: 606, column: 24, scope: !3016, inlinedAt: !3085)
!3193 = !DILocation(line: 607, column: 43, scope: !3016, inlinedAt: !3085)
!3194 = !DILocation(line: 607, column: 34, scope: !3016, inlinedAt: !3085)
!3195 = !DILocation(line: 607, column: 56, scope: !3016, inlinedAt: !3085)
!3196 = !DILocation(line: 607, column: 47, scope: !3016, inlinedAt: !3085)
!3197 = !DILocation(line: 607, column: 69, scope: !3016, inlinedAt: !3085)
!3198 = !DILocation(line: 607, column: 60, scope: !3016, inlinedAt: !3085)
!3199 = !DILocation(line: 607, column: 73, scope: !3016, inlinedAt: !3085)
!3200 = !DILocation(line: 608, column: 24, scope: !3016, inlinedAt: !3085)
!3201 = !DILocation(line: 608, column: 80, scope: !3016, inlinedAt: !3085)
!3202 = !DILocation(line: 609, column: 66, scope: !3016, inlinedAt: !3085)
!3203 = !DILocation(line: 609, column: 24, scope: !3016, inlinedAt: !3085)
!3204 = !DILocation(line: 609, column: 88, scope: !3016, inlinedAt: !3085)
!3205 = !DILocation(line: 609, column: 79, scope: !3016, inlinedAt: !3085)
!3206 = !DILocation(line: 609, column: 22, scope: !3016, inlinedAt: !3085)
!3207 = !DILocation(line: 610, column: 53, scope: !3016, inlinedAt: !3085)
!3208 = !DILocation(line: 610, column: 66, scope: !3016, inlinedAt: !3085)
!3209 = !DILocation(line: 610, column: 24, scope: !3016, inlinedAt: !3085)
!3210 = !DILocation(line: 610, column: 88, scope: !3016, inlinedAt: !3085)
!3211 = !DILocation(line: 610, column: 79, scope: !3016, inlinedAt: !3085)
!3212 = !DILocation(line: 610, column: 22, scope: !3016, inlinedAt: !3085)
!3213 = !DILocation(line: 611, column: 40, scope: !3016, inlinedAt: !3085)
!3214 = !DILocation(line: 611, column: 53, scope: !3016, inlinedAt: !3085)
!3215 = !DILocation(line: 611, column: 66, scope: !3016, inlinedAt: !3085)
!3216 = !DILocation(line: 611, column: 24, scope: !3016, inlinedAt: !3085)
!3217 = !DILocation(line: 611, column: 88, scope: !3016, inlinedAt: !3085)
!3218 = !DILocation(line: 611, column: 79, scope: !3016, inlinedAt: !3085)
!3219 = !DILocation(line: 611, column: 22, scope: !3016, inlinedAt: !3085)
!3220 = !DILocation(line: 612, column: 40, scope: !3016, inlinedAt: !3085)
!3221 = !DILocation(line: 612, column: 53, scope: !3016, inlinedAt: !3085)
!3222 = !DILocation(line: 612, column: 66, scope: !3016, inlinedAt: !3085)
!3223 = !DILocation(line: 612, column: 24, scope: !3016, inlinedAt: !3085)
!3224 = !DILocation(line: 612, column: 79, scope: !3016, inlinedAt: !3085)
!3225 = !DILocation(line: 612, column: 22, scope: !3016, inlinedAt: !3085)
!3226 = !DILocation(line: 613, column: 48, scope: !3016, inlinedAt: !3085)
!3227 = !DILocation(line: 613, column: 46, scope: !3016, inlinedAt: !3085)
!3228 = !DILocation(line: 613, column: 22, scope: !3016, inlinedAt: !3085)
!3229 = !DILocation(line: 617, column: 7, scope: !3016, inlinedAt: !3085)
!3230 = !DILocation(line: 618, column: 46, scope: !3016, inlinedAt: !3085)
!3231 = !DILocation(line: 618, column: 25, scope: !3016, inlinedAt: !3085)
!3232 = !DILocation(line: 619, column: 39, scope: !3016, inlinedAt: !3085)
!3233 = !DILocation(line: 619, column: 30, scope: !3016, inlinedAt: !3085)
!3234 = !DILocation(line: 620, column: 66, scope: !3016, inlinedAt: !3085)
!3235 = !DILocation(line: 620, column: 57, scope: !3016, inlinedAt: !3085)
!3236 = !DILocation(line: 620, column: 55, scope: !3016, inlinedAt: !3085)
!3237 = !DILocation(line: 620, column: 48, scope: !3016, inlinedAt: !3085)
!3238 = !DILocation(line: 620, column: 75, scope: !3016, inlinedAt: !3085)
!3239 = !DILocation(line: 620, column: 73, scope: !3016, inlinedAt: !3085)
!3240 = !DILocation(line: 621, column: 26, scope: !3016, inlinedAt: !3085)
!3241 = !DILocation(line: 621, column: 45, scope: !3016, inlinedAt: !3085)
!3242 = !DILocation(line: 621, column: 36, scope: !3016, inlinedAt: !3085)
!3243 = !DILocation(line: 621, column: 24, scope: !3016, inlinedAt: !3085)
!3244 = !DILocation(line: 622, column: 50, scope: !3016, inlinedAt: !3085)
!3245 = !DILocation(line: 622, column: 48, scope: !3016, inlinedAt: !3085)
!3246 = !DILocation(line: 622, column: 24, scope: !3016, inlinedAt: !3085)
!3247 = !DILocation(line: 623, column: 33, scope: !3016, inlinedAt: !3085)
!3248 = !DILocation(line: 623, column: 53, scope: !3016, inlinedAt: !3085)
!3249 = !DILocation(line: 623, column: 42, scope: !3016, inlinedAt: !3085)
!3250 = !DILocation(line: 624, column: 33, scope: !3016, inlinedAt: !3085)
!3251 = !DILocation(line: 625, column: 40, scope: !3016, inlinedAt: !3085)
!3252 = !DILocation(line: 625, column: 23, scope: !3016, inlinedAt: !3085)
!3253 = !DILocation(line: 625, column: 60, scope: !3016, inlinedAt: !3085)
!3254 = !DILocation(line: 625, column: 48, scope: !3016, inlinedAt: !3085)
!3255 = !DILocation(line: 626, column: 36, scope: !3016, inlinedAt: !3085)
!3256 = !DILocation(line: 626, column: 25, scope: !3016, inlinedAt: !3085)
!3257 = !DILocation(line: 626, column: 41, scope: !3016, inlinedAt: !3085)
!3258 = !DILocation(line: 626, column: 23, scope: !3016, inlinedAt: !3085)
!3259 = !DILocation(line: 627, column: 50, scope: !3016, inlinedAt: !3085)
!3260 = !DILocation(line: 627, column: 64, scope: !3016, inlinedAt: !3085)
!3261 = !DILocation(line: 627, column: 81, scope: !3016, inlinedAt: !3085)
!3262 = !DILocation(line: 627, column: 79, scope: !3016, inlinedAt: !3085)
!3263 = !DILocation(line: 627, column: 47, scope: !3016, inlinedAt: !3085)
!3264 = !DILocation(line: 627, column: 23, scope: !3016, inlinedAt: !3085)
!3265 = !DILocation(line: 628, column: 19, scope: !3016, inlinedAt: !3085)
!3266 = !DILocation(line: 632, column: 18, scope: !3016, inlinedAt: !3085)
!3267 = !DILocation(line: 634, column: 7, scope: !3078, inlinedAt: !3085)
!3268 = !DILocation(line: 635, column: 34, scope: !3076, inlinedAt: !3085)
!3269 = !DILocation(line: 635, column: 28, scope: !3076, inlinedAt: !3085)
!3270 = !DILocation(line: 0, scope: !3076, inlinedAt: !3085)
!3271 = !DILocation(line: 636, column: 38, scope: !3076, inlinedAt: !3085)
!3272 = !DILocation(line: 636, column: 28, scope: !3076, inlinedAt: !3085)
!3273 = !DILocation(line: 637, column: 43, scope: !3076, inlinedAt: !3085)
!3274 = !DILocation(line: 637, column: 39, scope: !3076, inlinedAt: !3085)
!3275 = !DILocation(line: 637, column: 46, scope: !3076, inlinedAt: !3085)
!3276 = !DILocation(line: 637, column: 35, scope: !3076, inlinedAt: !3085)
!3277 = !DILocation(line: 637, column: 60, scope: !3076, inlinedAt: !3085)
!3278 = !DILocation(line: 637, column: 56, scope: !3076, inlinedAt: !3085)
!3279 = !DILocation(line: 637, column: 52, scope: !3076, inlinedAt: !3085)
!3280 = !DILocation(line: 638, column: 40, scope: !3076, inlinedAt: !3085)
!3281 = !DILocation(line: 638, column: 44, scope: !3076, inlinedAt: !3085)
!3282 = !DILocation(line: 638, column: 50, scope: !3076, inlinedAt: !3085)
!3283 = !DILocation(line: 638, column: 57, scope: !3076, inlinedAt: !3085)
!3284 = !DILocation(line: 638, column: 62, scope: !3076, inlinedAt: !3085)
!3285 = !DILocation(line: 638, column: 52, scope: !3076, inlinedAt: !3085)
!3286 = !DILocation(line: 639, column: 47, scope: !3076, inlinedAt: !3085)
!3287 = !DILocation(line: 639, column: 53, scope: !3076, inlinedAt: !3085)
!3288 = !DILocation(line: 639, column: 58, scope: !3076, inlinedAt: !3085)
!3289 = !DILocation(line: 639, column: 49, scope: !3076, inlinedAt: !3085)
!3290 = !DILocation(line: 640, column: 57, scope: !3076, inlinedAt: !3085)
!3291 = !DILocation(line: 640, column: 44, scope: !3076, inlinedAt: !3085)
!3292 = !DILocation(line: 641, column: 16, scope: !3076, inlinedAt: !3085)
!3293 = !DILocation(line: 642, column: 19, scope: !3076, inlinedAt: !3085)
!3294 = !DILocation(line: 642, column: 39, scope: !3076, inlinedAt: !3085)
!3295 = !DILocation(line: 642, column: 50, scope: !3076, inlinedAt: !3085)
!3296 = !DILocation(line: 642, column: 63, scope: !3076, inlinedAt: !3085)
!3297 = !DILocation(line: 642, column: 69, scope: !3076, inlinedAt: !3085)
!3298 = !DILocation(line: 642, column: 75, scope: !3076, inlinedAt: !3085)
!3299 = !DILocation(line: 642, column: 48, scope: !3076, inlinedAt: !3085)
!3300 = !DILocation(line: 642, column: 16, scope: !3076, inlinedAt: !3085)
!3301 = !DILocation(line: 643, column: 35, scope: !3076, inlinedAt: !3085)
!3302 = !DILocation(line: 643, column: 62, scope: !3076, inlinedAt: !3085)
!3303 = !DILocation(line: 643, column: 44, scope: !3076, inlinedAt: !3085)
!3304 = !DILocation(line: 644, column: 20, scope: !3076, inlinedAt: !3085)
!3305 = !DILocation(line: 644, column: 42, scope: !3076, inlinedAt: !3085)
!3306 = !DILocation(line: 645, column: 20, scope: !3076, inlinedAt: !3085)
!3307 = !DILocation(line: 645, column: 42, scope: !3076, inlinedAt: !3085)
!3308 = !DILocation(line: 645, column: 18, scope: !3076, inlinedAt: !3085)
!3309 = !DILocation(line: 646, column: 20, scope: !3076, inlinedAt: !3085)
!3310 = !DILocation(line: 646, column: 33, scope: !3076, inlinedAt: !3085)
!3311 = !DILocation(line: 646, column: 39, scope: !3076, inlinedAt: !3085)
!3312 = !DILocation(line: 646, column: 45, scope: !3076, inlinedAt: !3085)
!3313 = !DILocation(line: 646, column: 18, scope: !3076, inlinedAt: !3085)
!3314 = !DILocation(line: 647, column: 20, scope: !3076, inlinedAt: !3085)
!3315 = !DILocation(line: 647, column: 51, scope: !3076, inlinedAt: !3085)
!3316 = !DILocation(line: 647, column: 58, scope: !3076, inlinedAt: !3085)
!3317 = !DILocation(line: 647, column: 64, scope: !3076, inlinedAt: !3085)
!3318 = !DILocation(line: 647, column: 18, scope: !3076, inlinedAt: !3085)
!3319 = !DILocation(line: 648, column: 36, scope: !3076, inlinedAt: !3085)
!3320 = !DILocation(line: 648, column: 25, scope: !3076, inlinedAt: !3085)
!3321 = !DILocation(line: 649, column: 42, scope: !3076, inlinedAt: !3085)
!3322 = !DILocation(line: 649, column: 25, scope: !3076, inlinedAt: !3085)
!3323 = !DILocation(line: 650, column: 29, scope: !3076, inlinedAt: !3085)
!3324 = !DILocation(line: 650, column: 18, scope: !3076, inlinedAt: !3085)
!3325 = !DILocation(line: 650, column: 35, scope: !3076, inlinedAt: !3085)
!3326 = !DILocation(line: 650, column: 15, scope: !3076, inlinedAt: !3085)
!3327 = !DILocation(line: 651, column: 30, scope: !3076, inlinedAt: !3085)
!3328 = !DILocation(line: 651, column: 15, scope: !3076, inlinedAt: !3085)
!3329 = !DILocation(line: 652, column: 18, scope: !3076, inlinedAt: !3085)
!3330 = !DILocation(line: 653, column: 18, scope: !3076, inlinedAt: !3085)
!3331 = !DILocation(line: 654, column: 12, scope: !3332, inlinedAt: !3085)
!3332 = distinct !DILexicalBlock(scope: !3076, file: !2, line: 654, column: 12)
!3333 = !DILocation(line: 654, column: 30, scope: !3332, inlinedAt: !3085)
!3334 = !DILocation(line: 654, column: 29, scope: !3332, inlinedAt: !3085)
!3335 = !DILocation(line: 654, column: 24, scope: !3332, inlinedAt: !3085)
!3336 = !DILocation(line: 634, column: 25, scope: !3077, inlinedAt: !3085)
!3337 = !DILocation(line: 634, column: 17, scope: !3077, inlinedAt: !3085)
!3338 = distinct !{!3338, !3267, !3339, !552}
!3339 = !DILocation(line: 655, column: 7, scope: !3078, inlinedAt: !3085)
!3340 = !DILocation(line: 634, scope: !3078, inlinedAt: !3085)
!3341 = !DILocation(line: 657, column: 20, scope: !3016, inlinedAt: !3085)
!3342 = !DILocation(line: 658, column: 26, scope: !3016, inlinedAt: !3085)
!3343 = !DILocation(line: 658, column: 15, scope: !3016, inlinedAt: !3085)
!3344 = !DILocation(line: 659, column: 26, scope: !3016, inlinedAt: !3085)
!3345 = !DILocation(line: 659, column: 19, scope: !3016, inlinedAt: !3085)
!3346 = !DILocation(line: 660, column: 48, scope: !3016, inlinedAt: !3085)
!3347 = !DILocation(line: 660, column: 44, scope: !3016, inlinedAt: !3085)
!3348 = !DILocation(line: 660, column: 54, scope: !3016, inlinedAt: !3085)
!3349 = !DILocation(line: 660, column: 19, scope: !3016, inlinedAt: !3085)
!3350 = !DILocation(line: 661, column: 19, scope: !3016, inlinedAt: !3085)
!3351 = !DILocation(line: 663, column: 12, scope: !3352, inlinedAt: !3085)
!3352 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 663, column: 10)
!3353 = !DILocation(line: 663, column: 10, scope: !3016, inlinedAt: !3085)
!3354 = !DILocation(line: 664, column: 9, scope: !3355, inlinedAt: !3085)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 664, column: 9)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !2, line: 663, column: 21)
!3357 = !DILocation(line: 0, scope: !3352, inlinedAt: !3085)
!3358 = !DILocation(line: 669, column: 1, scope: !3016, inlinedAt: !3085)
!3359 = !DILocation(line: 0, scope: !2510)
!3360 = !DILocation(line: 729, column: 12, scope: !2250)
!3361 = !DILocation(line: 732, column: 1, scope: !2233)
!3362 = distinct !DISubprogram(name: "hyperg_U_small_a_bgt0", scope: !2, file: !2, line: 777, type: !3363, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3366)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!40, !92, !92, !92, !1062, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3376, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3367 = !DILocalVariable(name: "a", arg: 1, scope: !3362, file: !2, line: 777, type: !92)
!3368 = !DILocalVariable(name: "b", arg: 2, scope: !3362, file: !2, line: 777, type: !92)
!3369 = !DILocalVariable(name: "x", arg: 3, scope: !3362, file: !2, line: 777, type: !92)
!3370 = !DILocalVariable(name: "result", arg: 4, scope: !3362, file: !2, line: 778, type: !1062)
!3371 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !3362, file: !2, line: 779, type: !3365)
!3372 = !DILocalVariable(name: "stat", scope: !3373, file: !2, line: 791, type: !40)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 790, column: 7)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 788, column: 14)
!3375 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 782, column: 6)
!3376 = !DILocalVariable(name: "eps", scope: !3377, file: !2, line: 800, type: !78)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !2, line: 797, column: 21)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 797, column: 11)
!3379 = !DILocalVariable(name: "b0", scope: !3377, file: !2, line: 801, type: !78)
!3380 = !DILocalVariable(name: "r_Ubm1", scope: !3377, file: !2, line: 802, type: !163)
!3381 = !DILocalVariable(name: "r_Ub", scope: !3377, file: !2, line: 803, type: !163)
!3382 = !DILocalVariable(name: "stat_0", scope: !3377, file: !2, line: 804, type: !40)
!3383 = !DILocalVariable(name: "stat_1", scope: !3377, file: !2, line: 805, type: !40)
!3384 = !DILocalVariable(name: "Ubm1", scope: !3377, file: !2, line: 806, type: !78)
!3385 = !DILocalVariable(name: "Ub", scope: !3377, file: !2, line: 807, type: !78)
!3386 = !DILocalVariable(name: "Ubp1", scope: !3377, file: !2, line: 808, type: !78)
!3387 = !DILocalVariable(name: "bp", scope: !3377, file: !2, line: 809, type: !78)
!3388 = distinct !DIAssignID()
!3389 = !DILocation(line: 0, scope: !3377)
!3390 = distinct !DIAssignID()
!3391 = !DILocation(line: 0, scope: !3362)
!3392 = !DILocation(line: 782, column: 8, scope: !3375)
!3393 = !DILocation(line: 782, column: 6, scope: !3362)
!3394 = !DILocation(line: 783, column: 17, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 782, column: 16)
!3396 = !DILocation(line: 784, column: 13, scope: !3395)
!3397 = !DILocation(line: 784, column: 17, scope: !3395)
!3398 = !DILocation(line: 785, column: 20, scope: !3395)
!3399 = !DILocation(line: 786, column: 5, scope: !3395)
!3400 = !DILocation(line: 788, column: 17, scope: !3374)
!3401 = !DILocation(line: 788, column: 26, scope: !3374)
!3402 = !DILocation(line: 788, column: 40, scope: !3374)
!3403 = !DILocation(line: 788, column: 38, scope: !3374)
!3404 = !DILocation(line: 788, column: 31, scope: !3374)
!3405 = !DILocation(line: 789, column: 11, scope: !3374)
!3406 = !DILocation(line: 789, column: 17, scope: !3374)
!3407 = !DILocation(line: 789, column: 26, scope: !3374)
!3408 = !DILocation(line: 789, column: 40, scope: !3374)
!3409 = !DILocation(line: 789, column: 38, scope: !3374)
!3410 = !DILocation(line: 789, column: 31, scope: !3374)
!3411 = !DILocation(line: 788, column: 14, scope: !3375)
!3412 = !DILocation(line: 791, column: 16, scope: !3373)
!3413 = !DILocation(line: 0, scope: !3373)
!3414 = !DILocation(line: 792, column: 13, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 792, column: 8)
!3416 = !DILocation(line: 0, scope: !3415)
!3417 = !DILocation(line: 797, column: 13, scope: !3378)
!3418 = !DILocation(line: 797, column: 11, scope: !3374)
!3419 = !DILocation(line: 800, column: 22, scope: !3377)
!3420 = !DILocation(line: 800, column: 20, scope: !3377)
!3421 = !DILocation(line: 801, column: 22, scope: !3377)
!3422 = !DILocation(line: 802, column: 5, scope: !3377)
!3423 = !DILocation(line: 803, column: 5, scope: !3377)
!3424 = !DILocation(line: 804, column: 18, scope: !3377)
!3425 = !DILocation(line: 805, column: 41, scope: !3377)
!3426 = !DILocation(line: 805, column: 18, scope: !3377)
!3427 = !DILocation(line: 806, column: 26, scope: !3377)
!3428 = !DILocation(line: 807, column: 24, scope: !3377)
!3429 = !DILocation(line: 811, column: 24, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !2, line: 811, column: 5)
!3431 = distinct !DILexicalBlock(scope: !3377, file: !2, line: 811, column: 5)
!3432 = !DILocation(line: 811, column: 5, scope: !3431)
!3433 = !DILocation(line: 812, column: 21, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 811, column: 43)
!3435 = !DILocation(line: 812, column: 25, scope: !3434)
!3436 = !DILocation(line: 812, column: 36, scope: !3434)
!3437 = !DILocation(line: 812, column: 38, scope: !3434)
!3438 = !DILocation(line: 812, column: 43, scope: !3434)
!3439 = !DILocation(line: 812, column: 31, scope: !3434)
!3440 = !DILocation(line: 812, column: 47, scope: !3434)
!3441 = !DILocation(line: 811, column: 35, scope: !3430)
!3442 = distinct !{!3442, !3432, !3443, !552}
!3443 = !DILocation(line: 815, column: 5, scope: !3431)
!3444 = !DILocation(line: 816, column: 18, scope: !3377)
!3445 = !DILocation(line: 817, column: 33, scope: !3377)
!3446 = !DILocation(line: 817, column: 36, scope: !3377)
!3447 = !DILocation(line: 817, column: 21, scope: !3377)
!3448 = !DILocation(line: 817, column: 61, scope: !3377)
!3449 = !DILocation(line: 817, column: 64, scope: !3377)
!3450 = !DILocation(line: 817, column: 51, scope: !3377)
!3451 = !DILocation(line: 817, column: 49, scope: !3377)
!3452 = !DILocation(line: 817, column: 78, scope: !3377)
!3453 = !DILocation(line: 817, column: 76, scope: !3377)
!3454 = !DILocation(line: 817, column: 13, scope: !3377)
!3455 = !DILocation(line: 818, column: 51, scope: !3377)
!3456 = !DILocation(line: 818, column: 45, scope: !3377)
!3457 = !DILocation(line: 818, column: 55, scope: !3377)
!3458 = !DILocation(line: 818, column: 42, scope: !3377)
!3459 = !DILocation(line: 818, column: 61, scope: !3377)
!3460 = !DILocation(line: 818, column: 17, scope: !3377)
!3461 = !DILocation(line: 819, column: 20, scope: !3377)
!3462 = !DILocation(line: 820, column: 12, scope: !3377)
!3463 = !DILocation(line: 821, column: 3, scope: !3378)
!3464 = !DILocation(line: 823, column: 20, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3378, file: !2, line: 822, column: 8)
!3466 = !DILocation(line: 824, column: 12, scope: !3465)
!3467 = !DILocation(line: 824, column: 5, scope: !3465)
!3468 = !DILocation(line: 0, scope: !3375)
!3469 = !DILocation(line: 826, column: 1, scope: !3362)
!3470 = !DISubprogram(name: "exp", scope: !907, file: !907, line: 95, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3471 = distinct !DISubprogram(name: "hyperg_U_CF1", scope: !2, file: !2, line: 71, type: !3472, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3475)
!3472 = !DISubroutineType(cc: DW_CC_nocall, types: !3473)
!3473 = !{!40, !92, !92, !91, !92, !3365, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3498}
!3476 = !DILocalVariable(name: "a", arg: 1, scope: !3471, file: !2, line: 71, type: !92)
!3477 = !DILocalVariable(name: "b", arg: 2, scope: !3471, file: !2, line: 71, type: !92)
!3478 = !DILocalVariable(name: "N", arg: 3, scope: !3471, file: !2, line: 71, type: !91)
!3479 = !DILocalVariable(name: "x", arg: 4, scope: !3471, file: !2, line: 71, type: !92)
!3480 = !DILocalVariable(name: "result", arg: 5, scope: !3471, file: !2, line: 72, type: !3365)
!3481 = !DILocalVariable(name: "count", arg: 6, scope: !3471, file: !2, line: 72, type: !3474)
!3482 = !DILocalVariable(name: "RECUR_BIG", scope: !3471, file: !2, line: 74, type: !92)
!3483 = !DILocalVariable(name: "maxiter", scope: !3471, file: !2, line: 75, type: !91)
!3484 = !DILocalVariable(name: "n", scope: !3471, file: !2, line: 76, type: !40)
!3485 = !DILocalVariable(name: "Anm2", scope: !3471, file: !2, line: 77, type: !78)
!3486 = !DILocalVariable(name: "Bnm2", scope: !3471, file: !2, line: 78, type: !78)
!3487 = !DILocalVariable(name: "Anm1", scope: !3471, file: !2, line: 79, type: !78)
!3488 = !DILocalVariable(name: "Bnm1", scope: !3471, file: !2, line: 80, type: !78)
!3489 = !DILocalVariable(name: "a1", scope: !3471, file: !2, line: 81, type: !78)
!3490 = !DILocalVariable(name: "b1", scope: !3471, file: !2, line: 82, type: !78)
!3491 = !DILocalVariable(name: "An", scope: !3471, file: !2, line: 83, type: !78)
!3492 = !DILocalVariable(name: "Bn", scope: !3471, file: !2, line: 84, type: !78)
!3493 = !DILocalVariable(name: "an", scope: !3471, file: !2, line: 85, type: !78)
!3494 = !DILocalVariable(name: "bn", scope: !3471, file: !2, line: 85, type: !78)
!3495 = !DILocalVariable(name: "fn", scope: !3471, file: !2, line: 86, type: !78)
!3496 = !DILocalVariable(name: "old_fn", scope: !3497, file: !2, line: 89, type: !78)
!3497 = distinct !DILexicalBlock(scope: !3471, file: !2, line: 88, column: 22)
!3498 = !DILocalVariable(name: "del", scope: !3497, file: !2, line: 90, type: !78)
!3499 = !DILocation(line: 0, scope: !3471)
!3500 = !DILocation(line: 81, column: 19, scope: !3471)
!3501 = !DILocation(line: 82, column: 24, scope: !3471)
!3502 = !DILocation(line: 82, column: 19, scope: !3471)
!3503 = !DILocation(line: 82, column: 27, scope: !3471)
!3504 = !DILocation(line: 82, column: 31, scope: !3471)
!3505 = !DILocation(line: 83, column: 17, scope: !3471)
!3506 = !DILocation(line: 83, column: 23, scope: !3471)
!3507 = !DILocation(line: 84, column: 27, scope: !3471)
!3508 = !DILocation(line: 84, column: 23, scope: !3471)
!3509 = !DILocation(line: 86, column: 17, scope: !3471)
!3510 = !DILocation(line: 88, column: 3, scope: !3471)
!3511 = !DILocation(line: 88, column: 11, scope: !3471)
!3512 = !DILocation(line: 117, column: 11, scope: !3471)
!3513 = !DILocation(line: 118, column: 11, scope: !3471)
!3514 = !DILocation(line: 120, column: 6, scope: !3471)
!3515 = !DILocation(line: 91, column: 6, scope: !3497)
!3516 = !DILocation(line: 96, column: 20, scope: !3497)
!3517 = !DILocation(line: 96, column: 18, scope: !3497)
!3518 = !DILocation(line: 96, column: 22, scope: !3497)
!3519 = !DILocation(line: 96, column: 10, scope: !3497)
!3520 = !DILocation(line: 96, column: 38, scope: !3497)
!3521 = !DILocation(line: 96, column: 26, scope: !3497)
!3522 = !DILocation(line: 97, column: 31, scope: !3497)
!3523 = !DILocation(line: 97, column: 26, scope: !3497)
!3524 = !DILocation(line: 98, column: 12, scope: !3497)
!3525 = !DILocation(line: 98, column: 22, scope: !3497)
!3526 = !DILocation(line: 98, column: 18, scope: !3497)
!3527 = !DILocation(line: 99, column: 12, scope: !3497)
!3528 = !DILocation(line: 99, column: 22, scope: !3497)
!3529 = !DILocation(line: 99, column: 18, scope: !3497)
!3530 = !DILocation(line: 101, column: 8, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3497, file: !2, line: 101, column: 8)
!3532 = !DILocation(line: 101, column: 17, scope: !3531)
!3533 = !DILocation(line: 101, column: 29, scope: !3531)
!3534 = !DILocation(line: 102, column: 10, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 101, column: 54)
!3536 = !DILocation(line: 103, column: 10, scope: !3535)
!3537 = !DILocation(line: 104, column: 12, scope: !3535)
!3538 = !DILocation(line: 105, column: 12, scope: !3535)
!3539 = !DILocation(line: 108, column: 5, scope: !3535)
!3540 = !DILocation(line: 0, scope: !3497)
!3541 = !DILocation(line: 111, column: 12, scope: !3497)
!3542 = !DILocation(line: 112, column: 17, scope: !3497)
!3543 = !DILocation(line: 114, column: 17, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3497, file: !2, line: 114, column: 8)
!3545 = !DILocation(line: 114, column: 8, scope: !3544)
!3546 = !DILocation(line: 114, column: 24, scope: !3544)
!3547 = !DILocation(line: 120, column: 8, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3471, file: !2, line: 120, column: 6)
!3549 = !DILocation(line: 121, column: 5, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !2, line: 121, column: 5)
!3551 = !DILocation(line: 0, scope: !3548)
!3552 = !DILocation(line: 124, column: 1, scope: !3471)
!3553 = distinct !DISubprogram(name: "hyperg_lnU_beq2a", scope: !2, file: !2, line: 48, type: !3554, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3556)
!3554 = !DISubroutineType(cc: DW_CC_nocall, types: !3555)
!3555 = !{!40, !92, !92, !1062}
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3557 = !DILocalVariable(name: "a", arg: 1, scope: !3553, file: !2, line: 48, type: !92)
!3558 = !DILocalVariable(name: "x", arg: 2, scope: !3553, file: !2, line: 48, type: !92)
!3559 = !DILocalVariable(name: "result", arg: 3, scope: !3553, file: !2, line: 48, type: !1062)
!3560 = !DILocalVariable(name: "lx", scope: !3553, file: !2, line: 50, type: !92)
!3561 = !DILocalVariable(name: "nu", scope: !3553, file: !2, line: 51, type: !92)
!3562 = !DILocalVariable(name: "lnpre", scope: !3553, file: !2, line: 52, type: !92)
!3563 = !DILocalVariable(name: "lnK", scope: !3553, file: !2, line: 53, type: !163)
!3564 = distinct !DIAssignID()
!3565 = !DILocation(line: 0, scope: !3553)
!3566 = !DILocation(line: 50, column: 21, scope: !3553)
!3567 = !DILocation(line: 51, column: 23, scope: !3553)
!3568 = !DILocation(line: 52, column: 31, scope: !3553)
!3569 = !DILocation(line: 52, column: 27, scope: !3553)
!3570 = !DILocation(line: 52, column: 45, scope: !3553)
!3571 = !DILocation(line: 52, column: 41, scope: !3553)
!3572 = !DILocation(line: 53, column: 3, scope: !3553)
!3573 = !DILocation(line: 54, column: 32, scope: !3553)
!3574 = !DILocation(line: 54, column: 3, scope: !3553)
!3575 = !DILocation(line: 55, column: 30, scope: !3553)
!3576 = !DILocation(line: 55, column: 24, scope: !3553)
!3577 = !DILocation(line: 55, column: 16, scope: !3553)
!3578 = !DILocation(line: 56, column: 43, scope: !3553)
!3579 = !DILocation(line: 56, column: 55, scope: !3553)
!3580 = !DILocation(line: 56, column: 70, scope: !3553)
!3581 = !DILocation(line: 56, column: 68, scope: !3553)
!3582 = !DILocation(line: 56, column: 40, scope: !3553)
!3583 = !DILocation(line: 56, column: 11, scope: !3553)
!3584 = !DILocation(line: 57, column: 22, scope: !3553)
!3585 = !DILocation(line: 57, column: 15, scope: !3553)
!3586 = !DILocation(line: 58, column: 42, scope: !3553)
!3587 = !DILocation(line: 58, column: 40, scope: !3553)
!3588 = !DILocation(line: 58, column: 15, scope: !3553)
!3589 = !DILocation(line: 60, column: 1, scope: !3553)
!3590 = !DILocation(line: 59, column: 3, scope: !3553)
!3591 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !911, file: !911, line: 110, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3592 = !DISubroutineType(types: !3555)
!3593 = !DISubprogram(name: "gsl_sf_exp_err_e10_e", scope: !911, file: !911, line: 114, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3594 = !DISubprogram(name: "gsl_sf_exp_e", scope: !911, file: !911, line: 45, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!40, !92, !1062}
!3597 = !DISubprogram(name: "gsl_sf_poch_e", scope: !3598, file: !3598, line: 195, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3598 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!3599 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !3598, file: !3598, line: 66, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3600 = !DISubprogram(name: "gsl_sf_gammainv_e", scope: !3598, file: !3598, line: 86, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3601 = !DISubprogram(name: "sin", scope: !907, file: !907, line: 64, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3602 = !DISubprogram(name: "gsl_sf_poch", scope: !3598, file: !3598, line: 196, type: !3603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!78, !92, !92}
!3605 = !DISubprogram(name: "gsl_sf_gammainv", scope: !3598, file: !3598, line: 87, type: !3606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!78, !92}
!3608 = !DISubprogram(name: "gsl_finite", scope: !3609, file: !3609, line: 45, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3609 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!40, !92}
!3612 = !DISubprogram(name: "gsl_sf_pochrel_e", scope: !3598, file: !3598, line: 205, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3613 = !DISubprogram(name: "gsl_sf_exprel_e", scope: !911, file: !911, line: 83, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3614 = !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !3615, file: !3615, line: 65, type: !3363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3615 = !DIFile(filename: "./hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "715d150f24566e0448edc458ffbf9b78")
!3616 = distinct !DISubprogram(name: "hyperg_U_small_ab", scope: !2, file: !2, line: 740, type: !1926, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3627, !3628}
!3618 = !DILocalVariable(name: "a", arg: 1, scope: !3616, file: !2, line: 740, type: !92)
!3619 = !DILocalVariable(name: "b", arg: 2, scope: !3616, file: !2, line: 740, type: !92)
!3620 = !DILocalVariable(name: "x", arg: 3, scope: !3616, file: !2, line: 740, type: !92)
!3621 = !DILocalVariable(name: "result", arg: 4, scope: !3616, file: !2, line: 740, type: !1062)
!3622 = !DILocalVariable(name: "p", scope: !3623, file: !2, line: 758, type: !78)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 757, column: 33)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 757, column: 11)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 750, column: 11)
!3626 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 742, column: 6)
!3627 = !DILocalVariable(name: "asymp", scope: !3623, file: !2, line: 759, type: !163)
!3628 = !DILocalVariable(name: "stat_asymp", scope: !3623, file: !2, line: 760, type: !40)
!3629 = distinct !DIAssignID()
!3630 = !DILocation(line: 0, scope: !3623)
!3631 = !DILocation(line: 0, scope: !3616)
!3632 = !DILocation(line: 742, column: 8, scope: !3626)
!3633 = !DILocation(line: 742, column: 6, scope: !3616)
!3634 = !DILocation(line: 745, column: 23, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 742, column: 17)
!3636 = !DILocation(line: 745, column: 18, scope: !3635)
!3637 = !DILocation(line: 746, column: 45, scope: !3635)
!3638 = !DILocation(line: 746, column: 55, scope: !3635)
!3639 = !DILocation(line: 746, column: 53, scope: !3635)
!3640 = !DILocation(line: 746, column: 42, scope: !3635)
!3641 = !DILocation(line: 746, column: 13, scope: !3635)
!3642 = !DILocation(line: 747, column: 44, scope: !3635)
!3643 = !DILocation(line: 747, column: 42, scope: !3635)
!3644 = !DILocation(line: 747, column: 17, scope: !3635)
!3645 = !DILocation(line: 748, column: 5, scope: !3635)
!3646 = !DILocation(line: 750, column: 13, scope: !3625)
!3647 = !DILocation(line: 750, column: 11, scope: !3626)
!3648 = !DILocation(line: 753, column: 17, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 750, column: 21)
!3650 = !DILocation(line: 754, column: 13, scope: !3649)
!3651 = !DILocation(line: 754, column: 17, scope: !3649)
!3652 = !DILocation(line: 755, column: 5, scope: !3649)
!3653 = !DILocation(line: 757, column: 11, scope: !3624)
!3654 = !DILocation(line: 0, scope: !481, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 757, column: 11, scope: !3624)
!3656 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !3655)
!3657 = !DILocation(line: 0, scope: !481, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 757, column: 11, scope: !3624)
!3659 = !DILocation(line: 71, column: 10, scope: !481, inlinedAt: !3658)
!3660 = !DILocation(line: 757, column: 11, scope: !3625)
!3661 = !DILocation(line: 758, column: 23, scope: !3623)
!3662 = !DILocation(line: 758, column: 16, scope: !3623)
!3663 = !DILocation(line: 759, column: 5, scope: !3623)
!3664 = !DILocation(line: 760, column: 22, scope: !3623)
!3665 = !DILocation(line: 761, column: 26, scope: !3623)
!3666 = !DILocation(line: 761, column: 30, scope: !3623)
!3667 = !DILocation(line: 761, column: 18, scope: !3623)
!3668 = !DILocation(line: 762, column: 26, scope: !3623)
!3669 = !DILocation(line: 762, column: 30, scope: !3623)
!3670 = !DILocation(line: 762, column: 13, scope: !3623)
!3671 = !DILocation(line: 763, column: 20, scope: !3623)
!3672 = !DILocation(line: 763, column: 36, scope: !3623)
!3673 = !DILocation(line: 763, column: 54, scope: !3623)
!3674 = !DILocation(line: 763, column: 64, scope: !3623)
!3675 = !DILocation(line: 763, column: 17, scope: !3623)
!3676 = !DILocation(line: 764, column: 44, scope: !3623)
!3677 = !DILocation(line: 764, column: 42, scope: !3623)
!3678 = !DILocation(line: 764, column: 17, scope: !3623)
!3679 = !DILocation(line: 766, column: 3, scope: !3624)
!3680 = !DILocation(line: 768, column: 12, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 767, column: 8)
!3682 = !DILocation(line: 768, column: 5, scope: !3681)
!3683 = !DILocation(line: 0, scope: !3626)
!3684 = !DILocation(line: 770, column: 1, scope: !3616)
!3685 = !DISubprogram(name: "gsl_sf_bessel_lnKnu_e", scope: !3686, file: !3686, line: 519, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3686 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!3687 = !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !3688, file: !3688, line: 65, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3688 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!3689 = !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !3690, file: !3690, line: 62, type: !3691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3690 = !DIFile(filename: "../gsl/gsl_sf_laguerre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "58c60843776affae828c7538cacd7802")
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!40, !91, !92, !92, !1062}
!3693 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !3598, file: !3598, line: 136, type: !3694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!40, !3696, !1062}
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3697 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
