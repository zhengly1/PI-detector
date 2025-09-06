; ModuleID = 'mathieu_radfunc.c'
source_filename = "mathieu_radfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"q must be greater than zero\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_radfunc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [20 x i8] c"kind must be 1 or 2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Mc_e(kind, order, qq, zz, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Ms_e(kind, order, qq, zz, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Mc_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !74 {
  %6 = alloca [100 x double], align 16, !DIAssignID !112
  call void @llvm.dbg.assign(metadata i1 undef, metadata !100, metadata !DIExpression(), metadata !112, metadata ptr %6, metadata !DIExpression()), !dbg !113
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !114
  call void @llvm.dbg.assign(metadata i1 undef, metadata !111, metadata !DIExpression(), metadata !114, metadata ptr %7, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !86, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !87, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %2, metadata !88, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %3, metadata !89, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !95, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !97, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #7, !dbg !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !116
  %8 = fcmp ugt double %2, 0.000000e+00, !dbg !117
  br i1 %8, label %10, label %9, !dbg !119

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 4) #7, !dbg !120
  br label %116, !dbg !120

10:                                               ; preds = %5
  %11 = add i32 %0, -3, !dbg !123
  %12 = icmp ult i32 %11, -2, !dbg !123
  br i1 %12, label %13, label %14, !dbg !123

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 4) #7, !dbg !125
  br label %116, !dbg !125

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  %15 = tail call double @sqrt(double noundef %2) #7, !dbg !128
  %16 = fneg double %3, !dbg !129
  %17 = tail call double @exp(double noundef %16) #7, !dbg !130
  %18 = fmul double %15, %17, !dbg !131
  tail call void @llvm.dbg.value(metadata double %18, metadata !109, metadata !DIExpression()), !dbg !113
  %19 = tail call double @sqrt(double noundef %2) #7, !dbg !132
  %20 = tail call double @exp(double noundef %3) #7, !dbg !133
  %21 = fmul double %19, %20, !dbg !134
  tail call void @llvm.dbg.value(metadata double %21, metadata !110, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !113
  %22 = and i32 %1, 1, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !91, metadata !DIExpression()), !dbg !113
  %23 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %7) #7, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !94, metadata !DIExpression()), !dbg !113
  %24 = icmp eq i32 %23, 0, !dbg !138
  br i1 %24, label %25, label %116, !dbg !140

25:                                               ; preds = %14
  %26 = load double, ptr %7, align 8, !dbg !141, !tbaa !142
  %27 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %1, double noundef %2, double noundef %26, ptr noundef nonnull %6) #7, !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()), !dbg !113
  %28 = icmp eq i32 %27, 0, !dbg !148
  br i1 %28, label %29, label %116, !dbg !150

29:                                               ; preds = %25
  %30 = icmp eq i32 %22, 0, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !96, metadata !DIExpression()), !dbg !113
  %31 = icmp eq i32 %0, 1
  br i1 %30, label %36, label %32, !dbg !153

32:                                               ; preds = %29
  %33 = add nsw i32 %1, -1
  %34 = sitofp i32 %33 to double
  %35 = fmul double %34, 5.000000e-01
  br label %69, !dbg !154

36:                                               ; preds = %29
  %37 = sitofp i32 %1 to double
  %38 = fmul double %37, 5.000000e-01
  br label %39, !dbg !157

39:                                               ; preds = %36, %57
  %40 = phi i64 [ 0, %36 ], [ %67, %57 ]
  %41 = phi double [ 0.000000e+00, %36 ], [ %66, %57 ]
  %42 = phi double [ 0.000000e+00, %36 ], [ %47, %57 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %41, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %42, metadata !96, metadata !DIExpression()), !dbg !113
  %43 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %40, !dbg !160
  %44 = load double, ptr %43, align 8, !dbg !160, !tbaa !163
  %45 = call double @llvm.fabs.f64(double %44), !dbg !160
  %46 = fcmp ogt double %42, %45, !dbg !160
  %47 = select i1 %46, double %42, double %45, !dbg !160
  tail call void @llvm.dbg.value(metadata double %47, metadata !96, metadata !DIExpression()), !dbg !113
  %48 = fdiv double %45, %47, !dbg !164
  %49 = fcmp olt double %48, 0x3D06849B86A12B9B, !dbg !166
  br i1 %49, label %106, label %50, !dbg !167

50:                                               ; preds = %39
  %51 = trunc i64 %40 to i32, !dbg !168
  %52 = call double @gsl_sf_bessel_Jn(i32 noundef %51, double noundef %18) #7, !dbg !168
  tail call void @llvm.dbg.value(metadata double %52, metadata !105, metadata !DIExpression()), !dbg !113
  br i1 %31, label %53, label %55, !dbg !169

53:                                               ; preds = %50
  %54 = call double @gsl_sf_bessel_Jn(i32 noundef %51, double noundef %21) #7, !dbg !170
  tail call void @llvm.dbg.value(metadata double %54, metadata !106, metadata !DIExpression()), !dbg !113
  br label %57, !dbg !173

55:                                               ; preds = %50
  %56 = call double @gsl_sf_bessel_Yn(i32 noundef %51, double noundef %21) #7, !dbg !174
  tail call void @llvm.dbg.value(metadata double %56, metadata !106, metadata !DIExpression()), !dbg !113
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi double [ %54, %53 ], [ %56, %55 ], !dbg !176
  tail call void @llvm.dbg.value(metadata double %58, metadata !106, metadata !DIExpression()), !dbg !113
  %59 = sitofp i32 %51 to double, !dbg !177
  %60 = fadd double %38, %59, !dbg !178
  %61 = call double @pow(double noundef -1.000000e+00, double noundef %60) #7, !dbg !179
  %62 = load double, ptr %43, align 8, !dbg !180, !tbaa !163
  %63 = fmul double %61, %62, !dbg !181
  tail call void @llvm.dbg.value(metadata double %63, metadata !104, metadata !DIExpression()), !dbg !113
  %64 = fmul double %52, %63, !dbg !182
  %65 = fmul double %58, %64, !dbg !183
  %66 = fadd double %41, %65, !dbg !184
  tail call void @llvm.dbg.value(metadata double %66, metadata !98, metadata !DIExpression()), !dbg !113
  %67 = add nuw nsw i64 %40, 1, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %47, metadata !96, metadata !DIExpression()), !dbg !113
  %68 = icmp eq i64 %67, 100, !dbg !186
  br i1 %68, label %106, label %39, !dbg !157, !llvm.loop !187

69:                                               ; preds = %32, %92
  %70 = phi i64 [ 0, %32 ], [ %83, %92 ]
  %71 = phi double [ 0.000000e+00, %32 ], [ %104, %92 ]
  %72 = phi double [ 0.000000e+00, %32 ], [ %77, %92 ]
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %71, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %72, metadata !96, metadata !DIExpression()), !dbg !113
  %73 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %70, !dbg !190
  %74 = load double, ptr %73, align 8, !dbg !190, !tbaa !163
  %75 = call double @llvm.fabs.f64(double %74), !dbg !190
  %76 = fcmp ogt double %72, %75, !dbg !190
  %77 = select i1 %76, double %72, double %75, !dbg !190
  tail call void @llvm.dbg.value(metadata double %77, metadata !96, metadata !DIExpression()), !dbg !113
  %78 = fdiv double %75, %77, !dbg !193
  %79 = fcmp olt double %78, 0x3D06849B86A12B9B, !dbg !195
  br i1 %79, label %106, label %80, !dbg !196

80:                                               ; preds = %69
  %81 = trunc i64 %70 to i32, !dbg !197
  %82 = call double @gsl_sf_bessel_Jn(i32 noundef %81, double noundef %18) #7, !dbg !197
  tail call void @llvm.dbg.value(metadata double %82, metadata !105, metadata !DIExpression()), !dbg !113
  %83 = add nuw nsw i64 %70, 1, !dbg !198
  %84 = trunc i64 %83 to i32, !dbg !199
  %85 = call double @gsl_sf_bessel_Jn(i32 noundef %84, double noundef %18) #7, !dbg !199
  tail call void @llvm.dbg.value(metadata double %85, metadata !107, metadata !DIExpression()), !dbg !113
  br i1 %31, label %86, label %89, !dbg !200

86:                                               ; preds = %80
  %87 = call double @gsl_sf_bessel_Jn(i32 noundef %81, double noundef %21) #7, !dbg !201
  tail call void @llvm.dbg.value(metadata double %87, metadata !106, metadata !DIExpression()), !dbg !113
  %88 = call double @gsl_sf_bessel_Jn(i32 noundef %84, double noundef %21) #7, !dbg !204
  tail call void @llvm.dbg.value(metadata double %88, metadata !108, metadata !DIExpression()), !dbg !113
  br label %92, !dbg !205

89:                                               ; preds = %80
  %90 = call double @gsl_sf_bessel_Yn(i32 noundef %81, double noundef %21) #7, !dbg !206
  tail call void @llvm.dbg.value(metadata double %90, metadata !106, metadata !DIExpression()), !dbg !113
  %91 = call double @gsl_sf_bessel_Yn(i32 noundef %84, double noundef %21) #7, !dbg !208
  tail call void @llvm.dbg.value(metadata double %91, metadata !108, metadata !DIExpression()), !dbg !113
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi double [ %87, %86 ], [ %90, %89 ], !dbg !209
  %94 = phi double [ %88, %86 ], [ %91, %89 ], !dbg !209
  tail call void @llvm.dbg.value(metadata double %94, metadata !108, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %93, metadata !106, metadata !DIExpression()), !dbg !113
  %95 = sitofp i32 %81 to double, !dbg !210
  %96 = fadd double %35, %95, !dbg !211
  %97 = call double @pow(double noundef -1.000000e+00, double noundef %96) #7, !dbg !212
  %98 = load double, ptr %73, align 8, !dbg !213, !tbaa !163
  %99 = fmul double %97, %98, !dbg !214
  tail call void @llvm.dbg.value(metadata double %99, metadata !104, metadata !DIExpression()), !dbg !113
  %100 = fmul double %82, %94, !dbg !215
  %101 = fmul double %85, %93, !dbg !216
  %102 = fadd double %101, %100, !dbg !217
  %103 = fmul double %102, %99, !dbg !218
  %104 = fadd double %71, %103, !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !92, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %104, metadata !98, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %77, metadata !96, metadata !DIExpression()), !dbg !113
  %105 = icmp eq i64 %83, 100, !dbg !220
  br i1 %105, label %106, label %69, !dbg !154, !llvm.loop !221

106:                                              ; preds = %92, %69, %57, %39
  %107 = phi double [ %66, %57 ], [ %41, %39 ], [ %104, %92 ], [ %71, %69 ]
  %108 = load double, ptr %6, align 16, !dbg !223, !tbaa !163
  %109 = fdiv double 0x3FF40D931FF62705, %108, !dbg !223
  %110 = fmul double %107, %109, !dbg !223
  tail call void @llvm.dbg.value(metadata double %110, metadata !98, metadata !DIExpression()), !dbg !113
  store double %110, ptr %4, align 8, !dbg !224, !tbaa !142
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !225
  %112 = call double @llvm.fabs.f64(double %110), !dbg !226
  tail call void @llvm.dbg.value(metadata double %112, metadata !99, metadata !DIExpression()), !dbg !113
  %113 = fcmp ogt double %112, 1.000000e+00, !dbg !227
  %114 = fmul double %112, 0x3CC0000000000000, !dbg !229
  %115 = select i1 %113, double %114, double 0x3CC0000000000000, !dbg !229
  store double %115, ptr %111, align 8, !dbg !113, !tbaa !230
  br label %116, !dbg !231

116:                                              ; preds = %25, %14, %106, %13, %9
  %117 = phi i32 [ 4, %9 ], [ 4, %13 ], [ 0, %106 ], [ %23, %14 ], [ %27, %25 ], !dbg !113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !232
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #7, !dbg !232
  ret i32 %117, !dbg !232
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !233 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !238 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !242 double @exp(double noundef) local_unnamed_addr #3

declare !dbg !243 i32 @gsl_sf_mathieu_a_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !247 i32 @gsl_sf_mathieu_a_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !251 double @gsl_sf_bessel_Jn(i32 noundef, double noundef) local_unnamed_addr #2

declare !dbg !257 double @gsl_sf_bessel_Yn(i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !258 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Ms_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !261 {
  %6 = alloca [100 x double], align 16, !DIAssignID !288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !277, metadata !DIExpression(), metadata !288, metadata ptr %6, metadata !DIExpression()), !dbg !289
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !287, metadata !DIExpression(), metadata !290, metadata ptr %7, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !263, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !264, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %2, metadata !265, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %3, metadata !266, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !267, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !272, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !274, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #7, !dbg !291
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !292
  %8 = fcmp ugt double %2, 0.000000e+00, !dbg !293
  br i1 %8, label %10, label %9, !dbg !295

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 150, i32 noundef 4) #7, !dbg !296
  br label %128, !dbg !296

