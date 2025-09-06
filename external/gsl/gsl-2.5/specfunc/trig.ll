; ModuleID = 'trig.c'
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
  br i1 %4, label %5, label %15, !dbg !178

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !179
  tail call void @llvm.dbg.value(metadata double %6, metadata !158, metadata !DIExpression()), !dbg !180
  %7 = fdiv double %6, 6.000000e+00, !dbg !181
  %8 = fsub double 1.000000e+00, %7, !dbg !182
  %9 = fmul double %8, %0, !dbg !183
  store double %9, ptr %1, align 8, !dbg !184, !tbaa !185
  %10 = fmul double %6, %0, !dbg !190
  %11 = fmul double %6, %10, !dbg !191
  %12 = fdiv double %11, 1.000000e+02, !dbg !192
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !193
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !194
  store double %13, ptr %14, align 8, !dbg !195, !tbaa !196
  br label %154

15:                                               ; preds = %2
  %16 = fcmp oge double %0, 0.000000e+00, !dbg !197
  %17 = select i1 %16, double 1.000000e+00, double -1.000000e+00, !dbg !197
  tail call void @llvm.dbg.value(metadata double %17, metadata !156, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata double %17, metadata !161, metadata !DIExpression()), !dbg !198
  %18 = fdiv double %3, 0x3FE921FB54442D18, !dbg !199
  %19 = tail call double @llvm.floor.f64(double %18), !dbg !200
  tail call void @llvm.dbg.value(metadata double %19, metadata !163, metadata !DIExpression()), !dbg !198
  %20 = tail call double @ldexp(double noundef %19, i32 noundef -3) #9, !dbg !201
  %21 = tail call double @llvm.floor.f64(double %20), !dbg !202
  %22 = tail call double @ldexp(double noundef %21, i32 noundef 3) #9, !dbg !203
  %23 = fsub double %19, %22, !dbg !204
  %24 = fptosi double %23 to i32, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !164, metadata !DIExpression()), !dbg !198
  %25 = and i32 %24, 1, !dbg !206
  %26 = icmp eq i32 %25, 0, !dbg !206
  %27 = add nsw i32 %24, 1, !dbg !208
  %28 = and i32 %27, 6, !dbg !208
  %29 = fadd double %19, 1.000000e+00, !dbg !208
  %30 = select i1 %26, double %19, double %29, !dbg !208
  %31 = select i1 %26, i32 %24, i32 %28, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !164, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata double %30, metadata !163, metadata !DIExpression()), !dbg !198
  %32 = icmp sgt i32 %31, 3, !dbg !209
  %33 = add nsw i32 %31, -4, !dbg !211
  %34 = fneg double %17, !dbg !211
  %35 = select i1 %32, i32 %33, i32 %31, !dbg !211
  %36 = select i1 %32, double %34, double %17, !dbg !211
  tail call void @llvm.dbg.value(metadata double %36, metadata !161, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !164, metadata !DIExpression()), !dbg !198
  %37 = fmul double %30, 0x3FE921FB40000000, !dbg !212
  %38 = fsub double %3, %37, !dbg !213
  %39 = fmul double %30, 0x3E64442D00000000, !dbg !214
  %40 = fsub double %38, %39, !dbg !215
  %41 = fmul double %30, 0x3CE8469898CC5170, !dbg !216
  %42 = fsub double %40, %41, !dbg !217
  tail call void @llvm.dbg.value(metadata double %42, metadata !166, metadata !DIExpression()), !dbg !198
  %43 = icmp eq i32 %35, 0, !dbg !218
  %44 = tail call double @llvm.fabs.f64(double %42), !dbg !219
  %45 = fmul double %44, 8.000000e+00, !dbg !219
  %46 = fdiv double %45, 0x400921FB54442D18, !dbg !219
  %47 = fadd double %46, -1.000000e+00, !dbg !219
  %48 = fmul double %47, 2.000000e+00, !dbg !220
  %49 = fadd double %48, 1.000000e+00, !dbg !243
  %50 = fadd double %49, -1.000000e+00, !dbg !244
  %51 = fmul double %50, 5.000000e-01, !dbg !245
  call void @llvm.dbg.value(metadata double %51, metadata !234, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %51, metadata !234, metadata !DIExpression()), !dbg !248
  %52 = fmul double %51, 2.000000e+00, !dbg !250
  call void @llvm.dbg.value(metadata double %52, metadata !235, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %52, metadata !235, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !248
  br i1 %43, label %53, label %92, !dbg !251

53:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 11, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !237, metadata !DIExpression()), !dbg !252
  %54 = fmul double %52, 0.000000e+00, !dbg !253
  %55 = fadd double %54, 0xBC01720EAB8B78D9, !dbg !254
  call void @llvm.dbg.value(metadata double %55, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %55, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %55, metadata !237, metadata !DIExpression()), !dbg !252
  %56 = fmul double %52, %55, !dbg !253
  %57 = fadd double %56, 0x3C7DF529F4EE609B, !dbg !254
  call void @llvm.dbg.value(metadata double %57, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %55, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %57, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %55, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %57, metadata !237, metadata !DIExpression()), !dbg !252
  %58 = fmul double %52, %57, !dbg !253
  %59 = fsub double %58, %55, !dbg !255
  %60 = fadd double %59, 0x3CC359222F7327B9, !dbg !254
  call void @llvm.dbg.value(metadata double %60, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %57, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %60, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %57, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %60, metadata !237, metadata !DIExpression()), !dbg !252
  %61 = fmul double %52, %60, !dbg !253
  %62 = fsub double %61, %57, !dbg !255
  %63 = fadd double %62, 0xBD3DB5727EAFF830, !dbg !254
  call void @llvm.dbg.value(metadata double %63, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %60, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %63, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %60, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %63, metadata !237, metadata !DIExpression()), !dbg !252
  %64 = fmul double %52, %63, !dbg !253
  %65 = fsub double %64, %60, !dbg !255
  %66 = fadd double %65, 0xBD7E9CA84CF05BCA, !dbg !254
  call void @llvm.dbg.value(metadata double %66, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %63, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %66, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %63, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %66, metadata !237, metadata !DIExpression()), !dbg !252
  %67 = fmul double %52, %66, !dbg !253
  %68 = fsub double %67, %63, !dbg !255
  %69 = fadd double %68, 0x3DF4CCB1745F7AEF, !dbg !254
  call void @llvm.dbg.value(metadata double %69, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %66, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %69, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %66, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %69, metadata !237, metadata !DIExpression()), !dbg !252
  %70 = fmul double %52, %69, !dbg !253
  %71 = fsub double %70, %66, !dbg !255
  %72 = fadd double %71, 0x3E30035896CBFD12, !dbg !254
  call void @llvm.dbg.value(metadata double %72, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %69, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %72, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %69, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %72, metadata !237, metadata !DIExpression()), !dbg !252
  %73 = fmul double %52, %72, !dbg !253
  %74 = fsub double %73, %69, !dbg !255
  %75 = fadd double %74, 0xBEA3192DC15885EE, !dbg !254
  call void @llvm.dbg.value(metadata double %75, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %72, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %75, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %72, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %75, metadata !237, metadata !DIExpression()), !dbg !252
  %76 = fmul double %52, %75, !dbg !253
  %77 = fsub double %76, %72, !dbg !255
  %78 = fadd double %77, 0xBED3806BE0E5860C, !dbg !254
  call void @llvm.dbg.value(metadata double %78, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %75, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %78, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %75, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %78, metadata !237, metadata !DIExpression()), !dbg !252
  %79 = fmul double %52, %78, !dbg !253
  %80 = fsub double %79, %75, !dbg !255
  %81 = fadd double %80, 0x3F4484E2F770F8F9, !dbg !254
  call void @llvm.dbg.value(metadata double %81, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %78, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %81, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %78, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %81, metadata !237, metadata !DIExpression()), !dbg !252
  %82 = fmul double %52, %81, !dbg !253
  %83 = fsub double %82, %78, !dbg !255
  %84 = fadd double %83, 0x3F64C95F8909975F, !dbg !254
  call void @llvm.dbg.value(metadata double %84, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %81, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i64 0, metadata !231, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %84, metadata !241, metadata !DIExpression()), !dbg !256
  %85 = fmul double %51, %84, !dbg !257
  %86 = fsub double %85, %81, !dbg !258
  %87 = fadd double %86, 0xBFC516D6ED5A909E, !dbg !259
  call void @llvm.dbg.value(metadata double %87, metadata !232, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata double %87, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !260
  tail call void @llvm.dbg.value(metadata double poison, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !260
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !198
  %88 = fmul double %42, %42, !dbg !261
  %89 = fmul double %88, %87, !dbg !262
  %90 = fadd double %89, 1.000000e+00, !dbg !263
  %91 = fmul double %42, %90, !dbg !264
  br label %131, !dbg !265

92:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !237, metadata !DIExpression()), !dbg !266
  %93 = fmul double %52, 0.000000e+00, !dbg !267
  %94 = fadd double %93, 0xBC513B0F0BC54B44, !dbg !268
  call void @llvm.dbg.value(metadata double %94, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %94, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %94, metadata !237, metadata !DIExpression()), !dbg !266
  %95 = fmul double %52, %94, !dbg !267
  %96 = fadd double %95, 0xBC9629F4559019C6, !dbg !268
  call void @llvm.dbg.value(metadata double %96, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %94, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %96, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %94, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %96, metadata !237, metadata !DIExpression()), !dbg !266
  %97 = fmul double %52, %96, !dbg !267
  %98 = fsub double %97, %94, !dbg !269
  %99 = fadd double %98, 0x3D13F154A7D83B0B, !dbg !268
  call void @llvm.dbg.value(metadata double %99, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %96, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %99, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %96, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %99, metadata !237, metadata !DIExpression()), !dbg !266
  %100 = fmul double %52, %99, !dbg !267
  %101 = fsub double %100, %96, !dbg !269
  %102 = fadd double %101, 0x3D5475A7A2BEFBF3, !dbg !268
  call void @llvm.dbg.value(metadata double %102, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %99, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %102, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %99, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %102, metadata !237, metadata !DIExpression()), !dbg !266
  %103 = fmul double %52, %102, !dbg !267
  %104 = fsub double %103, %99, !dbg !269
  %105 = fadd double %104, 0xBDD0C261C93AC254, !dbg !268
  call void @llvm.dbg.value(metadata double %105, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %102, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %105, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %102, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %105, metadata !237, metadata !DIExpression()), !dbg !266
  %106 = fmul double %52, %105, !dbg !267
  %107 = fsub double %106, %102, !dbg !269
  %108 = fadd double %107, 0xBE09B0EA9D1E67BC, !dbg !268
  call void @llvm.dbg.value(metadata double %108, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %105, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %108, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %105, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %108, metadata !237, metadata !DIExpression()), !dbg !266
  %109 = fmul double %52, %108, !dbg !267
  %110 = fsub double %109, %105, !dbg !269
  %111 = fadd double %110, 0x3E833C6A8FD9C1B5, !dbg !268
  call void @llvm.dbg.value(metadata double %111, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %108, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %111, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %108, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %111, metadata !237, metadata !DIExpression()), !dbg !266
  %112 = fmul double %52, %111, !dbg !267
  %113 = fsub double %112, %108, !dbg !269
  %114 = fadd double %113, 0x3EB38F2B9C42CF35, !dbg !268
  call void @llvm.dbg.value(metadata double %114, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %111, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %114, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %111, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %114, metadata !237, metadata !DIExpression()), !dbg !266
  %115 = fmul double %52, %114, !dbg !267
  %116 = fsub double %115, %111, !dbg !269
  %117 = fadd double %116, 0xBF2B89555B0F99C2, !dbg !268
  call void @llvm.dbg.value(metadata double %117, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %114, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %117, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %114, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %117, metadata !237, metadata !DIExpression()), !dbg !266
  %118 = fmul double %52, %117, !dbg !267
  %119 = fsub double %118, %114, !dbg !269
  %120 = fadd double %119, 0xBF4BCDF9CE308462, !dbg !268
  call void @llvm.dbg.value(metadata double %120, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %117, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 0, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %120, metadata !241, metadata !DIExpression()), !dbg !270
  %121 = fmul double %51, %120, !dbg !271
  %122 = fsub double %121, %117, !dbg !272
  %123 = fadd double %122, 0x3FB52B8F3111FF6A, !dbg !273
  call void @llvm.dbg.value(metadata double %123, metadata !232, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %123, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !198
  %124 = fmul double %42, 5.000000e-01, !dbg !275
  %125 = fmul double %42, %124, !dbg !276
  %126 = fmul double %42, %42, !dbg !277
  %127 = fmul double %126, %123, !dbg !278
  %128 = fsub double 1.000000e+00, %127, !dbg !279
  %129 = fmul double %125, %128, !dbg !280
  %130 = fsub double 1.000000e+00, %129, !dbg !281
  br label %131

131:                                              ; preds = %92, %53
  %132 = phi double [ %130, %92 ], [ %91, %53 ], !dbg !219
  tail call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !198
  %133 = fmul double %36, %132, !dbg !282
  store double %133, ptr %1, align 8, !dbg !282, !tbaa !185
  %134 = fcmp ogt double %3, 0x4330000000000000, !dbg !283
  br i1 %134, label %135, label %138, !dbg !285

135:                                              ; preds = %131
  %136 = tail call double @llvm.fabs.f64(double %133), !dbg !286
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !288
  store double %136, ptr %137, align 8, !dbg !289, !tbaa !196
  br label %154, !dbg !290

138:                                              ; preds = %131
  %139 = fcmp ogt double %3, 0x41F9000000000000, !dbg !291
  br i1 %139, label %140, label %146, !dbg !293

140:                                              ; preds = %138
  %141 = fmul double %3, 2.000000e+00, !dbg !294
  %142 = fmul double %141, 0x3CB0000000000000, !dbg !296
  %143 = tail call double @llvm.fabs.f64(double %133), !dbg !297
  %144 = fmul double %142, %143, !dbg !298
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !299
  store double %144, ptr %145, align 8, !dbg !300, !tbaa !196
  br label %154, !dbg !301

146:                                              ; preds = %138
  %147 = fcmp ogt double %3, 0x415999999999999A, !dbg !302
  %148 = tail call double @llvm.fabs.f64(double %133), !dbg !304
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !304
  br i1 %147, label %150, label %152, !dbg !305

150:                                              ; preds = %146
  %151 = fmul double %148, 0x3E60000000000000, !dbg !306
  store double %151, ptr %149, align 8, !dbg !308, !tbaa !196
  br label %154, !dbg !309

152:                                              ; preds = %146
  %153 = fmul double %148, 0x3CC0000000000000, !dbg !310
  store double %153, ptr %149, align 8, !dbg !312, !tbaa !196
  br label %154

154:                                              ; preds = %135, %150, %152, %140, %5
  ret i32 0, !dbg !313
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !314 double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_cos_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !318 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !320, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !321, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata double 0x3FE921FB40000000, metadata !322, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double 0x3E64442D00000000, metadata !324, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double 0x3CE8469898CC5170, metadata !325, metadata !DIExpression()), !dbg !344
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !345
  tail call void @llvm.dbg.value(metadata double %3, metadata !326, metadata !DIExpression()), !dbg !344
  %4 = fcmp olt double %3, 0x3F20000000000000, !dbg !346
  br i1 %4, label %5, label %13, !dbg !347

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !348
  tail call void @llvm.dbg.value(metadata double %6, metadata !327, metadata !DIExpression()), !dbg !349
  %7 = fmul double %6, 5.000000e-01, !dbg !350
  %8 = fsub double 1.000000e+00, %7, !dbg !351
  store double %8, ptr %1, align 8, !dbg !352, !tbaa !185
  %9 = fmul double %6, %6, !dbg !353
  %10 = fdiv double %9, 1.200000e+01, !dbg !354
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !355
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !356
  store double %11, ptr %12, align 8, !dbg !357, !tbaa !196
  br label %152

13:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !330, metadata !DIExpression()), !dbg !358
  %14 = fdiv double %3, 0x3FE921FB54442D18, !dbg !359
  %15 = tail call double @llvm.floor.f64(double %14), !dbg !360
  tail call void @llvm.dbg.value(metadata double %15, metadata !332, metadata !DIExpression()), !dbg !358
  %16 = tail call double @ldexp(double noundef %15, i32 noundef -3) #9, !dbg !361
  %17 = tail call double @llvm.floor.f64(double %16), !dbg !362
  %18 = tail call double @ldexp(double noundef %17, i32 noundef 3) #9, !dbg !363
  %19 = fsub double %15, %18, !dbg !364
  %20 = fptosi double %19 to i32, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !333, metadata !DIExpression()), !dbg !358
  %21 = and i32 %20, 1, !dbg !366
  %22 = icmp eq i32 %21, 0, !dbg !366
  %23 = add nsw i32 %20, 1, !dbg !368
  %24 = and i32 %23, 6, !dbg !368
  %25 = fadd double %15, 1.000000e+00, !dbg !368
  %26 = select i1 %22, double %15, double %25, !dbg !368
  %27 = select i1 %22, i32 %20, i32 %24, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !333, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata double %26, metadata !332, metadata !DIExpression()), !dbg !358
  %28 = icmp sgt i32 %27, 3, !dbg !369
  %29 = add nsw i32 %27, -4, !dbg !371
  %30 = select i1 %28, i32 %29, i32 %27, !dbg !371
  %31 = select i1 %28, double -1.000000e+00, double 1.000000e+00, !dbg !371
  tail call void @llvm.dbg.value(metadata double %31, metadata !330, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !333, metadata !DIExpression()), !dbg !358
  %32 = icmp sgt i32 %30, 1, !dbg !372
  %33 = fneg double %31, !dbg !374
  %34 = select i1 %32, double %33, double %31, !dbg !374
  tail call void @llvm.dbg.value(metadata double %34, metadata !330, metadata !DIExpression()), !dbg !358
  %35 = fmul double %26, 0x3FE921FB40000000, !dbg !375
  %36 = fsub double %3, %35, !dbg !376
  %37 = fmul double %26, 0x3E64442D00000000, !dbg !377
  %38 = fsub double %36, %37, !dbg !378
  %39 = fmul double %26, 0x3CE8469898CC5170, !dbg !379
  %40 = fsub double %38, %39, !dbg !380
  tail call void @llvm.dbg.value(metadata double %40, metadata !335, metadata !DIExpression()), !dbg !358
  %41 = icmp eq i32 %30, 0, !dbg !381
  %42 = tail call double @llvm.fabs.f64(double %40), !dbg !382
  %43 = fmul double %42, 8.000000e+00, !dbg !382
  %44 = fdiv double %43, 0x400921FB54442D18, !dbg !382
  %45 = fadd double %44, -1.000000e+00, !dbg !382
  %46 = fmul double %45, 2.000000e+00, !dbg !383
  %47 = fadd double %46, 1.000000e+00, !dbg !384
  %48 = fadd double %47, -1.000000e+00, !dbg !385
  %49 = fmul double %48, 5.000000e-01, !dbg !386
  call void @llvm.dbg.value(metadata double %49, metadata !234, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %49, metadata !234, metadata !DIExpression()), !dbg !389
  %50 = fmul double %49, 2.000000e+00, !dbg !391
  call void @llvm.dbg.value(metadata double %50, metadata !235, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %50, metadata !235, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !389
  br i1 %41, label %51, label %90, !dbg !392

51:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !237, metadata !DIExpression()), !dbg !393
  %52 = fmul double %50, 0.000000e+00, !dbg !394
  %53 = fadd double %52, 0xBC513B0F0BC54B44, !dbg !395
  call void @llvm.dbg.value(metadata double %53, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %53, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %53, metadata !237, metadata !DIExpression()), !dbg !393
  %54 = fmul double %50, %53, !dbg !394
  %55 = fadd double %54, 0xBC9629F4559019C6, !dbg !395
  call void @llvm.dbg.value(metadata double %55, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %53, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %55, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %53, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %55, metadata !237, metadata !DIExpression()), !dbg !393
  %56 = fmul double %50, %55, !dbg !394
  %57 = fsub double %56, %53, !dbg !396
  %58 = fadd double %57, 0x3D13F154A7D83B0B, !dbg !395
  call void @llvm.dbg.value(metadata double %58, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %55, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %58, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %55, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %58, metadata !237, metadata !DIExpression()), !dbg !393
  %59 = fmul double %50, %58, !dbg !394
  %60 = fsub double %59, %55, !dbg !396
  %61 = fadd double %60, 0x3D5475A7A2BEFBF3, !dbg !395
  call void @llvm.dbg.value(metadata double %61, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %58, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %61, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %58, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %61, metadata !237, metadata !DIExpression()), !dbg !393
  %62 = fmul double %50, %61, !dbg !394
  %63 = fsub double %62, %58, !dbg !396
  %64 = fadd double %63, 0xBDD0C261C93AC254, !dbg !395
  call void @llvm.dbg.value(metadata double %64, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %61, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %64, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %61, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %64, metadata !237, metadata !DIExpression()), !dbg !393
  %65 = fmul double %50, %64, !dbg !394
  %66 = fsub double %65, %61, !dbg !396
  %67 = fadd double %66, 0xBE09B0EA9D1E67BC, !dbg !395
  call void @llvm.dbg.value(metadata double %67, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %64, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %67, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %64, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %67, metadata !237, metadata !DIExpression()), !dbg !393
  %68 = fmul double %50, %67, !dbg !394
  %69 = fsub double %68, %64, !dbg !396
  %70 = fadd double %69, 0x3E833C6A8FD9C1B5, !dbg !395
  call void @llvm.dbg.value(metadata double %70, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %67, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %70, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %67, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %70, metadata !237, metadata !DIExpression()), !dbg !393
  %71 = fmul double %50, %70, !dbg !394
  %72 = fsub double %71, %67, !dbg !396
  %73 = fadd double %72, 0x3EB38F2B9C42CF35, !dbg !395
  call void @llvm.dbg.value(metadata double %73, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %70, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %73, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %70, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %73, metadata !237, metadata !DIExpression()), !dbg !393
  %74 = fmul double %50, %73, !dbg !394
  %75 = fsub double %74, %70, !dbg !396
  %76 = fadd double %75, 0xBF2B89555B0F99C2, !dbg !395
  call void @llvm.dbg.value(metadata double %76, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %73, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %76, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %73, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %76, metadata !237, metadata !DIExpression()), !dbg !393
  %77 = fmul double %50, %76, !dbg !394
  %78 = fsub double %77, %73, !dbg !396
  %79 = fadd double %78, 0xBF4BCDF9CE308462, !dbg !395
  call void @llvm.dbg.value(metadata double %79, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %76, metadata !233, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 0, metadata !231, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %79, metadata !241, metadata !DIExpression()), !dbg !397
  %80 = fmul double %49, %79, !dbg !398
  %81 = fsub double %80, %76, !dbg !399
  %82 = fadd double %81, 0x3FB52B8F3111FF6A, !dbg !400
  call void @llvm.dbg.value(metadata double %82, metadata !232, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %82, metadata !336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !401
  tail call void @llvm.dbg.value(metadata double poison, metadata !336, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !401
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !358
  %83 = fmul double %40, 5.000000e-01, !dbg !402
  %84 = fmul double %40, %83, !dbg !403
  %85 = fmul double %40, %40, !dbg !404
  %86 = fmul double %85, %82, !dbg !405
  %87 = fsub double 1.000000e+00, %86, !dbg !406
  %88 = fmul double %84, %87, !dbg !407
  %89 = fsub double 1.000000e+00, %88, !dbg !408
  br label %129, !dbg !409

90:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 11, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !237, metadata !DIExpression()), !dbg !410
  %91 = fmul double %50, 0.000000e+00, !dbg !411
  %92 = fadd double %91, 0xBC01720EAB8B78D9, !dbg !412
  call void @llvm.dbg.value(metadata double %92, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 10, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %92, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %92, metadata !237, metadata !DIExpression()), !dbg !410
  %93 = fmul double %50, %92, !dbg !411
  %94 = fadd double %93, 0x3C7DF529F4EE609B, !dbg !412
  call void @llvm.dbg.value(metadata double %94, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %92, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 9, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %94, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %92, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %94, metadata !237, metadata !DIExpression()), !dbg !410
  %95 = fmul double %50, %94, !dbg !411
  %96 = fsub double %95, %92, !dbg !413
  %97 = fadd double %96, 0x3CC359222F7327B9, !dbg !412
  call void @llvm.dbg.value(metadata double %97, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %94, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 8, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %97, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %94, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %97, metadata !237, metadata !DIExpression()), !dbg !410
  %98 = fmul double %50, %97, !dbg !411
  %99 = fsub double %98, %94, !dbg !413
  %100 = fadd double %99, 0xBD3DB5727EAFF830, !dbg !412
  call void @llvm.dbg.value(metadata double %100, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %97, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 7, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %100, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %97, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %100, metadata !237, metadata !DIExpression()), !dbg !410
  %101 = fmul double %50, %100, !dbg !411
  %102 = fsub double %101, %97, !dbg !413
  %103 = fadd double %102, 0xBD7E9CA84CF05BCA, !dbg !412
  call void @llvm.dbg.value(metadata double %103, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %100, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 6, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %103, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %100, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %103, metadata !237, metadata !DIExpression()), !dbg !410
  %104 = fmul double %50, %103, !dbg !411
  %105 = fsub double %104, %100, !dbg !413
  %106 = fadd double %105, 0x3DF4CCB1745F7AEF, !dbg !412
  call void @llvm.dbg.value(metadata double %106, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %103, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 5, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %106, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %103, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %106, metadata !237, metadata !DIExpression()), !dbg !410
  %107 = fmul double %50, %106, !dbg !411
  %108 = fsub double %107, %103, !dbg !413
  %109 = fadd double %108, 0x3E30035896CBFD12, !dbg !412
  call void @llvm.dbg.value(metadata double %109, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %106, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 4, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %109, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %106, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %109, metadata !237, metadata !DIExpression()), !dbg !410
  %110 = fmul double %50, %109, !dbg !411
  %111 = fsub double %110, %106, !dbg !413
  %112 = fadd double %111, 0xBEA3192DC15885EE, !dbg !412
  call void @llvm.dbg.value(metadata double %112, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %109, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 3, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %112, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %109, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %112, metadata !237, metadata !DIExpression()), !dbg !410
  %113 = fmul double %50, %112, !dbg !411
  %114 = fsub double %113, %109, !dbg !413
  %115 = fadd double %114, 0xBED3806BE0E5860C, !dbg !412
  call void @llvm.dbg.value(metadata double %115, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %112, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 2, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %115, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %112, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %115, metadata !237, metadata !DIExpression()), !dbg !410
  %116 = fmul double %50, %115, !dbg !411
  %117 = fsub double %116, %112, !dbg !413
  %118 = fadd double %117, 0x3F4484E2F770F8F9, !dbg !412
  call void @llvm.dbg.value(metadata double %118, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %115, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %118, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %115, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %118, metadata !237, metadata !DIExpression()), !dbg !410
  %119 = fmul double %50, %118, !dbg !411
  %120 = fsub double %119, %115, !dbg !413
  %121 = fadd double %120, 0x3F64C95F8909975F, !dbg !412
  call void @llvm.dbg.value(metadata double %121, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %118, metadata !233, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 0, metadata !231, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double %121, metadata !241, metadata !DIExpression()), !dbg !414
  %122 = fmul double %49, %121, !dbg !415
  %123 = fsub double %122, %118, !dbg !416
  %124 = fadd double %123, 0xBFC516D6ED5A909E, !dbg !417
  call void @llvm.dbg.value(metadata double %124, metadata !232, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !389
  tail call void @llvm.dbg.value(metadata double %124, metadata !340, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !418
  tail call void @llvm.dbg.value(metadata double poison, metadata !340, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !358
  %125 = fmul double %40, %40, !dbg !419
  %126 = fmul double %125, %124, !dbg !420
  %127 = fadd double %126, 1.000000e+00, !dbg !421
  %128 = fmul double %40, %127, !dbg !422
  br label %129

129:                                              ; preds = %90, %51
  %130 = phi double [ %128, %90 ], [ %89, %51 ], !dbg !382
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !358
  %131 = fmul double %34, %130, !dbg !423
  store double %131, ptr %1, align 8, !dbg !423, !tbaa !185
  %132 = fcmp ogt double %3, 0x4330000000000000, !dbg !424
  br i1 %132, label %133, label %136, !dbg !426

133:                                              ; preds = %129
  %134 = tail call double @llvm.fabs.f64(double %131), !dbg !427
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !429
  store double %134, ptr %135, align 8, !dbg !430, !tbaa !196
  br label %152, !dbg !431

136:                                              ; preds = %129
  %137 = fcmp ogt double %3, 0x41F9000000000000, !dbg !432
  br i1 %137, label %138, label %144, !dbg !434

138:                                              ; preds = %136
  %139 = fmul double %3, 2.000000e+00, !dbg !435
  %140 = fmul double %139, 0x3CB0000000000000, !dbg !437
  %141 = tail call double @llvm.fabs.f64(double %131), !dbg !438
  %142 = fmul double %140, %141, !dbg !439
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !440
  store double %142, ptr %143, align 8, !dbg !441, !tbaa !196
  br label %152, !dbg !442

144:                                              ; preds = %136
  %145 = fcmp ogt double %3, 0x415999999999999A, !dbg !443
  %146 = tail call double @llvm.fabs.f64(double %131), !dbg !445
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !445
  br i1 %145, label %148, label %150, !dbg !446

148:                                              ; preds = %144
  %149 = fmul double %146, 0x3E60000000000000, !dbg !447
  store double %149, ptr %147, align 8, !dbg !449, !tbaa !196
  br label %152, !dbg !450

150:                                              ; preds = %144
  %151 = fmul double %146, 0x3CC0000000000000, !dbg !451
  store double %151, ptr %147, align 8, !dbg !453, !tbaa !196
  br label %152

152:                                              ; preds = %133, %148, %150, %138, %5
  ret i32 0, !dbg !454
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hypot_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !455 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !459, metadata !DIExpression()), !dbg !470
  tail call void @llvm.dbg.value(metadata double %1, metadata !460, metadata !DIExpression()), !dbg !470
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !461, metadata !DIExpression()), !dbg !470
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !471
  %5 = fcmp oeq double %1, 0.000000e+00
  %6 = and i1 %4, %5, !dbg !472
  br i1 %6, label %7, label %8, !dbg !472

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !473
  br label %28, !dbg !475

8:                                                ; preds = %3
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !476
  tail call void @llvm.dbg.value(metadata double %9, metadata !462, metadata !DIExpression()), !dbg !477
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !478
  tail call void @llvm.dbg.value(metadata double %10, metadata !465, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %9, metadata !479, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata double %10, metadata !485, metadata !DIExpression()), !dbg !486
  %11 = fcmp olt double %9, %10, !dbg !488
  %12 = select i1 %11, double %9, double %10, !dbg !488
  tail call void @llvm.dbg.value(metadata double %12, metadata !466, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %9, metadata !489, metadata !DIExpression()), !dbg !493
  tail call void @llvm.dbg.value(metadata double %10, metadata !492, metadata !DIExpression()), !dbg !493
  %13 = fcmp ogt double %9, %10, !dbg !495
  %14 = select i1 %13, double %9, double %10, !dbg !495
  tail call void @llvm.dbg.value(metadata double %14, metadata !467, metadata !DIExpression()), !dbg !477
  %15 = fdiv double %12, %14, !dbg !496
  tail call void @llvm.dbg.value(metadata double %15, metadata !468, metadata !DIExpression()), !dbg !477
  %16 = fmul double %15, %15, !dbg !497
  %17 = fadd double %16, 1.000000e+00, !dbg !498
  %18 = tail call double @llvm.sqrt.f64(double %17), !dbg !499
  tail call void @llvm.dbg.value(metadata double %18, metadata !469, metadata !DIExpression()), !dbg !477
  %19 = fdiv double 0x7FEFFFFFFFFFFFFF, %18, !dbg !500
  %20 = fcmp olt double %14, %19, !dbg !502
  br i1 %20, label %21, label %26, !dbg !503

21:                                               ; preds = %8
  %22 = fmul double %14, %18, !dbg !504
  store double %22, ptr %2, align 8, !dbg !506, !tbaa !185
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !507
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !508
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !509
  store double %24, ptr %25, align 8, !dbg !510, !tbaa !196
  br label %28, !dbg !511

26:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !512, !tbaa !185
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !512
  store double 0x7FF0000000000000, ptr %27, align 8, !dbg !512, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #9, !dbg !515
  br label %28, !dbg !515

28:                                               ; preds = %21, %26, %7
  %29 = phi i32 [ 0, %7 ], [ 0, %21 ], [ 16, %26 ], !dbg !517
  ret i32 %29, !dbg !518
}

declare !dbg !519 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_sin_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !524 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !528, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata double %1, metadata !529, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !531, metadata !DIExpression()), !dbg !541
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !542
  %6 = fcmp olt double %5, 1.000000e+00, !dbg !543
  br i1 %6, label %7, label %55, !dbg !544

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %1, metadata !545, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !550, metadata !DIExpression()), !dbg !560
  %8 = fmul double %1, %1, !dbg !562
  tail call void @llvm.dbg.value(metadata double %8, metadata !551, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !552, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !553, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !557, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !559, metadata !DIExpression()), !dbg !560
  %9 = fmul double %8, 0x3CE952C77030AD4A, !dbg !563
  %10 = fadd double %9, 0x3D6AE7F3E733B81F, !dbg !564
  %11 = fmul double %8, %10, !dbg !565
  %12 = fadd double %11, 0x3DE6124613A86D09, !dbg !566
  %13 = fmul double %8, %12, !dbg !567
  %14 = fadd double %13, 0x3E5AE64567F544E4, !dbg !568
  %15 = fmul double %8, %14, !dbg !569
  %16 = fadd double %15, 0x3EC71DE3A556C734, !dbg !570
  %17 = fmul double %8, %16, !dbg !571
  %18 = fadd double %17, 0x3F2A01A01A01A01A, !dbg !572
  %19 = fmul double %8, %18, !dbg !573
  %20 = fadd double %19, 0x3F81111111111111, !dbg !574
  %21 = fmul double %8, %20, !dbg !575
  %22 = fadd double %21, 0x3FC5555555555555, !dbg !576
  %23 = fmul double %8, %22, !dbg !577
  %24 = fadd double %23, 1.000000e+00, !dbg !578
  %25 = fmul double %24, %1, !dbg !579
  tail call void @llvm.dbg.value(metadata double %25, metadata !535, metadata !DIExpression()), !dbg !580
  tail call void @llvm.dbg.value(metadata double %1, metadata !581, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !584, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double %8, metadata !585, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !586, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !587, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !588, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !589, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !590, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !591, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !592, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !593, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !594, metadata !DIExpression()), !dbg !595
  %26 = fmul double %8, 0x3CA6827863B97D97, !dbg !597
  %27 = fadd double %26, 0x3D2AE7F3E733B81F, !dbg !598
  %28 = fmul double %8, %27, !dbg !599
  %29 = fadd double %28, 0x3DA93974A8C07C9D, !dbg !600
  %30 = fmul double %8, %29, !dbg !601
  %31 = fadd double %30, 0x3E21EED8EFF8D898, !dbg !602
  %32 = fmul double %8, %31, !dbg !603
  %33 = fadd double %32, 0x3E927E4FB7789F5C, !dbg !604
  %34 = fmul double %8, %33, !dbg !605
  %35 = fadd double %34, 0x3EFA01A01A01A01A, !dbg !606
  %36 = fmul double %8, %35, !dbg !607
  %37 = fadd double %36, 0x3F56C16C16C16C17, !dbg !608
  %38 = fmul double %8, %37, !dbg !609
  %39 = fadd double %38, 0x3FA5555555555555, !dbg !610
  %40 = fmul double %8, %39, !dbg !611
  %41 = fadd double %40, 5.000000e-01, !dbg !612
  %42 = fmul double %8, %41, !dbg !613
  tail call void @llvm.dbg.value(metadata double %42, metadata !532, metadata !DIExpression()), !dbg !580
  %43 = tail call double @sin(double noundef %0) #9, !dbg !614
  %44 = fadd double %42, 1.000000e+00, !dbg !615
  %45 = fmul double %44, %43, !dbg !616
  store double %45, ptr %2, align 8, !dbg !617, !tbaa !185
  %46 = tail call double @cos(double noundef %0) #9, !dbg !618
  %47 = fmul double %25, %46, !dbg !619
  store double %47, ptr %3, align 8, !dbg !620, !tbaa !185
  %48 = load double, ptr %2, align 8, !dbg !621, !tbaa !185
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !622
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !623
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !624
  store double %50, ptr %51, align 8, !dbg !625, !tbaa !196
  %52 = tail call double @llvm.fabs.f64(double %47), !dbg !626
  %53 = fmul double %52, 0x3CC0000000000000, !dbg !627
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !628
  store double %53, ptr %54, align 8, !dbg !629, !tbaa !196
  br label %78

