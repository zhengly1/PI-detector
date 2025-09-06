; ModuleID = 'mathieu_angfunc.c'
source_filename = "mathieu_angfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"Work space not large enough\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_angfunc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_ce_e(order, qq, zz, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_se_e(order, qq, zz, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_ce_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !76 {
  %5 = alloca [100 x double], align 16, !DIAssignID !103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !103, metadata ptr %5, metadata !DIExpression()), !dbg !104
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !102, metadata !DIExpression(), metadata !105, metadata ptr %6, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !88, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %2, metadata !90, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !91, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #7, !dbg !106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !107
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !104
  %7 = and i32 %0, 1, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !92, metadata !DIExpression()), !dbg !104
  %8 = fcmp oeq double %1, 0.000000e+00, !dbg !110
  br i1 %8, label %9, label %17, !dbg !112

9:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !99, metadata !DIExpression()), !dbg !104
  %10 = icmp eq i32 %0, 0, !dbg !113
  %11 = select i1 %10, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !116
  tail call void @llvm.dbg.value(metadata double %11, metadata !99, metadata !DIExpression()), !dbg !104
  %12 = sitofp i32 %0 to double, !dbg !117
  %13 = fmul double %12, %2, !dbg !118
  %14 = tail call double @cos(double noundef %13) #7, !dbg !119
  %15 = fdiv double %14, %11, !dbg !120
  tail call void @llvm.dbg.value(metadata double %15, metadata !100, metadata !DIExpression()), !dbg !104
  store double %15, ptr %3, align 8, !dbg !121, !tbaa !122
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !127
  tail call void @llvm.dbg.value(metadata double %16, metadata !101, metadata !DIExpression()), !dbg !104
  br label %100, !dbg !128

17:                                               ; preds = %4
  %18 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !88, metadata !DIExpression()), !dbg !104
  %19 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %18, double noundef %1, ptr noundef nonnull %6) #7, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !94, metadata !DIExpression()), !dbg !104
  %20 = icmp eq i32 %19, 0, !dbg !131
  br i1 %20, label %21, label %106, !dbg !133

21:                                               ; preds = %17
  %22 = load double, ptr %6, align 8, !dbg !134, !tbaa !122
  %23 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %18, double noundef %1, double noundef %22, ptr noundef nonnull %5) #7, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !94, metadata !DIExpression()), !dbg !104
  %24 = icmp eq i32 %23, 0, !dbg !136
  br i1 %24, label %25, label %106, !dbg !138

25:                                               ; preds = %21
  %26 = icmp eq i32 %7, 0, !dbg !139
  br i1 %26, label %27, label %61, !dbg !141

27:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !104
  %28 = load double, ptr %5, align 16, !dbg !142, !tbaa !144
  %29 = fmul double %28, %28, !dbg !145
  tail call void @llvm.dbg.value(metadata double %29, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !104
  br label %30, !dbg !146

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %59, %30 ]
  %32 = phi double [ 0.000000e+00, %27 ], [ %55, %30 ]
  %33 = phi double [ %29, %27 ], [ %58, %30 ]
  tail call void @llvm.dbg.value(metadata double %32, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %33, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !93, metadata !DIExpression()), !dbg !104
  %34 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %31, !dbg !148
  %35 = load double, ptr %34, align 16, !dbg !148, !tbaa !144
  %36 = trunc i64 %31 to i32, !dbg !151
  %37 = sitofp i32 %36 to double, !dbg !151
  %38 = fmul double %37, 2.000000e+00, !dbg !152
  %39 = fmul double %38, %2, !dbg !153
  %40 = call double @cos(double noundef %39) #7, !dbg !154
  %41 = fmul double %35, %40, !dbg !155
  %42 = fadd double %32, %41, !dbg !156
  tail call void @llvm.dbg.value(metadata double %42, metadata !100, metadata !DIExpression()), !dbg !104
  %43 = load double, ptr %34, align 16, !dbg !157, !tbaa !144
  %44 = fmul double %43, %43, !dbg !158
  %45 = fadd double %33, %44, !dbg !159
  tail call void @llvm.dbg.value(metadata double %45, metadata !99, metadata !DIExpression()), !dbg !104
  %46 = or disjoint i64 %31, 1, !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %42, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %45, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !93, metadata !DIExpression()), !dbg !104
  %47 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %46, !dbg !148
  %48 = load double, ptr %47, align 8, !dbg !148, !tbaa !144
  %49 = trunc i64 %46 to i32, !dbg !151
  %50 = sitofp i32 %49 to double, !dbg !151
  %51 = fmul double %50, 2.000000e+00, !dbg !152
  %52 = fmul double %51, %2, !dbg !153
  %53 = call double @cos(double noundef %52) #7, !dbg !154
  %54 = fmul double %48, %53, !dbg !155
  %55 = fadd double %42, %54, !dbg !156
  tail call void @llvm.dbg.value(metadata double %55, metadata !100, metadata !DIExpression()), !dbg !104
  %56 = load double, ptr %47, align 8, !dbg !157, !tbaa !144
  %57 = fmul double %56, %56, !dbg !158
  %58 = fadd double %45, %57, !dbg !159
  tail call void @llvm.dbg.value(metadata double %58, metadata !99, metadata !DIExpression()), !dbg !104
  %59 = add nuw nsw i64 %31, 2, !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !93, metadata !DIExpression()), !dbg !104
  %60 = icmp eq i64 %59, 100, !dbg !161
  br i1 %60, label %94, label %30, !dbg !146, !llvm.loop !162

61:                                               ; preds = %25, %61
  %62 = phi i64 [ %92, %61 ], [ 0, %25 ]
  %63 = phi double [ %88, %61 ], [ 0.000000e+00, %25 ]
  %64 = phi double [ %91, %61 ], [ 0.000000e+00, %25 ]
  tail call void @llvm.dbg.value(metadata double %63, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %64, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !93, metadata !DIExpression()), !dbg !104
  %65 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %62, !dbg !165
  %66 = load double, ptr %65, align 16, !dbg !165, !tbaa !144
  %67 = trunc i64 %62 to i32, !dbg !170
  %68 = sitofp i32 %67 to double, !dbg !170
  %69 = fmul double %68, 2.000000e+00, !dbg !171
  %70 = fadd double %69, 1.000000e+00, !dbg !172
  %71 = fmul double %70, %2, !dbg !173
  %72 = call double @cos(double noundef %71) #7, !dbg !174
  %73 = fmul double %66, %72, !dbg !175
  %74 = fadd double %63, %73, !dbg !176
  tail call void @llvm.dbg.value(metadata double %74, metadata !100, metadata !DIExpression()), !dbg !104
  %75 = load double, ptr %65, align 16, !dbg !177, !tbaa !144
  %76 = fmul double %75, %75, !dbg !178
  %77 = fadd double %64, %76, !dbg !179
  tail call void @llvm.dbg.value(metadata double %77, metadata !99, metadata !DIExpression()), !dbg !104
  %78 = or disjoint i64 %62, 1, !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %74, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %77, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !93, metadata !DIExpression()), !dbg !104
  %79 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %78, !dbg !165
  %80 = load double, ptr %79, align 8, !dbg !165, !tbaa !144
  %81 = trunc i64 %78 to i32, !dbg !170
  %82 = sitofp i32 %81 to double, !dbg !170
  %83 = fmul double %82, 2.000000e+00, !dbg !171
  %84 = fadd double %83, 1.000000e+00, !dbg !172
  %85 = fmul double %84, %2, !dbg !173
  %86 = call double @cos(double noundef %85) #7, !dbg !174
  %87 = fmul double %80, %86, !dbg !175
  %88 = fadd double %74, %87, !dbg !176
  tail call void @llvm.dbg.value(metadata double %88, metadata !100, metadata !DIExpression()), !dbg !104
  %89 = load double, ptr %79, align 8, !dbg !177, !tbaa !144
  %90 = fmul double %89, %89, !dbg !178
  %91 = fadd double %77, %90, !dbg !179
  tail call void @llvm.dbg.value(metadata double %91, metadata !99, metadata !DIExpression()), !dbg !104
  %92 = add nuw nsw i64 %62, 2, !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !93, metadata !DIExpression()), !dbg !104
  %93 = icmp eq i64 %92, 100, !dbg !181
  br i1 %93, label %94, label %61, !dbg !182, !llvm.loop !183

94:                                               ; preds = %61, %30
  %95 = phi double [ %58, %30 ], [ %91, %61 ], !dbg !104
  %96 = phi double [ %55, %30 ], [ %88, %61 ], !dbg !185
  tail call void @llvm.dbg.value(metadata double %96, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %95, metadata !99, metadata !DIExpression()), !dbg !104
  %97 = call double @sqrt(double noundef %95) #7, !dbg !186
  tail call void @llvm.dbg.value(metadata double %97, metadata !99, metadata !DIExpression()), !dbg !104
  %98 = fdiv double %96, %97, !dbg !187
  tail call void @llvm.dbg.value(metadata double %98, metadata !100, metadata !DIExpression()), !dbg !104
  store double %98, ptr %3, align 8, !dbg !188, !tbaa !122
  %99 = call double @llvm.fabs.f64(double %98), !dbg !189
  tail call void @llvm.dbg.value(metadata double %99, metadata !101, metadata !DIExpression()), !dbg !104
  br label %100, !dbg !190

