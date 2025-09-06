; ModuleID = 'bessel_Inu.c'
source_filename = "bessel_Inu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Inu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Inu_scaled_e(nu, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Inu_e(nu, x, &result)\00", align 1, !dbg !14

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !70 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !85, metadata !DIExpression(), metadata !105, metadata ptr %4, metadata !DIExpression()), !dbg !106
  %5 = alloca double, align 8, !DIAssignID !107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !107, metadata ptr %5, metadata !DIExpression()), !dbg !108
  %6 = alloca double, align 8, !DIAssignID !109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !96, metadata !DIExpression(), metadata !109, metadata ptr %6, metadata !DIExpression()), !dbg !108
  %7 = alloca double, align 8, !DIAssignID !110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !97, metadata !DIExpression(), metadata !110, metadata ptr %7, metadata !DIExpression()), !dbg !108
  %8 = alloca double, align 8, !DIAssignID !111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !111, metadata ptr %8, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %0, metadata !82, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata double %1, metadata !83, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !84, metadata !DIExpression()), !dbg !112
  %9 = fcmp olt double %1, 0.000000e+00, !dbg !113
  %10 = fcmp olt double %0, 0.000000e+00
  %11 = or i1 %10, %9, !dbg !114
  br i1 %11, label %12, label %14, !dbg !114

12:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !115, !tbaa !118
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !115
  store double 0x7FF8000000000000, ptr %13, align 8, !dbg !115, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, i32 noundef 1) #6, !dbg !124
  br label %115, !dbg !124

14:                                               ; preds = %3
  %15 = fmul double %1, %1, !dbg !126
  %16 = fadd double %0, 1.000000e+00, !dbg !127
  %17 = fmul double %16, 1.000000e+01, !dbg !128
  %18 = fcmp olt double %15, %17, !dbg !129
  br i1 %18, label %19, label %32, !dbg !130

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !131
  %20 = fneg double %1, !dbg !132
  %21 = tail call double @exp(double noundef %20) #6, !dbg !133
  tail call void @llvm.dbg.value(metadata double %21, metadata !89, metadata !DIExpression()), !dbg !106
  %22 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %0, double noundef %1, i32 noundef 1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #6, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !90, metadata !DIExpression()), !dbg !106
  %23 = load double, ptr %4, align 8, !dbg !135, !tbaa !118
  %24 = fmul double %21, %23, !dbg !136
  store double %24, ptr %2, align 8, !dbg !137, !tbaa !118
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !138
  %26 = load double, ptr %25, align 8, !dbg !138, !tbaa !123
  %27 = fmul double %21, %26, !dbg !139
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !140
  %29 = call double @llvm.fabs.f64(double %24), !dbg !141
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !142
  %31 = fadd double %27, %30, !dbg !143
  store double %31, ptr %28, align 8, !dbg !143, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !144
  br label %115

32:                                               ; preds = %14
  %33 = fmul double %0, %0, !dbg !145
  %34 = fadd double %33, %15, !dbg !146
  %35 = fdiv double 5.000000e-01, %34, !dbg !147
  %36 = fcmp olt double %35, 0x3ED965FEA53D6E41, !dbg !148
  br i1 %36, label %37, label %39, !dbg !149

37:                                               ; preds = %32
  %38 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %0, double noundef %1, ptr noundef %2) #6, !dbg !150
  br label %115, !dbg !152

