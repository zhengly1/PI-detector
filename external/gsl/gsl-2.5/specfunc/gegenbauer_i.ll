; ModuleID = 'gegenbauer.ll'
source_filename = "gegenbauer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"gegenbauer.c\00", align 1, !dbg !7
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_gegenpoly_n_e(n, lambda, x, &result)\00", align 1, !dbg !9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !73 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !88
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !89
  %5 = fmul double %0, 2.000000e+00, !dbg !91
  %6 = fmul double %5, %1, !dbg !91
  %7 = fmul double %1, 2.000000e+00, !dbg !91
  %8 = select i1 %4, double %7, double %6, !dbg !91
  %9 = select i1 %4, double 0x3CC0000000000000, double 0x3CD0000000000000, !dbg !91
  %10 = select i1 %4, double %7, double %6, !dbg !91
  %11 = tail call double @llvm.fabs.f64(double %8), !dbg !92
  %12 = fmul double %11, %9, !dbg !92
  store double %10, ptr %2, align 8, !dbg !92
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !92
  store double %12, ptr %13, align 8, !dbg !92
  ret i32 0, !dbg !93
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_2_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !94 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !96, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata double %1, metadata !97, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !98, metadata !DIExpression()), !dbg !103
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !104
  br i1 %4, label %5, label %12, !dbg !105

5:                                                ; preds = %3
  %6 = fmul double %1, 2.000000e+00, !dbg !106
  %7 = fmul double %6, %1, !dbg !107
  tail call void @llvm.dbg.value(metadata double %7, metadata !99, metadata !DIExpression()), !dbg !108
  %handler_result = call double @fAddHandlerDouble(double %7, double -1.000000e+00), !dbg !109
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !109
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !110
  %10 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !111
  %11 = fmul double %10, 0x3CC0000000000000, !dbg !112
  %handler_result1 = call double @fAddHandlerDouble(double %9, double %11)
  br label %21

12:                                               ; preds = %3
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !113
  %13 = fmul double %handler_result2, 2.000000e+00, !dbg !113
  %14 = fmul double %13, %1, !dbg !115
  %15 = fmul double %14, %1, !dbg !116
  %handler_result3 = call double @fAddHandlerDouble(double %15, double -1.000000e+00), !dbg !117
  %16 = fmul double %handler_result3, %0, !dbg !117
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !118
  %18 = fmul double %17, 2.000000e+00, !dbg !119
  %19 = tail call double @llvm.fabs.f64(double %0), !dbg !120
  %handler_result4 = call double @fAddHandlerDouble(double %19, double %18), !dbg !121
  %20 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !121
  br label %21, !dbg !122

21:                                               ; preds = %12, %5
  %22 = phi double [ %handler_result, %5 ], [ %16, %12 ], !dbg !123
  %23 = phi double [ %handler_result1, %5 ], [ %20, %12 ], !dbg !123
  store double %22, ptr %2, align 8, !dbg !123
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !123
  store double %23, ptr %24, align 8, !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_3_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !125 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !127, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %1, metadata !128, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !129, metadata !DIExpression()), !dbg !133
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !134
  br i1 %4, label %5, label %10, !dbg !135

5:                                                ; preds = %3
  %6 = fmul double %1, 0x3FF5555555555555, !dbg !136
  %7 = fmul double %6, %1, !dbg !138
  %handler_result = call double @fAddHandlerDouble(double %7, double -2.000000e+00), !dbg !139
  %8 = fmul double %handler_result, %1, !dbg !139
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !140
  br label %20, !dbg !141

10:                                               ; preds = %3
  %11 = fmul double %0, 2.000000e+00, !dbg !142
  %handler_result1 = call double @fAddHandlerDouble(double %11, double 6.000000e+00), !dbg !143
  %12 = fmul double %handler_result1, %0, !dbg !143
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 4.000000e+00), !dbg !144
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !130, metadata !DIExpression()), !dbg !145
  %13 = fmul double %11, %1, !dbg !144
  %handler_result3 = call double @fSubHandlerDouble(double -1.000000e+00, double %0), !dbg !146
  %14 = fmul double %handler_result2, %1, !dbg !146
  %15 = fmul double %14, %1, !dbg !147
  %16 = fdiv double %15, 3.000000e+00, !dbg !148
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %16), !dbg !149
  %17 = fmul double %13, %handler_result4, !dbg !149
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !150
  %19 = fmul double %0, %1, !dbg !151
  br label %20

20:                                               ; preds = %10, %5
  %21 = phi double [ %19, %10 ], [ %1, %5 ]
  %22 = phi double [ %18, %10 ], [ %9, %5 ]
  %23 = phi double [ %17, %10 ], [ %8, %5 ], !dbg !152
  %24 = fmul double %22, 2.000000e+00, !dbg !152
  %25 = tail call double @llvm.fabs.f64(double %21), !dbg !152
  %handler_result5 = call double @fAddHandlerDouble(double %25, double %24), !dbg !152
  %26 = fmul double %handler_result5, 0x3CB0000000000000, !dbg !152
  store double %23, ptr %2, align 8, !dbg !152
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !152
  store double %26, ptr %27, align 8, !dbg !152
  ret i32 0, !dbg !153
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !dbg !154 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !158, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %1, metadata !159, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %2, metadata !160, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !161, metadata !DIExpression()), !dbg !181
  %5 = fcmp ole double %1, -5.000000e-01, !dbg !182
  %6 = icmp slt i32 %0, 0
  %7 = or i1 %6, %5, !dbg !183
  br i1 %7, label %8, label %10, !dbg !183

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !184, !tbaa !187
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !184
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !184, !tbaa !192
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 1) #7, !dbg !193
  br label %154, !dbg !193

10:                                               ; preds = %4
  switch i32 %0, label %69 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %22
    i32 3, label %44
  ], !dbg !195

11:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 8, !dbg !196, !tbaa !187
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !198
  store double 0.000000e+00, ptr %12, align 8, !dbg !199, !tbaa !192
  br label %154, !dbg !200

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !85, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata double %2, metadata !86, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata ptr %3, metadata !87, metadata !DIExpression()), !dbg !201
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !204
  %15 = fmul double %1, 2.000000e+00, !dbg !205
  %16 = select i1 %14, double 2.000000e+00, double %15, !dbg !205
  %17 = fmul double %16, %2, !dbg !205
  %18 = select i1 %14, double 0x3CC0000000000000, double 0x3CD0000000000000, !dbg !205
  %19 = tail call double @llvm.fabs.f64(double %17), !dbg !206
  %20 = fmul double %18, %19, !dbg !206
  store double %17, ptr %3, align 8, !dbg !206
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !206
  store double %20, ptr %21, align 8, !dbg !206
  br label %154, !dbg !207

22:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !96, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %2, metadata !97, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr %3, metadata !98, metadata !DIExpression()), !dbg !208
  %23 = fcmp oeq double %1, 0.000000e+00, !dbg !211
  br i1 %23, label %24, label %31, !dbg !212

