; ModuleID = 'bessel_Knu.c'
source_filename = "bessel_Knu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_e10_struct = type { double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Knu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Knu_scaled_e(nu, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Knu_e(nu, x, &result)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_lnKnu_e(nu, x, &result)\00", align 1, !dbg !19

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Knu_scaled_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !75 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !102, metadata ptr %4, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !90, metadata !DIExpression()), !dbg !104
  %5 = fcmp ole double %1, 0.000000e+00, !dbg !105
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = or i1 %6, %5, !dbg !106
  br i1 %7, label %8, label %10, !dbg !106

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !107, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !107
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !107, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #6, !dbg !116
  br label %15, !dbg !116

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6, !dbg !118
  %11 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !119, !range !120
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !100, metadata !DIExpression()), !dbg !103
  %12 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef %2) #6, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !101, metadata !DIExpression()), !dbg !103
  %13 = icmp eq i32 %11, 0, !dbg !122
  %14 = select i1 %13, i32 %12, i32 %11, !dbg !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6, !dbg !123
  br label %15

15:                                               ; preds = %8, %10
  %16 = phi i32 [ 1, %8 ], [ %14, %10 ], !dbg !124
  ret i32 %16, !dbg !125
}

declare !dbg !126 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !131 {
  %4 = alloca double, align 8, !DIAssignID !158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !143, metadata !DIExpression(), metadata !158, metadata ptr %4, metadata !DIExpression()), !dbg !159
  %5 = alloca double, align 8, !DIAssignID !160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !144, metadata !DIExpression(), metadata !160, metadata ptr %5, metadata !DIExpression()), !dbg !159
  %6 = alloca double, align 8, !DIAssignID !161
  call void @llvm.dbg.assign(metadata i1 undef, metadata !145, metadata !DIExpression(), metadata !161, metadata ptr %6, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %0, metadata !136, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata double %1, metadata !137, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !138, metadata !DIExpression()), !dbg !162
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !163
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !164
  br i1 %9, label %10, label %13, !dbg !164

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !165, !tbaa !168
  %11 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !165
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !165, !tbaa !171
  %12 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !165
  store i32 0, ptr %12, align 8, !dbg !165, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, i32 noundef 1) #6, !dbg !173
  br label %67, !dbg !173

13:                                               ; preds = %3
  %14 = fadd double %0, 5.000000e-01, !dbg !175
  %15 = fptosi double %14 to i32, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !139, metadata !DIExpression()), !dbg !159
  %16 = sitofp i32 %15 to double, !dbg !177
  %17 = fsub double %0, %16, !dbg !178
  tail call void @llvm.dbg.value(metadata double %17, metadata !142, metadata !DIExpression()), !dbg !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !159
  %18 = fcmp olt double %1, 2.000000e+00, !dbg !180
  br i1 %18, label %19, label %21, !dbg !182

19:                                               ; preds = %13
  %20 = call i32 @gsl_sf_bessel_K_scaled_temme(double noundef %17, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !183
  br label %23, !dbg !185

21:                                               ; preds = %13
  %22 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef %17, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !186
  br label %23

23:                                               ; preds = %21, %19
  %24 = load double, ptr %4, align 8, !dbg !188, !tbaa !189
  tail call void @llvm.dbg.value(metadata double %24, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !149, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %24, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !159
  %25 = icmp sgt i32 %15, 0, !dbg !190
  br i1 %25, label %26, label %58, !dbg !191

26:                                               ; preds = %23
  %27 = load double, ptr %5, align 8, !dbg !192, !tbaa !189
  tail call void @llvm.dbg.value(metadata double %27, metadata !147, metadata !DIExpression()), !dbg !159
  br label %28, !dbg !191

28:                                               ; preds = %26, %45
  %29 = phi double [ %48, %45 ], [ %24, %26 ]
  %30 = phi i32 [ %47, %45 ], [ 0, %26 ]
  %31 = phi i32 [ %56, %45 ], [ 0, %26 ]
  %32 = phi double [ %55, %45 ], [ %27, %26 ]
  tail call void @llvm.dbg.value(metadata double %29, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !150, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !149, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %32, metadata !147, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %29, metadata !148, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %32, metadata !146, metadata !DIExpression()), !dbg !159
  %33 = call double @llvm.fabs.f64(double %32), !dbg !193
  %34 = fcmp ogt double %33, 0x5FEFFFFFFFFFFFFF, !dbg !194
  br i1 %34, label %35, label %45, !dbg !195

35:                                               ; preds = %28
  %36 = call double @log(double noundef %33) #6, !dbg !196
  %37 = fdiv double %36, 0x40026BB1BBB55516, !dbg !197
  %38 = call double @llvm.floor.f64(double %37), !dbg !198
  tail call void @llvm.dbg.value(metadata double %38, metadata !151, metadata !DIExpression()), !dbg !199
  %39 = call double @pow(double noundef 1.000000e+01, double noundef %38) #6, !dbg !200
  tail call void @llvm.dbg.value(metadata double %39, metadata !157, metadata !DIExpression()), !dbg !199
  %40 = fdiv double %29, %39, !dbg !201
  tail call void @llvm.dbg.value(metadata double %40, metadata !148, metadata !DIExpression()), !dbg !159
  %41 = fdiv double %32, %39, !dbg !202
  tail call void @llvm.dbg.value(metadata double %41, metadata !146, metadata !DIExpression()), !dbg !159
  %42 = sitofp i32 %30 to double, !dbg !203
  %43 = fadd double %38, %42, !dbg !203
  %44 = fptosi double %43 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !150, metadata !DIExpression()), !dbg !159
  br label %45, !dbg !204

45:                                               ; preds = %35, %28
  %46 = phi double [ %40, %35 ], [ %29, %28 ], !dbg !205
  %47 = phi i32 [ %44, %35 ], [ %30, %28 ], !dbg !159
  %48 = phi double [ %41, %35 ], [ %32, %28 ], !dbg !205
  tail call void @llvm.dbg.value(metadata double %48, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !150, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %46, metadata !148, metadata !DIExpression()), !dbg !159
  %49 = sitofp i32 %31 to double, !dbg !206
  %50 = fadd double %17, %49, !dbg !207
  %51 = fadd double %50, 1.000000e+00, !dbg !208
  %52 = fmul double %51, 2.000000e+00, !dbg !209
  %53 = fdiv double %52, %1, !dbg !210
  %54 = fmul double %53, %48, !dbg !211
  %55 = fadd double %46, %54, !dbg !212
  tail call void @llvm.dbg.value(metadata double %55, metadata !147, metadata !DIExpression()), !dbg !159
  %56 = add nuw nsw i32 %31, 1, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !149, metadata !DIExpression()), !dbg !159
  %57 = icmp eq i32 %56, %15, !dbg !190
  br i1 %57, label %58, label %28, !dbg !191, !llvm.loop !214

