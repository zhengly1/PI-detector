; ModuleID = 'sincos_pi.ll'
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7, !dbg !87
  store double 0.000000e+00, ptr %3, align 8, !dbg !88, !tbaa !89, !DIAssignID !93
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !79, metadata !DIExpression(), metadata !93, metadata ptr %3, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !80, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 1, metadata !83, metadata !DIExpression()), !dbg !86
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !95
  %5 = call double @modf(double noundef %0, ptr noundef nonnull %3) #7, !dbg !96
  tail call void @llvm.dbg.value(metadata double %5, metadata !80, metadata !DIExpression()), !dbg !86
  %6 = fcmp oeq double %5, 0.000000e+00, !dbg !97
  br i1 %6, label %75, label %7, !dbg !99

7:                                                ; preds = %2
  %8 = load double, ptr %3, align 8, !dbg !100
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !102
  %10 = fcmp ult double %9, 0x4340000000000000, !dbg !103
  br i1 %10, label %11, label %75, !dbg !104

11:                                               ; preds = %7
  %12 = fcmp oge double %8, 0xC3E0000000000000, !dbg !105
  %13 = fcmp ole double %8, 0x43E0000000000000
  %14 = and i1 %12, %13, !dbg !106
  br i1 %14, label %16, label %15, !dbg !106

15:                                               ; preds = %11
  %handler_result8 = call double @callHandler(i32 30, double %8, double 2.000000e+00), !dbg !107
  br label %16, !dbg !107

16:                                               ; preds = %15, %11
  %17 = phi double [ %handler_result8, %15 ], [ %8, %11 ], !dbg !107
  %18 = fptosi double %17 to i64, !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !81, metadata !DIExpression()), !dbg !86
  %19 = and i64 %18, 1, !dbg !109
  %20 = icmp eq i64 %19, 0, !dbg !109
  %21 = select i1 %20, i32 -1, i32 1, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !86
  %22 = tail call double @llvm.fabs.f64(double %5), !dbg !110
  %23 = fcmp oeq double %22, 5.000000e-01, !dbg !112
  br i1 %23, label %24, label %31, !dbg !113

24:                                               ; preds = %16
  %25 = fcmp olt double %5, 0.000000e+00, !dbg !114
  br i1 %25, label %26, label %28, !dbg !117

26:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !86
  %27 = xor i1 %20, true, !dbg !118
  br label %28, !dbg !119

28:                                               ; preds = %26, %24
  %29 = phi i1 [ %27, %26 ], [ %20, %24 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i1 %29, metadata !83, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !86
  %30 = select i1 %29, double 1.000000e+00, double -1.000000e+00, !dbg !120
  br label %73, !dbg !121

31:                                               ; preds = %16
  %32 = select i1 %20, i32 1, i32 -1, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !83, metadata !DIExpression()), !dbg !86
  %33 = fcmp ogt double %22, 5.000000e-01, !dbg !122
  br i1 %33, label %34, label %37, !dbg !124

34:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !83, metadata !DIExpression()), !dbg !86
  %35 = fcmp ogt double %5, 0.000000e+00, !dbg !125
  %36 = select i1 %35, double -1.000000e+00, double 1.000000e+00, !dbg !127
  %handler_result = call double @fAddHandlerDouble(double %5, double %36), !dbg !128
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !80, metadata !DIExpression()), !dbg !86
  br label %37, !dbg !128

37:                                               ; preds = %34, %31
  %38 = phi double [ %handler_result, %34 ], [ %5, %31 ], !dbg !86
  %39 = phi i32 [ %21, %34 ], [ %32, %31 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !83, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata double %38, metadata !80, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  %40 = fcmp ogt double %38, 2.500000e-01, !dbg !129
  br i1 %40, label %41, label %62, !dbg !131

41:                                               ; preds = %37
  %handler_result1 = call double @fAddHandlerDouble(double %38, double -5.000000e-01), !dbg !132
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !137, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr %1, metadata !138, metadata !DIExpression()), !dbg !144
  %42 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !132
  %43 = fmul double %42, 2.000000e+01, !dbg !145
  %44 = fcmp olt double %43, 1.000000e+00, !dbg !146
  %45 = fmul double %handler_result1, 0x400921FB54442D18, !dbg !147
  br i1 %44, label %46, label %57, !dbg !148