24:                                               ; preds = %22
  %25 = fmul double %2, 2.000000e+00, !dbg !213
  %26 = fmul double %25, %2, !dbg !214
  call void @llvm.dbg.value(metadata double %26, metadata !99, metadata !DIExpression()), !dbg !215
  %handler_result = call double @fAddHandlerDouble(double %26, double -1.000000e+00), !dbg !216
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !216
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !217
  %29 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !218
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !219
  %handler_result1 = call double @fAddHandlerDouble(double %28, double %30)
  br label %40

31:                                               ; preds = %22
  %handler_result2 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !220
  %32 = fmul double %handler_result2, 2.000000e+00, !dbg !220
  %33 = fmul double %32, %2, !dbg !221
  %34 = fmul double %33, %2, !dbg !222
  %handler_result3 = call double @fAddHandlerDouble(double %34, double -1.000000e+00), !dbg !223
  %35 = fmul double %handler_result3, %1, !dbg !223
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !224
  %37 = fmul double %36, 2.000000e+00, !dbg !225
  %38 = tail call double @llvm.fabs.f64(double %1), !dbg !226
  %handler_result4 = call double @fAddHandlerDouble(double %38, double %37), !dbg !227
  %39 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !227
  br label %40, !dbg !228

40:                                               ; preds = %31, %24
  %41 = phi double [ %handler_result, %24 ], [ %35, %31 ], !dbg !229
  %42 = phi double [ %handler_result1, %24 ], [ %39, %31 ], !dbg !229
  store double %41, ptr %3, align 8, !dbg !229
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !229
  store double %42, ptr %43, align 8, !dbg !229
  br label %154, !dbg !230

44:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !127, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %2, metadata !128, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata ptr %3, metadata !129, metadata !DIExpression()), !dbg !231
  %45 = fcmp oeq double %1, 0.000000e+00, !dbg !234
  br i1 %45, label %46, label %51, !dbg !235

46:                                               ; preds = %44
  %47 = fmul double %2, 0x3FF5555555555555, !dbg !236
  %48 = fmul double %47, %2, !dbg !237
  %handler_result5 = call double @fAddHandlerDouble(double %48, double -2.000000e+00), !dbg !238
  %49 = fmul double %handler_result5, %2, !dbg !238
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !239
  br label %61, !dbg !240

51:                                               ; preds = %44
  %52 = fmul double %1, 2.000000e+00, !dbg !241
  %handler_result6 = call double @fAddHandlerDouble(double %52, double 6.000000e+00), !dbg !242
  %53 = fmul double %handler_result6, %1, !dbg !242
  %handler_result7 = call double @fAddHandlerDouble(double %53, double 4.000000e+00), !dbg !243
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !130, metadata !DIExpression()), !dbg !244
  %54 = fmul double %52, %2, !dbg !243
  %handler_result8 = call double @fSubHandlerDouble(double -1.000000e+00, double %1), !dbg !245
  %55 = fmul double %handler_result7, %2, !dbg !245
  %56 = fmul double %55, %2, !dbg !246
  %57 = fdiv double %56, 3.000000e+00, !dbg !247
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %57), !dbg !248
  %58 = fmul double %54, %handler_result9, !dbg !248
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !249
  %60 = fmul double %1, %2, !dbg !250
  br label %61

61:                                               ; preds = %51, %46
  %62 = phi double [ %60, %51 ], [ %2, %46 ]
  %63 = phi double [ %59, %51 ], [ %50, %46 ]
  %64 = phi double [ %58, %51 ], [ %49, %46 ], !dbg !251
  %65 = fmul double %63, 2.000000e+00, !dbg !251
  %66 = tail call double @llvm.fabs.f64(double %62), !dbg !251
  %handler_result10 = call double @fAddHandlerDouble(double %66, double %65), !dbg !251
  %67 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !251
  store double %64, ptr %3, align 8, !dbg !251
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !251
  store double %67, ptr %68, align 8, !dbg !251
  br label %154, !dbg !252

69:                                               ; preds = %10
  %70 = fcmp oeq double %1, 0.000000e+00, !dbg !253
  %71 = fcmp oge double %2, -1.000000e+00
  %72 = fcmp ole double %2, 1.000000e+00
  %73 = and i1 %71, %72, !dbg !254
  %74 = and i1 %70, %73, !dbg !254
  br i1 %74, label %75, label %84, !dbg !254

75:                                               ; preds = %69
  %76 = sitofp i32 %0 to double, !dbg !255
  %handler_result34 = call double @callHandler(i32 5, double %2, double %2), !dbg !256
  %77 = fmul double %handler_result34, %76, !dbg !256
  tail call void @llvm.dbg.value(metadata double %77, metadata !162, metadata !DIExpression()), !dbg !257
  %handler_result35 = call double @callHandler(i32 2, double %77, double %77), !dbg !258
  %78 = fmul double %handler_result35, 2.000000e+00, !dbg !258
  %79 = fdiv double %78, %76, !dbg !259
  store double %79, ptr %3, align 8, !dbg !260, !tbaa !187
  %80 = fmul double %77, %79, !dbg !261
  %81 = tail call double @llvm.fabs.f64(double %80), !dbg !262
  %82 = fmul double %81, 0x3CC0000000000000, !dbg !263
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !264
  store double %82, ptr %83, align 8, !dbg !265, !tbaa !192
  br label %154

84:                                               ; preds = %69
  call void @llvm.dbg.value(metadata double %1, metadata !96, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata double %2, metadata !97, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata ptr undef, metadata !98, metadata !DIExpression()), !dbg !266
  br i1 %70, label %85, label %91, !dbg !268

85:                                               ; preds = %84
  %86 = fmul double %2, 2.000000e+00, !dbg !269
  %87 = fmul double %86, %2, !dbg !270
  call void @llvm.dbg.value(metadata double %87, metadata !99, metadata !DIExpression()), !dbg !271
  %handler_result11 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %1, metadata !127, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %2, metadata !128, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !129, metadata !DIExpression()), !dbg !275
  %88 = fmul double %2, 0x3FF5555555555555, !dbg !272
  %89 = fmul double %88, %2, !dbg !276
  %handler_result12 = call double @fAddHandlerDouble(double %89, double -2.000000e+00), !dbg !277
  %90 = fmul double %handler_result12, %2, !dbg !277
  br label %103, !dbg !278