58:                                               ; preds = %45, %23
  %59 = phi i32 [ 0, %23 ], [ %47, %45 ], !dbg !159
  %60 = phi double [ %24, %23 ], [ %48, %45 ], !dbg !159
  store double %60, ptr %2, align 8, !dbg !217, !tbaa !168
  %61 = fadd double %16, 4.000000e+00, !dbg !218
  %62 = fmul double %61, 0x3CC0000000000000, !dbg !219
  %63 = call double @llvm.fabs.f64(double %60), !dbg !220
  %64 = fmul double %62, %63, !dbg !221
  %65 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !222
  store double %64, ptr %65, align 8, !dbg !223, !tbaa !171
  %66 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !224
  store i32 %59, ptr %66, align 8, !dbg !225, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !226
  br label %67

67:                                               ; preds = %10, %58
  %68 = phi i32 [ 1, %10 ], [ 0, %58 ], !dbg !227
  ret i32 %68, !dbg !228
}

declare !dbg !229 i32 @gsl_sf_result_smash_e(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !234 i32 @gsl_sf_bessel_K_scaled_temme(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !239 i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !241 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !245 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Knu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !248 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !256
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !253, metadata !DIExpression(), metadata !257, metadata ptr %5, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %0, metadata !250, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %1, metadata !251, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !252, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !256, metadata ptr %4, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata ptr %5, metadata !90, metadata !DIExpression()), !dbg !262
  %6 = fcmp ole double %1, 0.000000e+00, !dbg !263
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = or i1 %7, %6, !dbg !264
  br i1 %8, label %9, label %11, !dbg !264

9:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !265, !tbaa !110, !DIAssignID !266
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !266, metadata ptr %5, metadata !DIExpression()), !dbg !258
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !265
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !265, !tbaa !115, !DIAssignID !267
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !267, metadata ptr %10, metadata !DIExpression()), !dbg !258
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #6, !dbg !268
  br label %19, !dbg !268

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6, !dbg !269
  %12 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !270, !range !120
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !260
  %13 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !271
  call void @llvm.dbg.value(metadata i32 %13, metadata !101, metadata !DIExpression()), !dbg !260
  %14 = icmp eq i32 %12, 0, !dbg !272
  %15 = select i1 %14, i32 %13, i32 %12, !dbg !272
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6, !dbg !273
  %16 = load double, ptr %5, align 8, !dbg !274, !tbaa !110
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !dbg !275, !tbaa !115
  br label %19

19:                                               ; preds = %9, %11
  %20 = phi double [ 0x7FF8000000000000, %9 ], [ %18, %11 ], !dbg !275
  %21 = phi double [ 0x7FF8000000000000, %9 ], [ %16, %11 ], !dbg !274
  %22 = phi i32 [ 1, %9 ], [ %15, %11 ], !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !254, metadata !DIExpression()), !dbg !258
  %23 = fneg double %1, !dbg !277
  %24 = call i32 @gsl_sf_exp_mult_err_e(double noundef %23, double noundef 0.000000e+00, double noundef %21, double noundef %20, ptr noundef %2) #6, !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !255, metadata !DIExpression()), !dbg !258
  %25 = icmp eq i32 %24, 0, !dbg !279
  %26 = select i1 %25, i32 %22, i32 %24, !dbg !279
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !280
  ret i32 %26, !dbg !281
}

declare !dbg !282 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_lnKnu_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !286 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !306
  call void @llvm.dbg.assign(metadata i1 undef, metadata !291, metadata !DIExpression(), metadata !306, metadata ptr %4, metadata !DIExpression()), !dbg !307
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !298, metadata !DIExpression(), metadata !308, metadata ptr %5, metadata !DIExpression()), !dbg !309
  %6 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !303, metadata !DIExpression(), metadata !310, metadata ptr %6, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata double %0, metadata !288, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata double %1, metadata !289, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !290, metadata !DIExpression()), !dbg !312
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !313
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !314
  br i1 %9, label %10, label %12, !dbg !314

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !315, !tbaa !110
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !315
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !315, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #6, !dbg !318
  br label %88, !dbg !318

12:                                               ; preds = %3
  %13 = fcmp oeq double %0, 0.000000e+00, !dbg !320
  br i1 %13, label %14, label %32, !dbg !321

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !322
  %15 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef nonnull %4) #6, !dbg !323
  %16 = load double, ptr %4, align 8, !dbg !324, !tbaa !110
  %17 = call double @llvm.fabs.f64(double %16), !dbg !325
  %18 = call double @log(double noundef %17) #6, !dbg !326
  %19 = fsub double %18, %1, !dbg !327
  store double %19, ptr %2, align 8, !dbg !328, !tbaa !110
  %20 = call double @llvm.fabs.f64(double %1), !dbg !329
  %21 = fmul double %20, 0x3CB0000000000000, !dbg !330
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !331
  %23 = load double, ptr %22, align 8, !dbg !331, !tbaa !115
  %24 = load double, ptr %4, align 8, !dbg !332, !tbaa !110
  %25 = fdiv double %23, %24, !dbg !333
  %26 = call double @llvm.fabs.f64(double %25), !dbg !334
  %27 = fadd double %21, %26, !dbg !335
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !336
  %29 = call double @llvm.fabs.f64(double %19), !dbg !337
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !338
  %31 = fadd double %30, %27, !dbg !339
  store double %31, ptr %28, align 8, !dbg !339, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !340
  br label %88