46:                                               ; preds = %41
  call void @llvm.dbg.value(metadata double %45, metadata !139, metadata !DIExpression()), !dbg !149
  %47 = fmul double %45, %45, !dbg !150
  call void @llvm.dbg.value(metadata double %47, metadata !141, metadata !DIExpression()), !dbg !149
  %48 = fmul double %47, 5.000000e-01, !dbg !151
  %49 = fdiv double %47, 9.000000e+01, !dbg !152
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %49), !dbg !153
  %50 = fmul double %47, %handler_result2, !dbg !153
  %51 = fdiv double %50, 5.600000e+01, !dbg !154
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %51), !dbg !155
  %52 = fmul double %47, %handler_result3, !dbg !155
  %53 = fdiv double %52, 3.000000e+01, !dbg !156
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %53), !dbg !157
  %54 = fmul double %47, %handler_result4, !dbg !157
  %55 = fdiv double %54, 1.200000e+01, !dbg !158
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %55), !dbg !159
  %56 = fmul double %48, %handler_result5, !dbg !159
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %56), !dbg !160
  br label %58, !dbg !160

57:                                               ; preds = %41
  %handler_result9 = call double @callHandler(i32 2, double %45, double %45)
  br label %58

58:                                               ; preds = %57, %46
  %59 = phi double [ %handler_result9, %57 ], [ %handler_result6, %46 ], !dbg !147
  store double %59, ptr %1, align 8, !dbg !147, !tbaa !161
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !163
  %61 = fmul double %60, 0x3CB0000000000000, !dbg !164
  store double %61, ptr %4, align 8, !dbg !165, !tbaa !166
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  br label %67, !dbg !167

62:                                               ; preds = %37
  %63 = fcmp olt double %38, -2.500000e-01, !dbg !168
  br i1 %63, label %64, label %66, !dbg !170

64:                                               ; preds = %62
  %handler_result7 = call double @fAddHandlerDouble(double %38, double 5.000000e-01), !dbg !171
  tail call fastcc void @cos_pi_taylor(double noundef %handler_result7, ptr noundef nonnull %1), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  %65 = sub nsw i32 0, %39, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !83, metadata !DIExpression()), !dbg !86
  br label %67, !dbg !174

66:                                               ; preds = %62
  tail call fastcc void @sin_pi_taylor(double noundef %38, ptr noundef nonnull %1), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  br label %67

67:                                               ; preds = %66, %64, %58
  %68 = phi i32 [ %39, %58 ], [ %65, %64 ], [ %39, %66 ], !dbg !86
  tail call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !83, metadata !DIExpression()), !dbg !86
  %69 = icmp eq i32 %68, 1, !dbg !177
  br i1 %69, label %75, label %70, !dbg !179

70:                                               ; preds = %67
  %71 = load double, ptr %1, align 8, !dbg !180, !tbaa !161
  %72 = fneg double %71, !dbg !181
  br label %73, !dbg !182

73:                                               ; preds = %70, %28
  %74 = phi double [ %72, %70 ], [ %30, %28 ]
  store double %74, ptr %1, align 8, !dbg !86, !tbaa !161
  br label %75, !dbg !183

75:                                               ; preds = %73, %67, %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7, !dbg !183
  ret i32 0, !dbg !183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare !dbg !184 double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !189 double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @cos_pi_taylor(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !dbg !134 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !137, metadata !DIExpression()), !dbg !192
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !138, metadata !DIExpression()), !dbg !192
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !193
  %4 = fmul double %3, 2.000000e+01, !dbg !194
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !195
  %6 = fmul double %0, 0x400921FB54442D18, !dbg !196
  br i1 %5, label %7, label %18, !dbg !197

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %6, metadata !139, metadata !DIExpression()), !dbg !198
  %8 = fmul double %6, %6, !dbg !199
  tail call void @llvm.dbg.value(metadata double %8, metadata !141, metadata !DIExpression()), !dbg !198
  %9 = fmul double %8, 5.000000e-01, !dbg !200
  %10 = fdiv double %8, 9.000000e+01, !dbg !201
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !202
  %11 = fmul double %8, %handler_result, !dbg !202
  %12 = fdiv double %11, 5.600000e+01, !dbg !203
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %12), !dbg !204
  %13 = fmul double %8, %handler_result1, !dbg !204
  %14 = fdiv double %13, 3.000000e+01, !dbg !205
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %14), !dbg !206
  %15 = fmul double %8, %handler_result2, !dbg !206
  %16 = fdiv double %15, 1.200000e+01, !dbg !207
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !208
  %17 = fmul double %9, %handler_result3, !dbg !208
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %17), !dbg !209
  br label %19, !dbg !209

18:                                               ; preds = %2
  %handler_result5 = call double @callHandler(i32 2, double %6, double %6)
  br label %19