39:                                               ; preds = %32
  %40 = fadd double %0, 5.000000e-01, !dbg !153
  %41 = fptosi double %40 to i32, !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !91, metadata !DIExpression()), !dbg !108
  %42 = sitofp i32 %41 to double, !dbg !155
  %43 = fsub double %0, %42, !dbg !156
  tail call void @llvm.dbg.value(metadata double %43, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6, !dbg !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6, !dbg !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !158
  %44 = fcmp olt double %1, 2.000000e+00, !dbg !159
  br i1 %44, label %45, label %47, !dbg !161

45:                                               ; preds = %39
  %46 = call i32 @gsl_sf_bessel_K_scaled_temme(double noundef %43, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !103, metadata !DIExpression()), !dbg !108
  br label %49, !dbg !164

47:                                               ; preds = %39
  %48 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef %43, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !165
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !103, metadata !DIExpression()), !dbg !108
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !103, metadata !DIExpression()), !dbg !108
  %51 = load double, ptr %5, align 8, !dbg !168, !tbaa !169
  tail call void @llvm.dbg.value(metadata double %51, metadata !98, metadata !DIExpression()), !dbg !108
  %52 = load double, ptr %6, align 8, !dbg !170, !tbaa !169
  tail call void @llvm.dbg.value(metadata double %52, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %51, metadata !98, metadata !DIExpression()), !dbg !108
  %53 = icmp sgt i32 %41, 0, !dbg !171
  br i1 %53, label %54, label %98, !dbg !174

54:                                               ; preds = %49
  %55 = and i32 %41, 1, !dbg !174
  %56 = icmp eq i32 %41, 1, !dbg !174
  br i1 %56, label %84, label %57, !dbg !174

57:                                               ; preds = %54
  %58 = and i32 %41, 2147483646, !dbg !174
  br label %59, !dbg !174

59:                                               ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %79, %59 ]
  %61 = phi double [ %51, %57 ], [ %70, %59 ]
  %62 = phi double [ %52, %57 ], [ %78, %59 ]
  %63 = phi i32 [ 0, %57 ], [ %80, %59 ]
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %62, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %61, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %62, metadata !98, metadata !DIExpression()), !dbg !108
  %64 = sitofp i32 %60 to double, !dbg !175
  %65 = fadd double %43, %64, !dbg !177
  %66 = fadd double %65, 1.000000e+00, !dbg !178
  %67 = fmul double %66, 2.000000e+00, !dbg !179
  %68 = fdiv double %67, %1, !dbg !180
  %69 = fmul double %62, %68, !dbg !181
  %70 = fadd double %61, %69, !dbg !182
  tail call void @llvm.dbg.value(metadata double %70, metadata !99, metadata !DIExpression()), !dbg !108
  %71 = or disjoint i32 %60, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %70, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %62, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %70, metadata !98, metadata !DIExpression()), !dbg !108
  %72 = sitofp i32 %71 to double, !dbg !175
  %73 = fadd double %43, %72, !dbg !177
  %74 = fadd double %73, 1.000000e+00, !dbg !178
  %75 = fmul double %74, 2.000000e+00, !dbg !179
  %76 = fdiv double %75, %1, !dbg !180
  %77 = fmul double %70, %76, !dbg !181
  %78 = fadd double %62, %77, !dbg !182
  tail call void @llvm.dbg.value(metadata double %78, metadata !99, metadata !DIExpression()), !dbg !108
  %79 = add nuw nsw i32 %60, 2, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !104, metadata !DIExpression()), !dbg !108
  %80 = add i32 %63, 2, !dbg !174
  %81 = icmp eq i32 %80, %58, !dbg !174
  br i1 %81, label %82, label %59, !dbg !174, !llvm.loop !184

82:                                               ; preds = %59
  %83 = sitofp i32 %79 to double, !dbg !175
  br label %84, !dbg !174

84:                                               ; preds = %82, %54
  %85 = phi double [ undef, %54 ], [ %70, %82 ]
  %86 = phi double [ undef, %54 ], [ %78, %82 ]
  %87 = phi double [ 0.000000e+00, %54 ], [ %83, %82 ]
  %88 = phi double [ %51, %54 ], [ %70, %82 ]
  %89 = phi double [ %52, %54 ], [ %78, %82 ]
  %90 = icmp eq i32 %55, 0, !dbg !174
  br i1 %90, label %98, label %91, !dbg !174

