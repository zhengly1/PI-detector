; ModuleID = 'trig.ll'
source_filename = "trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"trig.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !17
@.str.6 = private unnamed_addr constant [30 x i8] c"gsl_sf_hypot_e(x, y, &result)\00", align 1, !dbg !22
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_lnsinh_e(x, &result)\00", align 1, !dbg !27
@.str.8 = private unnamed_addr constant [28 x i8] c"gsl_sf_lncosh_e(x, &result)\00", align 1, !dbg !32
@.str.9 = private unnamed_addr constant [38 x i8] c"gsl_sf_angle_restrict_symm_e(&result)\00", align 1, !dbg !34
@.str.10 = private unnamed_addr constant [37 x i8] c"gsl_sf_angle_restrict_pos_e(&result)\00", align 1, !dbg !39
@sinc_data = internal unnamed_addr constant [17 x double] [double 0x3FF2236C458DF176, double 0xBFE10BB1D1FADB31, double 0xBFB17BA739316447, double 0x3FA11A49A6A2DE0A, double 0x3F585764A3A18F58, double 0xBF4810C5BEB07E26, double 0xBEF1A7B93C444C96, double 0x3EE18836CC9A4A27, double 0x3E7F826FAA026E58, double 0xBE6F5C50282A7513, double 0xBE030FC0EBFC7D02, double 0x3DF2FF14EAC02F28, double 0x3D80AC013C73A0B7, double 0xBD70A0F82E42094C, double -4.900690e-15, double 0x3CE606AB56F17E69, double 9.925000e-18], align 16, !dbg !44

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_sin_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !138 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !150, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0x3FE921FB40000000, metadata !151, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata double 0x3E64442D00000000, metadata !154, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata double 0x3CE8469898CC5170, metadata !155, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression()), !dbg !175
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !176
  tail call void @llvm.dbg.value(metadata double %3, metadata !157, metadata !DIExpression()), !dbg !175
  %4 = fcmp olt double %3, 0x3F20000000000000, !dbg !177
  br i1 %4, label %5, label %14, !dbg !178

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !179
  tail call void @llvm.dbg.value(metadata double %6, metadata !158, metadata !DIExpression()), !dbg !180
  %7 = fdiv double %6, 6.000000e+00, !dbg !181
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !182
  %8 = fmul double %handler_result, %0, !dbg !182
  store double %8, ptr %1, align 8, !dbg !183, !tbaa !184
  %9 = fmul double %6, %0, !dbg !189
  %10 = fmul double %6, %9, !dbg !190
  %11 = fdiv double %10, 1.000000e+02, !dbg !191
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !192
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !193
  store double %12, ptr %13, align 8, !dbg !194, !tbaa !195
  br label %100

14:                                               ; preds = %2
  %15 = fcmp oge double %0, 0.000000e+00, !dbg !196
  %16 = select i1 %15, double 1.000000e+00, double -1.000000e+00, !dbg !196
  tail call void @llvm.dbg.value(metadata double %16, metadata !156, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata double %16, metadata !161, metadata !DIExpression()), !dbg !197
  %17 = fdiv double %3, 0x3FE921FB54442D18, !dbg !198
  %18 = tail call double @llvm.floor.f64(double %17), !dbg !199
  tail call void @llvm.dbg.value(metadata double %18, metadata !163, metadata !DIExpression()), !dbg !197
  %19 = tail call double @ldexp(double noundef %18, i32 noundef -3) #8, !dbg !200
  %20 = tail call double @llvm.floor.f64(double %19), !dbg !201
  %21 = tail call double @ldexp(double noundef %20, i32 noundef 3) #8, !dbg !202
  %handler_result1 = call double @fSubHandlerDouble(double %18, double %21), !dbg !203
  %22 = fptosi double %handler_result1 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !164, metadata !DIExpression()), !dbg !197
  %23 = and i32 %22, 1, !dbg !204
  %24 = icmp eq i32 %23, 0, !dbg !204
  %25 = add nsw i32 %22, 1, !dbg !206
  %26 = and i32 %25, 6, !dbg !206
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !206
  %27 = select i1 %24, double %18, double %handler_result2, !dbg !206
  %28 = select i1 %24, i32 %22, i32 %26, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !164, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %27, metadata !163, metadata !DIExpression()), !dbg !197
  %29 = icmp sgt i32 %28, 3, !dbg !207
  %30 = add nsw i32 %28, -4, !dbg !209
  %31 = fneg double %16, !dbg !209
  %32 = select i1 %29, i32 %30, i32 %28, !dbg !209
  %33 = select i1 %29, double %31, double %16, !dbg !209
  tail call void @llvm.dbg.value(metadata double %33, metadata !161, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !164, metadata !DIExpression()), !dbg !197
  %34 = fmul double %27, 0x3FE921FB40000000, !dbg !210
  %handler_result3 = call double @fSubHandlerDouble(double %3, double %34), !dbg !211
  %35 = fmul double %27, 0x3E64442D00000000, !dbg !211
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %35), !dbg !212
  %36 = fmul double %27, 0x3CE8469898CC5170, !dbg !212
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %36), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !166, metadata !DIExpression()), !dbg !197
  %37 = icmp eq i32 %32, 0, !dbg !213
  %38 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !214
  %39 = fmul double %38, 8.000000e+00, !dbg !214
  %40 = fdiv double %39, 0x400921FB54442D18, !dbg !214
  %handler_result6 = call double @fAddHandlerDouble(double %40, double -1.000000e+00), !dbg !215
  %41 = fmul double %handler_result6, 2.000000e+00, !dbg !215
  %handler_result7 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !238
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double -1.000000e+00), !dbg !239
  %42 = fmul double %handler_result8, 5.000000e-01, !dbg !239
  call void @llvm.dbg.value(metadata double %42, metadata !229, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %42, metadata !229, metadata !DIExpression()), !dbg !242
  %43 = fmul double %42, 2.000000e+00, !dbg !244
  call void @llvm.dbg.value(metadata double %43, metadata !230, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %43, metadata !230, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !242
  br i1 %37, label %44, label %60, !dbg !245

44:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 11, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !246
  %45 = fmul double %43, 0.000000e+00, !dbg !247
  %handler_result9 = call double @fAddHandlerDouble(double %45, double 0xBC01720EAB8B78D9), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !232, metadata !DIExpression()), !dbg !246
  %46 = fmul double %43, %handler_result9, !dbg !247
  %handler_result10 = call double @fAddHandlerDouble(double %46, double 0x3C7DF529F4EE609B), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !232, metadata !DIExpression()), !dbg !246
  %47 = fmul double %43, %handler_result10, !dbg !247
  %handler_result11 = call double @fSubHandlerDouble(double %47, double %handler_result9), !dbg !248
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3CC359222F7327B9), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !232, metadata !DIExpression()), !dbg !246
  %48 = fmul double %43, %handler_result12, !dbg !247
  %handler_result13 = call double @fSubHandlerDouble(double %48, double %handler_result10), !dbg !248
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0xBD3DB5727EAFF830), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !232, metadata !DIExpression()), !dbg !246
  %49 = fmul double %43, %handler_result14, !dbg !247
  %handler_result15 = call double @fSubHandlerDouble(double %49, double %handler_result12), !dbg !248
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0xBD7E9CA84CF05BCA), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !232, metadata !DIExpression()), !dbg !246
  %50 = fmul double %43, %handler_result16, !dbg !247
  %handler_result17 = call double @fSubHandlerDouble(double %50, double %handler_result14), !dbg !248
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 0x3DF4CCB1745F7AEF), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !232, metadata !DIExpression()), !dbg !246
  %51 = fmul double %43, %handler_result18, !dbg !247
  %handler_result19 = call double @fSubHandlerDouble(double %51, double %handler_result16), !dbg !248
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0x3E30035896CBFD12), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !232, metadata !DIExpression()), !dbg !246
  %52 = fmul double %43, %handler_result20, !dbg !247
  %handler_result21 = call double @fSubHandlerDouble(double %52, double %handler_result18), !dbg !248
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0xBEA3192DC15885EE), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !232, metadata !DIExpression()), !dbg !246
  %53 = fmul double %43, %handler_result22, !dbg !247
  %handler_result23 = call double @fSubHandlerDouble(double %53, double %handler_result20), !dbg !248
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0xBED3806BE0E5860C), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !232, metadata !DIExpression()), !dbg !246
  %54 = fmul double %43, %handler_result24, !dbg !247
  %handler_result25 = call double @fSubHandlerDouble(double %54, double %handler_result22), !dbg !248
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3F4484E2F770F8F9), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !232, metadata !DIExpression()), !dbg !246
  %55 = fmul double %43, %handler_result26, !dbg !247
  %handler_result27 = call double @fSubHandlerDouble(double %55, double %handler_result24), !dbg !248
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3F64C95F8909975F), !dbg !249
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !228, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !236, metadata !DIExpression()), !dbg !250
  %56 = fmul double %42, %handler_result28, !dbg !249
  %handler_result29 = call double @fSubHandlerDouble(double %56, double %handler_result26), !dbg !251
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0xBFC516D6ED5A909E), !dbg !252
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !227, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !253
  tail call void @llvm.dbg.value(metadata double poison, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !197
  %57 = fmul double %handler_result5, %handler_result5, !dbg !252
  %58 = fmul double %57, %handler_result30, !dbg !254
  %handler_result31 = call double @fAddHandlerDouble(double %58, double 1.000000e+00), !dbg !255
  %59 = fmul double %handler_result5, %handler_result31, !dbg !255
  br label %77, !dbg !256

60:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !257
  %61 = fmul double %43, 0.000000e+00, !dbg !258
  %handler_result32 = call double @fAddHandlerDouble(double %61, double 0xBC513B0F0BC54B44), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !232, metadata !DIExpression()), !dbg !257
  %62 = fmul double %43, %handler_result32, !dbg !258
  %handler_result33 = call double @fAddHandlerDouble(double %62, double 0xBC9629F4559019C6), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !232, metadata !DIExpression()), !dbg !257
  %63 = fmul double %43, %handler_result33, !dbg !258
  %handler_result34 = call double @fSubHandlerDouble(double %63, double %handler_result32), !dbg !259
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 0x3D13F154A7D83B0B), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !232, metadata !DIExpression()), !dbg !257
  %64 = fmul double %43, %handler_result35, !dbg !258
  %handler_result36 = call double @fSubHandlerDouble(double %64, double %handler_result33), !dbg !259
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double 0x3D5475A7A2BEFBF3), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !232, metadata !DIExpression()), !dbg !257
  %65 = fmul double %43, %handler_result37, !dbg !258
  %handler_result38 = call double @fSubHandlerDouble(double %65, double %handler_result35), !dbg !259
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 0xBDD0C261C93AC254), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !232, metadata !DIExpression()), !dbg !257
  %66 = fmul double %43, %handler_result39, !dbg !258
  %handler_result40 = call double @fSubHandlerDouble(double %66, double %handler_result37), !dbg !259
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0xBE09B0EA9D1E67BC), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !232, metadata !DIExpression()), !dbg !257
  %67 = fmul double %43, %handler_result41, !dbg !258
  %handler_result42 = call double @fSubHandlerDouble(double %67, double %handler_result39), !dbg !259
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double 0x3E833C6A8FD9C1B5), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !232, metadata !DIExpression()), !dbg !257
  %68 = fmul double %43, %handler_result43, !dbg !258
  %handler_result44 = call double @fSubHandlerDouble(double %68, double %handler_result41), !dbg !259
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double 0x3EB38F2B9C42CF35), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !232, metadata !DIExpression()), !dbg !257
  %69 = fmul double %43, %handler_result45, !dbg !258
  %handler_result46 = call double @fSubHandlerDouble(double %69, double %handler_result43), !dbg !259
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double 0xBF2B89555B0F99C2), !dbg !258
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !232, metadata !DIExpression()), !dbg !257
  %70 = fmul double %43, %handler_result47, !dbg !258
  %handler_result48 = call double @fSubHandlerDouble(double %70, double %handler_result45), !dbg !259
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double 0xBF4BCDF9CE308462), !dbg !260
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !236, metadata !DIExpression()), !dbg !261
  %71 = fmul double %42, %handler_result49, !dbg !260
  %handler_result50 = call double @fSubHandlerDouble(double %71, double %handler_result47), !dbg !262
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3FB52B8F3111FF6A), !dbg !263
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !264
  tail call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !197
  %72 = fmul double %handler_result5, 5.000000e-01, !dbg !263
  %73 = fmul double %handler_result5, %72, !dbg !265
  %74 = fmul double %handler_result5, %handler_result5, !dbg !266
  %75 = fmul double %74, %handler_result51, !dbg !267
  %handler_result52 = call double @fSubHandlerDouble(double 1.000000e+00, double %75), !dbg !268
  %76 = fmul double %73, %handler_result52, !dbg !268
  %handler_result53 = call double @fSubHandlerDouble(double 1.000000e+00, double %76)
  br label %77

77:                                               ; preds = %60, %44
  %78 = phi double [ %handler_result53, %60 ], [ %59, %44 ], !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !197
  %79 = fmul double %33, %78, !dbg !269
  store double %79, ptr %1, align 8, !dbg !269, !tbaa !184
  %80 = fcmp ogt double %3, 0x4330000000000000, !dbg !270
  br i1 %80, label %81, label %84, !dbg !272

81:                                               ; preds = %77
  %82 = tail call double @llvm.fabs.f64(double %79), !dbg !273
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !275
  store double %82, ptr %83, align 8, !dbg !276, !tbaa !195
  br label %100, !dbg !277

84:                                               ; preds = %77
  %85 = fcmp ogt double %3, 0x41F9000000000000, !dbg !278
  br i1 %85, label %86, label %92, !dbg !280

86:                                               ; preds = %84
  %87 = fmul double %3, 2.000000e+00, !dbg !281
  %88 = fmul double %87, 0x3CB0000000000000, !dbg !283
  %89 = tail call double @llvm.fabs.f64(double %79), !dbg !284
  %90 = fmul double %88, %89, !dbg !285
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !286
  store double %90, ptr %91, align 8, !dbg !287, !tbaa !195
  br label %100, !dbg !288

92:                                               ; preds = %84
  %93 = fcmp ogt double %3, 0x415999999999999A, !dbg !289
  %94 = tail call double @llvm.fabs.f64(double %79), !dbg !291
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !291
  br i1 %93, label %96, label %98, !dbg !292

96:                                               ; preds = %92
  %97 = fmul double %94, 0x3E60000000000000, !dbg !293
  store double %97, ptr %95, align 8, !dbg !295, !tbaa !195
  br label %100, !dbg !296

98:                                               ; preds = %92
  %99 = fmul double %94, 0x3CC0000000000000, !dbg !297
  store double %99, ptr %95, align 8, !dbg !299, !tbaa !195
  br label %100

100:                                              ; preds = %98, %96, %86, %81, %5
  ret i32 0, !dbg !300
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !301 double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_cos_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !305 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !307, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !308, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FE921FB40000000, metadata !309, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double 0x3E64442D00000000, metadata !311, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double 0x3CE8469898CC5170, metadata !312, metadata !DIExpression()), !dbg !331
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !332
  tail call void @llvm.dbg.value(metadata double %3, metadata !313, metadata !DIExpression()), !dbg !331
  %4 = fcmp olt double %3, 0x3F20000000000000, !dbg !333
  br i1 %4, label %5, label %12, !dbg !334

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !335
  tail call void @llvm.dbg.value(metadata double %6, metadata !314, metadata !DIExpression()), !dbg !336
  %7 = fmul double %6, 5.000000e-01, !dbg !337
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !338
  store double %handler_result, ptr %1, align 8, !dbg !338, !tbaa !184
  %8 = fmul double %6, %6, !dbg !339
  %9 = fdiv double %8, 1.200000e+01, !dbg !340
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !341
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !342
  store double %10, ptr %11, align 8, !dbg !343, !tbaa !195
  br label %98

12:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !317, metadata !DIExpression()), !dbg !344
  %13 = fdiv double %3, 0x3FE921FB54442D18, !dbg !345
  %14 = tail call double @llvm.floor.f64(double %13), !dbg !346
  tail call void @llvm.dbg.value(metadata double %14, metadata !319, metadata !DIExpression()), !dbg !344
  %15 = tail call double @ldexp(double noundef %14, i32 noundef -3) #8, !dbg !347
  %16 = tail call double @llvm.floor.f64(double %15), !dbg !348
  %17 = tail call double @ldexp(double noundef %16, i32 noundef 3) #8, !dbg !349
  %handler_result1 = call double @fSubHandlerDouble(double %14, double %17), !dbg !350
  %18 = fptosi double %handler_result1 to i32, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !320, metadata !DIExpression()), !dbg !344
  %19 = and i32 %18, 1, !dbg !351
  %20 = icmp eq i32 %19, 0, !dbg !351
  %21 = add nsw i32 %18, 1, !dbg !353
  %22 = and i32 %21, 6, !dbg !353
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !353
  %23 = select i1 %20, double %14, double %handler_result2, !dbg !353
  %24 = select i1 %20, i32 %18, i32 %22, !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !320, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double %23, metadata !319, metadata !DIExpression()), !dbg !344
  %25 = icmp sgt i32 %24, 3, !dbg !354
  %26 = add nsw i32 %24, -4, !dbg !356
  %27 = select i1 %25, i32 %26, i32 %24, !dbg !356
  %28 = select i1 %25, double -1.000000e+00, double 1.000000e+00, !dbg !356
  tail call void @llvm.dbg.value(metadata double %28, metadata !317, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !320, metadata !DIExpression()), !dbg !344
  %29 = icmp sgt i32 %27, 1, !dbg !357
  %30 = fneg double %28, !dbg !359
  %31 = select i1 %29, double %30, double %28, !dbg !359
  tail call void @llvm.dbg.value(metadata double %31, metadata !317, metadata !DIExpression()), !dbg !344
  %32 = fmul double %23, 0x3FE921FB40000000, !dbg !360
  %handler_result3 = call double @fSubHandlerDouble(double %3, double %32), !dbg !361
  %33 = fmul double %23, 0x3E64442D00000000, !dbg !361
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %33), !dbg !362
  %34 = fmul double %23, 0x3CE8469898CC5170, !dbg !362
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %34), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !322, metadata !DIExpression()), !dbg !344
  %35 = icmp eq i32 %27, 0, !dbg !363
  %36 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !364
  %37 = fmul double %36, 8.000000e+00, !dbg !364
  %38 = fdiv double %37, 0x400921FB54442D18, !dbg !364
  %handler_result6 = call double @fAddHandlerDouble(double %38, double -1.000000e+00), !dbg !365
  %39 = fmul double %handler_result6, 2.000000e+00, !dbg !365
  %handler_result7 = call double @fAddHandlerDouble(double %39, double 1.000000e+00), !dbg !366
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double -1.000000e+00), !dbg !367
  %40 = fmul double %handler_result8, 5.000000e-01, !dbg !367
  call void @llvm.dbg.value(metadata double %40, metadata !229, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %40, metadata !229, metadata !DIExpression()), !dbg !370
  %41 = fmul double %40, 2.000000e+00, !dbg !372
  call void @llvm.dbg.value(metadata double %41, metadata !230, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %41, metadata !230, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !370
  br i1 %35, label %42, label %59, !dbg !373

42:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !374
  %43 = fmul double %41, 0.000000e+00, !dbg !375
  %handler_result9 = call double @fAddHandlerDouble(double %43, double 0xBC513B0F0BC54B44), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !232, metadata !DIExpression()), !dbg !374
  %44 = fmul double %41, %handler_result9, !dbg !375
  %handler_result10 = call double @fAddHandlerDouble(double %44, double 0xBC9629F4559019C6), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !232, metadata !DIExpression()), !dbg !374
  %45 = fmul double %41, %handler_result10, !dbg !375
  %handler_result11 = call double @fSubHandlerDouble(double %45, double %handler_result9), !dbg !376
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3D13F154A7D83B0B), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !232, metadata !DIExpression()), !dbg !374
  %46 = fmul double %41, %handler_result12, !dbg !375
  %handler_result13 = call double @fSubHandlerDouble(double %46, double %handler_result10), !dbg !376
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3D5475A7A2BEFBF3), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !232, metadata !DIExpression()), !dbg !374
  %47 = fmul double %41, %handler_result14, !dbg !375
  %handler_result15 = call double @fSubHandlerDouble(double %47, double %handler_result12), !dbg !376
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0xBDD0C261C93AC254), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !232, metadata !DIExpression()), !dbg !374
  %48 = fmul double %41, %handler_result16, !dbg !375
  %handler_result17 = call double @fSubHandlerDouble(double %48, double %handler_result14), !dbg !376
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 0xBE09B0EA9D1E67BC), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !232, metadata !DIExpression()), !dbg !374
  %49 = fmul double %41, %handler_result18, !dbg !375
  %handler_result19 = call double @fSubHandlerDouble(double %49, double %handler_result16), !dbg !376
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0x3E833C6A8FD9C1B5), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !232, metadata !DIExpression()), !dbg !374
  %50 = fmul double %41, %handler_result20, !dbg !375
  %handler_result21 = call double @fSubHandlerDouble(double %50, double %handler_result18), !dbg !376
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0x3EB38F2B9C42CF35), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !232, metadata !DIExpression()), !dbg !374
  %51 = fmul double %41, %handler_result22, !dbg !375
  %handler_result23 = call double @fSubHandlerDouble(double %51, double %handler_result20), !dbg !376
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0xBF2B89555B0F99C2), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !232, metadata !DIExpression()), !dbg !374
  %52 = fmul double %41, %handler_result24, !dbg !375
  %handler_result25 = call double @fSubHandlerDouble(double %52, double %handler_result22), !dbg !376
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0xBF4BCDF9CE308462), !dbg !377
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !228, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !236, metadata !DIExpression()), !dbg !378
  %53 = fmul double %40, %handler_result26, !dbg !377
  %handler_result27 = call double @fSubHandlerDouble(double %53, double %handler_result24), !dbg !379
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3FB52B8F3111FF6A), !dbg !380
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !227, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !368
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !381
  tail call void @llvm.dbg.value(metadata double poison, metadata !323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !381
  tail call void @llvm.dbg.value(metadata i32 0, metadata !321, metadata !DIExpression()), !dbg !344
  %54 = fmul double %handler_result5, 5.000000e-01, !dbg !380
  %55 = fmul double %handler_result5, %54, !dbg !382
  %56 = fmul double %handler_result5, %handler_result5, !dbg !383
  %57 = fmul double %56, %handler_result28, !dbg !384
  %handler_result29 = call double @fSubHandlerDouble(double 1.000000e+00, double %57), !dbg !385
  %58 = fmul double %55, %handler_result29, !dbg !385
  %handler_result30 = call double @fSubHandlerDouble(double 1.000000e+00, double %58), !dbg !386
  br label %75, !dbg !386

59:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 11, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !387
  %60 = fmul double %41, 0.000000e+00, !dbg !388
  %handler_result31 = call double @fAddHandlerDouble(double %60, double 0xBC01720EAB8B78D9), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !232, metadata !DIExpression()), !dbg !387
  %61 = fmul double %41, %handler_result31, !dbg !388
  %handler_result32 = call double @fAddHandlerDouble(double %61, double 0x3C7DF529F4EE609B), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 9, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !232, metadata !DIExpression()), !dbg !387
  %62 = fmul double %41, %handler_result32, !dbg !388
  %handler_result33 = call double @fSubHandlerDouble(double %62, double %handler_result31), !dbg !389
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3CC359222F7327B9), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 8, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !232, metadata !DIExpression()), !dbg !387
  %63 = fmul double %41, %handler_result34, !dbg !388
  %handler_result35 = call double @fSubHandlerDouble(double %63, double %handler_result32), !dbg !389
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0xBD3DB5727EAFF830), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 7, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !232, metadata !DIExpression()), !dbg !387
  %64 = fmul double %41, %handler_result36, !dbg !388
  %handler_result37 = call double @fSubHandlerDouble(double %64, double %handler_result34), !dbg !389
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0xBD7E9CA84CF05BCA), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 6, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !232, metadata !DIExpression()), !dbg !387
  %65 = fmul double %41, %handler_result38, !dbg !388
  %handler_result39 = call double @fSubHandlerDouble(double %65, double %handler_result36), !dbg !389
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x3DF4CCB1745F7AEF), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 5, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !232, metadata !DIExpression()), !dbg !387
  %66 = fmul double %41, %handler_result40, !dbg !388
  %handler_result41 = call double @fSubHandlerDouble(double %66, double %handler_result38), !dbg !389
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x3E30035896CBFD12), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 4, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !232, metadata !DIExpression()), !dbg !387
  %67 = fmul double %41, %handler_result42, !dbg !388
  %handler_result43 = call double @fSubHandlerDouble(double %67, double %handler_result40), !dbg !389
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0xBEA3192DC15885EE), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 3, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !232, metadata !DIExpression()), !dbg !387
  %68 = fmul double %41, %handler_result44, !dbg !388
  %handler_result45 = call double @fSubHandlerDouble(double %68, double %handler_result42), !dbg !389
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0xBED3806BE0E5860C), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 2, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !232, metadata !DIExpression()), !dbg !387
  %69 = fmul double %41, %handler_result46, !dbg !388
  %handler_result47 = call double @fSubHandlerDouble(double %69, double %handler_result44), !dbg !389
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 0x3F4484E2F770F8F9), !dbg !388
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 1, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !232, metadata !DIExpression()), !dbg !387
  %70 = fmul double %41, %handler_result48, !dbg !388
  %handler_result49 = call double @fSubHandlerDouble(double %70, double %handler_result46), !dbg !389
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 0x3F64C95F8909975F), !dbg !390
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !228, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !236, metadata !DIExpression()), !dbg !391
  %71 = fmul double %40, %handler_result50, !dbg !390
  %handler_result51 = call double @fSubHandlerDouble(double %71, double %handler_result48), !dbg !392
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 0xBFC516D6ED5A909E), !dbg !393
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !227, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata double poison, metadata !231, metadata !DIExpression()), !dbg !370
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !327, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !394
  tail call void @llvm.dbg.value(metadata double poison, metadata !327, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !394
  tail call void @llvm.dbg.value(metadata i32 0, metadata !321, metadata !DIExpression()), !dbg !344
  %72 = fmul double %handler_result5, %handler_result5, !dbg !393
  %73 = fmul double %72, %handler_result52, !dbg !395
  %handler_result53 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !396
  %74 = fmul double %handler_result5, %handler_result53, !dbg !396
  br label %75

75:                                               ; preds = %59, %42
  %76 = phi double [ %74, %59 ], [ %handler_result30, %42 ], !dbg !364
  tail call void @llvm.dbg.value(metadata i32 0, metadata !321, metadata !DIExpression()), !dbg !344
  %77 = fmul double %31, %76, !dbg !397
  store double %77, ptr %1, align 8, !dbg !397, !tbaa !184
  %78 = fcmp ogt double %3, 0x4330000000000000, !dbg !398
  br i1 %78, label %79, label %82, !dbg !400

79:                                               ; preds = %75
  %80 = tail call double @llvm.fabs.f64(double %77), !dbg !401
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !403
  store double %80, ptr %81, align 8, !dbg !404, !tbaa !195
  br label %98, !dbg !405

82:                                               ; preds = %75
  %83 = fcmp ogt double %3, 0x41F9000000000000, !dbg !406
  br i1 %83, label %84, label %90, !dbg !408

84:                                               ; preds = %82
  %85 = fmul double %3, 2.000000e+00, !dbg !409
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !411
  %87 = tail call double @llvm.fabs.f64(double %77), !dbg !412
  %88 = fmul double %86, %87, !dbg !413
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !414
  store double %88, ptr %89, align 8, !dbg !415, !tbaa !195
  br label %98, !dbg !416

90:                                               ; preds = %82
  %91 = fcmp ogt double %3, 0x415999999999999A, !dbg !417
  %92 = tail call double @llvm.fabs.f64(double %77), !dbg !419
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !419
  br i1 %91, label %94, label %96, !dbg !420

94:                                               ; preds = %90
  %95 = fmul double %92, 0x3E60000000000000, !dbg !421
  store double %95, ptr %93, align 8, !dbg !423, !tbaa !195
  br label %98, !dbg !424

96:                                               ; preds = %90
  %97 = fmul double %92, 0x3CC0000000000000, !dbg !425
  store double %97, ptr %93, align 8, !dbg !427, !tbaa !195
  br label %98

98:                                               ; preds = %96, %94, %84, %79, %5
  ret i32 0, !dbg !428
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hypot_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !429 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !433, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata double %1, metadata !434, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !444
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !445
  %5 = fcmp oeq double %1, 0.000000e+00
  %6 = and i1 %4, %5, !dbg !446
  br i1 %6, label %7, label %8, !dbg !446

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !447
  br label %27, !dbg !449

8:                                                ; preds = %3
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !450
  tail call void @llvm.dbg.value(metadata double %9, metadata !436, metadata !DIExpression()), !dbg !451
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !452
  tail call void @llvm.dbg.value(metadata double %10, metadata !439, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %9, metadata !453, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %10, metadata !459, metadata !DIExpression()), !dbg !460
  %11 = fcmp olt double %9, %10, !dbg !462
  %12 = select i1 %11, double %9, double %10, !dbg !462
  tail call void @llvm.dbg.value(metadata double %12, metadata !440, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %9, metadata !463, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %10, metadata !466, metadata !DIExpression()), !dbg !467
  %13 = fcmp ogt double %9, %10, !dbg !469
  %14 = select i1 %13, double %9, double %10, !dbg !469
  tail call void @llvm.dbg.value(metadata double %14, metadata !441, metadata !DIExpression()), !dbg !451
  %15 = fdiv double %12, %14, !dbg !470
  tail call void @llvm.dbg.value(metadata double %15, metadata !442, metadata !DIExpression()), !dbg !451
  %16 = fmul double %15, %15, !dbg !471
  %handler_result = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !472
  %17 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !472
  tail call void @llvm.dbg.value(metadata double %17, metadata !443, metadata !DIExpression()), !dbg !451
  %18 = fdiv double 0x7FEFFFFFFFFFFFFF, %17, !dbg !473
  %19 = fcmp olt double %14, %18, !dbg !475
  br i1 %19, label %20, label %25, !dbg !476

20:                                               ; preds = %8
  %21 = fmul double %14, %17, !dbg !477
  store double %21, ptr %2, align 8, !dbg !479, !tbaa !184
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !480
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !481
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !482
  store double %23, ptr %24, align 8, !dbg !483, !tbaa !195
  br label %27, !dbg !484

25:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !485, !tbaa !184
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !485
  store double 0x7FF0000000000000, ptr %26, align 8, !dbg !485, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #8, !dbg !488
  br label %27, !dbg !488

27:                                               ; preds = %25, %20, %7
  %28 = phi i32 [ 0, %7 ], [ 0, %20 ], [ 16, %25 ], !dbg !490
  ret i32 %28, !dbg !491
}