100:                                              ; preds = %9, %94
  %101 = phi double [ %99, %94 ], [ %16, %9 ]
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !104
  %103 = fcmp ogt double %101, 1.000000e+00, !dbg !104
  %104 = fmul double %101, 0x3CC0000000000000, !dbg !104
  %105 = select i1 %103, double %104, double 0x3CC0000000000000, !dbg !104
  store double %105, ptr %102, align 8, !dbg !104, !tbaa !191
  br label %106, !dbg !192

106:                                              ; preds = %100, %21, %17
  %107 = phi i32 [ %19, %17 ], [ %23, %21 ], [ 0, %100 ], !dbg !104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !192
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #7, !dbg !192
  ret i32 %107, !dbg !192
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !193 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !197 double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !198 i32 @gsl_sf_mathieu_a_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !202 i32 @gsl_sf_mathieu_a_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_se_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !206 {
  %5 = alloca [100 x double], align 16, !DIAssignID !220
  call void @llvm.dbg.assign(metadata i1 undef, metadata !215, metadata !DIExpression(), metadata !220, metadata ptr %5, metadata !DIExpression()), !dbg !221
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !219, metadata !DIExpression(), metadata !222, metadata ptr %6, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !208, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %1, metadata !209, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %2, metadata !210, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !211, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #7, !dbg !223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !224
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, metadata !212, metadata !DIExpression()), !dbg !221
  %7 = and i32 %0, 1, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !212, metadata !DIExpression()), !dbg !221
  %8 = icmp eq i32 %0, 0, !dbg !227
  br i1 %8, label %9, label %10, !dbg !229

9:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !230
  br label %101, !dbg !232

10:                                               ; preds = %4
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !233
  br i1 %11, label %12, label %21, !dbg !235

12:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !216, metadata !DIExpression()), !dbg !221
  %13 = sitofp i32 %0 to double, !dbg !236
  %14 = fmul double %13, %2, !dbg !238
  %15 = tail call double @sin(double noundef %14) #7, !dbg !239
  tail call void @llvm.dbg.value(metadata double %15, metadata !217, metadata !DIExpression()), !dbg !221
  store double %15, ptr %3, align 8, !dbg !240, !tbaa !122
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !241
  %17 = tail call double @llvm.fabs.f64(double %15), !dbg !242
  tail call void @llvm.dbg.value(metadata double %17, metadata !218, metadata !DIExpression()), !dbg !221
  %18 = fcmp ogt double %17, 1.000000e+00, !dbg !243
  %19 = fmul double %17, 0x3CC0000000000000, !dbg !245
  %20 = select i1 %18, double %19, double 0x3CC0000000000000, !dbg !245
  store double %20, ptr %16, align 8, !dbg !246, !tbaa !191
  br label %101, !dbg !247

21:                                               ; preds = %10
  %22 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !208, metadata !DIExpression()), !dbg !221
  %23 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %22, double noundef %1, ptr noundef nonnull %6) #7, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !214, metadata !DIExpression()), !dbg !221
  %24 = icmp eq i32 %23, 0, !dbg !250
  br i1 %24, label %25, label %101, !dbg !252

25:                                               ; preds = %21
  %26 = load double, ptr %6, align 8, !dbg !253, !tbaa !122
  %27 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %22, double noundef %1, double noundef %26, ptr noundef nonnull %5) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !214, metadata !DIExpression()), !dbg !221
  %28 = icmp eq i32 %27, 0, !dbg !255
  br i1 %28, label %29, label %101, !dbg !257

29:                                               ; preds = %25
  %30 = icmp eq i32 %7, 0, !dbg !258
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !221
  br i1 %30, label %31, label %60, !dbg !260

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %51, %31 ], [ 0, %29 ]
  %33 = phi double [ %58, %31 ], [ 0.000000e+00, %29 ]
  %34 = phi double [ %50, %31 ], [ 0.000000e+00, %29 ]
  tail call void @llvm.dbg.value(metadata double %33, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %34, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !213, metadata !DIExpression()), !dbg !221
  %35 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %32, !dbg !261
  %36 = load double, ptr %35, align 16, !dbg !261, !tbaa !144
  %37 = fmul double %36, %36, !dbg !266
  %38 = fadd double %34, %37, !dbg !267
  tail call void @llvm.dbg.value(metadata double %38, metadata !216, metadata !DIExpression()), !dbg !221
  %39 = or disjoint i64 %32, 1, !dbg !268
  %40 = trunc i64 %39 to i32, !dbg !269
  %41 = sitofp i32 %40 to double, !dbg !269
  %42 = fmul double %41, 2.000000e+00, !dbg !270
  %43 = fmul double %42, %2, !dbg !271
  %44 = call double @sin(double noundef %43) #7, !dbg !272
  %45 = fmul double %36, %44, !dbg !273
  %46 = fadd double %33, %45, !dbg !274
  tail call void @llvm.dbg.value(metadata double %46, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !213, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %46, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %38, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !213, metadata !DIExpression()), !dbg !221
  %47 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %39, !dbg !261
  %48 = load double, ptr %47, align 8, !dbg !261, !tbaa !144
  %49 = fmul double %48, %48, !dbg !266
  %50 = fadd double %38, %49, !dbg !267
  tail call void @llvm.dbg.value(metadata double %50, metadata !216, metadata !DIExpression()), !dbg !221
  %51 = add nuw nsw i64 %32, 2, !dbg !268
  %52 = trunc i64 %51 to i32, !dbg !269
  %53 = sitofp i32 %52 to double, !dbg !269
  %54 = fmul double %53, 2.000000e+00, !dbg !270
  %55 = fmul double %54, %2, !dbg !271
  %56 = call double @sin(double noundef %55) #7, !dbg !272
  %57 = fmul double %48, %56, !dbg !273
  %58 = fadd double %46, %57, !dbg !274
  tail call void @llvm.dbg.value(metadata double %58, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !213, metadata !DIExpression()), !dbg !221
  %59 = icmp eq i64 %51, 100, !dbg !275
  br i1 %59, label %91, label %31, !dbg !276, !llvm.loop !277

60:                                               ; preds = %29, %60
  %61 = phi i64 [ %89, %60 ], [ 0, %29 ]
  %62 = phi double [ %88, %60 ], [ 0.000000e+00, %29 ]
  %63 = phi double [ %80, %60 ], [ 0.000000e+00, %29 ]
  tail call void @llvm.dbg.value(metadata double %62, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %63, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !213, metadata !DIExpression()), !dbg !221
  %64 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %61, !dbg !279
  %65 = load double, ptr %64, align 16, !dbg !279, !tbaa !144
  %66 = fmul double %65, %65, !dbg !284
  %67 = fadd double %63, %66, !dbg !285
  tail call void @llvm.dbg.value(metadata double %67, metadata !216, metadata !DIExpression()), !dbg !221
  %68 = trunc i64 %61 to i32, !dbg !286
  %69 = sitofp i32 %68 to double, !dbg !286
  %70 = fmul double %69, 2.000000e+00, !dbg !287
  %71 = fadd double %70, 1.000000e+00, !dbg !288
  %72 = fmul double %71, %2, !dbg !289
  %73 = call double @sin(double noundef %72) #7, !dbg !290
  %74 = fmul double %65, %73, !dbg !291
  %75 = fadd double %62, %74, !dbg !292
  tail call void @llvm.dbg.value(metadata double %75, metadata !217, metadata !DIExpression()), !dbg !221
  %76 = or disjoint i64 %61, 1, !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !213, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %75, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %67, metadata !216, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !213, metadata !DIExpression()), !dbg !221
  %77 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %76, !dbg !279
  %78 = load double, ptr %77, align 8, !dbg !279, !tbaa !144
  %79 = fmul double %78, %78, !dbg !284
  %80 = fadd double %67, %79, !dbg !285
  tail call void @llvm.dbg.value(metadata double %80, metadata !216, metadata !DIExpression()), !dbg !221
  %81 = trunc i64 %76 to i32, !dbg !286
  %82 = sitofp i32 %81 to double, !dbg !286
  %83 = fmul double %82, 2.000000e+00, !dbg !287
  %84 = fadd double %83, 1.000000e+00, !dbg !288
  %85 = fmul double %84, %2, !dbg !289
  %86 = call double @sin(double noundef %85) #7, !dbg !290
  %87 = fmul double %78, %86, !dbg !291
  %88 = fadd double %75, %87, !dbg !292
  tail call void @llvm.dbg.value(metadata double %88, metadata !217, metadata !DIExpression()), !dbg !221
  %89 = add nuw nsw i64 %61, 2, !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !213, metadata !DIExpression()), !dbg !221
  %90 = icmp eq i64 %89, 100, !dbg !294
  br i1 %90, label %91, label %60, !dbg !295, !llvm.loop !296

