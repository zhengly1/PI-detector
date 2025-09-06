; ModuleID = 'bessel_temme.ll'
source_filename = "bessel_temme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_Y_temme(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !76 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !90, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !91, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 15000, metadata !92, metadata !DIExpression()), !dbg !122
  %5 = fmul double %1, 5.000000e-01, !dbg !123
  tail call void @llvm.dbg.value(metadata double %5, metadata !94, metadata !DIExpression()), !dbg !122
  %handler_result74 = call double @callHandler(i32 12, double %5, double %5), !dbg !124
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !95, metadata !DIExpression()), !dbg !122
  %6 = fmul double %handler_result74, %0, !dbg !124
  %7 = tail call double @exp(double noundef %6) #3, !dbg !125
  tail call void @llvm.dbg.value(metadata double %7, metadata !96, metadata !DIExpression()), !dbg !122
  %8 = fmul double %0, 0x400921FB54442D18, !dbg !126
  tail call void @llvm.dbg.value(metadata double %8, metadata !97, metadata !DIExpression()), !dbg !122
  %9 = fmul double %8, 5.000000e-01, !dbg !127
  tail call void @llvm.dbg.value(metadata double %9, metadata !98, metadata !DIExpression()), !dbg !122
  %10 = fneg double %0, !dbg !128
  %11 = fmul double %handler_result74, %10, !dbg !129
  tail call void @llvm.dbg.value(metadata double %11, metadata !99, metadata !DIExpression()), !dbg !122
  %12 = tail call double @llvm.fabs.f64(double %8), !dbg !130
  %13 = fcmp olt double %12, 0x3CB0000000000000, !dbg !131
  br i1 %13, label %17, label %14, !dbg !130

14:                                               ; preds = %4
  %handler_result75 = call double @callHandler(i32 1, double %8, double %8), !dbg !132
  %15 = fdiv double %8, %handler_result75, !dbg !132
  %16 = fmul double %15, 0x3FE45F306DC9C883, !dbg !133
  br label %17, !dbg !130

17:                                               ; preds = %14, %4
  %18 = phi double [ %16, %14 ], [ 0x3FE45F306DC9C883, %4 ], !dbg !130
  tail call void @llvm.dbg.value(metadata double %18, metadata !100, metadata !DIExpression()), !dbg !122
  %19 = tail call double @llvm.fabs.f64(double %11), !dbg !134
  %20 = fcmp olt double %19, 0x3CB0000000000000, !dbg !135
  br i1 %20, label %23, label %21, !dbg !134

21:                                               ; preds = %17
  %handler_result76 = call double @callHandler(i32 8, double %11, double %11), !dbg !136
  %22 = fdiv double %handler_result76, %11, !dbg !136
  br label %23, !dbg !134

23:                                               ; preds = %21, %17
  %24 = phi double [ %22, %21 ], [ 1.000000e+00, %17 ], !dbg !134
  tail call void @llvm.dbg.value(metadata double %24, metadata !101, metadata !DIExpression()), !dbg !122
  %25 = tail call double @llvm.fabs.f64(double %9), !dbg !137
  %26 = fcmp olt double %25, 0x3CB0000000000000, !dbg !138
  br i1 %26, label %29, label %27, !dbg !137

27:                                               ; preds = %23
  %handler_result77 = call double @callHandler(i32 1, double %9, double %9), !dbg !139
  %28 = fdiv double %handler_result77, %9, !dbg !139
  br label %29, !dbg !137

