; ModuleID = 'sincos_pi.c'
source_filename = "sincos_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @gsl_sf_sin_pi_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !64 {
  %3 = alloca double, align 8, !DIAssignID !85
  call void @llvm.dbg.assign(metadata i1 undef, metadata !79, metadata !DIExpression(), metadata !85, metadata ptr %3, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata double %0, metadata !77, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !78, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8, !dbg !87
  store double 0.000000e+00, ptr %3, align 8, !dbg !88, !tbaa !89, !DIAssignID !93
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !79, metadata !DIExpression(), metadata !93, metadata ptr %3, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !80, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 1, metadata !83, metadata !DIExpression()), !dbg !86
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !95
  %5 = call double @modf(double noundef %0, ptr noundef nonnull %3) #8, !dbg !96
  tail call void @llvm.dbg.value(metadata double %5, metadata !80, metadata !DIExpression()), !dbg !86
  %6 = fcmp oeq double %5, 0.000000e+00, !dbg !97
  br i1 %6, label %85, label %7, !dbg !99

7:                                                ; preds = %2
  %8 = load double, ptr %3, align 8, !dbg !100
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !102
  %10 = fcmp ult double %9, 0x4340000000000000, !dbg !103
  br i1 %10, label %11, label %85, !dbg !104

11:                                               ; preds = %7
  %12 = fcmp oge double %8, 0xC3E0000000000000, !dbg !105
  %13 = fcmp ole double %8, 0x43E0000000000000
  %14 = and i1 %12, %13, !dbg !106
  br i1 %14, label %17, label %15, !dbg !106

15:                                               ; preds = %11
  %16 = tail call double @fmod(double noundef %8, double noundef 2.000000e+00) #8, !dbg !107
  br label %17, !dbg !108

17:                                               ; preds = %11, %15
  %18 = phi double [ %16, %15 ], [ %8, %11 ], !dbg !108
  %19 = fptosi double %18 to i64, !dbg !109
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !81, metadata !DIExpression()), !dbg !86
  %20 = and i64 %19, 1, !dbg !110
  %21 = icmp eq i64 %20, 0, !dbg !110
  %22 = select i1 %21, i32 -1, i32 1, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !86
  %23 = tail call double @llvm.fabs.f64(double %5), !dbg !111
  %24 = fcmp oeq double %23, 5.000000e-01, !dbg !113
  br i1 %24, label %25, label %32, !dbg !114

25:                                               ; preds = %17
  %26 = fcmp olt double %5, 0.000000e+00, !dbg !115
  br i1 %26, label %27, label %29, !dbg !118

27:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !86
  %28 = xor i1 %21, true, !dbg !119
  br label %29, !dbg !120

29:                                               ; preds = %27, %25
  %30 = phi i1 [ %28, %27 ], [ %21, %25 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i1 %30, metadata !83, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !86
  %31 = select i1 %30, double 1.000000e+00, double -1.000000e+00, !dbg !121
  br label %83, !dbg !122

32:                                               ; preds = %17
  %33 = select i1 %21, i32 1, i32 -1, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !83, metadata !DIExpression()), !dbg !86
  %34 = fcmp ogt double %23, 5.000000e-01, !dbg !123
  br i1 %34, label %35, label %39, !dbg !125

35:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !83, metadata !DIExpression()), !dbg !86
  %36 = fcmp ogt double %5, 0.000000e+00, !dbg !126
  %37 = select i1 %36, double -1.000000e+00, double 1.000000e+00, !dbg !128
  %38 = fadd double %5, %37, !dbg !128
  tail call void @llvm.dbg.value(metadata double %38, metadata !80, metadata !DIExpression()), !dbg !86
  br label %39, !dbg !129

39:                                               ; preds = %35, %32
  %40 = phi double [ %38, %35 ], [ %5, %32 ], !dbg !86
  %41 = phi i32 [ %22, %35 ], [ %33, %32 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !83, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata double %40, metadata !80, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  %42 = fcmp ogt double %40, 2.500000e-01, !dbg !130
  br i1 %42, label %43, label %71, !dbg !132

43:                                               ; preds = %39
  %44 = fadd double %40, -5.000000e-01, !dbg !133
  call void @llvm.dbg.value(metadata double %44, metadata !135, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr %1, metadata !139, metadata !DIExpression()), !dbg !144
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !146
  %46 = fmul double %45, 2.000000e+01, !dbg !147
  %47 = fcmp olt double %46, 1.000000e+00, !dbg !148
  %48 = fmul double %44, 0x400921FB54442D18, !dbg !149
  br i1 %47, label %49, label %65, !dbg !150

49:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double %48, metadata !140, metadata !DIExpression()), !dbg !151
  %50 = fmul double %48, %48, !dbg !152
  call void @llvm.dbg.value(metadata double %50, metadata !143, metadata !DIExpression()), !dbg !151
  %51 = fmul double %50, 5.000000e-01, !dbg !153
  %52 = fdiv double %50, 9.000000e+01, !dbg !154
  %53 = fsub double 1.000000e+00, %52, !dbg !155
  %54 = fmul double %50, %53, !dbg !156
  %55 = fdiv double %54, 5.600000e+01, !dbg !157
  %56 = fsub double 1.000000e+00, %55, !dbg !158
  %57 = fmul double %50, %56, !dbg !159
  %58 = fdiv double %57, 3.000000e+01, !dbg !160
  %59 = fsub double 1.000000e+00, %58, !dbg !161
  %60 = fmul double %50, %59, !dbg !162
  %61 = fdiv double %60, 1.200000e+01, !dbg !163
  %62 = fsub double 1.000000e+00, %61, !dbg !164
  %63 = fmul double %51, %62, !dbg !165
  %64 = fsub double 1.000000e+00, %63, !dbg !166
  br label %67, !dbg !167