10:                                               ; preds = %5
  %11 = add i32 %0, -3, !dbg !299
  %12 = icmp ult i32 %11, -2, !dbg !299
  br i1 %12, label %13, label %14, !dbg !299

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 4) #7, !dbg !301
  br label %128, !dbg !301

14:                                               ; preds = %10
  %15 = icmp eq i32 %1, 0, !dbg !304
  br i1 %15, label %16, label %17, !dbg !306

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !307
  br label %128, !dbg !309

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !289
  %18 = tail call double @sqrt(double noundef %2) #7, !dbg !310
  %19 = fneg double %3, !dbg !311
  %20 = tail call double @exp(double noundef %19) #7, !dbg !312
  %21 = fmul double %18, %20, !dbg !313
  tail call void @llvm.dbg.value(metadata double %21, metadata !285, metadata !DIExpression()), !dbg !289
  %22 = tail call double @sqrt(double noundef %2) #7, !dbg !314
  %23 = tail call double @exp(double noundef %3) #7, !dbg !315
  %24 = fmul double %22, %23, !dbg !316
  tail call void @llvm.dbg.value(metadata double %24, metadata !286, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !268, metadata !DIExpression()), !dbg !289
  %25 = and i32 %1, 1, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !268, metadata !DIExpression()), !dbg !289
  %26 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %7) #7, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !271, metadata !DIExpression()), !dbg !289
  %27 = icmp eq i32 %26, 0, !dbg !320
  br i1 %27, label %28, label %128, !dbg !322

28:                                               ; preds = %17
  %29 = load double, ptr %7, align 8, !dbg !323, !tbaa !142
  %30 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %1, double noundef %2, double noundef %29, ptr noundef nonnull %6) #7, !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !271, metadata !DIExpression()), !dbg !289
  %31 = icmp eq i32 %30, 0, !dbg !325
  br i1 %31, label %32, label %128, !dbg !327

32:                                               ; preds = %28
  %33 = icmp eq i32 %25, 0, !dbg !328
  tail call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !289
  %34 = icmp eq i32 %0, 1
  br i1 %33, label %39, label %35, !dbg !330

35:                                               ; preds = %32
  %36 = add nsw i32 %1, -1
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 5.000000e-01
  br label %81, !dbg !331

39:                                               ; preds = %32
  %40 = sitofp i32 %1 to double
  %41 = fmul double %40, 5.000000e-01
  br label %42, !dbg !334

42:                                               ; preds = %39, %65
  %43 = phi i64 [ 0, %39 ], [ %79, %65 ]
  %44 = phi double [ 0.000000e+00, %39 ], [ %50, %65 ]
  %45 = phi double [ 0.000000e+00, %39 ], [ %78, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %44, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %45, metadata !275, metadata !DIExpression()), !dbg !289
  %46 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %43, !dbg !337
  %47 = load double, ptr %46, align 8, !dbg !337, !tbaa !163
  %48 = call double @llvm.fabs.f64(double %47), !dbg !337
  %49 = fcmp ogt double %44, %48, !dbg !337
  %50 = select i1 %49, double %44, double %48, !dbg !337
  tail call void @llvm.dbg.value(metadata double %50, metadata !273, metadata !DIExpression()), !dbg !289
  %51 = fdiv double %48, %50, !dbg !340
  %52 = fcmp olt double %51, 0x3D06849B86A12B9B, !dbg !342
  br i1 %52, label %118, label %53, !dbg !343

53:                                               ; preds = %42
  %54 = trunc i64 %43 to i32, !dbg !344
  %55 = call double @gsl_sf_bessel_Jn(i32 noundef %54, double noundef %21) #7, !dbg !344
  tail call void @llvm.dbg.value(metadata double %55, metadata !281, metadata !DIExpression()), !dbg !289
  %56 = trunc i64 %43 to i32, !dbg !345
  %57 = add i32 %56, 2, !dbg !345
  %58 = call double @gsl_sf_bessel_Jn(i32 noundef %57, double noundef %21) #7, !dbg !345
  tail call void @llvm.dbg.value(metadata double %58, metadata !283, metadata !DIExpression()), !dbg !289
  br i1 %34, label %59, label %62, !dbg !346

59:                                               ; preds = %53
  %60 = call double @gsl_sf_bessel_Jn(i32 noundef %54, double noundef %24) #7, !dbg !347
  tail call void @llvm.dbg.value(metadata double %60, metadata !282, metadata !DIExpression()), !dbg !289
  %61 = call double @gsl_sf_bessel_Jn(i32 noundef %57, double noundef %24) #7, !dbg !350
  tail call void @llvm.dbg.value(metadata double %61, metadata !284, metadata !DIExpression()), !dbg !289
  br label %65, !dbg !351

62:                                               ; preds = %53
  %63 = call double @gsl_sf_bessel_Yn(i32 noundef %54, double noundef %24) #7, !dbg !352
  tail call void @llvm.dbg.value(metadata double %63, metadata !282, metadata !DIExpression()), !dbg !289
  %64 = call double @gsl_sf_bessel_Yn(i32 noundef %57, double noundef %24) #7, !dbg !354
  tail call void @llvm.dbg.value(metadata double %64, metadata !284, metadata !DIExpression()), !dbg !289
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi double [ %60, %59 ], [ %63, %62 ], !dbg !355
  %67 = phi double [ %61, %59 ], [ %64, %62 ], !dbg !355
  tail call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %66, metadata !282, metadata !DIExpression()), !dbg !289
  %68 = sitofp i32 %54 to double, !dbg !356
  %69 = fadd double %41, %68, !dbg !357
  %70 = fadd double %69, 1.000000e+00, !dbg !358
  %71 = call double @pow(double noundef -1.000000e+00, double noundef %70) #7, !dbg !359
  %72 = load double, ptr %46, align 8, !dbg !360, !tbaa !163
  %73 = fmul double %71, %72, !dbg !361
  tail call void @llvm.dbg.value(metadata double %73, metadata !278, metadata !DIExpression()), !dbg !289
  %74 = fmul double %55, %67, !dbg !362
  %75 = fmul double %58, %66, !dbg !363
  %76 = fsub double %74, %75, !dbg !364
  %77 = fmul double %76, %73, !dbg !365
  %78 = fadd double %45, %77, !dbg !366
  tail call void @llvm.dbg.value(metadata double %78, metadata !275, metadata !DIExpression()), !dbg !289
  %79 = add nuw nsw i64 %43, 1, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %50, metadata !273, metadata !DIExpression()), !dbg !289
  %80 = icmp eq i64 %79, 100, !dbg !368
  br i1 %80, label %118, label %42, !dbg !334, !llvm.loop !369

81:                                               ; preds = %35, %104
  %82 = phi i64 [ 0, %35 ], [ %95, %104 ]
  %83 = phi double [ 0.000000e+00, %35 ], [ %89, %104 ]
  %84 = phi double [ 0.000000e+00, %35 ], [ %116, %104 ]
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %83, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %84, metadata !275, metadata !DIExpression()), !dbg !289
  %85 = getelementptr inbounds [100 x double], ptr %6, i64 0, i64 %82, !dbg !371
  %86 = load double, ptr %85, align 8, !dbg !371, !tbaa !163
  %87 = call double @llvm.fabs.f64(double %86), !dbg !371
  %88 = fcmp ogt double %83, %87, !dbg !371
  %89 = select i1 %88, double %83, double %87, !dbg !371
  tail call void @llvm.dbg.value(metadata double %89, metadata !273, metadata !DIExpression()), !dbg !289
  %90 = fdiv double %87, %89, !dbg !374
  %91 = fcmp olt double %90, 0x3D06849B86A12B9B, !dbg !376
  br i1 %91, label %118, label %92, !dbg !377

92:                                               ; preds = %81
  %93 = trunc i64 %82 to i32, !dbg !378
  %94 = call double @gsl_sf_bessel_Jn(i32 noundef %93, double noundef %21) #7, !dbg !378
  tail call void @llvm.dbg.value(metadata double %94, metadata !279, metadata !DIExpression()), !dbg !289
  %95 = add nuw nsw i64 %82, 1, !dbg !379
  %96 = trunc i64 %95 to i32, !dbg !380
  %97 = call double @gsl_sf_bessel_Jn(i32 noundef %96, double noundef %21) #7, !dbg !380
  tail call void @llvm.dbg.value(metadata double %97, metadata !283, metadata !DIExpression()), !dbg !289
  br i1 %34, label %98, label %101, !dbg !381

98:                                               ; preds = %92
  %99 = call double @gsl_sf_bessel_Jn(i32 noundef %93, double noundef %24) #7, !dbg !382
  tail call void @llvm.dbg.value(metadata double %99, metadata !280, metadata !DIExpression()), !dbg !289
  %100 = call double @gsl_sf_bessel_Jn(i32 noundef %96, double noundef %24) #7, !dbg !385
  tail call void @llvm.dbg.value(metadata double %100, metadata !284, metadata !DIExpression()), !dbg !289
  br label %104, !dbg !386

101:                                              ; preds = %92
  %102 = call double @gsl_sf_bessel_Yn(i32 noundef %93, double noundef %24) #7, !dbg !387
  tail call void @llvm.dbg.value(metadata double %102, metadata !280, metadata !DIExpression()), !dbg !289
  %103 = call double @gsl_sf_bessel_Yn(i32 noundef %96, double noundef %24) #7, !dbg !389
  tail call void @llvm.dbg.value(metadata double %103, metadata !284, metadata !DIExpression()), !dbg !289
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi double [ %99, %98 ], [ %102, %101 ], !dbg !390
  %106 = phi double [ %100, %98 ], [ %103, %101 ], !dbg !390
  tail call void @llvm.dbg.value(metadata double %106, metadata !284, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %105, metadata !280, metadata !DIExpression()), !dbg !289
  %107 = sitofp i32 %93 to double, !dbg !391
  %108 = fadd double %38, %107, !dbg !392
  %109 = call double @pow(double noundef -1.000000e+00, double noundef %108) #7, !dbg !393
  %110 = load double, ptr %85, align 8, !dbg !394, !tbaa !163
  %111 = fmul double %109, %110, !dbg !395
  tail call void @llvm.dbg.value(metadata double %111, metadata !278, metadata !DIExpression()), !dbg !289
  %112 = fmul double %94, %106, !dbg !396
  %113 = fmul double %97, %105, !dbg !397
  %114 = fsub double %112, %113, !dbg !398
  %115 = fmul double %114, %111, !dbg !399
  %116 = fadd double %84, %115, !dbg !400
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !269, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %89, metadata !273, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %116, metadata !275, metadata !DIExpression()), !dbg !289
  %117 = icmp eq i64 %95, 100, !dbg !401
  br i1 %117, label %118, label %81, !dbg !331, !llvm.loop !402

118:                                              ; preds = %104, %81, %65, %42
  %119 = phi double [ %78, %65 ], [ %45, %42 ], [ %116, %104 ], [ %84, %81 ]
  %120 = load double, ptr %6, align 16, !dbg !404, !tbaa !163
  %121 = fdiv double 0x3FF40D931FF62705, %120, !dbg !404
  %122 = fmul double %119, %121, !dbg !404
  tail call void @llvm.dbg.value(metadata double %122, metadata !275, metadata !DIExpression()), !dbg !289
  store double %122, ptr %4, align 8, !dbg !405, !tbaa !142
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !406
  %124 = call double @llvm.fabs.f64(double %122), !dbg !407
  tail call void @llvm.dbg.value(metadata double %124, metadata !276, metadata !DIExpression()), !dbg !289
  %125 = fcmp ogt double %124, 1.000000e+00, !dbg !408
  %126 = fmul double %124, 0x3CC0000000000000, !dbg !410
  %127 = select i1 %125, double %126, double 0x3CC0000000000000, !dbg !410
  store double %127, ptr %123, align 8, !dbg !289, !tbaa !230
  br label %128, !dbg !411

128:                                              ; preds = %28, %17, %118, %16, %13, %9
  %129 = phi i32 [ 4, %9 ], [ 4, %13 ], [ 0, %16 ], [ 0, %118 ], [ %26, %17 ], [ %30, %28 ], !dbg !289
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !412
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #7, !dbg !412
  ret i32 %129, !dbg !412
}