29:                                               ; preds = %27, %23
  %30 = phi double [ %28, %27 ], [ 1.000000e+00, %23 ], !dbg !137
  tail call void @llvm.dbg.value(metadata double %30, metadata !102, metadata !DIExpression()), !dbg !122
  %31 = fmul double %8, 0x400921FB54442D18, !dbg !140
  %32 = fmul double %31, 5.000000e-01, !dbg !141
  %33 = fmul double %32, %30, !dbg !142
  %34 = fmul double %30, %33, !dbg !143
  tail call void @llvm.dbg.value(metadata double %34, metadata !103, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata double %0, metadata !144, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr undef, metadata !149, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr undef, metadata !150, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr undef, metadata !151, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr undef, metadata !152, metadata !DIExpression()), !dbg !157
  %35 = tail call double @llvm.fabs.f64(double %0), !dbg !159
  call void @llvm.dbg.value(metadata double %35, metadata !153, metadata !DIExpression()), !dbg !157
  %36 = fmul double %35, 4.000000e+00, !dbg !160
  %handler_result = call double @fAddHandlerDouble(double %36, double -1.000000e+00), !dbg !161
  call void @llvm.dbg.value(metadata double %handler_result, metadata !154, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata !185, metadata !169, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result, metadata !170, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr undef, metadata !171, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !186
  %37 = fmul double %handler_result, 2.000000e+00, !dbg !161
  %handler_result1 = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !187
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !188
  %38 = fmul double %handler_result2, 5.000000e-01, !dbg !188
  call void @llvm.dbg.value(metadata double %38, metadata !175, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 13, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !157
  call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !157
  call void @llvm.dbg.value(metadata !185, metadata !169, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result, metadata !170, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr undef, metadata !171, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !175, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 14, metadata !172, metadata !DIExpression()), !dbg !191
  %handler_result3 = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !193
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !194
  %39 = fmul double %handler_result4, 5.000000e-01, !dbg !194
  call void @llvm.dbg.value(metadata double %39, metadata !175, metadata !DIExpression()), !dbg !191
  %40 = fmul double %39, 2.000000e+00, !dbg !195
  call void @llvm.dbg.value(metadata double %40, metadata !176, metadata !DIExpression()), !dbg !191
  %41 = fmul double %38, 2.000000e+00, !dbg !196
  call void @llvm.dbg.value(metadata double %41, metadata !176, metadata !DIExpression()), !dbg !186
  %42 = fmul double %41, 0.000000e+00, !dbg !197
  %handler_result5 = call double @fAddHandlerDouble(double %42, double 0xBBE598C5460217E6), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !174, metadata !DIExpression()), !dbg !186
  %43 = fmul double %41, %handler_result5, !dbg !197
  %handler_result6 = call double @fAddHandlerDouble(double %43, double 0xBC83712DD7FD5DAE), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !174, metadata !DIExpression()), !dbg !186
  %44 = fmul double %41, %handler_result6, !dbg !197
  %handler_result7 = call double @fSubHandlerDouble(double %44, double %handler_result5), !dbg !198
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0xBCCCC7FD6547EEBE), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !174, metadata !DIExpression()), !dbg !186
  %45 = fmul double %41, %handler_result8, !dbg !197
  %handler_result9 = call double @fSubHandlerDouble(double %45, double %handler_result6), !dbg !198
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3D1FEC573C54F7E4), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !174, metadata !DIExpression()), !dbg !186
  %46 = fmul double %41, %handler_result10, !dbg !197
  %handler_result11 = call double @fSubHandlerDouble(double %46, double %handler_result8), !dbg !198
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3D6808C44F2106C2), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !174, metadata !DIExpression()), !dbg !186
  %47 = fmul double %41, %handler_result12, !dbg !197
  %handler_result13 = call double @fSubHandlerDouble(double %47, double %handler_result10), !dbg !198
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3DC1D4922A661984), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !174, metadata !DIExpression()), !dbg !186
  %48 = fmul double %41, %handler_result14, !dbg !197
  %handler_result15 = call double @fSubHandlerDouble(double %48, double %handler_result12), !dbg !198
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0x3DFF0DBFD1B8B9C7), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !174, metadata !DIExpression()), !dbg !186
  %49 = fmul double %41, %handler_result16, !dbg !197
  %handler_result17 = call double @fSubHandlerDouble(double %49, double %handler_result14), !dbg !198
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 0xBE6BD210D42EA355), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !174, metadata !DIExpression()), !dbg !186
  %50 = fmul double %41, %handler_result18, !dbg !197
  %handler_result19 = call double @fSubHandlerDouble(double %50, double %handler_result16), !dbg !198
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0xBEA5ACE21C9E49D4), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !174, metadata !DIExpression()), !dbg !186
  %51 = fmul double %41, %handler_result20, !dbg !197
  %handler_result21 = call double @fSubHandlerDouble(double %51, double %handler_result18), !dbg !198
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0x3EF1D81738E657AD), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !174, metadata !DIExpression()), !dbg !186
  %52 = fmul double %41, %handler_result22, !dbg !197
  %handler_result23 = call double @fSubHandlerDouble(double %52, double %handler_result20), !dbg !198
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3F24083A360DB22F), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !174, metadata !DIExpression()), !dbg !186
  %53 = fmul double %41, %handler_result24, !dbg !197
  %handler_result25 = call double @fSubHandlerDouble(double %53, double %handler_result22), !dbg !198
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3F5E83B08852701D), !dbg !197
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !174, metadata !DIExpression()), !dbg !186
  %54 = fmul double %41, %handler_result26, !dbg !197
  %handler_result27 = call double @fSubHandlerDouble(double %54, double %handler_result24), !dbg !198
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3F7A0DD6818D61BF), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !182, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 14, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !200
  %55 = fmul double %40, 0.000000e+00, !dbg !199
  %handler_result29 = call double @fAddHandlerDouble(double %55, double 0xBBF633DBD22DEF21), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !178, metadata !DIExpression()), !dbg !200
  %56 = fmul double %40, %handler_result29, !dbg !199
  %handler_result30 = call double @fAddHandlerDouble(double %56, double 0xBC467C1053694F01), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !178, metadata !DIExpression()), !dbg !200
  %57 = fmul double %40, %handler_result30, !dbg !199
  %handler_result31 = call double @fSubHandlerDouble(double %57, double %handler_result29), !dbg !201
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0xBC944DA74212ED24), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !178, metadata !DIExpression()), !dbg !200
  %58 = fmul double %40, %handler_result32, !dbg !199
  %handler_result33 = call double @fSubHandlerDouble(double %58, double %handler_result30), !dbg !201
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0xBCD51F6FD990EBC7), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !178, metadata !DIExpression()), !dbg !200
  %59 = fmul double %40, %handler_result34, !dbg !199
  %handler_result35 = call double @fSubHandlerDouble(double %59, double %handler_result32), !dbg !201
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3D4FE3990CCF9916), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !178, metadata !DIExpression()), !dbg !200
  %60 = fmul double %40, %handler_result36, !dbg !199
  %handler_result37 = call double @fSubHandlerDouble(double %60, double %handler_result34), !dbg !201
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0x3D949DABBF046C8F), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !178, metadata !DIExpression()), !dbg !200
  %61 = fmul double %40, %handler_result38, !dbg !199
  %handler_result39 = call double @fSubHandlerDouble(double %61, double %handler_result36), !dbg !201
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0xBDD9D6E073FDD7CB), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !178, metadata !DIExpression()), !dbg !200
  %62 = fmul double %40, %handler_result40, !dbg !199
  %handler_result41 = call double @fSubHandlerDouble(double %62, double %handler_result38), !dbg !201
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0xBE20C4C973386FFA), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !178, metadata !DIExpression()), !dbg !200
  %63 = fmul double %40, %handler_result42, !dbg !199
  %handler_result43 = call double @fSubHandlerDouble(double %63, double %handler_result40), !dbg !201
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0xBE77DF090B838554), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !178, metadata !DIExpression()), !dbg !200
  %64 = fmul double %40, %handler_result44, !dbg !199
  %handler_result45 = call double @fSubHandlerDouble(double %64, double %handler_result42), !dbg !201
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0xBEB005C3B83B8EA6), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !178, metadata !DIExpression()), !dbg !200
  %65 = fmul double %40, %handler_result46, !dbg !199
  %handler_result47 = call double @fSubHandlerDouble(double %65, double %handler_result44), !dbg !201
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 0x3F13FBA52E885960), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !178, metadata !DIExpression()), !dbg !200
  %66 = fmul double %40, %handler_result48, !dbg !199
  %handler_result49 = call double @fSubHandlerDouble(double %66, double %handler_result46), !dbg !201
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 0x3F44C4B99F9A8A1E), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !178, metadata !DIExpression()), !dbg !200
  %67 = fmul double %40, %handler_result50, !dbg !199
  %handler_result51 = call double @fSubHandlerDouble(double %67, double %handler_result48), !dbg !201
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 0xBF92B1E364CE7F7D), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !178, metadata !DIExpression()), !dbg !200
  %68 = fmul double %40, %handler_result52, !dbg !199
  %handler_result53 = call double @fSubHandlerDouble(double %68, double %handler_result50), !dbg !201
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double 0xBFB3D66D838E9AA7), !dbg !202
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !174, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !191
  %69 = fmul double %38, %handler_result28, !dbg !202
  %handler_result55 = call double @fSubHandlerDouble(double %69, double %handler_result26), !dbg !203
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0xBFE2529792FE2917), !dbg !204
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !157
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !182, metadata !DIExpression()), !dbg !205
  %70 = fmul double %39, %handler_result54, !dbg !204
  %handler_result57 = call double @fSubHandlerDouble(double %70, double %handler_result52), !dbg !206
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3FEE1F50E9F9E9DA), !dbg !207
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !173, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !157
  call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !157
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !115, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !116, metadata !DIExpression()), !dbg !122
  %71 = fmul double %handler_result56, %0, !dbg !207
  %handler_result59 = call double @fAddHandlerDouble(double %71, double %handler_result58), !dbg !208
  %72 = fdiv double 1.000000e+00, %handler_result59, !dbg !208
  tail call void @llvm.dbg.value(metadata double %72, metadata !114, metadata !DIExpression()), !dbg !122
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result58, double %71), !dbg !209
  %73 = fdiv double 1.000000e+00, %handler_result60, !dbg !209
  tail call void @llvm.dbg.value(metadata double %73, metadata !113, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !122
  %handler_result78 = call double @callHandler(i32 9, double %11, double %11), !dbg !210
  %74 = fmul double %handler_result56, %handler_result78, !dbg !210
  %75 = fmul double %handler_result74, %24, !dbg !211
  %76 = fmul double %75, %handler_result58, !dbg !212
  %handler_result61 = call double @fSubHandlerDouble(double %74, double %76), !dbg !213
  %77 = fmul double %18, %handler_result61, !dbg !213
  tail call void @llvm.dbg.value(metadata double %77, metadata !106, metadata !DIExpression()), !dbg !122
  %78 = fdiv double 0x3FD45F306DC9C883, %7, !dbg !214
  %79 = fmul double %78, %73, !dbg !215
  tail call void @llvm.dbg.value(metadata double %79, metadata !107, metadata !DIExpression()), !dbg !122
  %80 = fmul double %7, 0x3FD45F306DC9C883, !dbg !216
  %81 = fmul double %80, %72, !dbg !217
  tail call void @llvm.dbg.value(metadata double %81, metadata !108, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %79, metadata !109, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !110, metadata !DIExpression()), !dbg !122
  %82 = fmul double %34, %81, !dbg !218
  %handler_result62 = call double @fAddHandlerDouble(double %77, double %82)
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %79, metadata !105, metadata !DIExpression()), !dbg !122
  %83 = fmul double %0, %0
  %84 = fneg double %5
  %85 = fmul double %5, %84
  br label %86, !dbg !219

86:                                               ; preds = %95, %29
  %87 = phi double [ 1.000000e+00, %29 ], [ %103, %95 ], !dbg !122
  %88 = phi i32 [ 0, %29 ], [ %96, %95 ], !dbg !122
  %89 = phi double [ %81, %29 ], [ %105, %95 ], !dbg !122
  %90 = phi double [ %79, %29 ], [ %104, %95 ], !dbg !122
  %91 = phi double [ %77, %29 ], [ %101, %95 ], !dbg !122
  %92 = phi double [ %79, %29 ], [ %handler_result71, %95 ], !dbg !122
  %93 = phi double [ %handler_result62, %29 ], [ %handler_result70, %95 ], !dbg !122
  tail call void @llvm.dbg.value(metadata double %93, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %92, metadata !105, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %91, metadata !106, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %90, metadata !107, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %89, metadata !108, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !111, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %87, metadata !110, metadata !DIExpression()), !dbg !122
  %94 = icmp eq i32 %88, 15000, !dbg !220
  br i1 %94, label %117, label %95, !dbg !219