declare !dbg !492 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_sin_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !497 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !501, metadata !DIExpression()), !dbg !514
  tail call void @llvm.dbg.value(metadata double %1, metadata !502, metadata !DIExpression()), !dbg !514
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !503, metadata !DIExpression()), !dbg !514
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !504, metadata !DIExpression()), !dbg !514
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !515
  %6 = fcmp olt double %5, 1.000000e+00, !dbg !516
  br i1 %6, label %7, label %36, !dbg !517

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %1, metadata !518, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !523, metadata !DIExpression()), !dbg !533
  %8 = fmul double %1, %1, !dbg !535
  tail call void @llvm.dbg.value(metadata double %8, metadata !524, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !525, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !526, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !527, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !528, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !529, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !530, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !531, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !532, metadata !DIExpression()), !dbg !533
  %9 = fmul double %8, 0x3CE952C77030AD4A, !dbg !536
  %handler_result = call double @fAddHandlerDouble(double %9, double 0x3D6AE7F3E733B81F), !dbg !537
  %10 = fmul double %8, %handler_result, !dbg !537
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 0x3DE6124613A86D09), !dbg !538
  %11 = fmul double %8, %handler_result1, !dbg !538
  %handler_result2 = call double @fAddHandlerDouble(double %11, double 0x3E5AE64567F544E4), !dbg !539
  %12 = fmul double %8, %handler_result2, !dbg !539
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 0x3EC71DE3A556C734), !dbg !540
  %13 = fmul double %8, %handler_result3, !dbg !540
  %handler_result4 = call double @fAddHandlerDouble(double %13, double 0x3F2A01A01A01A01A), !dbg !541
  %14 = fmul double %8, %handler_result4, !dbg !541
  %handler_result5 = call double @fAddHandlerDouble(double %14, double 0x3F81111111111111), !dbg !542
  %15 = fmul double %8, %handler_result5, !dbg !542
  %handler_result6 = call double @fAddHandlerDouble(double %15, double 0x3FC5555555555555), !dbg !543
  %16 = fmul double %8, %handler_result6, !dbg !543
  %handler_result7 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !544
  %17 = fmul double %handler_result7, %1, !dbg !544
  tail call void @llvm.dbg.value(metadata double %17, metadata !508, metadata !DIExpression()), !dbg !545
  tail call void @llvm.dbg.value(metadata double %1, metadata !546, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !549, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %8, metadata !550, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !551, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !552, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !553, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !557, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !559, metadata !DIExpression()), !dbg !560
  %18 = fmul double %8, 0x3CA6827863B97D97, !dbg !562
  %handler_result8 = call double @fAddHandlerDouble(double %18, double 0x3D2AE7F3E733B81F), !dbg !563
  %19 = fmul double %8, %handler_result8, !dbg !563
  %handler_result9 = call double @fAddHandlerDouble(double %19, double 0x3DA93974A8C07C9D), !dbg !564
  %20 = fmul double %8, %handler_result9, !dbg !564
  %handler_result10 = call double @fAddHandlerDouble(double %20, double 0x3E21EED8EFF8D898), !dbg !565
  %21 = fmul double %8, %handler_result10, !dbg !565
  %handler_result11 = call double @fAddHandlerDouble(double %21, double 0x3E927E4FB7789F5C), !dbg !566
  %22 = fmul double %8, %handler_result11, !dbg !566
  %handler_result12 = call double @fAddHandlerDouble(double %22, double 0x3EFA01A01A01A01A), !dbg !567
  %23 = fmul double %8, %handler_result12, !dbg !567
  %handler_result13 = call double @fAddHandlerDouble(double %23, double 0x3F56C16C16C16C17), !dbg !568
  %24 = fmul double %8, %handler_result13, !dbg !568
  %handler_result14 = call double @fAddHandlerDouble(double %24, double 0x3FA5555555555555), !dbg !569
  %25 = fmul double %8, %handler_result14, !dbg !569
  %handler_result15 = call double @fAddHandlerDouble(double %25, double 5.000000e-01), !dbg !570
  %26 = fmul double %8, %handler_result15, !dbg !570
  tail call void @llvm.dbg.value(metadata double %26, metadata !505, metadata !DIExpression()), !dbg !545
  %handler_result19 = call double @callHandler(i32 1, double %0, double %0), !dbg !571
  %handler_result16 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !571
  %27 = fmul double %handler_result16, %handler_result19, !dbg !571
  store double %27, ptr %2, align 8, !dbg !572, !tbaa !184
  %handler_result20 = call double @callHandler(i32 2, double %0, double %0), !dbg !573
  %28 = fmul double %17, %handler_result20, !dbg !573
  store double %28, ptr %3, align 8, !dbg !574, !tbaa !184
  %29 = load double, ptr %2, align 8, !dbg !575, !tbaa !184
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !576
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !577
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !578
  store double %31, ptr %32, align 8, !dbg !579, !tbaa !195
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !580
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !581
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !582
  store double %34, ptr %35, align 8, !dbg !583, !tbaa !195
  br label %55

36:                                               ; preds = %4
  %37 = fcmp olt double %5, 0x40862E42FEFA39EF, !dbg !584
  br i1 %37, label %38, label %52, !dbg !585

38:                                               ; preds = %36
  %39 = tail call double @exp(double noundef %1) #8, !dbg !586
  tail call void @llvm.dbg.value(metadata double %39, metadata !509, metadata !DIExpression()), !dbg !587
  %40 = fdiv double 1.000000e+00, %39, !dbg !588
  %handler_result17 = call double @fAddHandlerDouble(double %39, double %40), !dbg !589
  %41 = fmul double %handler_result17, 5.000000e-01, !dbg !589
  tail call void @llvm.dbg.value(metadata double %41, metadata !512, metadata !DIExpression()), !dbg !587
  %handler_result18 = call double @fSubHandlerDouble(double %39, double %40), !dbg !590
  %42 = fmul double %handler_result18, 5.000000e-01, !dbg !590
  tail call void @llvm.dbg.value(metadata double %42, metadata !513, metadata !DIExpression()), !dbg !587
  %handler_result21 = call double @callHandler(i32 1, double %0, double %0), !dbg !591
  %43 = fmul double %handler_result21, %41, !dbg !591
  store double %43, ptr %2, align 8, !dbg !592, !tbaa !184
  %handler_result22 = call double @callHandler(i32 2, double %0, double %0), !dbg !593
  %44 = fmul double %handler_result22, %42, !dbg !593
  store double %44, ptr %3, align 8, !dbg !594, !tbaa !184
  %45 = load double, ptr %2, align 8, !dbg !595, !tbaa !184
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !596
  %47 = fmul double %46, 0x3CC0000000000000, !dbg !597
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !598
  store double %47, ptr %48, align 8, !dbg !599, !tbaa !195
  %49 = tail call double @llvm.fabs.f64(double %44), !dbg !600
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !601
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !602
  store double %50, ptr %51, align 8, !dbg !603, !tbaa !195
  br label %55

52:                                               ; preds = %36
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !604, !tbaa !184
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !604
  store double 0x7FF0000000000000, ptr %53, align 8, !dbg !604, !tbaa !195
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !604, !tbaa !184
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !604
  store double 0x7FF0000000000000, ptr %54, align 8, !dbg !604, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 369, i32 noundef 16) #8, !dbg !607
  br label %55, !dbg !607

55:                                               ; preds = %52, %38, %7
  %56 = phi i32 [ 0, %7 ], [ 0, %38 ], [ 16, %52 ], !dbg !609
  ret i32 %56, !dbg !610
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !611 double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !614 double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !615 double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_cos_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !616 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !618, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata double %1, metadata !619, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !620, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !621, metadata !DIExpression()), !dbg !631
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !632
  %6 = fcmp olt double %5, 1.000000e+00, !dbg !633
  br i1 %6, label %7, label %37, !dbg !634

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %1, metadata !518, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !523, metadata !DIExpression()), !dbg !635
  %8 = fmul double %1, %1, !dbg !637
  tail call void @llvm.dbg.value(metadata double %8, metadata !524, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !525, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !526, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !527, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !528, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !529, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !530, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !531, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !532, metadata !DIExpression()), !dbg !635
  %9 = fmul double %8, 0x3CE952C77030AD4A, !dbg !638
  %handler_result = call double @fAddHandlerDouble(double %9, double 0x3D6AE7F3E733B81F), !dbg !639
  %10 = fmul double %8, %handler_result, !dbg !639
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 0x3DE6124613A86D09), !dbg !640
  %11 = fmul double %8, %handler_result1, !dbg !640
  %handler_result2 = call double @fAddHandlerDouble(double %11, double 0x3E5AE64567F544E4), !dbg !641
  %12 = fmul double %8, %handler_result2, !dbg !641
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 0x3EC71DE3A556C734), !dbg !642
  %13 = fmul double %8, %handler_result3, !dbg !642
  %handler_result4 = call double @fAddHandlerDouble(double %13, double 0x3F2A01A01A01A01A), !dbg !643
  %14 = fmul double %8, %handler_result4, !dbg !643
  %handler_result5 = call double @fAddHandlerDouble(double %14, double 0x3F81111111111111), !dbg !644
  %15 = fmul double %8, %handler_result5, !dbg !644
  %handler_result6 = call double @fAddHandlerDouble(double %15, double 0x3FC5555555555555), !dbg !645
  %16 = fmul double %8, %handler_result6, !dbg !645
  %handler_result7 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !646
  %17 = fmul double %handler_result7, %1, !dbg !646
  tail call void @llvm.dbg.value(metadata double %17, metadata !625, metadata !DIExpression()), !dbg !647
  tail call void @llvm.dbg.value(metadata double %1, metadata !546, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !549, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double %8, metadata !550, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !551, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !552, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !553, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !555, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !556, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !557, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !559, metadata !DIExpression()), !dbg !648
  %18 = fmul double %8, 0x3CA6827863B97D97, !dbg !650
  %handler_result8 = call double @fAddHandlerDouble(double %18, double 0x3D2AE7F3E733B81F), !dbg !651
  %19 = fmul double %8, %handler_result8, !dbg !651
  %handler_result9 = call double @fAddHandlerDouble(double %19, double 0x3DA93974A8C07C9D), !dbg !652
  %20 = fmul double %8, %handler_result9, !dbg !652
  %handler_result10 = call double @fAddHandlerDouble(double %20, double 0x3E21EED8EFF8D898), !dbg !653
  %21 = fmul double %8, %handler_result10, !dbg !653
  %handler_result11 = call double @fAddHandlerDouble(double %21, double 0x3E927E4FB7789F5C), !dbg !654
  %22 = fmul double %8, %handler_result11, !dbg !654
  %handler_result12 = call double @fAddHandlerDouble(double %22, double 0x3EFA01A01A01A01A), !dbg !655
  %23 = fmul double %8, %handler_result12, !dbg !655
  %handler_result13 = call double @fAddHandlerDouble(double %23, double 0x3F56C16C16C16C17), !dbg !656
  %24 = fmul double %8, %handler_result13, !dbg !656
  %handler_result14 = call double @fAddHandlerDouble(double %24, double 0x3FA5555555555555), !dbg !657
  %25 = fmul double %8, %handler_result14, !dbg !657
  %handler_result15 = call double @fAddHandlerDouble(double %25, double 5.000000e-01), !dbg !658
  %26 = fmul double %8, %handler_result15, !dbg !658
  tail call void @llvm.dbg.value(metadata double %26, metadata !622, metadata !DIExpression()), !dbg !647
  %handler_result19 = call double @callHandler(i32 2, double %0, double %0), !dbg !659
  %handler_result16 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !659
  %27 = fmul double %handler_result16, %handler_result19, !dbg !659
  store double %27, ptr %2, align 8, !dbg !660, !tbaa !184
  %handler_result20 = call double @callHandler(i32 1, double %0, double %0), !dbg !661
  %28 = fneg double %handler_result20, !dbg !661
  %29 = fmul double %17, %28, !dbg !662
  store double %29, ptr %3, align 8, !dbg !663, !tbaa !184
  %30 = load double, ptr %2, align 8, !dbg !664, !tbaa !184
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !665
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !666
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !667
  store double %32, ptr %33, align 8, !dbg !668, !tbaa !195
  %34 = tail call double @llvm.fabs.f64(double %29), !dbg !669
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !670
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !671
  store double %35, ptr %36, align 8, !dbg !672, !tbaa !195
  br label %57

37:                                               ; preds = %4
  %38 = fcmp olt double %5, 0x40862E42FEFA39EF, !dbg !673
  br i1 %38, label %39, label %54, !dbg !674

39:                                               ; preds = %37
  %40 = tail call double @exp(double noundef %1) #8, !dbg !675
  tail call void @llvm.dbg.value(metadata double %40, metadata !626, metadata !DIExpression()), !dbg !676
  %41 = fdiv double 1.000000e+00, %40, !dbg !677
  %handler_result17 = call double @fAddHandlerDouble(double %40, double %41), !dbg !678
  %42 = fmul double %handler_result17, 5.000000e-01, !dbg !678
  tail call void @llvm.dbg.value(metadata double %42, metadata !629, metadata !DIExpression()), !dbg !676
  %handler_result18 = call double @fSubHandlerDouble(double %40, double %41), !dbg !679
  %43 = fmul double %handler_result18, 5.000000e-01, !dbg !679
  tail call void @llvm.dbg.value(metadata double %43, metadata !630, metadata !DIExpression()), !dbg !676
  %handler_result21 = call double @callHandler(i32 2, double %0, double %0), !dbg !680
  %44 = fmul double %handler_result21, %42, !dbg !680
  store double %44, ptr %2, align 8, !dbg !681, !tbaa !184
  %handler_result22 = call double @callHandler(i32 1, double %0, double %0), !dbg !682
  %45 = fneg double %handler_result22, !dbg !682
  %46 = fmul double %43, %45, !dbg !683
  store double %46, ptr %3, align 8, !dbg !684, !tbaa !184
  %47 = load double, ptr %2, align 8, !dbg !685, !tbaa !184
  %48 = tail call double @llvm.fabs.f64(double %47), !dbg !686
  %49 = fmul double %48, 0x3CC0000000000000, !dbg !687
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !688
  store double %49, ptr %50, align 8, !dbg !689, !tbaa !195
  %51 = tail call double @llvm.fabs.f64(double %46), !dbg !690
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !691
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !692
  store double %52, ptr %53, align 8, !dbg !693, !tbaa !195
  br label %57

54:                                               ; preds = %37
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !694, !tbaa !184
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !694
  store double 0x7FF0000000000000, ptr %55, align 8, !dbg !694, !tbaa !195
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !694, !tbaa !184
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !694
  store double 0x7FF0000000000000, ptr %56, align 8, !dbg !694, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 16) #8, !dbg !697
  br label %57, !dbg !697

57:                                               ; preds = %54, %39, %7
  %58 = phi i32 [ 0, %7 ], [ 0, %39 ], [ 16, %54 ], !dbg !699
  ret i32 %58, !dbg !700
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_logsin_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 !dbg !701 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !707, metadata !DIExpression(), metadata !713, metadata ptr %5, metadata !DIExpression()), !dbg !714
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !715, metadata ptr %6, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata double %0, metadata !703, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double %1, metadata !704, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !705, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !706, metadata !DIExpression()), !dbg !716
  %7 = fcmp ogt double %1, 6.000000e+01, !dbg !717
  br i1 %7, label %8, label %16, !dbg !718

8:                                                ; preds = %4
  %handler_result = call double @fAddHandlerDouble(double %1, double 0xBFE62E42FEFA39EF), !dbg !719
  store double %handler_result, ptr %2, align 8, !dbg !719, !tbaa !184
  %handler_result1 = call double @fSubHandlerDouble(double 0x3FF921FB54442D18, double %0), !dbg !721
  store double %handler_result1, ptr %3, align 8, !dbg !721, !tbaa !184
  %9 = load double, ptr %2, align 8, !dbg !722, !tbaa !184
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !723
  %11 = fmul double %10, 0x3CC0000000000000, !dbg !724
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !725
  store double %11, ptr %12, align 8, !dbg !726, !tbaa !195
  %13 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !727
  %14 = fmul double %13, 0x3CC0000000000000, !dbg !728
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !729
  store double %14, ptr %15, align 8, !dbg !730, !tbaa !195
  br label %36, !dbg !731

16:                                               ; preds = %4
  %17 = fcmp olt double %1, -6.000000e+01, !dbg !732
  br i1 %17, label %18, label %26, !dbg !733

18:                                               ; preds = %16
  %handler_result2 = call double @fSubHandlerDouble(double 0xBFE62E42FEFA39EF, double %1), !dbg !734
  store double %handler_result2, ptr %2, align 8, !dbg !734, !tbaa !184
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 0xBFF921FB54442D18), !dbg !736
  store double %handler_result3, ptr %3, align 8, !dbg !736, !tbaa !184
  %19 = load double, ptr %2, align 8, !dbg !737, !tbaa !184
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !738
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !739
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !740
  store double %21, ptr %22, align 8, !dbg !741, !tbaa !195
  %23 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !742
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !743
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !744
  store double %24, ptr %25, align 8, !dbg !745, !tbaa !195
  br label %36, !dbg !746

26:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !747
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !747
  %27 = call i32 @gsl_sf_complex_sin_e(double noundef %0, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !748, !range !749
  %28 = load double, ptr %5, align 8, !dbg !750, !tbaa !184
  %29 = load double, ptr %6, align 8, !dbg !751, !tbaa !184
  %30 = tail call i32 @gsl_sf_complex_log_e(double noundef %28, double noundef %29, ptr noundef %2, ptr noundef %3) #8, !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !712, metadata !DIExpression()), !dbg !714
  %31 = icmp eq i32 %30, 1, !dbg !753
  br i1 %31, label %33, label %32, !dbg !755

32:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !756
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !756
  br label %36

33:                                               ; preds = %26
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !757, !tbaa !184
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !757
  store double 0x7FF8000000000000, ptr %34, align 8, !dbg !757, !tbaa !195
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !757, !tbaa !184
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !757
  store double 0x7FF8000000000000, ptr %35, align 8, !dbg !757, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 432, i32 noundef 1) #8, !dbg !760
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !756
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !756
  br label %59

36:                                               ; preds = %32, %18, %8
  call void @llvm.dbg.value(metadata ptr %3, metadata !762, metadata !DIExpression()), !dbg !769
  %37 = load double, ptr %3, align 8, !dbg !771, !tbaa !772
  call void @llvm.dbg.value(metadata double %37, metadata !773, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr undef, metadata !778, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !779, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !780, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !781, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !782, metadata !DIExpression()), !dbg !789
  %38 = fcmp oge double %37, 0.000000e+00, !dbg !791
  %39 = select i1 %38, double 2.000000e+00, double -2.000000e+00, !dbg !791
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !792
  %41 = fdiv double %40, 0x401921FB54442D18, !dbg !793
  %42 = tail call double @llvm.floor.f64(double %41), !dbg !794
  %43 = fmul double %39, %42, !dbg !795
  call void @llvm.dbg.value(metadata double %43, metadata !783, metadata !DIExpression()), !dbg !789
  %44 = fmul double %43, 0x400921FB40000000, !dbg !796
  %handler_result4 = call double @fSubHandlerDouble(double %37, double %44), !dbg !797
  %45 = fmul double %43, 0x3E84442D00000000, !dbg !797
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %45), !dbg !798
  %46 = fmul double %43, 0x3D08469898CC5170, !dbg !798
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %46), !dbg !799
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !784, metadata !DIExpression()), !dbg !789
  %47 = fcmp ogt double %handler_result6, 0x400921FB54442D18, !dbg !799
  br i1 %47, label %48, label %49, !dbg !801