91:                                               ; preds = %84
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %89, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %88, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %89, metadata !98, metadata !DIExpression()), !dbg !108
  %92 = fadd double %43, %87, !dbg !177
  %93 = fadd double %92, 1.000000e+00, !dbg !178
  %94 = fmul double %93, 2.000000e+00, !dbg !179
  %95 = fdiv double %94, %1, !dbg !180
  %96 = fmul double %89, %95, !dbg !181
  %97 = fadd double %88, %96, !dbg !182
  tail call void @llvm.dbg.value(metadata double %97, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !104, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  br label %98, !dbg !187

98:                                               ; preds = %91, %84, %49
  %99 = phi double [ %52, %49 ], [ %86, %84 ], [ %97, %91 ], !dbg !108
  %100 = phi double [ %51, %49 ], [ %85, %84 ], [ %89, %91 ], !dbg !108
  %101 = call i32 @gsl_sf_bessel_I_CF1_ser(double noundef %0, double noundef %1, ptr noundef nonnull %8) #6, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !102, metadata !DIExpression()), !dbg !108
  %102 = load double, ptr %8, align 8, !dbg !188, !tbaa !169
  %103 = fmul double %100, %102, !dbg !189
  %104 = fadd double %99, %103, !dbg !190
  %105 = fmul double %104, %1, !dbg !191
  %106 = fdiv double 1.000000e+00, %105, !dbg !192
  store double %106, ptr %2, align 8, !dbg !193, !tbaa !118
  %107 = fmul double %42, 5.000000e-01, !dbg !194
  %108 = fadd double %107, 2.000000e+00, !dbg !195
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !196
  %110 = call double @llvm.fabs.f64(double %106), !dbg !197
  %111 = fmul double %109, %110, !dbg !198
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !199
  store double %111, ptr %112, align 8, !dbg !200, !tbaa !123
  %113 = icmp eq i32 %50, 0, !dbg !201
  %114 = select i1 %113, i32 %101, i32 %50, !dbg !201
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !202
  br label %115

115:                                              ; preds = %12, %19, %37, %98
  %116 = phi i32 [ 1, %12 ], [ %22, %19 ], [ %38, %37 ], [ %114, %98 ], !dbg !203
  ret i32 %116, !dbg !204
}

declare !dbg !205 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !210 double @exp(double noundef) local_unnamed_addr #3

declare !dbg !214 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !220 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !223 i32 @gsl_sf_bessel_K_scaled_temme(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !228 i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !229 i32 @gsl_sf_bessel_I_CF1_ser(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Inu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !232 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !237, metadata !DIExpression(), metadata !240, metadata ptr %4, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double %0, metadata !234, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double %1, metadata !235, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !236, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !242
  %5 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !241
  %6 = fmul double %1, 0x3CB0000000000000, !dbg !244
  %7 = call double @llvm.fabs.f64(double %6), !dbg !245
  %8 = load double, ptr %4, align 8, !dbg !246, !tbaa !118
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !247
  %10 = load double, ptr %9, align 8, !dbg !247, !tbaa !123
  %11 = call i32 @gsl_sf_exp_mult_err_e(double noundef %1, double noundef %7, double noundef %8, double noundef %10, ptr noundef %2) #6, !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !239, metadata !DIExpression()), !dbg !241
  %12 = icmp eq i32 %11, 0, !dbg !249
  %13 = select i1 %12, i32 %5, i32 %11, !dbg !249
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !250
  ret i32 %13, !dbg !251
}

declare !dbg !252 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Inu_scaled(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !256 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !262, metadata !DIExpression(), metadata !264, metadata ptr %3, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %0, metadata !260, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %1, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !266
  %4 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !263, metadata !DIExpression()), !dbg !265
  %5 = icmp eq i32 %4, 0, !dbg !267
  br i1 %5, label %7, label %6, !dbg !266

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef %4) #6, !dbg !269
  br label %7, !dbg !269

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !266, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !272
  ret double %8, !dbg !272
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Inu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !273 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !279
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !280
  call void @llvm.dbg.assign(metadata i1 undef, metadata !277, metadata !DIExpression(), metadata !280, metadata ptr %4, metadata !DIExpression()), !dbg !281
  tail call void @llvm.dbg.value(metadata double %0, metadata !275, metadata !DIExpression()), !dbg !281
  tail call void @llvm.dbg.value(metadata double %1, metadata !276, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !282
  call void @llvm.dbg.assign(metadata i1 undef, metadata !237, metadata !DIExpression(), metadata !279, metadata ptr %3, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %0, metadata !234, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %1, metadata !235, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %4, metadata !236, metadata !DIExpression()), !dbg !283
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !285
  %5 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !286
  call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !283
  %6 = fmul double %1, 0x3CB0000000000000, !dbg !287
  %7 = call double @llvm.fabs.f64(double %6), !dbg !288
  %8 = load double, ptr %3, align 8, !dbg !289, !tbaa !118
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !290
  %10 = load double, ptr %9, align 8, !dbg !290, !tbaa !123
  %11 = call i32 @gsl_sf_exp_mult_err_e(double noundef %1, double noundef %7, double noundef %8, double noundef %10, ptr noundef nonnull %4) #6, !dbg !291
  call void @llvm.dbg.value(metadata i32 %11, metadata !239, metadata !DIExpression()), !dbg !283
  %12 = icmp eq i32 %11, 0, !dbg !292
  %13 = select i1 %12, i32 %5, i32 %11, !dbg !292
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !278, metadata !DIExpression()), !dbg !281
  %14 = icmp eq i32 %13, 0, !dbg !294
  br i1 %14, label %16, label %15, !dbg !282