95:                                               ; preds = %86
  %96 = add nuw nsw i32 %88, 1, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !111, metadata !DIExpression()), !dbg !122
  %97 = sitofp i32 %96 to double, !dbg !222
  %98 = fmul double %91, %97, !dbg !223
  %handler_result63 = call double @fAddHandlerDouble(double %90, double %98), !dbg !224
  %handler_result64 = call double @fAddHandlerDouble(double %89, double %handler_result63), !dbg !225
  %99 = mul nuw nsw i32 %96, %96, !dbg !225
  %100 = sitofp i32 %99 to double, !dbg !226
  %handler_result65 = call double @fSubHandlerDouble(double %100, double %83), !dbg !227
  %101 = fdiv double %handler_result64, %handler_result65, !dbg !227
  tail call void @llvm.dbg.value(metadata double %101, metadata !106, metadata !DIExpression()), !dbg !122
  %102 = fdiv double %85, %97, !dbg !228
  %103 = fmul double %87, %102, !dbg !229
  tail call void @llvm.dbg.value(metadata double %103, metadata !110, metadata !DIExpression()), !dbg !122
  %handler_result66 = call double @fSubHandlerDouble(double %97, double %0), !dbg !230
  %104 = fdiv double %90, %handler_result66, !dbg !230
  tail call void @llvm.dbg.value(metadata double %104, metadata !107, metadata !DIExpression()), !dbg !122
  %handler_result67 = call double @fAddHandlerDouble(double %97, double %0), !dbg !231
  %105 = fdiv double %89, %handler_result67, !dbg !231
  tail call void @llvm.dbg.value(metadata double %105, metadata !108, metadata !DIExpression()), !dbg !122
  %106 = fmul double %34, %105, !dbg !232
  %handler_result68 = call double @fAddHandlerDouble(double %106, double %101), !dbg !233
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !121, metadata !DIExpression()), !dbg !234
  %107 = xor i32 %88, -1, !dbg !233
  %108 = sitofp i32 %107 to double, !dbg !233
  %109 = fmul double %handler_result68, %108, !dbg !235
  %handler_result69 = call double @fAddHandlerDouble(double %104, double %109), !dbg !236
  tail call void @llvm.dbg.value(metadata double %handler_result69, metadata !109, metadata !DIExpression()), !dbg !122
  %110 = fmul double %103, %handler_result68, !dbg !236
  tail call void @llvm.dbg.value(metadata double %110, metadata !118, metadata !DIExpression()), !dbg !234
  %111 = fmul double %103, %handler_result69, !dbg !237
  tail call void @llvm.dbg.value(metadata double %111, metadata !120, metadata !DIExpression()), !dbg !234
  %handler_result70 = call double @fAddHandlerDouble(double %93, double %110), !dbg !238
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !104, metadata !DIExpression()), !dbg !122
  %handler_result71 = call double @fAddHandlerDouble(double %92, double %111), !dbg !239
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !105, metadata !DIExpression()), !dbg !122
  %112 = tail call double @llvm.fabs.f64(double %110), !dbg !239
  %113 = tail call double @llvm.fabs.f64(double %handler_result70), !dbg !241
  %handler_result72 = call double @fAddHandlerDouble(double %113, double 1.000000e+00), !dbg !242
  %114 = fmul double %handler_result72, 5.000000e-01, !dbg !242
  %115 = fmul double %114, 0x3CB0000000000000, !dbg !243
  %116 = fcmp olt double %112, %115, !dbg !244
  br i1 %116, label %117, label %86

117:                                              ; preds = %95, %86
  %118 = phi i32 [ 15000, %86 ], [ %96, %95 ], !dbg !122
  %119 = phi double [ %92, %86 ], [ %handler_result71, %95 ], !dbg !122
  %120 = phi double [ %93, %86 ], [ %handler_result70, %95 ], !dbg !122
  tail call void @llvm.dbg.value(metadata double %120, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %119, metadata !105, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !111, metadata !DIExpression()), !dbg !122
  %121 = freeze i32 %118, !dbg !245
  %122 = fneg double %120, !dbg !246
  store double %122, ptr %2, align 8, !dbg !247, !tbaa !248
  %123 = sitofp i32 %121 to double, !dbg !253
  %124 = fmul double %123, 5.000000e-01, !dbg !254
  %handler_result73 = call double @fAddHandlerDouble(double %124, double 2.000000e+00), !dbg !255
  %125 = fmul double %handler_result73, 0x3CB0000000000000, !dbg !255
  %126 = tail call double @llvm.fabs.f64(double %122), !dbg !256
  %127 = fmul double %126, %125, !dbg !257
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !258
  store double %127, ptr %128, align 8, !dbg !259, !tbaa !260
  %129 = fmul double %119, -2.000000e+00, !dbg !261
  %130 = fdiv double %129, %1, !dbg !262
  store double %130, ptr %3, align 8, !dbg !263, !tbaa !248
  %131 = tail call double @llvm.fabs.f64(double %130), !dbg !264
  %132 = fmul double %125, %131, !dbg !265
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !266
  store double %132, ptr %133, align 8, !dbg !267, !tbaa !260
  %134 = icmp sgt i32 %121, 14999, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !112, metadata !DIExpression()), !dbg !122
  %135 = select i1 %134, i32 11, i32 0, !dbg !268
  ret i32 %135, !dbg !269
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !270 double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !274 double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !275 double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !276 double @sinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !277 double @cosh(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_K_scaled_temme(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !278 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !282, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %1, metadata !283, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !284, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !285, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !286, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 15000, metadata !287, metadata !DIExpression()), !dbg !313
  %6 = fmul double %1, 5.000000e-01, !dbg !314
  tail call void @llvm.dbg.value(metadata double %6, metadata !288, metadata !DIExpression()), !dbg !313
  %handler_result71 = call double @callHandler(i32 12, double %6, double %6), !dbg !315
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !289, metadata !DIExpression()), !dbg !313
  %7 = fmul double %handler_result71, %0, !dbg !315
  %8 = tail call double @exp(double noundef %7) #3, !dbg !316
  tail call void @llvm.dbg.value(metadata double %8, metadata !290, metadata !DIExpression()), !dbg !313
  %9 = fmul double %0, 0x400921FB54442D18, !dbg !317
  tail call void @llvm.dbg.value(metadata double %9, metadata !291, metadata !DIExpression()), !dbg !313
  %10 = fneg double %0, !dbg !318
  %11 = fmul double %handler_result71, %10, !dbg !319
  tail call void @llvm.dbg.value(metadata double %11, metadata !292, metadata !DIExpression()), !dbg !313
  %12 = tail call double @llvm.fabs.f64(double %9), !dbg !320
  %13 = fcmp olt double %12, 0x3CB0000000000000, !dbg !321
  br i1 %13, label %16, label %14, !dbg !320

14:                                               ; preds = %5
  %handler_result72 = call double @callHandler(i32 1, double %9, double %9), !dbg !322
  %15 = fdiv double %9, %handler_result72, !dbg !322
  br label %16, !dbg !320

16:                                               ; preds = %14, %5
  %17 = phi double [ %15, %14 ], [ 1.000000e+00, %5 ], !dbg !320
  tail call void @llvm.dbg.value(metadata double %17, metadata !293, metadata !DIExpression()), !dbg !313
  %18 = tail call double @llvm.fabs.f64(double %11), !dbg !323
  %19 = fcmp olt double %18, 0x3CB0000000000000, !dbg !324
  br i1 %19, label %22, label %20, !dbg !323

20:                                               ; preds = %16
  %handler_result73 = call double @callHandler(i32 8, double %11, double %11), !dbg !325
  %21 = fdiv double %handler_result73, %11, !dbg !325
  br label %22, !dbg !323