48:                                               ; preds = %36
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0xC01921FB40000000), !dbg !802
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0xBE94442D00000000), !dbg !804
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBD18469898CC5170), !dbg !805
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !784, metadata !DIExpression()), !dbg !789
  br label %52, !dbg !805

49:                                               ; preds = %36
  %50 = fcmp olt double %handler_result6, 0xC00921FB54442D18, !dbg !806
  br i1 %50, label %51, label %52, !dbg !808

51:                                               ; preds = %49
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result6, double 0x401921FB40000000), !dbg !809
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3E94442D00000000), !dbg !810
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3D18469898CC5170), !dbg !811
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !784, metadata !DIExpression()), !dbg !789
  br label %52, !dbg !811

52:                                               ; preds = %51, %49, %48
  %53 = phi double [ %handler_result9, %48 ], [ %handler_result12, %51 ], [ %handler_result6, %49 ], !dbg !789
  call void @llvm.dbg.value(metadata double %53, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double %53, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !769
  %54 = fcmp ogt double %40, 0x42F0000000000000, !dbg !812
  br i1 %54, label %55, label %56, !dbg !813

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !769
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !769
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #8, !dbg !814
  br label %56, !dbg !814

56:                                               ; preds = %55, %52
  %57 = phi double [ 0x7FF8000000000000, %55 ], [ %53, %52 ], !dbg !789
  %58 = phi i32 [ 17, %55 ], [ 0, %52 ], !dbg !817
  call void @llvm.dbg.value(metadata double %57, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !769
  call void @llvm.dbg.value(metadata i32 %58, metadata !768, metadata !DIExpression()), !dbg !769
  store double %57, ptr %3, align 8, !dbg !818, !tbaa !772
  br label %59, !dbg !819

59:                                               ; preds = %56, %33
  %60 = phi i32 [ %58, %56 ], [ 1, %33 ], !dbg !716
  ret i32 %60, !dbg !820
}

declare !dbg !821 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_symm_e(ptr nocapture noundef %0) local_unnamed_addr #4 !dbg !763 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !762, metadata !DIExpression()), !dbg !823
  %2 = load double, ptr %0, align 8, !dbg !824, !tbaa !772
  call void @llvm.dbg.value(metadata double %2, metadata !773, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr undef, metadata !778, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !779, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !780, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !781, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !782, metadata !DIExpression()), !dbg !825
  %3 = fcmp oge double %2, 0.000000e+00, !dbg !827
  %4 = select i1 %3, double 2.000000e+00, double -2.000000e+00, !dbg !827
  %5 = tail call double @llvm.fabs.f64(double %2), !dbg !828
  %6 = fdiv double %5, 0x401921FB54442D18, !dbg !829
  %7 = tail call double @llvm.floor.f64(double %6), !dbg !830
  %8 = fmul double %4, %7, !dbg !831
  call void @llvm.dbg.value(metadata double %8, metadata !783, metadata !DIExpression()), !dbg !825
  %9 = fmul double %8, 0x400921FB40000000, !dbg !832
  %handler_result = call double @fSubHandlerDouble(double %2, double %9), !dbg !833
  %10 = fmul double %8, 0x3E84442D00000000, !dbg !833
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %10), !dbg !834
  %11 = fmul double %8, 0x3D08469898CC5170, !dbg !834
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %11), !dbg !835
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !784, metadata !DIExpression()), !dbg !825
  %12 = fcmp ogt double %handler_result2, 0x400921FB54442D18, !dbg !835
  br i1 %12, label %13, label %14, !dbg !836

13:                                               ; preds = %1
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !837
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !838
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !839
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !784, metadata !DIExpression()), !dbg !825
  br label %17, !dbg !839

14:                                               ; preds = %1
  %15 = fcmp olt double %handler_result2, 0xC00921FB54442D18, !dbg !840
  br i1 %15, label %16, label %17, !dbg !841

16:                                               ; preds = %14
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !842
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !843
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !844
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !784, metadata !DIExpression()), !dbg !825
  br label %17, !dbg !844

17:                                               ; preds = %16, %14, %13
  %18 = phi double [ %handler_result5, %13 ], [ %handler_result8, %16 ], [ %handler_result2, %14 ], !dbg !825
  call void @llvm.dbg.value(metadata double %18, metadata !784, metadata !DIExpression()), !dbg !825
  tail call void @llvm.dbg.value(metadata double %18, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !823
  %19 = fcmp ogt double %5, 0x42F0000000000000, !dbg !845
  br i1 %19, label %20, label %21, !dbg !846

20:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !823
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !823
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #8, !dbg !847
  br label %21, !dbg !847

21:                                               ; preds = %20, %17
  %22 = phi double [ 0x7FF8000000000000, %20 ], [ %18, %17 ], !dbg !825
  %23 = phi i32 [ 17, %20 ], [ 0, %17 ], !dbg !848
  tail call void @llvm.dbg.value(metadata double %22, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !768, metadata !DIExpression()), !dbg !823
  store double %22, ptr %0, align 8, !dbg !849, !tbaa !772
  ret i32 %23, !dbg !850
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnsinh_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !851 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !853, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !854, metadata !DIExpression()), !dbg !859
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !860
  br i1 %3, label %6, label %4, !dbg !861

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !862, !tbaa !184
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !862
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !862, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 445, i32 noundef 1) #8, !dbg !865
  br label %36, !dbg !865

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !867
  %8 = fcmp olt double %7, 1.000000e+00, !dbg !868
  br i1 %8, label %9, label %23, !dbg !869

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double %0, metadata !518, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !523, metadata !DIExpression()), !dbg !870
  %10 = fmul double %0, %0, !dbg !872
  tail call void @llvm.dbg.value(metadata double %10, metadata !524, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !525, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !526, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !527, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !528, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !529, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !530, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !531, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !532, metadata !DIExpression()), !dbg !870
  %11 = fmul double %10, 0x3CE952C77030AD4A, !dbg !873
  %handler_result = call double @fAddHandlerDouble(double %11, double 0x3D6AE7F3E733B81F), !dbg !874
  %12 = fmul double %10, %handler_result, !dbg !874
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 0x3DE6124613A86D09), !dbg !875
  %13 = fmul double %10, %handler_result1, !dbg !875
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 0x3E5AE64567F544E4), !dbg !876
  %14 = fmul double %10, %handler_result2, !dbg !876
  %handler_result3 = call double @fAddHandlerDouble(double %14, double 0x3EC71DE3A556C734), !dbg !877
  %15 = fmul double %10, %handler_result3, !dbg !877
  %handler_result4 = call double @fAddHandlerDouble(double %15, double 0x3F2A01A01A01A01A), !dbg !878
  %16 = fmul double %10, %handler_result4, !dbg !878
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0x3F81111111111111), !dbg !879
  %17 = fmul double %10, %handler_result5, !dbg !879
  %handler_result6 = call double @fAddHandlerDouble(double %17, double 0x3FC5555555555555), !dbg !880
  %18 = fmul double %10, %handler_result6, !dbg !880
  %handler_result7 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !881
  %19 = fmul double %handler_result7, %0, !dbg !881
  tail call void @llvm.dbg.value(metadata double %19, metadata !855, metadata !DIExpression()), !dbg !882
  %handler_result11 = call double @callHandler(i32 12, double %19, double %19), !dbg !883
  store double %handler_result11, ptr %1, align 8, !dbg !883, !tbaa !184
  %20 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !884
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !885
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !886
  store double %21, ptr %22, align 8, !dbg !887, !tbaa !195
  br label %36

23:                                               ; preds = %6
  %24 = fcmp olt double %0, 0x403205966F2B4F12, !dbg !888
  br i1 %24, label %25, label %32, !dbg !890

25:                                               ; preds = %23
  %26 = fmul double %0, -2.000000e+00, !dbg !891
  %27 = tail call double @exp(double noundef %26) #8, !dbg !893
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %27), !dbg !894
  %28 = fmul double %handler_result8, 5.000000e-01, !dbg !894
  %handler_result12 = call double @callHandler(i32 12, double %28, double %28), !dbg !895
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result12, double %0), !dbg !895
  store double %handler_result9, ptr %1, align 8, !dbg !895, !tbaa !184
  %29 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !896
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !897
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !898
  store double %30, ptr %31, align 8, !dbg !899, !tbaa !195
  br label %36, !dbg !900

32:                                               ; preds = %23
  %handler_result10 = call double @fAddHandlerDouble(double %0, double 0xBFE62E42FEFA39EF), !dbg !901
  store double %handler_result10, ptr %1, align 8, !dbg !901, !tbaa !184
  %33 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !903
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !904
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !905
  store double %34, ptr %35, align 8, !dbg !906, !tbaa !195
  br label %36, !dbg !907

36:                                               ; preds = %32, %25, %9, %4
  %37 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %25 ], [ 0, %32 ], !dbg !908
  ret i32 %37, !dbg !909
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !910 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lncosh_e(double noundef %0, ptr noundef %1) local_unnamed_addr #4 !dbg !911 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !913, metadata !DIExpression()), !dbg !918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !914, metadata !DIExpression()), !dbg !918
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !919
  %4 = fcmp olt double %3, 1.000000e+00, !dbg !920
  br i1 %4, label %5, label %17, !dbg !921

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %0, metadata !546, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !549, metadata !DIExpression()), !dbg !922
  %6 = fmul double %0, %0, !dbg !924
  tail call void @llvm.dbg.value(metadata double %6, metadata !550, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !551, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !552, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !553, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !555, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !556, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !557, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !559, metadata !DIExpression()), !dbg !922
  %7 = fmul double %6, 0x3CA6827863B97D97, !dbg !925
  %handler_result = call double @fAddHandlerDouble(double %7, double 0x3D2AE7F3E733B81F), !dbg !926
  %8 = fmul double %6, %handler_result, !dbg !926
  %handler_result1 = call double @fAddHandlerDouble(double %8, double 0x3DA93974A8C07C9D), !dbg !927
  %9 = fmul double %6, %handler_result1, !dbg !927
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 0x3E21EED8EFF8D898), !dbg !928
  %10 = fmul double %6, %handler_result2, !dbg !928
  %handler_result3 = call double @fAddHandlerDouble(double %10, double 0x3E927E4FB7789F5C), !dbg !929
  %11 = fmul double %6, %handler_result3, !dbg !929
  %handler_result4 = call double @fAddHandlerDouble(double %11, double 0x3EFA01A01A01A01A), !dbg !930
  %12 = fmul double %6, %handler_result4, !dbg !930
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 0x3F56C16C16C16C17), !dbg !931
  %13 = fmul double %6, %handler_result5, !dbg !931
  %handler_result6 = call double @fAddHandlerDouble(double %13, double 0x3FA5555555555555), !dbg !932
  %14 = fmul double %6, %handler_result6, !dbg !932
  %handler_result7 = call double @fAddHandlerDouble(double %14, double 5.000000e-01), !dbg !933
  %15 = fmul double %6, %handler_result7, !dbg !933
  tail call void @llvm.dbg.value(metadata double %15, metadata !915, metadata !DIExpression()), !dbg !934
  %16 = tail call i32 @gsl_sf_log_1plusx_e(double noundef %15, ptr noundef %1) #8, !dbg !935
  br label %30

17:                                               ; preds = %2
  %18 = fcmp olt double %3, 0x403205966F2B4F12, !dbg !936
  br i1 %18, label %19, label %26, !dbg !938

19:                                               ; preds = %17
  %20 = fmul double %3, -2.000000e+00, !dbg !939
  %21 = tail call double @exp(double noundef %20) #8, !dbg !941
  %handler_result8 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !942
  %22 = fmul double %handler_result8, 5.000000e-01, !dbg !942
  %handler_result11 = call double @callHandler(i32 12, double %22, double %22), !dbg !943
  %handler_result9 = call double @fAddHandlerDouble(double %3, double %handler_result11), !dbg !943
  store double %handler_result9, ptr %1, align 8, !dbg !943, !tbaa !184
  %23 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !944
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !945
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !946
  store double %24, ptr %25, align 8, !dbg !947, !tbaa !195
  br label %30, !dbg !948

26:                                               ; preds = %17
  %handler_result10 = call double @fAddHandlerDouble(double %3, double 0xBFE62E42FEFA39EF), !dbg !949
  store double %handler_result10, ptr %1, align 8, !dbg !949, !tbaa !184
  %27 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !951
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !952
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !953
  store double %28, ptr %29, align 8, !dbg !954, !tbaa !195
  br label %30, !dbg !955

30:                                               ; preds = %26, %19, %5
  %31 = phi i32 [ %16, %5 ], [ 0, %19 ], [ 0, %26 ], !dbg !956
  ret i32 %31, !dbg !957
}

declare !dbg !958 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_polar_to_rect(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !959 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !961, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double %1, metadata !962, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !963, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !964, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata double %1, metadata !965, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr undef, metadata !762, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %1, metadata !773, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr undef, metadata !778, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !779, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !780, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !781, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !782, metadata !DIExpression()), !dbg !972
  %5 = fcmp oge double %1, 0.000000e+00, !dbg !974
  %6 = select i1 %5, double 2.000000e+00, double -2.000000e+00, !dbg !974
  %7 = tail call double @llvm.fabs.f64(double %1), !dbg !975
  %8 = fdiv double %7, 0x401921FB54442D18, !dbg !976
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !977
  %10 = fmul double %6, %9, !dbg !978
  call void @llvm.dbg.value(metadata double %10, metadata !783, metadata !DIExpression()), !dbg !972
  %11 = fmul double %10, 0x400921FB40000000, !dbg !979
  %handler_result = call double @fSubHandlerDouble(double %1, double %11), !dbg !980
  %12 = fmul double %10, 0x3E84442D00000000, !dbg !980
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %12), !dbg !981
  %13 = fmul double %10, 0x3D08469898CC5170, !dbg !981
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %13), !dbg !982
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !784, metadata !DIExpression()), !dbg !972
  %14 = fcmp ogt double %handler_result2, 0x400921FB54442D18, !dbg !982
  br i1 %14, label %15, label %16, !dbg !983

15:                                               ; preds = %4
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !984
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !985
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !986
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !784, metadata !DIExpression()), !dbg !972
  br label %19, !dbg !986

16:                                               ; preds = %4
  %17 = fcmp olt double %handler_result2, 0xC00921FB54442D18, !dbg !987
  br i1 %17, label %18, label %19, !dbg !988

18:                                               ; preds = %16
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !989
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !990
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !991
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !784, metadata !DIExpression()), !dbg !972
  br label %19, !dbg !991

19:                                               ; preds = %18, %16, %15
  %20 = phi double [ %handler_result5, %15 ], [ %handler_result8, %18 ], [ %handler_result2, %16 ], !dbg !972
  call void @llvm.dbg.value(metadata double %20, metadata !784, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %20, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !970
  %21 = fcmp ogt double %7, 0x42F0000000000000, !dbg !992
  br i1 %21, label %22, label %23, !dbg !993

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !970
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !970
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #8, !dbg !994
  br label %23, !dbg !994

23:                                               ; preds = %22, %19
  %24 = phi double [ 0x7FF8000000000000, %22 ], [ %20, %19 ], !dbg !972
  %25 = phi i32 [ 17, %22 ], [ 0, %19 ], !dbg !995
  call void @llvm.dbg.value(metadata double %24, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !970
  call void @llvm.dbg.value(metadata i32 %25, metadata !768, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata double %24, metadata !965, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !966, metadata !DIExpression()), !dbg !969
  %handler_result11 = call double @callHandler(i32 2, double %24, double %24), !dbg !996
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !967, metadata !DIExpression()), !dbg !969
  %handler_result12 = call double @callHandler(i32 1, double %24, double %24), !dbg !997
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !968, metadata !DIExpression()), !dbg !969
  %handler_result13 = call double @callHandler(i32 2, double %24, double %24), !dbg !998
  %26 = fmul double %handler_result13, %0, !dbg !998
  store double %26, ptr %2, align 8, !dbg !999, !tbaa !184
  %handler_result14 = call double @callHandler(i32 1, double %24, double %24), !dbg !1000
  %27 = fmul double %handler_result14, %0, !dbg !1000
  store double %27, ptr %3, align 8, !dbg !1001, !tbaa !184
  %28 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !1002
  %29 = fmul double %24, %28, !dbg !1003
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !1004
  %31 = fmul double %30, %0, !dbg !1005
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1006
  %33 = load double, ptr %2, align 8, !dbg !1007, !tbaa !184
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !1008
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !1009
  %handler_result9 = call double @fAddHandlerDouble(double %31, double %35), !dbg !1010
  store double %handler_result9, ptr %32, align 8, !dbg !1010, !tbaa !195
  %36 = fmul double %handler_result11, 0x3CB0000000000000, !dbg !1011
  %37 = fmul double %24, %36, !dbg !1012
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1013
  %39 = fmul double %38, %0, !dbg !1014
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1015
  %41 = tail call double @llvm.fabs.f64(double %27), !dbg !1016
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !1017
  %handler_result10 = call double @fAddHandlerDouble(double %39, double %42), !dbg !1018
  store double %handler_result10, ptr %40, align 8, !dbg !1018, !tbaa !195
  ret i32 %25, !dbg !1019
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_rect_to_polar(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !1020 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1022, metadata !DIExpression()), !dbg !1027
  tail call void @llvm.dbg.value(metadata double %1, metadata !1023, metadata !DIExpression()), !dbg !1027
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1024, metadata !DIExpression()), !dbg !1027
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1025, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata double %0, metadata !433, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double %1, metadata !434, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !1028
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !1030
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = and i1 %5, %6, !dbg !1031
  br i1 %7, label %8, label %9, !dbg !1031

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1032
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1026, metadata !DIExpression()), !dbg !1027
  br label %38, !dbg !1033

9:                                                ; preds = %4
  %10 = tail call double @llvm.fabs.f64(double %0), !dbg !1034
  call void @llvm.dbg.value(metadata double %10, metadata !436, metadata !DIExpression()), !dbg !1035
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !1036
  call void @llvm.dbg.value(metadata double %11, metadata !439, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata double %10, metadata !453, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %11, metadata !459, metadata !DIExpression()), !dbg !1037
  %12 = fcmp olt double %10, %11, !dbg !1039
  %13 = select i1 %12, double %10, double %11, !dbg !1039
  call void @llvm.dbg.value(metadata double %13, metadata !440, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata double %10, metadata !463, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata double %11, metadata !466, metadata !DIExpression()), !dbg !1040
  %14 = fcmp ogt double %10, %11, !dbg !1042
  %15 = select i1 %14, double %10, double %11, !dbg !1042
  call void @llvm.dbg.value(metadata double %15, metadata !441, metadata !DIExpression()), !dbg !1035
  %16 = fdiv double %13, %15, !dbg !1043
  call void @llvm.dbg.value(metadata double %16, metadata !442, metadata !DIExpression()), !dbg !1035
  %17 = fmul double %16, %16, !dbg !1044
  %handler_result = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !1045
  %18 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !1045
  call void @llvm.dbg.value(metadata double %18, metadata !443, metadata !DIExpression()), !dbg !1035
  %19 = fdiv double 0x7FEFFFFFFFFFFFFF, %18, !dbg !1046
  %20 = fcmp olt double %15, %19, !dbg !1047
  br i1 %20, label %21, label %26, !dbg !1048

21:                                               ; preds = %9
  %22 = fmul double %15, %18, !dbg !1049
  store double %22, ptr %2, align 8, !dbg !1050, !tbaa !184
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !1051
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !1052
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1053
  store double %24, ptr %25, align 8, !dbg !1054, !tbaa !195
  br label %29, !dbg !1055

26:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1056, !tbaa !184
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1056
  store double 0x7FF0000000000000, ptr %27, align 8, !dbg !1056, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #8, !dbg !1057
  %28 = load double, ptr %2, align 8, !dbg !1058, !tbaa !184
  br label %29, !dbg !1057

29:                                               ; preds = %26, %21
  %30 = phi double [ %22, %21 ], [ %28, %26 ], !dbg !1058
  %31 = phi i32 [ 0, %21 ], [ 16, %26 ], !dbg !1060
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1026, metadata !DIExpression()), !dbg !1027
  %32 = fcmp ogt double %30, 0.000000e+00, !dbg !1061
  br i1 %32, label %33, label %38, !dbg !1033

33:                                               ; preds = %29
  %34 = tail call double @atan2(double noundef %1, double noundef %0) #8, !dbg !1062
  store double %34, ptr %3, align 8, !dbg !1064, !tbaa !184
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !1065
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !1066
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1067
  store double %36, ptr %37, align 8, !dbg !1068, !tbaa !195
  br label %40, !dbg !1069

38:                                               ; preds = %29, %8
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1070, !tbaa !184
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1070
  store double 0x7FF8000000000000, ptr %39, align 8, !dbg !1070, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef 1) #8, !dbg !1073
  br label %40, !dbg !1073

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %31, %33 ], [ 1, %38 ], !dbg !1075
  ret i32 %41, !dbg !1076
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1077 double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_symm_err_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !774 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !773, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !779, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !780, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !781, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !782, metadata !DIExpression()), !dbg !1078
  %3 = fcmp oge double %0, 0.000000e+00, !dbg !1079
  %4 = select i1 %3, double 2.000000e+00, double -2.000000e+00, !dbg !1079
  %5 = tail call double @llvm.fabs.f64(double %0), !dbg !1080
  %6 = fdiv double %5, 0x401921FB54442D18, !dbg !1081
  %7 = tail call double @llvm.floor.f64(double %6), !dbg !1082
  %8 = fmul double %4, %7, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %8, metadata !783, metadata !DIExpression()), !dbg !1078
  %9 = fmul double %8, 0x400921FB40000000, !dbg !1084
  %handler_result = call double @fSubHandlerDouble(double %0, double %9), !dbg !1085
  %10 = fmul double %8, 0x3E84442D00000000, !dbg !1085
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %10), !dbg !1086
  %11 = fmul double %8, 0x3D08469898CC5170, !dbg !1086
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %11), !dbg !1087
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !784, metadata !DIExpression()), !dbg !1078
  %12 = fcmp ogt double %handler_result2, 0x400921FB54442D18, !dbg !1087
  br i1 %12, label %13, label %14, !dbg !1088

13:                                               ; preds = %2
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !1089
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !1090
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !1091
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !784, metadata !DIExpression()), !dbg !1078
  br label %17, !dbg !1091

14:                                               ; preds = %2
  %15 = fcmp olt double %handler_result2, 0xC00921FB54442D18, !dbg !1092
  br i1 %15, label %16, label %17, !dbg !1093

16:                                               ; preds = %14
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !1094
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !1095
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !784, metadata !DIExpression()), !dbg !1078
  br label %17, !dbg !1096

17:                                               ; preds = %16, %14, %13
  %18 = phi double [ %handler_result5, %13 ], [ %handler_result8, %16 ], [ %handler_result2, %14 ], !dbg !1078
  tail call void @llvm.dbg.value(metadata double %18, metadata !784, metadata !DIExpression()), !dbg !1078
  store double %18, ptr %1, align 8, !dbg !1097, !tbaa !184
  %19 = fcmp ogt double %5, 0x42F0000000000000, !dbg !1098
  br i1 %19, label %20, label %22, !dbg !1099

20:                                               ; preds = %17
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1100, !tbaa !184
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1101
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !1102, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #8, !dbg !1103
  br label %33, !dbg !1103

22:                                               ; preds = %17
  %23 = fcmp ogt double %5, 0x4150000000000000, !dbg !1104
  %handler_result9 = call double @fSubHandlerDouble(double %18, double %0), !dbg !1105
  %24 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !1105
  br i1 %23, label %25, label %28, !dbg !1106

25:                                               ; preds = %22
  %26 = fmul double %24, 0x3CC0000000000000, !dbg !1107
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1109
  store double %26, ptr %27, align 8, !dbg !1110, !tbaa !195
  br label %33, !dbg !1111

28:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata double %24, metadata !785, metadata !DIExpression()), !dbg !1112
  %29 = fcmp olt double %24, 0x400921FB54442D18, !dbg !1113
  %30 = select i1 %29, double %24, double 0x400921FB54442D18, !dbg !1114
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !1115
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1116
  store double %31, ptr %32, align 8, !dbg !1117, !tbaa !195
  br label %33

33:                                               ; preds = %28, %25, %20
  %34 = phi i32 [ 17, %20 ], [ 0, %25 ], [ 0, %28 ], !dbg !1118
  ret i32 %34, !dbg !1119
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_pos_err_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1120 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1122, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1123, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1124, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1125, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1126, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1127, metadata !DIExpression()), !dbg !1134
  %3 = fdiv double %0, 0x401921FB54442D18, !dbg !1135
  %4 = tail call double @llvm.floor.f64(double %3), !dbg !1136
  %5 = fmul double %4, 2.000000e+00, !dbg !1137
  tail call void @llvm.dbg.value(metadata double %5, metadata !1128, metadata !DIExpression()), !dbg !1134
  %6 = fmul double %5, 0x400921FB40000000, !dbg !1138
  %handler_result = call double @fSubHandlerDouble(double %0, double %6), !dbg !1139
  %7 = fmul double %5, 0x3E84442D00000000, !dbg !1139
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %7), !dbg !1140
  %8 = fmul double %5, 0x3D08469898CC5170, !dbg !1140
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %8), !dbg !1141
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1129, metadata !DIExpression()), !dbg !1134
  %9 = fcmp ogt double %handler_result2, 0x401921FB54442D18, !dbg !1141
  br i1 %9, label %10, label %11, !dbg !1143