91:                                               ; preds = %60, %31
  %92 = phi double [ %50, %31 ], [ %80, %60 ], !dbg !298
  %93 = phi double [ %58, %31 ], [ %88, %60 ], !dbg !299
  tail call void @llvm.dbg.value(metadata double %93, metadata !217, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %92, metadata !216, metadata !DIExpression()), !dbg !221
  %94 = call double @sqrt(double noundef %92) #7, !dbg !300
  tail call void @llvm.dbg.value(metadata double %94, metadata !216, metadata !DIExpression()), !dbg !221
  %95 = fdiv double %93, %94, !dbg !301
  tail call void @llvm.dbg.value(metadata double %95, metadata !217, metadata !DIExpression()), !dbg !221
  store double %95, ptr %3, align 8, !dbg !302, !tbaa !122
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !303
  %97 = call double @llvm.fabs.f64(double %95), !dbg !304
  tail call void @llvm.dbg.value(metadata double %97, metadata !218, metadata !DIExpression()), !dbg !221
  %98 = fcmp ogt double %97, 1.000000e+00, !dbg !305
  %99 = fmul double %97, 0x3CC0000000000000, !dbg !307
  %100 = select i1 %98, double %99, double 0x3CC0000000000000, !dbg !307
  store double %100, ptr %96, align 8, !dbg !221, !tbaa !191
  br label %101, !dbg !308

101:                                              ; preds = %25, %21, %91, %12, %9
  %102 = phi i32 [ 0, %9 ], [ 0, %12 ], [ 0, %91 ], [ %23, %21 ], [ %27, %25 ], !dbg !221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !309
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #7, !dbg !309
  ret i32 %102, !dbg !309
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !310 double @sin(double noundef) local_unnamed_addr #2

declare !dbg !311 i32 @gsl_sf_mathieu_b_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !312 i32 @gsl_sf_mathieu_b_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_ce_array(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !313 {
  %7 = alloca [100 x double], align 16, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !392, metadata ptr %7, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !378, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !379, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %2, metadata !380, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %3, metadata !381, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !382, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !383, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #7, !dbg !394
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %4, i64 0, i32 6, !dbg !395
  %9 = load ptr, ptr %8, align 8, !dbg !395, !tbaa !396
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !390, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()), !dbg !393
  %10 = icmp slt i32 %1, %0, !dbg !401
  br i1 %10, label %16, label %11, !dbg !404

11:                                               ; preds = %6
  %12 = add i32 %1, 1, !dbg !404
  %13 = sub i32 %12, %0, !dbg !404
  %14 = zext i32 %13 to i64, !dbg !404
  %15 = shl nuw nsw i64 %14, 3, !dbg !404
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !dbg !405, !tbaa !144
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !386, metadata !DIExpression()), !dbg !393
  br label %16, !dbg !406

16:                                               ; preds = %11, %6
  %17 = load i64, ptr %4, align 8, !dbg !406, !tbaa !408
  %18 = zext i32 %1 to i64, !dbg !409
  %19 = icmp ult i64 %17, %18, !dbg !410
  br i1 %19, label %20, label %21, !dbg !411

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 4) #7, !dbg !412
  br label %106, !dbg !412

21:                                               ; preds = %16
  %22 = icmp slt i32 %0, 0, !dbg !415
  %23 = icmp slt i32 %1, %0
  %24 = or i1 %22, %23, !dbg !417
  br i1 %24, label %25, label %26, !dbg !417

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 1) #7, !dbg !418
  br label %106, !dbg !418

26:                                               ; preds = %21
  %27 = tail call i32 @gsl_sf_mathieu_a_array(i32 noundef 0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4, ptr noundef %9) #7, !dbg !421
  tail call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !385, metadata !DIExpression()), !dbg !393
  %28 = fcmp oeq double %2, 0.000000e+00
  %29 = zext nneg i32 %0 to i64, !dbg !422
  %30 = add i32 %1, 1, !dbg !422
  %31 = sub i32 %30, %0, !dbg !422
  %32 = zext i32 %31 to i64, !dbg !424
  br label %33, !dbg !422

33:                                               ; preds = %26, %102
  %34 = phi i64 [ %29, %26 ], [ %104, %102 ]
  %35 = phi i64 [ 0, %26 ], [ %103, %102 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !386, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !385, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !393
  %36 = trunc i64 %34 to i32, !dbg !426
  %37 = and i32 %36, 1, !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !384, metadata !DIExpression()), !dbg !393
  br i1 %28, label %38, label %46, !dbg !429

38:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !391, metadata !DIExpression()), !dbg !393
  %39 = icmp eq i64 %34, 0, !dbg !430
  %40 = select i1 %39, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !434
  tail call void @llvm.dbg.value(metadata double %40, metadata !391, metadata !DIExpression()), !dbg !393
  %41 = sitofp i32 %36 to double, !dbg !435
  %42 = fmul double %41, %3, !dbg !436
  %43 = call double @cos(double noundef %42) #7, !dbg !437
  %44 = fdiv double %43, %40, !dbg !438
  %45 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !439
  store double %44, ptr %45, align 8, !dbg !440, !tbaa !144
  br label %102, !dbg !441

46:                                               ; preds = %33
  %47 = getelementptr inbounds double, ptr %9, i64 %34, !dbg !442
  %48 = load double, ptr %47, align 8, !dbg !442, !tbaa !144
  %49 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %36, double noundef %2, double noundef %48, ptr noundef nonnull %7) #7, !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !388, metadata !DIExpression()), !dbg !393
  %50 = icmp eq i32 %49, 0, !dbg !444
  br i1 %50, label %51, label %106, !dbg !446

51:                                               ; preds = %46
  %52 = icmp eq i32 %37, 0, !dbg !447
  br i1 %52, label %55, label %53, !dbg !449

53:                                               ; preds = %51
  %54 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !393
  br label %77, !dbg !450

55:                                               ; preds = %51
  %56 = load double, ptr %7, align 16, !dbg !453, !tbaa !144
  %57 = fmul double %56, %56, !dbg !455
  tail call void @llvm.dbg.value(metadata double %57, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !393
  %58 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double %57, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !393
  br label %59, !dbg !456

59:                                               ; preds = %55, %59
  %60 = phi i64 [ 0, %55 ], [ %75, %59 ]
  %61 = phi double [ %57, %55 ], [ %74, %59 ]
  tail call void @llvm.dbg.value(metadata double %61, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !387, metadata !DIExpression()), !dbg !393
  %62 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %60, !dbg !458
  %63 = load double, ptr %62, align 8, !dbg !458, !tbaa !144
  %64 = trunc i64 %60 to i32, !dbg !461
  %65 = sitofp i32 %64 to double, !dbg !461
  %66 = fmul double %65, 2.000000e+00, !dbg !462
  %67 = fmul double %66, %3, !dbg !463
  %68 = call double @cos(double noundef %67) #7, !dbg !464
  %69 = fmul double %63, %68, !dbg !465
  %70 = load double, ptr %58, align 8, !dbg !466, !tbaa !144
  %71 = fadd double %70, %69, !dbg !466
  store double %71, ptr %58, align 8, !dbg !466, !tbaa !144
  %72 = load double, ptr %62, align 8, !dbg !467, !tbaa !144
  %73 = fmul double %72, %72, !dbg !468
  %74 = fadd double %61, %73, !dbg !469
  tail call void @llvm.dbg.value(metadata double %74, metadata !391, metadata !DIExpression()), !dbg !393
  %75 = add nuw nsw i64 %60, 1, !dbg !470
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !387, metadata !DIExpression()), !dbg !393
  %76 = icmp eq i64 %75, 100, !dbg !471
  br i1 %76, label %96, label %59, !dbg !456, !llvm.loop !472

77:                                               ; preds = %53, %77
  %78 = phi i64 [ 0, %53 ], [ %94, %77 ]
  %79 = phi double [ 0.000000e+00, %53 ], [ %93, %77 ]
  tail call void @llvm.dbg.value(metadata double %79, metadata !391, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !387, metadata !DIExpression()), !dbg !393
  %80 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %78, !dbg !474
  %81 = load double, ptr %80, align 8, !dbg !474, !tbaa !144
  %82 = trunc i64 %78 to i32, !dbg !477
  %83 = sitofp i32 %82 to double, !dbg !477
  %84 = fmul double %83, 2.000000e+00, !dbg !478
  %85 = fadd double %84, 1.000000e+00, !dbg !479
  %86 = fmul double %85, %3, !dbg !480
  %87 = call double @cos(double noundef %86) #7, !dbg !481
  %88 = fmul double %81, %87, !dbg !482
  %89 = load double, ptr %54, align 8, !dbg !483, !tbaa !144
  %90 = fadd double %89, %88, !dbg !483
  store double %90, ptr %54, align 8, !dbg !483, !tbaa !144
  %91 = load double, ptr %80, align 8, !dbg !484, !tbaa !144
  %92 = fmul double %91, %91, !dbg !485
  %93 = fadd double %79, %92, !dbg !486
  tail call void @llvm.dbg.value(metadata double %93, metadata !391, metadata !DIExpression()), !dbg !393
  %94 = add nuw nsw i64 %78, 1, !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !387, metadata !DIExpression()), !dbg !393
  %95 = icmp eq i64 %94, 100, !dbg !488
  br i1 %95, label %96, label %77, !dbg !450, !llvm.loop !489

96:                                               ; preds = %77, %59
  %97 = phi double [ %74, %59 ], [ %93, %77 ], !dbg !491
  tail call void @llvm.dbg.value(metadata double %97, metadata !391, metadata !DIExpression()), !dbg !393
  %98 = call double @sqrt(double noundef %97) #7, !dbg !492
  tail call void @llvm.dbg.value(metadata double %98, metadata !391, metadata !DIExpression()), !dbg !393
  %99 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !493
  %100 = load double, ptr %99, align 8, !dbg !494, !tbaa !144
  %101 = fdiv double %100, %98, !dbg !494
  store double %101, ptr %99, align 8, !dbg !494, !tbaa !144
  br label %102, !dbg !495