22:                                               ; preds = %20, %16
  %23 = phi double [ %21, %20 ], [ 1.000000e+00, %16 ], !dbg !323
  tail call void @llvm.dbg.value(metadata double %23, metadata !294, metadata !DIExpression()), !dbg !313
  %24 = tail call double @exp(double noundef %1) #3, !dbg !326
  tail call void @llvm.dbg.value(metadata double %24, metadata !295, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata double %0, metadata !144, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !149, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !150, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !151, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !152, metadata !DIExpression()), !dbg !327
  %25 = tail call double @llvm.fabs.f64(double %0), !dbg !329
  call void @llvm.dbg.value(metadata double %25, metadata !153, metadata !DIExpression()), !dbg !327
  %26 = fmul double %25, 4.000000e+00, !dbg !330
  %handler_result = call double @fAddHandlerDouble(double %26, double -1.000000e+00), !dbg !331
  call void @llvm.dbg.value(metadata double %handler_result, metadata !154, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata !185, metadata !169, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result, metadata !170, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata ptr undef, metadata !171, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !333
  %27 = fmul double %handler_result, 2.000000e+00, !dbg !331
  %handler_result1 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !334
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !335
  %28 = fmul double %handler_result2, 5.000000e-01, !dbg !335
  call void @llvm.dbg.value(metadata double %28, metadata !175, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 13, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !174, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata double poison, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !327
  call void @llvm.dbg.value(metadata !185, metadata !169, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result, metadata !170, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata ptr undef, metadata !171, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !175, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 14, metadata !172, metadata !DIExpression()), !dbg !338
  %handler_result3 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !340
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !341
  %29 = fmul double %handler_result4, 5.000000e-01, !dbg !341
  call void @llvm.dbg.value(metadata double %29, metadata !175, metadata !DIExpression()), !dbg !338
  %30 = fmul double %29, 2.000000e+00, !dbg !342
  call void @llvm.dbg.value(metadata double %30, metadata !176, metadata !DIExpression()), !dbg !338
  %31 = fmul double %28, 2.000000e+00, !dbg !343
  call void @llvm.dbg.value(metadata double %31, metadata !176, metadata !DIExpression()), !dbg !333
  %32 = fmul double %31, 0.000000e+00, !dbg !344
  %handler_result5 = call double @fAddHandlerDouble(double %32, double 0xBBE598C5460217E6), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !174, metadata !DIExpression()), !dbg !333
  %33 = fmul double %31, %handler_result5, !dbg !344
  %handler_result6 = call double @fAddHandlerDouble(double %33, double 0xBC83712DD7FD5DAE), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !174, metadata !DIExpression()), !dbg !333
  %34 = fmul double %31, %handler_result6, !dbg !344
  %handler_result7 = call double @fSubHandlerDouble(double %34, double %handler_result5), !dbg !345
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0xBCCCC7FD6547EEBE), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !174, metadata !DIExpression()), !dbg !333
  %35 = fmul double %31, %handler_result8, !dbg !344
  %handler_result9 = call double @fSubHandlerDouble(double %35, double %handler_result6), !dbg !345
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3D1FEC573C54F7E4), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !174, metadata !DIExpression()), !dbg !333
  %36 = fmul double %31, %handler_result10, !dbg !344
  %handler_result11 = call double @fSubHandlerDouble(double %36, double %handler_result8), !dbg !345
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3D6808C44F2106C2), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !174, metadata !DIExpression()), !dbg !333
  %37 = fmul double %31, %handler_result12, !dbg !344
  %handler_result13 = call double @fSubHandlerDouble(double %37, double %handler_result10), !dbg !345
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3DC1D4922A661984), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !174, metadata !DIExpression()), !dbg !333
  %38 = fmul double %31, %handler_result14, !dbg !344
  %handler_result15 = call double @fSubHandlerDouble(double %38, double %handler_result12), !dbg !345
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0x3DFF0DBFD1B8B9C7), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !174, metadata !DIExpression()), !dbg !333
  %39 = fmul double %31, %handler_result16, !dbg !344
  %handler_result17 = call double @fSubHandlerDouble(double %39, double %handler_result14), !dbg !345
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 0xBE6BD210D42EA355), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !174, metadata !DIExpression()), !dbg !333
  %40 = fmul double %31, %handler_result18, !dbg !344
  %handler_result19 = call double @fSubHandlerDouble(double %40, double %handler_result16), !dbg !345
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0xBEA5ACE21C9E49D4), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !174, metadata !DIExpression()), !dbg !333
  %41 = fmul double %31, %handler_result20, !dbg !344
  %handler_result21 = call double @fSubHandlerDouble(double %41, double %handler_result18), !dbg !345
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0x3EF1D81738E657AD), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !174, metadata !DIExpression()), !dbg !333
  %42 = fmul double %31, %handler_result22, !dbg !344
  %handler_result23 = call double @fSubHandlerDouble(double %42, double %handler_result20), !dbg !345
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3F24083A360DB22F), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !174, metadata !DIExpression()), !dbg !333
  %43 = fmul double %31, %handler_result24, !dbg !344
  %handler_result25 = call double @fSubHandlerDouble(double %43, double %handler_result22), !dbg !345
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3F5E83B08852701D), !dbg !344
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !178, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !174, metadata !DIExpression()), !dbg !333
  %44 = fmul double %31, %handler_result26, !dbg !344
  %handler_result27 = call double @fSubHandlerDouble(double %44, double %handler_result24), !dbg !345
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3F7A0DD6818D61BF), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !182, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 14, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !347
  %45 = fmul double %30, 0.000000e+00, !dbg !346
  %handler_result29 = call double @fAddHandlerDouble(double %45, double 0xBBF633DBD22DEF21), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 13, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !178, metadata !DIExpression()), !dbg !347
  %46 = fmul double %30, %handler_result29, !dbg !346
  %handler_result30 = call double @fAddHandlerDouble(double %46, double 0xBC467C1053694F01), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 12, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !178, metadata !DIExpression()), !dbg !347
  %47 = fmul double %30, %handler_result30, !dbg !346
  %handler_result31 = call double @fSubHandlerDouble(double %47, double %handler_result29), !dbg !348
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0xBC944DA74212ED24), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 11, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !178, metadata !DIExpression()), !dbg !347
  %48 = fmul double %30, %handler_result32, !dbg !346
  %handler_result33 = call double @fSubHandlerDouble(double %48, double %handler_result30), !dbg !348
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0xBCD51F6FD990EBC7), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 10, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !178, metadata !DIExpression()), !dbg !347
  %49 = fmul double %30, %handler_result34, !dbg !346
  %handler_result35 = call double @fSubHandlerDouble(double %49, double %handler_result32), !dbg !348
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3D4FE3990CCF9916), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 9, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !178, metadata !DIExpression()), !dbg !347
  %50 = fmul double %30, %handler_result36, !dbg !346
  %handler_result37 = call double @fSubHandlerDouble(double %50, double %handler_result34), !dbg !348
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0x3D949DABBF046C8F), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 8, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !178, metadata !DIExpression()), !dbg !347
  %51 = fmul double %30, %handler_result38, !dbg !346
  %handler_result39 = call double @fSubHandlerDouble(double %51, double %handler_result36), !dbg !348
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0xBDD9D6E073FDD7CB), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 7, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !178, metadata !DIExpression()), !dbg !347
  %52 = fmul double %30, %handler_result40, !dbg !346
  %handler_result41 = call double @fSubHandlerDouble(double %52, double %handler_result38), !dbg !348
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0xBE20C4C973386FFA), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 6, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !178, metadata !DIExpression()), !dbg !347
  %53 = fmul double %30, %handler_result42, !dbg !346
  %handler_result43 = call double @fSubHandlerDouble(double %53, double %handler_result40), !dbg !348
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0xBE77DF090B838554), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 5, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !178, metadata !DIExpression()), !dbg !347
  %54 = fmul double %30, %handler_result44, !dbg !346
  %handler_result45 = call double @fSubHandlerDouble(double %54, double %handler_result42), !dbg !348
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0xBEB005C3B83B8EA6), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 4, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !178, metadata !DIExpression()), !dbg !347
  %55 = fmul double %30, %handler_result46, !dbg !346
  %handler_result47 = call double @fSubHandlerDouble(double %55, double %handler_result44), !dbg !348
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 0x3F13FBA52E885960), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 3, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !178, metadata !DIExpression()), !dbg !347
  %56 = fmul double %30, %handler_result48, !dbg !346
  %handler_result49 = call double @fSubHandlerDouble(double %56, double %handler_result46), !dbg !348
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 0x3F44C4B99F9A8A1E), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 2, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !178, metadata !DIExpression()), !dbg !347
  %57 = fmul double %30, %handler_result50, !dbg !346
  %handler_result51 = call double @fSubHandlerDouble(double %57, double %handler_result48), !dbg !348
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 0xBF92B1E364CE7F7D), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !178, metadata !DIExpression()), !dbg !347
  %58 = fmul double %30, %handler_result52, !dbg !346
  %handler_result53 = call double @fSubHandlerDouble(double %58, double %handler_result50), !dbg !348
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double 0xBFB3D66D838E9AA7), !dbg !349
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !174, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !338
  %59 = fmul double %28, %handler_result28, !dbg !349
  %handler_result55 = call double @fSubHandlerDouble(double %59, double %handler_result26), !dbg !350
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0xBFE2529792FE2917), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !173, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !182, metadata !DIExpression()), !dbg !352
  %60 = fmul double %29, %handler_result54, !dbg !351
  %handler_result57 = call double @fSubHandlerDouble(double %60, double %handler_result52), !dbg !353
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3FEE1F50E9F9E9DA), !dbg !354
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !173, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !327
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !307, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !308, metadata !DIExpression()), !dbg !313
  %61 = fmul double %handler_result56, %0, !dbg !354
  %handler_result59 = call double @fAddHandlerDouble(double %61, double %handler_result58), !dbg !355
  %62 = fdiv double 1.000000e+00, %handler_result59, !dbg !355
  tail call void @llvm.dbg.value(metadata double %62, metadata !306, metadata !DIExpression()), !dbg !313
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result58, double %61), !dbg !356
  %63 = fdiv double 1.000000e+00, %handler_result60, !dbg !356
  tail call void @llvm.dbg.value(metadata double %63, metadata !305, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 0, metadata !309, metadata !DIExpression()), !dbg !313
  %handler_result74 = call double @callHandler(i32 9, double %11, double %11), !dbg !357
  %64 = fmul double %handler_result56, %handler_result74, !dbg !357
  %65 = fmul double %handler_result71, %23, !dbg !358
  %66 = fmul double %65, %handler_result58, !dbg !359
  %handler_result61 = call double @fSubHandlerDouble(double %64, double %66), !dbg !360
  %67 = fmul double %17, %handler_result61, !dbg !360
  tail call void @llvm.dbg.value(metadata double %67, metadata !298, metadata !DIExpression()), !dbg !313
  %68 = fdiv double 5.000000e-01, %8, !dbg !361
  %69 = fmul double %68, %63, !dbg !362
  tail call void @llvm.dbg.value(metadata double %69, metadata !299, metadata !DIExpression()), !dbg !313
  %70 = fmul double %8, 5.000000e-01, !dbg !363
  %71 = fmul double %70, %62, !dbg !364
  tail call void @llvm.dbg.value(metadata double %71, metadata !300, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %69, metadata !301, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !302, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %67, metadata !296, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %69, metadata !297, metadata !DIExpression()), !dbg !313
  %72 = fmul double %0, %0
  %73 = fmul double %6, %6
  br label %74, !dbg !365