19:                                               ; preds = %18, %7
  %20 = phi double [ %handler_result5, %18 ], [ %handler_result4, %7 ], !dbg !196
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !210
  store double %20, ptr %1, align 8, !dbg !196, !tbaa !161
  %22 = tail call double @llvm.fabs.f64(double %20), !dbg !211
  %23 = fmul double %22, 0x3CB0000000000000, !dbg !212
  store double %23, ptr %21, align 8, !dbg !213, !tbaa !166
  ret void, !dbg !214
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @sin_pi_taylor(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !dbg !215 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !217, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !218, metadata !DIExpression()), !dbg !223
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !224
  %4 = fmul double %3, 1.600000e+01, !dbg !225
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !226
  %6 = fmul double %0, 0x400921FB54442D18, !dbg !227
  br i1 %5, label %7, label %19, !dbg !228

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %6, metadata !219, metadata !DIExpression()), !dbg !229
  %8 = fmul double %6, %6, !dbg !230
  tail call void @llvm.dbg.value(metadata double %8, metadata !222, metadata !DIExpression()), !dbg !229
  %9 = fdiv double %8, 1.100000e+02, !dbg !231
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %9), !dbg !232
  %10 = fmul double %8, %handler_result, !dbg !232
  %11 = fdiv double %10, 7.200000e+01, !dbg !233
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !234
  %12 = fmul double %8, %handler_result1, !dbg !234
  %13 = fdiv double %12, 4.200000e+01, !dbg !235
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !236
  %14 = fmul double %8, %handler_result2, !dbg !236
  %15 = fdiv double %14, 2.000000e+01, !dbg !237
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %15), !dbg !238
  %16 = fmul double %8, %handler_result3, !dbg !238
  %17 = fdiv double %16, 6.000000e+00, !dbg !239
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %17), !dbg !240
  %18 = fmul double %6, %handler_result4, !dbg !240
  br label %20, !dbg !241

19:                                               ; preds = %2
  %handler_result5 = call double @callHandler(i32 1, double %6, double %6)
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi double [ %handler_result5, %19 ], [ %18, %7 ], !dbg !227
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !242
  store double %21, ptr %1, align 8, !dbg !227, !tbaa !161
  %23 = tail call double @llvm.fabs.f64(double %21), !dbg !243
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !244
  store double %24, ptr %22, align 8, !dbg !245, !tbaa !166
  ret void, !dbg !246
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @gsl_sf_cos_pi_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !247 {
  %3 = alloca double, align 8, !DIAssignID !256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !251, metadata !DIExpression(), metadata !256, metadata ptr %3, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double %0, metadata !249, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !250, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7, !dbg !258
  store double 0.000000e+00, ptr %3, align 8, !dbg !259, !tbaa !89, !DIAssignID !260
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !251, metadata !DIExpression(), metadata !260, metadata ptr %3, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !252, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 1, metadata !254, metadata !DIExpression()), !dbg !257
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !261
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !262
  %5 = call double @modf(double noundef %0, ptr noundef nonnull %3) #7, !dbg !263
  tail call void @llvm.dbg.value(metadata double %5, metadata !252, metadata !DIExpression()), !dbg !257
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !264
  %7 = fcmp oeq double %6, 5.000000e-01, !dbg !266
  br i1 %7, label %71, label %8, !dbg !267

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8, !dbg !268
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !270
  %11 = fcmp ult double %10, 0x4340000000000000, !dbg !271
  br i1 %11, label %12, label %69, !dbg !272

12:                                               ; preds = %8
  %13 = fcmp oge double %9, 0xC3E0000000000000, !dbg !273
  %14 = fcmp ole double %9, 0x43E0000000000000
  %15 = and i1 %13, %14, !dbg !274
  br i1 %15, label %17, label %16, !dbg !274

16:                                               ; preds = %12
  %handler_result8 = call double @callHandler(i32 30, double %9, double 2.000000e+00), !dbg !275
  br label %17, !dbg !275

17:                                               ; preds = %16, %12
  %18 = phi double [ %handler_result8, %16 ], [ %9, %12 ], !dbg !275
  %19 = fptosi double %18 to i64, !dbg !276
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !253, metadata !DIExpression()), !dbg !257
  %20 = and i64 %19, 1, !dbg !277
  %21 = icmp eq i64 %20, 0, !dbg !277
  %22 = select i1 %21, i32 -1, i32 1, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !254, metadata !DIExpression()), !dbg !257
  %23 = fcmp oeq double %5, 0.000000e+00, !dbg !278
  br i1 %23, label %24, label %26, !dbg !280

24:                                               ; preds = %17
  %25 = select i1 %21, double 1.000000e+00, double -1.000000e+00, !dbg !281
  br label %69, !dbg !283