32:                                               ; preds = %12
  %33 = fcmp olt double %1, 2.000000e+00, !dbg !341
  %34 = fcmp ogt double %0, 1.000000e+00
  %35 = and i1 %34, %33, !dbg !342
  br i1 %35, label %36, label %66, !dbg !342

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !343
  %37 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %5) #6, !dbg !344
  %38 = fmul double %1, 5.000000e-01, !dbg !345
  %39 = call double @log(double noundef %38) #6, !dbg !346
  %40 = fmul double %39, %0, !dbg !347
  %41 = fsub double 0xBFE62E42FEFA39EF, %40, !dbg !348
  %42 = load double, ptr %5, align 8, !dbg !349, !tbaa !110
  %43 = fadd double %42, %41, !dbg !350
  tail call void @llvm.dbg.value(metadata double %43, metadata !295, metadata !DIExpression()), !dbg !309
  %44 = fcmp ogt double %43, 0x40858E42FEFA39EF, !dbg !351
  br i1 %44, label %46, label %45, !dbg !352

45:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !353
  br label %66

46:                                               ; preds = %36
  %47 = fmul double %1, 2.500000e-01, !dbg !354
  %48 = fmul double %47, %1, !dbg !355
  tail call void @llvm.dbg.value(metadata double %48, metadata !299, metadata !DIExpression()), !dbg !356
  %49 = fadd double %0, -1.000000e+00, !dbg !357
  %50 = fdiv double %48, %49, !dbg !358
  %51 = fsub double 1.000000e+00, %50, !dbg !359
  tail call void @llvm.dbg.value(metadata double %51, metadata !302, metadata !DIExpression()), !dbg !356
  %52 = fcmp ogt double %0, 2.000000e+00, !dbg !360
  %53 = fadd double %0, -2.000000e+00, !dbg !362
  %54 = fdiv double %48, %53, !dbg !362
  %55 = fmul double %50, %54, !dbg !362
  %56 = select i1 %52, double %55, double -0.000000e+00, !dbg !362
  %57 = fadd double %51, %56, !dbg !362
  tail call void @llvm.dbg.value(metadata double %57, metadata !302, metadata !DIExpression()), !dbg !356
  %58 = call double @log(double noundef %57) #6, !dbg !363
  %59 = fadd double %43, %58, !dbg !364
  store double %59, ptr %2, align 8, !dbg !365, !tbaa !110
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !366
  %61 = load double, ptr %60, align 8, !dbg !366, !tbaa !115
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !367
  %63 = call double @llvm.fabs.f64(double %59), !dbg !368
  %64 = fmul double %63, 0x3CC0000000000000, !dbg !369
  %65 = fadd double %61, %64, !dbg !370
  store double %65, ptr %62, align 8, !dbg !370, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !353
  br label %88

66:                                               ; preds = %45, %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6, !dbg !371
  %67 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !372, !range !120
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !305, metadata !DIExpression()), !dbg !311
  %68 = load double, ptr %6, align 8, !dbg !373, !tbaa !168
  %69 = call double @llvm.fabs.f64(double %68), !dbg !374
  %70 = call double @log(double noundef %69) #6, !dbg !375
  %71 = fsub double %70, %1, !dbg !376
  %72 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %6, i64 0, i32 2, !dbg !377
  %73 = load i32, ptr %72, align 8, !dbg !377, !tbaa !172
  %74 = sitofp i32 %73 to double, !dbg !378
  %75 = fmul double %74, 0x40026BB1BBB55516, !dbg !379
  %76 = fadd double %71, %75, !dbg !380
  store double %76, ptr %2, align 8, !dbg !381, !tbaa !110
  %77 = call double @llvm.fabs.f64(double %1), !dbg !382
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !383
  %79 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %6, i64 0, i32 1, !dbg !384
  %80 = load double, ptr %79, align 8, !dbg !384, !tbaa !171
  %81 = fdiv double %80, %68, !dbg !385
  %82 = call double @llvm.fabs.f64(double %81), !dbg !386
  %83 = fadd double %78, %82, !dbg !387
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !388
  %85 = call double @llvm.fabs.f64(double %76), !dbg !389
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !390
  %87 = fadd double %83, %86, !dbg !391
  store double %87, ptr %84, align 8, !dbg !391, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6, !dbg !392
  br label %88

88:                                               ; preds = %46, %66, %14, %10
  %89 = phi i32 [ 1, %10 ], [ 0, %14 ], [ 0, %46 ], [ %67, %66 ], !dbg !312
  ret i32 %89, !dbg !393
}

declare !dbg !394 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !398 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Knu_scaled(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !402 {
  %3 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !410
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !411, metadata ptr %4, metadata !DIExpression()), !dbg !412
  tail call void @llvm.dbg.value(metadata double %0, metadata !406, metadata !DIExpression()), !dbg !412
  tail call void @llvm.dbg.value(metadata double %1, metadata !407, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !410, metadata ptr %3, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !416
  %5 = fcmp ole double %1, 0.000000e+00, !dbg !417
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = or i1 %6, %5, !dbg !418
  br i1 %7, label %8, label %10, !dbg !418

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !419, !tbaa !110, !DIAssignID !420
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !420, metadata ptr %4, metadata !DIExpression()), !dbg !412
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !419
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !419, !tbaa !115, !DIAssignID !421
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !421, metadata ptr %9, metadata !DIExpression()), !dbg !412
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #6, !dbg !422
  tail call void @llvm.dbg.value(metadata i32 1, metadata !409, metadata !DIExpression()), !dbg !412
  br label %16, !dbg !413

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6, !dbg !423
  %11 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !424, !range !120
  call void @llvm.dbg.value(metadata i32 %11, metadata !100, metadata !DIExpression()), !dbg !414
  %12 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %3, ptr noundef nonnull %4) #6, !dbg !425
  call void @llvm.dbg.value(metadata i32 %12, metadata !101, metadata !DIExpression()), !dbg !414
  %13 = icmp eq i32 %11, 0, !dbg !426
  %14 = select i1 %13, i32 %12, i32 %11, !dbg !426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6, !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !409, metadata !DIExpression()), !dbg !412
  %15 = icmp eq i32 %14, 0, !dbg !428
  br i1 %15, label %18, label %16, !dbg !413