91:                                               ; preds = %84
  %handler_result13 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !279
  %92 = fmul double %handler_result13, 2.000000e+00, !dbg !279
  %93 = fmul double %92, %2, !dbg !280
  %94 = fmul double %93, %2, !dbg !281
  %handler_result14 = call double @fAddHandlerDouble(double %94, double -1.000000e+00), !dbg !282
  %95 = fmul double %handler_result14, %1, !dbg !282
  tail call void @llvm.dbg.value(metadata double %95, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %1, metadata !127, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %2, metadata !128, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !129, metadata !DIExpression()), !dbg !275
  %96 = fmul double %1, 2.000000e+00, !dbg !283
  %handler_result15 = call double @fAddHandlerDouble(double %96, double 6.000000e+00), !dbg !284
  %97 = fmul double %handler_result15, %1, !dbg !284
  %handler_result16 = call double @fAddHandlerDouble(double %97, double 4.000000e+00), !dbg !285
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !130, metadata !DIExpression()), !dbg !286
  %98 = fmul double %96, %2, !dbg !285
  %handler_result17 = call double @fSubHandlerDouble(double -1.000000e+00, double %1), !dbg !287
  %99 = fmul double %handler_result16, %2, !dbg !287
  %100 = fmul double %99, %2, !dbg !288
  %101 = fdiv double %100, 3.000000e+00, !dbg !289
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %101), !dbg !290
  %102 = fmul double %98, %handler_result18, !dbg !290
  br label %103

103:                                              ; preds = %91, %85
  %104 = phi double [ %95, %91 ], [ %handler_result11, %85 ]
  %105 = phi double [ %102, %91 ], [ %90, %85 ], !dbg !291
  tail call void @llvm.dbg.value(metadata double %105, metadata !174, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %104, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %105, metadata !179, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !180, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 4, metadata !171, metadata !DIExpression()), !dbg !274
  %106 = fmul double %1, 2.000000e+00
  %107 = add i32 %0, -3, !dbg !292
  %108 = and i32 %107, 1, !dbg !292
  %109 = icmp eq i32 %0, 4, !dbg !292
  br i1 %109, label %135, label %110, !dbg !292

110:                                              ; preds = %103
  %111 = and i32 %107, -2, !dbg !292
  br label %112, !dbg !292

112:                                              ; preds = %112, %110
  %113 = phi double [ %105, %110 ], [ %129, %112 ]
  %114 = phi double [ %104, %110 ], [ %122, %112 ]
  %115 = phi i32 [ 4, %110 ], [ %130, %112 ]
  %116 = phi i32 [ 0, %110 ], [ %131, %112 ]
  tail call void @llvm.dbg.value(metadata double %113, metadata !179, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %114, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !171, metadata !DIExpression()), !dbg !274
  %117 = sitofp i32 %115 to double, !dbg !294
  %handler_result19 = call double @fAddHandlerDouble(double %117, double %1), !dbg !297
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double -1.000000e+00), !dbg !298
  %118 = fmul double %handler_result20, 2.000000e+00, !dbg !298
  %119 = fmul double %118, %2, !dbg !299
  %120 = fmul double %113, %119, !dbg !300
  %handler_result21 = call double @fAddHandlerDouble(double %106, double %117), !dbg !301
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double -2.000000e+00), !dbg !302
  %121 = fmul double %114, %handler_result22, !dbg !302
  %handler_result23 = call double @fSubHandlerDouble(double %120, double %121), !dbg !303
  %122 = fdiv double %handler_result23, %117, !dbg !303
  tail call void @llvm.dbg.value(metadata double %122, metadata !180, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %113, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %122, metadata !179, metadata !DIExpression()), !dbg !274
  %123 = or disjoint i32 %115, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !171, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %122, metadata !179, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %113, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !171, metadata !DIExpression()), !dbg !274
  %124 = sitofp i32 %123 to double, !dbg !294
  %handler_result24 = call double @fAddHandlerDouble(double %124, double %1), !dbg !297
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double -1.000000e+00), !dbg !298
  %125 = fmul double %handler_result25, 2.000000e+00, !dbg !298
  %126 = fmul double %125, %2, !dbg !299
  %127 = fmul double %122, %126, !dbg !300
  %handler_result26 = call double @fAddHandlerDouble(double %106, double %124), !dbg !301
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double -2.000000e+00), !dbg !302
  %128 = fmul double %113, %handler_result27, !dbg !302
  %handler_result28 = call double @fSubHandlerDouble(double %127, double %128), !dbg !303
  %129 = fdiv double %handler_result28, %124, !dbg !303
  tail call void @llvm.dbg.value(metadata double %129, metadata !180, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %122, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %129, metadata !179, metadata !DIExpression()), !dbg !274
  %130 = add nuw i32 %115, 2, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !171, metadata !DIExpression()), !dbg !274
  %131 = add i32 %116, 2, !dbg !292
  %132 = icmp eq i32 %131, %111, !dbg !292
  br i1 %132, label %133, label %112, !dbg !292, !llvm.loop !305

133:                                              ; preds = %112
  %134 = sitofp i32 %130 to double, !dbg !294
  br label %135, !dbg !292

135:                                              ; preds = %133, %103
  %136 = phi double [ undef, %103 ], [ %129, %133 ]
  %137 = phi double [ %105, %103 ], [ %129, %133 ]
  %138 = phi double [ %104, %103 ], [ %122, %133 ]
  %139 = phi double [ 4.000000e+00, %103 ], [ %134, %133 ]
  %140 = icmp eq i32 %108, 0, !dbg !292
  br i1 %140, label %147, label %141, !dbg !292

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata double %137, metadata !179, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %138, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !171, metadata !DIExpression()), !dbg !274
  %handler_result29 = call double @fAddHandlerDouble(double %139, double %1), !dbg !297
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double -1.000000e+00), !dbg !298
  %142 = fmul double %handler_result30, 2.000000e+00, !dbg !298
  %143 = fmul double %142, %2, !dbg !299
  %144 = fmul double %137, %143, !dbg !300
  %handler_result31 = call double @fAddHandlerDouble(double %106, double %139), !dbg !301
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double -2.000000e+00), !dbg !302
  %145 = fmul double %138, %handler_result32, !dbg !302
  %handler_result33 = call double @fSubHandlerDouble(double %144, double %145), !dbg !303
  %146 = fdiv double %handler_result33, %139, !dbg !303
  tail call void @llvm.dbg.value(metadata double %146, metadata !180, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %137, metadata !178, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double %146, metadata !179, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !274
  br label %147, !dbg !308

147:                                              ; preds = %141, %135
  %148 = phi double [ %136, %135 ], [ %146, %141 ], !dbg !303
  store double %148, ptr %3, align 8, !dbg !308, !tbaa !187
  %149 = sitofp i32 %0 to double, !dbg !309
  %150 = fmul double %149, 0x3CB0000000000000, !dbg !310
  %151 = tail call double @llvm.fabs.f64(double %148), !dbg !311
  %152 = fmul double %150, %151, !dbg !312
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !313
  store double %152, ptr %153, align 8, !dbg !314, !tbaa !192
  br label %154

154:                                              ; preds = %147, %75, %61, %40, %13, %11, %8
  %155 = phi i32 [ 1, %8 ], [ 0, %11 ], [ 0, %13 ], [ 0, %40 ], [ 0, %61 ], [ 0, %75 ], [ 0, %147 ], !dbg !315
  ret i32 %155, !dbg !316
}