declare !dbg !413 i32 @gsl_sf_mathieu_b_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !414 i32 @gsl_sf_mathieu_b_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Mc_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !415 {
  %8 = alloca [100 x double], align 16, !DIAssignID !506
  call void @llvm.dbg.assign(metadata i1 undef, metadata !497, metadata !DIExpression(), metadata !506, metadata ptr %8, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !480, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !481, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !482, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %3, metadata !483, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %4, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !493, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !495, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #7, !dbg !508
  %9 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %5, i64 0, i32 6, !dbg !509
  %10 = load ptr, ptr %9, align 8, !dbg !509, !tbaa !510
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !505, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !507
  %11 = icmp slt i32 %2, %1, !dbg !515
  br i1 %11, label %17, label %12, !dbg !518

12:                                               ; preds = %7
  %13 = add i32 %2, 1, !dbg !518
  %14 = sub i32 %13, %1, !dbg !518
  %15 = zext i32 %14 to i64, !dbg !518
  %16 = shl nuw nsw i64 %15, 3, !dbg !518
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %16, i1 false), !dbg !519, !tbaa !163
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !489, metadata !DIExpression()), !dbg !507
  br label %17, !dbg !520

17:                                               ; preds = %12, %7
  %18 = fcmp ugt double %3, 0.000000e+00, !dbg !520
  br i1 %18, label %20, label %19, !dbg !522

19:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 273, i32 noundef 4) #7, !dbg !523
  br label %137, !dbg !523

20:                                               ; preds = %17
  %21 = add i32 %0, -3, !dbg !526
  %22 = icmp ult i32 %21, -2, !dbg !526
  br i1 %22, label %23, label %24, !dbg !526

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 4) #7, !dbg !528
  br label %137, !dbg !528

24:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !494, metadata !DIExpression()), !dbg !507
  %25 = tail call double @sqrt(double noundef %3) #7, !dbg !531
  %26 = fneg double %4, !dbg !532
  %27 = tail call double @exp(double noundef %26) #7, !dbg !533
  %28 = fmul double %25, %27, !dbg !534
  tail call void @llvm.dbg.value(metadata double %28, metadata !503, metadata !DIExpression()), !dbg !507
  %29 = tail call double @sqrt(double noundef %3) #7, !dbg !535
  %30 = tail call double @exp(double noundef %4) #7, !dbg !536
  %31 = fmul double %29, %30, !dbg !537
  tail call void @llvm.dbg.value(metadata double %31, metadata !504, metadata !DIExpression()), !dbg !507
  %32 = tail call i32 @gsl_sf_mathieu_a_array(i32 noundef 0, i32 noundef %2, double noundef %3, ptr noundef nonnull %5, ptr noundef %10) #7, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !488, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !494, metadata !DIExpression()), !dbg !507
  %33 = icmp sgt i32 %1, %2, !dbg !539
  br i1 %33, label %137, label %34, !dbg !542

34:                                               ; preds = %24
  %35 = icmp eq i32 %0, 1
  %36 = sext i32 %1 to i64, !dbg !542
  %37 = add i32 %2, 1, !dbg !542
  %38 = sub i32 %37, %1, !dbg !542
  %39 = zext i32 %38 to i64, !dbg !539
  br label %40, !dbg !542

40:                                               ; preds = %34, %127
  %41 = phi i64 [ 0, %34 ], [ %134, %127 ]
  %42 = phi i64 [ %36, %34 ], [ %135, %127 ]
  %43 = phi double [ 0.000000e+00, %34 ], [ %129, %127 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !488, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !489, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %43, metadata !494, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !487, metadata !DIExpression()), !dbg !507
  %44 = getelementptr inbounds double, ptr %10, i64 %42, !dbg !543
  %45 = load double, ptr %44, align 8, !dbg !543, !tbaa !163
  %46 = trunc i64 %42 to i32, !dbg !545
  %47 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %46, double noundef %3, double noundef %45, ptr noundef nonnull %8) #7, !dbg !545
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !492, metadata !DIExpression()), !dbg !507
  %48 = icmp eq i32 %47, 0, !dbg !546
  br i1 %48, label %49, label %137, !dbg !548

49:                                               ; preds = %40
  %50 = and i32 %46, 1, !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !487, metadata !DIExpression()), !dbg !507
  %51 = icmp eq i32 %50, 0, !dbg !551
  tail call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %43, metadata !494, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %43, metadata !494, metadata !DIExpression()), !dbg !507
  br i1 %51, label %57, label %52, !dbg !553

52:                                               ; preds = %49
  %53 = trunc i64 %42 to i32
  %54 = add i32 %53, -1
  %55 = sitofp i32 %54 to double
  %56 = fmul double %55, 5.000000e-01
  br label %90, !dbg !554

57:                                               ; preds = %49
  %58 = sitofp i32 %46 to double
  %59 = fmul double %58, 5.000000e-01
  br label %60, !dbg !557

60:                                               ; preds = %57, %78
  %61 = phi i64 [ 0, %57 ], [ %88, %78 ]
  %62 = phi double [ 0.000000e+00, %57 ], [ %87, %78 ]
  %63 = phi double [ %43, %57 ], [ %68, %78 ]
  tail call void @llvm.dbg.value(metadata double %62, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %63, metadata !494, metadata !DIExpression()), !dbg !507
  %64 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %61, !dbg !560
  %65 = load double, ptr %64, align 8, !dbg !560, !tbaa !163
  %66 = call double @llvm.fabs.f64(double %65), !dbg !560
  %67 = fcmp ogt double %63, %66, !dbg !560
  %68 = select i1 %67, double %63, double %66, !dbg !560
  tail call void @llvm.dbg.value(metadata double %68, metadata !494, metadata !DIExpression()), !dbg !507
  %69 = fdiv double %66, %68, !dbg !563
  %70 = fcmp olt double %69, 0x3D06849B86A12B9B, !dbg !565
  br i1 %70, label %127, label %71, !dbg !566

71:                                               ; preds = %60
  %72 = trunc i64 %61 to i32, !dbg !567
  %73 = call double @gsl_sf_bessel_Jn(i32 noundef %72, double noundef %28) #7, !dbg !567
  tail call void @llvm.dbg.value(metadata double %73, metadata !499, metadata !DIExpression()), !dbg !507
  br i1 %35, label %74, label %76, !dbg !568

74:                                               ; preds = %71
  %75 = call double @gsl_sf_bessel_Jn(i32 noundef %72, double noundef %31) #7, !dbg !569
  tail call void @llvm.dbg.value(metadata double %75, metadata !500, metadata !DIExpression()), !dbg !507
  br label %78, !dbg !572

76:                                               ; preds = %71
  %77 = call double @gsl_sf_bessel_Yn(i32 noundef %72, double noundef %31) #7, !dbg !573
  tail call void @llvm.dbg.value(metadata double %77, metadata !500, metadata !DIExpression()), !dbg !507
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi double [ %75, %74 ], [ %77, %76 ], !dbg !575
  tail call void @llvm.dbg.value(metadata double %79, metadata !500, metadata !DIExpression()), !dbg !507
  %80 = sitofp i32 %72 to double, !dbg !576
  %81 = fadd double %59, %80, !dbg !577
  %82 = call double @pow(double noundef -1.000000e+00, double noundef %81) #7, !dbg !578
  %83 = load double, ptr %64, align 8, !dbg !579, !tbaa !163
  %84 = fmul double %82, %83, !dbg !580
  tail call void @llvm.dbg.value(metadata double %84, metadata !498, metadata !DIExpression()), !dbg !507
  %85 = fmul double %73, %84, !dbg !581
  %86 = fmul double %79, %85, !dbg !582
  %87 = fadd double %62, %86, !dbg !583
  tail call void @llvm.dbg.value(metadata double %87, metadata !496, metadata !DIExpression()), !dbg !507
  %88 = add nuw nsw i64 %61, 1, !dbg !584
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %68, metadata !494, metadata !DIExpression()), !dbg !507
  %89 = icmp eq i64 %88, 100, !dbg !585
  br i1 %89, label %127, label %60, !dbg !557, !llvm.loop !586

90:                                               ; preds = %52, %113
  %91 = phi i64 [ 0, %52 ], [ %104, %113 ]
  %92 = phi double [ 0.000000e+00, %52 ], [ %125, %113 ]
  %93 = phi double [ %43, %52 ], [ %98, %113 ]
  tail call void @llvm.dbg.value(metadata double %92, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %93, metadata !494, metadata !DIExpression()), !dbg !507
  %94 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %91, !dbg !588
  %95 = load double, ptr %94, align 8, !dbg !588, !tbaa !163
  %96 = call double @llvm.fabs.f64(double %95), !dbg !588
  %97 = fcmp ogt double %93, %96, !dbg !588
  %98 = select i1 %97, double %93, double %96, !dbg !588
  tail call void @llvm.dbg.value(metadata double %98, metadata !494, metadata !DIExpression()), !dbg !507
  %99 = fdiv double %96, %98, !dbg !591
  %100 = fcmp olt double %99, 0x3D06849B86A12B9B, !dbg !593
  br i1 %100, label %127, label %101, !dbg !594

101:                                              ; preds = %90
  %102 = trunc i64 %91 to i32, !dbg !595
  %103 = call double @gsl_sf_bessel_Jn(i32 noundef %102, double noundef %28) #7, !dbg !595
  tail call void @llvm.dbg.value(metadata double %103, metadata !499, metadata !DIExpression()), !dbg !507
  %104 = add nuw nsw i64 %91, 1, !dbg !596
  %105 = trunc i64 %104 to i32, !dbg !597
  %106 = call double @gsl_sf_bessel_Jn(i32 noundef %105, double noundef %28) #7, !dbg !597
  tail call void @llvm.dbg.value(metadata double %106, metadata !501, metadata !DIExpression()), !dbg !507
  br i1 %35, label %107, label %110, !dbg !598

107:                                              ; preds = %101
  %108 = call double @gsl_sf_bessel_Jn(i32 noundef %102, double noundef %31) #7, !dbg !599
  tail call void @llvm.dbg.value(metadata double %108, metadata !500, metadata !DIExpression()), !dbg !507
  %109 = call double @gsl_sf_bessel_Jn(i32 noundef %105, double noundef %31) #7, !dbg !602
  tail call void @llvm.dbg.value(metadata double %109, metadata !502, metadata !DIExpression()), !dbg !507
  br label %113, !dbg !603

110:                                              ; preds = %101
  %111 = call double @gsl_sf_bessel_Yn(i32 noundef %102, double noundef %31) #7, !dbg !604
  tail call void @llvm.dbg.value(metadata double %111, metadata !500, metadata !DIExpression()), !dbg !507
  %112 = call double @gsl_sf_bessel_Yn(i32 noundef %105, double noundef %31) #7, !dbg !606
  tail call void @llvm.dbg.value(metadata double %112, metadata !502, metadata !DIExpression()), !dbg !507
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi double [ %108, %107 ], [ %111, %110 ], !dbg !607
  %115 = phi double [ %109, %107 ], [ %112, %110 ], !dbg !607
  tail call void @llvm.dbg.value(metadata double %115, metadata !502, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %114, metadata !500, metadata !DIExpression()), !dbg !507
  %116 = sitofp i32 %102 to double, !dbg !608
  %117 = fadd double %56, %116, !dbg !609
  %118 = call double @pow(double noundef -1.000000e+00, double noundef %117) #7, !dbg !610
  %119 = load double, ptr %94, align 8, !dbg !611, !tbaa !163
  %120 = fmul double %118, %119, !dbg !612
  tail call void @llvm.dbg.value(metadata double %120, metadata !498, metadata !DIExpression()), !dbg !507
  %121 = fmul double %103, %115, !dbg !613
  %122 = fmul double %106, %114, !dbg !614
  %123 = fadd double %122, %121, !dbg !615
  %124 = fmul double %123, %120, !dbg !616
  %125 = fadd double %92, %124, !dbg !617
  tail call void @llvm.dbg.value(metadata double %125, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !490, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %98, metadata !494, metadata !DIExpression()), !dbg !507
  %126 = icmp eq i64 %104, 100, !dbg !618
  br i1 %126, label %127, label %90, !dbg !554, !llvm.loop !619

127:                                              ; preds = %113, %90, %78, %60
  %128 = phi double [ %87, %78 ], [ %62, %60 ], [ %125, %113 ], [ %92, %90 ]
  %129 = phi double [ %68, %60 ], [ %68, %78 ], [ %98, %90 ], [ %98, %113 ], !dbg !621
  %130 = load double, ptr %8, align 16, !dbg !621, !tbaa !163
  %131 = fdiv double 0x3FF40D931FF62705, %130, !dbg !621
  %132 = fmul double %128, %131, !dbg !621
  tail call void @llvm.dbg.value(metadata double %132, metadata !496, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %129, metadata !494, metadata !DIExpression()), !dbg !507
  %133 = getelementptr inbounds double, ptr %6, i64 %41, !dbg !622
  store double %132, ptr %133, align 8, !dbg !623, !tbaa !163
  %134 = add nuw nsw i64 %41, 1, !dbg !624
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !489, metadata !DIExpression()), !dbg !507
  %135 = add nsw i64 %42, 1, !dbg !625
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !488, metadata !DIExpression()), !dbg !507
  %136 = icmp eq i64 %134, %39, !dbg !539
  br i1 %136, label %137, label %40, !dbg !542, !llvm.loop !626

