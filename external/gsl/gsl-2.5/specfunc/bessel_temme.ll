; ModuleID = 'bessel_temme.c'
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
  %6 = tail call double @log(double noundef %5) #4, !dbg !124
  tail call void @llvm.dbg.value(metadata double %6, metadata !95, metadata !DIExpression()), !dbg !122
  %7 = fmul double %6, %0, !dbg !125
  %8 = tail call double @exp(double noundef %7) #4, !dbg !126
  tail call void @llvm.dbg.value(metadata double %8, metadata !96, metadata !DIExpression()), !dbg !122
  %9 = fmul double %0, 0x400921FB54442D18, !dbg !127
  tail call void @llvm.dbg.value(metadata double %9, metadata !97, metadata !DIExpression()), !dbg !122
  %10 = fmul double %9, 5.000000e-01, !dbg !128
  tail call void @llvm.dbg.value(metadata double %10, metadata !98, metadata !DIExpression()), !dbg !122
  %11 = fneg double %0, !dbg !129
  %12 = fmul double %6, %11, !dbg !130
  tail call void @llvm.dbg.value(metadata double %12, metadata !99, metadata !DIExpression()), !dbg !122
  %13 = tail call double @llvm.fabs.f64(double %9), !dbg !131
  %14 = fcmp olt double %13, 0x3CB0000000000000, !dbg !132
  br i1 %14, label %19, label %15, !dbg !131

15:                                               ; preds = %4
  %16 = tail call double @sin(double noundef %9) #4, !dbg !133
  %17 = fdiv double %9, %16, !dbg !134
  %18 = fmul double %17, 0x3FE45F306DC9C883, !dbg !135
  br label %19, !dbg !131

19:                                               ; preds = %4, %15
  %20 = phi double [ %18, %15 ], [ 0x3FE45F306DC9C883, %4 ], !dbg !131
  tail call void @llvm.dbg.value(metadata double %20, metadata !100, metadata !DIExpression()), !dbg !122
  %21 = tail call double @llvm.fabs.f64(double %12), !dbg !136
  %22 = fcmp olt double %21, 0x3CB0000000000000, !dbg !137
  br i1 %22, label %26, label %23, !dbg !136

23:                                               ; preds = %19
  %24 = tail call double @sinh(double noundef %12) #4, !dbg !138
  %25 = fdiv double %24, %12, !dbg !139
  br label %26, !dbg !136

26:                                               ; preds = %19, %23
  %27 = phi double [ %25, %23 ], [ 1.000000e+00, %19 ], !dbg !136
  tail call void @llvm.dbg.value(metadata double %27, metadata !101, metadata !DIExpression()), !dbg !122
  %28 = tail call double @llvm.fabs.f64(double %10), !dbg !140
  %29 = fcmp olt double %28, 0x3CB0000000000000, !dbg !141
  br i1 %29, label %33, label %30, !dbg !140

30:                                               ; preds = %26
  %31 = tail call double @sin(double noundef %10) #4, !dbg !142
  %32 = fdiv double %31, %10, !dbg !143
  br label %33, !dbg !140