10:                                               ; preds = %2
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !1144
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !1146
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !1147
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1129, metadata !DIExpression()), !dbg !1134
  br label %14, !dbg !1147

11:                                               ; preds = %2
  %12 = fcmp olt double %handler_result2, 0.000000e+00, !dbg !1148
  br i1 %12, label %13, label %14, !dbg !1150

13:                                               ; preds = %11
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !1151
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !1153
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !1154
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1129, metadata !DIExpression()), !dbg !1134
  br label %14, !dbg !1154

14:                                               ; preds = %13, %11, %10
  %15 = phi double [ %handler_result5, %10 ], [ %handler_result8, %13 ], [ %handler_result2, %11 ], !dbg !1134
  tail call void @llvm.dbg.value(metadata double %15, metadata !1129, metadata !DIExpression()), !dbg !1134
  store double %15, ptr %1, align 8, !dbg !1155, !tbaa !184
  %16 = tail call double @llvm.fabs.f64(double %0), !dbg !1156
  %17 = fcmp ogt double %16, 0x42F0000000000000, !dbg !1157
  br i1 %17, label %18, label %20, !dbg !1158

18:                                               ; preds = %14
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1159, !tbaa !184
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1161
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !1162, !tbaa !195
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #8, !dbg !1163
  br label %31, !dbg !1163

20:                                               ; preds = %14
  %21 = fcmp ogt double %16, 0x4150000000000000, !dbg !1165
  %handler_result9 = call double @fSubHandlerDouble(double %15, double %0), !dbg !1166
  %22 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !1166
  br i1 %21, label %23, label %26, !dbg !1167

23:                                               ; preds = %20
  %24 = fmul double %22, 0x3CB0000000000000, !dbg !1168
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1170
  store double %24, ptr %25, align 8, !dbg !1171, !tbaa !195
  br label %31, !dbg !1172

26:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata double %22, metadata !1130, metadata !DIExpression()), !dbg !1173
  %27 = fcmp olt double %22, 0x400921FB54442D18, !dbg !1174
  %28 = select i1 %27, double %22, double 0x400921FB54442D18, !dbg !1175
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !1176
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1177
  store double %29, ptr %30, align 8, !dbg !1178, !tbaa !195
  br label %31

31:                                               ; preds = %26, %23, %18
  %32 = phi i32 [ 17, %18 ], [ 0, %23 ], [ 0, %26 ], !dbg !1179
  ret i32 %32, !dbg !1180
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_pos_e(ptr nocapture noundef %0) local_unnamed_addr #4 !dbg !1181 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1183, metadata !DIExpression()), !dbg !1186
  %2 = load double, ptr %0, align 8, !dbg !1187, !tbaa !772
  call void @llvm.dbg.value(metadata double %2, metadata !1122, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr undef, metadata !1123, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1124, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1125, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1127, metadata !DIExpression()), !dbg !1188
  %3 = fdiv double %2, 0x401921FB54442D18, !dbg !1190
  %4 = tail call double @llvm.floor.f64(double %3), !dbg !1191
  %5 = fmul double %4, 2.000000e+00, !dbg !1192
  call void @llvm.dbg.value(metadata double %5, metadata !1128, metadata !DIExpression()), !dbg !1188
  %6 = fmul double %5, 0x400921FB40000000, !dbg !1193
  %handler_result = call double @fSubHandlerDouble(double %2, double %6), !dbg !1194
  %7 = fmul double %5, 0x3E84442D00000000, !dbg !1194
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %7), !dbg !1195
  %8 = fmul double %5, 0x3D08469898CC5170, !dbg !1195
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %8), !dbg !1196
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !1129, metadata !DIExpression()), !dbg !1188
  %9 = fcmp ogt double %handler_result2, 0x401921FB54442D18, !dbg !1196
  br i1 %9, label %10, label %11, !dbg !1197

10:                                               ; preds = %1
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !1198
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !1199
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !1200
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !1129, metadata !DIExpression()), !dbg !1188
  br label %14, !dbg !1200

11:                                               ; preds = %1
  %12 = fcmp olt double %handler_result2, 0.000000e+00, !dbg !1201
  br i1 %12, label %13, label %14, !dbg !1202

13:                                               ; preds = %11
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !1203
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !1204
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !1129, metadata !DIExpression()), !dbg !1188
  br label %14, !dbg !1205

14:                                               ; preds = %13, %11, %10
  %15 = phi double [ %handler_result5, %10 ], [ %handler_result8, %13 ], [ %handler_result2, %11 ], !dbg !1188
  call void @llvm.dbg.value(metadata double %15, metadata !1129, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata double %15, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1186
  %16 = tail call double @llvm.fabs.f64(double %2), !dbg !1206
  %17 = fcmp ogt double %16, 0x42F0000000000000, !dbg !1207
  br i1 %17, label %18, label %19, !dbg !1208

18:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1186
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1186
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #8, !dbg !1209
  br label %19, !dbg !1209

19:                                               ; preds = %18, %14
  %20 = phi double [ 0x7FF8000000000000, %18 ], [ %15, %14 ], !dbg !1188
  %21 = phi i32 [ 17, %18 ], [ 0, %14 ], !dbg !1210
  tail call void @llvm.dbg.value(metadata double %20, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1186
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1185, metadata !DIExpression()), !dbg !1186
  store double %20, ptr %0, align 8, !dbg !1211, !tbaa !772
  ret i32 %21, !dbg !1212
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_sin_err_e(double noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !1213 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1215, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata double %1, metadata !1216, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1217, metadata !DIExpression()), !dbg !1219
  %4 = tail call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef %2), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1218, metadata !DIExpression()), !dbg !1219
  %handler_result2 = call double @callHandler(i32 2, double %0, double %0), !dbg !1221
  %5 = fmul double %handler_result2, %1, !dbg !1221
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !1222
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1223
  %8 = load double, ptr %7, align 8, !dbg !1224, !tbaa !195
  %handler_result = call double @fAddHandlerDouble(double %8, double %6), !dbg !1225
  %9 = load double, ptr %2, align 8, !dbg !1225, !tbaa !184
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !1226
  %11 = fmul double %10, 0x3CB0000000000000, !dbg !1227
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %11), !dbg !1228
  store double %handler_result1, ptr %7, align 8, !dbg !1228, !tbaa !195
  ret i32 0, !dbg !1229
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_cos_err_e(double noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !1230 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata double %1, metadata !1233, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1234, metadata !DIExpression()), !dbg !1236
  %4 = tail call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef %2), !dbg !1237
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1235, metadata !DIExpression()), !dbg !1236
  %handler_result2 = call double @callHandler(i32 1, double %0, double %0), !dbg !1238
  %5 = fmul double %handler_result2, %1, !dbg !1238
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !1239
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1240
  %8 = load double, ptr %7, align 8, !dbg !1241, !tbaa !195
  %handler_result = call double @fAddHandlerDouble(double %8, double %6), !dbg !1242
  %9 = load double, ptr %2, align 8, !dbg !1242, !tbaa !184
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !1243
  %11 = fmul double %10, 0x3CB0000000000000, !dbg !1244
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %11), !dbg !1245
  store double %handler_result1, ptr %7, align 8, !dbg !1245, !tbaa !195
  ret i32 0, !dbg !1246
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_sinc_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1247 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1257, metadata !DIExpression(), metadata !1259, metadata ptr %3, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata double %0, metadata !1249, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1250, metadata !DIExpression()), !dbg !1261
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !1262
  tail call void @llvm.dbg.value(metadata double %4, metadata !1251, metadata !DIExpression()), !dbg !1263
  %5 = fcmp olt double %4, 8.000000e-01, !dbg !1264
  br i1 %5, label %6, label %30, !dbg !1265

6:                                                ; preds = %2
  %7 = fmul double %4, 2.000000e+00, !dbg !1266
  %handler_result = call double @fAddHandlerDouble(double %7, double -1.000000e+00), !dbg !1268
  call void @llvm.dbg.value(metadata !1270, metadata !223, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %handler_result, metadata !224, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata ptr %1, metadata !225, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !1271
  %8 = fmul double %handler_result, 2.000000e+00, !dbg !1268
  %handler_result1 = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !1272
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !1273
  %9 = fmul double %handler_result2, 5.000000e-01, !dbg !1273
  call void @llvm.dbg.value(metadata double %9, metadata !229, metadata !DIExpression()), !dbg !1271
  %10 = fmul double %9, 2.000000e+00, !dbg !1274
  call void @llvm.dbg.value(metadata double %10, metadata !230, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 16, metadata !226, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !231, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !228, metadata !DIExpression()), !dbg !1271
  br label %11, !dbg !1275

11:                                               ; preds = %11, %6
  %12 = phi i64 [ 16, %6 ], [ %22, %11 ]
  %13 = phi double [ 0.000000e+00, %6 ], [ %handler_result4, %11 ]
  %14 = phi double [ 0.000000e+00, %6 ], [ %handler_result7, %11 ]
  %15 = phi double [ 0.000000e+00, %6 ], [ %13, %11 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !226, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %13, metadata !227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %14, metadata !231, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %15, metadata !228, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %13, metadata !232, metadata !DIExpression()), !dbg !1276
  %16 = fmul double %10, %13, !dbg !1277
  %handler_result3 = call double @fSubHandlerDouble(double %16, double %15), !dbg !1278
  %17 = getelementptr inbounds double, ptr @sinc_data, i64 %12, !dbg !1278
  %18 = load double, ptr %17, align 8, !dbg !1278, !tbaa !772
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %18), !dbg !1279
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !227, metadata !DIExpression()), !dbg !1271
  %19 = tail call double @llvm.fabs.f64(double %16), !dbg !1279
  %20 = tail call double @llvm.fabs.f64(double %15), !dbg !1280
  %handler_result5 = call double @fAddHandlerDouble(double %19, double %20), !dbg !1281
  %21 = tail call double @llvm.fabs.f64(double %18), !dbg !1281
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %21), !dbg !1282
  %handler_result7 = call double @fAddHandlerDouble(double %14, double %handler_result6), !dbg !1283
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !231, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata double %13, metadata !228, metadata !DIExpression()), !dbg !1271
  %22 = add nsw i64 %12, -1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %22, metadata !226, metadata !DIExpression()), !dbg !1271
  %23 = icmp ugt i64 %12, 1, !dbg !1284
  br i1 %23, label %11, label %24, !dbg !1275, !llvm.loop !1285

24:                                               ; preds = %11
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !236, metadata !DIExpression()), !dbg !1288
  %25 = fmul double %9, %handler_result4, !dbg !1289
  %handler_result8 = call double @fSubHandlerDouble(double %25, double %13), !dbg !1290
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FE2236C458DF176), !dbg !1291
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !227, metadata !DIExpression()), !dbg !1271
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !1291
  %27 = tail call double @llvm.fabs.f64(double %13), !dbg !1292
  %handler_result10 = call double @fAddHandlerDouble(double %27, double %26), !dbg !1293
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FE2236C458DF176), !dbg !1294
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !1295
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !231, metadata !DIExpression()), !dbg !1271
  store double %handler_result9, ptr %1, align 8, !dbg !1295, !tbaa !184
  %28 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !1296
  %handler_result13 = call double @fAddHandlerDouble(double %28, double 9.925000e-18), !dbg !1297
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1297
  store double %handler_result13, ptr %29, align 8, !dbg !1298, !tbaa !195
  br label %48, !dbg !1299

30:                                               ; preds = %2
  %31 = fcmp olt double %4, 1.000000e+02, !dbg !1300
  %32 = fmul double %4, 0x400921FB54442D18, !dbg !1301
  br i1 %31, label %33, label %38, !dbg !1302

33:                                               ; preds = %30
  %handler_result15 = call double @callHandler(i32 1, double %32, double %32), !dbg !1303
  %34 = fdiv double %handler_result15, %32, !dbg !1303
  store double %34, ptr %1, align 8, !dbg !1305, !tbaa !184
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !1306
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !1307
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1308
  store double %36, ptr %37, align 8, !dbg !1309, !tbaa !195
  br label %48, !dbg !1310

38:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata double %32, metadata !1253, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1311
  %39 = call i32 @gsl_sf_sin_e(double noundef %32, ptr noundef nonnull %3), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1258, metadata !DIExpression()), !dbg !1260
  %40 = load double, ptr %3, align 8, !dbg !1313, !tbaa !184
  %41 = fdiv double %40, %32, !dbg !1314
  store double %41, ptr %1, align 8, !dbg !1315, !tbaa !184
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1316
  %43 = load double, ptr %42, align 8, !dbg !1316, !tbaa !195
  %44 = fdiv double %43, %32, !dbg !1317
  %45 = tail call double @llvm.fabs.f64(double %41), !dbg !1318
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !1319
  %handler_result14 = call double @fAddHandlerDouble(double %44, double %46), !dbg !1320
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1320
  store double %handler_result14, ptr %47, align 8, !dbg !1321, !tbaa !195
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1322
  br label %48

48:                                               ; preds = %38, %33, %24
  ret i32 0, !dbg !1323
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_sin(double noundef %0) local_unnamed_addr #0 !dbg !1324 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1329, metadata !DIExpression(), metadata !1331, metadata ptr %2, metadata !DIExpression()), !dbg !1332
  tail call void @llvm.dbg.value(metadata double %0, metadata !1328, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !1333
  %3 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %2), !dbg !1333
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1330, metadata !DIExpression()), !dbg !1332
  %4 = load double, ptr %2, align 8, !dbg !1333, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !1334
  ret double %4, !dbg !1334
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_cos(double noundef %0) local_unnamed_addr #0 !dbg !1335 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1338, metadata !DIExpression(), metadata !1340, metadata ptr %2, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata double %0, metadata !1337, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !1342
  %3 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %2), !dbg !1342
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1339, metadata !DIExpression()), !dbg !1341
  %4 = load double, ptr %2, align 8, !dbg !1342, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !1343
  ret double %4, !dbg !1343
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hypot(double noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !1344 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1348, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata double %1, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata double %0, metadata !433, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata double %1, metadata !434, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr undef, metadata !435, metadata !DIExpression()), !dbg !1353
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !1355
  %4 = fcmp oeq double %1, 0.000000e+00
  %5 = and i1 %3, %4, !dbg !1356
  br i1 %5, label %21, label %6, !dbg !1356

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !1357
  call void @llvm.dbg.value(metadata double %7, metadata !436, metadata !DIExpression()), !dbg !1358
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !1359
  call void @llvm.dbg.value(metadata double %8, metadata !439, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata double %7, metadata !453, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata double %8, metadata !459, metadata !DIExpression()), !dbg !1360
  %9 = fcmp olt double %7, %8, !dbg !1362
  %10 = select i1 %9, double %7, double %8, !dbg !1362
  call void @llvm.dbg.value(metadata double %10, metadata !440, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata double %7, metadata !463, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata double %8, metadata !466, metadata !DIExpression()), !dbg !1363
  %11 = fcmp ogt double %7, %8, !dbg !1365
  %12 = select i1 %11, double %7, double %8, !dbg !1365
  call void @llvm.dbg.value(metadata double %12, metadata !441, metadata !DIExpression()), !dbg !1358
  %13 = fdiv double %10, %12, !dbg !1366
  call void @llvm.dbg.value(metadata double %13, metadata !442, metadata !DIExpression()), !dbg !1358
  %14 = fmul double %13, %13, !dbg !1367
  %handler_result = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !1368
  %15 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !1368
  call void @llvm.dbg.value(metadata double %15, metadata !443, metadata !DIExpression()), !dbg !1358
  %16 = fdiv double 0x7FEFFFFFFFFFFFFF, %15, !dbg !1369
  %17 = fcmp olt double %12, %16, !dbg !1370
  br i1 %17, label %18, label %20, !dbg !1371

18:                                               ; preds = %6
  %19 = fmul double %12, %15, !dbg !1372
  tail call void @llvm.dbg.value(metadata double %19, metadata !1350, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1352
  tail call void @llvm.dbg.value(metadata double poison, metadata !1350, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1352
  br label %21, !dbg !1373

20:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1350, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1352
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1350, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1352
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #8, !dbg !1374
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1350, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 16, metadata !1351, metadata !DIExpression()), !dbg !1352
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 736, i32 noundef 16) #8, !dbg !1375
  br label %21, !dbg !1375

21:                                               ; preds = %20, %18, %2
  %22 = phi double [ 0x7FF0000000000000, %20 ], [ 0.000000e+00, %2 ], [ %19, %18 ]
  ret double %22, !dbg !1379
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnsinh(double noundef %0) local_unnamed_addr #4 !dbg !1380 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1385, metadata ptr %2, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %0, metadata !1382, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !1387
  %3 = call i32 @gsl_sf_lnsinh_e(double noundef %0, ptr noundef nonnull %2), !dbg !1387, !range !1388
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1384, metadata !DIExpression()), !dbg !1386
  %4 = icmp eq i32 %3, 0, !dbg !1389
  br i1 %4, label %6, label %5, !dbg !1387

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 741, i32 noundef 1) #8, !dbg !1391
  br label %6, !dbg !1391

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1387, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !1394
  ret double %7, !dbg !1394
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lncosh(double noundef %0) local_unnamed_addr #4 !dbg !1395 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1398, metadata !DIExpression(), metadata !1400, metadata ptr %2, metadata !DIExpression()), !dbg !1401
  tail call void @llvm.dbg.value(metadata double %0, metadata !1397, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !1402
  %3 = call i32 @gsl_sf_lncosh_e(double noundef %0, ptr noundef nonnull %2), !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1399, metadata !DIExpression()), !dbg !1401
  %4 = icmp eq i32 %3, 0, !dbg !1403
  br i1 %4, label %6, label %5, !dbg !1402

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 746, i32 noundef %3) #8, !dbg !1405
  br label %6, !dbg !1405

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1402, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !1408
  ret double %7, !dbg !1408
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_angle_restrict_symm(double noundef %0) local_unnamed_addr #4 !dbg !1409 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1411, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata double %0, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr undef, metadata !762, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata double %0, metadata !773, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata ptr undef, metadata !778, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !779, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !780, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !781, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !782, metadata !DIExpression()), !dbg !1417
  %2 = fcmp oge double %0, 0.000000e+00, !dbg !1419
  %3 = select i1 %2, double 2.000000e+00, double -2.000000e+00, !dbg !1419
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !1420
  %5 = fdiv double %4, 0x401921FB54442D18, !dbg !1421
  %6 = tail call double @llvm.floor.f64(double %5), !dbg !1422
  %7 = fmul double %3, %6, !dbg !1423
  call void @llvm.dbg.value(metadata double %7, metadata !783, metadata !DIExpression()), !dbg !1417
  %8 = fmul double %7, 0x400921FB40000000, !dbg !1424
  %handler_result = call double @fSubHandlerDouble(double %0, double %8), !dbg !1425
  %9 = fmul double %7, 0x3E84442D00000000, !dbg !1425
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %9), !dbg !1426
  %10 = fmul double %7, 0x3D08469898CC5170, !dbg !1426
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %10), !dbg !1427
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !784, metadata !DIExpression()), !dbg !1417
  %11 = fcmp ogt double %handler_result2, 0x400921FB54442D18, !dbg !1427
  br i1 %11, label %12, label %13, !dbg !1428

12:                                               ; preds = %1
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !1429
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !1430
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !1431
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !784, metadata !DIExpression()), !dbg !1417
  br label %16, !dbg !1431

13:                                               ; preds = %1
  %14 = fcmp olt double %handler_result2, 0xC00921FB54442D18, !dbg !1432
  br i1 %14, label %15, label %16, !dbg !1433

15:                                               ; preds = %13
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !1434
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !1435
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !1436
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !784, metadata !DIExpression()), !dbg !1417
  br label %16, !dbg !1436

16:                                               ; preds = %15, %13, %12
  %17 = phi double [ %handler_result5, %12 ], [ %handler_result8, %15 ], [ %handler_result2, %13 ], !dbg !1417
  call void @llvm.dbg.value(metadata double %17, metadata !784, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata double %17, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1415
  %18 = fcmp ogt double %4, 0x42F0000000000000, !dbg !1437
  br i1 %18, label %19, label %20, !dbg !1438

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1415
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1415
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #8, !dbg !1439
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 17, metadata !768, metadata !DIExpression()), !dbg !1415
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1412, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata i32 17, metadata !1413, metadata !DIExpression()), !dbg !1414
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 752, i32 noundef 17) #8, !dbg !1440
  br label %20, !dbg !1440

20:                                               ; preds = %19, %16
  %21 = phi double [ 0x7FF8000000000000, %19 ], [ %17, %16 ]
  ret double %21, !dbg !1444
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_angle_restrict_pos(double noundef %0) local_unnamed_addr #4 !dbg !1445 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1447, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata double %0, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata ptr undef, metadata !1183, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata double %0, metadata !1122, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata ptr undef, metadata !1123, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1124, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1125, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1126, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1127, metadata !DIExpression()), !dbg !1453
  %2 = fdiv double %0, 0x401921FB54442D18, !dbg !1455
  %3 = tail call double @llvm.floor.f64(double %2), !dbg !1456
  %4 = fmul double %3, 2.000000e+00, !dbg !1457
  call void @llvm.dbg.value(metadata double %4, metadata !1128, metadata !DIExpression()), !dbg !1453
  %5 = fmul double %4, 0x400921FB40000000, !dbg !1458
  %handler_result = call double @fSubHandlerDouble(double %0, double %5), !dbg !1459
  %6 = fmul double %4, 0x3E84442D00000000, !dbg !1459
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %6), !dbg !1460
  %7 = fmul double %4, 0x3D08469898CC5170, !dbg !1460
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %7), !dbg !1461
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !1129, metadata !DIExpression()), !dbg !1453
  %8 = fcmp ogt double %handler_result2, 0x401921FB54442D18, !dbg !1461
  br i1 %8, label %9, label %10, !dbg !1462

9:                                                ; preds = %1
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xC01921FB40000000), !dbg !1463
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBE94442D00000000), !dbg !1464
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBD18469898CC5170), !dbg !1465
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !1129, metadata !DIExpression()), !dbg !1453
  br label %13, !dbg !1465

10:                                               ; preds = %1
  %11 = fcmp olt double %handler_result2, 0.000000e+00, !dbg !1466
  br i1 %11, label %12, label %13, !dbg !1467

12:                                               ; preds = %10
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double 0x401921FB40000000), !dbg !1468
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 0x3E94442D00000000), !dbg !1469
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3D18469898CC5170), !dbg !1470
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !1129, metadata !DIExpression()), !dbg !1453
  br label %13, !dbg !1470

13:                                               ; preds = %12, %10, %9
  %14 = phi double [ %handler_result5, %9 ], [ %handler_result8, %12 ], [ %handler_result2, %10 ], !dbg !1453
  call void @llvm.dbg.value(metadata double %14, metadata !1129, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata double %14, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1451
  %15 = tail call double @llvm.fabs.f64(double %0), !dbg !1471
  %16 = fcmp ogt double %15, 0x42F0000000000000, !dbg !1472
  br i1 %16, label %17, label %18, !dbg !1473

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1451
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1451
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #8, !dbg !1474
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1451
  call void @llvm.dbg.value(metadata i32 17, metadata !1185, metadata !DIExpression()), !dbg !1451
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1448, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i32 17, metadata !1449, metadata !DIExpression()), !dbg !1450
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 758, i32 noundef 17) #8, !dbg !1475
  br label %18, !dbg !1475