137:                                              ; preds = %40, %127, %24, %23, %19
  %138 = phi i32 [ 4, %19 ], [ 4, %23 ], [ 0, %24 ], [ %47, %40 ], [ 0, %127 ], !dbg !507
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #7, !dbg !628
  ret i32 %138, !dbg !628
}

declare !dbg !629 i32 @gsl_sf_mathieu_a_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_Ms_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !632 {
  %8 = alloca [100 x double], align 16, !DIAssignID !662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !651, metadata !DIExpression(), metadata !662, metadata ptr %8, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !634, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !635, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !636, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %3, metadata !637, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %4, metadata !638, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !639, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !640, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !647, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0x400921FB54442D18, metadata !649, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #7, !dbg !664
  %9 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %5, i64 0, i32 7, !dbg !665
  %10 = load ptr, ptr %9, align 8, !dbg !665, !tbaa !666
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !661, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !643, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !643, metadata !DIExpression()), !dbg !663
  %11 = icmp slt i32 %2, %1, !dbg !667
  br i1 %11, label %17, label %12, !dbg !670

12:                                               ; preds = %7
  %13 = add i32 %2, 1, !dbg !670
  %14 = sub i32 %13, %1, !dbg !670
  %15 = zext i32 %14 to i64, !dbg !670
  %16 = shl nuw nsw i64 %15, 3, !dbg !670
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %16, i1 false), !dbg !671, !tbaa !163
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !643, metadata !DIExpression()), !dbg !663
  br label %17, !dbg !672

17:                                               ; preds = %12, %7
  %18 = fcmp ugt double %3, 0.000000e+00, !dbg !672
  br i1 %18, label %20, label %19, !dbg !674

19:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 379, i32 noundef 4) #7, !dbg !675
  br label %151, !dbg !675

20:                                               ; preds = %17
  %21 = add i32 %0, -3, !dbg !678
  %22 = icmp ult i32 %21, -2, !dbg !678
  br i1 %22, label %23, label %24, !dbg !678

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 383, i32 noundef 4) #7, !dbg !680
  br label %151, !dbg !680

24:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !645, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !648, metadata !DIExpression()), !dbg !663
  %25 = tail call double @sqrt(double noundef %3) #7, !dbg !683
  %26 = fneg double %4, !dbg !684
  %27 = tail call double @exp(double noundef %26) #7, !dbg !685
  %28 = fmul double %25, %27, !dbg !686
  tail call void @llvm.dbg.value(metadata double %28, metadata !659, metadata !DIExpression()), !dbg !663
  %29 = tail call double @sqrt(double noundef %3) #7, !dbg !687
  %30 = tail call double @exp(double noundef %4) #7, !dbg !688
  %31 = fmul double %29, %30, !dbg !689
  tail call void @llvm.dbg.value(metadata double %31, metadata !660, metadata !DIExpression()), !dbg !663
  %32 = tail call i32 @gsl_sf_mathieu_b_array(i32 noundef 0, i32 noundef %2, double noundef %3, ptr noundef nonnull %5, ptr noundef %10) #7, !dbg !690
  tail call void @llvm.dbg.value(metadata i32 0, metadata !643, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !642, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !648, metadata !DIExpression()), !dbg !663
  %33 = icmp sgt i32 %1, %2, !dbg !691
  br i1 %33, label %151, label %34, !dbg !694

34:                                               ; preds = %24
  %35 = icmp eq i32 %0, 1
  %36 = sext i32 %1 to i64, !dbg !694
  %37 = add i32 %2, 1, !dbg !694
  %38 = sub i32 %37, %1, !dbg !694
  %39 = zext i32 %38 to i64, !dbg !691
  br label %40, !dbg !694

40:                                               ; preds = %34, %144
  %41 = phi i64 [ 0, %34 ], [ %148, %144 ]
  %42 = phi i64 [ %36, %34 ], [ %149, %144 ]
  %43 = phi double [ 0.000000e+00, %34 ], [ %146, %144 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !642, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !643, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %43, metadata !648, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()), !dbg !663
  %44 = trunc i64 %42 to i32, !dbg !695
  %45 = and i32 %44, 1, !dbg !695
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !641, metadata !DIExpression()), !dbg !663
  %46 = icmp eq i64 %42, 0, !dbg !698
  br i1 %46, label %144, label %47, !dbg !700

47:                                               ; preds = %40
  %48 = getelementptr inbounds double, ptr %10, i64 %42, !dbg !701
  %49 = load double, ptr %48, align 8, !dbg !701, !tbaa !163
  %50 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %44, double noundef %3, double noundef %49, ptr noundef nonnull %8) #7, !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !646, metadata !DIExpression()), !dbg !663
  %51 = icmp eq i32 %50, 0, !dbg !703
  br i1 %51, label %52, label %151, !dbg !705

52:                                               ; preds = %47
  %53 = icmp eq i32 %45, 0, !dbg !706
  tail call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %43, metadata !648, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %43, metadata !648, metadata !DIExpression()), !dbg !663
  br i1 %53, label %59, label %54, !dbg !708

54:                                               ; preds = %52
  %55 = trunc i64 %42 to i32
  %56 = add i32 %55, -1
  %57 = sitofp i32 %56 to double
  %58 = fmul double %57, 5.000000e-01
  br label %101, !dbg !709

59:                                               ; preds = %52
  %60 = sitofp i32 %44 to double
  %61 = fmul double %60, 5.000000e-01
  br label %62, !dbg !712

62:                                               ; preds = %59, %85
  %63 = phi i64 [ 0, %59 ], [ %99, %85 ]
  %64 = phi double [ 0.000000e+00, %59 ], [ %98, %85 ]
  %65 = phi double [ %43, %59 ], [ %70, %85 ]
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %64, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %65, metadata !648, metadata !DIExpression()), !dbg !663
  %66 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %63, !dbg !715
  %67 = load double, ptr %66, align 8, !dbg !715, !tbaa !163
  %68 = call double @llvm.fabs.f64(double %67), !dbg !715
  %69 = fcmp ogt double %65, %68, !dbg !715
  %70 = select i1 %69, double %65, double %68, !dbg !715
  tail call void @llvm.dbg.value(metadata double %70, metadata !648, metadata !DIExpression()), !dbg !663
  %71 = fdiv double %68, %70, !dbg !718
  %72 = fcmp olt double %71, 0x3D06849B86A12B9B, !dbg !720
  br i1 %72, label %138, label %73, !dbg !721

73:                                               ; preds = %62
  %74 = trunc i64 %63 to i32, !dbg !722
  %75 = call double @gsl_sf_bessel_Jn(i32 noundef %74, double noundef %28) #7, !dbg !722
  tail call void @llvm.dbg.value(metadata double %75, metadata !655, metadata !DIExpression()), !dbg !663
  %76 = trunc i64 %63 to i32, !dbg !723
  %77 = add i32 %76, 2, !dbg !723
  %78 = call double @gsl_sf_bessel_Jn(i32 noundef %77, double noundef %28) #7, !dbg !723
  tail call void @llvm.dbg.value(metadata double %78, metadata !657, metadata !DIExpression()), !dbg !663
  br i1 %35, label %79, label %82, !dbg !724

79:                                               ; preds = %73
  %80 = call double @gsl_sf_bessel_Jn(i32 noundef %74, double noundef %31) #7, !dbg !725
  tail call void @llvm.dbg.value(metadata double %80, metadata !656, metadata !DIExpression()), !dbg !663
  %81 = call double @gsl_sf_bessel_Jn(i32 noundef %77, double noundef %31) #7, !dbg !728
  tail call void @llvm.dbg.value(metadata double %81, metadata !658, metadata !DIExpression()), !dbg !663
  br label %85, !dbg !729

82:                                               ; preds = %73
  %83 = call double @gsl_sf_bessel_Yn(i32 noundef %74, double noundef %31) #7, !dbg !730
  tail call void @llvm.dbg.value(metadata double %83, metadata !656, metadata !DIExpression()), !dbg !663
  %84 = call double @gsl_sf_bessel_Yn(i32 noundef %77, double noundef %31) #7, !dbg !732
  tail call void @llvm.dbg.value(metadata double %84, metadata !658, metadata !DIExpression()), !dbg !663
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi double [ %80, %79 ], [ %83, %82 ], !dbg !733
  %87 = phi double [ %81, %79 ], [ %84, %82 ], !dbg !733
  tail call void @llvm.dbg.value(metadata double %87, metadata !658, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %86, metadata !656, metadata !DIExpression()), !dbg !663
  %88 = sitofp i32 %74 to double, !dbg !734
  %89 = fadd double %61, %88, !dbg !735
  %90 = fadd double %89, 1.000000e+00, !dbg !736
  %91 = call double @pow(double noundef -1.000000e+00, double noundef %90) #7, !dbg !737
  %92 = load double, ptr %66, align 8, !dbg !738, !tbaa !163
  %93 = fmul double %91, %92, !dbg !739
  tail call void @llvm.dbg.value(metadata double %93, metadata !652, metadata !DIExpression()), !dbg !663
  %94 = fmul double %75, %87, !dbg !740
  %95 = fmul double %78, %86, !dbg !741
  %96 = fsub double %94, %95, !dbg !742
  %97 = fmul double %96, %93, !dbg !743
  %98 = fadd double %64, %97, !dbg !744
  tail call void @llvm.dbg.value(metadata double %98, metadata !650, metadata !DIExpression()), !dbg !663
  %99 = add nuw nsw i64 %63, 1, !dbg !745
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %70, metadata !648, metadata !DIExpression()), !dbg !663
  %100 = icmp eq i64 %99, 100, !dbg !746
  br i1 %100, label %138, label %62, !dbg !712, !llvm.loop !747

101:                                              ; preds = %54, %124
  %102 = phi i64 [ 0, %54 ], [ %115, %124 ]
  %103 = phi double [ 0.000000e+00, %54 ], [ %136, %124 ]
  %104 = phi double [ %43, %54 ], [ %109, %124 ]
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %103, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %104, metadata !648, metadata !DIExpression()), !dbg !663
  %105 = getelementptr inbounds [100 x double], ptr %8, i64 0, i64 %102, !dbg !749
  %106 = load double, ptr %105, align 8, !dbg !749, !tbaa !163
  %107 = call double @llvm.fabs.f64(double %106), !dbg !749
  %108 = fcmp ogt double %104, %107, !dbg !749
  %109 = select i1 %108, double %104, double %107, !dbg !749
  tail call void @llvm.dbg.value(metadata double %109, metadata !648, metadata !DIExpression()), !dbg !663
  %110 = fdiv double %107, %109, !dbg !752
  %111 = fcmp olt double %110, 0x3D06849B86A12B9B, !dbg !754
  br i1 %111, label %138, label %112, !dbg !755

112:                                              ; preds = %101
  %113 = trunc i64 %102 to i32, !dbg !756
  %114 = call double @gsl_sf_bessel_Jn(i32 noundef %113, double noundef %28) #7, !dbg !756
  tail call void @llvm.dbg.value(metadata double %114, metadata !653, metadata !DIExpression()), !dbg !663
  %115 = add nuw nsw i64 %102, 1, !dbg !757
  %116 = trunc i64 %115 to i32, !dbg !758
  %117 = call double @gsl_sf_bessel_Jn(i32 noundef %116, double noundef %28) #7, !dbg !758
  tail call void @llvm.dbg.value(metadata double %117, metadata !657, metadata !DIExpression()), !dbg !663
  br i1 %35, label %118, label %121, !dbg !759

118:                                              ; preds = %112
  %119 = call double @gsl_sf_bessel_Jn(i32 noundef %113, double noundef %31) #7, !dbg !760
  tail call void @llvm.dbg.value(metadata double %119, metadata !654, metadata !DIExpression()), !dbg !663
  %120 = call double @gsl_sf_bessel_Jn(i32 noundef %116, double noundef %31) #7, !dbg !763
  tail call void @llvm.dbg.value(metadata double %120, metadata !658, metadata !DIExpression()), !dbg !663
  br label %124, !dbg !764