65:                                               ; preds = %43
  %66 = tail call double @cos(double noundef %48) #8, !dbg !168
  br label %67

67:                                               ; preds = %49, %65
  %68 = phi double [ %66, %65 ], [ %64, %49 ], !dbg !149
  store double %68, ptr %1, align 8, !dbg !149, !tbaa !170
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !172
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !173
  store double %70, ptr %4, align 8, !dbg !174, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  br label %77, !dbg !176

71:                                               ; preds = %39
  %72 = fcmp olt double %40, -2.500000e-01, !dbg !177
  br i1 %72, label %73, label %76, !dbg !179

73:                                               ; preds = %71
  %74 = fadd double %40, 5.000000e-01, !dbg !180
  tail call fastcc void @cos_pi_taylor(double noundef %74, ptr noundef nonnull %1), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  %75 = sub nsw i32 0, %41, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !83, metadata !DIExpression()), !dbg !86
  br label %77, !dbg !184

76:                                               ; preds = %71
  tail call fastcc void @sin_pi_taylor(double noundef %40, ptr noundef nonnull %1), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  br label %77

77:                                               ; preds = %73, %76, %67
  %78 = phi i32 [ %41, %67 ], [ %75, %73 ], [ %41, %76 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !83, metadata !DIExpression()), !dbg !86
  %79 = icmp eq i32 %78, 1, !dbg !187
  br i1 %79, label %85, label %80, !dbg !189

80:                                               ; preds = %77
  %81 = load double, ptr %1, align 8, !dbg !190, !tbaa !170
  %82 = fneg double %81, !dbg !191
  br label %83, !dbg !192

83:                                               ; preds = %29, %80
  %84 = phi double [ %82, %80 ], [ %31, %29 ]
  store double %84, ptr %1, align 8, !dbg !86, !tbaa !170
  br label %85, !dbg !193

85:                                               ; preds = %83, %77, %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8, !dbg !193
  ret i32 0, !dbg !193
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare !dbg !194 double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !199 double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @cos_pi_taylor(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !dbg !136 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !135, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !139, metadata !DIExpression()), !dbg !202
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !203
  %4 = fmul double %3, 2.000000e+01, !dbg !204
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !205
  %6 = fmul double %0, 0x400921FB54442D18, !dbg !206
  br i1 %5, label %7, label %23, !dbg !207

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %6, metadata !140, metadata !DIExpression()), !dbg !208
  %8 = fmul double %6, %6, !dbg !209
  tail call void @llvm.dbg.value(metadata double %8, metadata !143, metadata !DIExpression()), !dbg !208
  %9 = fmul double %8, 5.000000e-01, !dbg !210
  %10 = fdiv double %8, 9.000000e+01, !dbg !211
  %11 = fsub double 1.000000e+00, %10, !dbg !212
  %12 = fmul double %8, %11, !dbg !213
  %13 = fdiv double %12, 5.600000e+01, !dbg !214
  %14 = fsub double 1.000000e+00, %13, !dbg !215
  %15 = fmul double %8, %14, !dbg !216
  %16 = fdiv double %15, 3.000000e+01, !dbg !217
  %17 = fsub double 1.000000e+00, %16, !dbg !218
  %18 = fmul double %8, %17, !dbg !219
  %19 = fdiv double %18, 1.200000e+01, !dbg !220
  %20 = fsub double 1.000000e+00, %19, !dbg !221
  %21 = fmul double %9, %20, !dbg !222
  %22 = fsub double 1.000000e+00, %21, !dbg !223
  br label %25, !dbg !224

23:                                               ; preds = %2
  %24 = tail call double @cos(double noundef %6) #8, !dbg !225
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi double [ %24, %23 ], [ %22, %7 ], !dbg !206
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !226
  store double %26, ptr %1, align 8, !dbg !206, !tbaa !170
  %28 = tail call double @llvm.fabs.f64(double %26), !dbg !227
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !228
  store double %29, ptr %27, align 8, !dbg !229, !tbaa !175
  ret void, !dbg !230
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @sin_pi_taylor(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !dbg !231 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !233, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !234, metadata !DIExpression()), !dbg !239
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !240
  %4 = fmul double %3, 1.600000e+01, !dbg !241
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !242
  %6 = fmul double %0, 0x400921FB54442D18, !dbg !243
  br i1 %5, label %7, label %24, !dbg !244

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %6, metadata !235, metadata !DIExpression()), !dbg !245
  %8 = fmul double %6, %6, !dbg !246
  tail call void @llvm.dbg.value(metadata double %8, metadata !238, metadata !DIExpression()), !dbg !245
  %9 = fdiv double %8, 1.100000e+02, !dbg !247
  %10 = fsub double 1.000000e+00, %9, !dbg !248
  %11 = fmul double %8, %10, !dbg !249
  %12 = fdiv double %11, 7.200000e+01, !dbg !250
  %13 = fsub double 1.000000e+00, %12, !dbg !251
  %14 = fmul double %8, %13, !dbg !252
  %15 = fdiv double %14, 4.200000e+01, !dbg !253
  %16 = fsub double 1.000000e+00, %15, !dbg !254
  %17 = fmul double %8, %16, !dbg !255
  %18 = fdiv double %17, 2.000000e+01, !dbg !256
  %19 = fsub double 1.000000e+00, %18, !dbg !257
  %20 = fmul double %8, %19, !dbg !258
  %21 = fdiv double %20, 6.000000e+00, !dbg !259
  %22 = fsub double 1.000000e+00, %21, !dbg !260
  %23 = fmul double %6, %22, !dbg !261
  br label %26, !dbg !262