18:                                               ; preds = %17, %13
  %19 = phi double [ 0x7FF8000000000000, %17 ], [ %14, %13 ]
  ret double %19, !dbg !1479
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_sinc(double noundef %0) local_unnamed_addr #0 !dbg !1480 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1483, metadata !DIExpression(), metadata !1485, metadata ptr %2, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata double %0, metadata !1482, metadata !DIExpression()), !dbg !1486
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !1487
  %3 = call i32 @gsl_sf_sinc_e(double noundef %0, ptr noundef nonnull %2), !dbg !1487
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1484, metadata !DIExpression()), !dbg !1486
  %4 = load double, ptr %2, align 8, !dbg !1487, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !1488
  ret double %4, !dbg !1488
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!46}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "trig.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "869430acb69f973c9aee93f653c582fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 552, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 736, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 30)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 741, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 28)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 752, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 38)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 758, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 37)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "sinc_data", scope: !46, file: !2, line: 80, type: !127, isLocal: true, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !87, splitDebugInlining: false, nameTableKind: None)
!47 = !{!48}
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 39, baseType: !50, size: 32, elements: !51)
!49 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!52 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!53 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!54 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!55 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!56 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!57 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!58 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!59 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!60 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!61 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!62 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!63 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!64 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!65 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!66 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!67 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!68 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!69 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!70 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!71 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!72 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!73 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!74 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!75 = !DIEnumerator(name: "GSL_ESING", value: 21)
!76 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!77 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!78 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!79 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!80 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!81 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!82 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!83 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!84 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!85 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!86 = !DIEnumerator(name: "GSL_EOF", value: 32)
!87 = !{!0, !7, !12, !17, !88, !93, !22, !27, !32, !34, !39, !95, !100, !113, !118, !120, !125, !44}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 726, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 25)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 731, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 770, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 26)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "sin_cs", scope: !46, file: !2, line: 124, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !103, line: 29, baseType: !104)
!103 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !103, line: 22, size: 320, elements: !105)
!105 = !{!106, !109, !110, !111, !112}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !104, file: !103, line: 23, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !104, file: !103, line: 24, baseType: !50, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !103, line: 25, baseType: !108, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !104, file: !103, line: 26, baseType: !108, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !104, file: !103, line: 27, baseType: !50, size: 32, offset: 256)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "sin_data", scope: !46, file: !2, line: 110, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 768, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 12)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "cos_cs", scope: !46, file: !2, line: 147, type: !102, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "cos_data", scope: !46, file: !2, line: 134, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 704, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 11)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "sinc_cs", scope: !46, file: !2, line: 99, type: !102, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1088, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 17)
!130 = !{i32 7, !"Dwarf Version", i32 5}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{i32 8, !"PIC Level", i32 2}
!134 = !{i32 7, !"PIE Level", i32 2}
!135 = !{i32 7, !"uwtable", i32 2}
!136 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!137 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!138 = distinct !DISubprogram(name: "gsl_sf_sin_e", scope: !2, file: !2, line: 163, type: !139, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !148)
!139 = !DISubroutineType(types: !140)
!140 = !{!50, !108, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !143, line: 41, baseType: !144)
!143 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !143, line: 37, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !143, line: 38, baseType: !108, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !144, file: !143, line: 39, baseType: !108, size: 64, offset: 64)
!148 = !{!149, !150, !151, !154, !155, !156, !157, !158, !161, !163, !164, !165, !166, !167, !170, !171, !173}
!149 = !DILocalVariable(name: "x", arg: 1, scope: !138, file: !2, line: 163, type: !108)
!150 = !DILocalVariable(name: "result", arg: 2, scope: !138, file: !2, line: 163, type: !141)
!151 = !DILocalVariable(name: "P1", scope: !152, file: !2, line: 168, type: !153)
!152 = distinct !DILexicalBlock(scope: !138, file: !2, line: 167, column: 3)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!154 = !DILocalVariable(name: "P2", scope: !152, file: !2, line: 169, type: !153)
!155 = !DILocalVariable(name: "P3", scope: !152, file: !2, line: 170, type: !153)
!156 = !DILocalVariable(name: "sgn_x", scope: !152, file: !2, line: 172, type: !153)
!157 = !DILocalVariable(name: "abs_x", scope: !152, file: !2, line: 173, type: !153)
!158 = !DILocalVariable(name: "x2", scope: !159, file: !2, line: 176, type: !153)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 175, column: 39)
!160 = distinct !DILexicalBlock(scope: !152, file: !2, line: 175, column: 8)
!161 = !DILocalVariable(name: "sgn_result", scope: !162, file: !2, line: 182, type: !108)
!162 = distinct !DILexicalBlock(scope: !160, file: !2, line: 181, column: 10)
!163 = !DILocalVariable(name: "y", scope: !162, file: !2, line: 183, type: !108)
!164 = !DILocalVariable(name: "octant", scope: !162, file: !2, line: 184, type: !50)
!165 = !DILocalVariable(name: "stat_cs", scope: !162, file: !2, line: 185, type: !50)
!166 = !DILocalVariable(name: "z", scope: !162, file: !2, line: 186, type: !108)
!167 = !DILocalVariable(name: "sin_cs_result", scope: !168, file: !2, line: 202, type: !142)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 201, column: 23)
!169 = distinct !DILexicalBlock(scope: !162, file: !2, line: 201, column: 10)
!170 = !DILocalVariable(name: "t", scope: !168, file: !2, line: 203, type: !153)
!171 = !DILocalVariable(name: "cos_cs_result", scope: !172, file: !2, line: 208, type: !142)
!172 = distinct !DILexicalBlock(scope: !169, file: !2, line: 207, column: 12)
!173 = !DILocalVariable(name: "t", scope: !172, file: !2, line: 209, type: !153)
!174 = !DILocation(line: 0, scope: !138)
!175 = !DILocation(line: 0, scope: !152)
!176 = !DILocation(line: 173, column: 26, scope: !152)
!177 = !DILocation(line: 175, column: 14, scope: !160)
!178 = !DILocation(line: 175, column: 8, scope: !152)
!179 = !DILocation(line: 176, column: 26, scope: !159)
!180 = !DILocation(line: 0, scope: !159)
!181 = !DILocation(line: 177, column: 34, scope: !159)
!182 = !DILocation(line: 177, column: 23, scope: !159)
!183 = !DILocation(line: 177, column: 19, scope: !159)
!184 = !{!185, !186, i64 0}
!185 = !{!"gsl_sf_result_struct", !186, i64 0, !186, i64 8}
!186 = !{!"double", !187, i64 0}
!187 = !{!"omnipotent char", !188, i64 0}
!188 = !{!"Simple C/C++ TBAA"}
!189 = !DILocation(line: 178, column: 27, scope: !159)
!190 = !DILocation(line: 178, column: 30, scope: !159)
!191 = !DILocation(line: 178, column: 34, scope: !159)
!192 = !DILocation(line: 178, column: 21, scope: !159)
!193 = !DILocation(line: 178, column: 15, scope: !159)
!194 = !DILocation(line: 178, column: 19, scope: !159)
!195 = !{!185, !186, i64 8}
!196 = !DILocation(line: 172, column: 26, scope: !152)
!197 = !DILocation(line: 0, scope: !162)
!198 = !DILocation(line: 183, column: 29, scope: !162)
!199 = !DILocation(line: 183, column: 18, scope: !162)
!200 = !DILocation(line: 184, column: 36, scope: !162)
!201 = !DILocation(line: 184, column: 30, scope: !162)
!202 = !DILocation(line: 184, column: 24, scope: !162)
!203 = !DILocation(line: 184, column: 20, scope: !162)
!204 = !DILocation(line: 188, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !162, file: !2, line: 188, column: 10)
!206 = !DILocation(line: 188, column: 10, scope: !162)
!207 = !DILocation(line: 194, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !162, file: !2, line: 194, column: 10)
!209 = !DILocation(line: 194, column: 10, scope: !162)
!210 = !DILocation(line: 199, column: 23, scope: !162)
!211 = !DILocation(line: 199, column: 33, scope: !162)
!212 = !DILocation(line: 199, column: 43, scope: !162)
!213 = !DILocation(line: 201, column: 17, scope: !169)
!214 = !DILocation(line: 0, scope: !169)
!215 = !DILocation(line: 11, column: 19, scope: !216, inlinedAt: !214)
!216 = distinct !DISubprogram(name: "cheb_eval_e", scope: !217, file: !217, line: 3, type: !218, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !222)
!217 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!218 = !DISubroutineType(types: !219)
!219 = !{!50, !220, !153, !141}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !236}
!223 = !DILocalVariable(name: "cs", arg: 1, scope: !216, file: !217, line: 3, type: !220)
!224 = !DILocalVariable(name: "x", arg: 2, scope: !216, file: !217, line: 4, type: !153)
!225 = !DILocalVariable(name: "result", arg: 3, scope: !216, file: !217, line: 5, type: !141)
!226 = !DILocalVariable(name: "j", scope: !216, file: !217, line: 7, type: !50)
!227 = !DILocalVariable(name: "d", scope: !216, file: !217, line: 8, type: !108)
!228 = !DILocalVariable(name: "dd", scope: !216, file: !217, line: 9, type: !108)
!229 = !DILocalVariable(name: "y", scope: !216, file: !217, line: 11, type: !108)
!230 = !DILocalVariable(name: "y2", scope: !216, file: !217, line: 12, type: !108)
!231 = !DILocalVariable(name: "e", scope: !216, file: !217, line: 14, type: !108)
!232 = !DILocalVariable(name: "temp", scope: !233, file: !217, line: 17, type: !108)
!233 = distinct !DILexicalBlock(scope: !234, file: !217, line: 16, column: 33)
!234 = distinct !DILexicalBlock(scope: !235, file: !217, line: 16, column: 3)
!235 = distinct !DILexicalBlock(scope: !216, file: !217, line: 16, column: 3)
!236 = !DILocalVariable(name: "temp", scope: !237, file: !217, line: 24, type: !108)
!237 = distinct !DILexicalBlock(scope: !216, file: !217, line: 23, column: 3)
!238 = !DILocation(line: 11, column: 30, scope: !216, inlinedAt: !214)
!239 = !DILocation(line: 11, column: 39, scope: !216, inlinedAt: !214)
!240 = !DILocation(line: 0, scope: !216, inlinedAt: !241)
!241 = distinct !DILocation(line: 204, column: 19, scope: !168)
!242 = !DILocation(line: 0, scope: !216, inlinedAt: !243)
!243 = distinct !DILocation(line: 210, column: 19, scope: !172)
!244 = !DILocation(line: 12, column: 19, scope: !216, inlinedAt: !214)
!245 = !DILocation(line: 201, column: 10, scope: !162)
!246 = !DILocation(line: 0, scope: !233, inlinedAt: !241)
!247 = !DILocation(line: 18, column: 11, scope: !233, inlinedAt: !241)
!248 = !DILocation(line: 18, column: 19, scope: !233, inlinedAt: !241)
!249 = !DILocation(line: 25, column: 10, scope: !237, inlinedAt: !241)
!250 = !DILocation(line: 0, scope: !237, inlinedAt: !241)
!251 = !DILocation(line: 25, column: 18, scope: !237, inlinedAt: !241)
!252 = !DILocation(line: 205, column: 35, scope: !168)
!253 = !DILocation(line: 0, scope: !168)
!254 = !DILocation(line: 205, column: 38, scope: !168)
!255 = !DILocation(line: 205, column: 25, scope: !168)
!256 = !DILocation(line: 206, column: 7, scope: !168)
!257 = !DILocation(line: 0, scope: !233, inlinedAt: !243)
!258 = !DILocation(line: 18, column: 11, scope: !233, inlinedAt: !243)
!259 = !DILocation(line: 18, column: 19, scope: !233, inlinedAt: !243)
!260 = !DILocation(line: 25, column: 10, scope: !237, inlinedAt: !243)
!261 = !DILocation(line: 0, scope: !237, inlinedAt: !243)
!262 = !DILocation(line: 25, column: 18, scope: !237, inlinedAt: !243)
!263 = !DILocation(line: 211, column: 32, scope: !172)
!264 = !DILocation(line: 0, scope: !172)
!265 = !DILocation(line: 211, column: 34, scope: !172)
!266 = !DILocation(line: 211, column: 47, scope: !172)
!267 = !DILocation(line: 211, column: 50, scope: !172)
!268 = !DILocation(line: 211, column: 37, scope: !172)
!269 = !DILocation(line: 214, column: 19, scope: !162)
!270 = !DILocation(line: 216, column: 16, scope: !271)
!271 = distinct !DILexicalBlock(scope: !162, file: !2, line: 216, column: 10)
!272 = !DILocation(line: 216, column: 10, scope: !162)
!273 = !DILocation(line: 217, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !2, line: 216, column: 39)
!275 = !DILocation(line: 217, column: 17, scope: !274)
!276 = !DILocation(line: 217, column: 21, scope: !274)
!277 = !DILocation(line: 218, column: 7, scope: !274)
!278 = !DILocation(line: 219, column: 21, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !2, line: 219, column: 15)
!280 = !DILocation(line: 219, column: 15, scope: !271)
!281 = !DILocation(line: 220, column: 27, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !2, line: 219, column: 51)
!283 = !DILocation(line: 220, column: 35, scope: !282)
!284 = !DILocation(line: 220, column: 55, scope: !282)
!285 = !DILocation(line: 220, column: 53, scope: !282)
!286 = !DILocation(line: 220, column: 17, scope: !282)
!287 = !DILocation(line: 220, column: 21, scope: !282)
!288 = !DILocation(line: 221, column: 7, scope: !282)
!289 = !DILocation(line: 222, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !279, file: !2, line: 222, column: 15)
!291 = !DILocation(line: 0, scope: !290)
!292 = !DILocation(line: 222, column: 15, scope: !279)
!293 = !DILocation(line: 223, column: 50, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !2, line: 222, column: 49)
!295 = !DILocation(line: 223, column: 21, scope: !294)
!296 = !DILocation(line: 224, column: 7, scope: !294)
!297 = !DILocation(line: 226, column: 45, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !2, line: 225, column: 12)
!299 = !DILocation(line: 226, column: 21, scope: !298)
!300 = !DILocation(line: 232, column: 1, scope: !138)
!301 = !DISubprogram(name: "ldexp", scope: !302, file: !302, line: 101, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!303 = !DISubroutineType(types: !304)
!304 = !{!108, !108, !50}
!305 = distinct !DISubprogram(name: "gsl_sf_cos_e", scope: !2, file: !2, line: 236, type: !139, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !306)
!306 = !{!307, !308, !309, !311, !312, !313, !314, !317, !319, !320, !321, !322, !323, !326, !327, !329}
!307 = !DILocalVariable(name: "x", arg: 1, scope: !305, file: !2, line: 236, type: !108)
!308 = !DILocalVariable(name: "result", arg: 2, scope: !305, file: !2, line: 236, type: !141)
!309 = !DILocalVariable(name: "P1", scope: !310, file: !2, line: 241, type: !153)
!310 = distinct !DILexicalBlock(scope: !305, file: !2, line: 240, column: 3)
!311 = !DILocalVariable(name: "P2", scope: !310, file: !2, line: 242, type: !153)
!312 = !DILocalVariable(name: "P3", scope: !310, file: !2, line: 243, type: !153)
!313 = !DILocalVariable(name: "abs_x", scope: !310, file: !2, line: 245, type: !153)
!314 = !DILocalVariable(name: "x2", scope: !315, file: !2, line: 248, type: !153)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 247, column: 39)
!316 = distinct !DILexicalBlock(scope: !310, file: !2, line: 247, column: 8)
!317 = !DILocalVariable(name: "sgn_result", scope: !318, file: !2, line: 254, type: !108)
!318 = distinct !DILexicalBlock(scope: !316, file: !2, line: 253, column: 10)
!319 = !DILocalVariable(name: "y", scope: !318, file: !2, line: 255, type: !108)
!320 = !DILocalVariable(name: "octant", scope: !318, file: !2, line: 256, type: !50)
!321 = !DILocalVariable(name: "stat_cs", scope: !318, file: !2, line: 257, type: !50)
!322 = !DILocalVariable(name: "z", scope: !318, file: !2, line: 258, type: !108)
!323 = !DILocalVariable(name: "cos_cs_result", scope: !324, file: !2, line: 278, type: !142)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 277, column: 23)
!325 = distinct !DILexicalBlock(scope: !318, file: !2, line: 277, column: 10)
!326 = !DILocalVariable(name: "t", scope: !324, file: !2, line: 279, type: !153)
!327 = !DILocalVariable(name: "sin_cs_result", scope: !328, file: !2, line: 284, type: !142)
!328 = distinct !DILexicalBlock(scope: !325, file: !2, line: 283, column: 12)
!329 = !DILocalVariable(name: "t", scope: !328, file: !2, line: 285, type: !153)
!330 = !DILocation(line: 0, scope: !305)
!331 = !DILocation(line: 0, scope: !310)
!332 = !DILocation(line: 245, column: 26, scope: !310)
!333 = !DILocation(line: 247, column: 14, scope: !316)
!334 = !DILocation(line: 247, column: 8, scope: !310)
!335 = !DILocation(line: 248, column: 26, scope: !315)
!336 = !DILocation(line: 0, scope: !315)
!337 = !DILocation(line: 249, column: 30, scope: !315)
!338 = !DILocation(line: 249, column: 19, scope: !315)
!339 = !DILocation(line: 250, column: 28, scope: !315)
!340 = !DILocation(line: 250, column: 31, scope: !315)
!341 = !DILocation(line: 250, column: 21, scope: !315)
!342 = !DILocation(line: 250, column: 15, scope: !315)
!343 = !DILocation(line: 250, column: 19, scope: !315)
!344 = !DILocation(line: 0, scope: !318)
!345 = !DILocation(line: 255, column: 29, scope: !318)
!346 = !DILocation(line: 255, column: 18, scope: !318)
!347 = !DILocation(line: 256, column: 36, scope: !318)
!348 = !DILocation(line: 256, column: 30, scope: !318)
!349 = !DILocation(line: 256, column: 24, scope: !318)
!350 = !DILocation(line: 256, column: 20, scope: !318)
!351 = !DILocation(line: 260, column: 10, scope: !352)
!352 = distinct !DILexicalBlock(scope: !318, file: !2, line: 260, column: 10)
!353 = !DILocation(line: 260, column: 10, scope: !318)
!354 = !DILocation(line: 266, column: 17, scope: !355)
!355 = distinct !DILexicalBlock(scope: !318, file: !2, line: 266, column: 10)
!356 = !DILocation(line: 266, column: 10, scope: !318)
!357 = !DILocation(line: 271, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !318, file: !2, line: 271, column: 10)
!359 = !DILocation(line: 271, column: 10, scope: !318)
!360 = !DILocation(line: 275, column: 23, scope: !318)
!361 = !DILocation(line: 275, column: 33, scope: !318)
!362 = !DILocation(line: 275, column: 43, scope: !318)
!363 = !DILocation(line: 277, column: 17, scope: !325)
!364 = !DILocation(line: 0, scope: !325)
!365 = !DILocation(line: 11, column: 19, scope: !216, inlinedAt: !364)
!366 = !DILocation(line: 11, column: 30, scope: !216, inlinedAt: !364)
!367 = !DILocation(line: 11, column: 39, scope: !216, inlinedAt: !364)
!368 = !DILocation(line: 0, scope: !216, inlinedAt: !369)
!369 = distinct !DILocation(line: 280, column: 19, scope: !324)
!370 = !DILocation(line: 0, scope: !216, inlinedAt: !371)
!371 = distinct !DILocation(line: 286, column: 19, scope: !328)
!372 = !DILocation(line: 12, column: 19, scope: !216, inlinedAt: !364)
!373 = !DILocation(line: 277, column: 10, scope: !318)
!374 = !DILocation(line: 0, scope: !233, inlinedAt: !369)
!375 = !DILocation(line: 18, column: 11, scope: !233, inlinedAt: !369)
!376 = !DILocation(line: 18, column: 19, scope: !233, inlinedAt: !369)
!377 = !DILocation(line: 25, column: 10, scope: !237, inlinedAt: !369)
!378 = !DILocation(line: 0, scope: !237, inlinedAt: !369)
!379 = !DILocation(line: 25, column: 18, scope: !237, inlinedAt: !369)
!380 = !DILocation(line: 281, column: 32, scope: !324)
!381 = !DILocation(line: 0, scope: !324)
!382 = !DILocation(line: 281, column: 34, scope: !324)
!383 = !DILocation(line: 281, column: 47, scope: !324)
!384 = !DILocation(line: 281, column: 50, scope: !324)
!385 = !DILocation(line: 281, column: 37, scope: !324)
!386 = !DILocation(line: 282, column: 7, scope: !324)
!387 = !DILocation(line: 0, scope: !233, inlinedAt: !371)
!388 = !DILocation(line: 18, column: 11, scope: !233, inlinedAt: !371)
!389 = !DILocation(line: 18, column: 19, scope: !233, inlinedAt: !371)
!390 = !DILocation(line: 25, column: 10, scope: !237, inlinedAt: !371)
!391 = !DILocation(line: 0, scope: !237, inlinedAt: !371)
!392 = !DILocation(line: 25, column: 18, scope: !237, inlinedAt: !371)
!393 = !DILocation(line: 287, column: 35, scope: !328)
!394 = !DILocation(line: 0, scope: !328)
!395 = !DILocation(line: 287, column: 38, scope: !328)
!396 = !DILocation(line: 287, column: 25, scope: !328)
!397 = !DILocation(line: 290, column: 19, scope: !318)
!398 = !DILocation(line: 292, column: 16, scope: !399)
!399 = distinct !DILexicalBlock(scope: !318, file: !2, line: 292, column: 10)
!400 = !DILocation(line: 292, column: 10, scope: !318)
!401 = !DILocation(line: 293, column: 23, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !2, line: 292, column: 39)
!403 = !DILocation(line: 293, column: 17, scope: !402)
!404 = !DILocation(line: 293, column: 21, scope: !402)
!405 = !DILocation(line: 294, column: 7, scope: !402)
!406 = !DILocation(line: 295, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !2, line: 295, column: 15)
!408 = !DILocation(line: 295, column: 15, scope: !399)
!409 = !DILocation(line: 296, column: 27, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !2, line: 295, column: 51)
!411 = !DILocation(line: 296, column: 35, scope: !410)
!412 = !DILocation(line: 296, column: 55, scope: !410)
!413 = !DILocation(line: 296, column: 53, scope: !410)
!414 = !DILocation(line: 296, column: 17, scope: !410)
!415 = !DILocation(line: 296, column: 21, scope: !410)
!416 = !DILocation(line: 297, column: 7, scope: !410)
!417 = !DILocation(line: 298, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !407, file: !2, line: 298, column: 15)
!419 = !DILocation(line: 0, scope: !418)
!420 = !DILocation(line: 298, column: 15, scope: !407)
!421 = !DILocation(line: 299, column: 50, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !2, line: 298, column: 49)
!423 = !DILocation(line: 299, column: 21, scope: !422)
!424 = !DILocation(line: 300, column: 7, scope: !422)
!425 = !DILocation(line: 302, column: 45, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !2, line: 301, column: 12)
!427 = !DILocation(line: 302, column: 21, scope: !426)
!428 = !DILocation(line: 308, column: 1, scope: !305)
!429 = distinct !DISubprogram(name: "gsl_sf_hypot_e", scope: !2, file: !2, line: 312, type: !430, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!50, !153, !153, !141}
!432 = !{!433, !434, !435, !436, !439, !440, !441, !442, !443}
!433 = !DILocalVariable(name: "x", arg: 1, scope: !429, file: !2, line: 312, type: !153)
!434 = !DILocalVariable(name: "y", arg: 2, scope: !429, file: !2, line: 312, type: !153)
!435 = !DILocalVariable(name: "result", arg: 3, scope: !429, file: !2, line: 312, type: !141)
!436 = !DILocalVariable(name: "a", scope: !437, file: !2, line: 322, type: !153)
!437 = distinct !DILexicalBlock(scope: !438, file: !2, line: 321, column: 8)
!438 = distinct !DILexicalBlock(scope: !429, file: !2, line: 316, column: 6)
!439 = !DILocalVariable(name: "b", scope: !437, file: !2, line: 323, type: !153)
!440 = !DILocalVariable(name: "min", scope: !437, file: !2, line: 324, type: !153)
!441 = !DILocalVariable(name: "max", scope: !437, file: !2, line: 325, type: !153)
!442 = !DILocalVariable(name: "rat", scope: !437, file: !2, line: 326, type: !153)
!443 = !DILocalVariable(name: "root_term", scope: !437, file: !2, line: 327, type: !153)
!444 = !DILocation(line: 0, scope: !429)
!445 = !DILocation(line: 316, column: 8, scope: !438)
!446 = !DILocation(line: 316, column: 15, scope: !438)
!447 = !DILocation(line: 318, column: 17, scope: !448)
!448 = distinct !DILexicalBlock(scope: !438, file: !2, line: 316, column: 28)
!449 = !DILocation(line: 319, column: 5, scope: !448)
!450 = !DILocation(line: 322, column: 22, scope: !437)
!451 = !DILocation(line: 0, scope: !437)
!452 = !DILocation(line: 323, column: 22, scope: !437)
!453 = !DILocalVariable(name: "a", arg: 1, scope: !454, file: !455, line: 75, type: !108)
!454 = distinct !DISubprogram(name: "GSL_MIN_DBL", scope: !455, file: !455, line: 75, type: !456, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !458)
!455 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!456 = !DISubroutineType(types: !457)
!457 = !{!108, !108, !108}
!458 = !{!453, !459}
!459 = !DILocalVariable(name: "b", arg: 2, scope: !454, file: !455, line: 75, type: !108)
!460 = !DILocation(line: 0, scope: !454, inlinedAt: !461)
!461 = distinct !DILocation(line: 324, column: 24, scope: !437)
!462 = !DILocation(line: 77, column: 10, scope: !454, inlinedAt: !461)
!463 = !DILocalVariable(name: "a", arg: 1, scope: !464, file: !455, line: 69, type: !108)
!464 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !455, file: !455, line: 69, type: !456, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !465)
!465 = !{!463, !466}
!466 = !DILocalVariable(name: "b", arg: 2, scope: !464, file: !455, line: 69, type: !108)
!467 = !DILocation(line: 0, scope: !464, inlinedAt: !468)
!468 = distinct !DILocation(line: 325, column: 24, scope: !437)
!469 = !DILocation(line: 71, column: 10, scope: !464, inlinedAt: !468)
!470 = !DILocation(line: 326, column: 27, scope: !437)
!471 = !DILocation(line: 327, column: 44, scope: !437)
!472 = !DILocation(line: 327, column: 30, scope: !437)
!473 = !DILocation(line: 329, column: 25, scope: !474)
!474 = distinct !DILexicalBlock(scope: !437, file: !2, line: 329, column: 8)
!475 = !DILocation(line: 329, column: 12, scope: !474)
!476 = !DILocation(line: 329, column: 8, scope: !437)
!477 = !DILocation(line: 330, column: 25, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !2, line: 329, column: 37)
!479 = !DILocation(line: 330, column: 19, scope: !478)
!480 = !DILocation(line: 331, column: 45, scope: !478)
!481 = !DILocation(line: 331, column: 43, scope: !478)
!482 = !DILocation(line: 331, column: 15, scope: !478)
!483 = !DILocation(line: 331, column: 19, scope: !478)
!484 = !DILocation(line: 332, column: 7, scope: !478)
!485 = !DILocation(line: 335, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 335, column: 7)
!487 = distinct !DILexicalBlock(scope: !474, file: !2, line: 334, column: 10)
!488 = !DILocation(line: 335, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !2, line: 335, column: 7)
!490 = !DILocation(line: 0, scope: !438)
!491 = !DILocation(line: 338, column: 1, scope: !429)
!492 = !DISubprogram(name: "gsl_error", scope: !49, file: !49, line: 77, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !495, !495, !50, !50}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!497 = distinct !DISubprogram(name: "gsl_sf_complex_sin_e", scope: !2, file: !2, line: 342, type: !498, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!50, !153, !153, !141, !141}
!500 = !{!501, !502, !503, !504, !505, !508, !509, !512, !513}
!501 = !DILocalVariable(name: "zr", arg: 1, scope: !497, file: !2, line: 342, type: !153)
!502 = !DILocalVariable(name: "zi", arg: 2, scope: !497, file: !2, line: 342, type: !153)
!503 = !DILocalVariable(name: "szr", arg: 3, scope: !497, file: !2, line: 343, type: !141)
!504 = !DILocalVariable(name: "szi", arg: 4, scope: !497, file: !2, line: 343, type: !141)
!505 = !DILocalVariable(name: "ch_m1", scope: !506, file: !2, line: 349, type: !108)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 348, column: 22)
!507 = distinct !DILexicalBlock(scope: !497, file: !2, line: 348, column: 6)
!508 = !DILocalVariable(name: "sh", scope: !506, file: !2, line: 349, type: !108)
!509 = !DILocalVariable(name: "ex", scope: !510, file: !2, line: 359, type: !108)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 358, column: 39)
!511 = distinct !DILexicalBlock(scope: !507, file: !2, line: 358, column: 11)
!512 = !DILocalVariable(name: "ch", scope: !510, file: !2, line: 360, type: !108)
!513 = !DILocalVariable(name: "sh", scope: !510, file: !2, line: 361, type: !108)
!514 = !DILocation(line: 0, scope: !497)
!515 = !DILocation(line: 348, column: 6, scope: !507)
!516 = !DILocation(line: 348, column: 15, scope: !507)
!517 = !DILocation(line: 348, column: 6, scope: !497)
!518 = !DILocalVariable(name: "x", arg: 1, scope: !519, file: !2, line: 39, type: !153)
!519 = distinct !DISubprogram(name: "sinh_series", scope: !2, file: !2, line: 39, type: !520, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!50, !153, !107}
!522 = !{!518, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!523 = !DILocalVariable(name: "result", arg: 2, scope: !519, file: !2, line: 39, type: !107)
!524 = !DILocalVariable(name: "y", scope: !519, file: !2, line: 41, type: !153)
!525 = !DILocalVariable(name: "c0", scope: !519, file: !2, line: 42, type: !153)
!526 = !DILocalVariable(name: "c1", scope: !519, file: !2, line: 43, type: !153)
!527 = !DILocalVariable(name: "c2", scope: !519, file: !2, line: 44, type: !153)
!528 = !DILocalVariable(name: "c3", scope: !519, file: !2, line: 45, type: !153)
!529 = !DILocalVariable(name: "c4", scope: !519, file: !2, line: 46, type: !153)
!530 = !DILocalVariable(name: "c5", scope: !519, file: !2, line: 47, type: !153)
!531 = !DILocalVariable(name: "c6", scope: !519, file: !2, line: 48, type: !153)
!532 = !DILocalVariable(name: "c7", scope: !519, file: !2, line: 49, type: !153)
!533 = !DILocation(line: 0, scope: !519, inlinedAt: !534)
!534 = distinct !DILocation(line: 350, column: 5, scope: !506)
!535 = !DILocation(line: 41, column: 21, scope: !519, inlinedAt: !534)
!536 = !DILocation(line: 50, column: 65, scope: !519, inlinedAt: !534)
!537 = !DILocation(line: 50, column: 59, scope: !519, inlinedAt: !534)
!538 = !DILocation(line: 50, column: 53, scope: !519, inlinedAt: !534)
!539 = !DILocation(line: 50, column: 47, scope: !519, inlinedAt: !534)
!540 = !DILocation(line: 50, column: 41, scope: !519, inlinedAt: !534)
!541 = !DILocation(line: 50, column: 35, scope: !519, inlinedAt: !534)
!542 = !DILocation(line: 50, column: 29, scope: !519, inlinedAt: !534)
!543 = !DILocation(line: 50, column: 23, scope: !519, inlinedAt: !534)
!544 = !DILocation(line: 50, column: 14, scope: !519, inlinedAt: !534)
!545 = !DILocation(line: 0, scope: !506)
!546 = !DILocalVariable(name: "x", arg: 1, scope: !547, file: !2, line: 61, type: !153)
!547 = distinct !DISubprogram(name: "cosh_m1_series", scope: !2, file: !2, line: 61, type: !520, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !548)
!548 = !{!546, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!549 = !DILocalVariable(name: "result", arg: 2, scope: !547, file: !2, line: 61, type: !107)
!550 = !DILocalVariable(name: "y", scope: !547, file: !2, line: 63, type: !153)
!551 = !DILocalVariable(name: "c0", scope: !547, file: !2, line: 64, type: !153)
!552 = !DILocalVariable(name: "c1", scope: !547, file: !2, line: 65, type: !153)
!553 = !DILocalVariable(name: "c2", scope: !547, file: !2, line: 66, type: !153)
!554 = !DILocalVariable(name: "c3", scope: !547, file: !2, line: 67, type: !153)
!555 = !DILocalVariable(name: "c4", scope: !547, file: !2, line: 68, type: !153)
!556 = !DILocalVariable(name: "c5", scope: !547, file: !2, line: 69, type: !153)
!557 = !DILocalVariable(name: "c6", scope: !547, file: !2, line: 70, type: !153)
!558 = !DILocalVariable(name: "c7", scope: !547, file: !2, line: 71, type: !153)
!559 = !DILocalVariable(name: "c8", scope: !547, file: !2, line: 72, type: !153)
!560 = !DILocation(line: 0, scope: !547, inlinedAt: !561)
!561 = distinct !DILocation(line: 351, column: 5, scope: !506)
!562 = !DILocation(line: 73, column: 62, scope: !547, inlinedAt: !561)
!563 = !DILocation(line: 73, column: 56, scope: !547, inlinedAt: !561)
!564 = !DILocation(line: 73, column: 50, scope: !547, inlinedAt: !561)
!565 = !DILocation(line: 73, column: 44, scope: !547, inlinedAt: !561)
!566 = !DILocation(line: 73, column: 38, scope: !547, inlinedAt: !561)
!567 = !DILocation(line: 73, column: 32, scope: !547, inlinedAt: !561)
!568 = !DILocation(line: 73, column: 26, scope: !547, inlinedAt: !561)
!569 = !DILocation(line: 73, column: 20, scope: !547, inlinedAt: !561)
!570 = !DILocation(line: 73, column: 14, scope: !547, inlinedAt: !561)
!571 = !DILocation(line: 352, column: 23, scope: !506)
!572 = !DILocation(line: 352, column: 14, scope: !506)
!573 = !DILocation(line: 353, column: 23, scope: !506)
!574 = !DILocation(line: 353, column: 14, scope: !506)
!575 = !DILocation(line: 354, column: 50, scope: !506)
!576 = !DILocation(line: 354, column: 40, scope: !506)
!577 = !DILocation(line: 354, column: 38, scope: !506)
!578 = !DILocation(line: 354, column: 10, scope: !506)
!579 = !DILocation(line: 354, column: 14, scope: !506)
!580 = !DILocation(line: 355, column: 40, scope: !506)
!581 = !DILocation(line: 355, column: 38, scope: !506)
!582 = !DILocation(line: 355, column: 10, scope: !506)
!583 = !DILocation(line: 355, column: 14, scope: !506)
!584 = !DILocation(line: 358, column: 20, scope: !511)
!585 = !DILocation(line: 358, column: 11, scope: !507)
!586 = !DILocation(line: 359, column: 17, scope: !510)
!587 = !DILocation(line: 0, scope: !510)
!588 = !DILocation(line: 360, column: 28, scope: !510)
!589 = !DILocation(line: 360, column: 20, scope: !510)
!590 = !DILocation(line: 361, column: 20, scope: !510)
!591 = !DILocation(line: 362, column: 23, scope: !510)
!592 = !DILocation(line: 362, column: 14, scope: !510)
!593 = !DILocation(line: 363, column: 23, scope: !510)
!594 = !DILocation(line: 363, column: 14, scope: !510)
!595 = !DILocation(line: 364, column: 50, scope: !510)
!596 = !DILocation(line: 364, column: 40, scope: !510)
!597 = !DILocation(line: 364, column: 38, scope: !510)
!598 = !DILocation(line: 364, column: 10, scope: !510)
!599 = !DILocation(line: 364, column: 14, scope: !510)
!600 = !DILocation(line: 365, column: 40, scope: !510)
!601 = !DILocation(line: 365, column: 38, scope: !510)
!602 = !DILocation(line: 365, column: 10, scope: !510)
!603 = !DILocation(line: 365, column: 14, scope: !510)
!604 = !DILocation(line: 369, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 369, column: 5)
!606 = distinct !DILexicalBlock(scope: !511, file: !2, line: 368, column: 8)
!607 = !DILocation(line: 369, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !2, line: 369, column: 5)
!609 = !DILocation(line: 0, scope: !507)
!610 = !DILocation(line: 371, column: 1, scope: !497)
!611 = !DISubprogram(name: "sin", scope: !302, file: !302, line: 64, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{!108, !108}
!614 = !DISubprogram(name: "cos", scope: !302, file: !302, line: 62, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubprogram(name: "exp", scope: !302, file: !302, line: 95, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = distinct !DISubprogram(name: "gsl_sf_complex_cos_e", scope: !2, file: !2, line: 375, type: !498, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !617)
!617 = !{!618, !619, !620, !621, !622, !625, !626, !629, !630}
!618 = !DILocalVariable(name: "zr", arg: 1, scope: !616, file: !2, line: 375, type: !153)
!619 = !DILocalVariable(name: "zi", arg: 2, scope: !616, file: !2, line: 375, type: !153)
!620 = !DILocalVariable(name: "czr", arg: 3, scope: !616, file: !2, line: 376, type: !141)
!621 = !DILocalVariable(name: "czi", arg: 4, scope: !616, file: !2, line: 376, type: !141)
!622 = !DILocalVariable(name: "ch_m1", scope: !623, file: !2, line: 382, type: !108)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 381, column: 22)
!624 = distinct !DILexicalBlock(scope: !616, file: !2, line: 381, column: 6)
!625 = !DILocalVariable(name: "sh", scope: !623, file: !2, line: 382, type: !108)
!626 = !DILocalVariable(name: "ex", scope: !627, file: !2, line: 392, type: !108)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 391, column: 39)
!628 = distinct !DILexicalBlock(scope: !624, file: !2, line: 391, column: 11)
!629 = !DILocalVariable(name: "ch", scope: !627, file: !2, line: 393, type: !108)
!630 = !DILocalVariable(name: "sh", scope: !627, file: !2, line: 394, type: !108)
!631 = !DILocation(line: 0, scope: !616)
!632 = !DILocation(line: 381, column: 6, scope: !624)
!633 = !DILocation(line: 381, column: 15, scope: !624)
!634 = !DILocation(line: 381, column: 6, scope: !616)
!635 = !DILocation(line: 0, scope: !519, inlinedAt: !636)
!636 = distinct !DILocation(line: 383, column: 5, scope: !623)
!637 = !DILocation(line: 41, column: 21, scope: !519, inlinedAt: !636)
!638 = !DILocation(line: 50, column: 65, scope: !519, inlinedAt: !636)
!639 = !DILocation(line: 50, column: 59, scope: !519, inlinedAt: !636)
!640 = !DILocation(line: 50, column: 53, scope: !519, inlinedAt: !636)
!641 = !DILocation(line: 50, column: 47, scope: !519, inlinedAt: !636)
!642 = !DILocation(line: 50, column: 41, scope: !519, inlinedAt: !636)
!643 = !DILocation(line: 50, column: 35, scope: !519, inlinedAt: !636)
!644 = !DILocation(line: 50, column: 29, scope: !519, inlinedAt: !636)
!645 = !DILocation(line: 50, column: 23, scope: !519, inlinedAt: !636)
!646 = !DILocation(line: 50, column: 14, scope: !519, inlinedAt: !636)
!647 = !DILocation(line: 0, scope: !623)
!648 = !DILocation(line: 0, scope: !547, inlinedAt: !649)
!649 = distinct !DILocation(line: 384, column: 5, scope: !623)
!650 = !DILocation(line: 73, column: 62, scope: !547, inlinedAt: !649)
!651 = !DILocation(line: 73, column: 56, scope: !547, inlinedAt: !649)
!652 = !DILocation(line: 73, column: 50, scope: !547, inlinedAt: !649)
!653 = !DILocation(line: 73, column: 44, scope: !547, inlinedAt: !649)
!654 = !DILocation(line: 73, column: 38, scope: !547, inlinedAt: !649)
!655 = !DILocation(line: 73, column: 32, scope: !547, inlinedAt: !649)
!656 = !DILocation(line: 73, column: 26, scope: !547, inlinedAt: !649)
!657 = !DILocation(line: 73, column: 20, scope: !547, inlinedAt: !649)
!658 = !DILocation(line: 73, column: 14, scope: !547, inlinedAt: !649)
!659 = !DILocation(line: 385, column: 24, scope: !623)
!660 = !DILocation(line: 385, column: 14, scope: !623)
!661 = !DILocation(line: 386, column: 16, scope: !623)
!662 = !DILocation(line: 386, column: 24, scope: !623)
!663 = !DILocation(line: 386, column: 14, scope: !623)
!664 = !DILocation(line: 387, column: 50, scope: !623)
!665 = !DILocation(line: 387, column: 40, scope: !623)
!666 = !DILocation(line: 387, column: 38, scope: !623)
!667 = !DILocation(line: 387, column: 10, scope: !623)
!668 = !DILocation(line: 387, column: 14, scope: !623)
!669 = !DILocation(line: 388, column: 40, scope: !623)
!670 = !DILocation(line: 388, column: 38, scope: !623)
!671 = !DILocation(line: 388, column: 10, scope: !623)
!672 = !DILocation(line: 388, column: 14, scope: !623)
!673 = !DILocation(line: 391, column: 20, scope: !628)
!674 = !DILocation(line: 391, column: 11, scope: !624)
!675 = !DILocation(line: 392, column: 17, scope: !627)
!676 = !DILocation(line: 0, scope: !627)
!677 = !DILocation(line: 393, column: 28, scope: !627)
!678 = !DILocation(line: 393, column: 20, scope: !627)
!679 = !DILocation(line: 394, column: 20, scope: !627)
!680 = !DILocation(line: 395, column: 24, scope: !627)
!681 = !DILocation(line: 395, column: 14, scope: !627)
!682 = !DILocation(line: 396, column: 16, scope: !627)
!683 = !DILocation(line: 396, column: 24, scope: !627)
!684 = !DILocation(line: 396, column: 14, scope: !627)
!685 = !DILocation(line: 397, column: 50, scope: !627)
!686 = !DILocation(line: 397, column: 40, scope: !627)
!687 = !DILocation(line: 397, column: 38, scope: !627)
!688 = !DILocation(line: 397, column: 10, scope: !627)
!689 = !DILocation(line: 397, column: 14, scope: !627)
!690 = !DILocation(line: 398, column: 40, scope: !627)
!691 = !DILocation(line: 398, column: 38, scope: !627)
!692 = !DILocation(line: 398, column: 10, scope: !627)
!693 = !DILocation(line: 398, column: 14, scope: !627)
!694 = !DILocation(line: 402, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !2, line: 402, column: 5)
!696 = distinct !DILexicalBlock(scope: !628, file: !2, line: 401, column: 8)
!697 = !DILocation(line: 402, column: 5, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !2, line: 402, column: 5)
!699 = !DILocation(line: 0, scope: !624)
!700 = !DILocation(line: 404, column: 1, scope: !616)
!701 = distinct !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !2, file: !2, line: 408, type: !498, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !702)
!702 = !{!703, !704, !705, !706, !707, !711, !712}
!703 = !DILocalVariable(name: "zr", arg: 1, scope: !701, file: !2, line: 408, type: !153)
!704 = !DILocalVariable(name: "zi", arg: 2, scope: !701, file: !2, line: 408, type: !153)
!705 = !DILocalVariable(name: "lszr", arg: 3, scope: !701, file: !2, line: 409, type: !141)
!706 = !DILocalVariable(name: "lszi", arg: 4, scope: !701, file: !2, line: 409, type: !141)
!707 = !DILocalVariable(name: "sin_r", scope: !708, file: !2, line: 427, type: !142)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 426, column: 8)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 420, column: 11)
!710 = distinct !DILexicalBlock(scope: !701, file: !2, line: 414, column: 6)
!711 = !DILocalVariable(name: "sin_i", scope: !708, file: !2, line: 427, type: !142)
!712 = !DILocalVariable(name: "status", scope: !708, file: !2, line: 428, type: !50)
!713 = distinct !DIAssignID()
!714 = !DILocation(line: 0, scope: !708)
!715 = distinct !DIAssignID()
!716 = !DILocation(line: 0, scope: !701)
!717 = !DILocation(line: 414, column: 9, scope: !710)
!718 = !DILocation(line: 414, column: 6, scope: !701)
!719 = !DILocation(line: 415, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !2, line: 414, column: 17)
!721 = !DILocation(line: 416, column: 15, scope: !720)
!722 = !DILocation(line: 417, column: 52, scope: !720)
!723 = !DILocation(line: 417, column: 41, scope: !720)
!724 = !DILocation(line: 417, column: 39, scope: !720)
!725 = !DILocation(line: 417, column: 11, scope: !720)
!726 = !DILocation(line: 417, column: 15, scope: !720)
!727 = !DILocation(line: 418, column: 41, scope: !720)
!728 = !DILocation(line: 418, column: 39, scope: !720)
!729 = !DILocation(line: 418, column: 11, scope: !720)
!730 = !DILocation(line: 418, column: 15, scope: !720)
!731 = !DILocation(line: 419, column: 3, scope: !720)
!732 = !DILocation(line: 420, column: 14, scope: !709)
!733 = !DILocation(line: 420, column: 11, scope: !710)
!734 = !DILocation(line: 421, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !709, file: !2, line: 420, column: 23)
!736 = !DILocation(line: 422, column: 15, scope: !735)
!737 = !DILocation(line: 423, column: 52, scope: !735)
!738 = !DILocation(line: 423, column: 41, scope: !735)
!739 = !DILocation(line: 423, column: 39, scope: !735)
!740 = !DILocation(line: 423, column: 11, scope: !735)
!741 = !DILocation(line: 423, column: 15, scope: !735)
!742 = !DILocation(line: 424, column: 41, scope: !735)
!743 = !DILocation(line: 424, column: 39, scope: !735)
!744 = !DILocation(line: 424, column: 11, scope: !735)
!745 = !DILocation(line: 424, column: 15, scope: !735)
!746 = !DILocation(line: 425, column: 3, scope: !735)
!747 = !DILocation(line: 427, column: 5, scope: !708)
!748 = !DILocation(line: 429, column: 5, scope: !708)
!749 = !{i32 0, i32 17}
!750 = !DILocation(line: 430, column: 41, scope: !708)
!751 = !DILocation(line: 430, column: 52, scope: !708)
!752 = !DILocation(line: 430, column: 14, scope: !708)
!753 = !DILocation(line: 431, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !708, file: !2, line: 431, column: 8)
!755 = !DILocation(line: 431, column: 8, scope: !708)
!756 = !DILocation(line: 434, column: 3, scope: !709)
!757 = !DILocation(line: 432, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 432, column: 7)
!759 = distinct !DILexicalBlock(scope: !754, file: !2, line: 431, column: 28)
!760 = !DILocation(line: 432, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !2, line: 432, column: 7)
!762 = !DILocalVariable(name: "theta", arg: 1, scope: !763, file: !2, line: 602, type: !107)
!763 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !2, file: !2, line: 602, type: !764, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!50, !107}
!766 = !{!762, !767, !768}
!767 = !DILocalVariable(name: "r", scope: !763, file: !2, line: 604, type: !142)
!768 = !DILocalVariable(name: "stat", scope: !763, file: !2, line: 605, type: !50)
!769 = !DILocation(line: 0, scope: !763, inlinedAt: !770)
!770 = distinct !DILocation(line: 435, column: 10, scope: !701)
!771 = !DILocation(line: 605, column: 47, scope: !763, inlinedAt: !770)
!772 = !{!186, !186, i64 0}
!773 = !DILocalVariable(name: "theta", arg: 1, scope: !774, file: !2, line: 533, type: !153)
!774 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !2, file: !2, line: 533, type: !775, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{!50, !153, !141}
!777 = !{!773, !778, !779, !780, !781, !782, !783, !784, !785}
!778 = !DILocalVariable(name: "result", arg: 2, scope: !774, file: !2, line: 533, type: !141)
!779 = !DILocalVariable(name: "P1", scope: !774, file: !2, line: 536, type: !153)
!780 = !DILocalVariable(name: "P2", scope: !774, file: !2, line: 537, type: !153)
!781 = !DILocalVariable(name: "P3", scope: !774, file: !2, line: 538, type: !153)
!782 = !DILocalVariable(name: "TwoPi", scope: !774, file: !2, line: 539, type: !153)
!783 = !DILocalVariable(name: "y", scope: !774, file: !2, line: 541, type: !153)
!784 = !DILocalVariable(name: "r", scope: !774, file: !2, line: 542, type: !108)
!785 = !DILocalVariable(name: "delta", scope: !786, file: !2, line: 559, type: !108)
!786 = distinct !DILexicalBlock(scope: !787, file: !2, line: 558, column: 8)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 554, column: 11)
!788 = distinct !DILexicalBlock(scope: !774, file: !2, line: 549, column: 6)
!789 = !DILocation(line: 0, scope: !774, inlinedAt: !790)
!790 = distinct !DILocation(line: 605, column: 14, scope: !763, inlinedAt: !770)
!791 = !DILocation(line: 541, column: 20, scope: !774, inlinedAt: !790)
!792 = !DILocation(line: 541, column: 48, scope: !774, inlinedAt: !790)
!793 = !DILocation(line: 541, column: 59, scope: !774, inlinedAt: !790)
!794 = !DILocation(line: 541, column: 42, scope: !774, inlinedAt: !790)
!795 = !DILocation(line: 541, column: 40, scope: !774, inlinedAt: !790)
!796 = !DILocation(line: 542, column: 25, scope: !774, inlinedAt: !790)
!797 = !DILocation(line: 542, column: 33, scope: !774, inlinedAt: !790)
!798 = !DILocation(line: 542, column: 41, scope: !774, inlinedAt: !790)
!799 = !DILocation(line: 544, column: 8, scope: !800, inlinedAt: !790)
!800 = distinct !DILexicalBlock(scope: !774, file: !2, line: 544, column: 6)
!801 = !DILocation(line: 544, column: 6, scope: !774, inlinedAt: !790)
!802 = !DILocation(line: 544, column: 33, scope: !803, inlinedAt: !790)
!803 = distinct !DILexicalBlock(scope: !800, file: !2, line: 544, column: 17)
!804 = !DILocation(line: 544, column: 39, scope: !803, inlinedAt: !790)
!805 = !DILocation(line: 544, column: 47, scope: !803, inlinedAt: !790)
!806 = !DILocation(line: 545, column: 14, scope: !807, inlinedAt: !790)
!807 = distinct !DILexicalBlock(scope: !800, file: !2, line: 545, column: 12)
!808 = !DILocation(line: 545, column: 12, scope: !800, inlinedAt: !790)
!809 = !DILocation(line: 545, column: 37, scope: !807, inlinedAt: !790)
!810 = !DILocation(line: 545, column: 43, scope: !807, inlinedAt: !790)
!811 = !DILocation(line: 545, column: 23, scope: !807, inlinedAt: !790)
!812 = !DILocation(line: 549, column: 18, scope: !788, inlinedAt: !790)
!813 = !DILocation(line: 549, column: 6, scope: !774, inlinedAt: !790)
!814 = !DILocation(line: 552, column: 5, scope: !815, inlinedAt: !790)
!815 = distinct !DILexicalBlock(scope: !816, file: !2, line: 552, column: 5)
!816 = distinct !DILexicalBlock(scope: !788, file: !2, line: 549, column: 44)
!817 = !DILocation(line: 0, scope: !788, inlinedAt: !790)
!818 = !DILocation(line: 606, column: 10, scope: !763, inlinedAt: !770)
!819 = !DILocation(line: 435, column: 3, scope: !701)
!820 = !DILocation(line: 436, column: 1, scope: !701)
!821 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !822, file: !822, line: 62, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!823 = !DILocation(line: 0, scope: !763)
!824 = !DILocation(line: 605, column: 47, scope: !763)
!825 = !DILocation(line: 0, scope: !774, inlinedAt: !826)
!826 = distinct !DILocation(line: 605, column: 14, scope: !763)
!827 = !DILocation(line: 541, column: 20, scope: !774, inlinedAt: !826)
!828 = !DILocation(line: 541, column: 48, scope: !774, inlinedAt: !826)
!829 = !DILocation(line: 541, column: 59, scope: !774, inlinedAt: !826)
!830 = !DILocation(line: 541, column: 42, scope: !774, inlinedAt: !826)
!831 = !DILocation(line: 541, column: 40, scope: !774, inlinedAt: !826)
!832 = !DILocation(line: 542, column: 25, scope: !774, inlinedAt: !826)
!833 = !DILocation(line: 542, column: 33, scope: !774, inlinedAt: !826)
!834 = !DILocation(line: 542, column: 41, scope: !774, inlinedAt: !826)
!835 = !DILocation(line: 544, column: 8, scope: !800, inlinedAt: !826)
!836 = !DILocation(line: 544, column: 6, scope: !774, inlinedAt: !826)
!837 = !DILocation(line: 544, column: 33, scope: !803, inlinedAt: !826)
!838 = !DILocation(line: 544, column: 39, scope: !803, inlinedAt: !826)
!839 = !DILocation(line: 544, column: 47, scope: !803, inlinedAt: !826)
!840 = !DILocation(line: 545, column: 14, scope: !807, inlinedAt: !826)
!841 = !DILocation(line: 545, column: 12, scope: !800, inlinedAt: !826)
!842 = !DILocation(line: 545, column: 37, scope: !807, inlinedAt: !826)
!843 = !DILocation(line: 545, column: 43, scope: !807, inlinedAt: !826)
!844 = !DILocation(line: 545, column: 23, scope: !807, inlinedAt: !826)
!845 = !DILocation(line: 549, column: 18, scope: !788, inlinedAt: !826)
!846 = !DILocation(line: 549, column: 6, scope: !774, inlinedAt: !826)
!847 = !DILocation(line: 552, column: 5, scope: !815, inlinedAt: !826)
!848 = !DILocation(line: 0, scope: !788, inlinedAt: !826)
!849 = !DILocation(line: 606, column: 10, scope: !763)
!850 = !DILocation(line: 607, column: 3, scope: !763)
!851 = distinct !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !2, file: !2, line: 440, type: !775, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !852)
!852 = !{!853, !854, !855}
!853 = !DILocalVariable(name: "x", arg: 1, scope: !851, file: !2, line: 440, type: !153)
!854 = !DILocalVariable(name: "result", arg: 2, scope: !851, file: !2, line: 440, type: !141)
!855 = !DILocalVariable(name: "eps", scope: !856, file: !2, line: 448, type: !108)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 447, column: 26)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 447, column: 11)
!858 = distinct !DILexicalBlock(scope: !851, file: !2, line: 444, column: 6)
!859 = !DILocation(line: 0, scope: !851)
!860 = !DILocation(line: 444, column: 8, scope: !858)
!861 = !DILocation(line: 444, column: 6, scope: !851)
!862 = !DILocation(line: 445, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 445, column: 5)
!864 = distinct !DILexicalBlock(scope: !858, file: !2, line: 444, column: 16)
!865 = !DILocation(line: 445, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !2, line: 445, column: 5)
!867 = !DILocation(line: 447, column: 11, scope: !857)
!868 = !DILocation(line: 447, column: 19, scope: !857)
!869 = !DILocation(line: 447, column: 11, scope: !858)
!870 = !DILocation(line: 0, scope: !519, inlinedAt: !871)
!871 = distinct !DILocation(line: 449, column: 5, scope: !856)
!872 = !DILocation(line: 41, column: 21, scope: !519, inlinedAt: !871)
!873 = !DILocation(line: 50, column: 65, scope: !519, inlinedAt: !871)
!874 = !DILocation(line: 50, column: 59, scope: !519, inlinedAt: !871)
!875 = !DILocation(line: 50, column: 53, scope: !519, inlinedAt: !871)
!876 = !DILocation(line: 50, column: 47, scope: !519, inlinedAt: !871)
!877 = !DILocation(line: 50, column: 41, scope: !519, inlinedAt: !871)
!878 = !DILocation(line: 50, column: 35, scope: !519, inlinedAt: !871)
!879 = !DILocation(line: 50, column: 29, scope: !519, inlinedAt: !871)
!880 = !DILocation(line: 50, column: 23, scope: !519, inlinedAt: !871)
!881 = !DILocation(line: 50, column: 14, scope: !519, inlinedAt: !871)
!882 = !DILocation(line: 0, scope: !856)
!883 = !DILocation(line: 450, column: 17, scope: !856)
!884 = !DILocation(line: 451, column: 43, scope: !856)
!885 = !DILocation(line: 451, column: 41, scope: !856)
!886 = !DILocation(line: 451, column: 13, scope: !856)
!887 = !DILocation(line: 451, column: 17, scope: !856)
!888 = !DILocation(line: 454, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !857, file: !2, line: 454, column: 11)
!890 = !DILocation(line: 454, column: 11, scope: !857)
!891 = !DILocation(line: 455, column: 46, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !2, line: 454, column: 41)
!893 = !DILocation(line: 455, column: 38, scope: !892)
!894 = !DILocation(line: 455, column: 30, scope: !892)
!895 = !DILocation(line: 455, column: 17, scope: !892)
!896 = !DILocation(line: 456, column: 43, scope: !892)
!897 = !DILocation(line: 456, column: 41, scope: !892)
!898 = !DILocation(line: 456, column: 13, scope: !892)
!899 = !DILocation(line: 456, column: 17, scope: !892)
!900 = !DILocation(line: 457, column: 5, scope: !892)
!901 = !DILocation(line: 460, column: 17, scope: !902)
!902 = distinct !DILexicalBlock(scope: !889, file: !2, line: 459, column: 8)
!903 = !DILocation(line: 461, column: 43, scope: !902)
!904 = !DILocation(line: 461, column: 41, scope: !902)
!905 = !DILocation(line: 461, column: 13, scope: !902)
!906 = !DILocation(line: 461, column: 17, scope: !902)
!907 = !DILocation(line: 462, column: 5, scope: !902)
!908 = !DILocation(line: 0, scope: !858)
!909 = !DILocation(line: 464, column: 1, scope: !851)
!910 = !DISubprogram(name: "log", scope: !302, file: !302, line: 104, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = distinct !DISubprogram(name: "gsl_sf_lncosh_e", scope: !2, file: !2, line: 467, type: !775, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !912)
!912 = !{!913, !914, !915}
!913 = !DILocalVariable(name: "x", arg: 1, scope: !911, file: !2, line: 467, type: !153)
!914 = !DILocalVariable(name: "result", arg: 2, scope: !911, file: !2, line: 467, type: !141)
!915 = !DILocalVariable(name: "eps", scope: !916, file: !2, line: 472, type: !108)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 471, column: 21)
!917 = distinct !DILexicalBlock(scope: !911, file: !2, line: 471, column: 6)
!918 = !DILocation(line: 0, scope: !911)
!919 = !DILocation(line: 471, column: 6, scope: !917)
!920 = !DILocation(line: 471, column: 14, scope: !917)
!921 = !DILocation(line: 471, column: 6, scope: !911)
!922 = !DILocation(line: 0, scope: !547, inlinedAt: !923)
!923 = distinct !DILocation(line: 473, column: 5, scope: !916)
!924 = !DILocation(line: 63, column: 21, scope: !547, inlinedAt: !923)
!925 = !DILocation(line: 73, column: 62, scope: !547, inlinedAt: !923)
!926 = !DILocation(line: 73, column: 56, scope: !547, inlinedAt: !923)
!927 = !DILocation(line: 73, column: 50, scope: !547, inlinedAt: !923)
!928 = !DILocation(line: 73, column: 44, scope: !547, inlinedAt: !923)
!929 = !DILocation(line: 73, column: 38, scope: !547, inlinedAt: !923)
!930 = !DILocation(line: 73, column: 32, scope: !547, inlinedAt: !923)
!931 = !DILocation(line: 73, column: 26, scope: !547, inlinedAt: !923)
!932 = !DILocation(line: 73, column: 20, scope: !547, inlinedAt: !923)
!933 = !DILocation(line: 73, column: 14, scope: !547, inlinedAt: !923)
!934 = !DILocation(line: 0, scope: !916)
!935 = !DILocation(line: 474, column: 12, scope: !916)
!936 = !DILocation(line: 476, column: 19, scope: !937)
!937 = distinct !DILexicalBlock(scope: !917, file: !2, line: 476, column: 11)
!938 = !DILocation(line: 476, column: 11, scope: !917)
!939 = !DILocation(line: 477, column: 52, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !2, line: 476, column: 47)
!941 = !DILocation(line: 477, column: 44, scope: !940)
!942 = !DILocation(line: 477, column: 36, scope: !940)
!943 = !DILocation(line: 477, column: 17, scope: !940)
!944 = !DILocation(line: 478, column: 43, scope: !940)
!945 = !DILocation(line: 478, column: 41, scope: !940)
!946 = !DILocation(line: 478, column: 13, scope: !940)
!947 = !DILocation(line: 478, column: 17, scope: !940)
!948 = !DILocation(line: 479, column: 5, scope: !940)
!949 = !DILocation(line: 482, column: 17, scope: !950)
!950 = distinct !DILexicalBlock(scope: !937, file: !2, line: 481, column: 8)
!951 = !DILocation(line: 483, column: 43, scope: !950)
!952 = !DILocation(line: 483, column: 41, scope: !950)
!953 = !DILocation(line: 483, column: 13, scope: !950)
!954 = !DILocation(line: 483, column: 17, scope: !950)
!955 = !DILocation(line: 484, column: 5, scope: !950)
!956 = !DILocation(line: 0, scope: !917)
!957 = !DILocation(line: 486, column: 1, scope: !911)
!958 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !822, file: !822, line: 69, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = distinct !DISubprogram(name: "gsl_sf_polar_to_rect", scope: !2, file: !2, line: 500, type: !498, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968}
!961 = !DILocalVariable(name: "r", arg: 1, scope: !959, file: !2, line: 500, type: !153)
!962 = !DILocalVariable(name: "theta", arg: 2, scope: !959, file: !2, line: 500, type: !153)
!963 = !DILocalVariable(name: "x", arg: 3, scope: !959, file: !2, line: 501, type: !141)
!964 = !DILocalVariable(name: "y", arg: 4, scope: !959, file: !2, line: 501, type: !141)
!965 = !DILocalVariable(name: "t", scope: !959, file: !2, line: 503, type: !108)
!966 = !DILocalVariable(name: "status", scope: !959, file: !2, line: 504, type: !50)
!967 = !DILocalVariable(name: "c", scope: !959, file: !2, line: 505, type: !108)
!968 = !DILocalVariable(name: "s", scope: !959, file: !2, line: 506, type: !108)
!969 = !DILocation(line: 0, scope: !959)
!970 = !DILocation(line: 0, scope: !763, inlinedAt: !971)
!971 = distinct !DILocation(line: 504, column: 16, scope: !959)
!972 = !DILocation(line: 0, scope: !774, inlinedAt: !973)
!973 = distinct !DILocation(line: 605, column: 14, scope: !763, inlinedAt: !971)
!974 = !DILocation(line: 541, column: 20, scope: !774, inlinedAt: !973)
!975 = !DILocation(line: 541, column: 48, scope: !774, inlinedAt: !973)
!976 = !DILocation(line: 541, column: 59, scope: !774, inlinedAt: !973)
!977 = !DILocation(line: 541, column: 42, scope: !774, inlinedAt: !973)
!978 = !DILocation(line: 541, column: 40, scope: !774, inlinedAt: !973)
!979 = !DILocation(line: 542, column: 25, scope: !774, inlinedAt: !973)
!980 = !DILocation(line: 542, column: 33, scope: !774, inlinedAt: !973)
!981 = !DILocation(line: 542, column: 41, scope: !774, inlinedAt: !973)
!982 = !DILocation(line: 544, column: 8, scope: !800, inlinedAt: !973)
!983 = !DILocation(line: 544, column: 6, scope: !774, inlinedAt: !973)
!984 = !DILocation(line: 544, column: 33, scope: !803, inlinedAt: !973)
!985 = !DILocation(line: 544, column: 39, scope: !803, inlinedAt: !973)
!986 = !DILocation(line: 544, column: 47, scope: !803, inlinedAt: !973)
!987 = !DILocation(line: 545, column: 14, scope: !807, inlinedAt: !973)
!988 = !DILocation(line: 545, column: 12, scope: !800, inlinedAt: !973)
!989 = !DILocation(line: 545, column: 37, scope: !807, inlinedAt: !973)
!990 = !DILocation(line: 545, column: 43, scope: !807, inlinedAt: !973)
!991 = !DILocation(line: 545, column: 23, scope: !807, inlinedAt: !973)
!992 = !DILocation(line: 549, column: 18, scope: !788, inlinedAt: !973)
!993 = !DILocation(line: 549, column: 6, scope: !774, inlinedAt: !973)
!994 = !DILocation(line: 552, column: 5, scope: !815, inlinedAt: !973)
!995 = !DILocation(line: 0, scope: !788, inlinedAt: !973)
!996 = !DILocation(line: 506, column: 14, scope: !959)
!997 = !DILocation(line: 507, column: 16, scope: !959)
!998 = !DILocation(line: 507, column: 14, scope: !959)
!999 = !DILocation(line: 507, column: 10, scope: !959)
!1000 = !DILocation(line: 508, column: 14, scope: !959)
!1001 = !DILocation(line: 508, column: 10, scope: !959)
!1002 = !DILocation(line: 509, column: 24, scope: !959)
!1003 = !DILocation(line: 509, column: 42, scope: !959)
!1004 = !DILocation(line: 509, column: 17, scope: !959)
!1005 = !DILocation(line: 509, column: 15, scope: !959)
!1006 = !DILocation(line: 509, column: 6, scope: !959)
!1007 = !DILocation(line: 510, column: 45, scope: !959)
!1008 = !DILocation(line: 510, column: 37, scope: !959)
!1009 = !DILocation(line: 510, column: 35, scope: !959)
!1010 = !DILocation(line: 510, column: 10, scope: !959)
!1011 = !DILocation(line: 511, column: 24, scope: !959)
!1012 = !DILocation(line: 511, column: 42, scope: !959)
!1013 = !DILocation(line: 511, column: 17, scope: !959)
!1014 = !DILocation(line: 511, column: 15, scope: !959)
!1015 = !DILocation(line: 511, column: 6, scope: !959)
!1016 = !DILocation(line: 512, column: 37, scope: !959)
!1017 = !DILocation(line: 512, column: 35, scope: !959)
!1018 = !DILocation(line: 512, column: 10, scope: !959)
!1019 = !DILocation(line: 513, column: 3, scope: !959)
!1020 = distinct !DISubprogram(name: "gsl_sf_rect_to_polar", scope: !2, file: !2, line: 518, type: !498, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026}
!1022 = !DILocalVariable(name: "x", arg: 1, scope: !1020, file: !2, line: 518, type: !153)
!1023 = !DILocalVariable(name: "y", arg: 2, scope: !1020, file: !2, line: 518, type: !153)
!1024 = !DILocalVariable(name: "r", arg: 3, scope: !1020, file: !2, line: 519, type: !141)
!1025 = !DILocalVariable(name: "theta", arg: 4, scope: !1020, file: !2, line: 519, type: !141)
!1026 = !DILocalVariable(name: "stat_h", scope: !1020, file: !2, line: 521, type: !50)
!1027 = !DILocation(line: 0, scope: !1020)
!1028 = !DILocation(line: 0, scope: !429, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 521, column: 16, scope: !1020)
!1030 = !DILocation(line: 316, column: 8, scope: !438, inlinedAt: !1029)
!1031 = !DILocation(line: 316, column: 15, scope: !438, inlinedAt: !1029)
!1032 = !DILocation(line: 318, column: 17, scope: !448, inlinedAt: !1029)
!1033 = !DILocation(line: 522, column: 6, scope: !1020)
!1034 = !DILocation(line: 322, column: 22, scope: !437, inlinedAt: !1029)
!1035 = !DILocation(line: 0, scope: !437, inlinedAt: !1029)
!1036 = !DILocation(line: 323, column: 22, scope: !437, inlinedAt: !1029)
!1037 = !DILocation(line: 0, scope: !454, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 324, column: 24, scope: !437, inlinedAt: !1029)
!1039 = !DILocation(line: 77, column: 10, scope: !454, inlinedAt: !1038)
!1040 = !DILocation(line: 0, scope: !464, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 325, column: 24, scope: !437, inlinedAt: !1029)
!1042 = !DILocation(line: 71, column: 10, scope: !464, inlinedAt: !1041)
!1043 = !DILocation(line: 326, column: 27, scope: !437, inlinedAt: !1029)
!1044 = !DILocation(line: 327, column: 44, scope: !437, inlinedAt: !1029)
!1045 = !DILocation(line: 327, column: 30, scope: !437, inlinedAt: !1029)
!1046 = !DILocation(line: 329, column: 25, scope: !474, inlinedAt: !1029)
!1047 = !DILocation(line: 329, column: 12, scope: !474, inlinedAt: !1029)
!1048 = !DILocation(line: 329, column: 8, scope: !437, inlinedAt: !1029)
!1049 = !DILocation(line: 330, column: 25, scope: !478, inlinedAt: !1029)
!1050 = !DILocation(line: 330, column: 19, scope: !478, inlinedAt: !1029)
!1051 = !DILocation(line: 331, column: 45, scope: !478, inlinedAt: !1029)
!1052 = !DILocation(line: 331, column: 43, scope: !478, inlinedAt: !1029)
!1053 = !DILocation(line: 331, column: 15, scope: !478, inlinedAt: !1029)
!1054 = !DILocation(line: 331, column: 19, scope: !478, inlinedAt: !1029)
!1055 = !DILocation(line: 332, column: 7, scope: !478, inlinedAt: !1029)
!1056 = !DILocation(line: 335, column: 7, scope: !486, inlinedAt: !1029)
!1057 = !DILocation(line: 335, column: 7, scope: !489, inlinedAt: !1029)
!1058 = !DILocation(line: 522, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 522, column: 6)
!1060 = !DILocation(line: 0, scope: !438, inlinedAt: !1029)
!1061 = !DILocation(line: 522, column: 13, scope: !1059)
!1062 = !DILocation(line: 523, column: 18, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 522, column: 20)
!1064 = !DILocation(line: 523, column: 16, scope: !1063)
!1065 = !DILocation(line: 524, column: 42, scope: !1063)
!1066 = !DILocation(line: 524, column: 40, scope: !1063)
!1067 = !DILocation(line: 524, column: 12, scope: !1063)
!1068 = !DILocation(line: 524, column: 16, scope: !1063)
!1069 = !DILocation(line: 525, column: 5, scope: !1063)
!1070 = !DILocation(line: 528, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 528, column: 5)
!1072 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 527, column: 8)
!1073 = !DILocation(line: 528, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 528, column: 5)
!1075 = !DILocation(line: 0, scope: !1059)
!1076 = !DILocation(line: 530, column: 1, scope: !1020)
!1077 = !DISubprogram(name: "atan2", scope: !302, file: !302, line: 59, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DILocation(line: 0, scope: !774)
!1079 = !DILocation(line: 541, column: 20, scope: !774)
!1080 = !DILocation(line: 541, column: 48, scope: !774)
!1081 = !DILocation(line: 541, column: 59, scope: !774)
!1082 = !DILocation(line: 541, column: 42, scope: !774)
!1083 = !DILocation(line: 541, column: 40, scope: !774)
!1084 = !DILocation(line: 542, column: 25, scope: !774)
!1085 = !DILocation(line: 542, column: 33, scope: !774)
!1086 = !DILocation(line: 542, column: 41, scope: !774)
!1087 = !DILocation(line: 544, column: 8, scope: !800)
!1088 = !DILocation(line: 544, column: 6, scope: !774)
!1089 = !DILocation(line: 544, column: 33, scope: !803)
!1090 = !DILocation(line: 544, column: 39, scope: !803)
!1091 = !DILocation(line: 544, column: 47, scope: !803)
!1092 = !DILocation(line: 545, column: 14, scope: !807)
!1093 = !DILocation(line: 545, column: 12, scope: !800)
!1094 = !DILocation(line: 545, column: 37, scope: !807)
!1095 = !DILocation(line: 545, column: 43, scope: !807)
!1096 = !DILocation(line: 545, column: 23, scope: !807)
!1097 = !DILocation(line: 547, column: 15, scope: !774)
!1098 = !DILocation(line: 549, column: 18, scope: !788)
!1099 = !DILocation(line: 549, column: 6, scope: !774)
!1100 = !DILocation(line: 550, column: 17, scope: !816)
!1101 = !DILocation(line: 551, column: 13, scope: !816)
!1102 = !DILocation(line: 551, column: 17, scope: !816)
!1103 = !DILocation(line: 552, column: 5, scope: !815)
!1104 = !DILocation(line: 554, column: 23, scope: !787)
!1105 = !DILocation(line: 0, scope: !787)
!1106 = !DILocation(line: 554, column: 11, scope: !788)
!1107 = !DILocation(line: 555, column: 41, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !787, file: !2, line: 554, column: 54)
!1109 = !DILocation(line: 555, column: 13, scope: !1108)
!1110 = !DILocation(line: 555, column: 17, scope: !1108)
!1111 = !DILocation(line: 556, column: 5, scope: !1108)
!1112 = !DILocation(line: 0, scope: !786)
!1113 = !DILocation(line: 560, column: 51, scope: !786)
!1114 = !DILocation(line: 560, column: 44, scope: !786)
!1115 = !DILocation(line: 560, column: 41, scope: !786)
!1116 = !DILocation(line: 560, column: 13, scope: !786)
!1117 = !DILocation(line: 560, column: 17, scope: !786)
!1118 = !DILocation(line: 0, scope: !788)
!1119 = !DILocation(line: 563, column: 1, scope: !774)
!1120 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_err_e", scope: !2, file: !2, line: 566, type: !775, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1122 = !DILocalVariable(name: "theta", arg: 1, scope: !1120, file: !2, line: 566, type: !153)
!1123 = !DILocalVariable(name: "result", arg: 2, scope: !1120, file: !2, line: 566, type: !141)
!1124 = !DILocalVariable(name: "P1", scope: !1120, file: !2, line: 569, type: !153)
!1125 = !DILocalVariable(name: "P2", scope: !1120, file: !2, line: 570, type: !153)
!1126 = !DILocalVariable(name: "P3", scope: !1120, file: !2, line: 571, type: !153)
!1127 = !DILocalVariable(name: "TwoPi", scope: !1120, file: !2, line: 572, type: !153)
!1128 = !DILocalVariable(name: "y", scope: !1120, file: !2, line: 574, type: !153)
!1129 = !DILocalVariable(name: "r", scope: !1120, file: !2, line: 576, type: !108)
!1130 = !DILocalVariable(name: "delta", scope: !1131, file: !2, line: 595, type: !108)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 594, column: 8)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 590, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 585, column: 6)
!1134 = !DILocation(line: 0, scope: !1120)
!1135 = !DILocation(line: 574, column: 33, scope: !1120)
!1136 = !DILocation(line: 574, column: 22, scope: !1120)
!1137 = !DILocation(line: 574, column: 21, scope: !1120)
!1138 = !DILocation(line: 576, column: 25, scope: !1120)
!1139 = !DILocation(line: 576, column: 33, scope: !1120)
!1140 = !DILocation(line: 576, column: 41, scope: !1120)
!1141 = !DILocation(line: 578, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 578, column: 6)
!1143 = !DILocation(line: 578, column: 6, scope: !1120)
!1144 = !DILocation(line: 578, column: 32, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 578, column: 17)
!1146 = !DILocation(line: 578, column: 38, scope: !1145)
!1147 = !DILocation(line: 578, column: 46, scope: !1145)
!1148 = !DILocation(line: 579, column: 14, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 579, column: 12)
!1150 = !DILocation(line: 579, column: 12, scope: !1142)
!1151 = !DILocation(line: 580, column: 19, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 579, column: 19)
!1153 = !DILocation(line: 580, column: 25, scope: !1152)
!1154 = !DILocation(line: 581, column: 3, scope: !1152)
!1155 = !DILocation(line: 583, column: 15, scope: !1120)
!1156 = !DILocation(line: 585, column: 6, scope: !1133)
!1157 = !DILocation(line: 585, column: 18, scope: !1133)
!1158 = !DILocation(line: 585, column: 6, scope: !1120)
!1159 = !DILocation(line: 586, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 585, column: 44)
!1161 = !DILocation(line: 587, column: 13, scope: !1160)
!1162 = !DILocation(line: 587, column: 17, scope: !1160)
!1163 = !DILocation(line: 588, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 588, column: 5)
!1165 = !DILocation(line: 590, column: 23, scope: !1132)
!1166 = !DILocation(line: 0, scope: !1132)
!1167 = !DILocation(line: 590, column: 11, scope: !1133)
!1168 = !DILocation(line: 591, column: 35, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 590, column: 54)
!1170 = !DILocation(line: 591, column: 13, scope: !1169)
!1171 = !DILocation(line: 591, column: 17, scope: !1169)
!1172 = !DILocation(line: 592, column: 5, scope: !1169)
!1173 = !DILocation(line: 0, scope: !1131)
!1174 = !DILocation(line: 596, column: 51, scope: !1131)
!1175 = !DILocation(line: 596, column: 44, scope: !1131)
!1176 = !DILocation(line: 596, column: 41, scope: !1131)
!1177 = !DILocation(line: 596, column: 13, scope: !1131)
!1178 = !DILocation(line: 596, column: 17, scope: !1131)
!1179 = !DILocation(line: 0, scope: !1133)
!1180 = !DILocation(line: 599, column: 1, scope: !1120)
!1181 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !2, file: !2, line: 611, type: !764, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DILocalVariable(name: "theta", arg: 1, scope: !1181, file: !2, line: 611, type: !107)
!1184 = !DILocalVariable(name: "r", scope: !1181, file: !2, line: 613, type: !142)
!1185 = !DILocalVariable(name: "stat", scope: !1181, file: !2, line: 614, type: !50)
!1186 = !DILocation(line: 0, scope: !1181)
!1187 = !DILocation(line: 614, column: 46, scope: !1181)
!1188 = !DILocation(line: 0, scope: !1120, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 614, column: 14, scope: !1181)
!1190 = !DILocation(line: 574, column: 33, scope: !1120, inlinedAt: !1189)
!1191 = !DILocation(line: 574, column: 22, scope: !1120, inlinedAt: !1189)
!1192 = !DILocation(line: 574, column: 21, scope: !1120, inlinedAt: !1189)
!1193 = !DILocation(line: 576, column: 25, scope: !1120, inlinedAt: !1189)
!1194 = !DILocation(line: 576, column: 33, scope: !1120, inlinedAt: !1189)
!1195 = !DILocation(line: 576, column: 41, scope: !1120, inlinedAt: !1189)
!1196 = !DILocation(line: 578, column: 8, scope: !1142, inlinedAt: !1189)
!1197 = !DILocation(line: 578, column: 6, scope: !1120, inlinedAt: !1189)
!1198 = !DILocation(line: 578, column: 32, scope: !1145, inlinedAt: !1189)
!1199 = !DILocation(line: 578, column: 38, scope: !1145, inlinedAt: !1189)
!1200 = !DILocation(line: 578, column: 46, scope: !1145, inlinedAt: !1189)
!1201 = !DILocation(line: 579, column: 14, scope: !1149, inlinedAt: !1189)
!1202 = !DILocation(line: 579, column: 12, scope: !1142, inlinedAt: !1189)
!1203 = !DILocation(line: 580, column: 19, scope: !1152, inlinedAt: !1189)
!1204 = !DILocation(line: 580, column: 25, scope: !1152, inlinedAt: !1189)
!1205 = !DILocation(line: 581, column: 3, scope: !1152, inlinedAt: !1189)
!1206 = !DILocation(line: 585, column: 6, scope: !1133, inlinedAt: !1189)
!1207 = !DILocation(line: 585, column: 18, scope: !1133, inlinedAt: !1189)
!1208 = !DILocation(line: 585, column: 6, scope: !1120, inlinedAt: !1189)
!1209 = !DILocation(line: 588, column: 5, scope: !1164, inlinedAt: !1189)
!1210 = !DILocation(line: 0, scope: !1133, inlinedAt: !1189)
!1211 = !DILocation(line: 615, column: 10, scope: !1181)
!1212 = !DILocation(line: 616, column: 3, scope: !1181)
!1213 = distinct !DISubprogram(name: "gsl_sf_sin_err_e", scope: !2, file: !2, line: 620, type: !430, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DILocalVariable(name: "x", arg: 1, scope: !1213, file: !2, line: 620, type: !153)
!1216 = !DILocalVariable(name: "dx", arg: 2, scope: !1213, file: !2, line: 620, type: !153)
!1217 = !DILocalVariable(name: "result", arg: 3, scope: !1213, file: !2, line: 620, type: !141)
!1218 = !DILocalVariable(name: "stat_s", scope: !1213, file: !2, line: 622, type: !50)
!1219 = !DILocation(line: 0, scope: !1213)
!1220 = !DILocation(line: 622, column: 16, scope: !1213)
!1221 = !DILocation(line: 623, column: 30, scope: !1213)
!1222 = !DILocation(line: 623, column: 18, scope: !1213)
!1223 = !DILocation(line: 623, column: 11, scope: !1213)
!1224 = !DILocation(line: 623, column: 15, scope: !1213)
!1225 = !DILocation(line: 624, column: 49, scope: !1213)
!1226 = !DILocation(line: 624, column: 36, scope: !1213)
!1227 = !DILocation(line: 624, column: 34, scope: !1213)
!1228 = !DILocation(line: 624, column: 15, scope: !1213)
!1229 = !DILocation(line: 625, column: 3, scope: !1213)
!1230 = distinct !DISubprogram(name: "gsl_sf_cos_err_e", scope: !2, file: !2, line: 629, type: !430, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "x", arg: 1, scope: !1230, file: !2, line: 629, type: !153)
!1233 = !DILocalVariable(name: "dx", arg: 2, scope: !1230, file: !2, line: 629, type: !153)
!1234 = !DILocalVariable(name: "result", arg: 3, scope: !1230, file: !2, line: 629, type: !141)
!1235 = !DILocalVariable(name: "stat_c", scope: !1230, file: !2, line: 631, type: !50)
!1236 = !DILocation(line: 0, scope: !1230)
!1237 = !DILocation(line: 631, column: 16, scope: !1230)
!1238 = !DILocation(line: 632, column: 30, scope: !1230)
!1239 = !DILocation(line: 632, column: 18, scope: !1230)
!1240 = !DILocation(line: 632, column: 11, scope: !1230)
!1241 = !DILocation(line: 632, column: 15, scope: !1230)
!1242 = !DILocation(line: 633, column: 49, scope: !1230)
!1243 = !DILocation(line: 633, column: 36, scope: !1230)
!1244 = !DILocation(line: 633, column: 34, scope: !1230)
!1245 = !DILocation(line: 633, column: 15, scope: !1230)
!1246 = !DILocation(line: 634, column: 3, scope: !1230)
!1247 = distinct !DISubprogram(name: "gsl_sf_sinc_e", scope: !2, file: !2, line: 682, type: !139, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1248)
!1248 = !{!1249, !1250, !1251, !1253, !1257, !1258}
!1249 = !DILocalVariable(name: "x", arg: 1, scope: !1247, file: !2, line: 682, type: !108)
!1250 = !DILocalVariable(name: "result", arg: 2, scope: !1247, file: !2, line: 682, type: !141)
!1251 = !DILocalVariable(name: "ax", scope: !1252, file: !2, line: 687, type: !153)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 686, column: 3)
!1253 = !DILocalVariable(name: "r", scope: !1254, file: !2, line: 708, type: !153)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 705, column: 10)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 696, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 689, column: 8)
!1257 = !DILocalVariable(name: "s", scope: !1254, file: !2, line: 709, type: !142)
!1258 = !DILocalVariable(name: "stat_s", scope: !1254, file: !2, line: 710, type: !50)
!1259 = distinct !DIAssignID()
!1260 = !DILocation(line: 0, scope: !1254)
!1261 = !DILocation(line: 0, scope: !1247)
!1262 = !DILocation(line: 687, column: 23, scope: !1252)
!1263 = !DILocation(line: 0, scope: !1252)
!1264 = !DILocation(line: 689, column: 11, scope: !1256)
!1265 = !DILocation(line: 689, column: 8, scope: !1252)
!1266 = !DILocation(line: 694, column: 39, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 689, column: 18)
!1268 = !DILocation(line: 11, column: 19, scope: !216, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 694, column: 14, scope: !1267)
!1270 = !{}
!1271 = !DILocation(line: 0, scope: !216, inlinedAt: !1269)
!1272 = !DILocation(line: 11, column: 30, scope: !216, inlinedAt: !1269)
!1273 = !DILocation(line: 11, column: 39, scope: !216, inlinedAt: !1269)
!1274 = !DILocation(line: 12, column: 19, scope: !216, inlinedAt: !1269)
!1275 = !DILocation(line: 16, column: 3, scope: !235, inlinedAt: !1269)
!1276 = !DILocation(line: 0, scope: !233, inlinedAt: !1269)
!1277 = !DILocation(line: 18, column: 11, scope: !233, inlinedAt: !1269)
!1278 = !DILocation(line: 18, column: 21, scope: !233, inlinedAt: !1269)
!1279 = !DILocation(line: 19, column: 10, scope: !233, inlinedAt: !1269)
!1280 = !DILocation(line: 19, column: 26, scope: !233, inlinedAt: !1269)
!1281 = !DILocation(line: 19, column: 37, scope: !233, inlinedAt: !1269)
!1282 = !DILocation(line: 19, column: 7, scope: !233, inlinedAt: !1269)
!1283 = !DILocation(line: 16, column: 29, scope: !234, inlinedAt: !1269)
!1284 = !DILocation(line: 16, column: 23, scope: !234, inlinedAt: !1269)
!1285 = distinct !{!1285, !1275, !1286, !1287}
!1286 = !DILocation(line: 21, column: 3, scope: !235, inlinedAt: !1269)
!1287 = !{!"llvm.loop.mustprogress"}
!1288 = !DILocation(line: 0, scope: !237, inlinedAt: !1269)
!1289 = !DILocation(line: 25, column: 10, scope: !237, inlinedAt: !1269)
!1290 = !DILocation(line: 25, column: 18, scope: !237, inlinedAt: !1269)
!1291 = !DILocation(line: 26, column: 10, scope: !237, inlinedAt: !1269)
!1292 = !DILocation(line: 26, column: 25, scope: !237, inlinedAt: !1269)
!1293 = !DILocation(line: 26, column: 34, scope: !237, inlinedAt: !1269)
!1294 = !DILocation(line: 26, column: 7, scope: !237, inlinedAt: !1269)
!1295 = !DILocation(line: 29, column: 15, scope: !216, inlinedAt: !1269)
!1296 = !DILocation(line: 30, column: 33, scope: !216, inlinedAt: !1269)
!1297 = !DILocation(line: 30, column: 11, scope: !216, inlinedAt: !1269)
!1298 = !DILocation(line: 30, column: 15, scope: !216, inlinedAt: !1269)
!1299 = !DILocation(line: 694, column: 7, scope: !1267)
!1300 = !DILocation(line: 696, column: 16, scope: !1255)
!1301 = !DILocation(line: 0, scope: !1255)
!1302 = !DILocation(line: 696, column: 13, scope: !1256)
!1303 = !DILocation(line: 701, column: 35, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 696, column: 25)
!1305 = !DILocation(line: 701, column: 19, scope: !1304)
!1306 = !DILocation(line: 702, column: 45, scope: !1304)
!1307 = !DILocation(line: 702, column: 43, scope: !1304)
!1308 = !DILocation(line: 702, column: 15, scope: !1304)
!1309 = !DILocation(line: 702, column: 19, scope: !1304)
!1310 = !DILocation(line: 703, column: 7, scope: !1304)
!1311 = !DILocation(line: 709, column: 7, scope: !1254)
!1312 = !DILocation(line: 710, column: 20, scope: !1254)
!1313 = !DILocation(line: 711, column: 23, scope: !1254)
!1314 = !DILocation(line: 711, column: 26, scope: !1254)
!1315 = !DILocation(line: 711, column: 19, scope: !1254)
!1316 = !DILocation(line: 712, column: 23, scope: !1254)
!1317 = !DILocation(line: 712, column: 26, scope: !1254)
!1318 = !DILocation(line: 712, column: 55, scope: !1254)
!1319 = !DILocation(line: 712, column: 53, scope: !1254)
!1320 = !DILocation(line: 712, column: 15, scope: !1254)
!1321 = !DILocation(line: 712, column: 19, scope: !1254)
!1322 = !DILocation(line: 714, column: 5, scope: !1255)
!1323 = !DILocation(line: 716, column: 1, scope: !1247)
!1324 = distinct !DISubprogram(name: "gsl_sf_sin", scope: !2, file: !2, line: 724, type: !1325, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!108, !153}
!1327 = !{!1328, !1329, !1330}
!1328 = !DILocalVariable(name: "x", arg: 1, scope: !1324, file: !2, line: 724, type: !153)
!1329 = !DILocalVariable(name: "result", scope: !1324, file: !2, line: 726, type: !142)
!1330 = !DILocalVariable(name: "status", scope: !1324, file: !2, line: 726, type: !50)
!1331 = distinct !DIAssignID()
!1332 = !DILocation(line: 0, scope: !1324)
!1333 = !DILocation(line: 726, column: 3, scope: !1324)
!1334 = !DILocation(line: 727, column: 1, scope: !1324)
!1335 = distinct !DISubprogram(name: "gsl_sf_cos", scope: !2, file: !2, line: 729, type: !1325, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DILocalVariable(name: "x", arg: 1, scope: !1335, file: !2, line: 729, type: !153)
!1338 = !DILocalVariable(name: "result", scope: !1335, file: !2, line: 731, type: !142)
!1339 = !DILocalVariable(name: "status", scope: !1335, file: !2, line: 731, type: !50)
!1340 = distinct !DIAssignID()
!1341 = !DILocation(line: 0, scope: !1335)
!1342 = !DILocation(line: 731, column: 3, scope: !1335)
!1343 = !DILocation(line: 732, column: 1, scope: !1335)
!1344 = distinct !DISubprogram(name: "gsl_sf_hypot", scope: !2, file: !2, line: 734, type: !1345, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!108, !153, !153}
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "x", arg: 1, scope: !1344, file: !2, line: 734, type: !153)
!1349 = !DILocalVariable(name: "y", arg: 2, scope: !1344, file: !2, line: 734, type: !153)
!1350 = !DILocalVariable(name: "result", scope: !1344, file: !2, line: 736, type: !142)
!1351 = !DILocalVariable(name: "status", scope: !1344, file: !2, line: 736, type: !50)
!1352 = !DILocation(line: 0, scope: !1344)
!1353 = !DILocation(line: 0, scope: !429, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 736, column: 3, scope: !1344)
!1355 = !DILocation(line: 316, column: 8, scope: !438, inlinedAt: !1354)
!1356 = !DILocation(line: 316, column: 15, scope: !438, inlinedAt: !1354)
!1357 = !DILocation(line: 322, column: 22, scope: !437, inlinedAt: !1354)
!1358 = !DILocation(line: 0, scope: !437, inlinedAt: !1354)
!1359 = !DILocation(line: 323, column: 22, scope: !437, inlinedAt: !1354)
!1360 = !DILocation(line: 0, scope: !454, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 324, column: 24, scope: !437, inlinedAt: !1354)
!1362 = !DILocation(line: 77, column: 10, scope: !454, inlinedAt: !1361)
!1363 = !DILocation(line: 0, scope: !464, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 325, column: 24, scope: !437, inlinedAt: !1354)
!1365 = !DILocation(line: 71, column: 10, scope: !464, inlinedAt: !1364)
!1366 = !DILocation(line: 326, column: 27, scope: !437, inlinedAt: !1354)
!1367 = !DILocation(line: 327, column: 44, scope: !437, inlinedAt: !1354)
!1368 = !DILocation(line: 327, column: 30, scope: !437, inlinedAt: !1354)
!1369 = !DILocation(line: 329, column: 25, scope: !474, inlinedAt: !1354)
!1370 = !DILocation(line: 329, column: 12, scope: !474, inlinedAt: !1354)
!1371 = !DILocation(line: 329, column: 8, scope: !437, inlinedAt: !1354)
!1372 = !DILocation(line: 330, column: 25, scope: !478, inlinedAt: !1354)
!1373 = !DILocation(line: 332, column: 7, scope: !478, inlinedAt: !1354)
!1374 = !DILocation(line: 335, column: 7, scope: !489, inlinedAt: !1354)
!1375 = !DILocation(line: 736, column: 3, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 736, column: 3)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 736, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 736, column: 3)
!1379 = !DILocation(line: 737, column: 1, scope: !1344)
!1380 = distinct !DISubprogram(name: "gsl_sf_lnsinh", scope: !2, file: !2, line: 739, type: !1325, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1381)
!1381 = !{!1382, !1383, !1384}
!1382 = !DILocalVariable(name: "x", arg: 1, scope: !1380, file: !2, line: 739, type: !153)
!1383 = !DILocalVariable(name: "result", scope: !1380, file: !2, line: 741, type: !142)
!1384 = !DILocalVariable(name: "status", scope: !1380, file: !2, line: 741, type: !50)
!1385 = distinct !DIAssignID()
!1386 = !DILocation(line: 0, scope: !1380)
!1387 = !DILocation(line: 741, column: 3, scope: !1380)
!1388 = !{i32 0, i32 2}
!1389 = !DILocation(line: 741, column: 3, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 741, column: 3)
!1391 = !DILocation(line: 741, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 741, column: 3)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 741, column: 3)
!1394 = !DILocation(line: 742, column: 1, scope: !1380)
!1395 = distinct !DISubprogram(name: "gsl_sf_lncosh", scope: !2, file: !2, line: 744, type: !1325, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DILocalVariable(name: "x", arg: 1, scope: !1395, file: !2, line: 744, type: !153)
!1398 = !DILocalVariable(name: "result", scope: !1395, file: !2, line: 746, type: !142)
!1399 = !DILocalVariable(name: "status", scope: !1395, file: !2, line: 746, type: !50)
!1400 = distinct !DIAssignID()
!1401 = !DILocation(line: 0, scope: !1395)
!1402 = !DILocation(line: 746, column: 3, scope: !1395)
!1403 = !DILocation(line: 746, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 746, column: 3)
!1405 = !DILocation(line: 746, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 746, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 746, column: 3)
!1408 = !DILocation(line: 747, column: 1, scope: !1395)
!1409 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm", scope: !2, file: !2, line: 749, type: !1325, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "theta", arg: 1, scope: !1409, file: !2, line: 749, type: !153)
!1412 = !DILocalVariable(name: "result", scope: !1409, file: !2, line: 751, type: !108)
!1413 = !DILocalVariable(name: "status", scope: !1409, file: !2, line: 752, type: !50)
!1414 = !DILocation(line: 0, scope: !1409)
!1415 = !DILocation(line: 0, scope: !763, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 752, column: 3, scope: !1409)
!1417 = !DILocation(line: 0, scope: !774, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 605, column: 14, scope: !763, inlinedAt: !1416)
!1419 = !DILocation(line: 541, column: 20, scope: !774, inlinedAt: !1418)
!1420 = !DILocation(line: 541, column: 48, scope: !774, inlinedAt: !1418)
!1421 = !DILocation(line: 541, column: 59, scope: !774, inlinedAt: !1418)
!1422 = !DILocation(line: 541, column: 42, scope: !774, inlinedAt: !1418)
!1423 = !DILocation(line: 541, column: 40, scope: !774, inlinedAt: !1418)
!1424 = !DILocation(line: 542, column: 25, scope: !774, inlinedAt: !1418)
!1425 = !DILocation(line: 542, column: 33, scope: !774, inlinedAt: !1418)
!1426 = !DILocation(line: 542, column: 41, scope: !774, inlinedAt: !1418)
!1427 = !DILocation(line: 544, column: 8, scope: !800, inlinedAt: !1418)
!1428 = !DILocation(line: 544, column: 6, scope: !774, inlinedAt: !1418)
!1429 = !DILocation(line: 544, column: 33, scope: !803, inlinedAt: !1418)
!1430 = !DILocation(line: 544, column: 39, scope: !803, inlinedAt: !1418)
!1431 = !DILocation(line: 544, column: 47, scope: !803, inlinedAt: !1418)
!1432 = !DILocation(line: 545, column: 14, scope: !807, inlinedAt: !1418)
!1433 = !DILocation(line: 545, column: 12, scope: !800, inlinedAt: !1418)
!1434 = !DILocation(line: 545, column: 37, scope: !807, inlinedAt: !1418)
!1435 = !DILocation(line: 545, column: 43, scope: !807, inlinedAt: !1418)
!1436 = !DILocation(line: 545, column: 23, scope: !807, inlinedAt: !1418)
!1437 = !DILocation(line: 549, column: 18, scope: !788, inlinedAt: !1418)
!1438 = !DILocation(line: 549, column: 6, scope: !774, inlinedAt: !1418)
!1439 = !DILocation(line: 552, column: 5, scope: !815, inlinedAt: !1418)
!1440 = !DILocation(line: 752, column: 3, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 752, column: 3)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 752, column: 3)
!1443 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 752, column: 3)
!1444 = !DILocation(line: 753, column: 1, scope: !1409)
!1445 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos", scope: !2, file: !2, line: 755, type: !1325, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DILocalVariable(name: "theta", arg: 1, scope: !1445, file: !2, line: 755, type: !153)
!1448 = !DILocalVariable(name: "result", scope: !1445, file: !2, line: 757, type: !108)
!1449 = !DILocalVariable(name: "status", scope: !1445, file: !2, line: 758, type: !50)
!1450 = !DILocation(line: 0, scope: !1445)
!1451 = !DILocation(line: 0, scope: !1181, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 758, column: 3, scope: !1445)
!1453 = !DILocation(line: 0, scope: !1120, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 614, column: 14, scope: !1181, inlinedAt: !1452)
!1455 = !DILocation(line: 574, column: 33, scope: !1120, inlinedAt: !1454)
!1456 = !DILocation(line: 574, column: 22, scope: !1120, inlinedAt: !1454)
!1457 = !DILocation(line: 574, column: 21, scope: !1120, inlinedAt: !1454)
!1458 = !DILocation(line: 576, column: 25, scope: !1120, inlinedAt: !1454)
!1459 = !DILocation(line: 576, column: 33, scope: !1120, inlinedAt: !1454)
!1460 = !DILocation(line: 576, column: 41, scope: !1120, inlinedAt: !1454)
!1461 = !DILocation(line: 578, column: 8, scope: !1142, inlinedAt: !1454)
!1462 = !DILocation(line: 578, column: 6, scope: !1120, inlinedAt: !1454)
!1463 = !DILocation(line: 578, column: 32, scope: !1145, inlinedAt: !1454)
!1464 = !DILocation(line: 578, column: 38, scope: !1145, inlinedAt: !1454)
!1465 = !DILocation(line: 578, column: 46, scope: !1145, inlinedAt: !1454)
!1466 = !DILocation(line: 579, column: 14, scope: !1149, inlinedAt: !1454)
!1467 = !DILocation(line: 579, column: 12, scope: !1142, inlinedAt: !1454)
!1468 = !DILocation(line: 580, column: 19, scope: !1152, inlinedAt: !1454)
!1469 = !DILocation(line: 580, column: 25, scope: !1152, inlinedAt: !1454)
!1470 = !DILocation(line: 581, column: 3, scope: !1152, inlinedAt: !1454)
!1471 = !DILocation(line: 585, column: 6, scope: !1133, inlinedAt: !1454)
!1472 = !DILocation(line: 585, column: 18, scope: !1133, inlinedAt: !1454)
!1473 = !DILocation(line: 585, column: 6, scope: !1120, inlinedAt: !1454)
!1474 = !DILocation(line: 588, column: 5, scope: !1164, inlinedAt: !1454)
!1475 = !DILocation(line: 758, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 758, column: 3)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 758, column: 3)
!1478 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 758, column: 3)
!1479 = !DILocation(line: 759, column: 1, scope: !1445)
!1480 = distinct !DISubprogram(name: "gsl_sf_sinc", scope: !2, file: !2, line: 768, type: !1325, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DILocalVariable(name: "x", arg: 1, scope: !1480, file: !2, line: 768, type: !153)
!1483 = !DILocalVariable(name: "result", scope: !1480, file: !2, line: 770, type: !142)
!1484 = !DILocalVariable(name: "status", scope: !1480, file: !2, line: 770, type: !50)
!1485 = distinct !DIAssignID()
!1486 = !DILocation(line: 0, scope: !1480)
!1487 = !DILocation(line: 770, column: 3, scope: !1480)
!1488 = !DILocation(line: 771, column: 1, scope: !1480)