121:                                              ; preds = %112
  %122 = call double @gsl_sf_bessel_Yn(i32 noundef %113, double noundef %31) #7, !dbg !765
  tail call void @llvm.dbg.value(metadata double %122, metadata !654, metadata !DIExpression()), !dbg !663
  %123 = call double @gsl_sf_bessel_Yn(i32 noundef %116, double noundef %31) #7, !dbg !767
  tail call void @llvm.dbg.value(metadata double %123, metadata !658, metadata !DIExpression()), !dbg !663
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi double [ %119, %118 ], [ %122, %121 ], !dbg !768
  %126 = phi double [ %120, %118 ], [ %123, %121 ], !dbg !768
  tail call void @llvm.dbg.value(metadata double %126, metadata !658, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %125, metadata !654, metadata !DIExpression()), !dbg !663
  %127 = sitofp i32 %113 to double, !dbg !769
  %128 = fadd double %58, %127, !dbg !770
  %129 = call double @pow(double noundef -1.000000e+00, double noundef %128) #7, !dbg !771
  %130 = load double, ptr %105, align 8, !dbg !772, !tbaa !163
  %131 = fmul double %129, %130, !dbg !773
  tail call void @llvm.dbg.value(metadata double %131, metadata !652, metadata !DIExpression()), !dbg !663
  %132 = fmul double %114, %126, !dbg !774
  %133 = fmul double %117, %125, !dbg !775
  %134 = fsub double %132, %133, !dbg !776
  %135 = fmul double %134, %131, !dbg !777
  %136 = fadd double %103, %135, !dbg !778
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !644, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %136, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %109, metadata !648, metadata !DIExpression()), !dbg !663
  %137 = icmp eq i64 %115, 100, !dbg !779
  br i1 %137, label %138, label %101, !dbg !709, !llvm.loop !780

138:                                              ; preds = %124, %101, %85, %62
  %139 = phi double [ %98, %85 ], [ %64, %62 ], [ %136, %124 ], [ %103, %101 ]
  %140 = phi double [ %70, %62 ], [ %70, %85 ], [ %109, %101 ], [ %109, %124 ], !dbg !782
  %141 = load double, ptr %8, align 16, !dbg !782, !tbaa !163
  %142 = fdiv double 0x3FF40D931FF62705, %141, !dbg !782
  %143 = fmul double %139, %142, !dbg !782
  tail call void @llvm.dbg.value(metadata double %143, metadata !650, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %140, metadata !648, metadata !DIExpression()), !dbg !663
  br label %144, !dbg !783

144:                                              ; preds = %40, %138
  %145 = phi double [ %143, %138 ], [ 0.000000e+00, %40 ]
  %146 = phi double [ %140, %138 ], [ %43, %40 ], !dbg !663
  %147 = getelementptr inbounds double, ptr %6, i64 %41, !dbg !784
  store double %145, ptr %147, align 8, !dbg !784, !tbaa !163
  tail call void @llvm.dbg.value(metadata double %146, metadata !648, metadata !DIExpression()), !dbg !663
  %148 = add nuw nsw i64 %41, 1, !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !643, metadata !DIExpression()), !dbg !663
  %149 = add nsw i64 %42, 1, !dbg !786
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !642, metadata !DIExpression()), !dbg !663
  %150 = icmp eq i64 %148, %39, !dbg !691
  br i1 %150, label %151, label %40, !dbg !694, !llvm.loop !787

151:                                              ; preds = %47, %144, %24, %23, %19
  %152 = phi i32 [ 4, %19 ], [ 4, %23 ], [ 0, %24 ], [ %50, %47 ], [ 0, %144 ], !dbg !663
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #7, !dbg !789
  ret i32 %152, !dbg !789
}