102:                                              ; preds = %96, %38
  %103 = add nuw nsw i64 %35, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !386, metadata !DIExpression()), !dbg !393
  %104 = add nuw nsw i64 %34, 1, !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !385, metadata !DIExpression()), !dbg !393
  %105 = icmp eq i64 %103, %32, !dbg !424
  br i1 %105, label %106, label %33, !dbg !422, !llvm.loop !498

106:                                              ; preds = %102, %46, %25, %20
  %107 = phi i32 [ 4, %20 ], [ 1, %25 ], [ 0, %102 ], [ %49, %46 ], !dbg !393
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #7, !dbg !500
  ret i32 %107, !dbg !500
}

declare !dbg !501 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !506 i32 @gsl_sf_mathieu_a_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_se_array(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !509 {
  %7 = alloca [100 x double], align 16, !DIAssignID !525
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !525, metadata ptr %7, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !511, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !512, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata double %2, metadata !513, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata double %3, metadata !514, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !515, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !516, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #7, !dbg !527
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %4, i64 0, i32 7, !dbg !528
  %9 = load ptr, ptr %8, align 8, !dbg !528, !tbaa !529
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !526
  %10 = icmp slt i32 %1, %0, !dbg !530
  br i1 %10, label %16, label %11, !dbg !533

11:                                               ; preds = %6
  %12 = add i32 %1, 1, !dbg !533
  %13 = sub i32 %12, %0, !dbg !533
  %14 = zext i32 %13 to i64, !dbg !533
  %15 = shl nuw nsw i64 %14, 3, !dbg !533
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !dbg !534, !tbaa !144
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !519, metadata !DIExpression()), !dbg !526
  br label %16, !dbg !535

16:                                               ; preds = %11, %6
  %17 = load i64, ptr %4, align 8, !dbg !535, !tbaa !408
  %18 = zext i32 %1 to i64, !dbg !537
  %19 = icmp ult i64 %17, %18, !dbg !538
  br i1 %19, label %20, label %21, !dbg !539

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 4) #7, !dbg !540
  br label %102, !dbg !540

21:                                               ; preds = %16
  %22 = icmp slt i32 %0, 0, !dbg !543
  %23 = icmp slt i32 %1, %0
  %24 = or i1 %22, %23, !dbg !545
  br i1 %24, label %25, label %26, !dbg !545

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 1) #7, !dbg !546
  br label %102, !dbg !546

26:                                               ; preds = %21
  %27 = tail call i32 @gsl_sf_mathieu_b_array(i32 noundef 0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4, ptr noundef %9) #7, !dbg !549
  tail call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !518, metadata !DIExpression()), !dbg !526
  %28 = fcmp oeq double %2, 0.000000e+00
  %29 = zext nneg i32 %0 to i64, !dbg !550
  %30 = add i32 %1, 1, !dbg !550
  %31 = sub i32 %30, %0, !dbg !550
  %32 = zext i32 %31 to i64, !dbg !552
  br label %33, !dbg !550

33:                                               ; preds = %26, %98
  %34 = phi i64 [ %29, %26 ], [ %100, %98 ]
  %35 = phi i64 [ 0, %26 ], [ %99, %98 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !519, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !518, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !526
  %36 = trunc i64 %34 to i32, !dbg !554
  %37 = and i32 %36, 1, !dbg !554
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !517, metadata !DIExpression()), !dbg !526
  %38 = icmp eq i64 %34, 0, !dbg !557
  br i1 %38, label %39, label %41, !dbg !559

39:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !524, metadata !DIExpression()), !dbg !526
  %40 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !560
  store double 0.000000e+00, ptr %40, align 8, !dbg !562, !tbaa !144
  br label %98, !dbg !563

41:                                               ; preds = %33
  br i1 %28, label %42, label %47, !dbg !564

42:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !524, metadata !DIExpression()), !dbg !526
  %43 = sitofp i32 %36 to double, !dbg !565
  %44 = fmul double %43, %3, !dbg !568
  %45 = call double @sin(double noundef %44) #7, !dbg !569
  %46 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !570
  store double %45, ptr %46, align 8, !dbg !571, !tbaa !144
  br label %98, !dbg !572

47:                                               ; preds = %41
  %48 = getelementptr inbounds double, ptr %9, i64 %34, !dbg !573
  %49 = load double, ptr %48, align 8, !dbg !573, !tbaa !144
  %50 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %36, double noundef %2, double noundef %49, ptr noundef nonnull %7) #7, !dbg !574
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !521, metadata !DIExpression()), !dbg !526
  %51 = icmp eq i32 %50, 0, !dbg !575
  br i1 %51, label %52, label %102, !dbg !577

52:                                               ; preds = %47
  %53 = icmp eq i32 %37, 0, !dbg !578
  tail call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !526
  %54 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !526
  br i1 %53, label %55, label %73, !dbg !580

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %60, %55 ], [ 0, %52 ]
  %57 = phi double [ %71, %55 ], [ 0.000000e+00, %52 ]
  tail call void @llvm.dbg.value(metadata double %57, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !520, metadata !DIExpression()), !dbg !526
  %58 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %56, !dbg !581
  %59 = load double, ptr %58, align 8, !dbg !581, !tbaa !144
  %60 = add nuw nsw i64 %56, 1, !dbg !586
  %61 = trunc i64 %60 to i32, !dbg !587
  %62 = sitofp i32 %61 to double, !dbg !587
  %63 = fmul double %62, 2.000000e+00, !dbg !588
  %64 = fmul double %63, %3, !dbg !589
  %65 = call double @sin(double noundef %64) #7, !dbg !590
  %66 = fmul double %59, %65, !dbg !591
  %67 = load double, ptr %54, align 8, !dbg !592, !tbaa !144
  %68 = fadd double %67, %66, !dbg !592
  store double %68, ptr %54, align 8, !dbg !592, !tbaa !144
  %69 = load double, ptr %58, align 8, !dbg !593, !tbaa !144
  %70 = fmul double %69, %69, !dbg !594
  %71 = fadd double %57, %70, !dbg !595
  tail call void @llvm.dbg.value(metadata double %71, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !520, metadata !DIExpression()), !dbg !526
  %72 = icmp eq i64 %60, 100, !dbg !596
  br i1 %72, label %92, label %55, !dbg !597, !llvm.loop !598

73:                                               ; preds = %52, %73
  %74 = phi i64 [ %90, %73 ], [ 0, %52 ]
  %75 = phi double [ %89, %73 ], [ 0.000000e+00, %52 ]
  tail call void @llvm.dbg.value(metadata double %75, metadata !524, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !520, metadata !DIExpression()), !dbg !526
  %76 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %74, !dbg !600
  %77 = load double, ptr %76, align 8, !dbg !600, !tbaa !144
  %78 = trunc i64 %74 to i32, !dbg !605
  %79 = sitofp i32 %78 to double, !dbg !605
  %80 = fmul double %79, 2.000000e+00, !dbg !606
  %81 = fadd double %80, 1.000000e+00, !dbg !607
  %82 = fmul double %81, %3, !dbg !608
  %83 = call double @sin(double noundef %82) #7, !dbg !609
  %84 = fmul double %77, %83, !dbg !610
  %85 = load double, ptr %54, align 8, !dbg !611, !tbaa !144
  %86 = fadd double %85, %84, !dbg !611
  store double %86, ptr %54, align 8, !dbg !611, !tbaa !144
  %87 = load double, ptr %76, align 8, !dbg !612, !tbaa !144
  %88 = fmul double %87, %87, !dbg !613
  %89 = fadd double %75, %88, !dbg !614
  tail call void @llvm.dbg.value(metadata double %89, metadata !524, metadata !DIExpression()), !dbg !526
  %90 = add nuw nsw i64 %74, 1, !dbg !615
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !520, metadata !DIExpression()), !dbg !526
  %91 = icmp eq i64 %90, 100, !dbg !616
  br i1 %91, label %92, label %73, !dbg !617, !llvm.loop !618

92:                                               ; preds = %73, %55
  %93 = phi double [ %71, %55 ], [ %89, %73 ], !dbg !620
  tail call void @llvm.dbg.value(metadata double %93, metadata !524, metadata !DIExpression()), !dbg !526
  %94 = call double @sqrt(double noundef %93) #7, !dbg !621
  tail call void @llvm.dbg.value(metadata double %94, metadata !524, metadata !DIExpression()), !dbg !526
  %95 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !622
  %96 = load double, ptr %95, align 8, !dbg !623, !tbaa !144
  %97 = fdiv double %96, %94, !dbg !623
  store double %97, ptr %95, align 8, !dbg !623, !tbaa !144
  br label %98, !dbg !624

98:                                               ; preds = %92, %42, %39
  %99 = add nuw nsw i64 %35, 1, !dbg !625
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !519, metadata !DIExpression()), !dbg !526
  %100 = add nuw nsw i64 %34, 1, !dbg !626
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !518, metadata !DIExpression()), !dbg !526
  %101 = icmp eq i64 %99, %32, !dbg !552
  br i1 %101, label %102, label %33, !dbg !550, !llvm.loop !627