24:                                               ; preds = %2
  %25 = tail call double @sin(double noundef %6) #8, !dbg !263
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi double [ %25, %24 ], [ %23, %7 ], !dbg !243
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !265
  store double %27, ptr %1, align 8, !dbg !243, !tbaa !170
  %29 = tail call double @llvm.fabs.f64(double %27), !dbg !266
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !267
  store double %30, ptr %28, align 8, !dbg !268, !tbaa !175
  ret void, !dbg !269
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @gsl_sf_cos_pi_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !270 {
  %3 = alloca double, align 8, !DIAssignID !279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !274, metadata !DIExpression(), metadata !279, metadata ptr %3, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %0, metadata !272, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !273, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8, !dbg !281
  store double 0.000000e+00, ptr %3, align 8, !dbg !282, !tbaa !89, !DIAssignID !283
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !274, metadata !DIExpression(), metadata !283, metadata ptr %3, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !275, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 1, metadata !277, metadata !DIExpression()), !dbg !280
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !285
  %5 = call double @modf(double noundef %0, ptr noundef nonnull %3) #8, !dbg !286
  tail call void @llvm.dbg.value(metadata double %5, metadata !275, metadata !DIExpression()), !dbg !280
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !287
  %7 = fcmp oeq double %6, 5.000000e-01, !dbg !289
  br i1 %7, label %81, label %8, !dbg !290

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8, !dbg !291
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !293
  %11 = fcmp ult double %10, 0x4340000000000000, !dbg !294
  br i1 %11, label %12, label %79, !dbg !295

12:                                               ; preds = %8
  %13 = fcmp oge double %9, 0xC3E0000000000000, !dbg !296
  %14 = fcmp ole double %9, 0x43E0000000000000
  %15 = and i1 %13, %14, !dbg !297
  br i1 %15, label %18, label %16, !dbg !297

16:                                               ; preds = %12
  %17 = tail call double @fmod(double noundef %9, double noundef 2.000000e+00) #8, !dbg !298
  br label %18, !dbg !299

18:                                               ; preds = %12, %16
  %19 = phi double [ %17, %16 ], [ %9, %12 ], !dbg !299
  %20 = fptosi double %19 to i64, !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !276, metadata !DIExpression()), !dbg !280
  %21 = and i64 %20, 1, !dbg !301
  %22 = icmp eq i64 %21, 0, !dbg !301
  %23 = select i1 %22, i32 -1, i32 1, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !277, metadata !DIExpression()), !dbg !280
  %24 = fcmp oeq double %5, 0.000000e+00, !dbg !302
  br i1 %24, label %25, label %27, !dbg !304

25:                                               ; preds = %18
  %26 = select i1 %22, double 1.000000e+00, double -1.000000e+00, !dbg !305
  br label %79, !dbg !307

27:                                               ; preds = %18
  %28 = select i1 %22, i32 1, i32 -1, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !277, metadata !DIExpression()), !dbg !280
  %29 = fcmp ogt double %6, 5.000000e-01, !dbg !308
  br i1 %29, label %30, label %34, !dbg !310

30:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !277, metadata !DIExpression()), !dbg !280
  %31 = fcmp ogt double %5, 0.000000e+00, !dbg !311
  %32 = select i1 %31, double -1.000000e+00, double 1.000000e+00, !dbg !313
  %33 = fadd double %5, %32, !dbg !313
  tail call void @llvm.dbg.value(metadata double %33, metadata !275, metadata !DIExpression()), !dbg !280
  br label %34, !dbg !314

34:                                               ; preds = %30, %27
  %35 = phi double [ %33, %30 ], [ %5, %27 ], !dbg !280
  %36 = phi i32 [ %23, %30 ], [ %28, %27 ], !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !277, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %35, metadata !275, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  %37 = fcmp ogt double %35, 2.500000e-01, !dbg !315
  br i1 %37, label %38, label %68, !dbg !317