55:                                               ; preds = %4
  %56 = fcmp olt double %5, 0x40862E42FEFA39EF, !dbg !630
  br i1 %56, label %57, label %75, !dbg !631

57:                                               ; preds = %55
  %58 = tail call double @exp(double noundef %1) #9, !dbg !632
  tail call void @llvm.dbg.value(metadata double %58, metadata !536, metadata !DIExpression()), !dbg !633
  %59 = fdiv double 1.000000e+00, %58, !dbg !634
  %60 = fadd double %58, %59, !dbg !635
  %61 = fmul double %60, 5.000000e-01, !dbg !636
  tail call void @llvm.dbg.value(metadata double %61, metadata !539, metadata !DIExpression()), !dbg !633
  %62 = fsub double %58, %59, !dbg !637
  %63 = fmul double %62, 5.000000e-01, !dbg !638
  tail call void @llvm.dbg.value(metadata double %63, metadata !540, metadata !DIExpression()), !dbg !633
  %64 = tail call double @sin(double noundef %0) #9, !dbg !639
  %65 = fmul double %64, %61, !dbg !640
  store double %65, ptr %2, align 8, !dbg !641, !tbaa !185
  %66 = tail call double @cos(double noundef %0) #9, !dbg !642
  %67 = fmul double %66, %63, !dbg !643
  store double %67, ptr %3, align 8, !dbg !644, !tbaa !185
  %68 = load double, ptr %2, align 8, !dbg !645, !tbaa !185
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !646
  %70 = fmul double %69, 0x3CC0000000000000, !dbg !647
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !648
  store double %70, ptr %71, align 8, !dbg !649, !tbaa !196
  %72 = tail call double @llvm.fabs.f64(double %67), !dbg !650
  %73 = fmul double %72, 0x3CC0000000000000, !dbg !651
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !652
  store double %73, ptr %74, align 8, !dbg !653, !tbaa !196
  br label %78

75:                                               ; preds = %55
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !654, !tbaa !185
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !654
  store double 0x7FF0000000000000, ptr %76, align 8, !dbg !654, !tbaa !196
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !654, !tbaa !185
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !654
  store double 0x7FF0000000000000, ptr %77, align 8, !dbg !654, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 369, i32 noundef 16) #9, !dbg !657
  br label %78, !dbg !657

78:                                               ; preds = %7, %57, %75
  %79 = phi i32 [ 0, %7 ], [ 0, %57 ], [ 16, %75 ], !dbg !659
  ret i32 %79, !dbg !660
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !661 double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !664 double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !665 double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_cos_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !666 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !668, metadata !DIExpression()), !dbg !681
  tail call void @llvm.dbg.value(metadata double %1, metadata !669, metadata !DIExpression()), !dbg !681
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !670, metadata !DIExpression()), !dbg !681
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !671, metadata !DIExpression()), !dbg !681
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !682
  %6 = fcmp olt double %5, 1.000000e+00, !dbg !683
  br i1 %6, label %7, label %56, !dbg !684

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %1, metadata !545, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !550, metadata !DIExpression()), !dbg !685
  %8 = fmul double %1, %1, !dbg !687
  tail call void @llvm.dbg.value(metadata double %8, metadata !551, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !552, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !553, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !555, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !556, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !557, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !559, metadata !DIExpression()), !dbg !685
  %9 = fmul double %8, 0x3CE952C77030AD4A, !dbg !688
  %10 = fadd double %9, 0x3D6AE7F3E733B81F, !dbg !689
  %11 = fmul double %8, %10, !dbg !690
  %12 = fadd double %11, 0x3DE6124613A86D09, !dbg !691
  %13 = fmul double %8, %12, !dbg !692
  %14 = fadd double %13, 0x3E5AE64567F544E4, !dbg !693
  %15 = fmul double %8, %14, !dbg !694
  %16 = fadd double %15, 0x3EC71DE3A556C734, !dbg !695
  %17 = fmul double %8, %16, !dbg !696
  %18 = fadd double %17, 0x3F2A01A01A01A01A, !dbg !697
  %19 = fmul double %8, %18, !dbg !698
  %20 = fadd double %19, 0x3F81111111111111, !dbg !699
  %21 = fmul double %8, %20, !dbg !700
  %22 = fadd double %21, 0x3FC5555555555555, !dbg !701
  %23 = fmul double %8, %22, !dbg !702
  %24 = fadd double %23, 1.000000e+00, !dbg !703
  %25 = fmul double %24, %1, !dbg !704
  tail call void @llvm.dbg.value(metadata double %25, metadata !675, metadata !DIExpression()), !dbg !705
  tail call void @llvm.dbg.value(metadata double %1, metadata !581, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !584, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double %8, metadata !585, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !586, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !587, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !588, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !589, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !590, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !591, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !592, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !593, metadata !DIExpression()), !dbg !706
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !594, metadata !DIExpression()), !dbg !706
  %26 = fmul double %8, 0x3CA6827863B97D97, !dbg !708
  %27 = fadd double %26, 0x3D2AE7F3E733B81F, !dbg !709
  %28 = fmul double %8, %27, !dbg !710
  %29 = fadd double %28, 0x3DA93974A8C07C9D, !dbg !711
  %30 = fmul double %8, %29, !dbg !712
  %31 = fadd double %30, 0x3E21EED8EFF8D898, !dbg !713
  %32 = fmul double %8, %31, !dbg !714
  %33 = fadd double %32, 0x3E927E4FB7789F5C, !dbg !715
  %34 = fmul double %8, %33, !dbg !716
  %35 = fadd double %34, 0x3EFA01A01A01A01A, !dbg !717
  %36 = fmul double %8, %35, !dbg !718
  %37 = fadd double %36, 0x3F56C16C16C16C17, !dbg !719
  %38 = fmul double %8, %37, !dbg !720
  %39 = fadd double %38, 0x3FA5555555555555, !dbg !721
  %40 = fmul double %8, %39, !dbg !722
  %41 = fadd double %40, 5.000000e-01, !dbg !723
  %42 = fmul double %8, %41, !dbg !724
  tail call void @llvm.dbg.value(metadata double %42, metadata !672, metadata !DIExpression()), !dbg !705
  %43 = tail call double @cos(double noundef %0) #9, !dbg !725
  %44 = fadd double %42, 1.000000e+00, !dbg !726
  %45 = fmul double %44, %43, !dbg !727
  store double %45, ptr %2, align 8, !dbg !728, !tbaa !185
  %46 = tail call double @sin(double noundef %0) #9, !dbg !729
  %47 = fneg double %46, !dbg !730
  %48 = fmul double %25, %47, !dbg !731
  store double %48, ptr %3, align 8, !dbg !732, !tbaa !185
  %49 = load double, ptr %2, align 8, !dbg !733, !tbaa !185
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !734
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !735
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !736
  store double %51, ptr %52, align 8, !dbg !737, !tbaa !196
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !738
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !739
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !740
  store double %54, ptr %55, align 8, !dbg !741, !tbaa !196
  br label %80

56:                                               ; preds = %4
  %57 = fcmp olt double %5, 0x40862E42FEFA39EF, !dbg !742
  br i1 %57, label %58, label %77, !dbg !743

58:                                               ; preds = %56
  %59 = tail call double @exp(double noundef %1) #9, !dbg !744
  tail call void @llvm.dbg.value(metadata double %59, metadata !676, metadata !DIExpression()), !dbg !745
  %60 = fdiv double 1.000000e+00, %59, !dbg !746
  %61 = fadd double %59, %60, !dbg !747
  %62 = fmul double %61, 5.000000e-01, !dbg !748
  tail call void @llvm.dbg.value(metadata double %62, metadata !679, metadata !DIExpression()), !dbg !745
  %63 = fsub double %59, %60, !dbg !749
  %64 = fmul double %63, 5.000000e-01, !dbg !750
  tail call void @llvm.dbg.value(metadata double %64, metadata !680, metadata !DIExpression()), !dbg !745
  %65 = tail call double @cos(double noundef %0) #9, !dbg !751
  %66 = fmul double %65, %62, !dbg !752
  store double %66, ptr %2, align 8, !dbg !753, !tbaa !185
  %67 = tail call double @sin(double noundef %0) #9, !dbg !754
  %68 = fneg double %67, !dbg !755
  %69 = fmul double %64, %68, !dbg !756
  store double %69, ptr %3, align 8, !dbg !757, !tbaa !185
  %70 = load double, ptr %2, align 8, !dbg !758, !tbaa !185
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !759
  %72 = fmul double %71, 0x3CC0000000000000, !dbg !760
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !761
  store double %72, ptr %73, align 8, !dbg !762, !tbaa !196
  %74 = tail call double @llvm.fabs.f64(double %69), !dbg !763
  %75 = fmul double %74, 0x3CC0000000000000, !dbg !764
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !765
  store double %75, ptr %76, align 8, !dbg !766, !tbaa !196
  br label %80

77:                                               ; preds = %56
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !767, !tbaa !185
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !767
  store double 0x7FF0000000000000, ptr %78, align 8, !dbg !767, !tbaa !196
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !767, !tbaa !185
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !767
  store double 0x7FF0000000000000, ptr %79, align 8, !dbg !767, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 16) #9, !dbg !770
  br label %80, !dbg !770

80:                                               ; preds = %7, %58, %77
  %81 = phi i32 [ 0, %7 ], [ 0, %58 ], [ 16, %77 ], !dbg !772
  ret i32 %81, !dbg !773
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_logsin_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 !dbg !774 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !786
  call void @llvm.dbg.assign(metadata i1 undef, metadata !780, metadata !DIExpression(), metadata !786, metadata ptr %5, metadata !DIExpression()), !dbg !787
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !784, metadata !DIExpression(), metadata !788, metadata ptr %6, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %0, metadata !776, metadata !DIExpression()), !dbg !789
  tail call void @llvm.dbg.value(metadata double %1, metadata !777, metadata !DIExpression()), !dbg !789
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !778, metadata !DIExpression()), !dbg !789
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !779, metadata !DIExpression()), !dbg !789
  %7 = fcmp ogt double %1, 6.000000e+01, !dbg !790
  br i1 %7, label %8, label %18, !dbg !791

8:                                                ; preds = %4
  %9 = fadd double %1, 0xBFE62E42FEFA39EF, !dbg !792
  store double %9, ptr %2, align 8, !dbg !794, !tbaa !185
  %10 = fsub double 0x3FF921FB54442D18, %0, !dbg !795
  store double %10, ptr %3, align 8, !dbg !796, !tbaa !185
  %11 = load double, ptr %2, align 8, !dbg !797, !tbaa !185
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !798
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !799
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !800
  store double %13, ptr %14, align 8, !dbg !801, !tbaa !196
  %15 = tail call double @llvm.fabs.f64(double %10), !dbg !802
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !803
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !804
  store double %16, ptr %17, align 8, !dbg !805, !tbaa !196
  br label %40, !dbg !806

18:                                               ; preds = %4
  %19 = fcmp olt double %1, -6.000000e+01, !dbg !807
  br i1 %19, label %20, label %30, !dbg !808

20:                                               ; preds = %18
  %21 = fsub double 0xBFE62E42FEFA39EF, %1, !dbg !809
  store double %21, ptr %2, align 8, !dbg !811, !tbaa !185
  %22 = fadd double %0, 0xBFF921FB54442D18, !dbg !812
  store double %22, ptr %3, align 8, !dbg !813, !tbaa !185
  %23 = load double, ptr %2, align 8, !dbg !814, !tbaa !185
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !815
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !816
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !817
  store double %25, ptr %26, align 8, !dbg !818, !tbaa !196
  %27 = tail call double @llvm.fabs.f64(double %22), !dbg !819
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !820
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !821
  store double %28, ptr %29, align 8, !dbg !822, !tbaa !196
  br label %40, !dbg !823

30:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !824
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !824
  %31 = call i32 @gsl_sf_complex_sin_e(double noundef %0, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !825, !range !826
  %32 = load double, ptr %5, align 8, !dbg !827, !tbaa !185
  %33 = load double, ptr %6, align 8, !dbg !828, !tbaa !185
  %34 = tail call i32 @gsl_sf_complex_log_e(double noundef %32, double noundef %33, ptr noundef %2, ptr noundef %3) #9, !dbg !829
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !785, metadata !DIExpression()), !dbg !787
  %35 = icmp eq i32 %34, 1, !dbg !830
  br i1 %35, label %37, label %36, !dbg !832

36:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !833
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !833
  br label %40

37:                                               ; preds = %30
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !834, !tbaa !185
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !834
  store double 0x7FF8000000000000, ptr %38, align 8, !dbg !834, !tbaa !196
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !834, !tbaa !185
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !834
  store double 0x7FF8000000000000, ptr %39, align 8, !dbg !834, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 432, i32 noundef 1) #9, !dbg !837
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !833
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !833
  br label %72

40:                                               ; preds = %36, %20, %8
  call void @llvm.dbg.value(metadata ptr %3, metadata !839, metadata !DIExpression()), !dbg !846
  %41 = load double, ptr %3, align 8, !dbg !848, !tbaa !849
  call void @llvm.dbg.value(metadata double %41, metadata !850, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr undef, metadata !855, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !856, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !857, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !858, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !859, metadata !DIExpression()), !dbg !866
  %42 = fcmp oge double %41, 0.000000e+00, !dbg !868
  %43 = select i1 %42, double 2.000000e+00, double -2.000000e+00, !dbg !868
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !869
  %45 = fdiv double %44, 0x401921FB54442D18, !dbg !870
  %46 = tail call double @llvm.floor.f64(double %45), !dbg !871
  %47 = fmul double %43, %46, !dbg !872
  call void @llvm.dbg.value(metadata double %47, metadata !860, metadata !DIExpression()), !dbg !866
  %48 = fmul double %47, 0x400921FB40000000, !dbg !873
  %49 = fsub double %41, %48, !dbg !874
  %50 = fmul double %47, 0x3E84442D00000000, !dbg !875
  %51 = fsub double %49, %50, !dbg !876
  %52 = fmul double %47, 0x3D08469898CC5170, !dbg !877
  %53 = fsub double %51, %52, !dbg !878
  call void @llvm.dbg.value(metadata double %53, metadata !861, metadata !DIExpression()), !dbg !866
  %54 = fcmp ogt double %53, 0x400921FB54442D18, !dbg !879
  br i1 %54, label %55, label %59, !dbg !881

55:                                               ; preds = %40
  %56 = fadd double %53, 0xC01921FB40000000, !dbg !882
  %57 = fadd double %56, 0xBE94442D00000000, !dbg !884
  %58 = fadd double %57, 0xBD18469898CC5170, !dbg !885
  call void @llvm.dbg.value(metadata double %58, metadata !861, metadata !DIExpression()), !dbg !866
  br label %65, !dbg !886

59:                                               ; preds = %40
  %60 = fcmp olt double %53, 0xC00921FB54442D18, !dbg !887
  br i1 %60, label %61, label %65, !dbg !889

61:                                               ; preds = %59
  %62 = fadd double %53, 0x401921FB40000000, !dbg !890
  %63 = fadd double %62, 0x3E94442D00000000, !dbg !891
  %64 = fadd double %63, 0x3D18469898CC5170, !dbg !892
  call void @llvm.dbg.value(metadata double %64, metadata !861, metadata !DIExpression()), !dbg !866
  br label %65, !dbg !893