102:                                              ; preds = %98, %47, %25, %20
  %103 = phi i32 [ 4, %20 ], [ 1, %25 ], [ 0, %98 ], [ %50, %47 ], !dbg !526
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #7, !dbg !629
  ret i32 %103, !dbg !629
}

declare !dbg !630 i32 @gsl_sf_mathieu_b_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_ce(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !631 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !638, metadata !DIExpression(), metadata !640, metadata ptr %4, metadata !DIExpression()), !dbg !641
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !635, metadata !DIExpression()), !dbg !641
  tail call void @llvm.dbg.value(metadata double %1, metadata !636, metadata !DIExpression()), !dbg !641
  tail call void @llvm.dbg.value(metadata double %2, metadata !637, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !642
  %5 = call i32 @gsl_sf_mathieu_ce_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !642
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !639, metadata !DIExpression()), !dbg !641
  %6 = icmp eq i32 %5, 0, !dbg !643
  br i1 %6, label %8, label %7, !dbg !642

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef %5) #7, !dbg !645
  br label %8, !dbg !645

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !642, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !648
  ret double %9, !dbg !648
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_se(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !649 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !654, metadata !DIExpression(), metadata !656, metadata ptr %4, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !651, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata double %1, metadata !652, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata double %2, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !658
  %5 = call i32 @gsl_sf_mathieu_se_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !655, metadata !DIExpression()), !dbg !657
  %6 = icmp eq i32 %5, 0, !dbg !659
  br i1 %6, label %8, label %7, !dbg !658

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef %5) #7, !dbg !661
  br label %8, !dbg !661

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !658, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !664
  ret double %9, !dbg !664
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_angfunc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "70960853f7e105117bb05f4025c27f54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 44)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !19, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !67, splitDebugInlining: false, nameTableKind: None)
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
!65 = !{!66}
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !{!0, !7, !12, !17, !22}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!75 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!76 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_e", scope: !2, file: !2, line: 30, type: !77, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!28, !28, !79, !79, !80}
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !79, size: 64, offset: 64)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !99, !100, !101, !102}
!88 = !DILocalVariable(name: "order", arg: 1, scope: !76, file: !2, line: 30, type: !28)
!89 = !DILocalVariable(name: "qq", arg: 2, scope: !76, file: !2, line: 30, type: !79)
!90 = !DILocalVariable(name: "zz", arg: 3, scope: !76, file: !2, line: 30, type: !79)
!91 = !DILocalVariable(name: "result", arg: 4, scope: !76, file: !2, line: 30, type: !80)
!92 = !DILocalVariable(name: "even_odd", scope: !76, file: !2, line: 32, type: !28)
!93 = !DILocalVariable(name: "ii", scope: !76, file: !2, line: 32, type: !28)
!94 = !DILocalVariable(name: "status", scope: !76, file: !2, line: 32, type: !28)
!95 = !DILocalVariable(name: "coeff", scope: !76, file: !2, line: 33, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 6400, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 100)
!99 = !DILocalVariable(name: "norm", scope: !76, file: !2, line: 33, type: !79)
!100 = !DILocalVariable(name: "fn", scope: !76, file: !2, line: 33, type: !79)
!101 = !DILocalVariable(name: "factor", scope: !76, file: !2, line: 33, type: !79)
!102 = !DILocalVariable(name: "aa", scope: !76, file: !2, line: 34, type: !81)
!103 = distinct !DIAssignID()
!104 = !DILocation(line: 0, scope: !76)
!105 = distinct !DIAssignID()
!106 = !DILocation(line: 33, column: 3, scope: !76)
!107 = !DILocation(line: 34, column: 3, scope: !76)
!108 = !DILocation(line: 39, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !76, file: !2, line: 39, column: 7)
!110 = !DILocation(line: 43, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !76, file: !2, line: 43, column: 7)
!112 = !DILocation(line: 43, column: 7, scope: !76)
!113 = !DILocation(line: 46, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 46, column: 11)
!115 = distinct !DILexicalBlock(scope: !111, file: !2, line: 44, column: 3)
!116 = !DILocation(line: 46, column: 11, scope: !115)
!117 = !DILocation(line: 49, column: 16, scope: !115)
!118 = !DILocation(line: 49, column: 21, scope: !115)
!119 = !DILocation(line: 49, column: 12, scope: !115)
!120 = !DILocation(line: 49, column: 25, scope: !115)
!121 = !DILocation(line: 51, column: 19, scope: !115)
!122 = !{!123, !124, i64 0}
!123 = !{!"gsl_sf_result_struct", !124, i64 0, !124, i64 8}
!124 = !{!"double", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 53, column: 16, scope: !115)
!128 = !DILocation(line: 57, column: 7, scope: !115)
!129 = !DILocation(line: 62, column: 7, scope: !76)
!130 = !DILocation(line: 66, column: 12, scope: !76)
!131 = !DILocation(line: 67, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !76, file: !2, line: 67, column: 7)
!133 = !DILocation(line: 67, column: 7, scope: !76)
!134 = !DILocation(line: 73, column: 49, scope: !76)
!135 = !DILocation(line: 73, column: 12, scope: !76)
!136 = !DILocation(line: 74, column: 14, scope: !137)
!137 = distinct !DILexicalBlock(scope: !76, file: !2, line: 74, column: 7)
!138 = !DILocation(line: 74, column: 7, scope: !76)
!139 = !DILocation(line: 79, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !76, file: !2, line: 79, column: 7)
!141 = !DILocation(line: 79, column: 7, scope: !76)
!142 = !DILocation(line: 82, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !2, line: 80, column: 3)
!144 = !{!124, !124, i64 0}
!145 = !DILocation(line: 82, column: 22, scope: !143)
!146 = !DILocation(line: 83, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !2, line: 83, column: 7)
!148 = !DILocation(line: 85, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 84, column: 7)
!150 = distinct !DILexicalBlock(scope: !147, file: !2, line: 83, column: 7)
!151 = !DILocation(line: 85, column: 35, scope: !149)
!152 = !DILocation(line: 85, column: 34, scope: !149)
!153 = !DILocation(line: 85, column: 37, scope: !149)
!154 = !DILocation(line: 85, column: 27, scope: !149)
!155 = !DILocation(line: 85, column: 26, scope: !149)
!156 = !DILocation(line: 85, column: 14, scope: !149)
!157 = !DILocation(line: 86, column: 19, scope: !149)
!158 = !DILocation(line: 86, column: 28, scope: !149)
!159 = !DILocation(line: 86, column: 16, scope: !149)
!160 = !DILocation(line: 83, column: 45, scope: !150)
!161 = !DILocation(line: 83, column: 20, scope: !150)
!162 = distinct !{!162, !146, !163, !164}
!163 = !DILocation(line: 87, column: 7, scope: !147)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 94, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 93, column: 7)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 92, column: 7)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 92, column: 7)
!169 = distinct !DILexicalBlock(scope: !140, file: !2, line: 90, column: 3)
!170 = !DILocation(line: 94, column: 36, scope: !166)
!171 = !DILocation(line: 94, column: 35, scope: !166)
!172 = !DILocation(line: 94, column: 39, scope: !166)
!173 = !DILocation(line: 94, column: 45, scope: !166)
!174 = !DILocation(line: 94, column: 27, scope: !166)
!175 = !DILocation(line: 94, column: 26, scope: !166)
!176 = !DILocation(line: 94, column: 14, scope: !166)
!177 = !DILocation(line: 95, column: 19, scope: !166)
!178 = !DILocation(line: 95, column: 28, scope: !166)
!179 = !DILocation(line: 95, column: 16, scope: !166)
!180 = !DILocation(line: 92, column: 45, scope: !167)
!181 = !DILocation(line: 92, column: 20, scope: !167)
!182 = !DILocation(line: 92, column: 7, scope: !168)
!183 = distinct !{!183, !182, !184, !164}
!184 = !DILocation(line: 96, column: 7, scope: !168)
!185 = !DILocation(line: 0, scope: !140)
!186 = !DILocation(line: 99, column: 10, scope: !76)
!187 = !DILocation(line: 100, column: 6, scope: !76)
!188 = !DILocation(line: 102, column: 15, scope: !76)
!189 = !DILocation(line: 104, column: 12, scope: !76)
!190 = !DILocation(line: 108, column: 3, scope: !76)
!191 = !{!123, !124, i64 8}
!192 = !DILocation(line: 109, column: 1, scope: !76)
!193 = !DISubprogram(name: "sqrt", scope: !194, file: !194, line: 143, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!195 = !DISubroutineType(types: !196)
!196 = !{!79, !79}
!197 = !DISubprogram(name: "cos", scope: !194, file: !194, line: 62, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !199, file: !199, line: 70, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!200 = !DISubroutineType(types: !201)
!201 = !{!28, !28, !79, !80}
!202 = !DISubprogram(name: "gsl_sf_mathieu_a_coeff", scope: !199, file: !199, line: 76, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{!28, !28, !79, !79, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!206 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_e", scope: !2, file: !2, line: 112, type: !77, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!208 = !DILocalVariable(name: "order", arg: 1, scope: !206, file: !2, line: 112, type: !28)
!209 = !DILocalVariable(name: "qq", arg: 2, scope: !206, file: !2, line: 112, type: !79)
!210 = !DILocalVariable(name: "zz", arg: 3, scope: !206, file: !2, line: 112, type: !79)
!211 = !DILocalVariable(name: "result", arg: 4, scope: !206, file: !2, line: 112, type: !80)
!212 = !DILocalVariable(name: "even_odd", scope: !206, file: !2, line: 114, type: !28)
!213 = !DILocalVariable(name: "ii", scope: !206, file: !2, line: 114, type: !28)
!214 = !DILocalVariable(name: "status", scope: !206, file: !2, line: 114, type: !28)
!215 = !DILocalVariable(name: "coeff", scope: !206, file: !2, line: 115, type: !96)
!216 = !DILocalVariable(name: "norm", scope: !206, file: !2, line: 115, type: !79)
!217 = !DILocalVariable(name: "fn", scope: !206, file: !2, line: 115, type: !79)
!218 = !DILocalVariable(name: "factor", scope: !206, file: !2, line: 115, type: !79)
!219 = !DILocalVariable(name: "aa", scope: !206, file: !2, line: 116, type: !81)
!220 = distinct !DIAssignID()
!221 = !DILocation(line: 0, scope: !206)
!222 = distinct !DIAssignID()
!223 = !DILocation(line: 115, column: 3, scope: !206)
!224 = !DILocation(line: 116, column: 3, scope: !206)
!225 = !DILocation(line: 121, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !206, file: !2, line: 121, column: 7)
!227 = !DILocation(line: 125, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !206, file: !2, line: 125, column: 7)
!229 = !DILocation(line: 125, column: 7, scope: !206)
!230 = !DILocation(line: 128, column: 19, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !2, line: 126, column: 3)
!232 = !DILocation(line: 129, column: 7, scope: !231)
!233 = !DILocation(line: 132, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !206, file: !2, line: 132, column: 7)
!235 = !DILocation(line: 132, column: 7, scope: !206)
!236 = !DILocation(line: 135, column: 16, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !2, line: 133, column: 3)
!238 = !DILocation(line: 135, column: 21, scope: !237)
!239 = !DILocation(line: 135, column: 12, scope: !237)
!240 = !DILocation(line: 137, column: 19, scope: !237)
!241 = !DILocation(line: 138, column: 15, scope: !237)
!242 = !DILocation(line: 139, column: 16, scope: !237)
!243 = !DILocation(line: 140, column: 18, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !2, line: 140, column: 11)
!245 = !DILocation(line: 140, column: 11, scope: !237)
!246 = !DILocation(line: 0, scope: !237)
!247 = !DILocation(line: 143, column: 7, scope: !237)
!248 = !DILocation(line: 148, column: 7, scope: !206)
!249 = !DILocation(line: 152, column: 12, scope: !206)
!250 = !DILocation(line: 153, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !206, file: !2, line: 153, column: 7)
!252 = !DILocation(line: 153, column: 7, scope: !206)
!253 = !DILocation(line: 159, column: 49, scope: !206)
!254 = !DILocation(line: 159, column: 12, scope: !206)
!255 = !DILocation(line: 160, column: 14, scope: !256)
!256 = distinct !DILexicalBlock(scope: !206, file: !2, line: 160, column: 7)
!257 = !DILocation(line: 160, column: 7, scope: !206)
!258 = !DILocation(line: 165, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !206, file: !2, line: 165, column: 7)
!260 = !DILocation(line: 165, column: 7, scope: !206)
!261 = !DILocation(line: 170, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 169, column: 7)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 168, column: 7)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 168, column: 7)
!265 = distinct !DILexicalBlock(scope: !259, file: !2, line: 166, column: 3)
!266 = !DILocation(line: 170, column: 28, scope: !262)
!267 = !DILocation(line: 170, column: 16, scope: !262)
!268 = !DILocation(line: 171, column: 39, scope: !262)
!269 = !DILocation(line: 171, column: 35, scope: !262)
!270 = !DILocation(line: 171, column: 34, scope: !262)
!271 = !DILocation(line: 171, column: 43, scope: !262)
!272 = !DILocation(line: 171, column: 27, scope: !262)
!273 = !DILocation(line: 171, column: 26, scope: !262)
!274 = !DILocation(line: 171, column: 14, scope: !262)
!275 = !DILocation(line: 168, column: 20, scope: !263)
!276 = !DILocation(line: 168, column: 7, scope: !264)
!277 = distinct !{!277, !276, !278, !164}
!278 = !DILocation(line: 172, column: 7, scope: !264)
!279 = !DILocation(line: 179, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 178, column: 7)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 177, column: 7)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 177, column: 7)
!283 = distinct !DILexicalBlock(scope: !259, file: !2, line: 175, column: 3)
!284 = !DILocation(line: 179, column: 28, scope: !280)
!285 = !DILocation(line: 179, column: 16, scope: !280)
!286 = !DILocation(line: 180, column: 36, scope: !280)
!287 = !DILocation(line: 180, column: 35, scope: !280)
!288 = !DILocation(line: 180, column: 39, scope: !280)
!289 = !DILocation(line: 180, column: 43, scope: !280)
!290 = !DILocation(line: 180, column: 27, scope: !280)
!291 = !DILocation(line: 180, column: 26, scope: !280)
!292 = !DILocation(line: 180, column: 14, scope: !280)
!293 = !DILocation(line: 177, column: 45, scope: !281)
!294 = !DILocation(line: 177, column: 20, scope: !281)
!295 = !DILocation(line: 177, column: 7, scope: !282)
!296 = distinct !{!296, !295, !297, !164}
!297 = !DILocation(line: 181, column: 7, scope: !282)
!298 = !DILocation(line: 119, column: 8, scope: !206)
!299 = !DILocation(line: 0, scope: !259)
!300 = !DILocation(line: 183, column: 10, scope: !206)
!301 = !DILocation(line: 184, column: 6, scope: !206)
!302 = !DILocation(line: 186, column: 15, scope: !206)
!303 = !DILocation(line: 187, column: 11, scope: !206)
!304 = !DILocation(line: 188, column: 12, scope: !206)
!305 = !DILocation(line: 189, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !206, file: !2, line: 189, column: 7)
!307 = !DILocation(line: 189, column: 7, scope: !206)
!308 = !DILocation(line: 192, column: 3, scope: !206)
!309 = !DILocation(line: 193, column: 1, scope: !206)
!310 = !DISubprogram(name: "sin", scope: !194, file: !194, line: 64, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !199, file: !199, line: 72, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubprogram(name: "gsl_sf_mathieu_b_coeff", scope: !199, file: !199, line: 77, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_array", scope: !2, file: !2, line: 196, type: !314, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !377)
!314 = !DISubroutineType(types: !315)
!315 = !{!28, !28, !28, !79, !79, !316, !205}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !199, line: 60, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 42, size: 1024, elements: !319)
!319 = !{!320, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !354, !366}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !199, line: 44, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !322, line: 18, baseType: !323)
!322 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!323 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !318, file: !199, line: 45, baseType: !321, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !318, file: !199, line: 46, baseType: !321, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !318, file: !199, line: 47, baseType: !28, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !318, file: !199, line: 48, baseType: !79, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !318, file: !199, line: 49, baseType: !79, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !318, file: !199, line: 50, baseType: !205, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !318, file: !199, line: 51, baseType: !205, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !318, file: !199, line: 52, baseType: !205, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !318, file: !199, line: 53, baseType: !205, size: 64, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !318, file: !199, line: 54, baseType: !205, size: 64, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !318, file: !199, line: 55, baseType: !205, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !318, file: !199, line: 56, baseType: !205, size: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !318, file: !199, line: 57, baseType: !337, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !339, line: 50, baseType: !340)
!339 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 42, size: 320, elements: !341)
!341 = !{!342, !343, !344, !345, !353}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !339, line: 44, baseType: !321, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !340, file: !339, line: 45, baseType: !321, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !340, file: !339, line: 46, baseType: !205, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !340, file: !339, line: 47, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !348, line: 44, baseType: !349)
!348 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !348, line: 38, size: 128, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !348, line: 40, baseType: !321, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !349, file: !348, line: 41, baseType: !205, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !339, line: 48, baseType: !28, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !318, file: !199, line: 58, baseType: !355, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !357, line: 50, baseType: !358)
!357 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 42, size: 384, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !358, file: !357, line: 44, baseType: !321, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !358, file: !357, line: 45, baseType: !321, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !358, file: !357, line: 46, baseType: !321, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !358, file: !357, line: 47, baseType: !205, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !358, file: !357, line: 48, baseType: !346, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !358, file: !357, line: 49, baseType: !28, size: 32, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !318, file: !199, line: 59, baseType: !367, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !369, line: 54, baseType: !370)
!369 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 48, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !369, line: 49, baseType: !321, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !370, file: !369, line: 50, baseType: !205, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !370, file: !369, line: 51, baseType: !205, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !370, file: !369, line: 52, baseType: !205, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !370, file: !369, line: 53, baseType: !205, size: 64, offset: 256)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!378 = !DILocalVariable(name: "nmin", arg: 1, scope: !313, file: !2, line: 196, type: !28)
!379 = !DILocalVariable(name: "nmax", arg: 2, scope: !313, file: !2, line: 196, type: !28)
!380 = !DILocalVariable(name: "qq", arg: 3, scope: !313, file: !2, line: 196, type: !79)
!381 = !DILocalVariable(name: "zz", arg: 4, scope: !313, file: !2, line: 196, type: !79)
!382 = !DILocalVariable(name: "work", arg: 5, scope: !313, file: !2, line: 197, type: !316)
!383 = !DILocalVariable(name: "result_array", arg: 6, scope: !313, file: !2, line: 198, type: !205)
!384 = !DILocalVariable(name: "even_odd", scope: !313, file: !2, line: 200, type: !28)
!385 = !DILocalVariable(name: "order", scope: !313, file: !2, line: 200, type: !28)
!386 = !DILocalVariable(name: "ii", scope: !313, file: !2, line: 200, type: !28)
!387 = !DILocalVariable(name: "jj", scope: !313, file: !2, line: 200, type: !28)
!388 = !DILocalVariable(name: "status", scope: !313, file: !2, line: 200, type: !28)
!389 = !DILocalVariable(name: "coeff", scope: !313, file: !2, line: 201, type: !96)
!390 = !DILocalVariable(name: "aa", scope: !313, file: !2, line: 201, type: !205)
!391 = !DILocalVariable(name: "norm", scope: !313, file: !2, line: 201, type: !79)
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !313)
!394 = !DILocation(line: 201, column: 3, scope: !313)
!395 = !DILocation(line: 201, column: 51, scope: !313)
!396 = !{!397, !400, i64 48}
!397 = !{!"", !398, i64 0, !398, i64 8, !398, i64 16, !399, i64 24, !124, i64 32, !124, i64 40, !400, i64 48, !400, i64 56, !400, i64 64, !400, i64 72, !400, i64 80, !400, i64 88, !400, i64 96, !400, i64 104, !400, i64 112, !400, i64 120}
!398 = !{!"long", !125, i64 0}
!399 = !{!"int", !125, i64 0}
!400 = !{!"any pointer", !125, i64 0}
!401 = !DILocation(line: 205, column: 16, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !2, line: 205, column: 3)
!403 = distinct !DILexicalBlock(scope: !313, file: !2, line: 205, column: 3)
!404 = !DILocation(line: 205, column: 3, scope: !403)
!405 = !DILocation(line: 206, column: 24, scope: !402)
!406 = !DILocation(line: 209, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !313, file: !2, line: 209, column: 7)
!408 = !{!397, !398, i64 0}
!409 = !DILocation(line: 209, column: 20, scope: !407)
!410 = !DILocation(line: 209, column: 18, scope: !407)
!411 = !DILocation(line: 209, column: 7, scope: !313)
!412 = !DILocation(line: 211, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 211, column: 7)
!414 = distinct !DILexicalBlock(scope: !407, file: !2, line: 210, column: 3)
!415 = !DILocation(line: 214, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !313, file: !2, line: 214, column: 7)
!417 = !DILocation(line: 214, column: 16, scope: !416)
!418 = !DILocation(line: 216, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !2, line: 216, column: 7)
!420 = distinct !DILexicalBlock(scope: !416, file: !2, line: 215, column: 3)
!421 = !DILocation(line: 220, column: 3, scope: !313)
!422 = !DILocation(line: 222, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !313, file: !2, line: 222, column: 3)
!424 = !DILocation(line: 222, column: 31, scope: !425)
!425 = distinct !DILexicalBlock(scope: !423, file: !2, line: 222, column: 3)
!426 = !DILocation(line: 226, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 226, column: 11)
!428 = distinct !DILexicalBlock(scope: !425, file: !2, line: 223, column: 3)
!429 = !DILocation(line: 230, column: 11, scope: !428)
!430 = !DILocation(line: 233, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 233, column: 15)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 231, column: 7)
!433 = distinct !DILexicalBlock(scope: !428, file: !2, line: 230, column: 11)
!434 = !DILocation(line: 233, column: 15, scope: !432)
!435 = !DILocation(line: 236, column: 34, scope: !432)
!436 = !DILocation(line: 236, column: 39, scope: !432)
!437 = !DILocation(line: 236, column: 30, scope: !432)
!438 = !DILocation(line: 236, column: 43, scope: !432)
!439 = !DILocation(line: 236, column: 11, scope: !432)
!440 = !DILocation(line: 236, column: 28, scope: !432)
!441 = !DILocation(line: 238, column: 11, scope: !432)
!442 = !DILocation(line: 242, column: 50, scope: !428)
!443 = !DILocation(line: 242, column: 16, scope: !428)
!444 = !DILocation(line: 243, column: 18, scope: !445)
!445 = distinct !DILexicalBlock(scope: !428, file: !2, line: 243, column: 11)
!446 = !DILocation(line: 243, column: 11, scope: !428)
!447 = !DILocation(line: 246, column: 20, scope: !448)
!448 = distinct !DILexicalBlock(scope: !428, file: !2, line: 246, column: 11)
!449 = !DILocation(line: 246, column: 11, scope: !428)
!450 = !DILocation(line: 257, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !2, line: 257, column: 11)
!452 = distinct !DILexicalBlock(scope: !448, file: !2, line: 256, column: 7)
!453 = !DILocation(line: 248, column: 18, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !2, line: 247, column: 7)
!455 = !DILocation(line: 248, column: 26, scope: !454)
!456 = !DILocation(line: 249, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !2, line: 249, column: 11)
!458 = !DILocation(line: 251, column: 35, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 250, column: 11)
!460 = distinct !DILexicalBlock(scope: !457, file: !2, line: 249, column: 11)
!461 = !DILocation(line: 251, column: 53, scope: !459)
!462 = !DILocation(line: 251, column: 52, scope: !459)
!463 = !DILocation(line: 251, column: 55, scope: !459)
!464 = !DILocation(line: 251, column: 45, scope: !459)
!465 = !DILocation(line: 251, column: 44, scope: !459)
!466 = !DILocation(line: 251, column: 32, scope: !459)
!467 = !DILocation(line: 252, column: 23, scope: !459)
!468 = !DILocation(line: 252, column: 32, scope: !459)
!469 = !DILocation(line: 252, column: 20, scope: !459)
!470 = !DILocation(line: 249, column: 49, scope: !460)
!471 = !DILocation(line: 249, column: 24, scope: !460)
!472 = distinct !{!472, !456, !473, !164}
!473 = !DILocation(line: 253, column: 11, scope: !457)
!474 = !DILocation(line: 259, column: 35, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 258, column: 11)
!476 = distinct !DILexicalBlock(scope: !451, file: !2, line: 257, column: 11)
!477 = !DILocation(line: 259, column: 54, scope: !475)
!478 = !DILocation(line: 259, column: 53, scope: !475)
!479 = !DILocation(line: 259, column: 57, scope: !475)
!480 = !DILocation(line: 259, column: 63, scope: !475)
!481 = !DILocation(line: 259, column: 45, scope: !475)
!482 = !DILocation(line: 259, column: 44, scope: !475)
!483 = !DILocation(line: 259, column: 32, scope: !475)
!484 = !DILocation(line: 260, column: 23, scope: !475)
!485 = !DILocation(line: 260, column: 32, scope: !475)
!486 = !DILocation(line: 260, column: 20, scope: !475)
!487 = !DILocation(line: 257, column: 49, scope: !476)
!488 = !DILocation(line: 257, column: 24, scope: !476)
!489 = distinct !{!489, !450, !490, !164}
!490 = !DILocation(line: 261, column: 11, scope: !451)
!491 = !DILocation(line: 0, scope: !428)
!492 = !DILocation(line: 264, column: 14, scope: !428)
!493 = !DILocation(line: 265, column: 7, scope: !428)
!494 = !DILocation(line: 265, column: 24, scope: !428)
!495 = !DILocation(line: 266, column: 3, scope: !428)
!496 = !DILocation(line: 222, column: 41, scope: !425)
!497 = !DILocation(line: 222, column: 50, scope: !425)
!498 = distinct !{!498, !422, !499, !164}
!499 = !DILocation(line: 266, column: 3, scope: !423)
!500 = !DILocation(line: 269, column: 1, scope: !313)
!501 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504, !504, !28, !28}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!506 = !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !199, file: !199, line: 65, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{!28, !28, !28, !79, !316, !205}
!509 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_array", scope: !2, file: !2, line: 272, type: !314, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!511 = !DILocalVariable(name: "nmin", arg: 1, scope: !509, file: !2, line: 272, type: !28)
!512 = !DILocalVariable(name: "nmax", arg: 2, scope: !509, file: !2, line: 272, type: !28)
!513 = !DILocalVariable(name: "qq", arg: 3, scope: !509, file: !2, line: 272, type: !79)
!514 = !DILocalVariable(name: "zz", arg: 4, scope: !509, file: !2, line: 272, type: !79)
!515 = !DILocalVariable(name: "work", arg: 5, scope: !509, file: !2, line: 273, type: !316)
!516 = !DILocalVariable(name: "result_array", arg: 6, scope: !509, file: !2, line: 274, type: !205)
!517 = !DILocalVariable(name: "even_odd", scope: !509, file: !2, line: 276, type: !28)
!518 = !DILocalVariable(name: "order", scope: !509, file: !2, line: 276, type: !28)
!519 = !DILocalVariable(name: "ii", scope: !509, file: !2, line: 276, type: !28)
!520 = !DILocalVariable(name: "jj", scope: !509, file: !2, line: 276, type: !28)
!521 = !DILocalVariable(name: "status", scope: !509, file: !2, line: 276, type: !28)
!522 = !DILocalVariable(name: "coeff", scope: !509, file: !2, line: 277, type: !96)
!523 = !DILocalVariable(name: "bb", scope: !509, file: !2, line: 277, type: !205)
!524 = !DILocalVariable(name: "norm", scope: !509, file: !2, line: 277, type: !79)
!525 = distinct !DIAssignID()
!526 = !DILocation(line: 0, scope: !509)
!527 = !DILocation(line: 277, column: 3, scope: !509)
!528 = !DILocation(line: 277, column: 51, scope: !509)
!529 = !{!397, !400, i64 56}
!530 = !DILocation(line: 281, column: 16, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 281, column: 3)
!532 = distinct !DILexicalBlock(scope: !509, file: !2, line: 281, column: 3)
!533 = !DILocation(line: 281, column: 3, scope: !532)
!534 = !DILocation(line: 282, column: 24, scope: !531)
!535 = !DILocation(line: 285, column: 13, scope: !536)
!536 = distinct !DILexicalBlock(scope: !509, file: !2, line: 285, column: 7)
!537 = !DILocation(line: 285, column: 20, scope: !536)
!538 = !DILocation(line: 285, column: 18, scope: !536)
!539 = !DILocation(line: 285, column: 7, scope: !509)
!540 = !DILocation(line: 287, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 287, column: 7)
!542 = distinct !DILexicalBlock(scope: !536, file: !2, line: 286, column: 3)
!543 = !DILocation(line: 290, column: 12, scope: !544)
!544 = distinct !DILexicalBlock(scope: !509, file: !2, line: 290, column: 7)
!545 = !DILocation(line: 290, column: 16, scope: !544)
!546 = !DILocation(line: 292, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 292, column: 7)
!548 = distinct !DILexicalBlock(scope: !544, file: !2, line: 291, column: 3)
!549 = !DILocation(line: 296, column: 3, scope: !509)
!550 = !DILocation(line: 298, column: 3, scope: !551)
!551 = distinct !DILexicalBlock(scope: !509, file: !2, line: 298, column: 3)
!552 = !DILocation(line: 298, column: 31, scope: !553)
!553 = distinct !DILexicalBlock(scope: !551, file: !2, line: 298, column: 3)
!554 = !DILocation(line: 302, column: 17, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 302, column: 11)
!556 = distinct !DILexicalBlock(scope: !553, file: !2, line: 299, column: 3)
!557 = !DILocation(line: 306, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !556, file: !2, line: 306, column: 11)
!559 = !DILocation(line: 306, column: 11, scope: !556)
!560 = !DILocation(line: 309, column: 11, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !2, line: 307, column: 7)
!562 = !DILocation(line: 309, column: 28, scope: !561)
!563 = !DILocation(line: 310, column: 11, scope: !561)
!564 = !DILocation(line: 313, column: 11, scope: !556)
!565 = !DILocation(line: 316, column: 34, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 314, column: 7)
!567 = distinct !DILexicalBlock(scope: !556, file: !2, line: 313, column: 11)
!568 = !DILocation(line: 316, column: 39, scope: !566)
!569 = !DILocation(line: 316, column: 30, scope: !566)
!570 = !DILocation(line: 316, column: 11, scope: !566)
!571 = !DILocation(line: 316, column: 28, scope: !566)
!572 = !DILocation(line: 318, column: 11, scope: !566)
!573 = !DILocation(line: 322, column: 50, scope: !556)
!574 = !DILocation(line: 322, column: 16, scope: !556)
!575 = !DILocation(line: 323, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !556, file: !2, line: 323, column: 11)
!577 = !DILocation(line: 323, column: 11, scope: !556)
!578 = !DILocation(line: 328, column: 20, scope: !579)
!579 = distinct !DILexicalBlock(scope: !556, file: !2, line: 328, column: 11)
!580 = !DILocation(line: 328, column: 11, scope: !556)
!581 = !DILocation(line: 332, column: 35, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 331, column: 11)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 330, column: 11)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 330, column: 11)
!585 = distinct !DILexicalBlock(scope: !579, file: !2, line: 329, column: 7)
!586 = !DILocation(line: 332, column: 57, scope: !582)
!587 = !DILocation(line: 332, column: 53, scope: !582)
!588 = !DILocation(line: 332, column: 52, scope: !582)
!589 = !DILocation(line: 332, column: 61, scope: !582)
!590 = !DILocation(line: 332, column: 45, scope: !582)
!591 = !DILocation(line: 332, column: 44, scope: !582)
!592 = !DILocation(line: 332, column: 32, scope: !582)
!593 = !DILocation(line: 333, column: 23, scope: !582)
!594 = !DILocation(line: 333, column: 32, scope: !582)
!595 = !DILocation(line: 333, column: 20, scope: !582)
!596 = !DILocation(line: 330, column: 24, scope: !583)
!597 = !DILocation(line: 330, column: 11, scope: !584)
!598 = distinct !{!598, !597, !599, !164}
!599 = !DILocation(line: 334, column: 11, scope: !584)
!600 = !DILocation(line: 340, column: 35, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 339, column: 11)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 338, column: 11)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 338, column: 11)
!604 = distinct !DILexicalBlock(scope: !579, file: !2, line: 337, column: 7)
!605 = !DILocation(line: 340, column: 54, scope: !601)
!606 = !DILocation(line: 340, column: 53, scope: !601)
!607 = !DILocation(line: 340, column: 57, scope: !601)
!608 = !DILocation(line: 340, column: 63, scope: !601)
!609 = !DILocation(line: 340, column: 45, scope: !601)
!610 = !DILocation(line: 340, column: 44, scope: !601)
!611 = !DILocation(line: 340, column: 32, scope: !601)
!612 = !DILocation(line: 341, column: 23, scope: !601)
!613 = !DILocation(line: 341, column: 32, scope: !601)
!614 = !DILocation(line: 341, column: 20, scope: !601)
!615 = !DILocation(line: 338, column: 49, scope: !602)
!616 = !DILocation(line: 338, column: 24, scope: !602)
!617 = !DILocation(line: 338, column: 11, scope: !603)
!618 = distinct !{!618, !617, !619, !164}
!619 = !DILocation(line: 342, column: 11, scope: !603)
!620 = !DILocation(line: 300, column: 12, scope: !556)
!621 = !DILocation(line: 345, column: 14, scope: !556)
!622 = !DILocation(line: 346, column: 7, scope: !556)
!623 = !DILocation(line: 346, column: 24, scope: !556)
!624 = !DILocation(line: 347, column: 3, scope: !556)
!625 = !DILocation(line: 298, column: 41, scope: !553)
!626 = !DILocation(line: 298, column: 50, scope: !553)
!627 = distinct !{!627, !550, !628, !164}
!628 = !DILocation(line: 347, column: 3, scope: !551)
!629 = !DILocation(line: 350, column: 1, scope: !509)
!630 = !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !199, file: !199, line: 66, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!631 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce", scope: !2, file: !2, line: 357, type: !632, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!79, !28, !79, !79}
!634 = !{!635, !636, !637, !638, !639}
!635 = !DILocalVariable(name: "order", arg: 1, scope: !631, file: !2, line: 357, type: !28)
!636 = !DILocalVariable(name: "qq", arg: 2, scope: !631, file: !2, line: 357, type: !79)
!637 = !DILocalVariable(name: "zz", arg: 3, scope: !631, file: !2, line: 357, type: !79)
!638 = !DILocalVariable(name: "result", scope: !631, file: !2, line: 359, type: !81)
!639 = !DILocalVariable(name: "status", scope: !631, file: !2, line: 359, type: !28)
!640 = distinct !DIAssignID()
!641 = !DILocation(line: 0, scope: !631)
!642 = !DILocation(line: 359, column: 2, scope: !631)
!643 = !DILocation(line: 359, column: 2, scope: !644)
!644 = distinct !DILexicalBlock(scope: !631, file: !2, line: 359, column: 2)
!645 = !DILocation(line: 359, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !2, line: 359, column: 2)
!647 = distinct !DILexicalBlock(scope: !644, file: !2, line: 359, column: 2)
!648 = !DILocation(line: 360, column: 1, scope: !631)
!649 = distinct !DISubprogram(name: "gsl_sf_mathieu_se", scope: !2, file: !2, line: 362, type: !632, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !650)
!650 = !{!651, !652, !653, !654, !655}
!651 = !DILocalVariable(name: "order", arg: 1, scope: !649, file: !2, line: 362, type: !28)
!652 = !DILocalVariable(name: "qq", arg: 2, scope: !649, file: !2, line: 362, type: !79)
!653 = !DILocalVariable(name: "zz", arg: 3, scope: !649, file: !2, line: 362, type: !79)
!654 = !DILocalVariable(name: "result", scope: !649, file: !2, line: 364, type: !81)
!655 = !DILocalVariable(name: "status", scope: !649, file: !2, line: 364, type: !28)
!656 = distinct !DIAssignID()
!657 = !DILocation(line: 0, scope: !649)
!658 = !DILocation(line: 364, column: 2, scope: !649)
!659 = !DILocation(line: 364, column: 2, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !2, line: 364, column: 2)
!661 = !DILocation(line: 364, column: 2, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 364, column: 2)
!663 = distinct !DILexicalBlock(scope: !660, file: !2, line: 364, column: 2)
!664 = !DILocation(line: 365, column: 1, scope: !649)