16:                                               ; preds = %8, %10
  %17 = phi i32 [ 1, %8 ], [ %14, %10 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 178, i32 noundef %17) #6, !dbg !430
  br label %18, !dbg !430

18:                                               ; preds = %10, %16
  %19 = load double, ptr %4, align 8, !dbg !413, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !433
  ret double %19, !dbg !433
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Knu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !434 {
  %3 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !440
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !441
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !438, metadata !DIExpression(), metadata !442, metadata ptr %5, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %0, metadata !436, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %1, metadata !437, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !253, metadata !DIExpression(), metadata !441, metadata ptr %4, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata double %0, metadata !250, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata double %1, metadata !251, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata ptr %5, metadata !252, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !447
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !440, metadata ptr %3, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !450
  %6 = fcmp ole double %1, 0.000000e+00, !dbg !451
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = or i1 %7, %6, !dbg !452
  br i1 %8, label %9, label %11, !dbg !452

9:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !453, !tbaa !110, !DIAssignID !454
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !454, metadata ptr %4, metadata !DIExpression()), !dbg !445
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !453
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !453, !tbaa !115, !DIAssignID !455
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !455, metadata ptr %10, metadata !DIExpression()), !dbg !445
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #6, !dbg !456
  br label %19, !dbg !456

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6, !dbg !457
  %12 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !458, !range !120
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !448
  %13 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %3, ptr noundef nonnull %4) #6, !dbg !459
  call void @llvm.dbg.value(metadata i32 %13, metadata !101, metadata !DIExpression()), !dbg !448
  %14 = icmp eq i32 %12, 0, !dbg !460
  %15 = select i1 %14, i32 %13, i32 %12, !dbg !460
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6, !dbg !461
  %16 = load double, ptr %4, align 8, !dbg !462, !tbaa !110
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !dbg !463, !tbaa !115
  br label %19

19:                                               ; preds = %9, %11
  %20 = phi double [ 0x7FF8000000000000, %9 ], [ %18, %11 ], !dbg !463
  %21 = phi double [ 0x7FF8000000000000, %9 ], [ %16, %11 ], !dbg !462
  %22 = phi i32 [ 1, %9 ], [ %15, %11 ], !dbg !464
  call void @llvm.dbg.value(metadata i32 %22, metadata !254, metadata !DIExpression()), !dbg !445
  %23 = fneg double %1, !dbg !465
  %24 = call i32 @gsl_sf_exp_mult_err_e(double noundef %23, double noundef 0.000000e+00, double noundef %21, double noundef %20, ptr noundef nonnull %5) #6, !dbg !466
  call void @llvm.dbg.value(metadata i32 %24, metadata !255, metadata !DIExpression()), !dbg !445
  %25 = icmp eq i32 %24, 0, !dbg !467
  %26 = select i1 %25, i32 %22, i32 %24, !dbg !467
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !439, metadata !DIExpression()), !dbg !443
  %27 = icmp eq i32 %26, 0, !dbg !469
  br i1 %27, label %29, label %28, !dbg !444

28:                                               ; preds = %19
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef %26) #6, !dbg !471
  br label %29, !dbg !471