38:                                               ; preds = %34
  %39 = fadd double %35, -5.000000e-01, !dbg !318
  call void @llvm.dbg.value(metadata double %39, metadata !233, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata ptr %1, metadata !234, metadata !DIExpression()), !dbg !320
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !322
  %41 = fmul double %40, 1.600000e+01, !dbg !323
  %42 = fcmp olt double %41, 1.000000e+00, !dbg !324
  %43 = fmul double %39, 0x400921FB54442D18, !dbg !325
  br i1 %42, label %44, label %61, !dbg !326

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata double %43, metadata !235, metadata !DIExpression()), !dbg !327
  %45 = fmul double %43, %43, !dbg !328
  call void @llvm.dbg.value(metadata double %45, metadata !238, metadata !DIExpression()), !dbg !327
  %46 = fdiv double %45, 1.100000e+02, !dbg !329
  %47 = fsub double 1.000000e+00, %46, !dbg !330
  %48 = fmul double %45, %47, !dbg !331
  %49 = fdiv double %48, 7.200000e+01, !dbg !332
  %50 = fsub double 1.000000e+00, %49, !dbg !333
  %51 = fmul double %45, %50, !dbg !334
  %52 = fdiv double %51, 4.200000e+01, !dbg !335
  %53 = fsub double 1.000000e+00, %52, !dbg !336
  %54 = fmul double %45, %53, !dbg !337
  %55 = fdiv double %54, 2.000000e+01, !dbg !338
  %56 = fsub double 1.000000e+00, %55, !dbg !339
  %57 = fmul double %45, %56, !dbg !340
  %58 = fdiv double %57, 6.000000e+00, !dbg !341
  %59 = fsub double 1.000000e+00, %58, !dbg !342
  %60 = fmul double %43, %59, !dbg !343
  br label %63, !dbg !344

61:                                               ; preds = %38
  %62 = tail call double @sin(double noundef %43) #8, !dbg !345
  br label %63

63:                                               ; preds = %44, %61
  %64 = phi double [ %62, %61 ], [ %60, %44 ], !dbg !325
  store double %64, ptr %1, align 8, !dbg !325, !tbaa !170
  %65 = tail call double @llvm.fabs.f64(double %64), !dbg !346
  %66 = fmul double %65, 0x3CB0000000000000, !dbg !347
  store double %66, ptr %4, align 8, !dbg !348, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  %67 = sub nsw i32 0, %36, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !277, metadata !DIExpression()), !dbg !280
  br label %73, !dbg !350

68:                                               ; preds = %34
  %69 = fcmp olt double %35, -2.500000e-01, !dbg !351
  br i1 %69, label %70, label %72, !dbg !353

70:                                               ; preds = %68
  %71 = fadd double %35, 5.000000e-01, !dbg !354
  tail call fastcc void @sin_pi_taylor(double noundef %71, ptr noundef nonnull %1), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  br label %73, !dbg !357

72:                                               ; preds = %68
  tail call fastcc void @cos_pi_taylor(double noundef %35, ptr noundef nonnull %1), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  br label %73

73:                                               ; preds = %70, %72, %63
  %74 = phi i32 [ %67, %63 ], [ %36, %70 ], [ %36, %72 ], !dbg !280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !277, metadata !DIExpression()), !dbg !280
  %75 = icmp eq i32 %74, 1, !dbg !360
  br i1 %75, label %81, label %76, !dbg !362

76:                                               ; preds = %73
  %77 = load double, ptr %1, align 8, !dbg !363, !tbaa !170
  %78 = fneg double %77, !dbg !364
  br label %79, !dbg !365

79:                                               ; preds = %8, %25, %76
  %80 = phi double [ %78, %76 ], [ %26, %25 ], [ 1.000000e+00, %8 ]
  store double %80, ptr %1, align 8, !dbg !280, !tbaa !170
  br label %81, !dbg !366