26:                                               ; preds = %17
  %27 = select i1 %21, i32 1, i32 -1, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !254, metadata !DIExpression()), !dbg !257
  %28 = fcmp ogt double %6, 5.000000e-01, !dbg !284
  br i1 %28, label %29, label %32, !dbg !286

29:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !254, metadata !DIExpression()), !dbg !257
  %30 = fcmp ogt double %5, 0.000000e+00, !dbg !287
  %31 = select i1 %30, double -1.000000e+00, double 1.000000e+00, !dbg !289
  %handler_result = call double @fAddHandlerDouble(double %5, double %31), !dbg !290
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !252, metadata !DIExpression()), !dbg !257
  br label %32, !dbg !290

32:                                               ; preds = %29, %26
  %33 = phi double [ %handler_result, %29 ], [ %5, %26 ], !dbg !257
  %34 = phi i32 [ %22, %29 ], [ %27, %26 ], !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !254, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double %33, metadata !252, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !257
  %35 = fcmp ogt double %33, 2.500000e-01, !dbg !291
  br i1 %35, label %36, label %59, !dbg !293

36:                                               ; preds = %32
  %handler_result1 = call double @fAddHandlerDouble(double %33, double -5.000000e-01), !dbg !294
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !217, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata ptr %1, metadata !218, metadata !DIExpression()), !dbg !297
  %37 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !294
  %38 = fmul double %37, 1.600000e+01, !dbg !298
  %39 = fcmp olt double %38, 1.000000e+00, !dbg !299
  %40 = fmul double %handler_result1, 0x400921FB54442D18, !dbg !300
  br i1 %39, label %41, label %53, !dbg !301

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata double %40, metadata !219, metadata !DIExpression()), !dbg !302
  %42 = fmul double %40, %40, !dbg !303
  call void @llvm.dbg.value(metadata double %42, metadata !222, metadata !DIExpression()), !dbg !302
  %43 = fdiv double %42, 1.100000e+02, !dbg !304
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %43), !dbg !305
  %44 = fmul double %42, %handler_result2, !dbg !305
  %45 = fdiv double %44, 7.200000e+01, !dbg !306
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %45), !dbg !307
  %46 = fmul double %42, %handler_result3, !dbg !307
  %47 = fdiv double %46, 4.200000e+01, !dbg !308
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %47), !dbg !309
  %48 = fmul double %42, %handler_result4, !dbg !309
  %49 = fdiv double %48, 2.000000e+01, !dbg !310
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %49), !dbg !311
  %50 = fmul double %42, %handler_result5, !dbg !311
  %51 = fdiv double %50, 6.000000e+00, !dbg !312
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %51), !dbg !313
  %52 = fmul double %40, %handler_result6, !dbg !313
  br label %54, !dbg !314

53:                                               ; preds = %36
  %handler_result9 = call double @callHandler(i32 1, double %40, double %40)
  br label %54

54:                                               ; preds = %53, %41
  %55 = phi double [ %handler_result9, %53 ], [ %52, %41 ], !dbg !300
  store double %55, ptr %1, align 8, !dbg !300, !tbaa !161
  %56 = tail call double @llvm.fabs.f64(double %55), !dbg !315
  %57 = fmul double %56, 0x3CB0000000000000, !dbg !316
  store double %57, ptr %4, align 8, !dbg !317, !tbaa !166
  tail call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !257
  %58 = sub nsw i32 0, %34, !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !254, metadata !DIExpression()), !dbg !257
  br label %63, !dbg !319

59:                                               ; preds = %32
  %60 = fcmp olt double %33, -2.500000e-01, !dbg !320
  br i1 %60, label %61, label %62, !dbg !322

61:                                               ; preds = %59
  %handler_result7 = call double @fAddHandlerDouble(double %33, double 5.000000e-01), !dbg !323
  tail call fastcc void @sin_pi_taylor(double noundef %handler_result7, ptr noundef nonnull %1), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !257
  br label %63, !dbg !325

62:                                               ; preds = %59
  tail call fastcc void @cos_pi_taylor(double noundef %33, ptr noundef nonnull %1), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !257
  br label %63

63:                                               ; preds = %62, %61, %54
  %64 = phi i32 [ %58, %54 ], [ %34, %61 ], [ %34, %62 ], !dbg !257
  tail call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !254, metadata !DIExpression()), !dbg !257
  %65 = icmp eq i32 %64, 1, !dbg !328
  br i1 %65, label %71, label %66, !dbg !330

66:                                               ; preds = %63
  %67 = load double, ptr %1, align 8, !dbg !331, !tbaa !161
  %68 = fneg double %67, !dbg !332
  br label %69, !dbg !333