15:                                               ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef %13) #6, !dbg !296
  br label %16, !dbg !296

16:                                               ; preds = %2, %15
  %17 = load double, ptr %4, align 8, !dbg !282, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !299
  ret double %17, !dbg !299
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Inu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "98b2670e9c1e8700638b3b11195fc777")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 43)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 36)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !60, globals: !61, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!23}
!61 = !{!0, !7, !9, !14}
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 2}
!68 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!69 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!70 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !2, file: !2, line: 38, type: !71, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !81)
!71 = !DISubroutineType(types: !72)
!72 = !{!23, !73, !73, !74}
!73 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !76, line: 37, size: 128, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !76, line: 38, baseType: !73, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !77, file: !76, line: 39, baseType: !73, size: 64, offset: 64)
!81 = !{!82, !83, !84, !85, !89, !90, !91, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!82 = !DILocalVariable(name: "nu", arg: 1, scope: !70, file: !2, line: 38, type: !73)
!83 = !DILocalVariable(name: "x", arg: 2, scope: !70, file: !2, line: 38, type: !73)
!84 = !DILocalVariable(name: "result", arg: 3, scope: !70, file: !2, line: 38, type: !74)
!85 = !DILocalVariable(name: "b", scope: !86, file: !2, line: 46, type: !75)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 45, column: 32)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 45, column: 11)
!88 = distinct !DILexicalBlock(scope: !70, file: !2, line: 42, column: 6)
!89 = !DILocalVariable(name: "ex", scope: !86, file: !2, line: 47, type: !73)
!90 = !DILocalVariable(name: "stat", scope: !86, file: !2, line: 48, type: !23)
!91 = !DILocalVariable(name: "N", scope: !92, file: !2, line: 58, type: !23)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 57, column: 8)
!93 = distinct !DILexicalBlock(scope: !87, file: !2, line: 54, column: 11)
!94 = !DILocalVariable(name: "mu", scope: !92, file: !2, line: 59, type: !73)
!95 = !DILocalVariable(name: "K_mu", scope: !92, file: !2, line: 60, type: !73)
!96 = !DILocalVariable(name: "K_mup1", scope: !92, file: !2, line: 60, type: !73)
!97 = !DILocalVariable(name: "Kp_mu", scope: !92, file: !2, line: 60, type: !73)
!98 = !DILocalVariable(name: "K_nu", scope: !92, file: !2, line: 61, type: !73)
!99 = !DILocalVariable(name: "K_nup1", scope: !92, file: !2, line: 61, type: !73)
!100 = !DILocalVariable(name: "K_num1", scope: !92, file: !2, line: 61, type: !73)
!101 = !DILocalVariable(name: "I_nu_ratio", scope: !92, file: !2, line: 62, type: !73)
!102 = !DILocalVariable(name: "stat_Irat", scope: !92, file: !2, line: 63, type: !23)
!103 = !DILocalVariable(name: "stat_Kmu", scope: !92, file: !2, line: 64, type: !23)
!104 = !DILocalVariable(name: "n", scope: !92, file: !2, line: 65, type: !23)
!105 = distinct !DIAssignID()
!106 = !DILocation(line: 0, scope: !86)
!107 = distinct !DIAssignID()
!108 = !DILocation(line: 0, scope: !92)
!109 = distinct !DIAssignID()
!110 = distinct !DIAssignID()
!111 = distinct !DIAssignID()
!112 = !DILocation(line: 0, scope: !70)
!113 = !DILocation(line: 42, column: 8, scope: !88)
!114 = !DILocation(line: 42, column: 14, scope: !88)
!115 = !DILocation(line: 43, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 43, column: 5)
!117 = distinct !DILexicalBlock(scope: !88, file: !2, line: 42, column: 27)
!118 = !{!119, !120, i64 0}
!119 = !{!"gsl_sf_result_struct", !120, i64 0, !120, i64 8}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!119, !120, i64 8}
!124 = !DILocation(line: 43, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !2, line: 43, column: 5)
!126 = !DILocation(line: 45, column: 12, scope: !87)
!127 = !DILocation(line: 45, column: 25, scope: !87)
!128 = !DILocation(line: 45, column: 21, scope: !87)
!129 = !DILocation(line: 45, column: 15, scope: !87)
!130 = !DILocation(line: 45, column: 11, scope: !88)
!131 = !DILocation(line: 46, column: 5, scope: !86)
!132 = !DILocation(line: 47, column: 21, scope: !86)
!133 = !DILocation(line: 47, column: 17, scope: !86)
!134 = !DILocation(line: 48, column: 16, scope: !86)
!135 = !DILocation(line: 49, column: 22, scope: !86)
!136 = !DILocation(line: 49, column: 26, scope: !86)
!137 = !DILocation(line: 49, column: 18, scope: !86)
!138 = !DILocation(line: 50, column: 22, scope: !86)
!139 = !DILocation(line: 50, column: 26, scope: !86)
!140 = !DILocation(line: 50, column: 13, scope: !86)
!141 = !DILocation(line: 51, column: 44, scope: !86)
!142 = !DILocation(line: 51, column: 42, scope: !86)
!143 = !DILocation(line: 51, column: 17, scope: !86)
!144 = !DILocation(line: 53, column: 3, scope: !87)
!145 = !DILocation(line: 54, column: 18, scope: !93)
!146 = !DILocation(line: 54, column: 22, scope: !93)
!147 = !DILocation(line: 54, column: 14, scope: !93)
!148 = !DILocation(line: 54, column: 29, scope: !93)
!149 = !DILocation(line: 54, column: 11, scope: !87)
!150 = !DILocation(line: 55, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !93, file: !2, line: 54, column: 54)
!152 = !DILocation(line: 55, column: 5, scope: !151)
!153 = !DILocation(line: 58, column: 22, scope: !92)
!154 = !DILocation(line: 58, column: 13, scope: !92)
!155 = !DILocation(line: 59, column: 22, scope: !92)
!156 = !DILocation(line: 59, column: 20, scope: !92)
!157 = !DILocation(line: 60, column: 5, scope: !92)
!158 = !DILocation(line: 62, column: 5, scope: !92)
!159 = !DILocation(line: 68, column: 10, scope: !160)
!160 = distinct !DILexicalBlock(scope: !92, file: !2, line: 68, column: 8)
!161 = !DILocation(line: 68, column: 8, scope: !92)
!162 = !DILocation(line: 69, column: 18, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 68, column: 17)
!164 = !DILocation(line: 70, column: 5, scope: !163)
!165 = !DILocation(line: 72, column: 18, scope: !166)
!166 = distinct !DILexicalBlock(scope: !160, file: !2, line: 71, column: 10)
!167 = !DILocation(line: 0, scope: !160)
!168 = !DILocation(line: 76, column: 14, scope: !92)
!169 = !{!120, !120, i64 0}
!170 = !DILocation(line: 77, column: 14, scope: !92)
!171 = !DILocation(line: 79, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 79, column: 5)
!173 = distinct !DILexicalBlock(scope: !92, file: !2, line: 79, column: 5)
!174 = !DILocation(line: 79, column: 5, scope: !173)
!175 = !DILocation(line: 82, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !2, line: 79, column: 24)
!177 = !DILocation(line: 82, column: 23, scope: !176)
!178 = !DILocation(line: 82, column: 25, scope: !176)
!179 = !DILocation(line: 82, column: 19, scope: !176)
!180 = !DILocation(line: 82, column: 28, scope: !176)
!181 = !DILocation(line: 82, column: 31, scope: !176)
!182 = !DILocation(line: 82, column: 38, scope: !176)
!183 = !DILocation(line: 79, column: 20, scope: !172)
!184 = distinct !{!184, !174, !185, !186}
!185 = !DILocation(line: 83, column: 5, scope: !173)
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 86, column: 17, scope: !92)
!188 = !DILocation(line: 89, column: 38, scope: !92)
!189 = !DILocation(line: 89, column: 49, scope: !92)
!190 = !DILocation(line: 89, column: 36, scope: !92)
!191 = !DILocation(line: 89, column: 26, scope: !92)
!192 = !DILocation(line: 89, column: 22, scope: !92)
!193 = !DILocation(line: 89, column: 17, scope: !92)
!194 = !DILocation(line: 90, column: 41, scope: !92)
!195 = !DILocation(line: 90, column: 44, scope: !92)
!196 = !DILocation(line: 90, column: 35, scope: !92)
!197 = !DILocation(line: 90, column: 53, scope: !92)
!198 = !DILocation(line: 90, column: 51, scope: !92)
!199 = !DILocation(line: 90, column: 13, scope: !92)
!200 = !DILocation(line: 90, column: 17, scope: !92)
!201 = !DILocation(line: 92, column: 12, scope: !92)
!202 = !DILocation(line: 93, column: 3, scope: !93)
!203 = !DILocation(line: 0, scope: !88)
!204 = !DILocation(line: 94, column: 1, scope: !70)
!205 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208, !208, !23, !23}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!210 = !DISubprogram(name: "exp", scope: !211, file: !211, line: 95, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!212 = !DISubroutineType(types: !213)
!213 = !{!73, !73}
!214 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !215, file: !215, line: 32, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!216 = !DISubroutineType(types: !217)
!217 = !{!23, !218, !218, !219, !219, !218, !74}
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!220 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !215, file: !215, line: 48, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!23, !218, !218, !74}
!223 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !224, file: !224, line: 34, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!225 = !DISubroutineType(types: !226)
!226 = !{!23, !218, !218, !227, !227, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!228 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !215, file: !215, line: 81, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !215, file: !215, line: 62, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!23, !218, !218, !227}
!232 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_e", scope: !2, file: !2, line: 98, type: !71, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !233)
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DILocalVariable(name: "nu", arg: 1, scope: !232, file: !2, line: 98, type: !73)
!235 = !DILocalVariable(name: "x", arg: 2, scope: !232, file: !2, line: 98, type: !73)
!236 = !DILocalVariable(name: "result", arg: 3, scope: !232, file: !2, line: 98, type: !74)
!237 = !DILocalVariable(name: "b", scope: !232, file: !2, line: 100, type: !75)
!238 = !DILocalVariable(name: "stat_I", scope: !232, file: !2, line: 101, type: !23)
!239 = !DILocalVariable(name: "stat_e", scope: !232, file: !2, line: 102, type: !23)
!240 = distinct !DIAssignID()
!241 = !DILocation(line: 0, scope: !232)
!242 = !DILocation(line: 100, column: 3, scope: !232)
!243 = !DILocation(line: 101, column: 16, scope: !232)
!244 = !DILocation(line: 102, column: 47, scope: !232)
!245 = !DILocation(line: 102, column: 41, scope: !232)
!246 = !DILocation(line: 103, column: 43, scope: !232)
!247 = !DILocation(line: 103, column: 50, scope: !232)
!248 = !DILocation(line: 102, column: 16, scope: !232)
!249 = !DILocation(line: 105, column: 10, scope: !232)
!250 = !DILocation(line: 106, column: 1, scope: !232)
!251 = !DILocation(line: 105, column: 3, scope: !232)
!252 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !253, file: !253, line: 122, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!254 = !DISubroutineType(types: !255)
!255 = !{!23, !218, !218, !218, !218, !74}
!256 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled", scope: !2, file: !2, line: 113, type: !257, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!73, !73, !73}
!259 = !{!260, !261, !262, !263}
!260 = !DILocalVariable(name: "nu", arg: 1, scope: !256, file: !2, line: 113, type: !73)
!261 = !DILocalVariable(name: "x", arg: 2, scope: !256, file: !2, line: 113, type: !73)
!262 = !DILocalVariable(name: "result", scope: !256, file: !2, line: 115, type: !75)
!263 = !DILocalVariable(name: "status", scope: !256, file: !2, line: 115, type: !23)
!264 = distinct !DIAssignID()
!265 = !DILocation(line: 0, scope: !256)
!266 = !DILocation(line: 115, column: 3, scope: !256)
!267 = !DILocation(line: 115, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !256, file: !2, line: 115, column: 3)
!269 = !DILocation(line: 115, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 115, column: 3)
!271 = distinct !DILexicalBlock(scope: !268, file: !2, line: 115, column: 3)
!272 = !DILocation(line: 116, column: 1, scope: !256)
!273 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu", scope: !2, file: !2, line: 119, type: !257, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !274)
!274 = !{!275, !276, !277, !278}
!275 = !DILocalVariable(name: "nu", arg: 1, scope: !273, file: !2, line: 119, type: !73)
!276 = !DILocalVariable(name: "x", arg: 2, scope: !273, file: !2, line: 119, type: !73)
!277 = !DILocalVariable(name: "result", scope: !273, file: !2, line: 121, type: !75)
!278 = !DILocalVariable(name: "status", scope: !273, file: !2, line: 121, type: !23)
!279 = distinct !DIAssignID()
!280 = distinct !DIAssignID()
!281 = !DILocation(line: 0, scope: !273)
!282 = !DILocation(line: 121, column: 3, scope: !273)
!283 = !DILocation(line: 0, scope: !232, inlinedAt: !284)
!284 = distinct !DILocation(line: 121, column: 3, scope: !273)
!285 = !DILocation(line: 100, column: 3, scope: !232, inlinedAt: !284)
!286 = !DILocation(line: 101, column: 16, scope: !232, inlinedAt: !284)
!287 = !DILocation(line: 102, column: 47, scope: !232, inlinedAt: !284)
!288 = !DILocation(line: 102, column: 41, scope: !232, inlinedAt: !284)
!289 = !DILocation(line: 103, column: 43, scope: !232, inlinedAt: !284)
!290 = !DILocation(line: 103, column: 50, scope: !232, inlinedAt: !284)
!291 = !DILocation(line: 102, column: 16, scope: !232, inlinedAt: !284)
!292 = !DILocation(line: 105, column: 10, scope: !232, inlinedAt: !284)
!293 = !DILocation(line: 106, column: 1, scope: !232, inlinedAt: !284)
!294 = !DILocation(line: 121, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !273, file: !2, line: 121, column: 3)
!296 = !DILocation(line: 121, column: 3, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 121, column: 3)
!298 = distinct !DILexicalBlock(scope: !295, file: !2, line: 121, column: 3)
!299 = !DILocation(line: 122, column: 1, scope: !273)