74:                                               ; preds = %83, %22
  %75 = phi double [ %71, %22 ], [ %93, %83 ], !dbg !313
  %76 = phi double [ 1.000000e+00, %22 ], [ %91, %83 ], !dbg !313
  %77 = phi i32 [ 0, %22 ], [ %84, %83 ], !dbg !313
  %78 = phi double [ %69, %22 ], [ %92, %83 ], !dbg !313
  %79 = phi double [ %67, %22 ], [ %89, %83 ], !dbg !313
  %80 = phi double [ %69, %22 ], [ %handler_result69, %83 ], !dbg !313
  %81 = phi double [ %67, %22 ], [ %handler_result68, %83 ], !dbg !313
  tail call void @llvm.dbg.value(metadata double %81, metadata !296, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %80, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %79, metadata !298, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %78, metadata !299, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !303, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %76, metadata !302, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %75, metadata !300, metadata !DIExpression()), !dbg !313
  %82 = icmp eq i32 %77, 15000, !dbg !366
  br i1 %82, label %104, label %83, !dbg !365

83:                                               ; preds = %74
  %84 = add nuw nsw i32 %77, 1, !dbg !367
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !303, metadata !DIExpression()), !dbg !313
  %85 = sitofp i32 %84 to double, !dbg !368
  %86 = fmul double %79, %85, !dbg !369
  %handler_result62 = call double @fAddHandlerDouble(double %78, double %86), !dbg !370
  %handler_result63 = call double @fAddHandlerDouble(double %75, double %handler_result62), !dbg !371
  %87 = mul nuw nsw i32 %84, %84, !dbg !371
  %88 = sitofp i32 %87 to double, !dbg !372
  %handler_result64 = call double @fSubHandlerDouble(double %88, double %72), !dbg !373
  %89 = fdiv double %handler_result63, %handler_result64, !dbg !373
  tail call void @llvm.dbg.value(metadata double %89, metadata !298, metadata !DIExpression()), !dbg !313
  %90 = fdiv double %73, %85, !dbg !374
  %91 = fmul double %76, %90, !dbg !375
  tail call void @llvm.dbg.value(metadata double %91, metadata !302, metadata !DIExpression()), !dbg !313
  %handler_result65 = call double @fSubHandlerDouble(double %85, double %0), !dbg !376
  %92 = fdiv double %78, %handler_result65, !dbg !376
  tail call void @llvm.dbg.value(metadata double %92, metadata !299, metadata !DIExpression()), !dbg !313
  %handler_result66 = call double @fAddHandlerDouble(double %85, double %0), !dbg !377
  %93 = fdiv double %75, %handler_result66, !dbg !377
  tail call void @llvm.dbg.value(metadata double %93, metadata !300, metadata !DIExpression()), !dbg !313
  %94 = xor i32 %77, -1, !dbg !378
  %95 = sitofp i32 %94 to double, !dbg !378
  %96 = fmul double %89, %95, !dbg !379
  %handler_result67 = call double @fAddHandlerDouble(double %92, double %96), !dbg !380
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !301, metadata !DIExpression()), !dbg !313
  %97 = fmul double %91, %89, !dbg !380
  tail call void @llvm.dbg.value(metadata double %97, metadata !310, metadata !DIExpression()), !dbg !381
  %98 = fmul double %91, %handler_result67, !dbg !382
  tail call void @llvm.dbg.value(metadata double %98, metadata !312, metadata !DIExpression()), !dbg !381
  %handler_result68 = call double @fAddHandlerDouble(double %81, double %97), !dbg !383
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !296, metadata !DIExpression()), !dbg !313
  %handler_result69 = call double @fAddHandlerDouble(double %80, double %98), !dbg !384
  tail call void @llvm.dbg.value(metadata double %handler_result69, metadata !297, metadata !DIExpression()), !dbg !313
  %99 = tail call double @llvm.fabs.f64(double %97), !dbg !384
  %100 = tail call double @llvm.fabs.f64(double %handler_result68), !dbg !386
  %101 = fmul double %100, 5.000000e-01, !dbg !387
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !388
  %103 = fcmp olt double %99, %102, !dbg !389
  br i1 %103, label %104, label %74