29:                                               ; preds = %19, %28
  %30 = load double, ptr %5, align 8, !dbg !444, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !474
  ret double %30, !dbg !474
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_lnKnu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !475 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !479, metadata !DIExpression(), metadata !481, metadata ptr %3, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %0, metadata !477, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %1, metadata !478, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !483
  %4 = call i32 @gsl_sf_bessel_lnKnu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !483, !range !120
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !480, metadata !DIExpression()), !dbg !482
  %5 = icmp eq i32 %4, 0, !dbg !484
  br i1 %5, label %7, label %6, !dbg !483

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 188, i32 noundef 1) #6, !dbg !486
  br label %7, !dbg !486

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !483, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !489
  ret double %8, !dbg !489
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Knu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7a705e814c0375f1c986056dcca86061")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 43)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 36)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 38)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !66, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!28}
!66 = !{!0, !7, !9, !14, !19}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!74 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!75 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e", scope: !2, file: !2, line: 37, type: !76, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !87)
!76 = !DISubroutineType(types: !77)
!77 = !{!28, !78, !78, !80}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !79, size: 64, offset: 64)
!87 = !{!88, !89, !90, !91, !100, !101}
!88 = !DILocalVariable(name: "nu", arg: 1, scope: !75, file: !2, line: 37, type: !78)
!89 = !DILocalVariable(name: "x", arg: 2, scope: !75, file: !2, line: 37, type: !78)
!90 = !DILocalVariable(name: "result", arg: 3, scope: !75, file: !2, line: 37, type: !80)
!91 = !DILocalVariable(name: "result_e10", scope: !92, file: !2, line: 45, type: !94)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 44, column: 8)
!93 = distinct !DILexicalBlock(scope: !75, file: !2, line: 41, column: 6)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !82, line: 51, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !82, line: 46, size: 192, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !82, line: 47, baseType: !79, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !82, line: 48, baseType: !79, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !95, file: !82, line: 49, baseType: !28, size: 32, offset: 128)
!100 = !DILocalVariable(name: "status", scope: !92, file: !2, line: 46, type: !28)
!101 = !DILocalVariable(name: "status2", scope: !92, file: !2, line: 47, type: !28)
!102 = distinct !DIAssignID()
!103 = !DILocation(line: 0, scope: !92)
!104 = !DILocation(line: 0, scope: !75)
!105 = !DILocation(line: 41, column: 8, scope: !93)
!106 = !DILocation(line: 41, column: 15, scope: !93)
!107 = !DILocation(line: 42, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 42, column: 5)
!109 = distinct !DILexicalBlock(scope: !93, file: !2, line: 41, column: 28)
!110 = !{!111, !112, i64 0}
!111 = !{!"gsl_sf_result_struct", !112, i64 0, !112, i64 8}
!112 = !{!"double", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!111, !112, i64 8}
!116 = !DILocation(line: 42, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 42, column: 5)
!118 = !DILocation(line: 45, column: 5, scope: !92)
!119 = !DILocation(line: 46, column: 18, scope: !92)
!120 = !{i32 0, i32 2}
!121 = !DILocation(line: 47, column: 19, scope: !92)
!122 = !DILocation(line: 48, column: 12, scope: !92)
!123 = !DILocation(line: 49, column: 3, scope: !93)
!124 = !DILocation(line: 0, scope: !93)
!125 = !DILocation(line: 50, column: 1, scope: !75)
!126 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !28, !28}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!131 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e10_e", scope: !2, file: !2, line: 53, type: !132, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !135)
!132 = !DISubroutineType(types: !133)
!133 = !{!28, !78, !78, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!135 = !{!136, !137, !138, !139, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !157}
!136 = !DILocalVariable(name: "nu", arg: 1, scope: !131, file: !2, line: 53, type: !78)
!137 = !DILocalVariable(name: "x", arg: 2, scope: !131, file: !2, line: 53, type: !78)
!138 = !DILocalVariable(name: "result", arg: 3, scope: !131, file: !2, line: 53, type: !134)
!139 = !DILocalVariable(name: "N", scope: !140, file: !2, line: 61, type: !28)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 60, column: 8)
!141 = distinct !DILexicalBlock(scope: !131, file: !2, line: 57, column: 6)
!142 = !DILocalVariable(name: "mu", scope: !140, file: !2, line: 62, type: !79)
!143 = !DILocalVariable(name: "K_mu", scope: !140, file: !2, line: 63, type: !79)
!144 = !DILocalVariable(name: "K_mup1", scope: !140, file: !2, line: 63, type: !79)
!145 = !DILocalVariable(name: "Kp_mu", scope: !140, file: !2, line: 63, type: !79)
!146 = !DILocalVariable(name: "K_nu", scope: !140, file: !2, line: 64, type: !79)
!147 = !DILocalVariable(name: "K_nup1", scope: !140, file: !2, line: 64, type: !79)
!148 = !DILocalVariable(name: "K_num1", scope: !140, file: !2, line: 64, type: !79)
!149 = !DILocalVariable(name: "n", scope: !140, file: !2, line: 65, type: !28)
!150 = !DILocalVariable(name: "e10", scope: !140, file: !2, line: 65, type: !28)
!151 = !DILocalVariable(name: "p", scope: !152, file: !2, line: 83, type: !79)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 82, column: 42)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 82, column: 11)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 78, column: 24)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 78, column: 5)
!156 = distinct !DILexicalBlock(scope: !140, file: !2, line: 78, column: 5)
!157 = !DILocalVariable(name: "factor", scope: !152, file: !2, line: 84, type: !79)
!158 = distinct !DIAssignID()
!159 = !DILocation(line: 0, scope: !140)
!160 = distinct !DIAssignID()
!161 = distinct !DIAssignID()
!162 = !DILocation(line: 0, scope: !131)
!163 = !DILocation(line: 57, column: 8, scope: !141)
!164 = !DILocation(line: 57, column: 15, scope: !141)
!165 = !DILocation(line: 58, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 58, column: 5)
!167 = distinct !DILexicalBlock(scope: !141, file: !2, line: 57, column: 28)
!168 = !{!169, !112, i64 0}
!169 = !{!"gsl_sf_result_e10_struct", !112, i64 0, !112, i64 8, !170, i64 16}
!170 = !{!"int", !113, i64 0}
!171 = !{!169, !112, i64 8}
!172 = !{!169, !170, i64 16}
!173 = !DILocation(line: 58, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !2, line: 58, column: 5)
!175 = !DILocation(line: 61, column: 22, scope: !140)
!176 = !DILocation(line: 61, column: 13, scope: !140)
!177 = !DILocation(line: 62, column: 22, scope: !140)
!178 = !DILocation(line: 62, column: 20, scope: !140)
!179 = !DILocation(line: 63, column: 5, scope: !140)
!180 = !DILocation(line: 67, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !140, file: !2, line: 67, column: 8)
!182 = !DILocation(line: 67, column: 8, scope: !140)
!183 = !DILocation(line: 68, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !2, line: 67, column: 17)
!185 = !DILocation(line: 69, column: 5, scope: !184)
!186 = !DILocation(line: 71, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !181, file: !2, line: 70, column: 10)
!188 = !DILocation(line: 75, column: 14, scope: !140)
!189 = !{!112, !112, i64 0}
!190 = !DILocation(line: 78, column: 15, scope: !155)
!191 = !DILocation(line: 78, column: 5, scope: !156)
!192 = !DILocation(line: 76, column: 14, scope: !140)
!193 = !DILocation(line: 82, column: 11, scope: !153)
!194 = !DILocation(line: 82, column: 22, scope: !153)
!195 = !DILocation(line: 82, column: 11, scope: !154)
!196 = !DILocation(line: 83, column: 26, scope: !152)
!197 = !DILocation(line: 83, column: 41, scope: !152)
!198 = !DILocation(line: 83, column: 20, scope: !152)
!199 = !DILocation(line: 0, scope: !152)
!200 = !DILocation(line: 84, column: 25, scope: !152)
!201 = !DILocation(line: 85, column: 16, scope: !152)
!202 = !DILocation(line: 86, column: 14, scope: !152)
!203 = !DILocation(line: 87, column: 13, scope: !152)
!204 = !DILocation(line: 88, column: 7, scope: !152)
!205 = !DILocation(line: 0, scope: !154)
!206 = !DILocation(line: 89, column: 24, scope: !154)
!207 = !DILocation(line: 89, column: 23, scope: !154)
!208 = !DILocation(line: 89, column: 25, scope: !154)
!209 = !DILocation(line: 89, column: 19, scope: !154)
!210 = !DILocation(line: 89, column: 28, scope: !154)
!211 = !DILocation(line: 89, column: 31, scope: !154)
!212 = !DILocation(line: 89, column: 38, scope: !154)
!213 = !DILocation(line: 78, column: 20, scope: !155)
!214 = distinct !{!214, !191, !215, !216}
!215 = !DILocation(line: 90, column: 5, scope: !156)
!216 = !{!"llvm.loop.mustprogress"}
!217 = !DILocation(line: 92, column: 17, scope: !140)
!218 = !DILocation(line: 93, column: 46, scope: !140)
!219 = !DILocation(line: 93, column: 41, scope: !140)
!220 = !DILocation(line: 93, column: 55, scope: !140)
!221 = !DILocation(line: 93, column: 53, scope: !140)
!222 = !DILocation(line: 93, column: 13, scope: !140)
!223 = !DILocation(line: 93, column: 17, scope: !140)
!224 = !DILocation(line: 94, column: 13, scope: !140)
!225 = !DILocation(line: 94, column: 17, scope: !140)
!226 = !DILocation(line: 96, column: 3, scope: !141)
!227 = !DILocation(line: 0, scope: !141)
!228 = !DILocation(line: 97, column: 1, scope: !131)
!229 = !DISubprogram(name: "gsl_sf_result_smash_e", scope: !82, file: !82, line: 54, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!28, !232, !80}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!234 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !235, file: !235, line: 34, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!236 = !DISubroutineType(types: !237)
!237 = !{!28, !78, !78, !238, !238, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!239 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !240, file: !240, line: 81, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!241 = !DISubprogram(name: "log", scope: !242, file: !242, line: 104, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!243 = !DISubroutineType(types: !244)
!244 = !{!79, !79}
!245 = !DISubprogram(name: "pow", scope: !242, file: !242, line: 140, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!79, !79, !79}
!248 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_e", scope: !2, file: !2, line: 101, type: !76, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !249)
!249 = !{!250, !251, !252, !253, !254, !255}
!250 = !DILocalVariable(name: "nu", arg: 1, scope: !248, file: !2, line: 101, type: !78)
!251 = !DILocalVariable(name: "x", arg: 2, scope: !248, file: !2, line: 101, type: !78)
!252 = !DILocalVariable(name: "result", arg: 3, scope: !248, file: !2, line: 101, type: !80)
!253 = !DILocalVariable(name: "b", scope: !248, file: !2, line: 103, type: !81)
!254 = !DILocalVariable(name: "stat_K", scope: !248, file: !2, line: 104, type: !28)
!255 = !DILocalVariable(name: "stat_e", scope: !248, file: !2, line: 105, type: !28)
!256 = distinct !DIAssignID()
!257 = distinct !DIAssignID()
!258 = !DILocation(line: 0, scope: !248)
!259 = !DILocation(line: 103, column: 3, scope: !248)
!260 = !DILocation(line: 0, scope: !92, inlinedAt: !261)
!261 = distinct !DILocation(line: 104, column: 16, scope: !248)
!262 = !DILocation(line: 0, scope: !75, inlinedAt: !261)
!263 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !261)
!264 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !261)
!265 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !261)
!266 = distinct !DIAssignID()
!267 = distinct !DIAssignID()
!268 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !261)
!269 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !261)
!270 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !261)
!271 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !261)
!272 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !261)
!273 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !261)
!274 = !DILocation(line: 105, column: 49, scope: !248)
!275 = !DILocation(line: 105, column: 56, scope: !248)
!276 = !DILocation(line: 0, scope: !93, inlinedAt: !261)
!277 = !DILocation(line: 105, column: 38, scope: !248)
!278 = !DILocation(line: 105, column: 16, scope: !248)
!279 = !DILocation(line: 106, column: 10, scope: !248)
!280 = !DILocation(line: 107, column: 1, scope: !248)
!281 = !DILocation(line: 106, column: 3, scope: !248)
!282 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !283, file: !283, line: 122, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!284 = !DISubroutineType(types: !285)
!285 = !{!28, !78, !78, !78, !78, !80}
!286 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu_e", scope: !2, file: !2, line: 111, type: !76, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !287)
!287 = !{!288, !289, !290, !291, !295, !298, !299, !302, !303, !305}
!288 = !DILocalVariable(name: "nu", arg: 1, scope: !286, file: !2, line: 111, type: !78)
!289 = !DILocalVariable(name: "x", arg: 2, scope: !286, file: !2, line: 111, type: !78)
!290 = !DILocalVariable(name: "result", arg: 3, scope: !286, file: !2, line: 111, type: !80)
!291 = !DILocalVariable(name: "K_scaled", scope: !292, file: !2, line: 119, type: !81)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 118, column: 22)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 118, column: 11)
!294 = distinct !DILexicalBlock(scope: !286, file: !2, line: 115, column: 6)
!295 = !DILocalVariable(name: "ln_bound", scope: !296, file: !2, line: 138, type: !79)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 130, column: 32)
!297 = distinct !DILexicalBlock(scope: !293, file: !2, line: 130, column: 11)
!298 = !DILocalVariable(name: "lg_nu", scope: !296, file: !2, line: 139, type: !81)
!299 = !DILocalVariable(name: "xi", scope: !300, file: !2, line: 145, type: !79)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 142, column: 43)
!301 = distinct !DILexicalBlock(scope: !296, file: !2, line: 142, column: 8)
!302 = !DILocalVariable(name: "sum", scope: !300, file: !2, line: 146, type: !79)
!303 = !DILocalVariable(name: "K_scaled", scope: !304, file: !2, line: 162, type: !94)
!304 = distinct !DILexicalBlock(scope: !286, file: !2, line: 157, column: 3)
!305 = !DILocalVariable(name: "status", scope: !304, file: !2, line: 163, type: !28)
!306 = distinct !DIAssignID()
!307 = !DILocation(line: 0, scope: !292)
!308 = distinct !DIAssignID()
!309 = !DILocation(line: 0, scope: !296)
!310 = distinct !DIAssignID()
!311 = !DILocation(line: 0, scope: !304)
!312 = !DILocation(line: 0, scope: !286)
!313 = !DILocation(line: 115, column: 8, scope: !294)
!314 = !DILocation(line: 115, column: 15, scope: !294)
!315 = !DILocation(line: 116, column: 5, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 116, column: 5)
!317 = distinct !DILexicalBlock(scope: !294, file: !2, line: 115, column: 28)
!318 = !DILocation(line: 116, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !2, line: 116, column: 5)
!320 = !DILocation(line: 118, column: 14, scope: !293)
!321 = !DILocation(line: 118, column: 11, scope: !294)
!322 = !DILocation(line: 119, column: 5, scope: !292)
!323 = !DILocation(line: 124, column: 5, scope: !292)
!324 = !DILocation(line: 125, column: 43, scope: !292)
!325 = !DILocation(line: 125, column: 29, scope: !292)
!326 = !DILocation(line: 125, column: 25, scope: !292)
!327 = !DILocation(line: 125, column: 23, scope: !292)
!328 = !DILocation(line: 125, column: 18, scope: !292)
!329 = !DILocation(line: 126, column: 38, scope: !292)
!330 = !DILocation(line: 126, column: 36, scope: !292)
!331 = !DILocation(line: 126, column: 62, scope: !292)
!332 = !DILocation(line: 126, column: 75, scope: !292)
!333 = !DILocation(line: 126, column: 65, scope: !292)
!334 = !DILocation(line: 126, column: 48, scope: !292)
!335 = !DILocation(line: 126, column: 46, scope: !292)
!336 = !DILocation(line: 126, column: 13, scope: !292)
!337 = !DILocation(line: 127, column: 38, scope: !292)
!338 = !DILocation(line: 127, column: 36, scope: !292)
!339 = !DILocation(line: 127, column: 17, scope: !292)
!340 = !DILocation(line: 129, column: 3, scope: !293)
!341 = !DILocation(line: 130, column: 13, scope: !297)
!342 = !DILocation(line: 130, column: 19, scope: !297)
!343 = !DILocation(line: 139, column: 5, scope: !296)
!344 = !DILocation(line: 140, column: 5, scope: !296)
!345 = !DILocation(line: 141, column: 35, scope: !296)
!346 = !DILocation(line: 141, column: 28, scope: !296)
!347 = !DILocation(line: 141, column: 27, scope: !296)
!348 = !DILocation(line: 141, column: 23, scope: !296)
!349 = !DILocation(line: 141, column: 47, scope: !296)
!350 = !DILocation(line: 141, column: 39, scope: !296)
!351 = !DILocation(line: 142, column: 17, scope: !301)
!352 = !DILocation(line: 142, column: 8, scope: !296)
!353 = !DILocation(line: 154, column: 3, scope: !297)
!354 = !DILocation(line: 145, column: 24, scope: !300)
!355 = !DILocation(line: 145, column: 26, scope: !300)
!356 = !DILocation(line: 0, scope: !300)
!357 = !DILocation(line: 146, column: 32, scope: !300)
!358 = !DILocation(line: 146, column: 28, scope: !300)
!359 = !DILocation(line: 146, column: 24, scope: !300)
!360 = !DILocation(line: 147, column: 13, scope: !361)
!361 = distinct !DILexicalBlock(scope: !300, file: !2, line: 147, column: 10)
!362 = !DILocation(line: 147, column: 10, scope: !300)
!363 = !DILocation(line: 148, column: 33, scope: !300)
!364 = !DILocation(line: 148, column: 31, scope: !300)
!365 = !DILocation(line: 148, column: 20, scope: !300)
!366 = !DILocation(line: 149, column: 28, scope: !300)
!367 = !DILocation(line: 149, column: 15, scope: !300)
!368 = !DILocation(line: 150, column: 46, scope: !300)
!369 = !DILocation(line: 150, column: 44, scope: !300)
!370 = !DILocation(line: 150, column: 19, scope: !300)
!371 = !DILocation(line: 162, column: 5, scope: !304)
!372 = !DILocation(line: 163, column: 18, scope: !304)
!373 = !DILocation(line: 164, column: 43, scope: !304)
!374 = !DILocation(line: 164, column: 29, scope: !304)
!375 = !DILocation(line: 164, column: 25, scope: !304)
!376 = !DILocation(line: 164, column: 23, scope: !304)
!377 = !DILocation(line: 164, column: 60, scope: !304)
!378 = !DILocation(line: 164, column: 51, scope: !304)
!379 = !DILocation(line: 164, column: 64, scope: !304)
!380 = !DILocation(line: 164, column: 49, scope: !304)
!381 = !DILocation(line: 164, column: 18, scope: !304)
!382 = !DILocation(line: 165, column: 38, scope: !304)
!383 = !DILocation(line: 165, column: 36, scope: !304)
!384 = !DILocation(line: 165, column: 62, scope: !304)
!385 = !DILocation(line: 165, column: 65, scope: !304)
!386 = !DILocation(line: 165, column: 48, scope: !304)
!387 = !DILocation(line: 165, column: 46, scope: !304)
!388 = !DILocation(line: 165, column: 13, scope: !304)
!389 = !DILocation(line: 166, column: 38, scope: !304)
!390 = !DILocation(line: 166, column: 36, scope: !304)
!391 = !DILocation(line: 166, column: 17, scope: !304)
!392 = !DILocation(line: 168, column: 3, scope: !286)
!393 = !DILocation(line: 169, column: 1, scope: !286)
!394 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !395, file: !395, line: 218, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!396 = !DISubroutineType(types: !397)
!397 = !{!28, !78, !80}
!398 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !399, file: !399, line: 47, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!400 = !DISubroutineType(types: !401)
!401 = !{!28, !79, !80}
!402 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled", scope: !2, file: !2, line: 176, type: !403, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!79, !78, !78}
!405 = !{!406, !407, !408, !409}
!406 = !DILocalVariable(name: "nu", arg: 1, scope: !402, file: !2, line: 176, type: !78)
!407 = !DILocalVariable(name: "x", arg: 2, scope: !402, file: !2, line: 176, type: !78)
!408 = !DILocalVariable(name: "result", scope: !402, file: !2, line: 178, type: !81)
!409 = !DILocalVariable(name: "status", scope: !402, file: !2, line: 178, type: !28)
!410 = distinct !DIAssignID()
!411 = distinct !DIAssignID()
!412 = !DILocation(line: 0, scope: !402)
!413 = !DILocation(line: 178, column: 3, scope: !402)
!414 = !DILocation(line: 0, scope: !92, inlinedAt: !415)
!415 = distinct !DILocation(line: 178, column: 3, scope: !402)
!416 = !DILocation(line: 0, scope: !75, inlinedAt: !415)
!417 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !415)
!418 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !415)
!419 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !415)
!420 = distinct !DIAssignID()
!421 = distinct !DIAssignID()
!422 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !415)
!423 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !415)
!424 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !415)
!425 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !415)
!426 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !415)
!427 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !415)
!428 = !DILocation(line: 178, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !402, file: !2, line: 178, column: 3)
!430 = !DILocation(line: 178, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 178, column: 3)
!432 = distinct !DILexicalBlock(scope: !429, file: !2, line: 178, column: 3)
!433 = !DILocation(line: 179, column: 1, scope: !402)
!434 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu", scope: !2, file: !2, line: 181, type: !403, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !435)
!435 = !{!436, !437, !438, !439}
!436 = !DILocalVariable(name: "nu", arg: 1, scope: !434, file: !2, line: 181, type: !78)
!437 = !DILocalVariable(name: "x", arg: 2, scope: !434, file: !2, line: 181, type: !78)
!438 = !DILocalVariable(name: "result", scope: !434, file: !2, line: 183, type: !81)
!439 = !DILocalVariable(name: "status", scope: !434, file: !2, line: 183, type: !28)
!440 = distinct !DIAssignID()
!441 = distinct !DIAssignID()
!442 = distinct !DIAssignID()
!443 = !DILocation(line: 0, scope: !434)
!444 = !DILocation(line: 183, column: 3, scope: !434)
!445 = !DILocation(line: 0, scope: !248, inlinedAt: !446)
!446 = distinct !DILocation(line: 183, column: 3, scope: !434)
!447 = !DILocation(line: 103, column: 3, scope: !248, inlinedAt: !446)
!448 = !DILocation(line: 0, scope: !92, inlinedAt: !449)
!449 = distinct !DILocation(line: 104, column: 16, scope: !248, inlinedAt: !446)
!450 = !DILocation(line: 0, scope: !75, inlinedAt: !449)
!451 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !449)
!452 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !449)
!453 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !449)
!454 = distinct !DIAssignID()
!455 = distinct !DIAssignID()
!456 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !449)
!457 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !449)
!458 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !449)
!459 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !449)
!460 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !449)
!461 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !449)
!462 = !DILocation(line: 105, column: 49, scope: !248, inlinedAt: !446)
!463 = !DILocation(line: 105, column: 56, scope: !248, inlinedAt: !446)
!464 = !DILocation(line: 0, scope: !93, inlinedAt: !449)
!465 = !DILocation(line: 105, column: 38, scope: !248, inlinedAt: !446)
!466 = !DILocation(line: 105, column: 16, scope: !248, inlinedAt: !446)
!467 = !DILocation(line: 106, column: 10, scope: !248, inlinedAt: !446)
!468 = !DILocation(line: 107, column: 1, scope: !248, inlinedAt: !446)
!469 = !DILocation(line: 183, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !434, file: !2, line: 183, column: 3)
!471 = !DILocation(line: 183, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 183, column: 3)
!473 = distinct !DILexicalBlock(scope: !470, file: !2, line: 183, column: 3)
!474 = !DILocation(line: 184, column: 1, scope: !434)
!475 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu", scope: !2, file: !2, line: 186, type: !403, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !476)
!476 = !{!477, !478, !479, !480}
!477 = !DILocalVariable(name: "nu", arg: 1, scope: !475, file: !2, line: 186, type: !78)
!478 = !DILocalVariable(name: "x", arg: 2, scope: !475, file: !2, line: 186, type: !78)
!479 = !DILocalVariable(name: "result", scope: !475, file: !2, line: 188, type: !81)
!480 = !DILocalVariable(name: "status", scope: !475, file: !2, line: 188, type: !28)
!481 = distinct !DIAssignID()
!482 = !DILocation(line: 0, scope: !475)
!483 = !DILocation(line: 188, column: 3, scope: !475)
!484 = !DILocation(line: 188, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !475, file: !2, line: 188, column: 3)
!486 = !DILocation(line: 188, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !2, line: 188, column: 3)
!488 = distinct !DILexicalBlock(scope: !485, file: !2, line: 188, column: 3)
!489 = !DILocation(line: 189, column: 1, scope: !475)