69:                                               ; preds = %66, %24, %8
  %70 = phi double [ %68, %66 ], [ %25, %24 ], [ 1.000000e+00, %8 ]
  store double %70, ptr %1, align 8, !dbg !257, !tbaa !161
  br label %71, !dbg !334

71:                                               ; preds = %69, %63, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7, !dbg !334
  ret i32 0, !dbg !334
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_sin_pi(double noundef %0) local_unnamed_addr #5 !dbg !335 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !342, metadata ptr %2, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata double %0, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !344
  %3 = call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !343
  %4 = load double, ptr %2, align 8, !dbg !344, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !345
  ret double %4, !dbg !345
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_cos_pi(double noundef %0) local_unnamed_addr #5 !dbg !346 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !349, metadata !DIExpression(), metadata !351, metadata ptr %2, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata double %0, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !353
  %3 = call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2), !dbg !353
  tail call void @llvm.dbg.value(metadata i32 0, metadata !350, metadata !DIExpression()), !dbg !352
  %4 = load double, ptr %2, align 8, !dbg !353, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !354
  ret double %4, !dbg !354
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !355 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !358 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!107 = !DILocation(line: 154, column: 9, scope: !64)
!108 = !DILocation(line: 154, column: 7, scope: !64)
!109 = !DILocation(line: 155, column: 12, scope: !64)
!110 = !DILocation(line: 158, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !64, file: !1, line: 158, column: 7)
!112 = !DILocation(line: 158, column: 19, scope: !111)
!113 = !DILocation(line: 158, column: 7, scope: !64)
!114 = !DILocation(line: 159, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 159, column: 9)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 158, column: 27)
!117 = !DILocation(line: 159, column: 9, scope: !116)
!118 = !DILocation(line: 160, column: 26, scope: !116)
!119 = !DILocation(line: 159, column: 22, scope: !115)
!120 = !DILocation(line: 160, column: 21, scope: !116)
!121 = !DILocation(line: 161, column: 5, scope: !116)
!122 = !DILocation(line: 163, column: 19, scope: !123)
!123 = distinct !DILexicalBlock(scope: !64, file: !1, line: 163, column: 7)
!124 = !DILocation(line: 163, column: 7, scope: !64)
!125 = !DILocation(line: 165, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 163, column: 26)
!127 = !DILocation(line: 165, column: 15, scope: !126)
!128 = !DILocation(line: 166, column: 3, scope: !126)
!129 = !DILocation(line: 169, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !64, file: !1, line: 169, column: 7)
!131 = !DILocation(line: 169, column: 7, scope: !64)
!132 = !DILocation(line: 127, column: 12, scope: !133, inlinedAt: !142)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 127, column: 7)
!134 = distinct !DISubprogram(name: "cos_pi_taylor", scope: !1, file: !1, line: 123, type: !135, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!135 = !DISubroutineType(cc: DW_CC_nocall, types: !66)
!136 = !{!137, !138, !139, !141}
!137 = !DILocalVariable(name: "x", arg: 1, scope: !134, file: !1, line: 123, type: !67)
!138 = !DILocalVariable(name: "result", arg: 2, scope: !134, file: !1, line: 123, type: !69)
!139 = !DILocalVariable(name: "y", scope: !140, file: !1, line: 128, type: !67)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 127, column: 27)
!141 = !DILocalVariable(name: "a", scope: !140, file: !1, line: 129, type: !67)
!142 = distinct !DILocation(line: 170, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !130, file: !1, line: 169, column: 21)
!144 = !DILocation(line: 0, scope: !134, inlinedAt: !142)
!145 = !DILocation(line: 127, column: 11, scope: !133, inlinedAt: !142)
!146 = !DILocation(line: 127, column: 20, scope: !133, inlinedAt: !142)
!147 = !DILocation(line: 0, scope: !133, inlinedAt: !142)
!148 = !DILocation(line: 127, column: 7, scope: !134, inlinedAt: !142)
!149 = !DILocation(line: 0, scope: !140, inlinedAt: !142)
!150 = !DILocation(line: 129, column: 23, scope: !140, inlinedAt: !142)
!151 = !DILocation(line: 130, column: 28, scope: !140, inlinedAt: !142)
!152 = !DILocation(line: 130, column: 66, scope: !140, inlinedAt: !142)
!153 = !DILocation(line: 130, column: 57, scope: !140, inlinedAt: !142)
!154 = !DILocation(line: 130, column: 72, scope: !140, inlinedAt: !142)
!155 = !DILocation(line: 130, column: 48, scope: !140, inlinedAt: !142)
!156 = !DILocation(line: 130, column: 78, scope: !140, inlinedAt: !142)
!157 = !DILocation(line: 130, column: 39, scope: !140, inlinedAt: !142)
!158 = !DILocation(line: 130, column: 84, scope: !140, inlinedAt: !142)
!159 = !DILocation(line: 130, column: 30, scope: !140, inlinedAt: !142)
!160 = !DILocation(line: 131, column: 3, scope: !140, inlinedAt: !142)
!161 = !{!162, !90, i64 0}
!162 = !{!"gsl_sf_result_struct", !90, i64 0, !90, i64 8}
!163 = !DILocation(line: 136, column: 33, scope: !134, inlinedAt: !142)
!164 = !DILocation(line: 136, column: 32, scope: !134, inlinedAt: !142)
!165 = !DILocation(line: 136, column: 15, scope: !134, inlinedAt: !142)
!166 = !{!162, !90, i64 8}
!167 = !DILocation(line: 171, column: 3, scope: !143)
!168 = !DILocation(line: 172, column: 18, scope: !169)
!169 = distinct !DILexicalBlock(scope: !130, file: !1, line: 172, column: 12)
!170 = !DILocation(line: 172, column: 12, scope: !130)
!171 = !DILocation(line: 173, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 172, column: 27)
!173 = !DILocation(line: 174, column: 12, scope: !172)
!174 = !DILocation(line: 175, column: 3, scope: !172)
!175 = !DILocation(line: 177, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !1, line: 176, column: 8)
!177 = !DILocation(line: 179, column: 12, scope: !178)
!178 = distinct !DILexicalBlock(scope: !64, file: !1, line: 179, column: 7)
!179 = !DILocation(line: 179, column: 7, scope: !64)
!180 = !DILocation(line: 179, column: 41, scope: !178)
!181 = !DILocation(line: 179, column: 32, scope: !178)
!182 = !DILocation(line: 179, column: 18, scope: !178)
!183 = !DILocation(line: 181, column: 1, scope: !64)
!184 = !DISubprogram(name: "modf", scope: !185, file: !185, line: 110, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!186 = !DISubroutineType(types: !187)
!187 = !{!68, !68, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!189 = !DISubprogram(name: "fmod", scope: !185, file: !185, line: 168, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{!68, !68, !68}
!192 = !DILocation(line: 0, scope: !134)
!193 = !DILocation(line: 127, column: 12, scope: !133)
!194 = !DILocation(line: 127, column: 11, scope: !133)
!195 = !DILocation(line: 127, column: 20, scope: !133)
!196 = !DILocation(line: 0, scope: !133)
!197 = !DILocation(line: 127, column: 7, scope: !134)
!198 = !DILocation(line: 0, scope: !140)
!199 = !DILocation(line: 129, column: 23, scope: !140)
!200 = !DILocation(line: 130, column: 28, scope: !140)
!201 = !DILocation(line: 130, column: 66, scope: !140)
!202 = !DILocation(line: 130, column: 57, scope: !140)
!203 = !DILocation(line: 130, column: 72, scope: !140)
!204 = !DILocation(line: 130, column: 48, scope: !140)
!205 = !DILocation(line: 130, column: 78, scope: !140)
!206 = !DILocation(line: 130, column: 39, scope: !140)
!207 = !DILocation(line: 130, column: 84, scope: !140)
!208 = !DILocation(line: 130, column: 30, scope: !140)
!209 = !DILocation(line: 131, column: 3, scope: !140)
!210 = !DILocation(line: 126, column: 11, scope: !134)
!211 = !DILocation(line: 136, column: 33, scope: !134)
!212 = !DILocation(line: 136, column: 32, scope: !134)
!213 = !DILocation(line: 136, column: 15, scope: !134)
!214 = !DILocation(line: 138, column: 3, scope: !134)
!215 = distinct !DISubprogram(name: "sin_pi_taylor", scope: !1, file: !1, line: 103, type: !135, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!216 = !{!217, !218, !219, !222}
!217 = !DILocalVariable(name: "x", arg: 1, scope: !215, file: !1, line: 103, type: !67)
!218 = !DILocalVariable(name: "result", arg: 2, scope: !215, file: !1, line: 103, type: !69)
!219 = !DILocalVariable(name: "y", scope: !220, file: !1, line: 108, type: !67)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 107, column: 27)
!221 = distinct !DILexicalBlock(scope: !215, file: !1, line: 107, column: 7)
!222 = !DILocalVariable(name: "a", scope: !220, file: !1, line: 109, type: !67)
!223 = !DILocation(line: 0, scope: !215)
!224 = !DILocation(line: 107, column: 12, scope: !221)
!225 = !DILocation(line: 107, column: 11, scope: !221)
!226 = !DILocation(line: 107, column: 20, scope: !221)
!227 = !DILocation(line: 0, scope: !221)
!228 = !DILocation(line: 107, column: 7, scope: !215)
!229 = !DILocation(line: 0, scope: !220)
!230 = !DILocation(line: 109, column: 23, scope: !220)
!231 = !DILocation(line: 110, column: 65, scope: !220)
!232 = !DILocation(line: 110, column: 56, scope: !220)
!233 = !DILocation(line: 110, column: 72, scope: !220)
!234 = !DILocation(line: 110, column: 47, scope: !220)
!235 = !DILocation(line: 110, column: 78, scope: !220)
!236 = !DILocation(line: 110, column: 38, scope: !220)
!237 = !DILocation(line: 110, column: 84, scope: !220)
!238 = !DILocation(line: 110, column: 29, scope: !220)
!239 = !DILocation(line: 110, column: 90, scope: !220)
!240 = !DILocation(line: 110, column: 20, scope: !220)
!241 = !DILocation(line: 111, column: 3, scope: !220)
!242 = !DILocation(line: 106, column: 11, scope: !215)
!243 = !DILocation(line: 116, column: 33, scope: !215)
!244 = !DILocation(line: 116, column: 32, scope: !215)
!245 = !DILocation(line: 116, column: 15, scope: !215)
!246 = !DILocation(line: 118, column: 3, scope: !215)
!247 = distinct !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !1, file: !1, line: 184, type: !65, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255}
!249 = !DILocalVariable(name: "x", arg: 1, scope: !247, file: !1, line: 184, type: !67)
!250 = !DILocalVariable(name: "result", arg: 2, scope: !247, file: !1, line: 184, type: !69)
!251 = !DILocalVariable(name: "intx", scope: !247, file: !1, line: 186, type: !68)
!252 = !DILocalVariable(name: "fracx", scope: !247, file: !1, line: 186, type: !68)
!253 = !DILocalVariable(name: "q", scope: !247, file: !1, line: 187, type: !82)
!254 = !DILocalVariable(name: "sign", scope: !247, file: !1, line: 188, type: !5)
!255 = !DILocalVariable(name: "status", scope: !247, file: !1, line: 188, type: !5)
!256 = distinct !DIAssignID()
!257 = !DILocation(line: 0, scope: !247)
!258 = !DILocation(line: 186, column: 3, scope: !247)
!259 = !DILocation(line: 186, column: 10, scope: !247)
!260 = distinct !DIAssignID()
!261 = !DILocation(line: 191, column: 11, scope: !247)
!262 = !DILocation(line: 191, column: 15, scope: !247)
!263 = !DILocation(line: 192, column: 11, scope: !247)
!264 = !DILocation(line: 193, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !247, file: !1, line: 193, column: 7)
!266 = !DILocation(line: 193, column: 19, scope: !265)
!267 = !DILocation(line: 193, column: 7, scope: !247)
!268 = !DILocation(line: 195, column: 11, scope: !269)
!269 = distinct !DILexicalBlock(scope: !247, file: !1, line: 195, column: 6)
!270 = !DILocation(line: 195, column: 6, scope: !269)
!271 = !DILocation(line: 195, column: 17, scope: !269)
!272 = !DILocation(line: 195, column: 6, scope: !247)
!273 = !DILocation(line: 200, column: 17, scope: !247)
!274 = !DILocation(line: 200, column: 30, scope: !247)
!275 = !DILocation(line: 200, column: 9, scope: !247)
!276 = !DILocation(line: 200, column: 7, scope: !247)
!277 = !DILocation(line: 201, column: 12, scope: !247)
!278 = !DILocation(line: 204, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !247, file: !1, line: 204, column: 7)
!280 = !DILocation(line: 204, column: 7, scope: !247)
!281 = !DILocation(line: 205, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 204, column: 21)
!283 = !DILocation(line: 206, column: 5, scope: !282)
!284 = !DILocation(line: 208, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !247, file: !1, line: 208, column: 7)
!286 = !DILocation(line: 208, column: 7, scope: !247)
!287 = !DILocation(line: 210, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 208, column: 26)
!289 = !DILocation(line: 210, column: 15, scope: !288)
!290 = !DILocation(line: 211, column: 3, scope: !288)
!291 = !DILocation(line: 214, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !247, file: !1, line: 214, column: 7)
!293 = !DILocation(line: 214, column: 7, scope: !247)
!294 = !DILocation(line: 107, column: 12, scope: !221, inlinedAt: !295)
!295 = distinct !DILocation(line: 215, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 214, column: 21)
!297 = !DILocation(line: 0, scope: !215, inlinedAt: !295)
!298 = !DILocation(line: 107, column: 11, scope: !221, inlinedAt: !295)
!299 = !DILocation(line: 107, column: 20, scope: !221, inlinedAt: !295)
!300 = !DILocation(line: 0, scope: !221, inlinedAt: !295)
!301 = !DILocation(line: 107, column: 7, scope: !215, inlinedAt: !295)
!302 = !DILocation(line: 0, scope: !220, inlinedAt: !295)
!303 = !DILocation(line: 109, column: 23, scope: !220, inlinedAt: !295)
!304 = !DILocation(line: 110, column: 65, scope: !220, inlinedAt: !295)
!305 = !DILocation(line: 110, column: 56, scope: !220, inlinedAt: !295)
!306 = !DILocation(line: 110, column: 72, scope: !220, inlinedAt: !295)
!307 = !DILocation(line: 110, column: 47, scope: !220, inlinedAt: !295)
!308 = !DILocation(line: 110, column: 78, scope: !220, inlinedAt: !295)
!309 = !DILocation(line: 110, column: 38, scope: !220, inlinedAt: !295)
!310 = !DILocation(line: 110, column: 84, scope: !220, inlinedAt: !295)
!311 = !DILocation(line: 110, column: 29, scope: !220, inlinedAt: !295)
!312 = !DILocation(line: 110, column: 90, scope: !220, inlinedAt: !295)
!313 = !DILocation(line: 110, column: 20, scope: !220, inlinedAt: !295)
!314 = !DILocation(line: 111, column: 3, scope: !220, inlinedAt: !295)
!315 = !DILocation(line: 116, column: 33, scope: !215, inlinedAt: !295)
!316 = !DILocation(line: 116, column: 32, scope: !215, inlinedAt: !295)
!317 = !DILocation(line: 116, column: 15, scope: !215, inlinedAt: !295)
!318 = !DILocation(line: 216, column: 12, scope: !296)
!319 = !DILocation(line: 217, column: 3, scope: !296)
!320 = !DILocation(line: 218, column: 18, scope: !321)
!321 = distinct !DILexicalBlock(scope: !292, file: !1, line: 218, column: 12)
!322 = !DILocation(line: 218, column: 12, scope: !292)
!323 = !DILocation(line: 219, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 218, column: 27)
!325 = !DILocation(line: 220, column: 3, scope: !324)
!326 = !DILocation(line: 222, column: 14, scope: !327)
!327 = distinct !DILexicalBlock(scope: !321, file: !1, line: 221, column: 8)
!328 = !DILocation(line: 224, column: 12, scope: !329)
!329 = distinct !DILexicalBlock(scope: !247, file: !1, line: 224, column: 7)
!330 = !DILocation(line: 224, column: 7, scope: !247)
!331 = !DILocation(line: 224, column: 41, scope: !329)
!332 = !DILocation(line: 224, column: 32, scope: !329)
!333 = !DILocation(line: 224, column: 18, scope: !329)
!334 = !DILocation(line: 226, column: 1, scope: !247)
!335 = distinct !DISubprogram(name: "gsl_sf_sin_pi", scope: !1, file: !1, line: 233, type: !336, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!68, !67}
!338 = !{!339, !340, !341}
!339 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !1, line: 233, type: !67)
!340 = !DILocalVariable(name: "result", scope: !335, file: !1, line: 235, type: !70)
!341 = !DILocalVariable(name: "status", scope: !335, file: !1, line: 235, type: !5)
!342 = distinct !DIAssignID()
!343 = !DILocation(line: 0, scope: !335)
!344 = !DILocation(line: 235, column: 3, scope: !335)
!345 = !DILocation(line: 236, column: 1, scope: !335)
!346 = distinct !DISubprogram(name: "gsl_sf_cos_pi", scope: !1, file: !1, line: 239, type: !336, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !347)
!347 = !{!348, !349, !350}
!348 = !DILocalVariable(name: "x", arg: 1, scope: !346, file: !1, line: 239, type: !67)
!349 = !DILocalVariable(name: "result", scope: !346, file: !1, line: 241, type: !70)
!350 = !DILocalVariable(name: "status", scope: !346, file: !1, line: 241, type: !5)
!351 = distinct !DIAssignID()
!352 = !DILocation(line: 0, scope: !346)
!353 = !DILocation(line: 241, column: 3, scope: !346)
!354 = !DILocation(line: 242, column: 1, scope: !346)
!355 = !DISubprogram(name: "cos", scope: !185, file: !185, line: 62, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{!68, !68}
!358 = !DISubprogram(name: "sin", scope: !185, file: !185, line: 64, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