104:                                              ; preds = %83, %74
  %105 = phi i32 [ %84, %83 ], [ 15000, %74 ], !dbg !313
  %106 = phi double [ %handler_result69, %83 ], [ %80, %74 ], !dbg !313
  %107 = phi double [ %handler_result68, %83 ], [ %81, %74 ], !dbg !313
  tail call void @llvm.dbg.value(metadata double %107, metadata !296, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %106, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !303, metadata !DIExpression()), !dbg !313
  %108 = fmul double %24, %107, !dbg !390
  store double %108, ptr %2, align 8, !dbg !391, !tbaa !392
  %109 = fmul double %106, 2.000000e+00, !dbg !393
  %110 = fdiv double %109, %1, !dbg !394
  %111 = fmul double %24, %110, !dbg !395
  store double %111, ptr %3, align 8, !dbg !396, !tbaa !392
  %112 = fdiv double %0, %1, !dbg !397
  %113 = load double, ptr %2, align 8, !dbg !398, !tbaa !392
  %114 = fmul double %112, %113, !dbg !399
  %handler_result70 = call double @fSubHandlerDouble(double %114, double %111), !dbg !400
  store double %handler_result70, ptr %4, align 8, !dbg !400, !tbaa !392
  %115 = freeze i32 %105, !dbg !401
  %116 = icmp eq i32 %115, 15000, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !304, metadata !DIExpression()), !dbg !313
  %117 = select i1 %116, i32 11, i32 0, !dbg !402
  ret i32 %117, !dbg !403
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bessel_temme.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "15725f8cb7179ddcfb4d99766dd09336")
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
!42 = !{!43, !56, !61, !63}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g1_cs", scope: !0, file: !1, line: 52, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !46, line: 29, baseType: !47)
!46 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !46, line: 22, size: 320, elements: !48)
!48 = !{!49, !52, !53, !54, !55}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !47, file: !46, line: 23, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !47, file: !46, line: 24, baseType: !5, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !47, file: !46, line: 25, baseType: !51, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !47, file: !46, line: 26, baseType: !51, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !47, file: !46, line: 27, baseType: !5, size: 32, offset: 256)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "g1_dat", scope: !0, file: !1, line: 36, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 896, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "g2_cs", scope: !0, file: !1, line: 78, type: !45, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g2_dat", scope: !0, file: !1, line: 60, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 960, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 15)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!75 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!76 = distinct !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !1, file: !1, line: 105, type: !77, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !79, !79, !80, !80}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !51, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !51, size: 64, offset: 64)
!87 = !{!88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !120, !121}
!88 = !DILocalVariable(name: "nu", arg: 1, scope: !76, file: !1, line: 105, type: !79)
!89 = !DILocalVariable(name: "x", arg: 2, scope: !76, file: !1, line: 105, type: !79)
!90 = !DILocalVariable(name: "Ynu", arg: 3, scope: !76, file: !1, line: 106, type: !80)
!91 = !DILocalVariable(name: "Ynup1", arg: 4, scope: !76, file: !1, line: 107, type: !80)
!92 = !DILocalVariable(name: "max_iter", scope: !76, file: !1, line: 109, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!94 = !DILocalVariable(name: "half_x", scope: !76, file: !1, line: 111, type: !79)
!95 = !DILocalVariable(name: "ln_half_x", scope: !76, file: !1, line: 112, type: !79)
!96 = !DILocalVariable(name: "half_x_nu", scope: !76, file: !1, line: 113, type: !79)
!97 = !DILocalVariable(name: "pi_nu", scope: !76, file: !1, line: 114, type: !79)
!98 = !DILocalVariable(name: "alpha", scope: !76, file: !1, line: 115, type: !79)
!99 = !DILocalVariable(name: "sigma", scope: !76, file: !1, line: 116, type: !79)
!100 = !DILocalVariable(name: "sinrat", scope: !76, file: !1, line: 117, type: !79)
!101 = !DILocalVariable(name: "sinhrat", scope: !76, file: !1, line: 118, type: !79)
!102 = !DILocalVariable(name: "sinhalf", scope: !76, file: !1, line: 119, type: !79)
!103 = !DILocalVariable(name: "sin_sqr", scope: !76, file: !1, line: 120, type: !79)
!104 = !DILocalVariable(name: "sum0", scope: !76, file: !1, line: 122, type: !51)
!105 = !DILocalVariable(name: "sum1", scope: !76, file: !1, line: 122, type: !51)
!106 = !DILocalVariable(name: "fk", scope: !76, file: !1, line: 123, type: !51)
!107 = !DILocalVariable(name: "pk", scope: !76, file: !1, line: 123, type: !51)
!108 = !DILocalVariable(name: "qk", scope: !76, file: !1, line: 123, type: !51)
!109 = !DILocalVariable(name: "hk", scope: !76, file: !1, line: 123, type: !51)
!110 = !DILocalVariable(name: "ck", scope: !76, file: !1, line: 123, type: !51)
!111 = !DILocalVariable(name: "k", scope: !76, file: !1, line: 124, type: !5)
!112 = !DILocalVariable(name: "stat_iter", scope: !76, file: !1, line: 125, type: !5)
!113 = !DILocalVariable(name: "g_1pnu", scope: !76, file: !1, line: 127, type: !51)
!114 = !DILocalVariable(name: "g_1mnu", scope: !76, file: !1, line: 127, type: !51)
!115 = !DILocalVariable(name: "g1", scope: !76, file: !1, line: 127, type: !51)
!116 = !DILocalVariable(name: "g2", scope: !76, file: !1, line: 127, type: !51)
!117 = !DILocalVariable(name: "stat_g", scope: !76, file: !1, line: 128, type: !5)
!118 = !DILocalVariable(name: "del0", scope: !119, file: !1, line: 140, type: !51)
!119 = distinct !DILexicalBlock(scope: !76, file: !1, line: 139, column: 23)
!120 = !DILocalVariable(name: "del1", scope: !119, file: !1, line: 141, type: !51)
!121 = !DILocalVariable(name: "gk", scope: !119, file: !1, line: 142, type: !51)
!122 = !DILocation(line: 0, scope: !76)
!123 = !DILocation(line: 111, column: 29, scope: !76)
!124 = !DILocation(line: 113, column: 34, scope: !76)
!125 = !DILocation(line: 113, column: 28, scope: !76)
!126 = !DILocation(line: 114, column: 31, scope: !76)
!127 = !DILocation(line: 115, column: 32, scope: !76)
!128 = !DILocation(line: 116, column: 26, scope: !76)
!129 = !DILocation(line: 116, column: 30, scope: !76)
!130 = !DILocation(line: 117, column: 27, scope: !76)
!131 = !DILocation(line: 117, column: 39, scope: !76)
!132 = !DILocation(line: 117, column: 70, scope: !76)
!133 = !DILocation(line: 130, column: 17, scope: !76)
!134 = !DILocation(line: 118, column: 27, scope: !76)
!135 = !DILocation(line: 118, column: 39, scope: !76)
!136 = !DILocation(line: 118, column: 76, scope: !76)
!137 = !DILocation(line: 119, column: 27, scope: !76)
!138 = !DILocation(line: 119, column: 39, scope: !76)
!139 = !DILocation(line: 119, column: 75, scope: !76)
!140 = !DILocation(line: 120, column: 33, scope: !76)
!141 = !DILocation(line: 120, column: 38, scope: !76)
!142 = !DILocation(line: 120, column: 43, scope: !76)
!143 = !DILocation(line: 120, column: 52, scope: !76)
!144 = !DILocalVariable(name: "nu", arg: 1, scope: !145, file: !1, line: 88, type: !79)
!145 = distinct !DISubprogram(name: "gsl_sf_temme_gamma", scope: !1, file: !1, line: 88, type: !146, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!5, !79, !50, !50, !50, !50}
!148 = !{!144, !149, !150, !151, !152, !153, !154, !155, !156}
!149 = !DILocalVariable(name: "g_1pnu", arg: 2, scope: !145, file: !1, line: 88, type: !50)
!150 = !DILocalVariable(name: "g_1mnu", arg: 3, scope: !145, file: !1, line: 88, type: !50)
!151 = !DILocalVariable(name: "g1", arg: 4, scope: !145, file: !1, line: 88, type: !50)
!152 = !DILocalVariable(name: "g2", arg: 5, scope: !145, file: !1, line: 88, type: !50)
!153 = !DILocalVariable(name: "anu", scope: !145, file: !1, line: 90, type: !79)
!154 = !DILocalVariable(name: "x", scope: !145, file: !1, line: 91, type: !79)
!155 = !DILocalVariable(name: "r_g1", scope: !145, file: !1, line: 92, type: !81)
!156 = !DILocalVariable(name: "r_g2", scope: !145, file: !1, line: 93, type: !81)
!157 = !DILocation(line: 0, scope: !145, inlinedAt: !158)
!158 = distinct !DILocation(line: 128, column: 16, scope: !76)
!159 = !DILocation(line: 90, column: 22, scope: !145, inlinedAt: !158)
!160 = !DILocation(line: 91, column: 23, scope: !145, inlinedAt: !158)
!161 = !DILocation(line: 11, column: 19, scope: !162, inlinedAt: !184)
!162 = distinct !DISubprogram(name: "cheb_eval_e", scope: !163, file: !163, line: 3, type: !164, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!163 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!164 = !DISubroutineType(types: !165)
!165 = !{!5, !166, !79, !80}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !182}
!169 = !DILocalVariable(name: "cs", arg: 1, scope: !162, file: !163, line: 3, type: !166)
!170 = !DILocalVariable(name: "x", arg: 2, scope: !162, file: !163, line: 4, type: !79)
!171 = !DILocalVariable(name: "result", arg: 3, scope: !162, file: !163, line: 5, type: !80)
!172 = !DILocalVariable(name: "j", scope: !162, file: !163, line: 7, type: !5)
!173 = !DILocalVariable(name: "d", scope: !162, file: !163, line: 8, type: !51)
!174 = !DILocalVariable(name: "dd", scope: !162, file: !163, line: 9, type: !51)
!175 = !DILocalVariable(name: "y", scope: !162, file: !163, line: 11, type: !51)
!176 = !DILocalVariable(name: "y2", scope: !162, file: !163, line: 12, type: !51)
!177 = !DILocalVariable(name: "e", scope: !162, file: !163, line: 14, type: !51)
!178 = !DILocalVariable(name: "temp", scope: !179, file: !163, line: 17, type: !51)
!179 = distinct !DILexicalBlock(scope: !180, file: !163, line: 16, column: 33)
!180 = distinct !DILexicalBlock(scope: !181, file: !163, line: 16, column: 3)
!181 = distinct !DILexicalBlock(scope: !162, file: !163, line: 16, column: 3)
!182 = !DILocalVariable(name: "temp", scope: !183, file: !163, line: 24, type: !51)
!183 = distinct !DILexicalBlock(scope: !162, file: !163, line: 23, column: 3)
!184 = distinct !DILocation(line: 94, column: 3, scope: !145, inlinedAt: !158)
!185 = !{}
!186 = !DILocation(line: 0, scope: !162, inlinedAt: !184)
!187 = !DILocation(line: 11, column: 30, scope: !162, inlinedAt: !184)
!188 = !DILocation(line: 11, column: 39, scope: !162, inlinedAt: !184)
!189 = !DILocation(line: 0, scope: !179, inlinedAt: !184)
!190 = !DILocation(line: 0, scope: !183, inlinedAt: !184)
!191 = !DILocation(line: 0, scope: !162, inlinedAt: !192)
!192 = distinct !DILocation(line: 95, column: 3, scope: !145, inlinedAt: !158)
!193 = !DILocation(line: 11, column: 30, scope: !162, inlinedAt: !192)
!194 = !DILocation(line: 11, column: 39, scope: !162, inlinedAt: !192)
!195 = !DILocation(line: 12, column: 19, scope: !162, inlinedAt: !192)
!196 = !DILocation(line: 12, column: 19, scope: !162, inlinedAt: !184)
!197 = !DILocation(line: 18, column: 11, scope: !179, inlinedAt: !184)
!198 = !DILocation(line: 18, column: 19, scope: !179, inlinedAt: !184)
!199 = !DILocation(line: 18, column: 11, scope: !179, inlinedAt: !192)
!200 = !DILocation(line: 0, scope: !179, inlinedAt: !192)
!201 = !DILocation(line: 18, column: 19, scope: !179, inlinedAt: !192)
!202 = !DILocation(line: 25, column: 10, scope: !183, inlinedAt: !184)
!203 = !DILocation(line: 25, column: 18, scope: !183, inlinedAt: !184)
!204 = !DILocation(line: 25, column: 10, scope: !183, inlinedAt: !192)
!205 = !DILocation(line: 0, scope: !183, inlinedAt: !192)
!206 = !DILocation(line: 25, column: 18, scope: !183, inlinedAt: !192)
!207 = !DILocation(line: 98, column: 32, scope: !145, inlinedAt: !158)
!208 = !DILocation(line: 98, column: 16, scope: !145, inlinedAt: !158)
!209 = !DILocation(line: 99, column: 16, scope: !145, inlinedAt: !158)
!210 = !DILocation(line: 130, column: 40, scope: !76)
!211 = !DILocation(line: 130, column: 53, scope: !76)
!212 = !DILocation(line: 130, column: 63, scope: !76)
!213 = !DILocation(line: 130, column: 26, scope: !76)
!214 = !DILocation(line: 131, column: 17, scope: !76)
!215 = !DILocation(line: 131, column: 28, scope: !76)
!216 = !DILocation(line: 132, column: 17, scope: !76)
!217 = !DILocation(line: 132, column: 28, scope: !76)
!218 = !DILocation(line: 136, column: 23, scope: !76)
!219 = !DILocation(line: 139, column: 3, scope: !76)
!220 = !DILocation(line: 139, column: 11, scope: !76)
!221 = !DILocation(line: 143, column: 6, scope: !119)
!222 = !DILocation(line: 144, column: 12, scope: !119)
!223 = !DILocation(line: 144, column: 13, scope: !119)
!224 = !DILocation(line: 144, column: 22, scope: !119)
!225 = !DILocation(line: 144, column: 30, scope: !119)
!226 = !DILocation(line: 144, column: 29, scope: !119)
!227 = !DILocation(line: 144, column: 27, scope: !119)
!228 = !DILocation(line: 145, column: 25, scope: !119)
!229 = !DILocation(line: 145, column: 8, scope: !119)
!230 = !DILocation(line: 146, column: 8, scope: !119)
!231 = !DILocation(line: 147, column: 8, scope: !119)
!232 = !DILocation(line: 148, column: 24, scope: !119)
!233 = !DILocation(line: 149, column: 11, scope: !119)
!234 = !DILocation(line: 0, scope: !119)
!235 = !DILocation(line: 149, column: 13, scope: !119)
!236 = !DILocation(line: 150, column: 15, scope: !119)
!237 = !DILocation(line: 151, column: 15, scope: !119)
!238 = !DILocation(line: 153, column: 10, scope: !119)
!239 = !DILocation(line: 154, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !119, file: !1, line: 154, column: 8)
!241 = !DILocation(line: 154, column: 32, scope: !240)
!242 = !DILocation(line: 154, column: 24, scope: !240)
!243 = !DILocation(line: 154, column: 43, scope: !240)
!244 = !DILocation(line: 154, column: 19, scope: !240)
!245 = !DILocation(line: 162, column: 19, scope: !76)
!246 = !DILocation(line: 157, column: 16, scope: !76)
!247 = !DILocation(line: 157, column: 14, scope: !76)
!248 = !{!249, !250, i64 0}
!249 = !{!"gsl_sf_result_struct", !250, i64 0, !250, i64 8}
!250 = !{!"double", !251, i64 0}
!251 = !{!"omnipotent char", !252, i64 0}
!252 = !{!"Simple C/C++ TBAA"}
!253 = !DILocation(line: 158, column: 27, scope: !76)
!254 = !DILocation(line: 158, column: 26, scope: !76)
!255 = !DILocation(line: 158, column: 30, scope: !76)
!256 = !DILocation(line: 158, column: 50, scope: !76)
!257 = !DILocation(line: 158, column: 48, scope: !76)
!258 = !DILocation(line: 158, column: 8, scope: !76)
!259 = !DILocation(line: 158, column: 14, scope: !76)
!260 = !{!249, !250, i64 8}
!261 = !DILocation(line: 159, column: 22, scope: !76)
!262 = !DILocation(line: 159, column: 27, scope: !76)
!263 = !DILocation(line: 159, column: 14, scope: !76)
!264 = !DILocation(line: 160, column: 50, scope: !76)
!265 = !DILocation(line: 160, column: 48, scope: !76)
!266 = !DILocation(line: 160, column: 10, scope: !76)
!267 = !DILocation(line: 160, column: 14, scope: !76)
!268 = !DILocation(line: 163, column: 10, scope: !76)
!269 = !DILocation(line: 163, column: 3, scope: !76)
!270 = !DISubprogram(name: "log", scope: !271, file: !271, line: 104, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!272 = !DISubroutineType(types: !273)
!273 = !{!51, !51}
!274 = !DISubprogram(name: "exp", scope: !271, file: !271, line: 95, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubprogram(name: "sin", scope: !271, file: !271, line: 64, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubprogram(name: "sinh", scope: !271, file: !271, line: 73, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubprogram(name: "cosh", scope: !271, file: !271, line: 71, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = distinct !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !1, file: !1, line: 168, type: !279, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!5, !79, !79, !50, !50, !50}
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !312}
!282 = !DILocalVariable(name: "nu", arg: 1, scope: !278, file: !1, line: 168, type: !79)
!283 = !DILocalVariable(name: "x", arg: 2, scope: !278, file: !1, line: 168, type: !79)
!284 = !DILocalVariable(name: "K_nu", arg: 3, scope: !278, file: !1, line: 169, type: !50)
!285 = !DILocalVariable(name: "K_nup1", arg: 4, scope: !278, file: !1, line: 169, type: !50)
!286 = !DILocalVariable(name: "Kp_nu", arg: 5, scope: !278, file: !1, line: 169, type: !50)
!287 = !DILocalVariable(name: "max_iter", scope: !278, file: !1, line: 171, type: !93)
!288 = !DILocalVariable(name: "half_x", scope: !278, file: !1, line: 173, type: !79)
!289 = !DILocalVariable(name: "ln_half_x", scope: !278, file: !1, line: 174, type: !79)
!290 = !DILocalVariable(name: "half_x_nu", scope: !278, file: !1, line: 175, type: !79)
!291 = !DILocalVariable(name: "pi_nu", scope: !278, file: !1, line: 176, type: !79)
!292 = !DILocalVariable(name: "sigma", scope: !278, file: !1, line: 177, type: !79)
!293 = !DILocalVariable(name: "sinrat", scope: !278, file: !1, line: 178, type: !79)
!294 = !DILocalVariable(name: "sinhrat", scope: !278, file: !1, line: 179, type: !79)
!295 = !DILocalVariable(name: "ex", scope: !278, file: !1, line: 180, type: !79)
!296 = !DILocalVariable(name: "sum0", scope: !278, file: !1, line: 182, type: !51)
!297 = !DILocalVariable(name: "sum1", scope: !278, file: !1, line: 182, type: !51)
!298 = !DILocalVariable(name: "fk", scope: !278, file: !1, line: 183, type: !51)
!299 = !DILocalVariable(name: "pk", scope: !278, file: !1, line: 183, type: !51)
!300 = !DILocalVariable(name: "qk", scope: !278, file: !1, line: 183, type: !51)
!301 = !DILocalVariable(name: "hk", scope: !278, file: !1, line: 183, type: !51)
!302 = !DILocalVariable(name: "ck", scope: !278, file: !1, line: 183, type: !51)
!303 = !DILocalVariable(name: "k", scope: !278, file: !1, line: 184, type: !5)
!304 = !DILocalVariable(name: "stat_iter", scope: !278, file: !1, line: 185, type: !5)
!305 = !DILocalVariable(name: "g_1pnu", scope: !278, file: !1, line: 187, type: !51)
!306 = !DILocalVariable(name: "g_1mnu", scope: !278, file: !1, line: 187, type: !51)
!307 = !DILocalVariable(name: "g1", scope: !278, file: !1, line: 187, type: !51)
!308 = !DILocalVariable(name: "g2", scope: !278, file: !1, line: 187, type: !51)
!309 = !DILocalVariable(name: "stat_g", scope: !278, file: !1, line: 188, type: !5)
!310 = !DILocalVariable(name: "del0", scope: !311, file: !1, line: 198, type: !51)
!311 = distinct !DILexicalBlock(scope: !278, file: !1, line: 197, column: 23)
!312 = !DILocalVariable(name: "del1", scope: !311, file: !1, line: 199, type: !51)
!313 = !DILocation(line: 0, scope: !278)
!314 = !DILocation(line: 173, column: 32, scope: !278)
!315 = !DILocation(line: 175, column: 34, scope: !278)
!316 = !DILocation(line: 175, column: 28, scope: !278)
!317 = !DILocation(line: 176, column: 31, scope: !278)
!318 = !DILocation(line: 177, column: 26, scope: !278)
!319 = !DILocation(line: 177, column: 30, scope: !278)
!320 = !DILocation(line: 178, column: 27, scope: !278)
!321 = !DILocation(line: 178, column: 39, scope: !278)
!322 = !DILocation(line: 178, column: 70, scope: !278)
!323 = !DILocation(line: 179, column: 27, scope: !278)
!324 = !DILocation(line: 179, column: 39, scope: !278)
!325 = !DILocation(line: 179, column: 76, scope: !278)
!326 = !DILocation(line: 180, column: 21, scope: !278)
!327 = !DILocation(line: 0, scope: !145, inlinedAt: !328)
!328 = distinct !DILocation(line: 188, column: 16, scope: !278)
!329 = !DILocation(line: 90, column: 22, scope: !145, inlinedAt: !328)
!330 = !DILocation(line: 91, column: 23, scope: !145, inlinedAt: !328)
!331 = !DILocation(line: 11, column: 19, scope: !162, inlinedAt: !332)
!332 = distinct !DILocation(line: 94, column: 3, scope: !145, inlinedAt: !328)
!333 = !DILocation(line: 0, scope: !162, inlinedAt: !332)
!334 = !DILocation(line: 11, column: 30, scope: !162, inlinedAt: !332)
!335 = !DILocation(line: 11, column: 39, scope: !162, inlinedAt: !332)
!336 = !DILocation(line: 0, scope: !179, inlinedAt: !332)
!337 = !DILocation(line: 0, scope: !183, inlinedAt: !332)
!338 = !DILocation(line: 0, scope: !162, inlinedAt: !339)
!339 = distinct !DILocation(line: 95, column: 3, scope: !145, inlinedAt: !328)
!340 = !DILocation(line: 11, column: 30, scope: !162, inlinedAt: !339)
!341 = !DILocation(line: 11, column: 39, scope: !162, inlinedAt: !339)
!342 = !DILocation(line: 12, column: 19, scope: !162, inlinedAt: !339)
!343 = !DILocation(line: 12, column: 19, scope: !162, inlinedAt: !332)
!344 = !DILocation(line: 18, column: 11, scope: !179, inlinedAt: !332)
!345 = !DILocation(line: 18, column: 19, scope: !179, inlinedAt: !332)
!346 = !DILocation(line: 18, column: 11, scope: !179, inlinedAt: !339)
!347 = !DILocation(line: 0, scope: !179, inlinedAt: !339)
!348 = !DILocation(line: 18, column: 19, scope: !179, inlinedAt: !339)
!349 = !DILocation(line: 25, column: 10, scope: !183, inlinedAt: !332)
!350 = !DILocation(line: 25, column: 18, scope: !183, inlinedAt: !332)
!351 = !DILocation(line: 25, column: 10, scope: !183, inlinedAt: !339)
!352 = !DILocation(line: 0, scope: !183, inlinedAt: !339)
!353 = !DILocation(line: 25, column: 18, scope: !183, inlinedAt: !339)
!354 = !DILocation(line: 98, column: 32, scope: !145, inlinedAt: !328)
!355 = !DILocation(line: 98, column: 16, scope: !145, inlinedAt: !328)
!356 = !DILocation(line: 99, column: 16, scope: !145, inlinedAt: !328)
!357 = !DILocation(line: 190, column: 29, scope: !278)
!358 = !DILocation(line: 190, column: 42, scope: !278)
!359 = !DILocation(line: 190, column: 52, scope: !278)
!360 = !DILocation(line: 190, column: 15, scope: !278)
!361 = !DILocation(line: 191, column: 11, scope: !278)
!362 = !DILocation(line: 191, column: 22, scope: !278)
!363 = !DILocation(line: 192, column: 11, scope: !278)
!364 = !DILocation(line: 192, column: 22, scope: !278)
!365 = !DILocation(line: 197, column: 3, scope: !278)
!366 = !DILocation(line: 197, column: 11, scope: !278)
!367 = !DILocation(line: 200, column: 6, scope: !311)
!368 = !DILocation(line: 201, column: 12, scope: !311)
!369 = !DILocation(line: 201, column: 13, scope: !311)
!370 = !DILocation(line: 201, column: 22, scope: !311)
!371 = !DILocation(line: 201, column: 30, scope: !311)
!372 = !DILocation(line: 201, column: 29, scope: !311)
!373 = !DILocation(line: 201, column: 27, scope: !311)
!374 = !DILocation(line: 202, column: 24, scope: !311)
!375 = !DILocation(line: 202, column: 8, scope: !311)
!376 = !DILocation(line: 203, column: 8, scope: !311)
!377 = !DILocation(line: 204, column: 8, scope: !311)
!378 = !DILocation(line: 205, column: 11, scope: !311)
!379 = !DILocation(line: 205, column: 13, scope: !311)
!380 = !DILocation(line: 206, column: 15, scope: !311)
!381 = !DILocation(line: 0, scope: !311)
!382 = !DILocation(line: 207, column: 15, scope: !311)
!383 = !DILocation(line: 209, column: 10, scope: !311)
!384 = !DILocation(line: 210, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !311, file: !1, line: 210, column: 8)
!386 = !DILocation(line: 210, column: 25, scope: !385)
!387 = !DILocation(line: 210, column: 24, scope: !385)
!388 = !DILocation(line: 210, column: 35, scope: !385)
!389 = !DILocation(line: 210, column: 19, scope: !385)
!390 = !DILocation(line: 213, column: 18, scope: !278)
!391 = !DILocation(line: 213, column: 11, scope: !278)
!392 = !{!250, !250, i64 0}
!393 = !DILocation(line: 214, column: 18, scope: !278)
!394 = !DILocation(line: 214, column: 23, scope: !278)
!395 = !DILocation(line: 214, column: 26, scope: !278)
!396 = !DILocation(line: 214, column: 11, scope: !278)
!397 = !DILocation(line: 215, column: 27, scope: !278)
!398 = !DILocation(line: 215, column: 32, scope: !278)
!399 = !DILocation(line: 215, column: 30, scope: !278)
!400 = !DILocation(line: 215, column: 11, scope: !278)
!401 = !DILocation(line: 217, column: 19, scope: !278)
!402 = !DILocation(line: 218, column: 10, scope: !278)
!403 = !DILocation(line: 218, column: 3, scope: !278)