33:                                               ; preds = %26, %30
  %34 = phi double [ %32, %30 ], [ 1.000000e+00, %26 ], !dbg !140
  tail call void @llvm.dbg.value(metadata double %34, metadata !102, metadata !DIExpression()), !dbg !122
  %35 = fmul double %9, 0x400921FB54442D18, !dbg !144
  %36 = fmul double %35, 5.000000e-01, !dbg !145
  %37 = fmul double %36, %34, !dbg !146
  %38 = fmul double %34, %37, !dbg !147
  tail call void @llvm.dbg.value(metadata double %38, metadata !103, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata double %0, metadata !148, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata ptr undef, metadata !153, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata ptr undef, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata ptr undef, metadata !155, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !161
  %39 = tail call double @llvm.fabs.f64(double %0), !dbg !163
  call void @llvm.dbg.value(metadata double %39, metadata !157, metadata !DIExpression()), !dbg !161
  %40 = fmul double %39, 4.000000e+00, !dbg !164
  %41 = fadd double %40, -1.000000e+00, !dbg !165
  call void @llvm.dbg.value(metadata double %41, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata !166, metadata !167, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %41, metadata !175, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr undef, metadata !176, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !189
  %42 = fmul double %41, 2.000000e+00, !dbg !191
  %43 = fadd double %42, 1.000000e+00, !dbg !192
  %44 = fadd double %43, -1.000000e+00, !dbg !193
  %45 = fmul double %44, 5.000000e-01, !dbg !194
  call void @llvm.dbg.value(metadata double %45, metadata !180, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 13, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !161
  call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !161
  call void @llvm.dbg.value(metadata !166, metadata !167, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %41, metadata !175, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata ptr undef, metadata !176, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !180, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i32 14, metadata !177, metadata !DIExpression()), !dbg !197
  %46 = fadd double %42, 1.000000e+00, !dbg !199
  %47 = fadd double %46, -1.000000e+00, !dbg !200
  %48 = fmul double %47, 5.000000e-01, !dbg !201
  call void @llvm.dbg.value(metadata double %48, metadata !180, metadata !DIExpression()), !dbg !197
  %49 = fmul double %48, 2.000000e+00, !dbg !202
  call void @llvm.dbg.value(metadata double %49, metadata !181, metadata !DIExpression()), !dbg !197
  %50 = fmul double %45, 2.000000e+00, !dbg !203
  call void @llvm.dbg.value(metadata double %50, metadata !181, metadata !DIExpression()), !dbg !189
  %51 = fmul double %50, 0.000000e+00, !dbg !204
  %52 = fadd double %51, 0xBBE598C5460217E6, !dbg !205
  call void @llvm.dbg.value(metadata double %52, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %52, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %52, metadata !179, metadata !DIExpression()), !dbg !189
  %53 = fmul double %50, %52, !dbg !204
  %54 = fadd double %53, 0xBC83712DD7FD5DAE, !dbg !205
  call void @llvm.dbg.value(metadata double %54, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %54, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %54, metadata !179, metadata !DIExpression()), !dbg !189
  %55 = fmul double %50, %54, !dbg !204
  %56 = fsub double %55, %52, !dbg !206
  %57 = fadd double %56, 0xBCCCC7FD6547EEBE, !dbg !205
  call void @llvm.dbg.value(metadata double %57, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %57, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %57, metadata !179, metadata !DIExpression()), !dbg !189
  %58 = fmul double %50, %57, !dbg !204
  %59 = fsub double %58, %54, !dbg !206
  %60 = fadd double %59, 0x3D1FEC573C54F7E4, !dbg !205
  call void @llvm.dbg.value(metadata double %60, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %60, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %60, metadata !179, metadata !DIExpression()), !dbg !189
  %61 = fmul double %50, %60, !dbg !204
  %62 = fsub double %61, %57, !dbg !206
  %63 = fadd double %62, 0x3D6808C44F2106C2, !dbg !205
  call void @llvm.dbg.value(metadata double %63, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %63, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %63, metadata !179, metadata !DIExpression()), !dbg !189
  %64 = fmul double %50, %63, !dbg !204
  %65 = fsub double %64, %60, !dbg !206
  %66 = fadd double %65, 0x3DC1D4922A661984, !dbg !205
  call void @llvm.dbg.value(metadata double %66, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %66, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %66, metadata !179, metadata !DIExpression()), !dbg !189
  %67 = fmul double %50, %66, !dbg !204
  %68 = fsub double %67, %63, !dbg !206
  %69 = fadd double %68, 0x3DFF0DBFD1B8B9C7, !dbg !205
  call void @llvm.dbg.value(metadata double %69, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %69, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %69, metadata !179, metadata !DIExpression()), !dbg !189
  %70 = fmul double %50, %69, !dbg !204
  %71 = fsub double %70, %66, !dbg !206
  %72 = fadd double %71, 0xBE6BD210D42EA355, !dbg !205
  call void @llvm.dbg.value(metadata double %72, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %72, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %72, metadata !179, metadata !DIExpression()), !dbg !189
  %73 = fmul double %50, %72, !dbg !204
  %74 = fsub double %73, %69, !dbg !206
  %75 = fadd double %74, 0xBEA5ACE21C9E49D4, !dbg !205
  call void @llvm.dbg.value(metadata double %75, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %75, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %75, metadata !179, metadata !DIExpression()), !dbg !189
  %76 = fmul double %50, %75, !dbg !204
  %77 = fsub double %76, %72, !dbg !206
  %78 = fadd double %77, 0x3EF1D81738E657AD, !dbg !205
  call void @llvm.dbg.value(metadata double %78, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %78, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %78, metadata !179, metadata !DIExpression()), !dbg !189
  %79 = fmul double %50, %78, !dbg !204
  %80 = fsub double %79, %75, !dbg !206
  %81 = fadd double %80, 0x3F24083A360DB22F, !dbg !205
  call void @llvm.dbg.value(metadata double %81, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %81, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %81, metadata !179, metadata !DIExpression()), !dbg !189
  %82 = fmul double %50, %81, !dbg !204
  %83 = fsub double %82, %78, !dbg !206
  %84 = fadd double %83, 0x3F5E83B08852701D, !dbg !205
  call void @llvm.dbg.value(metadata double %84, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %84, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %84, metadata !179, metadata !DIExpression()), !dbg !189
  %85 = fmul double %50, %84, !dbg !204
  %86 = fsub double %85, %81, !dbg !206
  %87 = fadd double %86, 0x3F7A0DD6818D61BF, !dbg !205
  call void @llvm.dbg.value(metadata double %87, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %87, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 14, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !207
  %88 = fmul double %49, 0.000000e+00, !dbg !208
  %89 = fadd double %88, 0xBBF633DBD22DEF21, !dbg !209
  call void @llvm.dbg.value(metadata double %89, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %89, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %89, metadata !183, metadata !DIExpression()), !dbg !207
  %90 = fmul double %49, %89, !dbg !208
  %91 = fadd double %90, 0xBC467C1053694F01, !dbg !209
  call void @llvm.dbg.value(metadata double %91, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %89, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %91, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %89, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %91, metadata !183, metadata !DIExpression()), !dbg !207
  %92 = fmul double %49, %91, !dbg !208
  %93 = fsub double %92, %89, !dbg !210
  %94 = fadd double %93, 0xBC944DA74212ED24, !dbg !209
  call void @llvm.dbg.value(metadata double %94, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %91, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %94, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %91, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %94, metadata !183, metadata !DIExpression()), !dbg !207
  %95 = fmul double %49, %94, !dbg !208
  %96 = fsub double %95, %91, !dbg !210
  %97 = fadd double %96, 0xBCD51F6FD990EBC7, !dbg !209
  call void @llvm.dbg.value(metadata double %97, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %94, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %97, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %94, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %97, metadata !183, metadata !DIExpression()), !dbg !207
  %98 = fmul double %49, %97, !dbg !208
  %99 = fsub double %98, %94, !dbg !210
  %100 = fadd double %99, 0x3D4FE3990CCF9916, !dbg !209
  call void @llvm.dbg.value(metadata double %100, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %97, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %100, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %97, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %100, metadata !183, metadata !DIExpression()), !dbg !207
  %101 = fmul double %49, %100, !dbg !208
  %102 = fsub double %101, %97, !dbg !210
  %103 = fadd double %102, 0x3D949DABBF046C8F, !dbg !209
  call void @llvm.dbg.value(metadata double %103, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %100, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %103, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %100, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %103, metadata !183, metadata !DIExpression()), !dbg !207
  %104 = fmul double %49, %103, !dbg !208
  %105 = fsub double %104, %100, !dbg !210
  %106 = fadd double %105, 0xBDD9D6E073FDD7CB, !dbg !209
  call void @llvm.dbg.value(metadata double %106, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %103, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %106, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %103, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %106, metadata !183, metadata !DIExpression()), !dbg !207
  %107 = fmul double %49, %106, !dbg !208
  %108 = fsub double %107, %103, !dbg !210
  %109 = fadd double %108, 0xBE20C4C973386FFA, !dbg !209
  call void @llvm.dbg.value(metadata double %109, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %106, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %109, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %106, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %109, metadata !183, metadata !DIExpression()), !dbg !207
  %110 = fmul double %49, %109, !dbg !208
  %111 = fsub double %110, %106, !dbg !210
  %112 = fadd double %111, 0xBE77DF090B838554, !dbg !209
  call void @llvm.dbg.value(metadata double %112, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %109, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %112, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %109, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %112, metadata !183, metadata !DIExpression()), !dbg !207
  %113 = fmul double %49, %112, !dbg !208
  %114 = fsub double %113, %109, !dbg !210
  %115 = fadd double %114, 0xBEB005C3B83B8EA6, !dbg !209
  call void @llvm.dbg.value(metadata double %115, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %112, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %115, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %112, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %115, metadata !183, metadata !DIExpression()), !dbg !207
  %116 = fmul double %49, %115, !dbg !208
  %117 = fsub double %116, %112, !dbg !210
  %118 = fadd double %117, 0x3F13FBA52E885960, !dbg !209
  call void @llvm.dbg.value(metadata double %118, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %115, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %118, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %115, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %118, metadata !183, metadata !DIExpression()), !dbg !207
  %119 = fmul double %49, %118, !dbg !208
  %120 = fsub double %119, %115, !dbg !210
  %121 = fadd double %120, 0x3F44C4B99F9A8A1E, !dbg !209
  call void @llvm.dbg.value(metadata double %121, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %118, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %121, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %118, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %121, metadata !183, metadata !DIExpression()), !dbg !207
  %122 = fmul double %49, %121, !dbg !208
  %123 = fsub double %122, %118, !dbg !210
  %124 = fadd double %123, 0xBF92B1E364CE7F7D, !dbg !209
  call void @llvm.dbg.value(metadata double %124, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %121, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %124, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %121, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %124, metadata !183, metadata !DIExpression()), !dbg !207
  %125 = fmul double %49, %124, !dbg !208
  %126 = fsub double %125, %121, !dbg !210
  %127 = fadd double %126, 0xBFB3D66D838E9AA7, !dbg !209
  call void @llvm.dbg.value(metadata double %127, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %124, metadata !179, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !197
  %128 = fmul double %45, %87, !dbg !211
  %129 = fsub double %128, %84, !dbg !212
  %130 = fadd double %129, 0xBFE2529792FE2917, !dbg !213
  call void @llvm.dbg.value(metadata double %130, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %130, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !161
  call void @llvm.dbg.value(metadata double %127, metadata !187, metadata !DIExpression()), !dbg !214
  %131 = fmul double %48, %127, !dbg !215
  %132 = fsub double %131, %124, !dbg !216
  %133 = fadd double %132, 0x3FEE1F50E9F9E9DA, !dbg !217
  call void @llvm.dbg.value(metadata double %133, metadata !178, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata double %133, metadata !160, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !161
  call void @llvm.dbg.value(metadata double poison, metadata !160, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !161
  tail call void @llvm.dbg.value(metadata double %130, metadata !115, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %133, metadata !116, metadata !DIExpression()), !dbg !122
  %134 = fmul double %130, %0, !dbg !218
  %135 = fadd double %134, %133, !dbg !219
  %136 = fdiv double 1.000000e+00, %135, !dbg !220
  tail call void @llvm.dbg.value(metadata double %136, metadata !114, metadata !DIExpression()), !dbg !122
  %137 = fsub double %133, %134, !dbg !221
  %138 = fdiv double 1.000000e+00, %137, !dbg !222
  tail call void @llvm.dbg.value(metadata double %138, metadata !113, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !122
  %139 = tail call double @cosh(double noundef %12) #4, !dbg !223
  %140 = fmul double %130, %139, !dbg !224
  %141 = fmul double %6, %27, !dbg !225
  %142 = fmul double %141, %133, !dbg !226
  %143 = fsub double %140, %142, !dbg !227
  %144 = fmul double %20, %143, !dbg !228
  tail call void @llvm.dbg.value(metadata double %144, metadata !106, metadata !DIExpression()), !dbg !122
  %145 = fdiv double 0x3FD45F306DC9C883, %8, !dbg !229
  %146 = fmul double %145, %138, !dbg !230
  tail call void @llvm.dbg.value(metadata double %146, metadata !107, metadata !DIExpression()), !dbg !122
  %147 = fmul double %8, 0x3FD45F306DC9C883, !dbg !231
  %148 = fmul double %147, %136, !dbg !232
  tail call void @llvm.dbg.value(metadata double %148, metadata !108, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %146, metadata !109, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !110, metadata !DIExpression()), !dbg !122
  %149 = fmul double %38, %148, !dbg !233
  %150 = fadd double %144, %149, !dbg !234
  tail call void @llvm.dbg.value(metadata double %150, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %146, metadata !105, metadata !DIExpression()), !dbg !122
  %151 = fmul double %0, %0
  %152 = fneg double %5
  %153 = fmul double %5, %152
  br label %154, !dbg !235

154:                                              ; preds = %163, %33
  %155 = phi double [ 1.000000e+00, %33 ], [ %174, %163 ], !dbg !122
  %156 = phi i32 [ 0, %33 ], [ %164, %163 ], !dbg !122
  %157 = phi double [ %148, %33 ], [ %178, %163 ], !dbg !122
  %158 = phi double [ %146, %33 ], [ %176, %163 ], !dbg !122
  %159 = phi double [ %144, %33 ], [ %172, %163 ], !dbg !122
  %160 = phi double [ %146, %33 ], [ %188, %163 ], !dbg !122
  %161 = phi double [ %150, %33 ], [ %187, %163 ], !dbg !122
  tail call void @llvm.dbg.value(metadata double %161, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %160, metadata !105, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %159, metadata !106, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %158, metadata !107, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %157, metadata !108, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !111, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %155, metadata !110, metadata !DIExpression()), !dbg !122
  %162 = icmp eq i32 %156, 15000, !dbg !236
  br i1 %162, label %195, label %163, !dbg !235

163:                                              ; preds = %154
  %164 = add nuw nsw i32 %156, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !111, metadata !DIExpression()), !dbg !122
  %165 = sitofp i32 %164 to double, !dbg !238
  %166 = fmul double %159, %165, !dbg !239
  %167 = fadd double %158, %166, !dbg !240
  %168 = fadd double %157, %167, !dbg !241
  %169 = mul nuw nsw i32 %164, %164, !dbg !242
  %170 = sitofp i32 %169 to double, !dbg !243
  %171 = fsub double %170, %151, !dbg !244
  %172 = fdiv double %168, %171, !dbg !245
  tail call void @llvm.dbg.value(metadata double %172, metadata !106, metadata !DIExpression()), !dbg !122
  %173 = fdiv double %153, %165, !dbg !246
  %174 = fmul double %155, %173, !dbg !247
  tail call void @llvm.dbg.value(metadata double %174, metadata !110, metadata !DIExpression()), !dbg !122
  %175 = fsub double %165, %0, !dbg !248
  %176 = fdiv double %158, %175, !dbg !249
  tail call void @llvm.dbg.value(metadata double %176, metadata !107, metadata !DIExpression()), !dbg !122
  %177 = fadd double %165, %0, !dbg !250
  %178 = fdiv double %157, %177, !dbg !251
  tail call void @llvm.dbg.value(metadata double %178, metadata !108, metadata !DIExpression()), !dbg !122
  %179 = fmul double %38, %178, !dbg !252
  %180 = fadd double %179, %172, !dbg !253
  tail call void @llvm.dbg.value(metadata double %180, metadata !121, metadata !DIExpression()), !dbg !254
  %181 = xor i32 %156, -1, !dbg !255
  %182 = sitofp i32 %181 to double, !dbg !255
  %183 = fmul double %180, %182, !dbg !256
  %184 = fadd double %176, %183, !dbg !257
  tail call void @llvm.dbg.value(metadata double %184, metadata !109, metadata !DIExpression()), !dbg !122
  %185 = fmul double %174, %180, !dbg !258
  tail call void @llvm.dbg.value(metadata double %185, metadata !118, metadata !DIExpression()), !dbg !254
  %186 = fmul double %174, %184, !dbg !259
  tail call void @llvm.dbg.value(metadata double %186, metadata !120, metadata !DIExpression()), !dbg !254
  %187 = fadd double %161, %185, !dbg !260
  tail call void @llvm.dbg.value(metadata double %187, metadata !104, metadata !DIExpression()), !dbg !122
  %188 = fadd double %160, %186, !dbg !261
  tail call void @llvm.dbg.value(metadata double %188, metadata !105, metadata !DIExpression()), !dbg !122
  %189 = tail call double @llvm.fabs.f64(double %185), !dbg !262
  %190 = tail call double @llvm.fabs.f64(double %187), !dbg !264
  %191 = fadd double %190, 1.000000e+00, !dbg !265
  %192 = fmul double %191, 5.000000e-01, !dbg !266
  %193 = fmul double %192, 0x3CB0000000000000, !dbg !267
  %194 = fcmp olt double %189, %193, !dbg !268
  br i1 %194, label %195, label %154

195:                                              ; preds = %163, %154
  %196 = phi i32 [ 15000, %154 ], [ %164, %163 ], !dbg !122
  %197 = phi double [ %160, %154 ], [ %188, %163 ], !dbg !122
  %198 = phi double [ %161, %154 ], [ %187, %163 ], !dbg !122
  tail call void @llvm.dbg.value(metadata double %198, metadata !104, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %197, metadata !105, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !111, metadata !DIExpression()), !dbg !122
  %199 = freeze i32 %196, !dbg !269
  %200 = fneg double %198, !dbg !270
  store double %200, ptr %2, align 8, !dbg !271, !tbaa !272
  %201 = sitofp i32 %199 to double, !dbg !277
  %202 = fmul double %201, 5.000000e-01, !dbg !278
  %203 = fadd double %202, 2.000000e+00, !dbg !279
  %204 = fmul double %203, 0x3CB0000000000000, !dbg !280
  %205 = tail call double @llvm.fabs.f64(double %200), !dbg !281
  %206 = fmul double %205, %204, !dbg !282
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !283
  store double %206, ptr %207, align 8, !dbg !284, !tbaa !285
  %208 = fmul double %197, -2.000000e+00, !dbg !286
  %209 = fdiv double %208, %1, !dbg !287
  store double %209, ptr %3, align 8, !dbg !288, !tbaa !272
  %210 = tail call double @llvm.fabs.f64(double %209), !dbg !289
  %211 = fmul double %204, %210, !dbg !290
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !291
  store double %211, ptr %212, align 8, !dbg !292, !tbaa !285
  %213 = icmp sgt i32 %199, 14999, !dbg !269
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !112, metadata !DIExpression()), !dbg !122
  %214 = select i1 %213, i32 11, i32 0, !dbg !293
  ret i32 %214, !dbg !294
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !295 double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !299 double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !300 double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !301 double @sinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !302 double @cosh(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_K_scaled_temme(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !303 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !307, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %1, metadata !308, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !310, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !311, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 15000, metadata !312, metadata !DIExpression()), !dbg !338
  %6 = fmul double %1, 5.000000e-01, !dbg !339
  tail call void @llvm.dbg.value(metadata double %6, metadata !313, metadata !DIExpression()), !dbg !338
  %7 = tail call double @log(double noundef %6) #4, !dbg !340
  tail call void @llvm.dbg.value(metadata double %7, metadata !314, metadata !DIExpression()), !dbg !338
  %8 = fmul double %7, %0, !dbg !341
  %9 = tail call double @exp(double noundef %8) #4, !dbg !342
  tail call void @llvm.dbg.value(metadata double %9, metadata !315, metadata !DIExpression()), !dbg !338
  %10 = fmul double %0, 0x400921FB54442D18, !dbg !343
  tail call void @llvm.dbg.value(metadata double %10, metadata !316, metadata !DIExpression()), !dbg !338
  %11 = fneg double %0, !dbg !344
  %12 = fmul double %7, %11, !dbg !345
  tail call void @llvm.dbg.value(metadata double %12, metadata !317, metadata !DIExpression()), !dbg !338
  %13 = tail call double @llvm.fabs.f64(double %10), !dbg !346
  %14 = fcmp olt double %13, 0x3CB0000000000000, !dbg !347
  br i1 %14, label %18, label %15, !dbg !346

15:                                               ; preds = %5
  %16 = tail call double @sin(double noundef %10) #4, !dbg !348
  %17 = fdiv double %10, %16, !dbg !349
  br label %18, !dbg !346

18:                                               ; preds = %5, %15
  %19 = phi double [ %17, %15 ], [ 1.000000e+00, %5 ], !dbg !346
  tail call void @llvm.dbg.value(metadata double %19, metadata !318, metadata !DIExpression()), !dbg !338
  %20 = tail call double @llvm.fabs.f64(double %12), !dbg !350
  %21 = fcmp olt double %20, 0x3CB0000000000000, !dbg !351
  br i1 %21, label %25, label %22, !dbg !350

22:                                               ; preds = %18
  %23 = tail call double @sinh(double noundef %12) #4, !dbg !352
  %24 = fdiv double %23, %12, !dbg !353
  br label %25, !dbg !350

25:                                               ; preds = %18, %22
  %26 = phi double [ %24, %22 ], [ 1.000000e+00, %18 ], !dbg !350
  tail call void @llvm.dbg.value(metadata double %26, metadata !319, metadata !DIExpression()), !dbg !338
  %27 = tail call double @exp(double noundef %1) #4, !dbg !354
  tail call void @llvm.dbg.value(metadata double %27, metadata !320, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %0, metadata !148, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata ptr undef, metadata !153, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata ptr undef, metadata !154, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata ptr undef, metadata !155, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !355
  %28 = tail call double @llvm.fabs.f64(double %0), !dbg !357
  call void @llvm.dbg.value(metadata double %28, metadata !157, metadata !DIExpression()), !dbg !355
  %29 = fmul double %28, 4.000000e+00, !dbg !358
  %30 = fadd double %29, -1.000000e+00, !dbg !359
  call void @llvm.dbg.value(metadata double %30, metadata !158, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata !166, metadata !167, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %30, metadata !175, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata ptr undef, metadata !176, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !360
  %31 = fmul double %30, 2.000000e+00, !dbg !362
  %32 = fadd double %31, 1.000000e+00, !dbg !363
  %33 = fadd double %32, -1.000000e+00, !dbg !364
  %34 = fmul double %33, 5.000000e-01, !dbg !365
  call void @llvm.dbg.value(metadata double %34, metadata !180, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 13, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !179, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !355
  call void @llvm.dbg.value(metadata !166, metadata !167, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %30, metadata !175, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata ptr undef, metadata !176, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !180, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !181, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 14, metadata !177, metadata !DIExpression()), !dbg !368
  %35 = fadd double %31, 1.000000e+00, !dbg !370
  %36 = fadd double %35, -1.000000e+00, !dbg !371
  %37 = fmul double %36, 5.000000e-01, !dbg !372
  call void @llvm.dbg.value(metadata double %37, metadata !180, metadata !DIExpression()), !dbg !368
  %38 = fmul double %37, 2.000000e+00, !dbg !373
  call void @llvm.dbg.value(metadata double %38, metadata !181, metadata !DIExpression()), !dbg !368
  %39 = fmul double %34, 2.000000e+00, !dbg !374
  call void @llvm.dbg.value(metadata double %39, metadata !181, metadata !DIExpression()), !dbg !360
  %40 = fmul double %39, 0.000000e+00, !dbg !375
  %41 = fadd double %40, 0xBBE598C5460217E6, !dbg !376
  call void @llvm.dbg.value(metadata double %41, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %41, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %41, metadata !179, metadata !DIExpression()), !dbg !360
  %42 = fmul double %39, %41, !dbg !375
  %43 = fadd double %42, 0xBC83712DD7FD5DAE, !dbg !376
  call void @llvm.dbg.value(metadata double %43, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %43, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %43, metadata !179, metadata !DIExpression()), !dbg !360
  %44 = fmul double %39, %43, !dbg !375
  %45 = fsub double %44, %41, !dbg !377
  %46 = fadd double %45, 0xBCCCC7FD6547EEBE, !dbg !376
  call void @llvm.dbg.value(metadata double %46, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %46, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %46, metadata !179, metadata !DIExpression()), !dbg !360
  %47 = fmul double %39, %46, !dbg !375
  %48 = fsub double %47, %43, !dbg !377
  %49 = fadd double %48, 0x3D1FEC573C54F7E4, !dbg !376
  call void @llvm.dbg.value(metadata double %49, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %49, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %49, metadata !179, metadata !DIExpression()), !dbg !360
  %50 = fmul double %39, %49, !dbg !375
  %51 = fsub double %50, %46, !dbg !377
  %52 = fadd double %51, 0x3D6808C44F2106C2, !dbg !376
  call void @llvm.dbg.value(metadata double %52, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %52, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %52, metadata !179, metadata !DIExpression()), !dbg !360
  %53 = fmul double %39, %52, !dbg !375
  %54 = fsub double %53, %49, !dbg !377
  %55 = fadd double %54, 0x3DC1D4922A661984, !dbg !376
  call void @llvm.dbg.value(metadata double %55, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %55, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %55, metadata !179, metadata !DIExpression()), !dbg !360
  %56 = fmul double %39, %55, !dbg !375
  %57 = fsub double %56, %52, !dbg !377
  %58 = fadd double %57, 0x3DFF0DBFD1B8B9C7, !dbg !376
  call void @llvm.dbg.value(metadata double %58, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %58, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %58, metadata !179, metadata !DIExpression()), !dbg !360
  %59 = fmul double %39, %58, !dbg !375
  %60 = fsub double %59, %55, !dbg !377
  %61 = fadd double %60, 0xBE6BD210D42EA355, !dbg !376
  call void @llvm.dbg.value(metadata double %61, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %61, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %61, metadata !179, metadata !DIExpression()), !dbg !360
  %62 = fmul double %39, %61, !dbg !375
  %63 = fsub double %62, %58, !dbg !377
  %64 = fadd double %63, 0xBEA5ACE21C9E49D4, !dbg !376
  call void @llvm.dbg.value(metadata double %64, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %64, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %64, metadata !179, metadata !DIExpression()), !dbg !360
  %65 = fmul double %39, %64, !dbg !375
  %66 = fsub double %65, %61, !dbg !377
  %67 = fadd double %66, 0x3EF1D81738E657AD, !dbg !376
  call void @llvm.dbg.value(metadata double %67, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %67, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %67, metadata !179, metadata !DIExpression()), !dbg !360
  %68 = fmul double %39, %67, !dbg !375
  %69 = fsub double %68, %64, !dbg !377
  %70 = fadd double %69, 0x3F24083A360DB22F, !dbg !376
  call void @llvm.dbg.value(metadata double %70, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %70, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %70, metadata !179, metadata !DIExpression()), !dbg !360
  %71 = fmul double %39, %70, !dbg !375
  %72 = fsub double %71, %67, !dbg !377
  %73 = fadd double %72, 0x3F5E83B08852701D, !dbg !376
  call void @llvm.dbg.value(metadata double %73, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %73, metadata !183, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %73, metadata !179, metadata !DIExpression()), !dbg !360
  %74 = fmul double %39, %73, !dbg !375
  %75 = fsub double %74, %70, !dbg !377
  %76 = fadd double %75, 0x3F7A0DD6818D61BF, !dbg !376
  call void @llvm.dbg.value(metadata double %76, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %76, metadata !187, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 14, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !378
  %77 = fmul double %38, 0.000000e+00, !dbg !379
  %78 = fadd double %77, 0xBBF633DBD22DEF21, !dbg !380
  call void @llvm.dbg.value(metadata double %78, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 13, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %78, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %78, metadata !183, metadata !DIExpression()), !dbg !378
  %79 = fmul double %38, %78, !dbg !379
  %80 = fadd double %79, 0xBC467C1053694F01, !dbg !380
  call void @llvm.dbg.value(metadata double %80, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %78, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 12, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %80, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %78, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %80, metadata !183, metadata !DIExpression()), !dbg !378
  %81 = fmul double %38, %80, !dbg !379
  %82 = fsub double %81, %78, !dbg !381
  %83 = fadd double %82, 0xBC944DA74212ED24, !dbg !380
  call void @llvm.dbg.value(metadata double %83, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %80, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 11, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %83, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %80, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %83, metadata !183, metadata !DIExpression()), !dbg !378
  %84 = fmul double %38, %83, !dbg !379
  %85 = fsub double %84, %80, !dbg !381
  %86 = fadd double %85, 0xBCD51F6FD990EBC7, !dbg !380
  call void @llvm.dbg.value(metadata double %86, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %83, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 10, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %86, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %83, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %86, metadata !183, metadata !DIExpression()), !dbg !378
  %87 = fmul double %38, %86, !dbg !379
  %88 = fsub double %87, %83, !dbg !381
  %89 = fadd double %88, 0x3D4FE3990CCF9916, !dbg !380
  call void @llvm.dbg.value(metadata double %89, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %86, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 9, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %89, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %86, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %89, metadata !183, metadata !DIExpression()), !dbg !378
  %90 = fmul double %38, %89, !dbg !379
  %91 = fsub double %90, %86, !dbg !381
  %92 = fadd double %91, 0x3D949DABBF046C8F, !dbg !380
  call void @llvm.dbg.value(metadata double %92, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %89, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 8, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %92, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %89, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %92, metadata !183, metadata !DIExpression()), !dbg !378
  %93 = fmul double %38, %92, !dbg !379
  %94 = fsub double %93, %89, !dbg !381
  %95 = fadd double %94, 0xBDD9D6E073FDD7CB, !dbg !380
  call void @llvm.dbg.value(metadata double %95, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %92, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 7, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %95, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %92, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %95, metadata !183, metadata !DIExpression()), !dbg !378
  %96 = fmul double %38, %95, !dbg !379
  %97 = fsub double %96, %92, !dbg !381
  %98 = fadd double %97, 0xBE20C4C973386FFA, !dbg !380
  call void @llvm.dbg.value(metadata double %98, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %95, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 6, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %98, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %95, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %98, metadata !183, metadata !DIExpression()), !dbg !378
  %99 = fmul double %38, %98, !dbg !379
  %100 = fsub double %99, %95, !dbg !381
  %101 = fadd double %100, 0xBE77DF090B838554, !dbg !380
  call void @llvm.dbg.value(metadata double %101, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %98, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 5, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %101, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %98, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %101, metadata !183, metadata !DIExpression()), !dbg !378
  %102 = fmul double %38, %101, !dbg !379
  %103 = fsub double %102, %98, !dbg !381
  %104 = fadd double %103, 0xBEB005C3B83B8EA6, !dbg !380
  call void @llvm.dbg.value(metadata double %104, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %101, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 4, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %104, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %101, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %104, metadata !183, metadata !DIExpression()), !dbg !378
  %105 = fmul double %38, %104, !dbg !379
  %106 = fsub double %105, %101, !dbg !381
  %107 = fadd double %106, 0x3F13FBA52E885960, !dbg !380
  call void @llvm.dbg.value(metadata double %107, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %104, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 3, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %107, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %104, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %107, metadata !183, metadata !DIExpression()), !dbg !378
  %108 = fmul double %38, %107, !dbg !379
  %109 = fsub double %108, %104, !dbg !381
  %110 = fadd double %109, 0x3F44C4B99F9A8A1E, !dbg !380
  call void @llvm.dbg.value(metadata double %110, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %107, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 2, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %110, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %107, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %110, metadata !183, metadata !DIExpression()), !dbg !378
  %111 = fmul double %38, %110, !dbg !379
  %112 = fsub double %111, %107, !dbg !381
  %113 = fadd double %112, 0xBF92B1E364CE7F7D, !dbg !380
  call void @llvm.dbg.value(metadata double %113, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %110, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %113, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %110, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %113, metadata !183, metadata !DIExpression()), !dbg !378
  %114 = fmul double %38, %113, !dbg !379
  %115 = fsub double %114, %110, !dbg !381
  %116 = fadd double %115, 0xBFB3D66D838E9AA7, !dbg !380
  call void @llvm.dbg.value(metadata double %116, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %113, metadata !179, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !368
  %117 = fmul double %34, %76, !dbg !382
  %118 = fsub double %117, %73, !dbg !383
  %119 = fadd double %118, 0xBFE2529792FE2917, !dbg !384
  call void @llvm.dbg.value(metadata double %119, metadata !178, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata double %119, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  call void @llvm.dbg.value(metadata double %116, metadata !187, metadata !DIExpression()), !dbg !385
  %120 = fmul double %37, %116, !dbg !386
  %121 = fsub double %120, %113, !dbg !387
  %122 = fadd double %121, 0x3FEE1F50E9F9E9DA, !dbg !388
  call void @llvm.dbg.value(metadata double %122, metadata !178, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double poison, metadata !182, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata double %122, metadata !160, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !355
  call void @llvm.dbg.value(metadata double poison, metadata !160, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !355
  tail call void @llvm.dbg.value(metadata double %119, metadata !332, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %122, metadata !333, metadata !DIExpression()), !dbg !338
  %123 = fmul double %119, %0, !dbg !389
  %124 = fadd double %123, %122, !dbg !390
  %125 = fdiv double 1.000000e+00, %124, !dbg !391
  tail call void @llvm.dbg.value(metadata double %125, metadata !331, metadata !DIExpression()), !dbg !338
  %126 = fsub double %122, %123, !dbg !392
  %127 = fdiv double 1.000000e+00, %126, !dbg !393
  tail call void @llvm.dbg.value(metadata double %127, metadata !330, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !338
  %128 = tail call double @cosh(double noundef %12) #4, !dbg !394
  %129 = fmul double %119, %128, !dbg !395
  %130 = fmul double %7, %26, !dbg !396
  %131 = fmul double %130, %122, !dbg !397
  %132 = fsub double %129, %131, !dbg !398
  %133 = fmul double %19, %132, !dbg !399
  tail call void @llvm.dbg.value(metadata double %133, metadata !323, metadata !DIExpression()), !dbg !338
  %134 = fdiv double 5.000000e-01, %9, !dbg !400
  %135 = fmul double %134, %127, !dbg !401
  tail call void @llvm.dbg.value(metadata double %135, metadata !324, metadata !DIExpression()), !dbg !338
  %136 = fmul double %9, 5.000000e-01, !dbg !402
  %137 = fmul double %136, %125, !dbg !403
  tail call void @llvm.dbg.value(metadata double %137, metadata !325, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %135, metadata !326, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !327, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %133, metadata !321, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %135, metadata !322, metadata !DIExpression()), !dbg !338
  %138 = fmul double %0, %0
  %139 = fmul double %6, %6
  br label %140, !dbg !404

140:                                              ; preds = %149, %25
  %141 = phi double [ %137, %25 ], [ %164, %149 ], !dbg !338
  %142 = phi double [ 1.000000e+00, %25 ], [ %160, %149 ], !dbg !338
  %143 = phi i32 [ 0, %25 ], [ %150, %149 ], !dbg !338
  %144 = phi double [ %135, %25 ], [ %162, %149 ], !dbg !338
  %145 = phi double [ %133, %25 ], [ %158, %149 ], !dbg !338
  %146 = phi double [ %135, %25 ], [ %172, %149 ], !dbg !338
  %147 = phi double [ %133, %25 ], [ %171, %149 ], !dbg !338
  tail call void @llvm.dbg.value(metadata double %147, metadata !321, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %146, metadata !322, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %145, metadata !323, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %144, metadata !324, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !328, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %142, metadata !327, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %141, metadata !325, metadata !DIExpression()), !dbg !338
  %148 = icmp eq i32 %143, 15000, !dbg !405
  br i1 %148, label %178, label %149, !dbg !404

149:                                              ; preds = %140
  %150 = add nuw nsw i32 %143, 1, !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %150, metadata !328, metadata !DIExpression()), !dbg !338
  %151 = sitofp i32 %150 to double, !dbg !407
  %152 = fmul double %145, %151, !dbg !408
  %153 = fadd double %144, %152, !dbg !409
  %154 = fadd double %141, %153, !dbg !410
  %155 = mul nuw nsw i32 %150, %150, !dbg !411
  %156 = sitofp i32 %155 to double, !dbg !412
  %157 = fsub double %156, %138, !dbg !413
  %158 = fdiv double %154, %157, !dbg !414
  tail call void @llvm.dbg.value(metadata double %158, metadata !323, metadata !DIExpression()), !dbg !338
  %159 = fdiv double %139, %151, !dbg !415
  %160 = fmul double %142, %159, !dbg !416
  tail call void @llvm.dbg.value(metadata double %160, metadata !327, metadata !DIExpression()), !dbg !338
  %161 = fsub double %151, %0, !dbg !417
  %162 = fdiv double %144, %161, !dbg !418
  tail call void @llvm.dbg.value(metadata double %162, metadata !324, metadata !DIExpression()), !dbg !338
  %163 = fadd double %151, %0, !dbg !419
  %164 = fdiv double %141, %163, !dbg !420
  tail call void @llvm.dbg.value(metadata double %164, metadata !325, metadata !DIExpression()), !dbg !338
  %165 = xor i32 %143, -1, !dbg !421
  %166 = sitofp i32 %165 to double, !dbg !421
  %167 = fmul double %158, %166, !dbg !422
  %168 = fadd double %162, %167, !dbg !423
  tail call void @llvm.dbg.value(metadata double %168, metadata !326, metadata !DIExpression()), !dbg !338
  %169 = fmul double %160, %158, !dbg !424
  tail call void @llvm.dbg.value(metadata double %169, metadata !335, metadata !DIExpression()), !dbg !425
  %170 = fmul double %160, %168, !dbg !426
  tail call void @llvm.dbg.value(metadata double %170, metadata !337, metadata !DIExpression()), !dbg !425
  %171 = fadd double %147, %169, !dbg !427
  tail call void @llvm.dbg.value(metadata double %171, metadata !321, metadata !DIExpression()), !dbg !338
  %172 = fadd double %146, %170, !dbg !428
  tail call void @llvm.dbg.value(metadata double %172, metadata !322, metadata !DIExpression()), !dbg !338
  %173 = tail call double @llvm.fabs.f64(double %169), !dbg !429
  %174 = tail call double @llvm.fabs.f64(double %171), !dbg !431
  %175 = fmul double %174, 5.000000e-01, !dbg !432
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !433
  %177 = fcmp olt double %173, %176, !dbg !434
  br i1 %177, label %178, label %140

178:                                              ; preds = %149, %140
  %179 = phi i32 [ %150, %149 ], [ 15000, %140 ], !dbg !338
  %180 = phi double [ %172, %149 ], [ %146, %140 ], !dbg !338
  %181 = phi double [ %171, %149 ], [ %147, %140 ], !dbg !338
  tail call void @llvm.dbg.value(metadata double %181, metadata !321, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double %180, metadata !322, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !328, metadata !DIExpression()), !dbg !338
  %182 = fmul double %27, %181, !dbg !435
  store double %182, ptr %2, align 8, !dbg !436, !tbaa !437
  %183 = fmul double %180, 2.000000e+00, !dbg !438
  %184 = fdiv double %183, %1, !dbg !439
  %185 = fmul double %27, %184, !dbg !440
  store double %185, ptr %3, align 8, !dbg !441, !tbaa !437
  %186 = fdiv double %0, %1, !dbg !442
  %187 = load double, ptr %2, align 8, !dbg !443, !tbaa !437
  %188 = fmul double %186, %187, !dbg !444
  %189 = fsub double %188, %185, !dbg !445
  store double %189, ptr %4, align 8, !dbg !446, !tbaa !437
  %190 = freeze i32 %179, !dbg !447
  %191 = icmp eq i32 %190, 15000, !dbg !447
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !329, metadata !DIExpression()), !dbg !338
  %192 = select i1 %191, i32 11, i32 0, !dbg !448
  ret i32 %192, !dbg !449
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!124 = !DILocation(line: 112, column: 28, scope: !76)
!125 = !DILocation(line: 113, column: 34, scope: !76)
!126 = !DILocation(line: 113, column: 28, scope: !76)
!127 = !DILocation(line: 114, column: 31, scope: !76)
!128 = !DILocation(line: 115, column: 32, scope: !76)
!129 = !DILocation(line: 116, column: 26, scope: !76)
!130 = !DILocation(line: 116, column: 30, scope: !76)
!131 = !DILocation(line: 117, column: 27, scope: !76)
!132 = !DILocation(line: 117, column: 39, scope: !76)
!133 = !DILocation(line: 117, column: 71, scope: !76)
!134 = !DILocation(line: 117, column: 70, scope: !76)
!135 = !DILocation(line: 130, column: 17, scope: !76)
!136 = !DILocation(line: 118, column: 27, scope: !76)
!137 = !DILocation(line: 118, column: 39, scope: !76)
!138 = !DILocation(line: 118, column: 65, scope: !76)
!139 = !DILocation(line: 118, column: 76, scope: !76)
!140 = !DILocation(line: 119, column: 27, scope: !76)
!141 = !DILocation(line: 119, column: 39, scope: !76)
!142 = !DILocation(line: 119, column: 65, scope: !76)
!143 = !DILocation(line: 119, column: 75, scope: !76)
!144 = !DILocation(line: 120, column: 33, scope: !76)
!145 = !DILocation(line: 120, column: 38, scope: !76)
!146 = !DILocation(line: 120, column: 43, scope: !76)
!147 = !DILocation(line: 120, column: 52, scope: !76)
!148 = !DILocalVariable(name: "nu", arg: 1, scope: !149, file: !1, line: 88, type: !79)
!149 = distinct !DISubprogram(name: "gsl_sf_temme_gamma", scope: !1, file: !1, line: 88, type: !150, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!5, !79, !50, !50, !50, !50}
!152 = !{!148, !153, !154, !155, !156, !157, !158, !159, !160}
!153 = !DILocalVariable(name: "g_1pnu", arg: 2, scope: !149, file: !1, line: 88, type: !50)
!154 = !DILocalVariable(name: "g_1mnu", arg: 3, scope: !149, file: !1, line: 88, type: !50)
!155 = !DILocalVariable(name: "g1", arg: 4, scope: !149, file: !1, line: 88, type: !50)
!156 = !DILocalVariable(name: "g2", arg: 5, scope: !149, file: !1, line: 88, type: !50)
!157 = !DILocalVariable(name: "anu", scope: !149, file: !1, line: 90, type: !79)
!158 = !DILocalVariable(name: "x", scope: !149, file: !1, line: 91, type: !79)
!159 = !DILocalVariable(name: "r_g1", scope: !149, file: !1, line: 92, type: !81)
!160 = !DILocalVariable(name: "r_g2", scope: !149, file: !1, line: 93, type: !81)
!161 = !DILocation(line: 0, scope: !149, inlinedAt: !162)
!162 = distinct !DILocation(line: 128, column: 16, scope: !76)
!163 = !DILocation(line: 90, column: 22, scope: !149, inlinedAt: !162)
!164 = !DILocation(line: 91, column: 23, scope: !149, inlinedAt: !162)
!165 = !DILocation(line: 91, column: 28, scope: !149, inlinedAt: !162)
!166 = !{}
!167 = !DILocalVariable(name: "cs", arg: 1, scope: !168, file: !169, line: 3, type: !172)
!168 = distinct !DISubprogram(name: "cheb_eval_e", scope: !169, file: !169, line: 3, type: !170, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!169 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!170 = !DISubroutineType(types: !171)
!171 = !{!5, !172, !79, !80}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!174 = !{!167, !175, !176, !177, !178, !179, !180, !181, !182, !183, !187}
!175 = !DILocalVariable(name: "x", arg: 2, scope: !168, file: !169, line: 4, type: !79)
!176 = !DILocalVariable(name: "result", arg: 3, scope: !168, file: !169, line: 5, type: !80)
!177 = !DILocalVariable(name: "j", scope: !168, file: !169, line: 7, type: !5)
!178 = !DILocalVariable(name: "d", scope: !168, file: !169, line: 8, type: !51)
!179 = !DILocalVariable(name: "dd", scope: !168, file: !169, line: 9, type: !51)
!180 = !DILocalVariable(name: "y", scope: !168, file: !169, line: 11, type: !51)
!181 = !DILocalVariable(name: "y2", scope: !168, file: !169, line: 12, type: !51)
!182 = !DILocalVariable(name: "e", scope: !168, file: !169, line: 14, type: !51)
!183 = !DILocalVariable(name: "temp", scope: !184, file: !169, line: 17, type: !51)
!184 = distinct !DILexicalBlock(scope: !185, file: !169, line: 16, column: 33)
!185 = distinct !DILexicalBlock(scope: !186, file: !169, line: 16, column: 3)
!186 = distinct !DILexicalBlock(scope: !168, file: !169, line: 16, column: 3)
!187 = !DILocalVariable(name: "temp", scope: !188, file: !169, line: 24, type: !51)
!188 = distinct !DILexicalBlock(scope: !168, file: !169, line: 23, column: 3)
!189 = !DILocation(line: 0, scope: !168, inlinedAt: !190)
!190 = distinct !DILocation(line: 94, column: 3, scope: !149, inlinedAt: !162)
!191 = !DILocation(line: 11, column: 19, scope: !168, inlinedAt: !190)
!192 = !DILocation(line: 11, column: 22, scope: !168, inlinedAt: !190)
!193 = !DILocation(line: 11, column: 30, scope: !168, inlinedAt: !190)
!194 = !DILocation(line: 11, column: 39, scope: !168, inlinedAt: !190)
!195 = !DILocation(line: 0, scope: !184, inlinedAt: !190)
!196 = !DILocation(line: 0, scope: !188, inlinedAt: !190)
!197 = !DILocation(line: 0, scope: !168, inlinedAt: !198)
!198 = distinct !DILocation(line: 95, column: 3, scope: !149, inlinedAt: !162)
!199 = !DILocation(line: 11, column: 22, scope: !168, inlinedAt: !198)
!200 = !DILocation(line: 11, column: 30, scope: !168, inlinedAt: !198)
!201 = !DILocation(line: 11, column: 39, scope: !168, inlinedAt: !198)
!202 = !DILocation(line: 12, column: 19, scope: !168, inlinedAt: !198)
!203 = !DILocation(line: 12, column: 19, scope: !168, inlinedAt: !190)
!204 = !DILocation(line: 18, column: 11, scope: !184, inlinedAt: !190)
!205 = !DILocation(line: 18, column: 19, scope: !184, inlinedAt: !190)
!206 = !DILocation(line: 18, column: 14, scope: !184, inlinedAt: !190)
!207 = !DILocation(line: 0, scope: !184, inlinedAt: !198)
!208 = !DILocation(line: 18, column: 11, scope: !184, inlinedAt: !198)
!209 = !DILocation(line: 18, column: 19, scope: !184, inlinedAt: !198)
!210 = !DILocation(line: 18, column: 14, scope: !184, inlinedAt: !198)
!211 = !DILocation(line: 25, column: 10, scope: !188, inlinedAt: !190)
!212 = !DILocation(line: 25, column: 13, scope: !188, inlinedAt: !190)
!213 = !DILocation(line: 25, column: 18, scope: !188, inlinedAt: !190)
!214 = !DILocation(line: 0, scope: !188, inlinedAt: !198)
!215 = !DILocation(line: 25, column: 10, scope: !188, inlinedAt: !198)
!216 = !DILocation(line: 25, column: 13, scope: !188, inlinedAt: !198)
!217 = !DILocation(line: 25, column: 18, scope: !188, inlinedAt: !198)
!218 = !DILocation(line: 98, column: 32, scope: !149, inlinedAt: !162)
!219 = !DILocation(line: 98, column: 27, scope: !149, inlinedAt: !162)
!220 = !DILocation(line: 98, column: 16, scope: !149, inlinedAt: !162)
!221 = !DILocation(line: 99, column: 27, scope: !149, inlinedAt: !162)
!222 = !DILocation(line: 99, column: 16, scope: !149, inlinedAt: !162)
!223 = !DILocation(line: 130, column: 29, scope: !76)
!224 = !DILocation(line: 130, column: 40, scope: !76)
!225 = !DILocation(line: 130, column: 53, scope: !76)
!226 = !DILocation(line: 130, column: 63, scope: !76)
!227 = !DILocation(line: 130, column: 44, scope: !76)
!228 = !DILocation(line: 130, column: 26, scope: !76)
!229 = !DILocation(line: 131, column: 17, scope: !76)
!230 = !DILocation(line: 131, column: 28, scope: !76)
!231 = !DILocation(line: 132, column: 17, scope: !76)
!232 = !DILocation(line: 132, column: 28, scope: !76)
!233 = !DILocation(line: 136, column: 23, scope: !76)
!234 = !DILocation(line: 136, column: 13, scope: !76)
!235 = !DILocation(line: 139, column: 3, scope: !76)
!236 = !DILocation(line: 139, column: 11, scope: !76)
!237 = !DILocation(line: 143, column: 6, scope: !119)
!238 = !DILocation(line: 144, column: 12, scope: !119)
!239 = !DILocation(line: 144, column: 13, scope: !119)
!240 = !DILocation(line: 144, column: 17, scope: !119)
!241 = !DILocation(line: 144, column: 22, scope: !119)
!242 = !DILocation(line: 144, column: 30, scope: !119)
!243 = !DILocation(line: 144, column: 29, scope: !119)
!244 = !DILocation(line: 144, column: 32, scope: !119)
!245 = !DILocation(line: 144, column: 27, scope: !119)
!246 = !DILocation(line: 145, column: 25, scope: !119)
!247 = !DILocation(line: 145, column: 8, scope: !119)
!248 = !DILocation(line: 146, column: 14, scope: !119)
!249 = !DILocation(line: 146, column: 8, scope: !119)
!250 = !DILocation(line: 147, column: 14, scope: !119)
!251 = !DILocation(line: 147, column: 8, scope: !119)
!252 = !DILocation(line: 148, column: 24, scope: !119)
!253 = !DILocation(line: 148, column: 14, scope: !119)
!254 = !DILocation(line: 0, scope: !119)
!255 = !DILocation(line: 149, column: 11, scope: !119)
!256 = !DILocation(line: 149, column: 13, scope: !119)
!257 = !DILocation(line: 149, column: 17, scope: !119)
!258 = !DILocation(line: 150, column: 15, scope: !119)
!259 = !DILocation(line: 151, column: 15, scope: !119)
!260 = !DILocation(line: 152, column: 10, scope: !119)
!261 = !DILocation(line: 153, column: 10, scope: !119)
!262 = !DILocation(line: 154, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !119, file: !1, line: 154, column: 8)
!264 = !DILocation(line: 154, column: 32, scope: !263)
!265 = !DILocation(line: 154, column: 30, scope: !263)
!266 = !DILocation(line: 154, column: 24, scope: !263)
!267 = !DILocation(line: 154, column: 43, scope: !263)
!268 = !DILocation(line: 154, column: 19, scope: !263)
!269 = !DILocation(line: 162, column: 19, scope: !76)
!270 = !DILocation(line: 157, column: 16, scope: !76)
!271 = !DILocation(line: 157, column: 14, scope: !76)
!272 = !{!273, !274, i64 0}
!273 = !{!"gsl_sf_result_struct", !274, i64 0, !274, i64 8}
!274 = !{!"double", !275, i64 0}
!275 = !{!"omnipotent char", !276, i64 0}
!276 = !{!"Simple C/C++ TBAA"}
!277 = !DILocation(line: 158, column: 27, scope: !76)
!278 = !DILocation(line: 158, column: 26, scope: !76)
!279 = !DILocation(line: 158, column: 21, scope: !76)
!280 = !DILocation(line: 158, column: 30, scope: !76)
!281 = !DILocation(line: 158, column: 50, scope: !76)
!282 = !DILocation(line: 158, column: 48, scope: !76)
!283 = !DILocation(line: 158, column: 8, scope: !76)
!284 = !DILocation(line: 158, column: 14, scope: !76)
!285 = !{!273, !274, i64 8}
!286 = !DILocation(line: 159, column: 22, scope: !76)
!287 = !DILocation(line: 159, column: 27, scope: !76)
!288 = !DILocation(line: 159, column: 14, scope: !76)
!289 = !DILocation(line: 160, column: 50, scope: !76)
!290 = !DILocation(line: 160, column: 48, scope: !76)
!291 = !DILocation(line: 160, column: 10, scope: !76)
!292 = !DILocation(line: 160, column: 14, scope: !76)
!293 = !DILocation(line: 163, column: 10, scope: !76)
!294 = !DILocation(line: 163, column: 3, scope: !76)
!295 = !DISubprogram(name: "log", scope: !296, file: !296, line: 104, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!297 = !DISubroutineType(types: !298)
!298 = !{!51, !51}
!299 = !DISubprogram(name: "exp", scope: !296, file: !296, line: 95, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubprogram(name: "sin", scope: !296, file: !296, line: 64, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubprogram(name: "sinh", scope: !296, file: !296, line: 73, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubprogram(name: "cosh", scope: !296, file: !296, line: 71, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = distinct !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !1, file: !1, line: 168, type: !304, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!5, !79, !79, !50, !50, !50}
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !337}
!307 = !DILocalVariable(name: "nu", arg: 1, scope: !303, file: !1, line: 168, type: !79)
!308 = !DILocalVariable(name: "x", arg: 2, scope: !303, file: !1, line: 168, type: !79)
!309 = !DILocalVariable(name: "K_nu", arg: 3, scope: !303, file: !1, line: 169, type: !50)
!310 = !DILocalVariable(name: "K_nup1", arg: 4, scope: !303, file: !1, line: 169, type: !50)
!311 = !DILocalVariable(name: "Kp_nu", arg: 5, scope: !303, file: !1, line: 169, type: !50)
!312 = !DILocalVariable(name: "max_iter", scope: !303, file: !1, line: 171, type: !93)
!313 = !DILocalVariable(name: "half_x", scope: !303, file: !1, line: 173, type: !79)
!314 = !DILocalVariable(name: "ln_half_x", scope: !303, file: !1, line: 174, type: !79)
!315 = !DILocalVariable(name: "half_x_nu", scope: !303, file: !1, line: 175, type: !79)
!316 = !DILocalVariable(name: "pi_nu", scope: !303, file: !1, line: 176, type: !79)
!317 = !DILocalVariable(name: "sigma", scope: !303, file: !1, line: 177, type: !79)
!318 = !DILocalVariable(name: "sinrat", scope: !303, file: !1, line: 178, type: !79)
!319 = !DILocalVariable(name: "sinhrat", scope: !303, file: !1, line: 179, type: !79)
!320 = !DILocalVariable(name: "ex", scope: !303, file: !1, line: 180, type: !79)
!321 = !DILocalVariable(name: "sum0", scope: !303, file: !1, line: 182, type: !51)
!322 = !DILocalVariable(name: "sum1", scope: !303, file: !1, line: 182, type: !51)
!323 = !DILocalVariable(name: "fk", scope: !303, file: !1, line: 183, type: !51)
!324 = !DILocalVariable(name: "pk", scope: !303, file: !1, line: 183, type: !51)
!325 = !DILocalVariable(name: "qk", scope: !303, file: !1, line: 183, type: !51)
!326 = !DILocalVariable(name: "hk", scope: !303, file: !1, line: 183, type: !51)
!327 = !DILocalVariable(name: "ck", scope: !303, file: !1, line: 183, type: !51)
!328 = !DILocalVariable(name: "k", scope: !303, file: !1, line: 184, type: !5)
!329 = !DILocalVariable(name: "stat_iter", scope: !303, file: !1, line: 185, type: !5)
!330 = !DILocalVariable(name: "g_1pnu", scope: !303, file: !1, line: 187, type: !51)
!331 = !DILocalVariable(name: "g_1mnu", scope: !303, file: !1, line: 187, type: !51)
!332 = !DILocalVariable(name: "g1", scope: !303, file: !1, line: 187, type: !51)
!333 = !DILocalVariable(name: "g2", scope: !303, file: !1, line: 187, type: !51)
!334 = !DILocalVariable(name: "stat_g", scope: !303, file: !1, line: 188, type: !5)
!335 = !DILocalVariable(name: "del0", scope: !336, file: !1, line: 198, type: !51)
!336 = distinct !DILexicalBlock(scope: !303, file: !1, line: 197, column: 23)
!337 = !DILocalVariable(name: "del1", scope: !336, file: !1, line: 199, type: !51)
!338 = !DILocation(line: 0, scope: !303)
!339 = !DILocation(line: 173, column: 32, scope: !303)
!340 = !DILocation(line: 174, column: 28, scope: !303)
!341 = !DILocation(line: 175, column: 34, scope: !303)
!342 = !DILocation(line: 175, column: 28, scope: !303)
!343 = !DILocation(line: 176, column: 31, scope: !303)
!344 = !DILocation(line: 177, column: 26, scope: !303)
!345 = !DILocation(line: 177, column: 30, scope: !303)
!346 = !DILocation(line: 178, column: 27, scope: !303)
!347 = !DILocation(line: 178, column: 39, scope: !303)
!348 = !DILocation(line: 178, column: 71, scope: !303)
!349 = !DILocation(line: 178, column: 70, scope: !303)
!350 = !DILocation(line: 179, column: 27, scope: !303)
!351 = !DILocation(line: 179, column: 39, scope: !303)
!352 = !DILocation(line: 179, column: 65, scope: !303)
!353 = !DILocation(line: 179, column: 76, scope: !303)
!354 = !DILocation(line: 180, column: 21, scope: !303)
!355 = !DILocation(line: 0, scope: !149, inlinedAt: !356)
!356 = distinct !DILocation(line: 188, column: 16, scope: !303)
!357 = !DILocation(line: 90, column: 22, scope: !149, inlinedAt: !356)
!358 = !DILocation(line: 91, column: 23, scope: !149, inlinedAt: !356)
!359 = !DILocation(line: 91, column: 28, scope: !149, inlinedAt: !356)
!360 = !DILocation(line: 0, scope: !168, inlinedAt: !361)
!361 = distinct !DILocation(line: 94, column: 3, scope: !149, inlinedAt: !356)
!362 = !DILocation(line: 11, column: 19, scope: !168, inlinedAt: !361)
!363 = !DILocation(line: 11, column: 22, scope: !168, inlinedAt: !361)
!364 = !DILocation(line: 11, column: 30, scope: !168, inlinedAt: !361)
!365 = !DILocation(line: 11, column: 39, scope: !168, inlinedAt: !361)
!366 = !DILocation(line: 0, scope: !184, inlinedAt: !361)
!367 = !DILocation(line: 0, scope: !188, inlinedAt: !361)
!368 = !DILocation(line: 0, scope: !168, inlinedAt: !369)
!369 = distinct !DILocation(line: 95, column: 3, scope: !149, inlinedAt: !356)
!370 = !DILocation(line: 11, column: 22, scope: !168, inlinedAt: !369)
!371 = !DILocation(line: 11, column: 30, scope: !168, inlinedAt: !369)
!372 = !DILocation(line: 11, column: 39, scope: !168, inlinedAt: !369)
!373 = !DILocation(line: 12, column: 19, scope: !168, inlinedAt: !369)
!374 = !DILocation(line: 12, column: 19, scope: !168, inlinedAt: !361)
!375 = !DILocation(line: 18, column: 11, scope: !184, inlinedAt: !361)
!376 = !DILocation(line: 18, column: 19, scope: !184, inlinedAt: !361)
!377 = !DILocation(line: 18, column: 14, scope: !184, inlinedAt: !361)
!378 = !DILocation(line: 0, scope: !184, inlinedAt: !369)
!379 = !DILocation(line: 18, column: 11, scope: !184, inlinedAt: !369)
!380 = !DILocation(line: 18, column: 19, scope: !184, inlinedAt: !369)
!381 = !DILocation(line: 18, column: 14, scope: !184, inlinedAt: !369)
!382 = !DILocation(line: 25, column: 10, scope: !188, inlinedAt: !361)
!383 = !DILocation(line: 25, column: 13, scope: !188, inlinedAt: !361)
!384 = !DILocation(line: 25, column: 18, scope: !188, inlinedAt: !361)
!385 = !DILocation(line: 0, scope: !188, inlinedAt: !369)
!386 = !DILocation(line: 25, column: 10, scope: !188, inlinedAt: !369)
!387 = !DILocation(line: 25, column: 13, scope: !188, inlinedAt: !369)
!388 = !DILocation(line: 25, column: 18, scope: !188, inlinedAt: !369)
!389 = !DILocation(line: 98, column: 32, scope: !149, inlinedAt: !356)
!390 = !DILocation(line: 98, column: 27, scope: !149, inlinedAt: !356)
!391 = !DILocation(line: 98, column: 16, scope: !149, inlinedAt: !356)
!392 = !DILocation(line: 99, column: 27, scope: !149, inlinedAt: !356)
!393 = !DILocation(line: 99, column: 16, scope: !149, inlinedAt: !356)
!394 = !DILocation(line: 190, column: 18, scope: !303)
!395 = !DILocation(line: 190, column: 29, scope: !303)
!396 = !DILocation(line: 190, column: 42, scope: !303)
!397 = !DILocation(line: 190, column: 52, scope: !303)
!398 = !DILocation(line: 190, column: 33, scope: !303)
!399 = !DILocation(line: 190, column: 15, scope: !303)
!400 = !DILocation(line: 191, column: 11, scope: !303)
!401 = !DILocation(line: 191, column: 22, scope: !303)
!402 = !DILocation(line: 192, column: 11, scope: !303)
!403 = !DILocation(line: 192, column: 22, scope: !303)
!404 = !DILocation(line: 197, column: 3, scope: !303)
!405 = !DILocation(line: 197, column: 11, scope: !303)
!406 = !DILocation(line: 200, column: 6, scope: !336)
!407 = !DILocation(line: 201, column: 12, scope: !336)
!408 = !DILocation(line: 201, column: 13, scope: !336)
!409 = !DILocation(line: 201, column: 17, scope: !336)
!410 = !DILocation(line: 201, column: 22, scope: !336)
!411 = !DILocation(line: 201, column: 30, scope: !336)
!412 = !DILocation(line: 201, column: 29, scope: !336)
!413 = !DILocation(line: 201, column: 32, scope: !336)
!414 = !DILocation(line: 201, column: 27, scope: !336)
!415 = !DILocation(line: 202, column: 24, scope: !336)
!416 = !DILocation(line: 202, column: 8, scope: !336)
!417 = !DILocation(line: 203, column: 14, scope: !336)
!418 = !DILocation(line: 203, column: 8, scope: !336)
!419 = !DILocation(line: 204, column: 14, scope: !336)
!420 = !DILocation(line: 204, column: 8, scope: !336)
!421 = !DILocation(line: 205, column: 11, scope: !336)
!422 = !DILocation(line: 205, column: 13, scope: !336)
!423 = !DILocation(line: 205, column: 17, scope: !336)
!424 = !DILocation(line: 206, column: 15, scope: !336)
!425 = !DILocation(line: 0, scope: !336)
!426 = !DILocation(line: 207, column: 15, scope: !336)
!427 = !DILocation(line: 208, column: 10, scope: !336)
!428 = !DILocation(line: 209, column: 10, scope: !336)
!429 = !DILocation(line: 210, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !336, file: !1, line: 210, column: 8)
!431 = !DILocation(line: 210, column: 25, scope: !430)
!432 = !DILocation(line: 210, column: 24, scope: !430)
!433 = !DILocation(line: 210, column: 35, scope: !430)
!434 = !DILocation(line: 210, column: 19, scope: !430)
!435 = !DILocation(line: 213, column: 18, scope: !303)
!436 = !DILocation(line: 213, column: 11, scope: !303)
!437 = !{!274, !274, i64 0}
!438 = !DILocation(line: 214, column: 18, scope: !303)
!439 = !DILocation(line: 214, column: 23, scope: !303)
!440 = !DILocation(line: 214, column: 26, scope: !303)
!441 = !DILocation(line: 214, column: 11, scope: !303)
!442 = !DILocation(line: 215, column: 27, scope: !303)
!443 = !DILocation(line: 215, column: 32, scope: !303)
!444 = !DILocation(line: 215, column: 30, scope: !303)
!445 = !DILocation(line: 215, column: 23, scope: !303)
!446 = !DILocation(line: 215, column: 11, scope: !303)
!447 = !DILocation(line: 217, column: 19, scope: !303)
!448 = !DILocation(line: 218, column: 10, scope: !303)
!449 = !DILocation(line: 218, column: 3, scope: !303)