declare !dbg !317 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !322 double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !326 double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_array(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 !dbg !327 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !332, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata double %1, metadata !333, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata double %2, metadata !334, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !335, metadata !DIExpression()), !dbg !342
  %5 = fcmp ole double %1, -5.000000e-01, !dbg !343
  %6 = icmp slt i32 %0, 0
  %7 = or i1 %6, %5, !dbg !345
  br i1 %7, label %8, label %9, !dbg !345

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 1) #7, !dbg !346
  br label %39, !dbg !346

9:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !349, !tbaa !350
  %10 = icmp eq i32 %0, 0, !dbg !351
  br i1 %10, label %39, label %11, !dbg !353

11:                                               ; preds = %9
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !354
  %13 = fmul double %1, 2.000000e+00, !dbg !356
  %14 = select i1 %12, double 2.000000e+00, double %13, !dbg !356
  %15 = fmul double %14, %2, !dbg !356
  %16 = getelementptr inbounds double, ptr %3, i64 1, !dbg !357
  store double %15, ptr %16, align 8, !dbg !357
  tail call void @llvm.dbg.value(metadata i32 2, metadata !336, metadata !DIExpression()), !dbg !342
  %17 = icmp eq i32 %0, 1, !dbg !358
  br i1 %17, label %39, label %18, !dbg !359

18:                                               ; preds = %11
  %19 = fmul double %1, 2.000000e+00
  %20 = add nuw i32 %0, 1, !dbg !359
  %21 = zext i32 %20 to i64, !dbg !358
  %22 = getelementptr i8, ptr %3, i64 8, !dbg !359
  %23 = load double, ptr %22, align 8
  br label %24, !dbg !359

24:                                               ; preds = %24, %18
  %25 = phi double [ %23, %18 ], [ %36, %24 ]
  %26 = phi i64 [ 2, %18 ], [ %37, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !336, metadata !DIExpression()), !dbg !342
  %27 = trunc i64 %26 to i32, !dbg !360
  %28 = sitofp i32 %27 to double, !dbg !360
  %handler_result = call double @fAddHandlerDouble(double %28, double %1), !dbg !361
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double -1.000000e+00), !dbg !362
  %29 = fmul double %handler_result1, 2.000000e+00, !dbg !362
  %30 = fmul double %29, %2, !dbg !363
  %31 = getelementptr double, ptr %3, i64 %26, !dbg !364
  %32 = fmul double %30, %25, !dbg !365
  tail call void @llvm.dbg.value(metadata double %32, metadata !337, metadata !DIExpression()), !dbg !366
  %handler_result2 = call double @fAddHandlerDouble(double %19, double %28), !dbg !367
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -2.000000e+00), !dbg !368
  %33 = getelementptr double, ptr %31, i64 -2, !dbg !368
  %34 = load double, ptr %33, align 8, !dbg !368, !tbaa !350
  %35 = fmul double %handler_result3, %34, !dbg !369
  tail call void @llvm.dbg.value(metadata double %35, metadata !341, metadata !DIExpression()), !dbg !366
  %handler_result4 = call double @fSubHandlerDouble(double %32, double %35), !dbg !370
  %36 = fdiv double %handler_result4, %28, !dbg !370
  store double %36, ptr %31, align 8, !dbg !371, !tbaa !350
  %37 = add nuw nsw i64 %26, 1, !dbg !372
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !336, metadata !DIExpression()), !dbg !342
  %38 = icmp eq i64 %37, %21, !dbg !358
  br i1 %38, label %39, label %24, !dbg !359, !llvm.loop !373