81:                                               ; preds = %79, %73, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8, !dbg !366
  ret i32 0, !dbg !366
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_sin_pi(double noundef %0) local_unnamed_addr #5 !dbg !367 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !372, metadata !DIExpression(), metadata !374, metadata ptr %2, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %0, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !376
  %3 = call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2), !dbg !376
  tail call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !375
  %4 = load double, ptr %2, align 8, !dbg !376, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !377
  ret double %4, !dbg !377
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_cos_pi(double noundef %0) local_unnamed_addr #5 !dbg !378 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !383
  call void @llvm.dbg.assign(metadata i1 undef, metadata !381, metadata !DIExpression(), metadata !383, metadata ptr %2, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %0, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !385
  %3 = call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !384
  %4 = load double, ptr %2, align 8, !dbg !385, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !386
  ret double %4, !dbg !386
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !387 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !390 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sincos_pi.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fef33db2bd59acae1a110d94a77aa431")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!7 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!8 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!9 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!10 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!11 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!12 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!13 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!14 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!15 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!16 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!17 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!18 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!19 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!20 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!21 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!22 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!23 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!24 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!25 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!26 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!27 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!28 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!29 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!30 = !DIEnumerator(name: "GSL_ESING", value: 21)
!31 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!32 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!33 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!34 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!35 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!36 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!37 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!38 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!39 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!40 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!41 = !DIEnumerator(name: "GSL_EOF", value: 32)
!42 = !{!43, !49, !54}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !1, line: 235, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 224, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 28)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !1, line: 235, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 96, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 12)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !1, line: 241, type: !45, isLocal: true, isDefinition: true)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 8, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!63 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!64 = distinct !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !1, file: !1, line: 142, type: !65, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!65 = !DISubroutineType(types: !66)
!66 = !{!5, !67, !69}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !71, line: 37, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !71, line: 38, baseType: !68, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !72, file: !71, line: 39, baseType: !68, size: 64, offset: 64)
!76 = !{!77, !78, !79, !80, !81, !83, !84}
!77 = !DILocalVariable(name: "x", arg: 1, scope: !64, file: !1, line: 142, type: !67)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !64, file: !1, line: 142, type: !69)
!79 = !DILocalVariable(name: "intx", scope: !64, file: !1, line: 144, type: !68)
!80 = !DILocalVariable(name: "fracx", scope: !64, file: !1, line: 144, type: !68)
!81 = !DILocalVariable(name: "q", scope: !64, file: !1, line: 145, type: !82)
!82 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "sign", scope: !64, file: !1, line: 146, type: !5)
!84 = !DILocalVariable(name: "status", scope: !64, file: !1, line: 146, type: !5)
!85 = distinct !DIAssignID()
!86 = !DILocation(line: 0, scope: !64)
!87 = !DILocation(line: 144, column: 3, scope: !64)
!88 = !DILocation(line: 144, column: 10, scope: !64)
!89 = !{!90, !90, i64 0}
!90 = !{!"double", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = distinct !DIAssignID()
!94 = !DILocation(line: 149, column: 11, scope: !64)
!95 = !DILocation(line: 149, column: 15, scope: !64)
!96 = !DILocation(line: 150, column: 11, scope: !64)
!97 = !DILocation(line: 151, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !64, file: !1, line: 151, column: 7)
!99 = !DILocation(line: 151, column: 7, scope: !64)
!100 = !DILocation(line: 152, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !64, file: !1, line: 152, column: 6)
!102 = !DILocation(line: 152, column: 6, scope: !101)
!103 = !DILocation(line: 152, column: 17, scope: !101)
!104 = !DILocation(line: 152, column: 6, scope: !64)
!105 = !DILocation(line: 154, column: 17, scope: !64)
!106 = !DILocation(line: 154, column: 30, scope: !64)
!107 = !DILocation(line: 154, column: 63, scope: !64)
!108 = !DILocation(line: 154, column: 9, scope: !64)
!109 = !DILocation(line: 154, column: 7, scope: !64)
!110 = !DILocation(line: 155, column: 12, scope: !64)
!111 = !DILocation(line: 158, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !64, file: !1, line: 158, column: 7)
!113 = !DILocation(line: 158, column: 19, scope: !112)
!114 = !DILocation(line: 158, column: 7, scope: !64)
!115 = !DILocation(line: 159, column: 15, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 159, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 158, column: 27)
!118 = !DILocation(line: 159, column: 9, scope: !117)
!119 = !DILocation(line: 160, column: 26, scope: !117)
!120 = !DILocation(line: 159, column: 22, scope: !116)
!121 = !DILocation(line: 160, column: 21, scope: !117)
!122 = !DILocation(line: 161, column: 5, scope: !117)
!123 = !DILocation(line: 163, column: 19, scope: !124)
!124 = distinct !DILexicalBlock(scope: !64, file: !1, line: 163, column: 7)
!125 = !DILocation(line: 163, column: 7, scope: !64)
!126 = !DILocation(line: 165, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 163, column: 26)
!128 = !DILocation(line: 165, column: 15, scope: !127)
!129 = !DILocation(line: 166, column: 3, scope: !127)
!130 = !DILocation(line: 169, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !64, file: !1, line: 169, column: 7)
!132 = !DILocation(line: 169, column: 7, scope: !64)
!133 = !DILocation(line: 170, column: 34, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 169, column: 21)
!135 = !DILocalVariable(name: "x", arg: 1, scope: !136, file: !1, line: 123, type: !67)
!136 = distinct !DISubprogram(name: "cos_pi_taylor", scope: !1, file: !1, line: 123, type: !137, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!137 = !DISubroutineType(cc: DW_CC_nocall, types: !66)
!138 = !{!135, !139, !140, !143}
!139 = !DILocalVariable(name: "result", arg: 2, scope: !136, file: !1, line: 123, type: !69)
!140 = !DILocalVariable(name: "y", scope: !141, file: !1, line: 128, type: !67)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 127, column: 27)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 127, column: 7)
!143 = !DILocalVariable(name: "a", scope: !141, file: !1, line: 129, type: !67)
!144 = !DILocation(line: 0, scope: !136, inlinedAt: !145)
!145 = distinct !DILocation(line: 170, column: 14, scope: !134)
!146 = !DILocation(line: 127, column: 12, scope: !142, inlinedAt: !145)
!147 = !DILocation(line: 127, column: 11, scope: !142, inlinedAt: !145)
!148 = !DILocation(line: 127, column: 20, scope: !142, inlinedAt: !145)
!149 = !DILocation(line: 0, scope: !142, inlinedAt: !145)
!150 = !DILocation(line: 127, column: 7, scope: !136, inlinedAt: !145)
!151 = !DILocation(line: 0, scope: !141, inlinedAt: !145)
!152 = !DILocation(line: 129, column: 23, scope: !141, inlinedAt: !145)
!153 = !DILocation(line: 130, column: 28, scope: !141, inlinedAt: !145)
!154 = !DILocation(line: 130, column: 66, scope: !141, inlinedAt: !145)
!155 = !DILocation(line: 130, column: 63, scope: !141, inlinedAt: !145)
!156 = !DILocation(line: 130, column: 57, scope: !141, inlinedAt: !145)
!157 = !DILocation(line: 130, column: 72, scope: !141, inlinedAt: !145)
!158 = !DILocation(line: 130, column: 54, scope: !141, inlinedAt: !145)
!159 = !DILocation(line: 130, column: 48, scope: !141, inlinedAt: !145)
!160 = !DILocation(line: 130, column: 78, scope: !141, inlinedAt: !145)
!161 = !DILocation(line: 130, column: 45, scope: !141, inlinedAt: !145)
!162 = !DILocation(line: 130, column: 39, scope: !141, inlinedAt: !145)
!163 = !DILocation(line: 130, column: 84, scope: !141, inlinedAt: !145)
!164 = !DILocation(line: 130, column: 36, scope: !141, inlinedAt: !145)
!165 = !DILocation(line: 130, column: 30, scope: !141, inlinedAt: !145)
!166 = !DILocation(line: 130, column: 23, scope: !141, inlinedAt: !145)
!167 = !DILocation(line: 131, column: 3, scope: !141, inlinedAt: !145)
!168 = !DILocation(line: 133, column: 19, scope: !169, inlinedAt: !145)
!169 = distinct !DILexicalBlock(scope: !142, file: !1, line: 132, column: 8)
!170 = !{!171, !90, i64 0}
!171 = !{!"gsl_sf_result_struct", !90, i64 0, !90, i64 8}
!172 = !DILocation(line: 136, column: 33, scope: !136, inlinedAt: !145)
!173 = !DILocation(line: 136, column: 32, scope: !136, inlinedAt: !145)
!174 = !DILocation(line: 136, column: 15, scope: !136, inlinedAt: !145)
!175 = !{!171, !90, i64 8}
!176 = !DILocation(line: 171, column: 3, scope: !134)
!177 = !DILocation(line: 172, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !131, file: !1, line: 172, column: 12)
!179 = !DILocation(line: 172, column: 12, scope: !131)
!180 = !DILocation(line: 173, column: 34, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 172, column: 27)
!182 = !DILocation(line: 173, column: 14, scope: !181)
!183 = !DILocation(line: 174, column: 12, scope: !181)
!184 = !DILocation(line: 175, column: 3, scope: !181)
!185 = !DILocation(line: 177, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !1, line: 176, column: 8)
!187 = !DILocation(line: 179, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !64, file: !1, line: 179, column: 7)
!189 = !DILocation(line: 179, column: 7, scope: !64)
!190 = !DILocation(line: 179, column: 41, scope: !188)
!191 = !DILocation(line: 179, column: 32, scope: !188)
!192 = !DILocation(line: 179, column: 18, scope: !188)
!193 = !DILocation(line: 181, column: 1, scope: !64)
!194 = !DISubprogram(name: "modf", scope: !195, file: !195, line: 110, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!196 = !DISubroutineType(types: !197)
!197 = !{!68, !68, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!199 = !DISubprogram(name: "fmod", scope: !195, file: !195, line: 168, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!68, !68, !68}
!202 = !DILocation(line: 0, scope: !136)
!203 = !DILocation(line: 127, column: 12, scope: !142)
!204 = !DILocation(line: 127, column: 11, scope: !142)
!205 = !DILocation(line: 127, column: 20, scope: !142)
!206 = !DILocation(line: 0, scope: !142)
!207 = !DILocation(line: 127, column: 7, scope: !136)
!208 = !DILocation(line: 0, scope: !141)
!209 = !DILocation(line: 129, column: 23, scope: !141)
!210 = !DILocation(line: 130, column: 28, scope: !141)
!211 = !DILocation(line: 130, column: 66, scope: !141)
!212 = !DILocation(line: 130, column: 63, scope: !141)
!213 = !DILocation(line: 130, column: 57, scope: !141)
!214 = !DILocation(line: 130, column: 72, scope: !141)
!215 = !DILocation(line: 130, column: 54, scope: !141)
!216 = !DILocation(line: 130, column: 48, scope: !141)
!217 = !DILocation(line: 130, column: 78, scope: !141)
!218 = !DILocation(line: 130, column: 45, scope: !141)
!219 = !DILocation(line: 130, column: 39, scope: !141)
!220 = !DILocation(line: 130, column: 84, scope: !141)
!221 = !DILocation(line: 130, column: 36, scope: !141)
!222 = !DILocation(line: 130, column: 30, scope: !141)
!223 = !DILocation(line: 130, column: 23, scope: !141)
!224 = !DILocation(line: 131, column: 3, scope: !141)
!225 = !DILocation(line: 133, column: 19, scope: !169)
!226 = !DILocation(line: 126, column: 11, scope: !136)
!227 = !DILocation(line: 136, column: 33, scope: !136)
!228 = !DILocation(line: 136, column: 32, scope: !136)
!229 = !DILocation(line: 136, column: 15, scope: !136)
!230 = !DILocation(line: 138, column: 3, scope: !136)
!231 = distinct !DISubprogram(name: "sin_pi_taylor", scope: !1, file: !1, line: 103, type: !137, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!232 = !{!233, !234, !235, !238}
!233 = !DILocalVariable(name: "x", arg: 1, scope: !231, file: !1, line: 103, type: !67)
!234 = !DILocalVariable(name: "result", arg: 2, scope: !231, file: !1, line: 103, type: !69)
!235 = !DILocalVariable(name: "y", scope: !236, file: !1, line: 108, type: !67)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 107, column: 27)
!237 = distinct !DILexicalBlock(scope: !231, file: !1, line: 107, column: 7)
!238 = !DILocalVariable(name: "a", scope: !236, file: !1, line: 109, type: !67)
!239 = !DILocation(line: 0, scope: !231)
!240 = !DILocation(line: 107, column: 12, scope: !237)
!241 = !DILocation(line: 107, column: 11, scope: !237)
!242 = !DILocation(line: 107, column: 20, scope: !237)
!243 = !DILocation(line: 0, scope: !237)
!244 = !DILocation(line: 107, column: 7, scope: !231)
!245 = !DILocation(line: 0, scope: !236)
!246 = !DILocation(line: 109, column: 23, scope: !236)
!247 = !DILocation(line: 110, column: 65, scope: !236)
!248 = !DILocation(line: 110, column: 62, scope: !236)
!249 = !DILocation(line: 110, column: 56, scope: !236)
!250 = !DILocation(line: 110, column: 72, scope: !236)
!251 = !DILocation(line: 110, column: 53, scope: !236)
!252 = !DILocation(line: 110, column: 47, scope: !236)
!253 = !DILocation(line: 110, column: 78, scope: !236)
!254 = !DILocation(line: 110, column: 44, scope: !236)
!255 = !DILocation(line: 110, column: 38, scope: !236)
!256 = !DILocation(line: 110, column: 84, scope: !236)
!257 = !DILocation(line: 110, column: 35, scope: !236)
!258 = !DILocation(line: 110, column: 29, scope: !236)
!259 = !DILocation(line: 110, column: 90, scope: !236)
!260 = !DILocation(line: 110, column: 26, scope: !236)
!261 = !DILocation(line: 110, column: 20, scope: !236)
!262 = !DILocation(line: 111, column: 3, scope: !236)
!263 = !DILocation(line: 113, column: 19, scope: !264)
!264 = distinct !DILexicalBlock(scope: !237, file: !1, line: 112, column: 8)
!265 = !DILocation(line: 106, column: 11, scope: !231)
!266 = !DILocation(line: 116, column: 33, scope: !231)
!267 = !DILocation(line: 116, column: 32, scope: !231)
!268 = !DILocation(line: 116, column: 15, scope: !231)
!269 = !DILocation(line: 118, column: 3, scope: !231)
!270 = distinct !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !1, file: !1, line: 184, type: !65, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278}
!272 = !DILocalVariable(name: "x", arg: 1, scope: !270, file: !1, line: 184, type: !67)
!273 = !DILocalVariable(name: "result", arg: 2, scope: !270, file: !1, line: 184, type: !69)
!274 = !DILocalVariable(name: "intx", scope: !270, file: !1, line: 186, type: !68)
!275 = !DILocalVariable(name: "fracx", scope: !270, file: !1, line: 186, type: !68)
!276 = !DILocalVariable(name: "q", scope: !270, file: !1, line: 187, type: !82)
!277 = !DILocalVariable(name: "sign", scope: !270, file: !1, line: 188, type: !5)
!278 = !DILocalVariable(name: "status", scope: !270, file: !1, line: 188, type: !5)
!279 = distinct !DIAssignID()
!280 = !DILocation(line: 0, scope: !270)
!281 = !DILocation(line: 186, column: 3, scope: !270)
!282 = !DILocation(line: 186, column: 10, scope: !270)
!283 = distinct !DIAssignID()
!284 = !DILocation(line: 191, column: 11, scope: !270)
!285 = !DILocation(line: 191, column: 15, scope: !270)
!286 = !DILocation(line: 192, column: 11, scope: !270)
!287 = !DILocation(line: 193, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !1, line: 193, column: 7)
!289 = !DILocation(line: 193, column: 19, scope: !288)
!290 = !DILocation(line: 193, column: 7, scope: !270)
!291 = !DILocation(line: 195, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !270, file: !1, line: 195, column: 6)
!293 = !DILocation(line: 195, column: 6, scope: !292)
!294 = !DILocation(line: 195, column: 17, scope: !292)
!295 = !DILocation(line: 195, column: 6, scope: !270)
!296 = !DILocation(line: 200, column: 17, scope: !270)
!297 = !DILocation(line: 200, column: 30, scope: !270)
!298 = !DILocation(line: 200, column: 63, scope: !270)
!299 = !DILocation(line: 200, column: 9, scope: !270)
!300 = !DILocation(line: 200, column: 7, scope: !270)
!301 = !DILocation(line: 201, column: 12, scope: !270)
!302 = !DILocation(line: 204, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !270, file: !1, line: 204, column: 7)
!304 = !DILocation(line: 204, column: 7, scope: !270)
!305 = !DILocation(line: 205, column: 21, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 204, column: 21)
!307 = !DILocation(line: 206, column: 5, scope: !306)
!308 = !DILocation(line: 208, column: 19, scope: !309)
!309 = distinct !DILexicalBlock(scope: !270, file: !1, line: 208, column: 7)
!310 = !DILocation(line: 208, column: 7, scope: !270)
!311 = !DILocation(line: 210, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 208, column: 26)
!313 = !DILocation(line: 210, column: 15, scope: !312)
!314 = !DILocation(line: 211, column: 3, scope: !312)
!315 = !DILocation(line: 214, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !270, file: !1, line: 214, column: 7)
!317 = !DILocation(line: 214, column: 7, scope: !270)
!318 = !DILocation(line: 215, column: 34, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !1, line: 214, column: 21)
!320 = !DILocation(line: 0, scope: !231, inlinedAt: !321)
!321 = distinct !DILocation(line: 215, column: 14, scope: !319)
!322 = !DILocation(line: 107, column: 12, scope: !237, inlinedAt: !321)
!323 = !DILocation(line: 107, column: 11, scope: !237, inlinedAt: !321)
!324 = !DILocation(line: 107, column: 20, scope: !237, inlinedAt: !321)
!325 = !DILocation(line: 0, scope: !237, inlinedAt: !321)
!326 = !DILocation(line: 107, column: 7, scope: !231, inlinedAt: !321)
!327 = !DILocation(line: 0, scope: !236, inlinedAt: !321)
!328 = !DILocation(line: 109, column: 23, scope: !236, inlinedAt: !321)
!329 = !DILocation(line: 110, column: 65, scope: !236, inlinedAt: !321)
!330 = !DILocation(line: 110, column: 62, scope: !236, inlinedAt: !321)
!331 = !DILocation(line: 110, column: 56, scope: !236, inlinedAt: !321)
!332 = !DILocation(line: 110, column: 72, scope: !236, inlinedAt: !321)
!333 = !DILocation(line: 110, column: 53, scope: !236, inlinedAt: !321)
!334 = !DILocation(line: 110, column: 47, scope: !236, inlinedAt: !321)
!335 = !DILocation(line: 110, column: 78, scope: !236, inlinedAt: !321)
!336 = !DILocation(line: 110, column: 44, scope: !236, inlinedAt: !321)
!337 = !DILocation(line: 110, column: 38, scope: !236, inlinedAt: !321)
!338 = !DILocation(line: 110, column: 84, scope: !236, inlinedAt: !321)
!339 = !DILocation(line: 110, column: 35, scope: !236, inlinedAt: !321)
!340 = !DILocation(line: 110, column: 29, scope: !236, inlinedAt: !321)
!341 = !DILocation(line: 110, column: 90, scope: !236, inlinedAt: !321)
!342 = !DILocation(line: 110, column: 26, scope: !236, inlinedAt: !321)
!343 = !DILocation(line: 110, column: 20, scope: !236, inlinedAt: !321)
!344 = !DILocation(line: 111, column: 3, scope: !236, inlinedAt: !321)
!345 = !DILocation(line: 113, column: 19, scope: !264, inlinedAt: !321)
!346 = !DILocation(line: 116, column: 33, scope: !231, inlinedAt: !321)
!347 = !DILocation(line: 116, column: 32, scope: !231, inlinedAt: !321)
!348 = !DILocation(line: 116, column: 15, scope: !231, inlinedAt: !321)
!349 = !DILocation(line: 216, column: 12, scope: !319)
!350 = !DILocation(line: 217, column: 3, scope: !319)
!351 = !DILocation(line: 218, column: 18, scope: !352)
!352 = distinct !DILexicalBlock(scope: !316, file: !1, line: 218, column: 12)
!353 = !DILocation(line: 218, column: 12, scope: !316)
!354 = !DILocation(line: 219, column: 34, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 218, column: 27)
!356 = !DILocation(line: 219, column: 14, scope: !355)
!357 = !DILocation(line: 220, column: 3, scope: !355)
!358 = !DILocation(line: 222, column: 14, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !1, line: 221, column: 8)
!360 = !DILocation(line: 224, column: 12, scope: !361)
!361 = distinct !DILexicalBlock(scope: !270, file: !1, line: 224, column: 7)
!362 = !DILocation(line: 224, column: 7, scope: !270)
!363 = !DILocation(line: 224, column: 41, scope: !361)
!364 = !DILocation(line: 224, column: 32, scope: !361)
!365 = !DILocation(line: 224, column: 18, scope: !361)
!366 = !DILocation(line: 226, column: 1, scope: !270)
!367 = distinct !DISubprogram(name: "gsl_sf_sin_pi", scope: !1, file: !1, line: 233, type: !368, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{!68, !67}
!370 = !{!371, !372, !373}
!371 = !DILocalVariable(name: "x", arg: 1, scope: !367, file: !1, line: 233, type: !67)
!372 = !DILocalVariable(name: "result", scope: !367, file: !1, line: 235, type: !70)
!373 = !DILocalVariable(name: "status", scope: !367, file: !1, line: 235, type: !5)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !367)
!376 = !DILocation(line: 235, column: 3, scope: !367)
!377 = !DILocation(line: 236, column: 1, scope: !367)
!378 = distinct !DISubprogram(name: "gsl_sf_cos_pi", scope: !1, file: !1, line: 239, type: !368, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !379)
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "x", arg: 1, scope: !378, file: !1, line: 239, type: !67)
!381 = !DILocalVariable(name: "result", scope: !378, file: !1, line: 241, type: !70)
!382 = !DILocalVariable(name: "status", scope: !378, file: !1, line: 241, type: !5)
!383 = distinct !DIAssignID()
!384 = !DILocation(line: 0, scope: !378)
!385 = !DILocation(line: 241, column: 3, scope: !378)
!386 = !DILocation(line: 242, column: 1, scope: !378)
!387 = !DISubprogram(name: "cos", scope: !195, file: !195, line: 62, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubroutineType(types: !389)
!389 = !{!68, !68}
!390 = !DISubprogram(name: "sin", scope: !195, file: !195, line: 64, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