declare !dbg !790 i32 @gsl_sf_mathieu_b_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_Mc(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !791 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !799, metadata !DIExpression(), metadata !801, metadata ptr %5, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !796, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata double %2, metadata !797, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata double %3, metadata !798, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !803
  %6 = call i32 @gsl_sf_mathieu_Mc_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !803
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !800, metadata !DIExpression()), !dbg !802
  %7 = icmp eq i32 %6, 0, !dbg !804
  br i1 %7, label %9, label %8, !dbg !803

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef %6) #7, !dbg !806
  br label %9, !dbg !806

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !803, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !809
  ret double %10, !dbg !809
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_Ms(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !810 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !818
  call void @llvm.dbg.assign(metadata i1 undef, metadata !816, metadata !DIExpression(), metadata !818, metadata ptr %5, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !812, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !813, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata double %2, metadata !814, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata double %3, metadata !815, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !820
  %6 = call i32 @gsl_sf_mathieu_Ms_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !820
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !817, metadata !DIExpression()), !dbg !819
  %7 = icmp eq i32 %6, 0, !dbg !821
  br i1 %7, label %9, label %8, !dbg !820

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef %6) #7, !dbg !823
  br label %9, !dbg !823

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !820, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !826
  ret double %10, !dbg !826
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_radfunc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c83bc809c3966cbb1ea0ac498a8361dd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 50)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !19, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, globals: !65, splitDebugInlining: false, nameTableKind: None)
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
!65 = !{!0, !7, !12, !17, !22}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!74 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_e", scope: !2, file: !2, line: 30, type: !75, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !85)
!75 = !DISubroutineType(types: !76)
!76 = !{!28, !28, !28, !77, !77, !78}
!77 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !80, line: 41, baseType: !81)
!80 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !80, line: 37, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !80, line: 38, baseType: !77, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !81, file: !80, line: 39, baseType: !77, size: 64, offset: 64)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !104, !105, !106, !107, !108, !109, !110, !111}
!86 = !DILocalVariable(name: "kind", arg: 1, scope: !74, file: !2, line: 30, type: !28)
!87 = !DILocalVariable(name: "order", arg: 2, scope: !74, file: !2, line: 30, type: !28)
!88 = !DILocalVariable(name: "qq", arg: 3, scope: !74, file: !2, line: 30, type: !77)
!89 = !DILocalVariable(name: "zz", arg: 4, scope: !74, file: !2, line: 30, type: !77)
!90 = !DILocalVariable(name: "result", arg: 5, scope: !74, file: !2, line: 31, type: !78)
!91 = !DILocalVariable(name: "even_odd", scope: !74, file: !2, line: 33, type: !28)
!92 = !DILocalVariable(name: "kk", scope: !74, file: !2, line: 33, type: !28)
!93 = !DILocalVariable(name: "mm", scope: !74, file: !2, line: 33, type: !28)
!94 = !DILocalVariable(name: "status", scope: !74, file: !2, line: 33, type: !28)
!95 = !DILocalVariable(name: "maxerr", scope: !74, file: !2, line: 34, type: !77)
!96 = !DILocalVariable(name: "amax", scope: !74, file: !2, line: 34, type: !77)
!97 = !DILocalVariable(name: "pi", scope: !74, file: !2, line: 34, type: !77)
!98 = !DILocalVariable(name: "fn", scope: !74, file: !2, line: 34, type: !77)
!99 = !DILocalVariable(name: "factor", scope: !74, file: !2, line: 34, type: !77)
!100 = !DILocalVariable(name: "coeff", scope: !74, file: !2, line: 35, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 6400, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 100)
!104 = !DILocalVariable(name: "fc", scope: !74, file: !2, line: 35, type: !77)
!105 = !DILocalVariable(name: "j1c", scope: !74, file: !2, line: 36, type: !77)
!106 = !DILocalVariable(name: "z2c", scope: !74, file: !2, line: 36, type: !77)
!107 = !DILocalVariable(name: "j1pc", scope: !74, file: !2, line: 36, type: !77)
!108 = !DILocalVariable(name: "z2pc", scope: !74, file: !2, line: 36, type: !77)
!109 = !DILocalVariable(name: "u1", scope: !74, file: !2, line: 37, type: !77)
!110 = !DILocalVariable(name: "u2", scope: !74, file: !2, line: 37, type: !77)
!111 = !DILocalVariable(name: "aa", scope: !74, file: !2, line: 38, type: !79)
!112 = distinct !DIAssignID()
!113 = !DILocation(line: 0, scope: !74)
!114 = distinct !DIAssignID()
!115 = !DILocation(line: 35, column: 3, scope: !74)
!116 = !DILocation(line: 38, column: 3, scope: !74)
!117 = !DILocation(line: 42, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !74, file: !2, line: 42, column: 7)
!119 = !DILocation(line: 42, column: 7, scope: !74)
!120 = !DILocation(line: 44, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 44, column: 7)
!122 = distinct !DILexicalBlock(scope: !118, file: !2, line: 43, column: 3)
!123 = !DILocation(line: 46, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !74, file: !2, line: 46, column: 7)
!125 = !DILocation(line: 48, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 48, column: 7)
!127 = distinct !DILexicalBlock(scope: !124, file: !2, line: 47, column: 3)
!128 = !DILocation(line: 54, column: 8, scope: !74)
!129 = !DILocation(line: 54, column: 25, scope: !74)
!130 = !DILocation(line: 54, column: 17, scope: !74)
!131 = !DILocation(line: 54, column: 16, scope: !74)
!132 = !DILocation(line: 55, column: 8, scope: !74)
!133 = !DILocation(line: 55, column: 17, scope: !74)
!134 = !DILocation(line: 55, column: 16, scope: !74)
!135 = !DILocation(line: 58, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !74, file: !2, line: 58, column: 7)
!137 = !DILocation(line: 62, column: 12, scope: !74)
!138 = !DILocation(line: 63, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !2, line: 63, column: 7)
!140 = !DILocation(line: 63, column: 7, scope: !74)
!141 = !DILocation(line: 69, column: 49, scope: !74)
!142 = !{!143, !144, i64 0}
!143 = !{!"gsl_sf_result_struct", !144, i64 0, !144, i64 8}
!144 = !{!"double", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C/C++ TBAA"}
!147 = !DILocation(line: 69, column: 12, scope: !74)
!148 = !DILocation(line: 70, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !74, file: !2, line: 70, column: 7)
!150 = !DILocation(line: 70, column: 7, scope: !74)
!151 = !DILocation(line: 75, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !74, file: !2, line: 75, column: 7)
!153 = !DILocation(line: 75, column: 7, scope: !74)
!154 = !DILocation(line: 101, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 101, column: 7)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 100, column: 3)
!157 = !DILocation(line: 77, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 77, column: 7)
!159 = distinct !DILexicalBlock(scope: !152, file: !2, line: 76, column: 3)
!160 = !DILocation(line: 79, column: 18, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 78, column: 7)
!162 = distinct !DILexicalBlock(scope: !158, file: !2, line: 77, column: 7)
!163 = !{!144, !144, i64 0}
!164 = !DILocation(line: 80, column: 30, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 80, column: 15)
!166 = !DILocation(line: 80, column: 36, scope: !165)
!167 = !DILocation(line: 80, column: 15, scope: !161)
!168 = !DILocation(line: 83, column: 17, scope: !161)
!169 = !DILocation(line: 84, column: 15, scope: !161)
!170 = !DILocation(line: 86, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 85, column: 11)
!172 = distinct !DILexicalBlock(scope: !161, file: !2, line: 84, column: 15)
!173 = !DILocation(line: 87, column: 11, scope: !171)
!174 = !DILocation(line: 90, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !2, line: 89, column: 11)
!176 = !DILocation(line: 0, scope: !172)
!177 = !DILocation(line: 93, column: 36, scope: !161)
!178 = !DILocation(line: 93, column: 35, scope: !161)
!179 = !DILocation(line: 93, column: 16, scope: !161)
!180 = !DILocation(line: 93, column: 40, scope: !161)
!181 = !DILocation(line: 93, column: 39, scope: !161)
!182 = !DILocation(line: 94, column: 19, scope: !161)
!183 = !DILocation(line: 94, column: 23, scope: !161)
!184 = !DILocation(line: 94, column: 14, scope: !161)
!185 = !DILocation(line: 77, column: 45, scope: !162)
!186 = !DILocation(line: 77, column: 20, scope: !162)
!187 = distinct !{!187, !157, !188, !189}
!188 = !DILocation(line: 95, column: 7, scope: !158)
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 103, column: 18, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 102, column: 7)
!192 = distinct !DILexicalBlock(scope: !155, file: !2, line: 101, column: 7)
!193 = !DILocation(line: 104, column: 30, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !2, line: 104, column: 15)
!195 = !DILocation(line: 104, column: 36, scope: !194)
!196 = !DILocation(line: 104, column: 15, scope: !191)
!197 = !DILocation(line: 107, column: 17, scope: !191)
!198 = !DILocation(line: 108, column: 37, scope: !191)
!199 = !DILocation(line: 108, column: 18, scope: !191)
!200 = !DILocation(line: 109, column: 15, scope: !191)
!201 = !DILocation(line: 111, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 110, column: 11)
!203 = distinct !DILexicalBlock(scope: !191, file: !2, line: 109, column: 15)
!204 = !DILocation(line: 112, column: 22, scope: !202)
!205 = !DILocation(line: 113, column: 11, scope: !202)
!206 = !DILocation(line: 116, column: 21, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !2, line: 115, column: 11)
!208 = !DILocation(line: 117, column: 22, scope: !207)
!209 = !DILocation(line: 0, scope: !203)
!210 = !DILocation(line: 119, column: 40, scope: !191)
!211 = !DILocation(line: 119, column: 39, scope: !191)
!212 = !DILocation(line: 119, column: 16, scope: !191)
!213 = !DILocation(line: 119, column: 44, scope: !191)
!214 = !DILocation(line: 119, column: 43, scope: !191)
!215 = !DILocation(line: 120, column: 24, scope: !191)
!216 = !DILocation(line: 120, column: 36, scope: !191)
!217 = !DILocation(line: 120, column: 30, scope: !191)
!218 = !DILocation(line: 120, column: 19, scope: !191)
!219 = !DILocation(line: 120, column: 14, scope: !191)
!220 = !DILocation(line: 101, column: 20, scope: !192)
!221 = distinct !{!221, !154, !222, !189}
!222 = !DILocation(line: 121, column: 7, scope: !155)
!223 = !DILocation(line: 0, scope: !152)
!224 = !DILocation(line: 126, column: 15, scope: !74)
!225 = !DILocation(line: 127, column: 11, scope: !74)
!226 = !DILocation(line: 128, column: 12, scope: !74)
!227 = !DILocation(line: 129, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !74, file: !2, line: 129, column: 7)
!229 = !DILocation(line: 129, column: 7, scope: !74)
!230 = !{!143, !144, i64 8}
!231 = !DILocation(line: 132, column: 3, scope: !74)
!232 = !DILocation(line: 133, column: 1, scope: !74)
!233 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236, !236, !28, !28}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!238 = !DISubprogram(name: "sqrt", scope: !239, file: !239, line: 143, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!240 = !DISubroutineType(types: !241)
!241 = !{!77, !77}
!242 = !DISubprogram(name: "exp", scope: !239, file: !239, line: 95, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !244, file: !244, line: 70, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!245 = !DISubroutineType(types: !246)
!246 = !{!28, !28, !77, !78}
!247 = !DISubprogram(name: "gsl_sf_mathieu_a_coeff", scope: !244, file: !244, line: 76, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubroutineType(types: !249)
!249 = !{!28, !28, !77, !77, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!251 = !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !252, file: !252, line: 64, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!253 = !DISubroutineType(types: !254)
!254 = !{!77, !255, !256}
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!257 = !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !252, file: !252, line: 98, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubprogram(name: "pow", scope: !239, file: !239, line: 140, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!77, !77, !77}
!261 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_e", scope: !2, file: !2, line: 136, type: !75, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!263 = !DILocalVariable(name: "kind", arg: 1, scope: !261, file: !2, line: 136, type: !28)
!264 = !DILocalVariable(name: "order", arg: 2, scope: !261, file: !2, line: 136, type: !28)
!265 = !DILocalVariable(name: "qq", arg: 3, scope: !261, file: !2, line: 136, type: !77)
!266 = !DILocalVariable(name: "zz", arg: 4, scope: !261, file: !2, line: 136, type: !77)
!267 = !DILocalVariable(name: "result", arg: 5, scope: !261, file: !2, line: 137, type: !78)
!268 = !DILocalVariable(name: "even_odd", scope: !261, file: !2, line: 139, type: !28)
!269 = !DILocalVariable(name: "kk", scope: !261, file: !2, line: 139, type: !28)
!270 = !DILocalVariable(name: "mm", scope: !261, file: !2, line: 139, type: !28)
!271 = !DILocalVariable(name: "status", scope: !261, file: !2, line: 139, type: !28)
!272 = !DILocalVariable(name: "maxerr", scope: !261, file: !2, line: 140, type: !77)
!273 = !DILocalVariable(name: "amax", scope: !261, file: !2, line: 140, type: !77)
!274 = !DILocalVariable(name: "pi", scope: !261, file: !2, line: 140, type: !77)
!275 = !DILocalVariable(name: "fn", scope: !261, file: !2, line: 140, type: !77)
!276 = !DILocalVariable(name: "factor", scope: !261, file: !2, line: 140, type: !77)
!277 = !DILocalVariable(name: "coeff", scope: !261, file: !2, line: 141, type: !101)
!278 = !DILocalVariable(name: "fc", scope: !261, file: !2, line: 141, type: !77)
!279 = !DILocalVariable(name: "j1c", scope: !261, file: !2, line: 142, type: !77)
!280 = !DILocalVariable(name: "z2c", scope: !261, file: !2, line: 142, type: !77)
!281 = !DILocalVariable(name: "j1mc", scope: !261, file: !2, line: 142, type: !77)
!282 = !DILocalVariable(name: "z2mc", scope: !261, file: !2, line: 142, type: !77)
!283 = !DILocalVariable(name: "j1pc", scope: !261, file: !2, line: 142, type: !77)
!284 = !DILocalVariable(name: "z2pc", scope: !261, file: !2, line: 142, type: !77)
!285 = !DILocalVariable(name: "u1", scope: !261, file: !2, line: 143, type: !77)
!286 = !DILocalVariable(name: "u2", scope: !261, file: !2, line: 143, type: !77)
!287 = !DILocalVariable(name: "aa", scope: !261, file: !2, line: 144, type: !79)
!288 = distinct !DIAssignID()
!289 = !DILocation(line: 0, scope: !261)
!290 = distinct !DIAssignID()
!291 = !DILocation(line: 141, column: 3, scope: !261)
!292 = !DILocation(line: 144, column: 3, scope: !261)
!293 = !DILocation(line: 148, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !261, file: !2, line: 148, column: 7)
!295 = !DILocation(line: 148, column: 7, scope: !261)
!296 = !DILocation(line: 150, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 150, column: 7)
!298 = distinct !DILexicalBlock(scope: !294, file: !2, line: 149, column: 3)
!299 = !DILocation(line: 152, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !261, file: !2, line: 152, column: 7)
!301 = !DILocation(line: 154, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 154, column: 7)
!303 = distinct !DILexicalBlock(scope: !300, file: !2, line: 153, column: 3)
!304 = !DILocation(line: 158, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !261, file: !2, line: 158, column: 7)
!306 = !DILocation(line: 158, column: 7, scope: !261)
!307 = !DILocation(line: 161, column: 19, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !2, line: 159, column: 3)
!309 = !DILocation(line: 162, column: 7, scope: !308)
!310 = !DILocation(line: 168, column: 8, scope: !261)
!311 = !DILocation(line: 168, column: 25, scope: !261)
!312 = !DILocation(line: 168, column: 17, scope: !261)
!313 = !DILocation(line: 168, column: 16, scope: !261)
!314 = !DILocation(line: 169, column: 8, scope: !261)
!315 = !DILocation(line: 169, column: 17, scope: !261)
!316 = !DILocation(line: 169, column: 16, scope: !261)
!317 = !DILocation(line: 172, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !261, file: !2, line: 172, column: 7)
!319 = !DILocation(line: 176, column: 12, scope: !261)
!320 = !DILocation(line: 177, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !261, file: !2, line: 177, column: 7)
!322 = !DILocation(line: 177, column: 7, scope: !261)
!323 = !DILocation(line: 183, column: 49, scope: !261)
!324 = !DILocation(line: 183, column: 12, scope: !261)
!325 = !DILocation(line: 184, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !261, file: !2, line: 184, column: 7)
!327 = !DILocation(line: 184, column: 7, scope: !261)
!328 = !DILocation(line: 189, column: 16, scope: !329)
!329 = distinct !DILexicalBlock(scope: !261, file: !2, line: 189, column: 7)
!330 = !DILocation(line: 189, column: 7, scope: !261)
!331 = !DILocation(line: 218, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 218, column: 7)
!333 = distinct !DILexicalBlock(scope: !329, file: !2, line: 217, column: 3)
!334 = !DILocation(line: 191, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 191, column: 7)
!336 = distinct !DILexicalBlock(scope: !329, file: !2, line: 190, column: 3)
!337 = !DILocation(line: 193, column: 18, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 192, column: 7)
!339 = distinct !DILexicalBlock(scope: !335, file: !2, line: 191, column: 7)
!340 = !DILocation(line: 194, column: 30, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !2, line: 194, column: 15)
!342 = !DILocation(line: 194, column: 36, scope: !341)
!343 = !DILocation(line: 194, column: 15, scope: !338)
!344 = !DILocation(line: 197, column: 18, scope: !338)
!345 = !DILocation(line: 198, column: 18, scope: !338)
!346 = !DILocation(line: 199, column: 15, scope: !338)
!347 = !DILocation(line: 201, column: 22, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 200, column: 11)
!349 = distinct !DILexicalBlock(scope: !338, file: !2, line: 199, column: 15)
!350 = !DILocation(line: 202, column: 22, scope: !348)
!351 = !DILocation(line: 203, column: 11, scope: !348)
!352 = !DILocation(line: 206, column: 22, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !2, line: 205, column: 11)
!354 = !DILocation(line: 207, column: 22, scope: !353)
!355 = !DILocation(line: 0, scope: !349)
!356 = !DILocation(line: 210, column: 36, scope: !338)
!357 = !DILocation(line: 210, column: 35, scope: !338)
!358 = !DILocation(line: 210, column: 38, scope: !338)
!359 = !DILocation(line: 210, column: 16, scope: !338)
!360 = !DILocation(line: 210, column: 42, scope: !338)
!361 = !DILocation(line: 210, column: 41, scope: !338)
!362 = !DILocation(line: 211, column: 25, scope: !338)
!363 = !DILocation(line: 211, column: 37, scope: !338)
!364 = !DILocation(line: 211, column: 31, scope: !338)
!365 = !DILocation(line: 211, column: 19, scope: !338)
!366 = !DILocation(line: 211, column: 14, scope: !338)
!367 = !DILocation(line: 191, column: 45, scope: !339)
!368 = !DILocation(line: 191, column: 20, scope: !339)
!369 = distinct !{!369, !334, !370, !189}
!370 = !DILocation(line: 212, column: 7, scope: !335)
!371 = !DILocation(line: 220, column: 18, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 219, column: 7)
!373 = distinct !DILexicalBlock(scope: !332, file: !2, line: 218, column: 7)
!374 = !DILocation(line: 221, column: 30, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !2, line: 221, column: 15)
!376 = !DILocation(line: 221, column: 36, scope: !375)
!377 = !DILocation(line: 221, column: 15, scope: !372)
!378 = !DILocation(line: 224, column: 17, scope: !372)
!379 = !DILocation(line: 225, column: 37, scope: !372)
!380 = !DILocation(line: 225, column: 18, scope: !372)
!381 = !DILocation(line: 226, column: 15, scope: !372)
!382 = !DILocation(line: 228, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 227, column: 11)
!384 = distinct !DILexicalBlock(scope: !372, file: !2, line: 226, column: 15)
!385 = !DILocation(line: 229, column: 22, scope: !383)
!386 = !DILocation(line: 230, column: 11, scope: !383)
!387 = !DILocation(line: 233, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !2, line: 232, column: 11)
!389 = !DILocation(line: 234, column: 22, scope: !388)
!390 = !DILocation(line: 0, scope: !384)
!391 = !DILocation(line: 237, column: 40, scope: !372)
!392 = !DILocation(line: 237, column: 39, scope: !372)
!393 = !DILocation(line: 237, column: 16, scope: !372)
!394 = !DILocation(line: 237, column: 44, scope: !372)
!395 = !DILocation(line: 237, column: 43, scope: !372)
!396 = !DILocation(line: 238, column: 24, scope: !372)
!397 = !DILocation(line: 238, column: 36, scope: !372)
!398 = !DILocation(line: 238, column: 30, scope: !372)
!399 = !DILocation(line: 238, column: 19, scope: !372)
!400 = !DILocation(line: 238, column: 14, scope: !372)
!401 = !DILocation(line: 218, column: 20, scope: !373)
!402 = distinct !{!402, !331, !403, !189}
!403 = !DILocation(line: 239, column: 7, scope: !332)
!404 = !DILocation(line: 0, scope: !329)
!405 = !DILocation(line: 244, column: 15, scope: !261)
!406 = !DILocation(line: 245, column: 11, scope: !261)
!407 = !DILocation(line: 246, column: 12, scope: !261)
!408 = !DILocation(line: 247, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !261, file: !2, line: 247, column: 7)
!410 = !DILocation(line: 247, column: 7, scope: !261)
!411 = !DILocation(line: 250, column: 3, scope: !261)
!412 = !DILocation(line: 251, column: 1, scope: !261)
!413 = !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !244, file: !244, line: 72, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubprogram(name: "gsl_sf_mathieu_b_coeff", scope: !244, file: !244, line: 77, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_array", scope: !2, file: !2, line: 254, type: !416, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !479)
!416 = !DISubroutineType(types: !417)
!417 = !{!28, !28, !28, !28, !77, !77, !418, !250}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !244, line: 60, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 42, size: 1024, elements: !421)
!421 = !{!422, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !456, !468}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !420, file: !244, line: 44, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !424, line: 18, baseType: !425)
!424 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!425 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !420, file: !244, line: 45, baseType: !423, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !420, file: !244, line: 46, baseType: !423, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !420, file: !244, line: 47, baseType: !28, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !420, file: !244, line: 48, baseType: !77, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !420, file: !244, line: 49, baseType: !77, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !420, file: !244, line: 50, baseType: !250, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !420, file: !244, line: 51, baseType: !250, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !420, file: !244, line: 52, baseType: !250, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !420, file: !244, line: 53, baseType: !250, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !420, file: !244, line: 54, baseType: !250, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !420, file: !244, line: 55, baseType: !250, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !420, file: !244, line: 56, baseType: !250, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !420, file: !244, line: 57, baseType: !439, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !441, line: 50, baseType: !442)
!441 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 42, size: 320, elements: !443)
!443 = !{!444, !445, !446, !447, !455}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !442, file: !441, line: 44, baseType: !423, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !442, file: !441, line: 45, baseType: !423, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !442, file: !441, line: 46, baseType: !250, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !442, file: !441, line: 47, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !450, line: 44, baseType: !451)
!450 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !450, line: 38, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !451, file: !450, line: 40, baseType: !423, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !451, file: !450, line: 41, baseType: !250, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !442, file: !441, line: 48, baseType: !28, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !420, file: !244, line: 58, baseType: !457, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !459, line: 50, baseType: !460)
!459 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 42, size: 384, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !460, file: !459, line: 44, baseType: !423, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !460, file: !459, line: 45, baseType: !423, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !460, file: !459, line: 46, baseType: !423, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !460, file: !459, line: 47, baseType: !250, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !460, file: !459, line: 48, baseType: !448, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !459, line: 49, baseType: !28, size: 32, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !420, file: !244, line: 59, baseType: !469, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !471, line: 54, baseType: !472)
!471 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 48, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !472, file: !471, line: 49, baseType: !423, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !472, file: !471, line: 50, baseType: !250, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !472, file: !471, line: 51, baseType: !250, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !472, file: !471, line: 52, baseType: !250, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !472, file: !471, line: 53, baseType: !250, size: 64, offset: 256)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!480 = !DILocalVariable(name: "kind", arg: 1, scope: !415, file: !2, line: 254, type: !28)
!481 = !DILocalVariable(name: "nmin", arg: 2, scope: !415, file: !2, line: 254, type: !28)
!482 = !DILocalVariable(name: "nmax", arg: 3, scope: !415, file: !2, line: 254, type: !28)
!483 = !DILocalVariable(name: "qq", arg: 4, scope: !415, file: !2, line: 254, type: !77)
!484 = !DILocalVariable(name: "zz", arg: 5, scope: !415, file: !2, line: 255, type: !77)
!485 = !DILocalVariable(name: "work", arg: 6, scope: !415, file: !2, line: 255, type: !418)
!486 = !DILocalVariable(name: "result_array", arg: 7, scope: !415, file: !2, line: 256, type: !250)
!487 = !DILocalVariable(name: "even_odd", scope: !415, file: !2, line: 258, type: !28)
!488 = !DILocalVariable(name: "order", scope: !415, file: !2, line: 258, type: !28)
!489 = !DILocalVariable(name: "ii", scope: !415, file: !2, line: 258, type: !28)
!490 = !DILocalVariable(name: "kk", scope: !415, file: !2, line: 258, type: !28)
!491 = !DILocalVariable(name: "mm", scope: !415, file: !2, line: 258, type: !28)
!492 = !DILocalVariable(name: "status", scope: !415, file: !2, line: 258, type: !28)
!493 = !DILocalVariable(name: "maxerr", scope: !415, file: !2, line: 259, type: !77)
!494 = !DILocalVariable(name: "amax", scope: !415, file: !2, line: 259, type: !77)
!495 = !DILocalVariable(name: "pi", scope: !415, file: !2, line: 259, type: !77)
!496 = !DILocalVariable(name: "fn", scope: !415, file: !2, line: 259, type: !77)
!497 = !DILocalVariable(name: "coeff", scope: !415, file: !2, line: 260, type: !101)
!498 = !DILocalVariable(name: "fc", scope: !415, file: !2, line: 260, type: !77)
!499 = !DILocalVariable(name: "j1c", scope: !415, file: !2, line: 261, type: !77)
!500 = !DILocalVariable(name: "z2c", scope: !415, file: !2, line: 261, type: !77)
!501 = !DILocalVariable(name: "j1pc", scope: !415, file: !2, line: 261, type: !77)
!502 = !DILocalVariable(name: "z2pc", scope: !415, file: !2, line: 261, type: !77)
!503 = !DILocalVariable(name: "u1", scope: !415, file: !2, line: 262, type: !77)
!504 = !DILocalVariable(name: "u2", scope: !415, file: !2, line: 262, type: !77)
!505 = !DILocalVariable(name: "aa", scope: !415, file: !2, line: 263, type: !250)
!506 = distinct !DIAssignID()
!507 = !DILocation(line: 0, scope: !415)
!508 = !DILocation(line: 260, column: 3, scope: !415)
!509 = !DILocation(line: 263, column: 22, scope: !415)
!510 = !{!511, !514, i64 48}
!511 = !{!"", !512, i64 0, !512, i64 8, !512, i64 16, !513, i64 24, !144, i64 32, !144, i64 40, !514, i64 48, !514, i64 56, !514, i64 64, !514, i64 72, !514, i64 80, !514, i64 88, !514, i64 96, !514, i64 104, !514, i64 112, !514, i64 120}
!512 = !{!"long", !145, i64 0}
!513 = !{!"int", !145, i64 0}
!514 = !{!"any pointer", !145, i64 0}
!515 = !DILocation(line: 267, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !2, line: 267, column: 3)
!517 = distinct !DILexicalBlock(scope: !415, file: !2, line: 267, column: 3)
!518 = !DILocation(line: 267, column: 3, scope: !517)
!519 = !DILocation(line: 268, column: 24, scope: !516)
!520 = !DILocation(line: 271, column: 10, scope: !521)
!521 = distinct !DILexicalBlock(scope: !415, file: !2, line: 271, column: 7)
!522 = !DILocation(line: 271, column: 7, scope: !415)
!523 = !DILocation(line: 273, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 273, column: 7)
!525 = distinct !DILexicalBlock(scope: !521, file: !2, line: 272, column: 3)
!526 = !DILocation(line: 275, column: 16, scope: !527)
!527 = distinct !DILexicalBlock(scope: !415, file: !2, line: 275, column: 7)
!528 = !DILocation(line: 277, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 277, column: 7)
!530 = distinct !DILexicalBlock(scope: !527, file: !2, line: 276, column: 3)
!531 = !DILocation(line: 282, column: 8, scope: !415)
!532 = !DILocation(line: 282, column: 25, scope: !415)
!533 = !DILocation(line: 282, column: 17, scope: !415)
!534 = !DILocation(line: 282, column: 16, scope: !415)
!535 = !DILocation(line: 283, column: 8, scope: !415)
!536 = !DILocation(line: 283, column: 17, scope: !415)
!537 = !DILocation(line: 283, column: 16, scope: !415)
!538 = !DILocation(line: 286, column: 3, scope: !415)
!539 = !DILocation(line: 288, column: 31, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 288, column: 3)
!541 = distinct !DILexicalBlock(scope: !415, file: !2, line: 288, column: 3)
!542 = !DILocation(line: 288, column: 3, scope: !541)
!543 = !DILocation(line: 296, column: 50, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !2, line: 289, column: 3)
!545 = !DILocation(line: 296, column: 16, scope: !544)
!546 = !DILocation(line: 297, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !2, line: 297, column: 11)
!548 = !DILocation(line: 297, column: 11, scope: !544)
!549 = !DILocation(line: 292, column: 21, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !2, line: 292, column: 11)
!551 = !DILocation(line: 302, column: 20, scope: !552)
!552 = distinct !DILexicalBlock(scope: !544, file: !2, line: 302, column: 11)
!553 = !DILocation(line: 302, column: 11, scope: !544)
!554 = !DILocation(line: 328, column: 11, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 328, column: 11)
!556 = distinct !DILexicalBlock(scope: !552, file: !2, line: 327, column: 7)
!557 = !DILocation(line: 304, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 304, column: 11)
!559 = distinct !DILexicalBlock(scope: !552, file: !2, line: 303, column: 7)
!560 = !DILocation(line: 306, column: 22, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 305, column: 11)
!562 = distinct !DILexicalBlock(scope: !558, file: !2, line: 304, column: 11)
!563 = !DILocation(line: 307, column: 34, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !2, line: 307, column: 19)
!565 = !DILocation(line: 307, column: 40, scope: !564)
!566 = !DILocation(line: 307, column: 19, scope: !561)
!567 = !DILocation(line: 310, column: 21, scope: !561)
!568 = !DILocation(line: 311, column: 19, scope: !561)
!569 = !DILocation(line: 313, column: 25, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !2, line: 312, column: 15)
!571 = distinct !DILexicalBlock(scope: !561, file: !2, line: 311, column: 19)
!572 = !DILocation(line: 314, column: 15, scope: !570)
!573 = !DILocation(line: 317, column: 25, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !2, line: 316, column: 15)
!575 = !DILocation(line: 0, scope: !571)
!576 = !DILocation(line: 320, column: 40, scope: !561)
!577 = !DILocation(line: 320, column: 39, scope: !561)
!578 = !DILocation(line: 320, column: 20, scope: !561)
!579 = !DILocation(line: 320, column: 44, scope: !561)
!580 = !DILocation(line: 320, column: 43, scope: !561)
!581 = !DILocation(line: 321, column: 23, scope: !561)
!582 = !DILocation(line: 321, column: 27, scope: !561)
!583 = !DILocation(line: 321, column: 18, scope: !561)
!584 = !DILocation(line: 304, column: 49, scope: !562)
!585 = !DILocation(line: 304, column: 24, scope: !562)
!586 = distinct !{!586, !557, !587, !189}
!587 = !DILocation(line: 322, column: 11, scope: !558)
!588 = !DILocation(line: 330, column: 22, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 329, column: 11)
!590 = distinct !DILexicalBlock(scope: !555, file: !2, line: 328, column: 11)
!591 = !DILocation(line: 331, column: 34, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 331, column: 19)
!593 = !DILocation(line: 331, column: 40, scope: !592)
!594 = !DILocation(line: 331, column: 19, scope: !589)
!595 = !DILocation(line: 334, column: 21, scope: !589)
!596 = !DILocation(line: 335, column: 41, scope: !589)
!597 = !DILocation(line: 335, column: 22, scope: !589)
!598 = !DILocation(line: 336, column: 19, scope: !589)
!599 = !DILocation(line: 338, column: 25, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 337, column: 15)
!601 = distinct !DILexicalBlock(scope: !589, file: !2, line: 336, column: 19)
!602 = !DILocation(line: 339, column: 26, scope: !600)
!603 = !DILocation(line: 340, column: 15, scope: !600)
!604 = !DILocation(line: 343, column: 25, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !2, line: 342, column: 15)
!606 = !DILocation(line: 344, column: 26, scope: !605)
!607 = !DILocation(line: 0, scope: !601)
!608 = !DILocation(line: 346, column: 44, scope: !589)
!609 = !DILocation(line: 346, column: 43, scope: !589)
!610 = !DILocation(line: 346, column: 20, scope: !589)
!611 = !DILocation(line: 346, column: 48, scope: !589)
!612 = !DILocation(line: 346, column: 47, scope: !589)
!613 = !DILocation(line: 347, column: 28, scope: !589)
!614 = !DILocation(line: 347, column: 40, scope: !589)
!615 = !DILocation(line: 347, column: 34, scope: !589)
!616 = !DILocation(line: 347, column: 23, scope: !589)
!617 = !DILocation(line: 347, column: 18, scope: !589)
!618 = !DILocation(line: 328, column: 24, scope: !590)
!619 = distinct !{!619, !554, !620, !189}
!620 = !DILocation(line: 348, column: 11, scope: !555)
!621 = !DILocation(line: 0, scope: !552)
!622 = !DILocation(line: 353, column: 7, scope: !544)
!623 = !DILocation(line: 353, column: 24, scope: !544)
!624 = !DILocation(line: 288, column: 41, scope: !540)
!625 = !DILocation(line: 288, column: 50, scope: !540)
!626 = distinct !{!626, !542, !627, !189}
!627 = !DILocation(line: 354, column: 3, scope: !541)
!628 = !DILocation(line: 357, column: 1, scope: !415)
!629 = !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !244, file: !244, line: 65, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DISubroutineType(types: !631)
!631 = !{!28, !28, !28, !77, !418, !250}
!632 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_array", scope: !2, file: !2, line: 360, type: !416, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!634 = !DILocalVariable(name: "kind", arg: 1, scope: !632, file: !2, line: 360, type: !28)
!635 = !DILocalVariable(name: "nmin", arg: 2, scope: !632, file: !2, line: 360, type: !28)
!636 = !DILocalVariable(name: "nmax", arg: 3, scope: !632, file: !2, line: 360, type: !28)
!637 = !DILocalVariable(name: "qq", arg: 4, scope: !632, file: !2, line: 360, type: !77)
!638 = !DILocalVariable(name: "zz", arg: 5, scope: !632, file: !2, line: 361, type: !77)
!639 = !DILocalVariable(name: "work", arg: 6, scope: !632, file: !2, line: 361, type: !418)
!640 = !DILocalVariable(name: "result_array", arg: 7, scope: !632, file: !2, line: 362, type: !250)
!641 = !DILocalVariable(name: "even_odd", scope: !632, file: !2, line: 364, type: !28)
!642 = !DILocalVariable(name: "order", scope: !632, file: !2, line: 364, type: !28)
!643 = !DILocalVariable(name: "ii", scope: !632, file: !2, line: 364, type: !28)
!644 = !DILocalVariable(name: "kk", scope: !632, file: !2, line: 364, type: !28)
!645 = !DILocalVariable(name: "mm", scope: !632, file: !2, line: 364, type: !28)
!646 = !DILocalVariable(name: "status", scope: !632, file: !2, line: 364, type: !28)
!647 = !DILocalVariable(name: "maxerr", scope: !632, file: !2, line: 365, type: !77)
!648 = !DILocalVariable(name: "amax", scope: !632, file: !2, line: 365, type: !77)
!649 = !DILocalVariable(name: "pi", scope: !632, file: !2, line: 365, type: !77)
!650 = !DILocalVariable(name: "fn", scope: !632, file: !2, line: 365, type: !77)
!651 = !DILocalVariable(name: "coeff", scope: !632, file: !2, line: 366, type: !101)
!652 = !DILocalVariable(name: "fc", scope: !632, file: !2, line: 366, type: !77)
!653 = !DILocalVariable(name: "j1c", scope: !632, file: !2, line: 367, type: !77)
!654 = !DILocalVariable(name: "z2c", scope: !632, file: !2, line: 367, type: !77)
!655 = !DILocalVariable(name: "j1mc", scope: !632, file: !2, line: 367, type: !77)
!656 = !DILocalVariable(name: "z2mc", scope: !632, file: !2, line: 367, type: !77)
!657 = !DILocalVariable(name: "j1pc", scope: !632, file: !2, line: 367, type: !77)
!658 = !DILocalVariable(name: "z2pc", scope: !632, file: !2, line: 367, type: !77)
!659 = !DILocalVariable(name: "u1", scope: !632, file: !2, line: 368, type: !77)
!660 = !DILocalVariable(name: "u2", scope: !632, file: !2, line: 368, type: !77)
!661 = !DILocalVariable(name: "bb", scope: !632, file: !2, line: 369, type: !250)
!662 = distinct !DIAssignID()
!663 = !DILocation(line: 0, scope: !632)
!664 = !DILocation(line: 366, column: 3, scope: !632)
!665 = !DILocation(line: 369, column: 22, scope: !632)
!666 = !{!511, !514, i64 56}
!667 = !DILocation(line: 373, column: 16, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 373, column: 3)
!669 = distinct !DILexicalBlock(scope: !632, file: !2, line: 373, column: 3)
!670 = !DILocation(line: 373, column: 3, scope: !669)
!671 = !DILocation(line: 374, column: 24, scope: !668)
!672 = !DILocation(line: 377, column: 10, scope: !673)
!673 = distinct !DILexicalBlock(scope: !632, file: !2, line: 377, column: 7)
!674 = !DILocation(line: 377, column: 7, scope: !632)
!675 = !DILocation(line: 379, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 379, column: 7)
!677 = distinct !DILexicalBlock(scope: !673, file: !2, line: 378, column: 3)
!678 = !DILocation(line: 381, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !632, file: !2, line: 381, column: 7)
!680 = !DILocation(line: 383, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 383, column: 7)
!682 = distinct !DILexicalBlock(scope: !679, file: !2, line: 382, column: 3)
!683 = !DILocation(line: 388, column: 8, scope: !632)
!684 = !DILocation(line: 388, column: 25, scope: !632)
!685 = !DILocation(line: 388, column: 17, scope: !632)
!686 = !DILocation(line: 388, column: 16, scope: !632)
!687 = !DILocation(line: 389, column: 8, scope: !632)
!688 = !DILocation(line: 389, column: 17, scope: !632)
!689 = !DILocation(line: 389, column: 16, scope: !632)
!690 = !DILocation(line: 392, column: 3, scope: !632)
!691 = !DILocation(line: 394, column: 31, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 394, column: 3)
!693 = distinct !DILexicalBlock(scope: !632, file: !2, line: 394, column: 3)
!694 = !DILocation(line: 394, column: 3, scope: !693)
!695 = !DILocation(line: 398, column: 21, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 398, column: 11)
!697 = distinct !DILexicalBlock(scope: !692, file: !2, line: 395, column: 3)
!698 = !DILocation(line: 402, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !697, file: !2, line: 402, column: 11)
!700 = !DILocation(line: 402, column: 11, scope: !697)
!701 = !DILocation(line: 409, column: 50, scope: !697)
!702 = !DILocation(line: 409, column: 16, scope: !697)
!703 = !DILocation(line: 410, column: 18, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !2, line: 410, column: 11)
!705 = !DILocation(line: 410, column: 11, scope: !697)
!706 = !DILocation(line: 415, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !2, line: 415, column: 11)
!708 = !DILocation(line: 415, column: 11, scope: !697)
!709 = !DILocation(line: 444, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !2, line: 444, column: 11)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 443, column: 7)
!712 = !DILocation(line: 417, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !2, line: 417, column: 11)
!714 = distinct !DILexicalBlock(scope: !707, file: !2, line: 416, column: 7)
!715 = !DILocation(line: 419, column: 22, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 418, column: 11)
!717 = distinct !DILexicalBlock(scope: !713, file: !2, line: 417, column: 11)
!718 = !DILocation(line: 420, column: 34, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !2, line: 420, column: 19)
!720 = !DILocation(line: 420, column: 40, scope: !719)
!721 = !DILocation(line: 420, column: 19, scope: !716)
!722 = !DILocation(line: 423, column: 22, scope: !716)
!723 = !DILocation(line: 424, column: 22, scope: !716)
!724 = !DILocation(line: 425, column: 19, scope: !716)
!725 = !DILocation(line: 427, column: 26, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 426, column: 15)
!727 = distinct !DILexicalBlock(scope: !716, file: !2, line: 425, column: 19)
!728 = !DILocation(line: 428, column: 26, scope: !726)
!729 = !DILocation(line: 429, column: 15, scope: !726)
!730 = !DILocation(line: 432, column: 26, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !2, line: 431, column: 15)
!732 = !DILocation(line: 433, column: 26, scope: !731)
!733 = !DILocation(line: 0, scope: !727)
!734 = !DILocation(line: 436, column: 40, scope: !716)
!735 = !DILocation(line: 436, column: 39, scope: !716)
!736 = !DILocation(line: 436, column: 42, scope: !716)
!737 = !DILocation(line: 436, column: 20, scope: !716)
!738 = !DILocation(line: 436, column: 46, scope: !716)
!739 = !DILocation(line: 436, column: 45, scope: !716)
!740 = !DILocation(line: 437, column: 29, scope: !716)
!741 = !DILocation(line: 437, column: 41, scope: !716)
!742 = !DILocation(line: 437, column: 35, scope: !716)
!743 = !DILocation(line: 437, column: 23, scope: !716)
!744 = !DILocation(line: 437, column: 18, scope: !716)
!745 = !DILocation(line: 417, column: 49, scope: !717)
!746 = !DILocation(line: 417, column: 24, scope: !717)
!747 = distinct !{!747, !712, !748, !189}
!748 = !DILocation(line: 438, column: 11, scope: !713)
!749 = !DILocation(line: 446, column: 22, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 445, column: 11)
!751 = distinct !DILexicalBlock(scope: !710, file: !2, line: 444, column: 11)
!752 = !DILocation(line: 447, column: 34, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !2, line: 447, column: 19)
!754 = !DILocation(line: 447, column: 40, scope: !753)
!755 = !DILocation(line: 447, column: 19, scope: !750)
!756 = !DILocation(line: 450, column: 21, scope: !750)
!757 = !DILocation(line: 451, column: 41, scope: !750)
!758 = !DILocation(line: 451, column: 22, scope: !750)
!759 = !DILocation(line: 452, column: 19, scope: !750)
!760 = !DILocation(line: 454, column: 25, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 453, column: 15)
!762 = distinct !DILexicalBlock(scope: !750, file: !2, line: 452, column: 19)
!763 = !DILocation(line: 455, column: 26, scope: !761)
!764 = !DILocation(line: 456, column: 15, scope: !761)
!765 = !DILocation(line: 459, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !2, line: 458, column: 15)
!767 = !DILocation(line: 460, column: 26, scope: !766)
!768 = !DILocation(line: 0, scope: !762)
!769 = !DILocation(line: 463, column: 44, scope: !750)
!770 = !DILocation(line: 463, column: 43, scope: !750)
!771 = !DILocation(line: 463, column: 20, scope: !750)
!772 = !DILocation(line: 463, column: 48, scope: !750)
!773 = !DILocation(line: 463, column: 47, scope: !750)
!774 = !DILocation(line: 464, column: 28, scope: !750)
!775 = !DILocation(line: 464, column: 40, scope: !750)
!776 = !DILocation(line: 464, column: 34, scope: !750)
!777 = !DILocation(line: 464, column: 23, scope: !750)
!778 = !DILocation(line: 464, column: 18, scope: !750)
!779 = !DILocation(line: 444, column: 24, scope: !751)
!780 = distinct !{!780, !709, !781, !189}
!781 = !DILocation(line: 465, column: 11, scope: !710)
!782 = !DILocation(line: 0, scope: !707)
!783 = !DILocation(line: 471, column: 3, scope: !697)
!784 = !DILocation(line: 0, scope: !697)
!785 = !DILocation(line: 394, column: 41, scope: !692)
!786 = !DILocation(line: 394, column: 50, scope: !692)
!787 = distinct !{!787, !694, !788, !189}
!788 = !DILocation(line: 471, column: 3, scope: !693)
!789 = !DILocation(line: 474, column: 1, scope: !632)
!790 = !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !244, file: !244, line: 66, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc", scope: !2, file: !2, line: 481, type: !792, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!77, !28, !28, !77, !77}
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DILocalVariable(name: "kind", arg: 1, scope: !791, file: !2, line: 481, type: !28)
!796 = !DILocalVariable(name: "order", arg: 2, scope: !791, file: !2, line: 481, type: !28)
!797 = !DILocalVariable(name: "qq", arg: 3, scope: !791, file: !2, line: 481, type: !77)
!798 = !DILocalVariable(name: "zz", arg: 4, scope: !791, file: !2, line: 481, type: !77)
!799 = !DILocalVariable(name: "result", scope: !791, file: !2, line: 483, type: !79)
!800 = !DILocalVariable(name: "status", scope: !791, file: !2, line: 483, type: !28)
!801 = distinct !DIAssignID()
!802 = !DILocation(line: 0, scope: !791)
!803 = !DILocation(line: 483, column: 2, scope: !791)
!804 = !DILocation(line: 483, column: 2, scope: !805)
!805 = distinct !DILexicalBlock(scope: !791, file: !2, line: 483, column: 2)
!806 = !DILocation(line: 483, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 483, column: 2)
!808 = distinct !DILexicalBlock(scope: !805, file: !2, line: 483, column: 2)
!809 = !DILocation(line: 484, column: 1, scope: !791)
!810 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms", scope: !2, file: !2, line: 486, type: !792, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !811)
!811 = !{!812, !813, !814, !815, !816, !817}
!812 = !DILocalVariable(name: "kind", arg: 1, scope: !810, file: !2, line: 486, type: !28)
!813 = !DILocalVariable(name: "order", arg: 2, scope: !810, file: !2, line: 486, type: !28)
!814 = !DILocalVariable(name: "qq", arg: 3, scope: !810, file: !2, line: 486, type: !77)
!815 = !DILocalVariable(name: "zz", arg: 4, scope: !810, file: !2, line: 486, type: !77)
!816 = !DILocalVariable(name: "result", scope: !810, file: !2, line: 488, type: !79)
!817 = !DILocalVariable(name: "status", scope: !810, file: !2, line: 488, type: !28)
!818 = distinct !DIAssignID()
!819 = !DILocation(line: 0, scope: !810)
!820 = !DILocation(line: 488, column: 2, scope: !810)
!821 = !DILocation(line: 488, column: 2, scope: !822)
!822 = distinct !DILexicalBlock(scope: !810, file: !2, line: 488, column: 2)
!823 = !DILocation(line: 488, column: 2, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !2, line: 488, column: 2)
!825 = distinct !DILexicalBlock(scope: !822, file: !2, line: 488, column: 2)
!826 = !DILocation(line: 489, column: 1, scope: !810)