65:                                               ; preds = %61, %59, %55
  %66 = phi double [ %58, %55 ], [ %64, %61 ], [ %53, %59 ], !dbg !866
  call void @llvm.dbg.value(metadata double %66, metadata !861, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata double %66, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !846
  %67 = fcmp ogt double %44, 0x42F0000000000000, !dbg !894
  br i1 %67, label %68, label %69, !dbg !895

68:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !846
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !846
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #9, !dbg !896
  br label %69, !dbg !896

69:                                               ; preds = %65, %68
  %70 = phi double [ 0x7FF8000000000000, %68 ], [ %66, %65 ], !dbg !866
  %71 = phi i32 [ 17, %68 ], [ 0, %65 ], !dbg !899
  call void @llvm.dbg.value(metadata double %70, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !846
  call void @llvm.dbg.value(metadata i32 %71, metadata !845, metadata !DIExpression()), !dbg !846
  store double %70, ptr %3, align 8, !dbg !900, !tbaa !849
  br label %72, !dbg !901

72:                                               ; preds = %37, %69
  %73 = phi i32 [ %71, %69 ], [ 1, %37 ], !dbg !789
  ret i32 %73, !dbg !902
}

declare !dbg !903 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_symm_e(ptr nocapture noundef %0) local_unnamed_addr #4 !dbg !840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !839, metadata !DIExpression()), !dbg !905
  %2 = load double, ptr %0, align 8, !dbg !906, !tbaa !849
  call void @llvm.dbg.value(metadata double %2, metadata !850, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr undef, metadata !855, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !856, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !857, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !858, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !859, metadata !DIExpression()), !dbg !907
  %3 = fcmp oge double %2, 0.000000e+00, !dbg !909
  %4 = select i1 %3, double 2.000000e+00, double -2.000000e+00, !dbg !909
  %5 = tail call double @llvm.fabs.f64(double %2), !dbg !910
  %6 = fdiv double %5, 0x401921FB54442D18, !dbg !911
  %7 = tail call double @llvm.floor.f64(double %6), !dbg !912
  %8 = fmul double %4, %7, !dbg !913
  call void @llvm.dbg.value(metadata double %8, metadata !860, metadata !DIExpression()), !dbg !907
  %9 = fmul double %8, 0x400921FB40000000, !dbg !914
  %10 = fsub double %2, %9, !dbg !915
  %11 = fmul double %8, 0x3E84442D00000000, !dbg !916
  %12 = fsub double %10, %11, !dbg !917
  %13 = fmul double %8, 0x3D08469898CC5170, !dbg !918
  %14 = fsub double %12, %13, !dbg !919
  call void @llvm.dbg.value(metadata double %14, metadata !861, metadata !DIExpression()), !dbg !907
  %15 = fcmp ogt double %14, 0x400921FB54442D18, !dbg !920
  br i1 %15, label %16, label %20, !dbg !921

16:                                               ; preds = %1
  %17 = fadd double %14, 0xC01921FB40000000, !dbg !922
  %18 = fadd double %17, 0xBE94442D00000000, !dbg !923
  %19 = fadd double %18, 0xBD18469898CC5170, !dbg !924
  call void @llvm.dbg.value(metadata double %19, metadata !861, metadata !DIExpression()), !dbg !907
  br label %26, !dbg !925

20:                                               ; preds = %1
  %21 = fcmp olt double %14, 0xC00921FB54442D18, !dbg !926
  br i1 %21, label %22, label %26, !dbg !927

22:                                               ; preds = %20
  %23 = fadd double %14, 0x401921FB40000000, !dbg !928
  %24 = fadd double %23, 0x3E94442D00000000, !dbg !929
  %25 = fadd double %24, 0x3D18469898CC5170, !dbg !930
  call void @llvm.dbg.value(metadata double %25, metadata !861, metadata !DIExpression()), !dbg !907
  br label %26, !dbg !931

26:                                               ; preds = %22, %20, %16
  %27 = phi double [ %19, %16 ], [ %25, %22 ], [ %14, %20 ], !dbg !907
  call void @llvm.dbg.value(metadata double %27, metadata !861, metadata !DIExpression()), !dbg !907
  tail call void @llvm.dbg.value(metadata double %27, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !905
  %28 = fcmp ogt double %5, 0x42F0000000000000, !dbg !932
  br i1 %28, label %29, label %30, !dbg !933

29:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !905
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !905
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #9, !dbg !934
  br label %30, !dbg !934

30:                                               ; preds = %26, %29
  %31 = phi double [ 0x7FF8000000000000, %29 ], [ %27, %26 ], !dbg !907
  %32 = phi i32 [ 17, %29 ], [ 0, %26 ], !dbg !935
  tail call void @llvm.dbg.value(metadata double %31, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !845, metadata !DIExpression()), !dbg !905
  store double %31, ptr %0, align 8, !dbg !936, !tbaa !849
  ret i32 %32, !dbg !937
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnsinh_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !938 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !940, metadata !DIExpression()), !dbg !946
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !946
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !947
  br i1 %3, label %6, label %4, !dbg !948

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !949, !tbaa !185
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !949
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !949, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 445, i32 noundef 1) #9, !dbg !952
  br label %49, !dbg !952

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !954
  %8 = fcmp olt double %7, 1.000000e+00, !dbg !955
  br i1 %8, label %9, label %32, !dbg !956

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double %0, metadata !545, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !550, metadata !DIExpression()), !dbg !957
  %10 = fmul double %0, %0, !dbg !959
  tail call void @llvm.dbg.value(metadata double %10, metadata !551, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !552, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !553, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !554, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !555, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !556, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !557, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3D6AE7F3E733B81F, metadata !558, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 0x3CE952C77030AD4A, metadata !559, metadata !DIExpression()), !dbg !957
  %11 = fmul double %10, 0x3CE952C77030AD4A, !dbg !960
  %12 = fadd double %11, 0x3D6AE7F3E733B81F, !dbg !961
  %13 = fmul double %10, %12, !dbg !962
  %14 = fadd double %13, 0x3DE6124613A86D09, !dbg !963
  %15 = fmul double %10, %14, !dbg !964
  %16 = fadd double %15, 0x3E5AE64567F544E4, !dbg !965
  %17 = fmul double %10, %16, !dbg !966
  %18 = fadd double %17, 0x3EC71DE3A556C734, !dbg !967
  %19 = fmul double %10, %18, !dbg !968
  %20 = fadd double %19, 0x3F2A01A01A01A01A, !dbg !969
  %21 = fmul double %10, %20, !dbg !970
  %22 = fadd double %21, 0x3F81111111111111, !dbg !971
  %23 = fmul double %10, %22, !dbg !972
  %24 = fadd double %23, 0x3FC5555555555555, !dbg !973
  %25 = fmul double %10, %24, !dbg !974
  %26 = fadd double %25, 1.000000e+00, !dbg !975
  %27 = fmul double %26, %0, !dbg !976
  tail call void @llvm.dbg.value(metadata double %27, metadata !942, metadata !DIExpression()), !dbg !977
  %28 = tail call double @log(double noundef %27) #9, !dbg !978
  store double %28, ptr %1, align 8, !dbg !979, !tbaa !185
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !980
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !981
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !982
  store double %30, ptr %31, align 8, !dbg !983, !tbaa !196
  br label %49

32:                                               ; preds = %6
  %33 = fcmp olt double %0, 0x403205966F2B4F12, !dbg !984
  br i1 %33, label %34, label %44, !dbg !986

34:                                               ; preds = %32
  %35 = fmul double %0, -2.000000e+00, !dbg !987
  %36 = tail call double @exp(double noundef %35) #9, !dbg !989
  %37 = fsub double 1.000000e+00, %36, !dbg !990
  %38 = fmul double %37, 5.000000e-01, !dbg !991
  %39 = tail call double @log(double noundef %38) #9, !dbg !992
  %40 = fadd double %39, %0, !dbg !993
  store double %40, ptr %1, align 8, !dbg !994, !tbaa !185
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !995
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !996
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !997
  store double %42, ptr %43, align 8, !dbg !998, !tbaa !196
  br label %49, !dbg !999

44:                                               ; preds = %32
  %45 = fadd double %0, 0xBFE62E42FEFA39EF, !dbg !1000
  store double %45, ptr %1, align 8, !dbg !1002, !tbaa !185
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !1003
  %47 = fmul double %46, 0x3CC0000000000000, !dbg !1004
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1005
  store double %47, ptr %48, align 8, !dbg !1006, !tbaa !196
  br label %49, !dbg !1007

49:                                               ; preds = %4, %9, %34, %44
  %50 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %34 ], [ 0, %44 ], !dbg !1008
  ret i32 %50, !dbg !1009
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1010 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lncosh_e(double noundef %0, ptr noundef %1) local_unnamed_addr #4 !dbg !1011 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1013, metadata !DIExpression()), !dbg !1018
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !1018
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !1019
  %4 = fcmp olt double %3, 1.000000e+00, !dbg !1020
  br i1 %4, label %5, label %25, !dbg !1021

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double %0, metadata !581, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !584, metadata !DIExpression()), !dbg !1022
  %6 = fmul double %0, %0, !dbg !1024
  tail call void @llvm.dbg.value(metadata double %6, metadata !585, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !586, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !587, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3F56C16C16C16C17, metadata !588, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3EFA01A01A01A01A, metadata !589, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3E927E4FB7789F5C, metadata !590, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3E21EED8EFF8D898, metadata !591, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3DA93974A8C07C9D, metadata !592, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3D2AE7F3E733B81F, metadata !593, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata double 0x3CA6827863B97D97, metadata !594, metadata !DIExpression()), !dbg !1022
  %7 = fmul double %6, 0x3CA6827863B97D97, !dbg !1025
  %8 = fadd double %7, 0x3D2AE7F3E733B81F, !dbg !1026
  %9 = fmul double %6, %8, !dbg !1027
  %10 = fadd double %9, 0x3DA93974A8C07C9D, !dbg !1028
  %11 = fmul double %6, %10, !dbg !1029
  %12 = fadd double %11, 0x3E21EED8EFF8D898, !dbg !1030
  %13 = fmul double %6, %12, !dbg !1031
  %14 = fadd double %13, 0x3E927E4FB7789F5C, !dbg !1032
  %15 = fmul double %6, %14, !dbg !1033
  %16 = fadd double %15, 0x3EFA01A01A01A01A, !dbg !1034
  %17 = fmul double %6, %16, !dbg !1035
  %18 = fadd double %17, 0x3F56C16C16C16C17, !dbg !1036
  %19 = fmul double %6, %18, !dbg !1037
  %20 = fadd double %19, 0x3FA5555555555555, !dbg !1038
  %21 = fmul double %6, %20, !dbg !1039
  %22 = fadd double %21, 5.000000e-01, !dbg !1040
  %23 = fmul double %6, %22, !dbg !1041
  tail call void @llvm.dbg.value(metadata double %23, metadata !1015, metadata !DIExpression()), !dbg !1042
  %24 = tail call i32 @gsl_sf_log_1plusx_e(double noundef %23, ptr noundef %1) #9, !dbg !1043
  br label %42

25:                                               ; preds = %2
  %26 = fcmp olt double %3, 0x403205966F2B4F12, !dbg !1044
  br i1 %26, label %27, label %37, !dbg !1046

27:                                               ; preds = %25
  %28 = fmul double %3, -2.000000e+00, !dbg !1047
  %29 = tail call double @exp(double noundef %28) #9, !dbg !1049
  %30 = fadd double %29, 1.000000e+00, !dbg !1050
  %31 = fmul double %30, 5.000000e-01, !dbg !1051
  %32 = tail call double @log(double noundef %31) #9, !dbg !1052
  %33 = fadd double %3, %32, !dbg !1053
  store double %33, ptr %1, align 8, !dbg !1054, !tbaa !185
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !1055
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !1056
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1057
  store double %35, ptr %36, align 8, !dbg !1058, !tbaa !196
  br label %42, !dbg !1059

37:                                               ; preds = %25
  %38 = fadd double %3, 0xBFE62E42FEFA39EF, !dbg !1060
  store double %38, ptr %1, align 8, !dbg !1062, !tbaa !185
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !1063
  %40 = fmul double %39, 0x3CC0000000000000, !dbg !1064
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1065
  store double %40, ptr %41, align 8, !dbg !1066, !tbaa !196
  br label %42, !dbg !1067

42:                                               ; preds = %37, %27, %5
  %43 = phi i32 [ %24, %5 ], [ 0, %27 ], [ 0, %37 ], !dbg !1068
  ret i32 %43, !dbg !1069
}

declare !dbg !1070 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_polar_to_rect(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !1071 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1073, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata double %1, metadata !1074, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1075, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1076, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata double %1, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata double %1, metadata !850, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr undef, metadata !855, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !856, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !857, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !858, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !859, metadata !DIExpression()), !dbg !1084
  %5 = fcmp oge double %1, 0.000000e+00, !dbg !1086
  %6 = select i1 %5, double 2.000000e+00, double -2.000000e+00, !dbg !1086
  %7 = tail call double @llvm.fabs.f64(double %1), !dbg !1087
  %8 = fdiv double %7, 0x401921FB54442D18, !dbg !1088
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !1089
  %10 = fmul double %6, %9, !dbg !1090
  call void @llvm.dbg.value(metadata double %10, metadata !860, metadata !DIExpression()), !dbg !1084
  %11 = fmul double %10, 0x400921FB40000000, !dbg !1091
  %12 = fsub double %1, %11, !dbg !1092
  %13 = fmul double %10, 0x3E84442D00000000, !dbg !1093
  %14 = fsub double %12, %13, !dbg !1094
  %15 = fmul double %10, 0x3D08469898CC5170, !dbg !1095
  %16 = fsub double %14, %15, !dbg !1096
  call void @llvm.dbg.value(metadata double %16, metadata !861, metadata !DIExpression()), !dbg !1084
  %17 = fcmp ogt double %16, 0x400921FB54442D18, !dbg !1097
  br i1 %17, label %18, label %22, !dbg !1098

18:                                               ; preds = %4
  %19 = fadd double %16, 0xC01921FB40000000, !dbg !1099
  %20 = fadd double %19, 0xBE94442D00000000, !dbg !1100
  %21 = fadd double %20, 0xBD18469898CC5170, !dbg !1101
  call void @llvm.dbg.value(metadata double %21, metadata !861, metadata !DIExpression()), !dbg !1084
  br label %28, !dbg !1102

22:                                               ; preds = %4
  %23 = fcmp olt double %16, 0xC00921FB54442D18, !dbg !1103
  br i1 %23, label %24, label %28, !dbg !1104

24:                                               ; preds = %22
  %25 = fadd double %16, 0x401921FB40000000, !dbg !1105
  %26 = fadd double %25, 0x3E94442D00000000, !dbg !1106
  %27 = fadd double %26, 0x3D18469898CC5170, !dbg !1107
  call void @llvm.dbg.value(metadata double %27, metadata !861, metadata !DIExpression()), !dbg !1084
  br label %28, !dbg !1108

28:                                               ; preds = %24, %22, %18
  %29 = phi double [ %21, %18 ], [ %27, %24 ], [ %16, %22 ], !dbg !1084
  call void @llvm.dbg.value(metadata double %29, metadata !861, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %29, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  %30 = fcmp ogt double %7, 0x42F0000000000000, !dbg !1109
  br i1 %30, label %31, label %32, !dbg !1110

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1082
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #9, !dbg !1111
  br label %32, !dbg !1111

32:                                               ; preds = %28, %31
  %33 = phi double [ 0x7FF8000000000000, %31 ], [ %29, %28 ], !dbg !1084
  %34 = phi i32 [ 17, %31 ], [ 0, %28 ], !dbg !1112
  call void @llvm.dbg.value(metadata double %33, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %34, metadata !845, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double %33, metadata !1077, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1078, metadata !DIExpression()), !dbg !1081
  %35 = tail call double @cos(double noundef %33) #9, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %35, metadata !1079, metadata !DIExpression()), !dbg !1081
  %36 = tail call double @sin(double noundef %33) #9, !dbg !1114
  tail call void @llvm.dbg.value(metadata double %36, metadata !1080, metadata !DIExpression()), !dbg !1081
  %37 = tail call double @cos(double noundef %33) #9, !dbg !1115
  %38 = fmul double %37, %0, !dbg !1116
  store double %38, ptr %2, align 8, !dbg !1117, !tbaa !185
  %39 = tail call double @sin(double noundef %33) #9, !dbg !1118
  %40 = fmul double %39, %0, !dbg !1119
  store double %40, ptr %3, align 8, !dbg !1120, !tbaa !185
  %41 = fmul double %36, 0x3CB0000000000000, !dbg !1121
  %42 = fmul double %33, %41, !dbg !1122
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !1123
  %44 = fmul double %43, %0, !dbg !1124
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1125
  %46 = load double, ptr %2, align 8, !dbg !1126, !tbaa !185
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !1127
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !1128
  %49 = fadd double %44, %48, !dbg !1129
  store double %49, ptr %45, align 8, !dbg !1129, !tbaa !196
  %50 = fmul double %35, 0x3CB0000000000000, !dbg !1130
  %51 = fmul double %33, %50, !dbg !1131
  %52 = tail call double @llvm.fabs.f64(double %51), !dbg !1132
  %53 = fmul double %52, %0, !dbg !1133
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1134
  %55 = tail call double @llvm.fabs.f64(double %40), !dbg !1135
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !1136
  %57 = fadd double %53, %56, !dbg !1137
  store double %57, ptr %54, align 8, !dbg !1137, !tbaa !196
  ret i32 %34, !dbg !1138
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_rect_to_polar(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 !dbg !1139 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1141, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata double %1, metadata !1142, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1143, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata double %0, metadata !459, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata double %1, metadata !460, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %2, metadata !461, metadata !DIExpression()), !dbg !1147
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !1149
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = and i1 %5, %6, !dbg !1150
  br i1 %7, label %8, label %9, !dbg !1150

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1145, metadata !DIExpression()), !dbg !1146
  br label %39, !dbg !1152

9:                                                ; preds = %4
  %10 = tail call double @llvm.fabs.f64(double %0), !dbg !1153
  call void @llvm.dbg.value(metadata double %10, metadata !462, metadata !DIExpression()), !dbg !1154
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !1155
  call void @llvm.dbg.value(metadata double %11, metadata !465, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata double %10, metadata !479, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata double %11, metadata !485, metadata !DIExpression()), !dbg !1156
  %12 = fcmp olt double %10, %11, !dbg !1158
  %13 = select i1 %12, double %10, double %11, !dbg !1158
  call void @llvm.dbg.value(metadata double %13, metadata !466, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata double %10, metadata !489, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata double %11, metadata !492, metadata !DIExpression()), !dbg !1159
  %14 = fcmp ogt double %10, %11, !dbg !1161
  %15 = select i1 %14, double %10, double %11, !dbg !1161
  call void @llvm.dbg.value(metadata double %15, metadata !467, metadata !DIExpression()), !dbg !1154
  %16 = fdiv double %13, %15, !dbg !1162
  call void @llvm.dbg.value(metadata double %16, metadata !468, metadata !DIExpression()), !dbg !1154
  %17 = fmul double %16, %16, !dbg !1163
  %18 = fadd double %17, 1.000000e+00, !dbg !1164
  %19 = tail call double @llvm.sqrt.f64(double %18), !dbg !1165
  call void @llvm.dbg.value(metadata double %19, metadata !469, metadata !DIExpression()), !dbg !1154
  %20 = fdiv double 0x7FEFFFFFFFFFFFFF, %19, !dbg !1166
  %21 = fcmp olt double %15, %20, !dbg !1167
  br i1 %21, label %22, label %27, !dbg !1168

22:                                               ; preds = %9
  %23 = fmul double %15, %19, !dbg !1169
  store double %23, ptr %2, align 8, !dbg !1170, !tbaa !185
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !1171
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !1172
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1173
  store double %25, ptr %26, align 8, !dbg !1174, !tbaa !196
  br label %30, !dbg !1175

27:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1176, !tbaa !185
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1176
  store double 0x7FF0000000000000, ptr %28, align 8, !dbg !1176, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #9, !dbg !1177
  %29 = load double, ptr %2, align 8, !dbg !1178, !tbaa !185
  br label %30, !dbg !1177

30:                                               ; preds = %22, %27
  %31 = phi double [ %23, %22 ], [ %29, %27 ], !dbg !1178
  %32 = phi i32 [ 0, %22 ], [ 16, %27 ], !dbg !1180
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1145, metadata !DIExpression()), !dbg !1146
  %33 = fcmp ogt double %31, 0.000000e+00, !dbg !1181
  br i1 %33, label %34, label %39, !dbg !1152

34:                                               ; preds = %30
  %35 = tail call double @atan2(double noundef %1, double noundef %0) #9, !dbg !1182
  store double %35, ptr %3, align 8, !dbg !1184, !tbaa !185
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !1185
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !1186
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1187
  store double %37, ptr %38, align 8, !dbg !1188, !tbaa !196
  br label %41, !dbg !1189

39:                                               ; preds = %8, %30
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1190, !tbaa !185
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1190
  store double 0x7FF8000000000000, ptr %40, align 8, !dbg !1190, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef 1) #9, !dbg !1193
  br label %41, !dbg !1193

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %32, %34 ], [ 1, %39 ], !dbg !1195
  ret i32 %42, !dbg !1196
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1197 double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_symm_err_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !851 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !850, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !855, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !856, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !857, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !858, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !859, metadata !DIExpression()), !dbg !1198
  %3 = fcmp oge double %0, 0.000000e+00, !dbg !1199
  %4 = select i1 %3, double 2.000000e+00, double -2.000000e+00, !dbg !1199
  %5 = tail call double @llvm.fabs.f64(double %0), !dbg !1200
  %6 = fdiv double %5, 0x401921FB54442D18, !dbg !1201
  %7 = tail call double @llvm.floor.f64(double %6), !dbg !1202
  %8 = fmul double %4, %7, !dbg !1203
  tail call void @llvm.dbg.value(metadata double %8, metadata !860, metadata !DIExpression()), !dbg !1198
  %9 = fmul double %8, 0x400921FB40000000, !dbg !1204
  %10 = fsub double %0, %9, !dbg !1205
  %11 = fmul double %8, 0x3E84442D00000000, !dbg !1206
  %12 = fsub double %10, %11, !dbg !1207
  %13 = fmul double %8, 0x3D08469898CC5170, !dbg !1208
  %14 = fsub double %12, %13, !dbg !1209
  tail call void @llvm.dbg.value(metadata double %14, metadata !861, metadata !DIExpression()), !dbg !1198
  %15 = fcmp ogt double %14, 0x400921FB54442D18, !dbg !1210
  br i1 %15, label %16, label %20, !dbg !1211

16:                                               ; preds = %2
  %17 = fadd double %14, 0xC01921FB40000000, !dbg !1212
  %18 = fadd double %17, 0xBE94442D00000000, !dbg !1213
  %19 = fadd double %18, 0xBD18469898CC5170, !dbg !1214
  tail call void @llvm.dbg.value(metadata double %19, metadata !861, metadata !DIExpression()), !dbg !1198
  br label %26, !dbg !1215

20:                                               ; preds = %2
  %21 = fcmp olt double %14, 0xC00921FB54442D18, !dbg !1216
  br i1 %21, label %22, label %26, !dbg !1217

22:                                               ; preds = %20
  %23 = fadd double %14, 0x401921FB40000000, !dbg !1218
  %24 = fadd double %23, 0x3E94442D00000000, !dbg !1219
  %25 = fadd double %24, 0x3D18469898CC5170, !dbg !1220
  tail call void @llvm.dbg.value(metadata double %25, metadata !861, metadata !DIExpression()), !dbg !1198
  br label %26, !dbg !1221

26:                                               ; preds = %20, %22, %16
  %27 = phi double [ %19, %16 ], [ %25, %22 ], [ %14, %20 ], !dbg !1198
  tail call void @llvm.dbg.value(metadata double %27, metadata !861, metadata !DIExpression()), !dbg !1198
  store double %27, ptr %1, align 8, !dbg !1222, !tbaa !185
  %28 = fcmp ogt double %5, 0x42F0000000000000, !dbg !1223
  br i1 %28, label %29, label %31, !dbg !1224

29:                                               ; preds = %26
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1225, !tbaa !185
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1226
  store double 0x7FF8000000000000, ptr %30, align 8, !dbg !1227, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #9, !dbg !1228
  br label %43, !dbg !1228

31:                                               ; preds = %26
  %32 = fcmp ogt double %5, 0x4150000000000000, !dbg !1229
  %33 = fsub double %27, %0, !dbg !1230
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !1230
  br i1 %32, label %35, label %38, !dbg !1231

35:                                               ; preds = %31
  %36 = fmul double %34, 0x3CC0000000000000, !dbg !1232
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1234
  store double %36, ptr %37, align 8, !dbg !1235, !tbaa !196
  br label %43, !dbg !1236

38:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata double %34, metadata !862, metadata !DIExpression()), !dbg !1237
  %39 = fcmp olt double %34, 0x400921FB54442D18, !dbg !1238
  %40 = select i1 %39, double %34, double 0x400921FB54442D18, !dbg !1239
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !1240
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1241
  store double %41, ptr %42, align 8, !dbg !1242, !tbaa !196
  br label %43

43:                                               ; preds = %38, %35, %29
  %44 = phi i32 [ 17, %29 ], [ 0, %35 ], [ 0, %38 ], !dbg !1243
  ret i32 %44, !dbg !1244
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_pos_err_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1245 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1247, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1248, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1249, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1250, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1251, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1252, metadata !DIExpression()), !dbg !1259
  %3 = fdiv double %0, 0x401921FB54442D18, !dbg !1260
  %4 = tail call double @llvm.floor.f64(double %3), !dbg !1261
  %5 = fmul double %4, 2.000000e+00, !dbg !1262
  tail call void @llvm.dbg.value(metadata double %5, metadata !1253, metadata !DIExpression()), !dbg !1259
  %6 = fmul double %5, 0x400921FB40000000, !dbg !1263
  %7 = fsub double %0, %6, !dbg !1264
  %8 = fmul double %5, 0x3E84442D00000000, !dbg !1265
  %9 = fsub double %7, %8, !dbg !1266
  %10 = fmul double %5, 0x3D08469898CC5170, !dbg !1267
  %11 = fsub double %9, %10, !dbg !1268
  tail call void @llvm.dbg.value(metadata double %11, metadata !1254, metadata !DIExpression()), !dbg !1259
  %12 = fcmp ogt double %11, 0x401921FB54442D18, !dbg !1269
  br i1 %12, label %13, label %17, !dbg !1271

13:                                               ; preds = %2
  %14 = fadd double %11, 0xC01921FB40000000, !dbg !1272
  %15 = fadd double %14, 0xBE94442D00000000, !dbg !1274
  %16 = fadd double %15, 0xBD18469898CC5170, !dbg !1275
  tail call void @llvm.dbg.value(metadata double %16, metadata !1254, metadata !DIExpression()), !dbg !1259
  br label %23, !dbg !1276

17:                                               ; preds = %2
  %18 = fcmp olt double %11, 0.000000e+00, !dbg !1277
  br i1 %18, label %19, label %23, !dbg !1279

19:                                               ; preds = %17
  %20 = fadd double %11, 0x401921FB40000000, !dbg !1280
  %21 = fadd double %20, 0x3E94442D00000000, !dbg !1282
  %22 = fadd double %21, 0x3D18469898CC5170, !dbg !1283
  tail call void @llvm.dbg.value(metadata double %22, metadata !1254, metadata !DIExpression()), !dbg !1259
  br label %23, !dbg !1284

23:                                               ; preds = %17, %19, %13
  %24 = phi double [ %16, %13 ], [ %22, %19 ], [ %11, %17 ], !dbg !1259
  tail call void @llvm.dbg.value(metadata double %24, metadata !1254, metadata !DIExpression()), !dbg !1259
  store double %24, ptr %1, align 8, !dbg !1285, !tbaa !185
  %25 = tail call double @llvm.fabs.f64(double %0), !dbg !1286
  %26 = fcmp ogt double %25, 0x42F0000000000000, !dbg !1287
  br i1 %26, label %27, label %29, !dbg !1288