39:                                               ; preds = %24, %11, %9, %8
  %40 = phi i32 [ 1, %8 ], [ 0, %9 ], [ 0, %11 ], [ 0, %24 ], !dbg !342
  ret i32 %40, !dbg !375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_gegenpoly_1(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !376 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !380, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %1, metadata !381, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata ptr undef, metadata !87, metadata !DIExpression()), !dbg !385
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !387
  %4 = fmul double %0, 2.000000e+00, !dbg !388
  %5 = select i1 %3, double 2.000000e+00, double %4, !dbg !388
  %6 = fmul double %5, %1, !dbg !388
  tail call void @llvm.dbg.value(metadata double %6, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !384
  tail call void @llvm.dbg.value(metadata double poison, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !384
  ret double %6, !dbg !389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_gegenpoly_2(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !390 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !392, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %1, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %0, metadata !96, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double %1, metadata !97, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata ptr undef, metadata !98, metadata !DIExpression()), !dbg !397
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !399
  br i1 %3, label %4, label %7, !dbg !400

4:                                                ; preds = %2
  %5 = fmul double %1, 2.000000e+00, !dbg !401
  %6 = fmul double %5, %1, !dbg !402
  call void @llvm.dbg.value(metadata double %6, metadata !99, metadata !DIExpression()), !dbg !403
  %handler_result = call double @fAddHandlerDouble(double %6, double -1.000000e+00)
  br label %12

7:                                                ; preds = %2
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !404
  %8 = fmul double %handler_result1, 2.000000e+00, !dbg !404
  %9 = fmul double %8, %1, !dbg !405
  %10 = fmul double %9, %1, !dbg !406
  %handler_result2 = call double @fAddHandlerDouble(double %10, double -1.000000e+00), !dbg !407
  %11 = fmul double %handler_result2, %0, !dbg !407
  br label %12, !dbg !408

12:                                               ; preds = %7, %4
  %13 = phi double [ %handler_result, %4 ], [ %11, %7 ], !dbg !409
  tail call void @llvm.dbg.value(metadata double %13, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !396
  tail call void @llvm.dbg.value(metadata double poison, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 0, metadata !395, metadata !DIExpression()), !dbg !396
  ret double %13, !dbg !410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_gegenpoly_3(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !411 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !413, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double %1, metadata !414, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata double %0, metadata !127, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata double %1, metadata !128, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr undef, metadata !129, metadata !DIExpression()), !dbg !418
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !420
  br i1 %3, label %4, label %8, !dbg !421

4:                                                ; preds = %2
  %5 = fmul double %1, 0x3FF5555555555555, !dbg !422
  %6 = fmul double %5, %1, !dbg !423
  %handler_result = call double @fAddHandlerDouble(double %6, double -2.000000e+00), !dbg !424
  %7 = fmul double %handler_result, %1, !dbg !424
  br label %16, !dbg !425

8:                                                ; preds = %2
  %9 = fmul double %0, 2.000000e+00, !dbg !426
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 6.000000e+00), !dbg !427
  %10 = fmul double %handler_result1, %0, !dbg !427
  %handler_result2 = call double @fAddHandlerDouble(double %10, double 4.000000e+00), !dbg !428
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !130, metadata !DIExpression()), !dbg !429
  %11 = fmul double %9, %1, !dbg !428
  %handler_result3 = call double @fSubHandlerDouble(double -1.000000e+00, double %0), !dbg !430
  %12 = fmul double %handler_result2, %1, !dbg !430
  %13 = fmul double %12, %1, !dbg !431
  %14 = fdiv double %13, 3.000000e+00, !dbg !432
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %14), !dbg !433
  %15 = fmul double %11, %handler_result4, !dbg !433
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi double [ %15, %8 ], [ %7, %4 ], !dbg !434
  tail call void @llvm.dbg.value(metadata double %17, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !417
  tail call void @llvm.dbg.value(metadata double poison, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !417
  tail call void @llvm.dbg.value(metadata i32 0, metadata !416, metadata !DIExpression()), !dbg !417
  ret double %17, !dbg !435
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gegenpoly_n(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 !dbg !436 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !445, metadata ptr %4, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !440, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %1, metadata !441, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %2, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !447
  %5 = call i32 @gsl_sf_gegenpoly_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !447, !range !448
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !444, metadata !DIExpression()), !dbg !446
  %6 = icmp eq i32 %5, 0, !dbg !449
  br i1 %6, label %8, label %7, !dbg !447

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 1) #7, !dbg !451
  br label %8, !dbg !451

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !447, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !454
  ret double %9, !dbg !454
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "gegenbauer.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a23cc96613a14c83e5dc2aa0b775b2f7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 44)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !55, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!0, !7, !56, !61, !63, !9}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 41)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !58, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !58, isLocal: true, isDefinition: true)
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!72 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!73 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1_e", scope: !2, file: !2, line: 33, type: !74, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !84)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, !76, !76, !77}
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !76, size: 64, offset: 64)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(name: "lambda", arg: 1, scope: !73, file: !2, line: 33, type: !76)
!86 = !DILocalVariable(name: "x", arg: 2, scope: !73, file: !2, line: 33, type: !76)
!87 = !DILocalVariable(name: "result", arg: 3, scope: !73, file: !2, line: 33, type: !77)
!88 = !DILocation(line: 0, scope: !73)
!89 = !DILocation(line: 37, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !73, file: !2, line: 37, column: 6)
!91 = !DILocation(line: 37, column: 6, scope: !73)
!92 = !DILocation(line: 0, scope: !90)
!93 = !DILocation(line: 47, column: 1, scope: !73)
!94 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2_e", scope: !2, file: !2, line: 50, type: !74, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(name: "lambda", arg: 1, scope: !94, file: !2, line: 50, type: !76)
!97 = !DILocalVariable(name: "x", arg: 2, scope: !94, file: !2, line: 50, type: !76)
!98 = !DILocalVariable(name: "result", arg: 3, scope: !94, file: !2, line: 50, type: !77)
!99 = !DILocalVariable(name: "txx", scope: !100, file: !2, line: 55, type: !102)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 54, column: 21)
!101 = distinct !DILexicalBlock(scope: !94, file: !2, line: 54, column: 6)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!103 = !DILocation(line: 0, scope: !94)
!104 = !DILocation(line: 54, column: 13, scope: !101)
!105 = !DILocation(line: 54, column: 6, scope: !94)
!106 = !DILocation(line: 55, column: 27, scope: !100)
!107 = !DILocation(line: 55, column: 29, scope: !100)
!108 = !DILocation(line: 0, scope: !100)
!109 = !DILocation(line: 57, column: 44, scope: !100)
!110 = !DILocation(line: 57, column: 42, scope: !100)
!111 = !DILocation(line: 58, column: 44, scope: !100)
!112 = !DILocation(line: 58, column: 42, scope: !100)
!113 = !DILocation(line: 62, column: 37, scope: !114)
!114 = distinct !DILexicalBlock(scope: !101, file: !2, line: 61, column: 8)
!115 = !DILocation(line: 62, column: 50, scope: !114)
!116 = !DILocation(line: 62, column: 52, scope: !114)
!117 = !DILocation(line: 62, column: 25, scope: !114)
!118 = !DILocation(line: 63, column: 44, scope: !114)
!119 = !DILocation(line: 63, column: 42, scope: !114)
!120 = !DILocation(line: 63, column: 64, scope: !114)
!121 = !DILocation(line: 63, column: 35, scope: !114)
!122 = !DILocation(line: 64, column: 5, scope: !114)
!123 = !DILocation(line: 0, scope: !101)
!124 = !DILocation(line: 66, column: 1, scope: !94)
!125 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3_e", scope: !2, file: !2, line: 69, type: !74, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DILocalVariable(name: "lambda", arg: 1, scope: !125, file: !2, line: 69, type: !76)
!128 = !DILocalVariable(name: "x", arg: 2, scope: !125, file: !2, line: 69, type: !76)
!129 = !DILocalVariable(name: "result", arg: 3, scope: !125, file: !2, line: 69, type: !77)
!130 = !DILocalVariable(name: "c", scope: !131, file: !2, line: 79, type: !76)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 78, column: 8)
!132 = distinct !DILexicalBlock(scope: !125, file: !2, line: 73, column: 6)
!133 = !DILocation(line: 0, scope: !125)
!134 = !DILocation(line: 73, column: 13, scope: !132)
!135 = !DILocation(line: 73, column: 6, scope: !125)
!136 = !DILocation(line: 74, column: 36, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !2, line: 73, column: 21)
!138 = !DILocation(line: 74, column: 38, scope: !137)
!139 = !DILocation(line: 74, column: 20, scope: !137)
!140 = !DILocation(line: 75, column: 44, scope: !137)
!141 = !DILocation(line: 76, column: 5, scope: !137)
!142 = !DILocation(line: 79, column: 39, scope: !131)
!143 = !DILocation(line: 79, column: 28, scope: !131)
!144 = !DILocation(line: 80, column: 30, scope: !131)
!145 = !DILocation(line: 0, scope: !131)
!146 = !DILocation(line: 80, column: 55, scope: !131)
!147 = !DILocation(line: 80, column: 57, scope: !131)
!148 = !DILocation(line: 80, column: 59, scope: !131)
!149 = !DILocation(line: 80, column: 34, scope: !131)
!150 = !DILocation(line: 81, column: 44, scope: !131)
!151 = !DILocation(line: 81, column: 76, scope: !131)
!152 = !DILocation(line: 0, scope: !132)
!153 = !DILocation(line: 84, column: 1, scope: !125)
!154 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n_e", scope: !2, file: !2, line: 88, type: !155, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!18, !18, !76, !76, !77}
!157 = !{!158, !159, !160, !161, !162, !171, !173, !174, !175, !176, !177, !178, !179, !180}
!158 = !DILocalVariable(name: "n", arg: 1, scope: !154, file: !2, line: 88, type: !18)
!159 = !DILocalVariable(name: "lambda", arg: 2, scope: !154, file: !2, line: 88, type: !76)
!160 = !DILocalVariable(name: "x", arg: 3, scope: !154, file: !2, line: 88, type: !76)
!161 = !DILocalVariable(name: "result", arg: 4, scope: !154, file: !2, line: 88, type: !77)
!162 = !DILocalVariable(name: "z", scope: !163, file: !2, line: 112, type: !102)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 110, column: 50)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 110, column: 8)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 109, column: 8)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 106, column: 11)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 103, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 100, column: 11)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 95, column: 11)
!170 = distinct !DILexicalBlock(scope: !154, file: !2, line: 92, column: 6)
!171 = !DILocalVariable(name: "k", scope: !172, file: !2, line: 118, type: !18)
!172 = distinct !DILexicalBlock(scope: !164, file: !2, line: 117, column: 10)
!173 = !DILocalVariable(name: "g2", scope: !172, file: !2, line: 119, type: !78)
!174 = !DILocalVariable(name: "g3", scope: !172, file: !2, line: 120, type: !78)
!175 = !DILocalVariable(name: "stat_g2", scope: !172, file: !2, line: 121, type: !18)
!176 = !DILocalVariable(name: "stat_g3", scope: !172, file: !2, line: 122, type: !18)
!177 = !DILocalVariable(name: "stat_g", scope: !172, file: !2, line: 123, type: !18)
!178 = !DILocalVariable(name: "gkm2", scope: !172, file: !2, line: 124, type: !76)
!179 = !DILocalVariable(name: "gkm1", scope: !172, file: !2, line: 125, type: !76)
!180 = !DILocalVariable(name: "gk", scope: !172, file: !2, line: 126, type: !76)
!181 = !DILocation(line: 0, scope: !154)
!182 = !DILocation(line: 92, column: 13, scope: !170)
!183 = !DILocation(line: 92, column: 21, scope: !170)
!184 = !DILocation(line: 93, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 93, column: 5)
!186 = distinct !DILexicalBlock(scope: !170, file: !2, line: 92, column: 31)
!187 = !{!188, !189, i64 0}
!188 = !{!"gsl_sf_result_struct", !189, i64 0, !189, i64 8}
!189 = !{!"double", !190, i64 0}
!190 = !{!"omnipotent char", !191, i64 0}
!191 = !{!"Simple C/C++ TBAA"}
!192 = !{!188, !189, i64 8}
!193 = !DILocation(line: 93, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !185, file: !2, line: 93, column: 5)
!195 = !DILocation(line: 95, column: 11, scope: !170)
!196 = !DILocation(line: 96, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !169, file: !2, line: 95, column: 19)
!198 = !DILocation(line: 97, column: 13, scope: !197)
!199 = !DILocation(line: 97, column: 17, scope: !197)
!200 = !DILocation(line: 98, column: 5, scope: !197)
!201 = !DILocation(line: 0, scope: !73, inlinedAt: !202)
!202 = distinct !DILocation(line: 101, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !168, file: !2, line: 100, column: 19)
!204 = !DILocation(line: 37, column: 13, scope: !90, inlinedAt: !202)
!205 = !DILocation(line: 37, column: 6, scope: !73, inlinedAt: !202)
!206 = !DILocation(line: 0, scope: !90, inlinedAt: !202)
!207 = !DILocation(line: 101, column: 5, scope: !203)
!208 = !DILocation(line: 0, scope: !94, inlinedAt: !209)
!209 = distinct !DILocation(line: 104, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !167, file: !2, line: 103, column: 19)
!211 = !DILocation(line: 54, column: 13, scope: !101, inlinedAt: !209)
!212 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !209)
!213 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !209)
!214 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !209)
!215 = !DILocation(line: 0, scope: !100, inlinedAt: !209)
!216 = !DILocation(line: 57, column: 44, scope: !100, inlinedAt: !209)
!217 = !DILocation(line: 57, column: 42, scope: !100, inlinedAt: !209)
!218 = !DILocation(line: 58, column: 44, scope: !100, inlinedAt: !209)
!219 = !DILocation(line: 58, column: 42, scope: !100, inlinedAt: !209)
!220 = !DILocation(line: 62, column: 37, scope: !114, inlinedAt: !209)
!221 = !DILocation(line: 62, column: 50, scope: !114, inlinedAt: !209)
!222 = !DILocation(line: 62, column: 52, scope: !114, inlinedAt: !209)
!223 = !DILocation(line: 62, column: 25, scope: !114, inlinedAt: !209)
!224 = !DILocation(line: 63, column: 44, scope: !114, inlinedAt: !209)
!225 = !DILocation(line: 63, column: 42, scope: !114, inlinedAt: !209)
!226 = !DILocation(line: 63, column: 64, scope: !114, inlinedAt: !209)
!227 = !DILocation(line: 63, column: 35, scope: !114, inlinedAt: !209)
!228 = !DILocation(line: 64, column: 5, scope: !114, inlinedAt: !209)
!229 = !DILocation(line: 0, scope: !101, inlinedAt: !209)
!230 = !DILocation(line: 104, column: 5, scope: !210)
!231 = !DILocation(line: 0, scope: !125, inlinedAt: !232)
!232 = distinct !DILocation(line: 107, column: 12, scope: !233)
!233 = distinct !DILexicalBlock(scope: !166, file: !2, line: 106, column: 19)
!234 = !DILocation(line: 73, column: 13, scope: !132, inlinedAt: !232)
!235 = !DILocation(line: 73, column: 6, scope: !125, inlinedAt: !232)
!236 = !DILocation(line: 74, column: 36, scope: !137, inlinedAt: !232)
!237 = !DILocation(line: 74, column: 38, scope: !137, inlinedAt: !232)
!238 = !DILocation(line: 74, column: 20, scope: !137, inlinedAt: !232)
!239 = !DILocation(line: 75, column: 44, scope: !137, inlinedAt: !232)
!240 = !DILocation(line: 76, column: 5, scope: !137, inlinedAt: !232)
!241 = !DILocation(line: 79, column: 39, scope: !131, inlinedAt: !232)
!242 = !DILocation(line: 79, column: 28, scope: !131, inlinedAt: !232)
!243 = !DILocation(line: 80, column: 30, scope: !131, inlinedAt: !232)
!244 = !DILocation(line: 0, scope: !131, inlinedAt: !232)
!245 = !DILocation(line: 80, column: 55, scope: !131, inlinedAt: !232)
!246 = !DILocation(line: 80, column: 57, scope: !131, inlinedAt: !232)
!247 = !DILocation(line: 80, column: 59, scope: !131, inlinedAt: !232)
!248 = !DILocation(line: 80, column: 34, scope: !131, inlinedAt: !232)
!249 = !DILocation(line: 81, column: 44, scope: !131, inlinedAt: !232)
!250 = !DILocation(line: 81, column: 76, scope: !131, inlinedAt: !232)
!251 = !DILocation(line: 0, scope: !132, inlinedAt: !232)
!252 = !DILocation(line: 107, column: 5, scope: !233)
!253 = !DILocation(line: 110, column: 15, scope: !164)
!254 = !DILocation(line: 110, column: 22, scope: !164)
!255 = !DILocation(line: 112, column: 24, scope: !163)
!256 = !DILocation(line: 112, column: 26, scope: !163)
!257 = !DILocation(line: 0, scope: !163)
!258 = !DILocation(line: 113, column: 25, scope: !163)
!259 = !DILocation(line: 113, column: 34, scope: !163)
!260 = !DILocation(line: 113, column: 19, scope: !163)
!261 = !DILocation(line: 114, column: 52, scope: !163)
!262 = !DILocation(line: 114, column: 45, scope: !163)
!263 = !DILocation(line: 114, column: 43, scope: !163)
!264 = !DILocation(line: 114, column: 15, scope: !163)
!265 = !DILocation(line: 114, column: 19, scope: !163)
!266 = !DILocation(line: 0, scope: !94, inlinedAt: !267)
!267 = distinct !DILocation(line: 121, column: 21, scope: !172)
!268 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !267)
!269 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !267)
!270 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !267)
!271 = !DILocation(line: 0, scope: !100, inlinedAt: !267)
!272 = !DILocation(line: 74, column: 36, scope: !137, inlinedAt: !273)
!273 = distinct !DILocation(line: 122, column: 21, scope: !172)
!274 = !DILocation(line: 0, scope: !172)
!275 = !DILocation(line: 0, scope: !125, inlinedAt: !273)
!276 = !DILocation(line: 74, column: 38, scope: !137, inlinedAt: !273)
!277 = !DILocation(line: 74, column: 20, scope: !137, inlinedAt: !273)
!278 = !DILocation(line: 76, column: 5, scope: !137, inlinedAt: !273)
!279 = !DILocation(line: 62, column: 37, scope: !114, inlinedAt: !267)
!280 = !DILocation(line: 62, column: 50, scope: !114, inlinedAt: !267)
!281 = !DILocation(line: 62, column: 52, scope: !114, inlinedAt: !267)
!282 = !DILocation(line: 62, column: 25, scope: !114, inlinedAt: !267)
!283 = !DILocation(line: 79, column: 39, scope: !131, inlinedAt: !273)
!284 = !DILocation(line: 79, column: 28, scope: !131, inlinedAt: !273)
!285 = !DILocation(line: 80, column: 30, scope: !131, inlinedAt: !273)
!286 = !DILocation(line: 0, scope: !131, inlinedAt: !273)
!287 = !DILocation(line: 80, column: 55, scope: !131, inlinedAt: !273)
!288 = !DILocation(line: 80, column: 57, scope: !131, inlinedAt: !273)
!289 = !DILocation(line: 80, column: 59, scope: !131, inlinedAt: !273)
!290 = !DILocation(line: 80, column: 34, scope: !131, inlinedAt: !273)
!291 = !DILocation(line: 0, scope: !132, inlinedAt: !273)
!292 = !DILocation(line: 127, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !172, file: !2, line: 127, column: 7)
!294 = !DILocation(line: 128, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 127, column: 27)
!296 = distinct !DILexicalBlock(scope: !293, file: !2, line: 127, column: 7)
!297 = !DILocation(line: 128, column: 28, scope: !295)
!298 = !DILocation(line: 128, column: 18, scope: !295)
!299 = !DILocation(line: 128, column: 33, scope: !295)
!300 = !DILocation(line: 128, column: 35, scope: !295)
!301 = !DILocation(line: 128, column: 56, scope: !295)
!302 = !DILocation(line: 128, column: 61, scope: !295)
!303 = !DILocation(line: 128, column: 68, scope: !295)
!304 = !DILocation(line: 127, column: 23, scope: !296)
!305 = distinct !{!305, !292, !306, !307}
!306 = !DILocation(line: 131, column: 7, scope: !293)
!307 = !{!"llvm.loop.mustprogress"}
!308 = !DILocation(line: 132, column: 19, scope: !172)
!309 = !DILocation(line: 133, column: 51, scope: !172)
!310 = !DILocation(line: 133, column: 49, scope: !172)
!311 = !DILocation(line: 133, column: 55, scope: !172)
!312 = !DILocation(line: 133, column: 53, scope: !172)
!313 = !DILocation(line: 133, column: 15, scope: !172)
!314 = !DILocation(line: 133, column: 19, scope: !172)
!315 = !DILocation(line: 0, scope: !170)
!316 = !DILocation(line: 137, column: 1, scope: !154)
!317 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320, !320, !18, !18}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!322 = !DISubprogram(name: "acos", scope: !323, file: !323, line: 53, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!324 = !DISubroutineType(types: !325)
!325 = !{!76, !76}
!326 = !DISubprogram(name: "cos", scope: !323, file: !323, line: 62, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_array", scope: !2, file: !2, line: 141, type: !328, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !331)
!328 = !DISubroutineType(types: !329)
!329 = !{!18, !18, !76, !76, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!331 = !{!332, !333, !334, !335, !336, !337, !341}
!332 = !DILocalVariable(name: "nmax", arg: 1, scope: !327, file: !2, line: 141, type: !18)
!333 = !DILocalVariable(name: "lambda", arg: 2, scope: !327, file: !2, line: 141, type: !76)
!334 = !DILocalVariable(name: "x", arg: 3, scope: !327, file: !2, line: 141, type: !76)
!335 = !DILocalVariable(name: "result_array", arg: 4, scope: !327, file: !2, line: 141, type: !330)
!336 = !DILocalVariable(name: "k", scope: !327, file: !2, line: 143, type: !18)
!337 = !DILocalVariable(name: "term1", scope: !338, file: !2, line: 163, type: !76)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 162, column: 26)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 162, column: 3)
!340 = distinct !DILexicalBlock(scope: !327, file: !2, line: 162, column: 3)
!341 = !DILocalVariable(name: "term2", scope: !338, file: !2, line: 164, type: !76)
!342 = !DILocation(line: 0, scope: !327)
!343 = !DILocation(line: 147, column: 13, scope: !344)
!344 = distinct !DILexicalBlock(scope: !327, file: !2, line: 147, column: 6)
!345 = !DILocation(line: 147, column: 21, scope: !344)
!346 = !DILocation(line: 148, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 148, column: 5)
!348 = distinct !DILexicalBlock(scope: !344, file: !2, line: 147, column: 34)
!349 = !DILocation(line: 152, column: 19, scope: !327)
!350 = !{!189, !189, i64 0}
!351 = !DILocation(line: 153, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !327, file: !2, line: 153, column: 6)
!353 = !DILocation(line: 153, column: 6, scope: !327)
!354 = !DILocation(line: 156, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !327, file: !2, line: 156, column: 6)
!356 = !DILocation(line: 156, column: 6, scope: !327)
!357 = !DILocation(line: 0, scope: !355)
!358 = !DILocation(line: 162, column: 13, scope: !339)
!359 = !DILocation(line: 162, column: 3, scope: !340)
!360 = !DILocation(line: 163, column: 25, scope: !338)
!361 = !DILocation(line: 163, column: 33, scope: !338)
!362 = !DILocation(line: 163, column: 23, scope: !338)
!363 = !DILocation(line: 163, column: 39, scope: !338)
!364 = !DILocation(line: 163, column: 45, scope: !338)
!365 = !DILocation(line: 163, column: 43, scope: !338)
!366 = !DILocation(line: 0, scope: !338)
!367 = !DILocation(line: 164, column: 33, scope: !338)
!368 = !DILocation(line: 164, column: 45, scope: !338)
!369 = !DILocation(line: 164, column: 43, scope: !338)
!370 = !DILocation(line: 165, column: 39, scope: !338)
!371 = !DILocation(line: 165, column: 21, scope: !338)
!372 = !DILocation(line: 162, column: 22, scope: !339)
!373 = distinct !{!373, !359, !374, !307}
!374 = !DILocation(line: 166, column: 3, scope: !340)
!375 = !DILocation(line: 169, column: 1, scope: !327)
!376 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1", scope: !2, file: !2, line: 176, type: !377, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!76, !76, !76}
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(name: "lambda", arg: 1, scope: !376, file: !2, line: 176, type: !76)
!381 = !DILocalVariable(name: "x", arg: 2, scope: !376, file: !2, line: 176, type: !76)
!382 = !DILocalVariable(name: "result", scope: !376, file: !2, line: 178, type: !78)
!383 = !DILocalVariable(name: "status", scope: !376, file: !2, line: 178, type: !18)
!384 = !DILocation(line: 0, scope: !376)
!385 = !DILocation(line: 0, scope: !73, inlinedAt: !386)
!386 = distinct !DILocation(line: 178, column: 3, scope: !376)
!387 = !DILocation(line: 37, column: 13, scope: !90, inlinedAt: !386)
!388 = !DILocation(line: 37, column: 6, scope: !73, inlinedAt: !386)
!389 = !DILocation(line: 179, column: 1, scope: !376)
!390 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2", scope: !2, file: !2, line: 181, type: !377, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DILocalVariable(name: "lambda", arg: 1, scope: !390, file: !2, line: 181, type: !76)
!393 = !DILocalVariable(name: "x", arg: 2, scope: !390, file: !2, line: 181, type: !76)
!394 = !DILocalVariable(name: "result", scope: !390, file: !2, line: 183, type: !78)
!395 = !DILocalVariable(name: "status", scope: !390, file: !2, line: 183, type: !18)
!396 = !DILocation(line: 0, scope: !390)
!397 = !DILocation(line: 0, scope: !94, inlinedAt: !398)
!398 = distinct !DILocation(line: 183, column: 3, scope: !390)
!399 = !DILocation(line: 54, column: 13, scope: !101, inlinedAt: !398)
!400 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !398)
!401 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !398)
!402 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !398)
!403 = !DILocation(line: 0, scope: !100, inlinedAt: !398)
!404 = !DILocation(line: 62, column: 37, scope: !114, inlinedAt: !398)
!405 = !DILocation(line: 62, column: 50, scope: !114, inlinedAt: !398)
!406 = !DILocation(line: 62, column: 52, scope: !114, inlinedAt: !398)
!407 = !DILocation(line: 62, column: 25, scope: !114, inlinedAt: !398)
!408 = !DILocation(line: 64, column: 5, scope: !114, inlinedAt: !398)
!409 = !DILocation(line: 0, scope: !101, inlinedAt: !398)
!410 = !DILocation(line: 184, column: 1, scope: !390)
!411 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3", scope: !2, file: !2, line: 186, type: !377, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(name: "lambda", arg: 1, scope: !411, file: !2, line: 186, type: !76)
!414 = !DILocalVariable(name: "x", arg: 2, scope: !411, file: !2, line: 186, type: !76)
!415 = !DILocalVariable(name: "result", scope: !411, file: !2, line: 188, type: !78)
!416 = !DILocalVariable(name: "status", scope: !411, file: !2, line: 188, type: !18)
!417 = !DILocation(line: 0, scope: !411)
!418 = !DILocation(line: 0, scope: !125, inlinedAt: !419)
!419 = distinct !DILocation(line: 188, column: 3, scope: !411)
!420 = !DILocation(line: 73, column: 13, scope: !132, inlinedAt: !419)
!421 = !DILocation(line: 73, column: 6, scope: !125, inlinedAt: !419)
!422 = !DILocation(line: 74, column: 36, scope: !137, inlinedAt: !419)
!423 = !DILocation(line: 74, column: 38, scope: !137, inlinedAt: !419)
!424 = !DILocation(line: 74, column: 20, scope: !137, inlinedAt: !419)
!425 = !DILocation(line: 76, column: 5, scope: !137, inlinedAt: !419)
!426 = !DILocation(line: 79, column: 39, scope: !131, inlinedAt: !419)
!427 = !DILocation(line: 79, column: 28, scope: !131, inlinedAt: !419)
!428 = !DILocation(line: 80, column: 30, scope: !131, inlinedAt: !419)
!429 = !DILocation(line: 0, scope: !131, inlinedAt: !419)
!430 = !DILocation(line: 80, column: 55, scope: !131, inlinedAt: !419)
!431 = !DILocation(line: 80, column: 57, scope: !131, inlinedAt: !419)
!432 = !DILocation(line: 80, column: 59, scope: !131, inlinedAt: !419)
!433 = !DILocation(line: 80, column: 34, scope: !131, inlinedAt: !419)
!434 = !DILocation(line: 0, scope: !132, inlinedAt: !419)
!435 = !DILocation(line: 189, column: 1, scope: !411)
!436 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n", scope: !2, file: !2, line: 191, type: !437, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!76, !18, !76, !76}
!439 = !{!440, !441, !442, !443, !444}
!440 = !DILocalVariable(name: "n", arg: 1, scope: !436, file: !2, line: 191, type: !18)
!441 = !DILocalVariable(name: "lambda", arg: 2, scope: !436, file: !2, line: 191, type: !76)
!442 = !DILocalVariable(name: "x", arg: 3, scope: !436, file: !2, line: 191, type: !76)
!443 = !DILocalVariable(name: "result", scope: !436, file: !2, line: 193, type: !78)
!444 = !DILocalVariable(name: "status", scope: !436, file: !2, line: 193, type: !18)
!445 = distinct !DIAssignID()
!446 = !DILocation(line: 0, scope: !436)
!447 = !DILocation(line: 193, column: 3, scope: !436)
!448 = !{i32 0, i32 2}
!449 = !DILocation(line: 193, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !436, file: !2, line: 193, column: 3)
!451 = !DILocation(line: 193, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !2, line: 193, column: 3)
!453 = distinct !DILexicalBlock(scope: !450, file: !2, line: 193, column: 3)
!454 = !DILocation(line: 194, column: 1, scope: !436)