27:                                               ; preds = %23
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1289, !tbaa !185
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1291
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !1292, !tbaa !196
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #9, !dbg !1293
  br label %41, !dbg !1293

29:                                               ; preds = %23
  %30 = fcmp ogt double %25, 0x4150000000000000, !dbg !1295
  %31 = fsub double %24, %0, !dbg !1296
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !1296
  br i1 %30, label %33, label %36, !dbg !1297

33:                                               ; preds = %29
  %34 = fmul double %32, 0x3CB0000000000000, !dbg !1298
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1300
  store double %34, ptr %35, align 8, !dbg !1301, !tbaa !196
  br label %41, !dbg !1302

36:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata double %32, metadata !1255, metadata !DIExpression()), !dbg !1303
  %37 = fcmp olt double %32, 0x400921FB54442D18, !dbg !1304
  %38 = select i1 %37, double %32, double 0x400921FB54442D18, !dbg !1305
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !1306
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1307
  store double %39, ptr %40, align 8, !dbg !1308, !tbaa !196
  br label %41

41:                                               ; preds = %36, %33, %27
  %42 = phi i32 [ 17, %27 ], [ 0, %33 ], [ 0, %36 ], !dbg !1309
  ret i32 %42, !dbg !1310
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_angle_restrict_pos_e(ptr nocapture noundef %0) local_unnamed_addr #4 !dbg !1311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1313, metadata !DIExpression()), !dbg !1316
  %2 = load double, ptr %0, align 8, !dbg !1317, !tbaa !849
  call void @llvm.dbg.value(metadata double %2, metadata !1247, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr undef, metadata !1248, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1249, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1250, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1251, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1252, metadata !DIExpression()), !dbg !1318
  %3 = fdiv double %2, 0x401921FB54442D18, !dbg !1320
  %4 = tail call double @llvm.floor.f64(double %3), !dbg !1321
  %5 = fmul double %4, 2.000000e+00, !dbg !1322
  call void @llvm.dbg.value(metadata double %5, metadata !1253, metadata !DIExpression()), !dbg !1318
  %6 = fmul double %5, 0x400921FB40000000, !dbg !1323
  %7 = fsub double %2, %6, !dbg !1324
  %8 = fmul double %5, 0x3E84442D00000000, !dbg !1325
  %9 = fsub double %7, %8, !dbg !1326
  %10 = fmul double %5, 0x3D08469898CC5170, !dbg !1327
  %11 = fsub double %9, %10, !dbg !1328
  call void @llvm.dbg.value(metadata double %11, metadata !1254, metadata !DIExpression()), !dbg !1318
  %12 = fcmp ogt double %11, 0x401921FB54442D18, !dbg !1329
  br i1 %12, label %13, label %17, !dbg !1330

13:                                               ; preds = %1
  %14 = fadd double %11, 0xC01921FB40000000, !dbg !1331
  %15 = fadd double %14, 0xBE94442D00000000, !dbg !1332
  %16 = fadd double %15, 0xBD18469898CC5170, !dbg !1333
  call void @llvm.dbg.value(metadata double %16, metadata !1254, metadata !DIExpression()), !dbg !1318
  br label %23, !dbg !1334

17:                                               ; preds = %1
  %18 = fcmp olt double %11, 0.000000e+00, !dbg !1335
  br i1 %18, label %19, label %23, !dbg !1336

19:                                               ; preds = %17
  %20 = fadd double %11, 0x401921FB40000000, !dbg !1337
  %21 = fadd double %20, 0x3E94442D00000000, !dbg !1338
  %22 = fadd double %21, 0x3D18469898CC5170, !dbg !1339
  call void @llvm.dbg.value(metadata double %22, metadata !1254, metadata !DIExpression()), !dbg !1318
  br label %23, !dbg !1340

23:                                               ; preds = %19, %17, %13
  %24 = phi double [ %16, %13 ], [ %22, %19 ], [ %11, %17 ], !dbg !1318
  call void @llvm.dbg.value(metadata double %24, metadata !1254, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata double %24, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1316
  %25 = tail call double @llvm.fabs.f64(double %2), !dbg !1341
  %26 = fcmp ogt double %25, 0x42F0000000000000, !dbg !1342
  br i1 %26, label %27, label %28, !dbg !1343

27:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1316
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1316
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #9, !dbg !1344
  br label %28, !dbg !1344

28:                                               ; preds = %23, %27
  %29 = phi double [ 0x7FF8000000000000, %27 ], [ %24, %23 ], !dbg !1318
  %30 = phi i32 [ 17, %27 ], [ 0, %23 ], !dbg !1345
  tail call void @llvm.dbg.value(metadata double %29, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1316
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1315, metadata !DIExpression()), !dbg !1316
  store double %29, ptr %0, align 8, !dbg !1346, !tbaa !849
  ret i32 %30, !dbg !1347
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_sin_err_e(double noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !1348 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1350, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata double %1, metadata !1351, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1352, metadata !DIExpression()), !dbg !1354
  %4 = tail call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef %2), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()), !dbg !1354
  %5 = tail call double @cos(double noundef %0) #9, !dbg !1356
  %6 = fmul double %5, %1, !dbg !1357
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !1358
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1359
  %9 = load double, ptr %8, align 8, !dbg !1360, !tbaa !196
  %10 = fadd double %9, %7, !dbg !1360
  %11 = load double, ptr %2, align 8, !dbg !1361, !tbaa !185
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !1362
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !1363
  %14 = fadd double %10, %13, !dbg !1364
  store double %14, ptr %8, align 8, !dbg !1364, !tbaa !196
  ret i32 0, !dbg !1365
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_cos_err_e(double noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !1366 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1368, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata double %1, metadata !1369, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1370, metadata !DIExpression()), !dbg !1372
  %4 = tail call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef %2), !dbg !1373
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1371, metadata !DIExpression()), !dbg !1372
  %5 = tail call double @sin(double noundef %0) #9, !dbg !1374
  %6 = fmul double %5, %1, !dbg !1375
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !1376
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1377
  %9 = load double, ptr %8, align 8, !dbg !1378, !tbaa !196
  %10 = fadd double %9, %7, !dbg !1378
  %11 = load double, ptr %2, align 8, !dbg !1379, !tbaa !185
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !1380
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !1381
  %14 = fadd double %10, %13, !dbg !1382
  store double %14, ptr %8, align 8, !dbg !1382, !tbaa !196
  ret i32 0, !dbg !1383
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsl_sf_sinc_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1384 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1394, metadata !DIExpression(), metadata !1396, metadata ptr %3, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata double %0, metadata !1386, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1387, metadata !DIExpression()), !dbg !1398
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !1399
  tail call void @llvm.dbg.value(metadata double %4, metadata !1388, metadata !DIExpression()), !dbg !1400
  %5 = fcmp olt double %4, 8.000000e-01, !dbg !1401
  br i1 %5, label %6, label %44, !dbg !1402

6:                                                ; preds = %2
  %7 = fmul double %4, 2.000000e+00, !dbg !1403
  %8 = fadd double %7, -1.000000e+00, !dbg !1405
  call void @llvm.dbg.value(metadata !1406, metadata !228, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %8, metadata !229, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr %1, metadata !230, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !1407
  %9 = fmul double %8, 2.000000e+00, !dbg !1409
  %10 = fadd double %9, 1.000000e+00, !dbg !1410
  %11 = fadd double %10, -1.000000e+00, !dbg !1411
  %12 = fmul double %11, 5.000000e-01, !dbg !1412
  call void @llvm.dbg.value(metadata double %12, metadata !234, metadata !DIExpression()), !dbg !1407
  %13 = fmul double %12, 2.000000e+00, !dbg !1413
  call void @llvm.dbg.value(metadata double %13, metadata !235, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 16, metadata !231, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !232, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !236, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !233, metadata !DIExpression()), !dbg !1407
  br label %14, !dbg !1414

14:                                               ; preds = %14, %6
  %15 = phi i64 [ 16, %6 ], [ %30, %14 ]
  %16 = phi double [ 0.000000e+00, %6 ], [ %23, %14 ]
  %17 = phi double [ 0.000000e+00, %6 ], [ %29, %14 ]
  %18 = phi double [ 0.000000e+00, %6 ], [ %16, %14 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !231, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %16, metadata !232, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %17, metadata !236, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %18, metadata !233, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %16, metadata !237, metadata !DIExpression()), !dbg !1415
  %19 = fmul double %13, %16, !dbg !1416
  %20 = fsub double %19, %18, !dbg !1417
  %21 = getelementptr inbounds double, ptr @sinc_data, i64 %15, !dbg !1418
  %22 = load double, ptr %21, align 8, !dbg !1418, !tbaa !849
  %23 = fadd double %20, %22, !dbg !1419
  call void @llvm.dbg.value(metadata double %23, metadata !232, metadata !DIExpression()), !dbg !1407
  %24 = tail call double @llvm.fabs.f64(double %19), !dbg !1420
  %25 = tail call double @llvm.fabs.f64(double %18), !dbg !1421
  %26 = fadd double %24, %25, !dbg !1422
  %27 = tail call double @llvm.fabs.f64(double %22), !dbg !1423
  %28 = fadd double %26, %27, !dbg !1424
  %29 = fadd double %17, %28, !dbg !1425
  call void @llvm.dbg.value(metadata double %29, metadata !236, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata double %16, metadata !233, metadata !DIExpression()), !dbg !1407
  %30 = add nsw i64 %15, -1, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %30, metadata !231, metadata !DIExpression()), !dbg !1407
  %31 = icmp ugt i64 %15, 1, !dbg !1427
  br i1 %31, label %14, label %32, !dbg !1414, !llvm.loop !1428

32:                                               ; preds = %14
  call void @llvm.dbg.value(metadata double %23, metadata !241, metadata !DIExpression()), !dbg !1431
  %33 = fmul double %12, %23, !dbg !1432
  %34 = fsub double %33, %16, !dbg !1433
  %35 = fadd double %34, 0x3FE2236C458DF176, !dbg !1434
  call void @llvm.dbg.value(metadata double %35, metadata !232, metadata !DIExpression()), !dbg !1407
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !1435
  %37 = tail call double @llvm.fabs.f64(double %16), !dbg !1436
  %38 = fadd double %37, %36, !dbg !1437
  %39 = fadd double %38, 0x3FE2236C458DF176, !dbg !1438
  %40 = fadd double %29, %39, !dbg !1439
  call void @llvm.dbg.value(metadata double %40, metadata !236, metadata !DIExpression()), !dbg !1407
  store double %35, ptr %1, align 8, !dbg !1440, !tbaa !185
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !1441
  %42 = fadd double %41, 9.925000e-18, !dbg !1442
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1443
  store double %42, ptr %43, align 8, !dbg !1444, !tbaa !196
  br label %64, !dbg !1445

44:                                               ; preds = %2
  %45 = fcmp olt double %4, 1.000000e+02, !dbg !1446
  %46 = fmul double %4, 0x400921FB54442D18, !dbg !1447
  br i1 %45, label %47, label %53, !dbg !1448

47:                                               ; preds = %44
  %48 = tail call double @sin(double noundef %46) #9, !dbg !1449
  %49 = fdiv double %48, %46, !dbg !1451
  store double %49, ptr %1, align 8, !dbg !1452, !tbaa !185
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !1453
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !1454
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1455
  store double %51, ptr %52, align 8, !dbg !1456, !tbaa !196
  br label %64, !dbg !1457

53:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata double %46, metadata !1390, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1458
  %54 = call i32 @gsl_sf_sin_e(double noundef %46, ptr noundef nonnull %3), !dbg !1459
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1395, metadata !DIExpression()), !dbg !1397
  %55 = load double, ptr %3, align 8, !dbg !1460, !tbaa !185
  %56 = fdiv double %55, %46, !dbg !1461
  store double %56, ptr %1, align 8, !dbg !1462, !tbaa !185
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1463
  %58 = load double, ptr %57, align 8, !dbg !1463, !tbaa !196
  %59 = fdiv double %58, %46, !dbg !1464
  %60 = tail call double @llvm.fabs.f64(double %56), !dbg !1465
  %61 = fmul double %60, 0x3CC0000000000000, !dbg !1466
  %62 = fadd double %59, %61, !dbg !1467
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1468
  store double %62, ptr %63, align 8, !dbg !1469, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1470
  br label %64

64:                                               ; preds = %53, %47, %32
  ret i32 0, !dbg !1471
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_sin(double noundef %0) local_unnamed_addr #0 !dbg !1472 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1477, metadata !DIExpression(), metadata !1479, metadata ptr %2, metadata !DIExpression()), !dbg !1480
  tail call void @llvm.dbg.value(metadata double %0, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !1481
  %3 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %2), !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1478, metadata !DIExpression()), !dbg !1480
  %4 = load double, ptr %2, align 8, !dbg !1481, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !1482
  ret double %4, !dbg !1482
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_cos(double noundef %0) local_unnamed_addr #0 !dbg !1483 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1488
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1486, metadata !DIExpression(), metadata !1488, metadata ptr %2, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata double %0, metadata !1485, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !1490
  %3 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %2), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !1489
  %4 = load double, ptr %2, align 8, !dbg !1490, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !1491
  ret double %4, !dbg !1491
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hypot(double noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !1492 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1496, metadata !DIExpression()), !dbg !1500
  tail call void @llvm.dbg.value(metadata double %1, metadata !1497, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata double %0, metadata !459, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata double %1, metadata !460, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata ptr undef, metadata !461, metadata !DIExpression()), !dbg !1501
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !1503
  %4 = fcmp oeq double %1, 0.000000e+00
  %5 = and i1 %3, %4, !dbg !1504
  br i1 %5, label %22, label %6, !dbg !1504

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !1505
  call void @llvm.dbg.value(metadata double %7, metadata !462, metadata !DIExpression()), !dbg !1506
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !1507
  call void @llvm.dbg.value(metadata double %8, metadata !465, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata double %7, metadata !479, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata double %8, metadata !485, metadata !DIExpression()), !dbg !1508
  %9 = fcmp olt double %7, %8, !dbg !1510
  %10 = select i1 %9, double %7, double %8, !dbg !1510
  call void @llvm.dbg.value(metadata double %10, metadata !466, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata double %7, metadata !489, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata double %8, metadata !492, metadata !DIExpression()), !dbg !1511
  %11 = fcmp ogt double %7, %8, !dbg !1513
  %12 = select i1 %11, double %7, double %8, !dbg !1513
  call void @llvm.dbg.value(metadata double %12, metadata !467, metadata !DIExpression()), !dbg !1506
  %13 = fdiv double %10, %12, !dbg !1514
  call void @llvm.dbg.value(metadata double %13, metadata !468, metadata !DIExpression()), !dbg !1506
  %14 = fmul double %13, %13, !dbg !1515
  %15 = fadd double %14, 1.000000e+00, !dbg !1516
  %16 = tail call double @llvm.sqrt.f64(double %15), !dbg !1517
  call void @llvm.dbg.value(metadata double %16, metadata !469, metadata !DIExpression()), !dbg !1506
  %17 = fdiv double 0x7FEFFFFFFFFFFFFF, %16, !dbg !1518
  %18 = fcmp olt double %12, %17, !dbg !1519
  br i1 %18, label %19, label %21, !dbg !1520

19:                                               ; preds = %6
  %20 = fmul double %12, %16, !dbg !1521
  tail call void @llvm.dbg.value(metadata double %20, metadata !1498, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1500
  tail call void @llvm.dbg.value(metadata double poison, metadata !1498, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1500
  br label %22, !dbg !1522

21:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1498, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1500
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1498, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1500
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 16) #9, !dbg !1523
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1498, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1500
  tail call void @llvm.dbg.value(metadata i32 16, metadata !1499, metadata !DIExpression()), !dbg !1500
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 736, i32 noundef 16) #9, !dbg !1524
  br label %22, !dbg !1524

22:                                               ; preds = %2, %19, %21
  %23 = phi double [ 0x7FF0000000000000, %21 ], [ 0.000000e+00, %2 ], [ %20, %19 ]
  ret double %23, !dbg !1528
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnsinh(double noundef %0) local_unnamed_addr #4 !dbg !1529 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1534
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1532, metadata !DIExpression(), metadata !1534, metadata ptr %2, metadata !DIExpression()), !dbg !1535
  tail call void @llvm.dbg.value(metadata double %0, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !1536
  %3 = call i32 @gsl_sf_lnsinh_e(double noundef %0, ptr noundef nonnull %2), !dbg !1536, !range !1537
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1533, metadata !DIExpression()), !dbg !1535
  %4 = icmp eq i32 %3, 0, !dbg !1538
  br i1 %4, label %6, label %5, !dbg !1536

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 741, i32 noundef 1) #9, !dbg !1540
  br label %6, !dbg !1540

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1536, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !1543
  ret double %7, !dbg !1543
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lncosh(double noundef %0) local_unnamed_addr #4 !dbg !1544 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1547, metadata !DIExpression(), metadata !1549, metadata ptr %2, metadata !DIExpression()), !dbg !1550
  tail call void @llvm.dbg.value(metadata double %0, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !1551
  %3 = call i32 @gsl_sf_lncosh_e(double noundef %0, ptr noundef nonnull %2), !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1548, metadata !DIExpression()), !dbg !1550
  %4 = icmp eq i32 %3, 0, !dbg !1552
  br i1 %4, label %6, label %5, !dbg !1551

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 746, i32 noundef %3) #9, !dbg !1554
  br label %6, !dbg !1554

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1551, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !1557
  ret double %7, !dbg !1557
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_angle_restrict_symm(double noundef %0) local_unnamed_addr #4 !dbg !1558 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1560, metadata !DIExpression()), !dbg !1563
  tail call void @llvm.dbg.value(metadata double %0, metadata !1561, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata double %0, metadata !850, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata ptr undef, metadata !855, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !856, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !857, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !858, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !859, metadata !DIExpression()), !dbg !1566
  %2 = fcmp oge double %0, 0.000000e+00, !dbg !1568
  %3 = select i1 %2, double 2.000000e+00, double -2.000000e+00, !dbg !1568
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !1569
  %5 = fdiv double %4, 0x401921FB54442D18, !dbg !1570
  %6 = tail call double @llvm.floor.f64(double %5), !dbg !1571
  %7 = fmul double %3, %6, !dbg !1572
  call void @llvm.dbg.value(metadata double %7, metadata !860, metadata !DIExpression()), !dbg !1566
  %8 = fmul double %7, 0x400921FB40000000, !dbg !1573
  %9 = fsub double %0, %8, !dbg !1574
  %10 = fmul double %7, 0x3E84442D00000000, !dbg !1575
  %11 = fsub double %9, %10, !dbg !1576
  %12 = fmul double %7, 0x3D08469898CC5170, !dbg !1577
  %13 = fsub double %11, %12, !dbg !1578
  call void @llvm.dbg.value(metadata double %13, metadata !861, metadata !DIExpression()), !dbg !1566
  %14 = fcmp ogt double %13, 0x400921FB54442D18, !dbg !1579
  br i1 %14, label %15, label %19, !dbg !1580

15:                                               ; preds = %1
  %16 = fadd double %13, 0xC01921FB40000000, !dbg !1581
  %17 = fadd double %16, 0xBE94442D00000000, !dbg !1582
  %18 = fadd double %17, 0xBD18469898CC5170, !dbg !1583
  call void @llvm.dbg.value(metadata double %18, metadata !861, metadata !DIExpression()), !dbg !1566
  br label %25, !dbg !1584

19:                                               ; preds = %1
  %20 = fcmp olt double %13, 0xC00921FB54442D18, !dbg !1585
  br i1 %20, label %21, label %25, !dbg !1586

21:                                               ; preds = %19
  %22 = fadd double %13, 0x401921FB40000000, !dbg !1587
  %23 = fadd double %22, 0x3E94442D00000000, !dbg !1588
  %24 = fadd double %23, 0x3D18469898CC5170, !dbg !1589
  call void @llvm.dbg.value(metadata double %24, metadata !861, metadata !DIExpression()), !dbg !1566
  br label %25, !dbg !1590

25:                                               ; preds = %21, %19, %15
  %26 = phi double [ %18, %15 ], [ %24, %21 ], [ %13, %19 ], !dbg !1566
  call void @llvm.dbg.value(metadata double %26, metadata !861, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata double %26, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1564
  %27 = fcmp ogt double %4, 0x42F0000000000000, !dbg !1591
  br i1 %27, label %28, label %29, !dbg !1592

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1564
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1564
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 552, i32 noundef 17) #9, !dbg !1593
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1564
  call void @llvm.dbg.value(metadata i32 17, metadata !845, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1561, metadata !DIExpression()), !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 17, metadata !1562, metadata !DIExpression()), !dbg !1563
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 752, i32 noundef 17) #9, !dbg !1594
  br label %29, !dbg !1594

29:                                               ; preds = %25, %28
  %30 = phi double [ 0x7FF8000000000000, %28 ], [ %26, %25 ]
  ret double %30, !dbg !1598
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_angle_restrict_pos(double noundef %0) local_unnamed_addr #4 !dbg !1599 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1601, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata double %0, metadata !1602, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr undef, metadata !1313, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata double %0, metadata !1247, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata ptr undef, metadata !1248, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata double 0x400921FB40000000, metadata !1249, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata double 0x3E84442D00000000, metadata !1250, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata double 0x3D08469898CC5170, metadata !1251, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata double 0x401921FB54442D18, metadata !1252, metadata !DIExpression()), !dbg !1607
  %2 = fdiv double %0, 0x401921FB54442D18, !dbg !1609
  %3 = tail call double @llvm.floor.f64(double %2), !dbg !1610
  %4 = fmul double %3, 2.000000e+00, !dbg !1611
  call void @llvm.dbg.value(metadata double %4, metadata !1253, metadata !DIExpression()), !dbg !1607
  %5 = fmul double %4, 0x400921FB40000000, !dbg !1612
  %6 = fsub double %0, %5, !dbg !1613
  %7 = fmul double %4, 0x3E84442D00000000, !dbg !1614
  %8 = fsub double %6, %7, !dbg !1615
  %9 = fmul double %4, 0x3D08469898CC5170, !dbg !1616
  %10 = fsub double %8, %9, !dbg !1617
  call void @llvm.dbg.value(metadata double %10, metadata !1254, metadata !DIExpression()), !dbg !1607
  %11 = fcmp ogt double %10, 0x401921FB54442D18, !dbg !1618
  br i1 %11, label %12, label %16, !dbg !1619

12:                                               ; preds = %1
  %13 = fadd double %10, 0xC01921FB40000000, !dbg !1620
  %14 = fadd double %13, 0xBE94442D00000000, !dbg !1621
  %15 = fadd double %14, 0xBD18469898CC5170, !dbg !1622
  call void @llvm.dbg.value(metadata double %15, metadata !1254, metadata !DIExpression()), !dbg !1607
  br label %22, !dbg !1623

16:                                               ; preds = %1
  %17 = fcmp olt double %10, 0.000000e+00, !dbg !1624
  br i1 %17, label %18, label %22, !dbg !1625

18:                                               ; preds = %16
  %19 = fadd double %10, 0x401921FB40000000, !dbg !1626
  %20 = fadd double %19, 0x3E94442D00000000, !dbg !1627
  %21 = fadd double %20, 0x3D18469898CC5170, !dbg !1628
  call void @llvm.dbg.value(metadata double %21, metadata !1254, metadata !DIExpression()), !dbg !1607
  br label %22, !dbg !1629

22:                                               ; preds = %18, %16, %12
  %23 = phi double [ %15, %12 ], [ %21, %18 ], [ %10, %16 ], !dbg !1607
  call void @llvm.dbg.value(metadata double %23, metadata !1254, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata double %23, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  %24 = tail call double @llvm.fabs.f64(double %0), !dbg !1630
  %25 = fcmp ogt double %24, 0x42F0000000000000, !dbg !1631
  br i1 %25, label %26, label %27, !dbg !1632

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1605
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef 17) #9, !dbg !1633
  call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  call void @llvm.dbg.value(metadata i32 17, metadata !1315, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1602, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 17, metadata !1603, metadata !DIExpression()), !dbg !1604
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 758, i32 noundef 17) #9, !dbg !1634
  br label %27, !dbg !1634

27:                                               ; preds = %22, %26
  %28 = phi double [ 0x7FF8000000000000, %26 ], [ %23, %22 ]
  ret double %28, !dbg !1638
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gsl_sf_sinc(double noundef %0) local_unnamed_addr #0 !dbg !1639 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1642, metadata !DIExpression(), metadata !1644, metadata ptr %2, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata double %0, metadata !1641, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !1646
  %3 = call i32 @gsl_sf_sinc_e(double noundef %0, ptr noundef nonnull %2), !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1643, metadata !DIExpression()), !dbg !1645
  %4 = load double, ptr %2, align 8, !dbg !1646, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !1647
  ret double %4, !dbg !1647
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!182 = !DILocation(line: 177, column: 30, scope: !159)
!183 = !DILocation(line: 177, column: 23, scope: !159)
!184 = !DILocation(line: 177, column: 19, scope: !159)
!185 = !{!186, !187, i64 0}
!186 = !{!"gsl_sf_result_struct", !187, i64 0, !187, i64 8}
!187 = !{!"double", !188, i64 0}
!188 = !{!"omnipotent char", !189, i64 0}
!189 = !{!"Simple C/C++ TBAA"}
!190 = !DILocation(line: 178, column: 27, scope: !159)
!191 = !DILocation(line: 178, column: 30, scope: !159)
!192 = !DILocation(line: 178, column: 34, scope: !159)
!193 = !DILocation(line: 178, column: 21, scope: !159)
!194 = !DILocation(line: 178, column: 15, scope: !159)
!195 = !DILocation(line: 178, column: 19, scope: !159)
!196 = !{!186, !187, i64 8}
!197 = !DILocation(line: 172, column: 26, scope: !152)
!198 = !DILocation(line: 0, scope: !162)
!199 = !DILocation(line: 183, column: 29, scope: !162)
!200 = !DILocation(line: 183, column: 18, scope: !162)
!201 = !DILocation(line: 184, column: 36, scope: !162)
!202 = !DILocation(line: 184, column: 30, scope: !162)
!203 = !DILocation(line: 184, column: 24, scope: !162)
!204 = !DILocation(line: 184, column: 22, scope: !162)
!205 = !DILocation(line: 184, column: 20, scope: !162)
!206 = !DILocation(line: 188, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !162, file: !2, line: 188, column: 10)
!208 = !DILocation(line: 188, column: 10, scope: !162)
!209 = !DILocation(line: 194, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !162, file: !2, line: 194, column: 10)
!211 = !DILocation(line: 194, column: 10, scope: !162)
!212 = !DILocation(line: 199, column: 23, scope: !162)
!213 = !DILocation(line: 199, column: 19, scope: !162)
!214 = !DILocation(line: 199, column: 33, scope: !162)
!215 = !DILocation(line: 199, column: 29, scope: !162)
!216 = !DILocation(line: 199, column: 43, scope: !162)
!217 = !DILocation(line: 199, column: 39, scope: !162)
!218 = !DILocation(line: 201, column: 17, scope: !169)
!219 = !DILocation(line: 0, scope: !169)
!220 = !DILocation(line: 11, column: 19, scope: !221, inlinedAt: !219)
!221 = distinct !DISubprogram(name: "cheb_eval_e", scope: !222, file: !222, line: 3, type: !223, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !227)
!222 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!223 = !DISubroutineType(types: !224)
!224 = !{!50, !225, !153, !141}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241}
!228 = !DILocalVariable(name: "cs", arg: 1, scope: !221, file: !222, line: 3, type: !225)
!229 = !DILocalVariable(name: "x", arg: 2, scope: !221, file: !222, line: 4, type: !153)
!230 = !DILocalVariable(name: "result", arg: 3, scope: !221, file: !222, line: 5, type: !141)
!231 = !DILocalVariable(name: "j", scope: !221, file: !222, line: 7, type: !50)
!232 = !DILocalVariable(name: "d", scope: !221, file: !222, line: 8, type: !108)
!233 = !DILocalVariable(name: "dd", scope: !221, file: !222, line: 9, type: !108)
!234 = !DILocalVariable(name: "y", scope: !221, file: !222, line: 11, type: !108)
!235 = !DILocalVariable(name: "y2", scope: !221, file: !222, line: 12, type: !108)
!236 = !DILocalVariable(name: "e", scope: !221, file: !222, line: 14, type: !108)
!237 = !DILocalVariable(name: "temp", scope: !238, file: !222, line: 17, type: !108)
!238 = distinct !DILexicalBlock(scope: !239, file: !222, line: 16, column: 33)
!239 = distinct !DILexicalBlock(scope: !240, file: !222, line: 16, column: 3)
!240 = distinct !DILexicalBlock(scope: !221, file: !222, line: 16, column: 3)
!241 = !DILocalVariable(name: "temp", scope: !242, file: !222, line: 24, type: !108)
!242 = distinct !DILexicalBlock(scope: !221, file: !222, line: 23, column: 3)
!243 = !DILocation(line: 11, column: 22, scope: !221, inlinedAt: !219)
!244 = !DILocation(line: 11, column: 30, scope: !221, inlinedAt: !219)
!245 = !DILocation(line: 11, column: 39, scope: !221, inlinedAt: !219)
!246 = !DILocation(line: 0, scope: !221, inlinedAt: !247)
!247 = distinct !DILocation(line: 204, column: 19, scope: !168)
!248 = !DILocation(line: 0, scope: !221, inlinedAt: !249)
!249 = distinct !DILocation(line: 210, column: 19, scope: !172)
!250 = !DILocation(line: 12, column: 19, scope: !221, inlinedAt: !219)
!251 = !DILocation(line: 201, column: 10, scope: !162)
!252 = !DILocation(line: 0, scope: !238, inlinedAt: !247)
!253 = !DILocation(line: 18, column: 11, scope: !238, inlinedAt: !247)
!254 = !DILocation(line: 18, column: 19, scope: !238, inlinedAt: !247)
!255 = !DILocation(line: 18, column: 14, scope: !238, inlinedAt: !247)
!256 = !DILocation(line: 0, scope: !242, inlinedAt: !247)
!257 = !DILocation(line: 25, column: 10, scope: !242, inlinedAt: !247)
!258 = !DILocation(line: 25, column: 13, scope: !242, inlinedAt: !247)
!259 = !DILocation(line: 25, column: 18, scope: !242, inlinedAt: !247)
!260 = !DILocation(line: 0, scope: !168)
!261 = !DILocation(line: 205, column: 35, scope: !168)
!262 = !DILocation(line: 205, column: 38, scope: !168)
!263 = !DILocation(line: 205, column: 32, scope: !168)
!264 = !DILocation(line: 205, column: 25, scope: !168)
!265 = !DILocation(line: 206, column: 7, scope: !168)
!266 = !DILocation(line: 0, scope: !238, inlinedAt: !249)
!267 = !DILocation(line: 18, column: 11, scope: !238, inlinedAt: !249)
!268 = !DILocation(line: 18, column: 19, scope: !238, inlinedAt: !249)
!269 = !DILocation(line: 18, column: 14, scope: !238, inlinedAt: !249)
!270 = !DILocation(line: 0, scope: !242, inlinedAt: !249)
!271 = !DILocation(line: 25, column: 10, scope: !242, inlinedAt: !249)
!272 = !DILocation(line: 25, column: 13, scope: !242, inlinedAt: !249)
!273 = !DILocation(line: 25, column: 18, scope: !242, inlinedAt: !249)
!274 = !DILocation(line: 0, scope: !172)
!275 = !DILocation(line: 211, column: 32, scope: !172)
!276 = !DILocation(line: 211, column: 34, scope: !172)
!277 = !DILocation(line: 211, column: 47, scope: !172)
!278 = !DILocation(line: 211, column: 50, scope: !172)
!279 = !DILocation(line: 211, column: 44, scope: !172)
!280 = !DILocation(line: 211, column: 37, scope: !172)
!281 = !DILocation(line: 211, column: 27, scope: !172)
!282 = !DILocation(line: 214, column: 19, scope: !162)
!283 = !DILocation(line: 216, column: 16, scope: !284)
!284 = distinct !DILexicalBlock(scope: !162, file: !2, line: 216, column: 10)
!285 = !DILocation(line: 216, column: 10, scope: !162)
!286 = !DILocation(line: 217, column: 23, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !2, line: 216, column: 39)
!288 = !DILocation(line: 217, column: 17, scope: !287)
!289 = !DILocation(line: 217, column: 21, scope: !287)
!290 = !DILocation(line: 218, column: 7, scope: !287)
!291 = !DILocation(line: 219, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !2, line: 219, column: 15)
!293 = !DILocation(line: 219, column: 15, scope: !284)
!294 = !DILocation(line: 220, column: 27, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !2, line: 219, column: 51)
!296 = !DILocation(line: 220, column: 35, scope: !295)
!297 = !DILocation(line: 220, column: 55, scope: !295)
!298 = !DILocation(line: 220, column: 53, scope: !295)
!299 = !DILocation(line: 220, column: 17, scope: !295)
!300 = !DILocation(line: 220, column: 21, scope: !295)
!301 = !DILocation(line: 221, column: 7, scope: !295)
!302 = !DILocation(line: 222, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !292, file: !2, line: 222, column: 15)
!304 = !DILocation(line: 0, scope: !303)
!305 = !DILocation(line: 222, column: 15, scope: !292)
!306 = !DILocation(line: 223, column: 50, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !2, line: 222, column: 49)
!308 = !DILocation(line: 223, column: 21, scope: !307)
!309 = !DILocation(line: 224, column: 7, scope: !307)
!310 = !DILocation(line: 226, column: 45, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !2, line: 225, column: 12)
!312 = !DILocation(line: 226, column: 21, scope: !311)
!313 = !DILocation(line: 232, column: 1, scope: !138)
!314 = !DISubprogram(name: "ldexp", scope: !315, file: !315, line: 101, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!316 = !DISubroutineType(types: !317)
!317 = !{!108, !108, !50}
!318 = distinct !DISubprogram(name: "gsl_sf_cos_e", scope: !2, file: !2, line: 236, type: !139, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !319)
!319 = !{!320, !321, !322, !324, !325, !326, !327, !330, !332, !333, !334, !335, !336, !339, !340, !342}
!320 = !DILocalVariable(name: "x", arg: 1, scope: !318, file: !2, line: 236, type: !108)
!321 = !DILocalVariable(name: "result", arg: 2, scope: !318, file: !2, line: 236, type: !141)
!322 = !DILocalVariable(name: "P1", scope: !323, file: !2, line: 241, type: !153)
!323 = distinct !DILexicalBlock(scope: !318, file: !2, line: 240, column: 3)
!324 = !DILocalVariable(name: "P2", scope: !323, file: !2, line: 242, type: !153)
!325 = !DILocalVariable(name: "P3", scope: !323, file: !2, line: 243, type: !153)
!326 = !DILocalVariable(name: "abs_x", scope: !323, file: !2, line: 245, type: !153)
!327 = !DILocalVariable(name: "x2", scope: !328, file: !2, line: 248, type: !153)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 247, column: 39)
!329 = distinct !DILexicalBlock(scope: !323, file: !2, line: 247, column: 8)
!330 = !DILocalVariable(name: "sgn_result", scope: !331, file: !2, line: 254, type: !108)
!331 = distinct !DILexicalBlock(scope: !329, file: !2, line: 253, column: 10)
!332 = !DILocalVariable(name: "y", scope: !331, file: !2, line: 255, type: !108)
!333 = !DILocalVariable(name: "octant", scope: !331, file: !2, line: 256, type: !50)
!334 = !DILocalVariable(name: "stat_cs", scope: !331, file: !2, line: 257, type: !50)
!335 = !DILocalVariable(name: "z", scope: !331, file: !2, line: 258, type: !108)
!336 = !DILocalVariable(name: "cos_cs_result", scope: !337, file: !2, line: 278, type: !142)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 277, column: 23)
!338 = distinct !DILexicalBlock(scope: !331, file: !2, line: 277, column: 10)
!339 = !DILocalVariable(name: "t", scope: !337, file: !2, line: 279, type: !153)
!340 = !DILocalVariable(name: "sin_cs_result", scope: !341, file: !2, line: 284, type: !142)
!341 = distinct !DILexicalBlock(scope: !338, file: !2, line: 283, column: 12)
!342 = !DILocalVariable(name: "t", scope: !341, file: !2, line: 285, type: !153)
!343 = !DILocation(line: 0, scope: !318)
!344 = !DILocation(line: 0, scope: !323)
!345 = !DILocation(line: 245, column: 26, scope: !323)
!346 = !DILocation(line: 247, column: 14, scope: !329)
!347 = !DILocation(line: 247, column: 8, scope: !323)
!348 = !DILocation(line: 248, column: 26, scope: !328)
!349 = !DILocation(line: 0, scope: !328)
!350 = !DILocation(line: 249, column: 30, scope: !328)
!351 = !DILocation(line: 249, column: 25, scope: !328)
!352 = !DILocation(line: 249, column: 19, scope: !328)
!353 = !DILocation(line: 250, column: 28, scope: !328)
!354 = !DILocation(line: 250, column: 31, scope: !328)
!355 = !DILocation(line: 250, column: 21, scope: !328)
!356 = !DILocation(line: 250, column: 15, scope: !328)
!357 = !DILocation(line: 250, column: 19, scope: !328)
!358 = !DILocation(line: 0, scope: !331)
!359 = !DILocation(line: 255, column: 29, scope: !331)
!360 = !DILocation(line: 255, column: 18, scope: !331)
!361 = !DILocation(line: 256, column: 36, scope: !331)
!362 = !DILocation(line: 256, column: 30, scope: !331)
!363 = !DILocation(line: 256, column: 24, scope: !331)
!364 = !DILocation(line: 256, column: 22, scope: !331)
!365 = !DILocation(line: 256, column: 20, scope: !331)
!366 = !DILocation(line: 260, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !331, file: !2, line: 260, column: 10)
!368 = !DILocation(line: 260, column: 10, scope: !331)
!369 = !DILocation(line: 266, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !331, file: !2, line: 266, column: 10)
!371 = !DILocation(line: 266, column: 10, scope: !331)
!372 = !DILocation(line: 271, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !331, file: !2, line: 271, column: 10)
!374 = !DILocation(line: 271, column: 10, scope: !331)
!375 = !DILocation(line: 275, column: 23, scope: !331)
!376 = !DILocation(line: 275, column: 19, scope: !331)
!377 = !DILocation(line: 275, column: 33, scope: !331)
!378 = !DILocation(line: 275, column: 29, scope: !331)
!379 = !DILocation(line: 275, column: 43, scope: !331)
!380 = !DILocation(line: 275, column: 39, scope: !331)
!381 = !DILocation(line: 277, column: 17, scope: !338)
!382 = !DILocation(line: 0, scope: !338)
!383 = !DILocation(line: 11, column: 19, scope: !221, inlinedAt: !382)
!384 = !DILocation(line: 11, column: 22, scope: !221, inlinedAt: !382)
!385 = !DILocation(line: 11, column: 30, scope: !221, inlinedAt: !382)
!386 = !DILocation(line: 11, column: 39, scope: !221, inlinedAt: !382)
!387 = !DILocation(line: 0, scope: !221, inlinedAt: !388)
!388 = distinct !DILocation(line: 280, column: 19, scope: !337)
!389 = !DILocation(line: 0, scope: !221, inlinedAt: !390)
!390 = distinct !DILocation(line: 286, column: 19, scope: !341)
!391 = !DILocation(line: 12, column: 19, scope: !221, inlinedAt: !382)
!392 = !DILocation(line: 277, column: 10, scope: !331)
!393 = !DILocation(line: 0, scope: !238, inlinedAt: !388)
!394 = !DILocation(line: 18, column: 11, scope: !238, inlinedAt: !388)
!395 = !DILocation(line: 18, column: 19, scope: !238, inlinedAt: !388)
!396 = !DILocation(line: 18, column: 14, scope: !238, inlinedAt: !388)
!397 = !DILocation(line: 0, scope: !242, inlinedAt: !388)
!398 = !DILocation(line: 25, column: 10, scope: !242, inlinedAt: !388)
!399 = !DILocation(line: 25, column: 13, scope: !242, inlinedAt: !388)
!400 = !DILocation(line: 25, column: 18, scope: !242, inlinedAt: !388)
!401 = !DILocation(line: 0, scope: !337)
!402 = !DILocation(line: 281, column: 32, scope: !337)
!403 = !DILocation(line: 281, column: 34, scope: !337)
!404 = !DILocation(line: 281, column: 47, scope: !337)
!405 = !DILocation(line: 281, column: 50, scope: !337)
!406 = !DILocation(line: 281, column: 44, scope: !337)
!407 = !DILocation(line: 281, column: 37, scope: !337)
!408 = !DILocation(line: 281, column: 27, scope: !337)
!409 = !DILocation(line: 282, column: 7, scope: !337)
!410 = !DILocation(line: 0, scope: !238, inlinedAt: !390)
!411 = !DILocation(line: 18, column: 11, scope: !238, inlinedAt: !390)
!412 = !DILocation(line: 18, column: 19, scope: !238, inlinedAt: !390)
!413 = !DILocation(line: 18, column: 14, scope: !238, inlinedAt: !390)
!414 = !DILocation(line: 0, scope: !242, inlinedAt: !390)
!415 = !DILocation(line: 25, column: 10, scope: !242, inlinedAt: !390)
!416 = !DILocation(line: 25, column: 13, scope: !242, inlinedAt: !390)
!417 = !DILocation(line: 25, column: 18, scope: !242, inlinedAt: !390)
!418 = !DILocation(line: 0, scope: !341)
!419 = !DILocation(line: 287, column: 35, scope: !341)
!420 = !DILocation(line: 287, column: 38, scope: !341)
!421 = !DILocation(line: 287, column: 32, scope: !341)
!422 = !DILocation(line: 287, column: 25, scope: !341)
!423 = !DILocation(line: 290, column: 19, scope: !331)
!424 = !DILocation(line: 292, column: 16, scope: !425)
!425 = distinct !DILexicalBlock(scope: !331, file: !2, line: 292, column: 10)
!426 = !DILocation(line: 292, column: 10, scope: !331)
!427 = !DILocation(line: 293, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !2, line: 292, column: 39)
!429 = !DILocation(line: 293, column: 17, scope: !428)
!430 = !DILocation(line: 293, column: 21, scope: !428)
!431 = !DILocation(line: 294, column: 7, scope: !428)
!432 = !DILocation(line: 295, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !425, file: !2, line: 295, column: 15)
!434 = !DILocation(line: 295, column: 15, scope: !425)
!435 = !DILocation(line: 296, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !2, line: 295, column: 51)
!437 = !DILocation(line: 296, column: 35, scope: !436)
!438 = !DILocation(line: 296, column: 55, scope: !436)
!439 = !DILocation(line: 296, column: 53, scope: !436)
!440 = !DILocation(line: 296, column: 17, scope: !436)
!441 = !DILocation(line: 296, column: 21, scope: !436)
!442 = !DILocation(line: 297, column: 7, scope: !436)
!443 = !DILocation(line: 298, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !2, line: 298, column: 15)
!445 = !DILocation(line: 0, scope: !444)
!446 = !DILocation(line: 298, column: 15, scope: !433)
!447 = !DILocation(line: 299, column: 50, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 298, column: 49)
!449 = !DILocation(line: 299, column: 21, scope: !448)
!450 = !DILocation(line: 300, column: 7, scope: !448)
!451 = !DILocation(line: 302, column: 45, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !2, line: 301, column: 12)
!453 = !DILocation(line: 302, column: 21, scope: !452)
!454 = !DILocation(line: 308, column: 1, scope: !318)
!455 = distinct !DISubprogram(name: "gsl_sf_hypot_e", scope: !2, file: !2, line: 312, type: !456, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!50, !153, !153, !141}
!458 = !{!459, !460, !461, !462, !465, !466, !467, !468, !469}
!459 = !DILocalVariable(name: "x", arg: 1, scope: !455, file: !2, line: 312, type: !153)
!460 = !DILocalVariable(name: "y", arg: 2, scope: !455, file: !2, line: 312, type: !153)
!461 = !DILocalVariable(name: "result", arg: 3, scope: !455, file: !2, line: 312, type: !141)
!462 = !DILocalVariable(name: "a", scope: !463, file: !2, line: 322, type: !153)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 321, column: 8)
!464 = distinct !DILexicalBlock(scope: !455, file: !2, line: 316, column: 6)
!465 = !DILocalVariable(name: "b", scope: !463, file: !2, line: 323, type: !153)
!466 = !DILocalVariable(name: "min", scope: !463, file: !2, line: 324, type: !153)
!467 = !DILocalVariable(name: "max", scope: !463, file: !2, line: 325, type: !153)
!468 = !DILocalVariable(name: "rat", scope: !463, file: !2, line: 326, type: !153)
!469 = !DILocalVariable(name: "root_term", scope: !463, file: !2, line: 327, type: !153)
!470 = !DILocation(line: 0, scope: !455)
!471 = !DILocation(line: 316, column: 8, scope: !464)
!472 = !DILocation(line: 316, column: 15, scope: !464)
!473 = !DILocation(line: 318, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !464, file: !2, line: 316, column: 28)
!475 = !DILocation(line: 319, column: 5, scope: !474)
!476 = !DILocation(line: 322, column: 22, scope: !463)
!477 = !DILocation(line: 0, scope: !463)
!478 = !DILocation(line: 323, column: 22, scope: !463)
!479 = !DILocalVariable(name: "a", arg: 1, scope: !480, file: !481, line: 75, type: !108)
!480 = distinct !DISubprogram(name: "GSL_MIN_DBL", scope: !481, file: !481, line: 75, type: !482, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !484)
!481 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!482 = !DISubroutineType(types: !483)
!483 = !{!108, !108, !108}
!484 = !{!479, !485}
!485 = !DILocalVariable(name: "b", arg: 2, scope: !480, file: !481, line: 75, type: !108)
!486 = !DILocation(line: 0, scope: !480, inlinedAt: !487)
!487 = distinct !DILocation(line: 324, column: 24, scope: !463)
!488 = !DILocation(line: 77, column: 10, scope: !480, inlinedAt: !487)
!489 = !DILocalVariable(name: "a", arg: 1, scope: !490, file: !481, line: 69, type: !108)
!490 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !481, file: !481, line: 69, type: !482, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !491)
!491 = !{!489, !492}
!492 = !DILocalVariable(name: "b", arg: 2, scope: !490, file: !481, line: 69, type: !108)
!493 = !DILocation(line: 0, scope: !490, inlinedAt: !494)
!494 = distinct !DILocation(line: 325, column: 24, scope: !463)
!495 = !DILocation(line: 71, column: 10, scope: !490, inlinedAt: !494)
!496 = !DILocation(line: 326, column: 27, scope: !463)
!497 = !DILocation(line: 327, column: 44, scope: !463)
!498 = !DILocation(line: 327, column: 39, scope: !463)
!499 = !DILocation(line: 327, column: 30, scope: !463)
!500 = !DILocation(line: 329, column: 25, scope: !501)
!501 = distinct !DILexicalBlock(scope: !463, file: !2, line: 329, column: 8)
!502 = !DILocation(line: 329, column: 12, scope: !501)
!503 = !DILocation(line: 329, column: 8, scope: !463)
!504 = !DILocation(line: 330, column: 25, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !2, line: 329, column: 37)
!506 = !DILocation(line: 330, column: 19, scope: !505)
!507 = !DILocation(line: 331, column: 45, scope: !505)
!508 = !DILocation(line: 331, column: 43, scope: !505)
!509 = !DILocation(line: 331, column: 15, scope: !505)
!510 = !DILocation(line: 331, column: 19, scope: !505)
!511 = !DILocation(line: 332, column: 7, scope: !505)
!512 = !DILocation(line: 335, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 335, column: 7)
!514 = distinct !DILexicalBlock(scope: !501, file: !2, line: 334, column: 10)
!515 = !DILocation(line: 335, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !2, line: 335, column: 7)
!517 = !DILocation(line: 0, scope: !464)
!518 = !DILocation(line: 338, column: 1, scope: !455)
!519 = !DISubprogram(name: "gsl_error", scope: !49, file: !49, line: 77, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !522, !50, !50}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!524 = distinct !DISubprogram(name: "gsl_sf_complex_sin_e", scope: !2, file: !2, line: 342, type: !525, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!50, !153, !153, !141, !141}
!527 = !{!528, !529, !530, !531, !532, !535, !536, !539, !540}
!528 = !DILocalVariable(name: "zr", arg: 1, scope: !524, file: !2, line: 342, type: !153)
!529 = !DILocalVariable(name: "zi", arg: 2, scope: !524, file: !2, line: 342, type: !153)
!530 = !DILocalVariable(name: "szr", arg: 3, scope: !524, file: !2, line: 343, type: !141)
!531 = !DILocalVariable(name: "szi", arg: 4, scope: !524, file: !2, line: 343, type: !141)
!532 = !DILocalVariable(name: "ch_m1", scope: !533, file: !2, line: 349, type: !108)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 348, column: 22)
!534 = distinct !DILexicalBlock(scope: !524, file: !2, line: 348, column: 6)
!535 = !DILocalVariable(name: "sh", scope: !533, file: !2, line: 349, type: !108)
!536 = !DILocalVariable(name: "ex", scope: !537, file: !2, line: 359, type: !108)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 358, column: 39)
!538 = distinct !DILexicalBlock(scope: !534, file: !2, line: 358, column: 11)
!539 = !DILocalVariable(name: "ch", scope: !537, file: !2, line: 360, type: !108)
!540 = !DILocalVariable(name: "sh", scope: !537, file: !2, line: 361, type: !108)
!541 = !DILocation(line: 0, scope: !524)
!542 = !DILocation(line: 348, column: 6, scope: !534)
!543 = !DILocation(line: 348, column: 15, scope: !534)
!544 = !DILocation(line: 348, column: 6, scope: !524)
!545 = !DILocalVariable(name: "x", arg: 1, scope: !546, file: !2, line: 39, type: !153)
!546 = distinct !DISubprogram(name: "sinh_series", scope: !2, file: !2, line: 39, type: !547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!50, !153, !107}
!549 = !{!545, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!550 = !DILocalVariable(name: "result", arg: 2, scope: !546, file: !2, line: 39, type: !107)
!551 = !DILocalVariable(name: "y", scope: !546, file: !2, line: 41, type: !153)
!552 = !DILocalVariable(name: "c0", scope: !546, file: !2, line: 42, type: !153)
!553 = !DILocalVariable(name: "c1", scope: !546, file: !2, line: 43, type: !153)
!554 = !DILocalVariable(name: "c2", scope: !546, file: !2, line: 44, type: !153)
!555 = !DILocalVariable(name: "c3", scope: !546, file: !2, line: 45, type: !153)
!556 = !DILocalVariable(name: "c4", scope: !546, file: !2, line: 46, type: !153)
!557 = !DILocalVariable(name: "c5", scope: !546, file: !2, line: 47, type: !153)
!558 = !DILocalVariable(name: "c6", scope: !546, file: !2, line: 48, type: !153)
!559 = !DILocalVariable(name: "c7", scope: !546, file: !2, line: 49, type: !153)
!560 = !DILocation(line: 0, scope: !546, inlinedAt: !561)
!561 = distinct !DILocation(line: 350, column: 5, scope: !533)
!562 = !DILocation(line: 41, column: 21, scope: !546, inlinedAt: !561)
!563 = !DILocation(line: 50, column: 65, scope: !546, inlinedAt: !561)
!564 = !DILocation(line: 50, column: 63, scope: !546, inlinedAt: !561)
!565 = !DILocation(line: 50, column: 59, scope: !546, inlinedAt: !561)
!566 = !DILocation(line: 50, column: 57, scope: !546, inlinedAt: !561)
!567 = !DILocation(line: 50, column: 53, scope: !546, inlinedAt: !561)
!568 = !DILocation(line: 50, column: 51, scope: !546, inlinedAt: !561)
!569 = !DILocation(line: 50, column: 47, scope: !546, inlinedAt: !561)
!570 = !DILocation(line: 50, column: 45, scope: !546, inlinedAt: !561)
!571 = !DILocation(line: 50, column: 41, scope: !546, inlinedAt: !561)
!572 = !DILocation(line: 50, column: 39, scope: !546, inlinedAt: !561)
!573 = !DILocation(line: 50, column: 35, scope: !546, inlinedAt: !561)
!574 = !DILocation(line: 50, column: 33, scope: !546, inlinedAt: !561)
!575 = !DILocation(line: 50, column: 29, scope: !546, inlinedAt: !561)
!576 = !DILocation(line: 50, column: 27, scope: !546, inlinedAt: !561)
!577 = !DILocation(line: 50, column: 23, scope: !546, inlinedAt: !561)
!578 = !DILocation(line: 50, column: 20, scope: !546, inlinedAt: !561)
!579 = !DILocation(line: 50, column: 14, scope: !546, inlinedAt: !561)
!580 = !DILocation(line: 0, scope: !533)
!581 = !DILocalVariable(name: "x", arg: 1, scope: !582, file: !2, line: 61, type: !153)
!582 = distinct !DISubprogram(name: "cosh_m1_series", scope: !2, file: !2, line: 61, type: !547, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !583)
!583 = !{!581, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!584 = !DILocalVariable(name: "result", arg: 2, scope: !582, file: !2, line: 61, type: !107)
!585 = !DILocalVariable(name: "y", scope: !582, file: !2, line: 63, type: !153)
!586 = !DILocalVariable(name: "c0", scope: !582, file: !2, line: 64, type: !153)
!587 = !DILocalVariable(name: "c1", scope: !582, file: !2, line: 65, type: !153)
!588 = !DILocalVariable(name: "c2", scope: !582, file: !2, line: 66, type: !153)
!589 = !DILocalVariable(name: "c3", scope: !582, file: !2, line: 67, type: !153)
!590 = !DILocalVariable(name: "c4", scope: !582, file: !2, line: 68, type: !153)
!591 = !DILocalVariable(name: "c5", scope: !582, file: !2, line: 69, type: !153)
!592 = !DILocalVariable(name: "c6", scope: !582, file: !2, line: 70, type: !153)
!593 = !DILocalVariable(name: "c7", scope: !582, file: !2, line: 71, type: !153)
!594 = !DILocalVariable(name: "c8", scope: !582, file: !2, line: 72, type: !153)
!595 = !DILocation(line: 0, scope: !582, inlinedAt: !596)
!596 = distinct !DILocation(line: 351, column: 5, scope: !533)
!597 = !DILocation(line: 73, column: 62, scope: !582, inlinedAt: !596)
!598 = !DILocation(line: 73, column: 60, scope: !582, inlinedAt: !596)
!599 = !DILocation(line: 73, column: 56, scope: !582, inlinedAt: !596)
!600 = !DILocation(line: 73, column: 54, scope: !582, inlinedAt: !596)
!601 = !DILocation(line: 73, column: 50, scope: !582, inlinedAt: !596)
!602 = !DILocation(line: 73, column: 48, scope: !582, inlinedAt: !596)
!603 = !DILocation(line: 73, column: 44, scope: !582, inlinedAt: !596)
!604 = !DILocation(line: 73, column: 42, scope: !582, inlinedAt: !596)
!605 = !DILocation(line: 73, column: 38, scope: !582, inlinedAt: !596)
!606 = !DILocation(line: 73, column: 36, scope: !582, inlinedAt: !596)
!607 = !DILocation(line: 73, column: 32, scope: !582, inlinedAt: !596)
!608 = !DILocation(line: 73, column: 30, scope: !582, inlinedAt: !596)
!609 = !DILocation(line: 73, column: 26, scope: !582, inlinedAt: !596)
!610 = !DILocation(line: 73, column: 24, scope: !582, inlinedAt: !596)
!611 = !DILocation(line: 73, column: 20, scope: !582, inlinedAt: !596)
!612 = !DILocation(line: 73, column: 18, scope: !582, inlinedAt: !596)
!613 = !DILocation(line: 73, column: 14, scope: !582, inlinedAt: !596)
!614 = !DILocation(line: 352, column: 16, scope: !533)
!615 = !DILocation(line: 352, column: 31, scope: !533)
!616 = !DILocation(line: 352, column: 23, scope: !533)
!617 = !DILocation(line: 352, column: 14, scope: !533)
!618 = !DILocation(line: 353, column: 16, scope: !533)
!619 = !DILocation(line: 353, column: 23, scope: !533)
!620 = !DILocation(line: 353, column: 14, scope: !533)
!621 = !DILocation(line: 354, column: 50, scope: !533)
!622 = !DILocation(line: 354, column: 40, scope: !533)
!623 = !DILocation(line: 354, column: 38, scope: !533)
!624 = !DILocation(line: 354, column: 10, scope: !533)
!625 = !DILocation(line: 354, column: 14, scope: !533)
!626 = !DILocation(line: 355, column: 40, scope: !533)
!627 = !DILocation(line: 355, column: 38, scope: !533)
!628 = !DILocation(line: 355, column: 10, scope: !533)
!629 = !DILocation(line: 355, column: 14, scope: !533)
!630 = !DILocation(line: 358, column: 20, scope: !538)
!631 = !DILocation(line: 358, column: 11, scope: !534)
!632 = !DILocation(line: 359, column: 17, scope: !537)
!633 = !DILocation(line: 0, scope: !537)
!634 = !DILocation(line: 360, column: 28, scope: !537)
!635 = !DILocation(line: 360, column: 24, scope: !537)
!636 = !DILocation(line: 360, column: 20, scope: !537)
!637 = !DILocation(line: 361, column: 24, scope: !537)
!638 = !DILocation(line: 361, column: 20, scope: !537)
!639 = !DILocation(line: 362, column: 16, scope: !537)
!640 = !DILocation(line: 362, column: 23, scope: !537)
!641 = !DILocation(line: 362, column: 14, scope: !537)
!642 = !DILocation(line: 363, column: 16, scope: !537)
!643 = !DILocation(line: 363, column: 23, scope: !537)
!644 = !DILocation(line: 363, column: 14, scope: !537)
!645 = !DILocation(line: 364, column: 50, scope: !537)
!646 = !DILocation(line: 364, column: 40, scope: !537)
!647 = !DILocation(line: 364, column: 38, scope: !537)
!648 = !DILocation(line: 364, column: 10, scope: !537)
!649 = !DILocation(line: 364, column: 14, scope: !537)
!650 = !DILocation(line: 365, column: 40, scope: !537)
!651 = !DILocation(line: 365, column: 38, scope: !537)
!652 = !DILocation(line: 365, column: 10, scope: !537)
!653 = !DILocation(line: 365, column: 14, scope: !537)
!654 = !DILocation(line: 369, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !2, line: 369, column: 5)
!656 = distinct !DILexicalBlock(scope: !538, file: !2, line: 368, column: 8)
!657 = !DILocation(line: 369, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !2, line: 369, column: 5)
!659 = !DILocation(line: 0, scope: !534)
!660 = !DILocation(line: 371, column: 1, scope: !524)
!661 = !DISubprogram(name: "sin", scope: !315, file: !315, line: 64, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubroutineType(types: !663)
!663 = !{!108, !108}
!664 = !DISubprogram(name: "cos", scope: !315, file: !315, line: 62, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DISubprogram(name: "exp", scope: !315, file: !315, line: 95, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = distinct !DISubprogram(name: "gsl_sf_complex_cos_e", scope: !2, file: !2, line: 375, type: !525, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !667)
!667 = !{!668, !669, !670, !671, !672, !675, !676, !679, !680}
!668 = !DILocalVariable(name: "zr", arg: 1, scope: !666, file: !2, line: 375, type: !153)
!669 = !DILocalVariable(name: "zi", arg: 2, scope: !666, file: !2, line: 375, type: !153)
!670 = !DILocalVariable(name: "czr", arg: 3, scope: !666, file: !2, line: 376, type: !141)
!671 = !DILocalVariable(name: "czi", arg: 4, scope: !666, file: !2, line: 376, type: !141)
!672 = !DILocalVariable(name: "ch_m1", scope: !673, file: !2, line: 382, type: !108)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 381, column: 22)
!674 = distinct !DILexicalBlock(scope: !666, file: !2, line: 381, column: 6)
!675 = !DILocalVariable(name: "sh", scope: !673, file: !2, line: 382, type: !108)
!676 = !DILocalVariable(name: "ex", scope: !677, file: !2, line: 392, type: !108)
!677 = distinct !DILexicalBlock(scope: !678, file: !2, line: 391, column: 39)
!678 = distinct !DILexicalBlock(scope: !674, file: !2, line: 391, column: 11)
!679 = !DILocalVariable(name: "ch", scope: !677, file: !2, line: 393, type: !108)
!680 = !DILocalVariable(name: "sh", scope: !677, file: !2, line: 394, type: !108)
!681 = !DILocation(line: 0, scope: !666)
!682 = !DILocation(line: 381, column: 6, scope: !674)
!683 = !DILocation(line: 381, column: 15, scope: !674)
!684 = !DILocation(line: 381, column: 6, scope: !666)
!685 = !DILocation(line: 0, scope: !546, inlinedAt: !686)
!686 = distinct !DILocation(line: 383, column: 5, scope: !673)
!687 = !DILocation(line: 41, column: 21, scope: !546, inlinedAt: !686)
!688 = !DILocation(line: 50, column: 65, scope: !546, inlinedAt: !686)
!689 = !DILocation(line: 50, column: 63, scope: !546, inlinedAt: !686)
!690 = !DILocation(line: 50, column: 59, scope: !546, inlinedAt: !686)
!691 = !DILocation(line: 50, column: 57, scope: !546, inlinedAt: !686)
!692 = !DILocation(line: 50, column: 53, scope: !546, inlinedAt: !686)
!693 = !DILocation(line: 50, column: 51, scope: !546, inlinedAt: !686)
!694 = !DILocation(line: 50, column: 47, scope: !546, inlinedAt: !686)
!695 = !DILocation(line: 50, column: 45, scope: !546, inlinedAt: !686)
!696 = !DILocation(line: 50, column: 41, scope: !546, inlinedAt: !686)
!697 = !DILocation(line: 50, column: 39, scope: !546, inlinedAt: !686)
!698 = !DILocation(line: 50, column: 35, scope: !546, inlinedAt: !686)
!699 = !DILocation(line: 50, column: 33, scope: !546, inlinedAt: !686)
!700 = !DILocation(line: 50, column: 29, scope: !546, inlinedAt: !686)
!701 = !DILocation(line: 50, column: 27, scope: !546, inlinedAt: !686)
!702 = !DILocation(line: 50, column: 23, scope: !546, inlinedAt: !686)
!703 = !DILocation(line: 50, column: 20, scope: !546, inlinedAt: !686)
!704 = !DILocation(line: 50, column: 14, scope: !546, inlinedAt: !686)
!705 = !DILocation(line: 0, scope: !673)
!706 = !DILocation(line: 0, scope: !582, inlinedAt: !707)
!707 = distinct !DILocation(line: 384, column: 5, scope: !673)
!708 = !DILocation(line: 73, column: 62, scope: !582, inlinedAt: !707)
!709 = !DILocation(line: 73, column: 60, scope: !582, inlinedAt: !707)
!710 = !DILocation(line: 73, column: 56, scope: !582, inlinedAt: !707)
!711 = !DILocation(line: 73, column: 54, scope: !582, inlinedAt: !707)
!712 = !DILocation(line: 73, column: 50, scope: !582, inlinedAt: !707)
!713 = !DILocation(line: 73, column: 48, scope: !582, inlinedAt: !707)
!714 = !DILocation(line: 73, column: 44, scope: !582, inlinedAt: !707)
!715 = !DILocation(line: 73, column: 42, scope: !582, inlinedAt: !707)
!716 = !DILocation(line: 73, column: 38, scope: !582, inlinedAt: !707)
!717 = !DILocation(line: 73, column: 36, scope: !582, inlinedAt: !707)
!718 = !DILocation(line: 73, column: 32, scope: !582, inlinedAt: !707)
!719 = !DILocation(line: 73, column: 30, scope: !582, inlinedAt: !707)
!720 = !DILocation(line: 73, column: 26, scope: !582, inlinedAt: !707)
!721 = !DILocation(line: 73, column: 24, scope: !582, inlinedAt: !707)
!722 = !DILocation(line: 73, column: 20, scope: !582, inlinedAt: !707)
!723 = !DILocation(line: 73, column: 18, scope: !582, inlinedAt: !707)
!724 = !DILocation(line: 73, column: 14, scope: !582, inlinedAt: !707)
!725 = !DILocation(line: 385, column: 17, scope: !673)
!726 = !DILocation(line: 385, column: 32, scope: !673)
!727 = !DILocation(line: 385, column: 24, scope: !673)
!728 = !DILocation(line: 385, column: 14, scope: !673)
!729 = !DILocation(line: 386, column: 17, scope: !673)
!730 = !DILocation(line: 386, column: 16, scope: !673)
!731 = !DILocation(line: 386, column: 24, scope: !673)
!732 = !DILocation(line: 386, column: 14, scope: !673)
!733 = !DILocation(line: 387, column: 50, scope: !673)
!734 = !DILocation(line: 387, column: 40, scope: !673)
!735 = !DILocation(line: 387, column: 38, scope: !673)
!736 = !DILocation(line: 387, column: 10, scope: !673)
!737 = !DILocation(line: 387, column: 14, scope: !673)
!738 = !DILocation(line: 388, column: 40, scope: !673)
!739 = !DILocation(line: 388, column: 38, scope: !673)
!740 = !DILocation(line: 388, column: 10, scope: !673)
!741 = !DILocation(line: 388, column: 14, scope: !673)
!742 = !DILocation(line: 391, column: 20, scope: !678)
!743 = !DILocation(line: 391, column: 11, scope: !674)
!744 = !DILocation(line: 392, column: 17, scope: !677)
!745 = !DILocation(line: 0, scope: !677)
!746 = !DILocation(line: 393, column: 28, scope: !677)
!747 = !DILocation(line: 393, column: 24, scope: !677)
!748 = !DILocation(line: 393, column: 20, scope: !677)
!749 = !DILocation(line: 394, column: 24, scope: !677)
!750 = !DILocation(line: 394, column: 20, scope: !677)
!751 = !DILocation(line: 395, column: 17, scope: !677)
!752 = !DILocation(line: 395, column: 24, scope: !677)
!753 = !DILocation(line: 395, column: 14, scope: !677)
!754 = !DILocation(line: 396, column: 17, scope: !677)
!755 = !DILocation(line: 396, column: 16, scope: !677)
!756 = !DILocation(line: 396, column: 24, scope: !677)
!757 = !DILocation(line: 396, column: 14, scope: !677)
!758 = !DILocation(line: 397, column: 50, scope: !677)
!759 = !DILocation(line: 397, column: 40, scope: !677)
!760 = !DILocation(line: 397, column: 38, scope: !677)
!761 = !DILocation(line: 397, column: 10, scope: !677)
!762 = !DILocation(line: 397, column: 14, scope: !677)
!763 = !DILocation(line: 398, column: 40, scope: !677)
!764 = !DILocation(line: 398, column: 38, scope: !677)
!765 = !DILocation(line: 398, column: 10, scope: !677)
!766 = !DILocation(line: 398, column: 14, scope: !677)
!767 = !DILocation(line: 402, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 402, column: 5)
!769 = distinct !DILexicalBlock(scope: !678, file: !2, line: 401, column: 8)
!770 = !DILocation(line: 402, column: 5, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 402, column: 5)
!772 = !DILocation(line: 0, scope: !674)
!773 = !DILocation(line: 404, column: 1, scope: !666)
!774 = distinct !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !2, file: !2, line: 408, type: !525, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !775)
!775 = !{!776, !777, !778, !779, !780, !784, !785}
!776 = !DILocalVariable(name: "zr", arg: 1, scope: !774, file: !2, line: 408, type: !153)
!777 = !DILocalVariable(name: "zi", arg: 2, scope: !774, file: !2, line: 408, type: !153)
!778 = !DILocalVariable(name: "lszr", arg: 3, scope: !774, file: !2, line: 409, type: !141)
!779 = !DILocalVariable(name: "lszi", arg: 4, scope: !774, file: !2, line: 409, type: !141)
!780 = !DILocalVariable(name: "sin_r", scope: !781, file: !2, line: 427, type: !142)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 426, column: 8)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 420, column: 11)
!783 = distinct !DILexicalBlock(scope: !774, file: !2, line: 414, column: 6)
!784 = !DILocalVariable(name: "sin_i", scope: !781, file: !2, line: 427, type: !142)
!785 = !DILocalVariable(name: "status", scope: !781, file: !2, line: 428, type: !50)
!786 = distinct !DIAssignID()
!787 = !DILocation(line: 0, scope: !781)
!788 = distinct !DIAssignID()
!789 = !DILocation(line: 0, scope: !774)
!790 = !DILocation(line: 414, column: 9, scope: !783)
!791 = !DILocation(line: 414, column: 6, scope: !774)
!792 = !DILocation(line: 415, column: 24, scope: !793)
!793 = distinct !DILexicalBlock(scope: !783, file: !2, line: 414, column: 17)
!794 = !DILocation(line: 415, column: 15, scope: !793)
!795 = !DILocation(line: 416, column: 27, scope: !793)
!796 = !DILocation(line: 416, column: 15, scope: !793)
!797 = !DILocation(line: 417, column: 52, scope: !793)
!798 = !DILocation(line: 417, column: 41, scope: !793)
!799 = !DILocation(line: 417, column: 39, scope: !793)
!800 = !DILocation(line: 417, column: 11, scope: !793)
!801 = !DILocation(line: 417, column: 15, scope: !793)
!802 = !DILocation(line: 418, column: 41, scope: !793)
!803 = !DILocation(line: 418, column: 39, scope: !793)
!804 = !DILocation(line: 418, column: 11, scope: !793)
!805 = !DILocation(line: 418, column: 15, scope: !793)
!806 = !DILocation(line: 419, column: 3, scope: !793)
!807 = !DILocation(line: 420, column: 14, scope: !782)
!808 = !DILocation(line: 420, column: 11, scope: !783)
!809 = !DILocation(line: 421, column: 24, scope: !810)
!810 = distinct !DILexicalBlock(scope: !782, file: !2, line: 420, column: 23)
!811 = !DILocation(line: 421, column: 15, scope: !810)
!812 = !DILocation(line: 422, column: 27, scope: !810)
!813 = !DILocation(line: 422, column: 15, scope: !810)
!814 = !DILocation(line: 423, column: 52, scope: !810)
!815 = !DILocation(line: 423, column: 41, scope: !810)
!816 = !DILocation(line: 423, column: 39, scope: !810)
!817 = !DILocation(line: 423, column: 11, scope: !810)
!818 = !DILocation(line: 423, column: 15, scope: !810)
!819 = !DILocation(line: 424, column: 41, scope: !810)
!820 = !DILocation(line: 424, column: 39, scope: !810)
!821 = !DILocation(line: 424, column: 11, scope: !810)
!822 = !DILocation(line: 424, column: 15, scope: !810)
!823 = !DILocation(line: 425, column: 3, scope: !810)
!824 = !DILocation(line: 427, column: 5, scope: !781)
!825 = !DILocation(line: 429, column: 5, scope: !781)
!826 = !{i32 0, i32 17}
!827 = !DILocation(line: 430, column: 41, scope: !781)
!828 = !DILocation(line: 430, column: 52, scope: !781)
!829 = !DILocation(line: 430, column: 14, scope: !781)
!830 = !DILocation(line: 431, column: 15, scope: !831)
!831 = distinct !DILexicalBlock(scope: !781, file: !2, line: 431, column: 8)
!832 = !DILocation(line: 431, column: 8, scope: !781)
!833 = !DILocation(line: 434, column: 3, scope: !782)
!834 = !DILocation(line: 432, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 432, column: 7)
!836 = distinct !DILexicalBlock(scope: !831, file: !2, line: 431, column: 28)
!837 = !DILocation(line: 432, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !2, line: 432, column: 7)
!839 = !DILocalVariable(name: "theta", arg: 1, scope: !840, file: !2, line: 602, type: !107)
!840 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !2, file: !2, line: 602, type: !841, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!50, !107}
!843 = !{!839, !844, !845}
!844 = !DILocalVariable(name: "r", scope: !840, file: !2, line: 604, type: !142)
!845 = !DILocalVariable(name: "stat", scope: !840, file: !2, line: 605, type: !50)
!846 = !DILocation(line: 0, scope: !840, inlinedAt: !847)
!847 = distinct !DILocation(line: 435, column: 10, scope: !774)
!848 = !DILocation(line: 605, column: 47, scope: !840, inlinedAt: !847)
!849 = !{!187, !187, i64 0}
!850 = !DILocalVariable(name: "theta", arg: 1, scope: !851, file: !2, line: 533, type: !153)
!851 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !2, file: !2, line: 533, type: !852, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!50, !153, !141}
!854 = !{!850, !855, !856, !857, !858, !859, !860, !861, !862}
!855 = !DILocalVariable(name: "result", arg: 2, scope: !851, file: !2, line: 533, type: !141)
!856 = !DILocalVariable(name: "P1", scope: !851, file: !2, line: 536, type: !153)
!857 = !DILocalVariable(name: "P2", scope: !851, file: !2, line: 537, type: !153)
!858 = !DILocalVariable(name: "P3", scope: !851, file: !2, line: 538, type: !153)
!859 = !DILocalVariable(name: "TwoPi", scope: !851, file: !2, line: 539, type: !153)
!860 = !DILocalVariable(name: "y", scope: !851, file: !2, line: 541, type: !153)
!861 = !DILocalVariable(name: "r", scope: !851, file: !2, line: 542, type: !108)
!862 = !DILocalVariable(name: "delta", scope: !863, file: !2, line: 559, type: !108)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 558, column: 8)
!864 = distinct !DILexicalBlock(scope: !865, file: !2, line: 554, column: 11)
!865 = distinct !DILexicalBlock(scope: !851, file: !2, line: 549, column: 6)
!866 = !DILocation(line: 0, scope: !851, inlinedAt: !867)
!867 = distinct !DILocation(line: 605, column: 14, scope: !840, inlinedAt: !847)
!868 = !DILocation(line: 541, column: 20, scope: !851, inlinedAt: !867)
!869 = !DILocation(line: 541, column: 48, scope: !851, inlinedAt: !867)
!870 = !DILocation(line: 541, column: 59, scope: !851, inlinedAt: !867)
!871 = !DILocation(line: 541, column: 42, scope: !851, inlinedAt: !867)
!872 = !DILocation(line: 541, column: 40, scope: !851, inlinedAt: !867)
!873 = !DILocation(line: 542, column: 25, scope: !851, inlinedAt: !867)
!874 = !DILocation(line: 542, column: 22, scope: !851, inlinedAt: !867)
!875 = !DILocation(line: 542, column: 33, scope: !851, inlinedAt: !867)
!876 = !DILocation(line: 542, column: 30, scope: !851, inlinedAt: !867)
!877 = !DILocation(line: 542, column: 41, scope: !851, inlinedAt: !867)
!878 = !DILocation(line: 542, column: 38, scope: !851, inlinedAt: !867)
!879 = !DILocation(line: 544, column: 8, scope: !880, inlinedAt: !867)
!880 = distinct !DILexicalBlock(scope: !851, file: !2, line: 544, column: 6)
!881 = !DILocation(line: 544, column: 6, scope: !851, inlinedAt: !867)
!882 = !DILocation(line: 544, column: 27, scope: !883, inlinedAt: !867)
!883 = distinct !DILexicalBlock(scope: !880, file: !2, line: 544, column: 17)
!884 = !DILocation(line: 544, column: 33, scope: !883, inlinedAt: !867)
!885 = !DILocation(line: 544, column: 39, scope: !883, inlinedAt: !867)
!886 = !DILocation(line: 544, column: 47, scope: !883, inlinedAt: !867)
!887 = !DILocation(line: 545, column: 14, scope: !888, inlinedAt: !867)
!888 = distinct !DILexicalBlock(scope: !880, file: !2, line: 545, column: 12)
!889 = !DILocation(line: 545, column: 12, scope: !880, inlinedAt: !867)
!890 = !DILocation(line: 545, column: 31, scope: !888, inlinedAt: !867)
!891 = !DILocation(line: 545, column: 37, scope: !888, inlinedAt: !867)
!892 = !DILocation(line: 545, column: 43, scope: !888, inlinedAt: !867)
!893 = !DILocation(line: 545, column: 23, scope: !888, inlinedAt: !867)
!894 = !DILocation(line: 549, column: 18, scope: !865, inlinedAt: !867)
!895 = !DILocation(line: 549, column: 6, scope: !851, inlinedAt: !867)
!896 = !DILocation(line: 552, column: 5, scope: !897, inlinedAt: !867)
!897 = distinct !DILexicalBlock(scope: !898, file: !2, line: 552, column: 5)
!898 = distinct !DILexicalBlock(scope: !865, file: !2, line: 549, column: 44)
!899 = !DILocation(line: 0, scope: !865, inlinedAt: !867)
!900 = !DILocation(line: 606, column: 10, scope: !840, inlinedAt: !847)
!901 = !DILocation(line: 435, column: 3, scope: !774)
!902 = !DILocation(line: 436, column: 1, scope: !774)
!903 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !904, file: !904, line: 62, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!905 = !DILocation(line: 0, scope: !840)
!906 = !DILocation(line: 605, column: 47, scope: !840)
!907 = !DILocation(line: 0, scope: !851, inlinedAt: !908)
!908 = distinct !DILocation(line: 605, column: 14, scope: !840)
!909 = !DILocation(line: 541, column: 20, scope: !851, inlinedAt: !908)
!910 = !DILocation(line: 541, column: 48, scope: !851, inlinedAt: !908)
!911 = !DILocation(line: 541, column: 59, scope: !851, inlinedAt: !908)
!912 = !DILocation(line: 541, column: 42, scope: !851, inlinedAt: !908)
!913 = !DILocation(line: 541, column: 40, scope: !851, inlinedAt: !908)
!914 = !DILocation(line: 542, column: 25, scope: !851, inlinedAt: !908)
!915 = !DILocation(line: 542, column: 22, scope: !851, inlinedAt: !908)
!916 = !DILocation(line: 542, column: 33, scope: !851, inlinedAt: !908)
!917 = !DILocation(line: 542, column: 30, scope: !851, inlinedAt: !908)
!918 = !DILocation(line: 542, column: 41, scope: !851, inlinedAt: !908)
!919 = !DILocation(line: 542, column: 38, scope: !851, inlinedAt: !908)
!920 = !DILocation(line: 544, column: 8, scope: !880, inlinedAt: !908)
!921 = !DILocation(line: 544, column: 6, scope: !851, inlinedAt: !908)
!922 = !DILocation(line: 544, column: 27, scope: !883, inlinedAt: !908)
!923 = !DILocation(line: 544, column: 33, scope: !883, inlinedAt: !908)
!924 = !DILocation(line: 544, column: 39, scope: !883, inlinedAt: !908)
!925 = !DILocation(line: 544, column: 47, scope: !883, inlinedAt: !908)
!926 = !DILocation(line: 545, column: 14, scope: !888, inlinedAt: !908)
!927 = !DILocation(line: 545, column: 12, scope: !880, inlinedAt: !908)
!928 = !DILocation(line: 545, column: 31, scope: !888, inlinedAt: !908)
!929 = !DILocation(line: 545, column: 37, scope: !888, inlinedAt: !908)
!930 = !DILocation(line: 545, column: 43, scope: !888, inlinedAt: !908)
!931 = !DILocation(line: 545, column: 23, scope: !888, inlinedAt: !908)
!932 = !DILocation(line: 549, column: 18, scope: !865, inlinedAt: !908)
!933 = !DILocation(line: 549, column: 6, scope: !851, inlinedAt: !908)
!934 = !DILocation(line: 552, column: 5, scope: !897, inlinedAt: !908)
!935 = !DILocation(line: 0, scope: !865, inlinedAt: !908)
!936 = !DILocation(line: 606, column: 10, scope: !840)
!937 = !DILocation(line: 607, column: 3, scope: !840)
!938 = distinct !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !2, file: !2, line: 440, type: !852, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !939)
!939 = !{!940, !941, !942}
!940 = !DILocalVariable(name: "x", arg: 1, scope: !938, file: !2, line: 440, type: !153)
!941 = !DILocalVariable(name: "result", arg: 2, scope: !938, file: !2, line: 440, type: !141)
!942 = !DILocalVariable(name: "eps", scope: !943, file: !2, line: 448, type: !108)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 447, column: 26)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 447, column: 11)
!945 = distinct !DILexicalBlock(scope: !938, file: !2, line: 444, column: 6)
!946 = !DILocation(line: 0, scope: !938)
!947 = !DILocation(line: 444, column: 8, scope: !945)
!948 = !DILocation(line: 444, column: 6, scope: !938)
!949 = !DILocation(line: 445, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 445, column: 5)
!951 = distinct !DILexicalBlock(scope: !945, file: !2, line: 444, column: 16)
!952 = !DILocation(line: 445, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !2, line: 445, column: 5)
!954 = !DILocation(line: 447, column: 11, scope: !944)
!955 = !DILocation(line: 447, column: 19, scope: !944)
!956 = !DILocation(line: 447, column: 11, scope: !945)
!957 = !DILocation(line: 0, scope: !546, inlinedAt: !958)
!958 = distinct !DILocation(line: 449, column: 5, scope: !943)
!959 = !DILocation(line: 41, column: 21, scope: !546, inlinedAt: !958)
!960 = !DILocation(line: 50, column: 65, scope: !546, inlinedAt: !958)
!961 = !DILocation(line: 50, column: 63, scope: !546, inlinedAt: !958)
!962 = !DILocation(line: 50, column: 59, scope: !546, inlinedAt: !958)
!963 = !DILocation(line: 50, column: 57, scope: !546, inlinedAt: !958)
!964 = !DILocation(line: 50, column: 53, scope: !546, inlinedAt: !958)
!965 = !DILocation(line: 50, column: 51, scope: !546, inlinedAt: !958)
!966 = !DILocation(line: 50, column: 47, scope: !546, inlinedAt: !958)
!967 = !DILocation(line: 50, column: 45, scope: !546, inlinedAt: !958)
!968 = !DILocation(line: 50, column: 41, scope: !546, inlinedAt: !958)
!969 = !DILocation(line: 50, column: 39, scope: !546, inlinedAt: !958)
!970 = !DILocation(line: 50, column: 35, scope: !546, inlinedAt: !958)
!971 = !DILocation(line: 50, column: 33, scope: !546, inlinedAt: !958)
!972 = !DILocation(line: 50, column: 29, scope: !546, inlinedAt: !958)
!973 = !DILocation(line: 50, column: 27, scope: !546, inlinedAt: !958)
!974 = !DILocation(line: 50, column: 23, scope: !546, inlinedAt: !958)
!975 = !DILocation(line: 50, column: 20, scope: !546, inlinedAt: !958)
!976 = !DILocation(line: 50, column: 14, scope: !546, inlinedAt: !958)
!977 = !DILocation(line: 0, scope: !943)
!978 = !DILocation(line: 450, column: 19, scope: !943)
!979 = !DILocation(line: 450, column: 17, scope: !943)
!980 = !DILocation(line: 451, column: 43, scope: !943)
!981 = !DILocation(line: 451, column: 41, scope: !943)
!982 = !DILocation(line: 451, column: 13, scope: !943)
!983 = !DILocation(line: 451, column: 17, scope: !943)
!984 = !DILocation(line: 454, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !944, file: !2, line: 454, column: 11)
!986 = !DILocation(line: 454, column: 11, scope: !944)
!987 = !DILocation(line: 455, column: 46, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !2, line: 454, column: 41)
!989 = !DILocation(line: 455, column: 38, scope: !988)
!990 = !DILocation(line: 455, column: 36, scope: !988)
!991 = !DILocation(line: 455, column: 30, scope: !988)
!992 = !DILocation(line: 455, column: 23, scope: !988)
!993 = !DILocation(line: 455, column: 21, scope: !988)
!994 = !DILocation(line: 455, column: 17, scope: !988)
!995 = !DILocation(line: 456, column: 43, scope: !988)
!996 = !DILocation(line: 456, column: 41, scope: !988)
!997 = !DILocation(line: 456, column: 13, scope: !988)
!998 = !DILocation(line: 456, column: 17, scope: !988)
!999 = !DILocation(line: 457, column: 5, scope: !988)
!1000 = !DILocation(line: 460, column: 26, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !985, file: !2, line: 459, column: 8)
!1002 = !DILocation(line: 460, column: 17, scope: !1001)
!1003 = !DILocation(line: 461, column: 43, scope: !1001)
!1004 = !DILocation(line: 461, column: 41, scope: !1001)
!1005 = !DILocation(line: 461, column: 13, scope: !1001)
!1006 = !DILocation(line: 461, column: 17, scope: !1001)
!1007 = !DILocation(line: 462, column: 5, scope: !1001)
!1008 = !DILocation(line: 0, scope: !945)
!1009 = !DILocation(line: 464, column: 1, scope: !938)
!1010 = !DISubprogram(name: "log", scope: !315, file: !315, line: 104, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = distinct !DISubprogram(name: "gsl_sf_lncosh_e", scope: !2, file: !2, line: 467, type: !852, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DILocalVariable(name: "x", arg: 1, scope: !1011, file: !2, line: 467, type: !153)
!1014 = !DILocalVariable(name: "result", arg: 2, scope: !1011, file: !2, line: 467, type: !141)
!1015 = !DILocalVariable(name: "eps", scope: !1016, file: !2, line: 472, type: !108)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 471, column: 21)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 471, column: 6)
!1018 = !DILocation(line: 0, scope: !1011)
!1019 = !DILocation(line: 471, column: 6, scope: !1017)
!1020 = !DILocation(line: 471, column: 14, scope: !1017)
!1021 = !DILocation(line: 471, column: 6, scope: !1011)
!1022 = !DILocation(line: 0, scope: !582, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 473, column: 5, scope: !1016)
!1024 = !DILocation(line: 63, column: 21, scope: !582, inlinedAt: !1023)
!1025 = !DILocation(line: 73, column: 62, scope: !582, inlinedAt: !1023)
!1026 = !DILocation(line: 73, column: 60, scope: !582, inlinedAt: !1023)
!1027 = !DILocation(line: 73, column: 56, scope: !582, inlinedAt: !1023)
!1028 = !DILocation(line: 73, column: 54, scope: !582, inlinedAt: !1023)
!1029 = !DILocation(line: 73, column: 50, scope: !582, inlinedAt: !1023)
!1030 = !DILocation(line: 73, column: 48, scope: !582, inlinedAt: !1023)
!1031 = !DILocation(line: 73, column: 44, scope: !582, inlinedAt: !1023)
!1032 = !DILocation(line: 73, column: 42, scope: !582, inlinedAt: !1023)
!1033 = !DILocation(line: 73, column: 38, scope: !582, inlinedAt: !1023)
!1034 = !DILocation(line: 73, column: 36, scope: !582, inlinedAt: !1023)
!1035 = !DILocation(line: 73, column: 32, scope: !582, inlinedAt: !1023)
!1036 = !DILocation(line: 73, column: 30, scope: !582, inlinedAt: !1023)
!1037 = !DILocation(line: 73, column: 26, scope: !582, inlinedAt: !1023)
!1038 = !DILocation(line: 73, column: 24, scope: !582, inlinedAt: !1023)
!1039 = !DILocation(line: 73, column: 20, scope: !582, inlinedAt: !1023)
!1040 = !DILocation(line: 73, column: 18, scope: !582, inlinedAt: !1023)
!1041 = !DILocation(line: 73, column: 14, scope: !582, inlinedAt: !1023)
!1042 = !DILocation(line: 0, scope: !1016)
!1043 = !DILocation(line: 474, column: 12, scope: !1016)
!1044 = !DILocation(line: 476, column: 19, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 476, column: 11)
!1046 = !DILocation(line: 476, column: 11, scope: !1017)
!1047 = !DILocation(line: 477, column: 52, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 476, column: 47)
!1049 = !DILocation(line: 477, column: 44, scope: !1048)
!1050 = !DILocation(line: 477, column: 42, scope: !1048)
!1051 = !DILocation(line: 477, column: 36, scope: !1048)
!1052 = !DILocation(line: 477, column: 29, scope: !1048)
!1053 = !DILocation(line: 477, column: 27, scope: !1048)
!1054 = !DILocation(line: 477, column: 17, scope: !1048)
!1055 = !DILocation(line: 478, column: 43, scope: !1048)
!1056 = !DILocation(line: 478, column: 41, scope: !1048)
!1057 = !DILocation(line: 478, column: 13, scope: !1048)
!1058 = !DILocation(line: 478, column: 17, scope: !1048)
!1059 = !DILocation(line: 479, column: 5, scope: !1048)
!1060 = !DILocation(line: 482, column: 26, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 481, column: 8)
!1062 = !DILocation(line: 482, column: 17, scope: !1061)
!1063 = !DILocation(line: 483, column: 43, scope: !1061)
!1064 = !DILocation(line: 483, column: 41, scope: !1061)
!1065 = !DILocation(line: 483, column: 13, scope: !1061)
!1066 = !DILocation(line: 483, column: 17, scope: !1061)
!1067 = !DILocation(line: 484, column: 5, scope: !1061)
!1068 = !DILocation(line: 0, scope: !1017)
!1069 = !DILocation(line: 486, column: 1, scope: !1011)
!1070 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !904, file: !904, line: 69, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = distinct !DISubprogram(name: "gsl_sf_polar_to_rect", scope: !2, file: !2, line: 500, type: !525, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1073 = !DILocalVariable(name: "r", arg: 1, scope: !1071, file: !2, line: 500, type: !153)
!1074 = !DILocalVariable(name: "theta", arg: 2, scope: !1071, file: !2, line: 500, type: !153)
!1075 = !DILocalVariable(name: "x", arg: 3, scope: !1071, file: !2, line: 501, type: !141)
!1076 = !DILocalVariable(name: "y", arg: 4, scope: !1071, file: !2, line: 501, type: !141)
!1077 = !DILocalVariable(name: "t", scope: !1071, file: !2, line: 503, type: !108)
!1078 = !DILocalVariable(name: "status", scope: !1071, file: !2, line: 504, type: !50)
!1079 = !DILocalVariable(name: "c", scope: !1071, file: !2, line: 505, type: !108)
!1080 = !DILocalVariable(name: "s", scope: !1071, file: !2, line: 506, type: !108)
!1081 = !DILocation(line: 0, scope: !1071)
!1082 = !DILocation(line: 0, scope: !840, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 504, column: 16, scope: !1071)
!1084 = !DILocation(line: 0, scope: !851, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 605, column: 14, scope: !840, inlinedAt: !1083)
!1086 = !DILocation(line: 541, column: 20, scope: !851, inlinedAt: !1085)
!1087 = !DILocation(line: 541, column: 48, scope: !851, inlinedAt: !1085)
!1088 = !DILocation(line: 541, column: 59, scope: !851, inlinedAt: !1085)
!1089 = !DILocation(line: 541, column: 42, scope: !851, inlinedAt: !1085)
!1090 = !DILocation(line: 541, column: 40, scope: !851, inlinedAt: !1085)
!1091 = !DILocation(line: 542, column: 25, scope: !851, inlinedAt: !1085)
!1092 = !DILocation(line: 542, column: 22, scope: !851, inlinedAt: !1085)
!1093 = !DILocation(line: 542, column: 33, scope: !851, inlinedAt: !1085)
!1094 = !DILocation(line: 542, column: 30, scope: !851, inlinedAt: !1085)
!1095 = !DILocation(line: 542, column: 41, scope: !851, inlinedAt: !1085)
!1096 = !DILocation(line: 542, column: 38, scope: !851, inlinedAt: !1085)
!1097 = !DILocation(line: 544, column: 8, scope: !880, inlinedAt: !1085)
!1098 = !DILocation(line: 544, column: 6, scope: !851, inlinedAt: !1085)
!1099 = !DILocation(line: 544, column: 27, scope: !883, inlinedAt: !1085)
!1100 = !DILocation(line: 544, column: 33, scope: !883, inlinedAt: !1085)
!1101 = !DILocation(line: 544, column: 39, scope: !883, inlinedAt: !1085)
!1102 = !DILocation(line: 544, column: 47, scope: !883, inlinedAt: !1085)
!1103 = !DILocation(line: 545, column: 14, scope: !888, inlinedAt: !1085)
!1104 = !DILocation(line: 545, column: 12, scope: !880, inlinedAt: !1085)
!1105 = !DILocation(line: 545, column: 31, scope: !888, inlinedAt: !1085)
!1106 = !DILocation(line: 545, column: 37, scope: !888, inlinedAt: !1085)
!1107 = !DILocation(line: 545, column: 43, scope: !888, inlinedAt: !1085)
!1108 = !DILocation(line: 545, column: 23, scope: !888, inlinedAt: !1085)
!1109 = !DILocation(line: 549, column: 18, scope: !865, inlinedAt: !1085)
!1110 = !DILocation(line: 549, column: 6, scope: !851, inlinedAt: !1085)
!1111 = !DILocation(line: 552, column: 5, scope: !897, inlinedAt: !1085)
!1112 = !DILocation(line: 0, scope: !865, inlinedAt: !1085)
!1113 = !DILocation(line: 505, column: 14, scope: !1071)
!1114 = !DILocation(line: 506, column: 14, scope: !1071)
!1115 = !DILocation(line: 507, column: 16, scope: !1071)
!1116 = !DILocation(line: 507, column: 14, scope: !1071)
!1117 = !DILocation(line: 507, column: 10, scope: !1071)
!1118 = !DILocation(line: 508, column: 16, scope: !1071)
!1119 = !DILocation(line: 508, column: 14, scope: !1071)
!1120 = !DILocation(line: 508, column: 10, scope: !1071)
!1121 = !DILocation(line: 509, column: 24, scope: !1071)
!1122 = !DILocation(line: 509, column: 42, scope: !1071)
!1123 = !DILocation(line: 509, column: 17, scope: !1071)
!1124 = !DILocation(line: 509, column: 15, scope: !1071)
!1125 = !DILocation(line: 509, column: 6, scope: !1071)
!1126 = !DILocation(line: 510, column: 45, scope: !1071)
!1127 = !DILocation(line: 510, column: 37, scope: !1071)
!1128 = !DILocation(line: 510, column: 35, scope: !1071)
!1129 = !DILocation(line: 510, column: 10, scope: !1071)
!1130 = !DILocation(line: 511, column: 24, scope: !1071)
!1131 = !DILocation(line: 511, column: 42, scope: !1071)
!1132 = !DILocation(line: 511, column: 17, scope: !1071)
!1133 = !DILocation(line: 511, column: 15, scope: !1071)
!1134 = !DILocation(line: 511, column: 6, scope: !1071)
!1135 = !DILocation(line: 512, column: 37, scope: !1071)
!1136 = !DILocation(line: 512, column: 35, scope: !1071)
!1137 = !DILocation(line: 512, column: 10, scope: !1071)
!1138 = !DILocation(line: 513, column: 3, scope: !1071)
!1139 = distinct !DISubprogram(name: "gsl_sf_rect_to_polar", scope: !2, file: !2, line: 518, type: !525, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145}
!1141 = !DILocalVariable(name: "x", arg: 1, scope: !1139, file: !2, line: 518, type: !153)
!1142 = !DILocalVariable(name: "y", arg: 2, scope: !1139, file: !2, line: 518, type: !153)
!1143 = !DILocalVariable(name: "r", arg: 3, scope: !1139, file: !2, line: 519, type: !141)
!1144 = !DILocalVariable(name: "theta", arg: 4, scope: !1139, file: !2, line: 519, type: !141)
!1145 = !DILocalVariable(name: "stat_h", scope: !1139, file: !2, line: 521, type: !50)
!1146 = !DILocation(line: 0, scope: !1139)
!1147 = !DILocation(line: 0, scope: !455, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 521, column: 16, scope: !1139)
!1149 = !DILocation(line: 316, column: 8, scope: !464, inlinedAt: !1148)
!1150 = !DILocation(line: 316, column: 15, scope: !464, inlinedAt: !1148)
!1151 = !DILocation(line: 318, column: 17, scope: !474, inlinedAt: !1148)
!1152 = !DILocation(line: 522, column: 6, scope: !1139)
!1153 = !DILocation(line: 322, column: 22, scope: !463, inlinedAt: !1148)
!1154 = !DILocation(line: 0, scope: !463, inlinedAt: !1148)
!1155 = !DILocation(line: 323, column: 22, scope: !463, inlinedAt: !1148)
!1156 = !DILocation(line: 0, scope: !480, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 324, column: 24, scope: !463, inlinedAt: !1148)
!1158 = !DILocation(line: 77, column: 10, scope: !480, inlinedAt: !1157)
!1159 = !DILocation(line: 0, scope: !490, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 325, column: 24, scope: !463, inlinedAt: !1148)
!1161 = !DILocation(line: 71, column: 10, scope: !490, inlinedAt: !1160)
!1162 = !DILocation(line: 326, column: 27, scope: !463, inlinedAt: !1148)
!1163 = !DILocation(line: 327, column: 44, scope: !463, inlinedAt: !1148)
!1164 = !DILocation(line: 327, column: 39, scope: !463, inlinedAt: !1148)
!1165 = !DILocation(line: 327, column: 30, scope: !463, inlinedAt: !1148)
!1166 = !DILocation(line: 329, column: 25, scope: !501, inlinedAt: !1148)
!1167 = !DILocation(line: 329, column: 12, scope: !501, inlinedAt: !1148)
!1168 = !DILocation(line: 329, column: 8, scope: !463, inlinedAt: !1148)
!1169 = !DILocation(line: 330, column: 25, scope: !505, inlinedAt: !1148)
!1170 = !DILocation(line: 330, column: 19, scope: !505, inlinedAt: !1148)
!1171 = !DILocation(line: 331, column: 45, scope: !505, inlinedAt: !1148)
!1172 = !DILocation(line: 331, column: 43, scope: !505, inlinedAt: !1148)
!1173 = !DILocation(line: 331, column: 15, scope: !505, inlinedAt: !1148)
!1174 = !DILocation(line: 331, column: 19, scope: !505, inlinedAt: !1148)
!1175 = !DILocation(line: 332, column: 7, scope: !505, inlinedAt: !1148)
!1176 = !DILocation(line: 335, column: 7, scope: !513, inlinedAt: !1148)
!1177 = !DILocation(line: 335, column: 7, scope: !516, inlinedAt: !1148)
!1178 = !DILocation(line: 522, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 522, column: 6)
!1180 = !DILocation(line: 0, scope: !464, inlinedAt: !1148)
!1181 = !DILocation(line: 522, column: 13, scope: !1179)
!1182 = !DILocation(line: 523, column: 18, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 522, column: 20)
!1184 = !DILocation(line: 523, column: 16, scope: !1183)
!1185 = !DILocation(line: 524, column: 42, scope: !1183)
!1186 = !DILocation(line: 524, column: 40, scope: !1183)
!1187 = !DILocation(line: 524, column: 12, scope: !1183)
!1188 = !DILocation(line: 524, column: 16, scope: !1183)
!1189 = !DILocation(line: 525, column: 5, scope: !1183)
!1190 = !DILocation(line: 528, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 528, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 527, column: 8)
!1193 = !DILocation(line: 528, column: 5, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 528, column: 5)
!1195 = !DILocation(line: 0, scope: !1179)
!1196 = !DILocation(line: 530, column: 1, scope: !1139)
!1197 = !DISubprogram(name: "atan2", scope: !315, file: !315, line: 59, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DILocation(line: 0, scope: !851)
!1199 = !DILocation(line: 541, column: 20, scope: !851)
!1200 = !DILocation(line: 541, column: 48, scope: !851)
!1201 = !DILocation(line: 541, column: 59, scope: !851)
!1202 = !DILocation(line: 541, column: 42, scope: !851)
!1203 = !DILocation(line: 541, column: 40, scope: !851)
!1204 = !DILocation(line: 542, column: 25, scope: !851)
!1205 = !DILocation(line: 542, column: 22, scope: !851)
!1206 = !DILocation(line: 542, column: 33, scope: !851)
!1207 = !DILocation(line: 542, column: 30, scope: !851)
!1208 = !DILocation(line: 542, column: 41, scope: !851)
!1209 = !DILocation(line: 542, column: 38, scope: !851)
!1210 = !DILocation(line: 544, column: 8, scope: !880)
!1211 = !DILocation(line: 544, column: 6, scope: !851)
!1212 = !DILocation(line: 544, column: 27, scope: !883)
!1213 = !DILocation(line: 544, column: 33, scope: !883)
!1214 = !DILocation(line: 544, column: 39, scope: !883)
!1215 = !DILocation(line: 544, column: 47, scope: !883)
!1216 = !DILocation(line: 545, column: 14, scope: !888)
!1217 = !DILocation(line: 545, column: 12, scope: !880)
!1218 = !DILocation(line: 545, column: 31, scope: !888)
!1219 = !DILocation(line: 545, column: 37, scope: !888)
!1220 = !DILocation(line: 545, column: 43, scope: !888)
!1221 = !DILocation(line: 545, column: 23, scope: !888)
!1222 = !DILocation(line: 547, column: 15, scope: !851)
!1223 = !DILocation(line: 549, column: 18, scope: !865)
!1224 = !DILocation(line: 549, column: 6, scope: !851)
!1225 = !DILocation(line: 550, column: 17, scope: !898)
!1226 = !DILocation(line: 551, column: 13, scope: !898)
!1227 = !DILocation(line: 551, column: 17, scope: !898)
!1228 = !DILocation(line: 552, column: 5, scope: !897)
!1229 = !DILocation(line: 554, column: 23, scope: !864)
!1230 = !DILocation(line: 0, scope: !864)
!1231 = !DILocation(line: 554, column: 11, scope: !865)
!1232 = !DILocation(line: 555, column: 41, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !864, file: !2, line: 554, column: 54)
!1234 = !DILocation(line: 555, column: 13, scope: !1233)
!1235 = !DILocation(line: 555, column: 17, scope: !1233)
!1236 = !DILocation(line: 556, column: 5, scope: !1233)
!1237 = !DILocation(line: 0, scope: !863)
!1238 = !DILocation(line: 560, column: 51, scope: !863)
!1239 = !DILocation(line: 560, column: 44, scope: !863)
!1240 = !DILocation(line: 560, column: 41, scope: !863)
!1241 = !DILocation(line: 560, column: 13, scope: !863)
!1242 = !DILocation(line: 560, column: 17, scope: !863)
!1243 = !DILocation(line: 0, scope: !865)
!1244 = !DILocation(line: 563, column: 1, scope: !851)
!1245 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_err_e", scope: !2, file: !2, line: 566, type: !852, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1247 = !DILocalVariable(name: "theta", arg: 1, scope: !1245, file: !2, line: 566, type: !153)
!1248 = !DILocalVariable(name: "result", arg: 2, scope: !1245, file: !2, line: 566, type: !141)
!1249 = !DILocalVariable(name: "P1", scope: !1245, file: !2, line: 569, type: !153)
!1250 = !DILocalVariable(name: "P2", scope: !1245, file: !2, line: 570, type: !153)
!1251 = !DILocalVariable(name: "P3", scope: !1245, file: !2, line: 571, type: !153)
!1252 = !DILocalVariable(name: "TwoPi", scope: !1245, file: !2, line: 572, type: !153)
!1253 = !DILocalVariable(name: "y", scope: !1245, file: !2, line: 574, type: !153)
!1254 = !DILocalVariable(name: "r", scope: !1245, file: !2, line: 576, type: !108)
!1255 = !DILocalVariable(name: "delta", scope: !1256, file: !2, line: 595, type: !108)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 594, column: 8)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 590, column: 11)
!1258 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 585, column: 6)
!1259 = !DILocation(line: 0, scope: !1245)
!1260 = !DILocation(line: 574, column: 33, scope: !1245)
!1261 = !DILocation(line: 574, column: 22, scope: !1245)
!1262 = !DILocation(line: 574, column: 21, scope: !1245)
!1263 = !DILocation(line: 576, column: 25, scope: !1245)
!1264 = !DILocation(line: 576, column: 22, scope: !1245)
!1265 = !DILocation(line: 576, column: 33, scope: !1245)
!1266 = !DILocation(line: 576, column: 30, scope: !1245)
!1267 = !DILocation(line: 576, column: 41, scope: !1245)
!1268 = !DILocation(line: 576, column: 38, scope: !1245)
!1269 = !DILocation(line: 578, column: 8, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 578, column: 6)
!1271 = !DILocation(line: 578, column: 6, scope: !1245)
!1272 = !DILocation(line: 578, column: 26, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 578, column: 17)
!1274 = !DILocation(line: 578, column: 32, scope: !1273)
!1275 = !DILocation(line: 578, column: 38, scope: !1273)
!1276 = !DILocation(line: 578, column: 46, scope: !1273)
!1277 = !DILocation(line: 579, column: 14, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 579, column: 12)
!1279 = !DILocation(line: 579, column: 12, scope: !1270)
!1280 = !DILocation(line: 580, column: 13, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 579, column: 19)
!1282 = !DILocation(line: 580, column: 19, scope: !1281)
!1283 = !DILocation(line: 580, column: 25, scope: !1281)
!1284 = !DILocation(line: 581, column: 3, scope: !1281)
!1285 = !DILocation(line: 583, column: 15, scope: !1245)
!1286 = !DILocation(line: 585, column: 6, scope: !1258)
!1287 = !DILocation(line: 585, column: 18, scope: !1258)
!1288 = !DILocation(line: 585, column: 6, scope: !1245)
!1289 = !DILocation(line: 586, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 585, column: 44)
!1291 = !DILocation(line: 587, column: 13, scope: !1290)
!1292 = !DILocation(line: 587, column: 17, scope: !1290)
!1293 = !DILocation(line: 588, column: 5, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 588, column: 5)
!1295 = !DILocation(line: 590, column: 23, scope: !1257)
!1296 = !DILocation(line: 0, scope: !1257)
!1297 = !DILocation(line: 590, column: 11, scope: !1258)
!1298 = !DILocation(line: 591, column: 35, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 590, column: 54)
!1300 = !DILocation(line: 591, column: 13, scope: !1299)
!1301 = !DILocation(line: 591, column: 17, scope: !1299)
!1302 = !DILocation(line: 592, column: 5, scope: !1299)
!1303 = !DILocation(line: 0, scope: !1256)
!1304 = !DILocation(line: 596, column: 51, scope: !1256)
!1305 = !DILocation(line: 596, column: 44, scope: !1256)
!1306 = !DILocation(line: 596, column: 41, scope: !1256)
!1307 = !DILocation(line: 596, column: 13, scope: !1256)
!1308 = !DILocation(line: 596, column: 17, scope: !1256)
!1309 = !DILocation(line: 0, scope: !1258)
!1310 = !DILocation(line: 599, column: 1, scope: !1245)
!1311 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !2, file: !2, line: 611, type: !841, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DILocalVariable(name: "theta", arg: 1, scope: !1311, file: !2, line: 611, type: !107)
!1314 = !DILocalVariable(name: "r", scope: !1311, file: !2, line: 613, type: !142)
!1315 = !DILocalVariable(name: "stat", scope: !1311, file: !2, line: 614, type: !50)
!1316 = !DILocation(line: 0, scope: !1311)
!1317 = !DILocation(line: 614, column: 46, scope: !1311)
!1318 = !DILocation(line: 0, scope: !1245, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 614, column: 14, scope: !1311)
!1320 = !DILocation(line: 574, column: 33, scope: !1245, inlinedAt: !1319)
!1321 = !DILocation(line: 574, column: 22, scope: !1245, inlinedAt: !1319)
!1322 = !DILocation(line: 574, column: 21, scope: !1245, inlinedAt: !1319)
!1323 = !DILocation(line: 576, column: 25, scope: !1245, inlinedAt: !1319)
!1324 = !DILocation(line: 576, column: 22, scope: !1245, inlinedAt: !1319)
!1325 = !DILocation(line: 576, column: 33, scope: !1245, inlinedAt: !1319)
!1326 = !DILocation(line: 576, column: 30, scope: !1245, inlinedAt: !1319)
!1327 = !DILocation(line: 576, column: 41, scope: !1245, inlinedAt: !1319)
!1328 = !DILocation(line: 576, column: 38, scope: !1245, inlinedAt: !1319)
!1329 = !DILocation(line: 578, column: 8, scope: !1270, inlinedAt: !1319)
!1330 = !DILocation(line: 578, column: 6, scope: !1245, inlinedAt: !1319)
!1331 = !DILocation(line: 578, column: 26, scope: !1273, inlinedAt: !1319)
!1332 = !DILocation(line: 578, column: 32, scope: !1273, inlinedAt: !1319)
!1333 = !DILocation(line: 578, column: 38, scope: !1273, inlinedAt: !1319)
!1334 = !DILocation(line: 578, column: 46, scope: !1273, inlinedAt: !1319)
!1335 = !DILocation(line: 579, column: 14, scope: !1278, inlinedAt: !1319)
!1336 = !DILocation(line: 579, column: 12, scope: !1270, inlinedAt: !1319)
!1337 = !DILocation(line: 580, column: 13, scope: !1281, inlinedAt: !1319)
!1338 = !DILocation(line: 580, column: 19, scope: !1281, inlinedAt: !1319)
!1339 = !DILocation(line: 580, column: 25, scope: !1281, inlinedAt: !1319)
!1340 = !DILocation(line: 581, column: 3, scope: !1281, inlinedAt: !1319)
!1341 = !DILocation(line: 585, column: 6, scope: !1258, inlinedAt: !1319)
!1342 = !DILocation(line: 585, column: 18, scope: !1258, inlinedAt: !1319)
!1343 = !DILocation(line: 585, column: 6, scope: !1245, inlinedAt: !1319)
!1344 = !DILocation(line: 588, column: 5, scope: !1294, inlinedAt: !1319)
!1345 = !DILocation(line: 0, scope: !1258, inlinedAt: !1319)
!1346 = !DILocation(line: 615, column: 10, scope: !1311)
!1347 = !DILocation(line: 616, column: 3, scope: !1311)
!1348 = distinct !DISubprogram(name: "gsl_sf_sin_err_e", scope: !2, file: !2, line: 620, type: !456, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DILocalVariable(name: "x", arg: 1, scope: !1348, file: !2, line: 620, type: !153)
!1351 = !DILocalVariable(name: "dx", arg: 2, scope: !1348, file: !2, line: 620, type: !153)
!1352 = !DILocalVariable(name: "result", arg: 3, scope: !1348, file: !2, line: 620, type: !141)
!1353 = !DILocalVariable(name: "stat_s", scope: !1348, file: !2, line: 622, type: !50)
!1354 = !DILocation(line: 0, scope: !1348)
!1355 = !DILocation(line: 622, column: 16, scope: !1348)
!1356 = !DILocation(line: 623, column: 23, scope: !1348)
!1357 = !DILocation(line: 623, column: 30, scope: !1348)
!1358 = !DILocation(line: 623, column: 18, scope: !1348)
!1359 = !DILocation(line: 623, column: 11, scope: !1348)
!1360 = !DILocation(line: 623, column: 15, scope: !1348)
!1361 = !DILocation(line: 624, column: 49, scope: !1348)
!1362 = !DILocation(line: 624, column: 36, scope: !1348)
!1363 = !DILocation(line: 624, column: 34, scope: !1348)
!1364 = !DILocation(line: 624, column: 15, scope: !1348)
!1365 = !DILocation(line: 625, column: 3, scope: !1348)
!1366 = distinct !DISubprogram(name: "gsl_sf_cos_err_e", scope: !2, file: !2, line: 629, type: !456, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1367)
!1367 = !{!1368, !1369, !1370, !1371}
!1368 = !DILocalVariable(name: "x", arg: 1, scope: !1366, file: !2, line: 629, type: !153)
!1369 = !DILocalVariable(name: "dx", arg: 2, scope: !1366, file: !2, line: 629, type: !153)
!1370 = !DILocalVariable(name: "result", arg: 3, scope: !1366, file: !2, line: 629, type: !141)
!1371 = !DILocalVariable(name: "stat_c", scope: !1366, file: !2, line: 631, type: !50)
!1372 = !DILocation(line: 0, scope: !1366)
!1373 = !DILocation(line: 631, column: 16, scope: !1366)
!1374 = !DILocation(line: 632, column: 23, scope: !1366)
!1375 = !DILocation(line: 632, column: 30, scope: !1366)
!1376 = !DILocation(line: 632, column: 18, scope: !1366)
!1377 = !DILocation(line: 632, column: 11, scope: !1366)
!1378 = !DILocation(line: 632, column: 15, scope: !1366)
!1379 = !DILocation(line: 633, column: 49, scope: !1366)
!1380 = !DILocation(line: 633, column: 36, scope: !1366)
!1381 = !DILocation(line: 633, column: 34, scope: !1366)
!1382 = !DILocation(line: 633, column: 15, scope: !1366)
!1383 = !DILocation(line: 634, column: 3, scope: !1366)
!1384 = distinct !DISubprogram(name: "gsl_sf_sinc_e", scope: !2, file: !2, line: 682, type: !139, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388, !1390, !1394, !1395}
!1386 = !DILocalVariable(name: "x", arg: 1, scope: !1384, file: !2, line: 682, type: !108)
!1387 = !DILocalVariable(name: "result", arg: 2, scope: !1384, file: !2, line: 682, type: !141)
!1388 = !DILocalVariable(name: "ax", scope: !1389, file: !2, line: 687, type: !153)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 686, column: 3)
!1390 = !DILocalVariable(name: "r", scope: !1391, file: !2, line: 708, type: !153)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 705, column: 10)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 696, column: 13)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 689, column: 8)
!1394 = !DILocalVariable(name: "s", scope: !1391, file: !2, line: 709, type: !142)
!1395 = !DILocalVariable(name: "stat_s", scope: !1391, file: !2, line: 710, type: !50)
!1396 = distinct !DIAssignID()
!1397 = !DILocation(line: 0, scope: !1391)
!1398 = !DILocation(line: 0, scope: !1384)
!1399 = !DILocation(line: 687, column: 23, scope: !1389)
!1400 = !DILocation(line: 0, scope: !1389)
!1401 = !DILocation(line: 689, column: 11, scope: !1393)
!1402 = !DILocation(line: 689, column: 8, scope: !1389)
!1403 = !DILocation(line: 694, column: 39, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 689, column: 18)
!1405 = !DILocation(line: 694, column: 42, scope: !1404)
!1406 = !{}
!1407 = !DILocation(line: 0, scope: !221, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 694, column: 14, scope: !1404)
!1409 = !DILocation(line: 11, column: 19, scope: !221, inlinedAt: !1408)
!1410 = !DILocation(line: 11, column: 22, scope: !221, inlinedAt: !1408)
!1411 = !DILocation(line: 11, column: 30, scope: !221, inlinedAt: !1408)
!1412 = !DILocation(line: 11, column: 39, scope: !221, inlinedAt: !1408)
!1413 = !DILocation(line: 12, column: 19, scope: !221, inlinedAt: !1408)
!1414 = !DILocation(line: 16, column: 3, scope: !240, inlinedAt: !1408)
!1415 = !DILocation(line: 0, scope: !238, inlinedAt: !1408)
!1416 = !DILocation(line: 18, column: 11, scope: !238, inlinedAt: !1408)
!1417 = !DILocation(line: 18, column: 14, scope: !238, inlinedAt: !1408)
!1418 = !DILocation(line: 18, column: 21, scope: !238, inlinedAt: !1408)
!1419 = !DILocation(line: 18, column: 19, scope: !238, inlinedAt: !1408)
!1420 = !DILocation(line: 19, column: 10, scope: !238, inlinedAt: !1408)
!1421 = !DILocation(line: 19, column: 26, scope: !238, inlinedAt: !1408)
!1422 = !DILocation(line: 19, column: 24, scope: !238, inlinedAt: !1408)
!1423 = !DILocation(line: 19, column: 37, scope: !238, inlinedAt: !1408)
!1424 = !DILocation(line: 19, column: 35, scope: !238, inlinedAt: !1408)
!1425 = !DILocation(line: 19, column: 7, scope: !238, inlinedAt: !1408)
!1426 = !DILocation(line: 16, column: 29, scope: !239, inlinedAt: !1408)
!1427 = !DILocation(line: 16, column: 23, scope: !239, inlinedAt: !1408)
!1428 = distinct !{!1428, !1414, !1429, !1430}
!1429 = !DILocation(line: 21, column: 3, scope: !240, inlinedAt: !1408)
!1430 = !{!"llvm.loop.mustprogress"}
!1431 = !DILocation(line: 0, scope: !242, inlinedAt: !1408)
!1432 = !DILocation(line: 25, column: 10, scope: !242, inlinedAt: !1408)
!1433 = !DILocation(line: 25, column: 13, scope: !242, inlinedAt: !1408)
!1434 = !DILocation(line: 25, column: 18, scope: !242, inlinedAt: !1408)
!1435 = !DILocation(line: 26, column: 10, scope: !242, inlinedAt: !1408)
!1436 = !DILocation(line: 26, column: 25, scope: !242, inlinedAt: !1408)
!1437 = !DILocation(line: 26, column: 23, scope: !242, inlinedAt: !1408)
!1438 = !DILocation(line: 26, column: 34, scope: !242, inlinedAt: !1408)
!1439 = !DILocation(line: 26, column: 7, scope: !242, inlinedAt: !1408)
!1440 = !DILocation(line: 29, column: 15, scope: !221, inlinedAt: !1408)
!1441 = !DILocation(line: 30, column: 33, scope: !221, inlinedAt: !1408)
!1442 = !DILocation(line: 30, column: 37, scope: !221, inlinedAt: !1408)
!1443 = !DILocation(line: 30, column: 11, scope: !221, inlinedAt: !1408)
!1444 = !DILocation(line: 30, column: 15, scope: !221, inlinedAt: !1408)
!1445 = !DILocation(line: 694, column: 7, scope: !1404)
!1446 = !DILocation(line: 696, column: 16, scope: !1392)
!1447 = !DILocation(line: 0, scope: !1392)
!1448 = !DILocation(line: 696, column: 13, scope: !1393)
!1449 = !DILocation(line: 701, column: 21, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 696, column: 25)
!1451 = !DILocation(line: 701, column: 35, scope: !1450)
!1452 = !DILocation(line: 701, column: 19, scope: !1450)
!1453 = !DILocation(line: 702, column: 45, scope: !1450)
!1454 = !DILocation(line: 702, column: 43, scope: !1450)
!1455 = !DILocation(line: 702, column: 15, scope: !1450)
!1456 = !DILocation(line: 702, column: 19, scope: !1450)
!1457 = !DILocation(line: 703, column: 7, scope: !1450)
!1458 = !DILocation(line: 709, column: 7, scope: !1391)
!1459 = !DILocation(line: 710, column: 20, scope: !1391)
!1460 = !DILocation(line: 711, column: 23, scope: !1391)
!1461 = !DILocation(line: 711, column: 26, scope: !1391)
!1462 = !DILocation(line: 711, column: 19, scope: !1391)
!1463 = !DILocation(line: 712, column: 23, scope: !1391)
!1464 = !DILocation(line: 712, column: 26, scope: !1391)
!1465 = !DILocation(line: 712, column: 55, scope: !1391)
!1466 = !DILocation(line: 712, column: 53, scope: !1391)
!1467 = !DILocation(line: 712, column: 29, scope: !1391)
!1468 = !DILocation(line: 712, column: 15, scope: !1391)
!1469 = !DILocation(line: 712, column: 19, scope: !1391)
!1470 = !DILocation(line: 714, column: 5, scope: !1392)
!1471 = !DILocation(line: 716, column: 1, scope: !1384)
!1472 = distinct !DISubprogram(name: "gsl_sf_sin", scope: !2, file: !2, line: 724, type: !1473, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!108, !153}
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "x", arg: 1, scope: !1472, file: !2, line: 724, type: !153)
!1477 = !DILocalVariable(name: "result", scope: !1472, file: !2, line: 726, type: !142)
!1478 = !DILocalVariable(name: "status", scope: !1472, file: !2, line: 726, type: !50)
!1479 = distinct !DIAssignID()
!1480 = !DILocation(line: 0, scope: !1472)
!1481 = !DILocation(line: 726, column: 3, scope: !1472)
!1482 = !DILocation(line: 727, column: 1, scope: !1472)
!1483 = distinct !DISubprogram(name: "gsl_sf_cos", scope: !2, file: !2, line: 729, type: !1473, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487}
!1485 = !DILocalVariable(name: "x", arg: 1, scope: !1483, file: !2, line: 729, type: !153)
!1486 = !DILocalVariable(name: "result", scope: !1483, file: !2, line: 731, type: !142)
!1487 = !DILocalVariable(name: "status", scope: !1483, file: !2, line: 731, type: !50)
!1488 = distinct !DIAssignID()
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 731, column: 3, scope: !1483)
!1491 = !DILocation(line: 732, column: 1, scope: !1483)
!1492 = distinct !DISubprogram(name: "gsl_sf_hypot", scope: !2, file: !2, line: 734, type: !1493, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!108, !153, !153}
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DILocalVariable(name: "x", arg: 1, scope: !1492, file: !2, line: 734, type: !153)
!1497 = !DILocalVariable(name: "y", arg: 2, scope: !1492, file: !2, line: 734, type: !153)
!1498 = !DILocalVariable(name: "result", scope: !1492, file: !2, line: 736, type: !142)
!1499 = !DILocalVariable(name: "status", scope: !1492, file: !2, line: 736, type: !50)
!1500 = !DILocation(line: 0, scope: !1492)
!1501 = !DILocation(line: 0, scope: !455, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 736, column: 3, scope: !1492)
!1503 = !DILocation(line: 316, column: 8, scope: !464, inlinedAt: !1502)
!1504 = !DILocation(line: 316, column: 15, scope: !464, inlinedAt: !1502)
!1505 = !DILocation(line: 322, column: 22, scope: !463, inlinedAt: !1502)
!1506 = !DILocation(line: 0, scope: !463, inlinedAt: !1502)
!1507 = !DILocation(line: 323, column: 22, scope: !463, inlinedAt: !1502)
!1508 = !DILocation(line: 0, scope: !480, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 324, column: 24, scope: !463, inlinedAt: !1502)
!1510 = !DILocation(line: 77, column: 10, scope: !480, inlinedAt: !1509)
!1511 = !DILocation(line: 0, scope: !490, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 325, column: 24, scope: !463, inlinedAt: !1502)
!1513 = !DILocation(line: 71, column: 10, scope: !490, inlinedAt: !1512)
!1514 = !DILocation(line: 326, column: 27, scope: !463, inlinedAt: !1502)
!1515 = !DILocation(line: 327, column: 44, scope: !463, inlinedAt: !1502)
!1516 = !DILocation(line: 327, column: 39, scope: !463, inlinedAt: !1502)
!1517 = !DILocation(line: 327, column: 30, scope: !463, inlinedAt: !1502)
!1518 = !DILocation(line: 329, column: 25, scope: !501, inlinedAt: !1502)
!1519 = !DILocation(line: 329, column: 12, scope: !501, inlinedAt: !1502)
!1520 = !DILocation(line: 329, column: 8, scope: !463, inlinedAt: !1502)
!1521 = !DILocation(line: 330, column: 25, scope: !505, inlinedAt: !1502)
!1522 = !DILocation(line: 332, column: 7, scope: !505, inlinedAt: !1502)
!1523 = !DILocation(line: 335, column: 7, scope: !516, inlinedAt: !1502)
!1524 = !DILocation(line: 736, column: 3, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 736, column: 3)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 736, column: 3)
!1527 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 736, column: 3)
!1528 = !DILocation(line: 737, column: 1, scope: !1492)
!1529 = distinct !DISubprogram(name: "gsl_sf_lnsinh", scope: !2, file: !2, line: 739, type: !1473, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "x", arg: 1, scope: !1529, file: !2, line: 739, type: !153)
!1532 = !DILocalVariable(name: "result", scope: !1529, file: !2, line: 741, type: !142)
!1533 = !DILocalVariable(name: "status", scope: !1529, file: !2, line: 741, type: !50)
!1534 = distinct !DIAssignID()
!1535 = !DILocation(line: 0, scope: !1529)
!1536 = !DILocation(line: 741, column: 3, scope: !1529)
!1537 = !{i32 0, i32 2}
!1538 = !DILocation(line: 741, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 741, column: 3)
!1540 = !DILocation(line: 741, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 741, column: 3)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 741, column: 3)
!1543 = !DILocation(line: 742, column: 1, scope: !1529)
!1544 = distinct !DISubprogram(name: "gsl_sf_lncosh", scope: !2, file: !2, line: 744, type: !1473, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DILocalVariable(name: "x", arg: 1, scope: !1544, file: !2, line: 744, type: !153)
!1547 = !DILocalVariable(name: "result", scope: !1544, file: !2, line: 746, type: !142)
!1548 = !DILocalVariable(name: "status", scope: !1544, file: !2, line: 746, type: !50)
!1549 = distinct !DIAssignID()
!1550 = !DILocation(line: 0, scope: !1544)
!1551 = !DILocation(line: 746, column: 3, scope: !1544)
!1552 = !DILocation(line: 746, column: 3, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 746, column: 3)
!1554 = !DILocation(line: 746, column: 3, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 746, column: 3)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 746, column: 3)
!1557 = !DILocation(line: 747, column: 1, scope: !1544)
!1558 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm", scope: !2, file: !2, line: 749, type: !1473, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1559)
!1559 = !{!1560, !1561, !1562}
!1560 = !DILocalVariable(name: "theta", arg: 1, scope: !1558, file: !2, line: 749, type: !153)
!1561 = !DILocalVariable(name: "result", scope: !1558, file: !2, line: 751, type: !108)
!1562 = !DILocalVariable(name: "status", scope: !1558, file: !2, line: 752, type: !50)
!1563 = !DILocation(line: 0, scope: !1558)
!1564 = !DILocation(line: 0, scope: !840, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 752, column: 3, scope: !1558)
!1566 = !DILocation(line: 0, scope: !851, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 605, column: 14, scope: !840, inlinedAt: !1565)
!1568 = !DILocation(line: 541, column: 20, scope: !851, inlinedAt: !1567)
!1569 = !DILocation(line: 541, column: 48, scope: !851, inlinedAt: !1567)
!1570 = !DILocation(line: 541, column: 59, scope: !851, inlinedAt: !1567)
!1571 = !DILocation(line: 541, column: 42, scope: !851, inlinedAt: !1567)
!1572 = !DILocation(line: 541, column: 40, scope: !851, inlinedAt: !1567)
!1573 = !DILocation(line: 542, column: 25, scope: !851, inlinedAt: !1567)
!1574 = !DILocation(line: 542, column: 22, scope: !851, inlinedAt: !1567)
!1575 = !DILocation(line: 542, column: 33, scope: !851, inlinedAt: !1567)
!1576 = !DILocation(line: 542, column: 30, scope: !851, inlinedAt: !1567)
!1577 = !DILocation(line: 542, column: 41, scope: !851, inlinedAt: !1567)
!1578 = !DILocation(line: 542, column: 38, scope: !851, inlinedAt: !1567)
!1579 = !DILocation(line: 544, column: 8, scope: !880, inlinedAt: !1567)
!1580 = !DILocation(line: 544, column: 6, scope: !851, inlinedAt: !1567)
!1581 = !DILocation(line: 544, column: 27, scope: !883, inlinedAt: !1567)
!1582 = !DILocation(line: 544, column: 33, scope: !883, inlinedAt: !1567)
!1583 = !DILocation(line: 544, column: 39, scope: !883, inlinedAt: !1567)
!1584 = !DILocation(line: 544, column: 47, scope: !883, inlinedAt: !1567)
!1585 = !DILocation(line: 545, column: 14, scope: !888, inlinedAt: !1567)
!1586 = !DILocation(line: 545, column: 12, scope: !880, inlinedAt: !1567)
!1587 = !DILocation(line: 545, column: 31, scope: !888, inlinedAt: !1567)
!1588 = !DILocation(line: 545, column: 37, scope: !888, inlinedAt: !1567)
!1589 = !DILocation(line: 545, column: 43, scope: !888, inlinedAt: !1567)
!1590 = !DILocation(line: 545, column: 23, scope: !888, inlinedAt: !1567)
!1591 = !DILocation(line: 549, column: 18, scope: !865, inlinedAt: !1567)
!1592 = !DILocation(line: 549, column: 6, scope: !851, inlinedAt: !1567)
!1593 = !DILocation(line: 552, column: 5, scope: !897, inlinedAt: !1567)
!1594 = !DILocation(line: 752, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 752, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 752, column: 3)
!1597 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 752, column: 3)
!1598 = !DILocation(line: 753, column: 1, scope: !1558)
!1599 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos", scope: !2, file: !2, line: 755, type: !1473, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DILocalVariable(name: "theta", arg: 1, scope: !1599, file: !2, line: 755, type: !153)
!1602 = !DILocalVariable(name: "result", scope: !1599, file: !2, line: 757, type: !108)
!1603 = !DILocalVariable(name: "status", scope: !1599, file: !2, line: 758, type: !50)
!1604 = !DILocation(line: 0, scope: !1599)
!1605 = !DILocation(line: 0, scope: !1311, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 758, column: 3, scope: !1599)
!1607 = !DILocation(line: 0, scope: !1245, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 614, column: 14, scope: !1311, inlinedAt: !1606)
!1609 = !DILocation(line: 574, column: 33, scope: !1245, inlinedAt: !1608)
!1610 = !DILocation(line: 574, column: 22, scope: !1245, inlinedAt: !1608)
!1611 = !DILocation(line: 574, column: 21, scope: !1245, inlinedAt: !1608)
!1612 = !DILocation(line: 576, column: 25, scope: !1245, inlinedAt: !1608)
!1613 = !DILocation(line: 576, column: 22, scope: !1245, inlinedAt: !1608)
!1614 = !DILocation(line: 576, column: 33, scope: !1245, inlinedAt: !1608)
!1615 = !DILocation(line: 576, column: 30, scope: !1245, inlinedAt: !1608)
!1616 = !DILocation(line: 576, column: 41, scope: !1245, inlinedAt: !1608)
!1617 = !DILocation(line: 576, column: 38, scope: !1245, inlinedAt: !1608)
!1618 = !DILocation(line: 578, column: 8, scope: !1270, inlinedAt: !1608)
!1619 = !DILocation(line: 578, column: 6, scope: !1245, inlinedAt: !1608)
!1620 = !DILocation(line: 578, column: 26, scope: !1273, inlinedAt: !1608)
!1621 = !DILocation(line: 578, column: 32, scope: !1273, inlinedAt: !1608)
!1622 = !DILocation(line: 578, column: 38, scope: !1273, inlinedAt: !1608)
!1623 = !DILocation(line: 578, column: 46, scope: !1273, inlinedAt: !1608)
!1624 = !DILocation(line: 579, column: 14, scope: !1278, inlinedAt: !1608)
!1625 = !DILocation(line: 579, column: 12, scope: !1270, inlinedAt: !1608)
!1626 = !DILocation(line: 580, column: 13, scope: !1281, inlinedAt: !1608)
!1627 = !DILocation(line: 580, column: 19, scope: !1281, inlinedAt: !1608)
!1628 = !DILocation(line: 580, column: 25, scope: !1281, inlinedAt: !1608)
!1629 = !DILocation(line: 581, column: 3, scope: !1281, inlinedAt: !1608)
!1630 = !DILocation(line: 585, column: 6, scope: !1258, inlinedAt: !1608)
!1631 = !DILocation(line: 585, column: 18, scope: !1258, inlinedAt: !1608)
!1632 = !DILocation(line: 585, column: 6, scope: !1245, inlinedAt: !1608)
!1633 = !DILocation(line: 588, column: 5, scope: !1294, inlinedAt: !1608)
!1634 = !DILocation(line: 758, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 758, column: 3)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 758, column: 3)
!1637 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 758, column: 3)
!1638 = !DILocation(line: 759, column: 1, scope: !1599)
!1639 = distinct !DISubprogram(name: "gsl_sf_sinc", scope: !2, file: !2, line: 768, type: !1473, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DILocalVariable(name: "x", arg: 1, scope: !1639, file: !2, line: 768, type: !153)
!1642 = !DILocalVariable(name: "result", scope: !1639, file: !2, line: 770, type: !142)
!1643 = !DILocalVariable(name: "status", scope: !1639, file: !2, line: 770, type: !50)
!1644 = distinct !DIAssignID()
!1645 = !DILocation(line: 0, scope: !1639)
!1646 = !DILocation(line: 770, column: 3, scope: !1639)
!1647 = !DILocation(line: 771, column: 1, scope: !1639)
