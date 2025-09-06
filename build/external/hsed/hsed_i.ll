; ModuleID = '/home/runner/work/PI-detector/PI-detector/build/external/hsed/hsed.ll'
source_filename = "/home/runner/work/PI-detector/PI-detector/external/hsed/hsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @foo(double noundef %0) #0 !dbg !10 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata ptr %3, metadata !18, metadata !DIExpression()), !dbg !19
  %4 = load double, ptr %2, align 8, !dbg !20
  %handler_result2 = call double @callHandler(i32 2, double %4, double %4), !dbg !19
  %handler_result = call double @fSubHandlerDouble(double %handler_result2, double 5.000000e-01), !dbg !19
  store double %handler_result, ptr %3, align 8, !dbg !19
  %5 = load double, ptr %3, align 8, !dbg !21
  %handler_result1 = call double @fAddHandlerDouble(double %5, double 1.000000e+10), !dbg !22
  store double %handler_result1, ptr %3, align 8, !dbg !22
  %6 = load double, ptr %3, align 8, !dbg !23
  ret double %6, !dbg !24
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @sqroot(double noundef %0) #0 !dbg !25 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load double, ptr %2, align 8, !dbg !28
  %4 = fmul double 5.000000e-01, %3, !dbg !29
  %handler_result = call double @fAddHandlerDouble(double 1.000000e+00, double %4), !dbg !30
  %5 = load double, ptr %2, align 8, !dbg !30
  %6 = fmul double 1.250000e-01, %5, !dbg !31
  %7 = load double, ptr %2, align 8, !dbg !32
  %8 = fmul double %6, %7, !dbg !33
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %8), !dbg !34
  %9 = load double, ptr %2, align 8, !dbg !34
  %10 = fmul double 6.250000e-02, %9, !dbg !35
  %11 = load double, ptr %2, align 8, !dbg !36
  %12 = fmul double %10, %11, !dbg !37
  %13 = load double, ptr %2, align 8, !dbg !38
  %14 = fmul double %12, %13, !dbg !39
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %14), !dbg !40
  %15 = load double, ptr %2, align 8, !dbg !40
  %16 = fmul double 3.906250e-02, %15, !dbg !41
  %17 = load double, ptr %2, align 8, !dbg !42
  %18 = fmul double %16, %17, !dbg !43
  %19 = load double, ptr %2, align 8, !dbg !44
  %20 = fmul double %18, %19, !dbg !45
  %21 = load double, ptr %2, align 8, !dbg !46
  %22 = fmul double %20, %21, !dbg !47
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %22), !dbg !48
  ret double %handler_result3, !dbg !48
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sqrt_add(double noundef %0) #0 !dbg !49 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !50, metadata !DIExpression()), !dbg !51
  %4 = load double, ptr %3, align 8, !dbg !52
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !54
  br i1 %5, label %6, label %7, !dbg !55

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !56
  br label %13, !dbg !56

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !57
  %handler_result = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !58
  %9 = call double @sqrt(double noundef %handler_result) #4, !dbg !58
  %10 = load double, ptr %3, align 8, !dbg !59
  %11 = call double @sqrt(double noundef %10) #4, !dbg !60
  %handler_result1 = call double @fAddHandlerDouble(double %9, double %11), !dbg !61
  %12 = fdiv double 1.000000e+00, %handler_result1, !dbg !61
  store double %12, ptr %2, align 8, !dbg !62
  br label %13, !dbg !62

13:                                               ; preds = %7, %6
  %14 = load double, ptr %2, align 8, !dbg !63
  ret double %14, !dbg !63
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @exp1x(double noundef %0) #0 !dbg !64 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !65, metadata !DIExpression()), !dbg !66
  %4 = load double, ptr %3, align 8, !dbg !67
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !69
  br i1 %5, label %6, label %7, !dbg !70

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !71
  br label %12, !dbg !71

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !72
  %9 = call double @exp(double noundef %8) #4, !dbg !73
  %handler_result = call double @fSubHandlerDouble(double %9, double 1.000000e+00), !dbg !74
  %10 = load double, ptr %3, align 8, !dbg !74
  %11 = fdiv double %handler_result, %10, !dbg !75
  store double %11, ptr %2, align 8, !dbg !76
  br label %12, !dbg !76

12:                                               ; preds = %7, %6
  %13 = load double, ptr %2, align 8, !dbg !77
  ret double %13, !dbg !77
}

; Function Attrs: nounwind
declare double @exp(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @exp1x_log(double noundef %0) #0 !dbg !78 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = load double, ptr %2, align 8, !dbg !81
  %4 = call double @exp(double noundef %3) #4, !dbg !82
  %handler_result = call double @fSubHandlerDouble(double %4, double 1.000000e+00), !dbg !83
  %5 = load double, ptr %2, align 8, !dbg !83
  %6 = call double @exp(double noundef %5) #4, !dbg !84
  %handler_result1 = call double @callHandler(i32 12, double %6, double %6), !dbg !85
  %7 = fdiv double %handler_result, %handler_result1, !dbg !85
  ret double %7, !dbg !86
}

; Function Attrs: nounwind
declare double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample37(double noundef %0) #0 !dbg !87 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !88, metadata !DIExpression()), !dbg !89
  %3 = load double, ptr %2, align 8, !dbg !90
  %4 = call double @exp(double noundef %3) #4, !dbg !91
  %handler_result = call double @fSubHandlerDouble(double %4, double 1.000000e+00), !dbg !92
  ret double %handler_result, !dbg !92
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem336(double noundef %0) #0 !dbg !93 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !94, metadata !DIExpression()), !dbg !95
  %4 = load double, ptr %3, align 8, !dbg !96
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !98
  br i1 %5, label %6, label %7, !dbg !99

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !100
  br label %10, !dbg !100

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !101
  %handler_result = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !102
  %handler_result2 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !103
  %9 = load double, ptr %3, align 8, !dbg !103
  %handler_result3 = call double @callHandler(i32 12, double %9, double %9), !dbg !104
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result2, double %handler_result3), !dbg !104
  store double %handler_result1, ptr %2, align 8, !dbg !104
  br label %10, !dbg !104

10:                                               ; preds = %7, %6
  %11 = load double, ptr %2, align 8, !dbg !105
  ret double %11, !dbg !105
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample39(double noundef %0) #0 !dbg !106 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !107, metadata !DIExpression()), !dbg !108
  %4 = load double, ptr %3, align 8, !dbg !109
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !111
  br i1 %5, label %6, label %7, !dbg !112

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !113
  br label %12, !dbg !113

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !114
  %9 = fdiv double 1.000000e+00, %8, !dbg !115
  %10 = load double, ptr %3, align 8, !dbg !116
  %handler_result1 = call double @callHandler(i32 3, double %10, double %10), !dbg !117
  %11 = fdiv double 1.000000e+00, %handler_result1, !dbg !117
  %handler_result = call double @fSubHandlerDouble(double %9, double %11), !dbg !118
  store double %handler_result, ptr %2, align 8, !dbg !118
  br label %12, !dbg !118

12:                                               ; preds = %7, %6
  %13 = load double, ptr %2, align 8, !dbg !119
  ret double %13, !dbg !119
}

; Function Attrs: nounwind
declare double @tan(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem341(double noundef %0) #0 !dbg !120 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !121, metadata !DIExpression()), !dbg !122
  %3 = load double, ptr %2, align 8, !dbg !123
  %handler_result1 = call double @callHandler(i32 2, double %3, double %3), !dbg !124
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result1), !dbg !124
  %4 = load double, ptr %2, align 8, !dbg !124
  %5 = load double, ptr %2, align 8, !dbg !125
  %6 = fmul double %4, %5, !dbg !126
  %7 = fdiv double %handler_result, %6, !dbg !127
  ret double %7, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEsection311(double noundef %0) #0 !dbg !129 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !130, metadata !DIExpression()), !dbg !131
  %3 = load double, ptr %2, align 8, !dbg !132
  %4 = call double @exp(double noundef %3) #4, !dbg !133
  %5 = load double, ptr %2, align 8, !dbg !134
  %6 = call double @exp(double noundef %5) #4, !dbg !135
  %handler_result = call double @fSubHandlerDouble(double %6, double 1.000000e+00), !dbg !136
  %7 = fdiv double %4, %handler_result, !dbg !136
  ret double %7, !dbg !137
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem345(double noundef %0) #0 !dbg !138 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !139, metadata !DIExpression()), !dbg !140
  %3 = load double, ptr %2, align 8, !dbg !141
  %4 = load double, ptr %2, align 8, !dbg !142
  %handler_result2 = call double @callHandler(i32 1, double %4, double %4), !dbg !143
  %handler_result = call double @fSubHandlerDouble(double %3, double %handler_result2), !dbg !143
  %5 = load double, ptr %2, align 8, !dbg !143
  %6 = load double, ptr %2, align 8, !dbg !144
  %handler_result3 = call double @callHandler(i32 3, double %6, double %6), !dbg !145
  %handler_result1 = call double @fSubHandlerDouble(double %5, double %handler_result3), !dbg !145
  %7 = fdiv double %handler_result, %handler_result1, !dbg !145
  ret double %7, !dbg !146
}

; Function Attrs: nounwind
declare double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem337(double noundef %0) #0 !dbg !147 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !148, metadata !DIExpression()), !dbg !149
  %3 = load double, ptr %2, align 8, !dbg !150
  %4 = call double @exp(double noundef %3) #4, !dbg !151
  %handler_result = call double @fSubHandlerDouble(double %4, double 2.000000e+00), !dbg !152
  %5 = load double, ptr %2, align 8, !dbg !152
  %6 = fneg double %5, !dbg !153
  %7 = call double @exp(double noundef %6) #4, !dbg !154
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %7), !dbg !155
  ret double %handler_result1, !dbg !155
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @verhulst(double noundef %0) #0 !dbg !156 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !157, metadata !DIExpression()), !dbg !158
  %3 = load double, ptr %2, align 8, !dbg !159
  %4 = fmul double 4.000000e+00, %3, !dbg !160
  %5 = load double, ptr %2, align 8, !dbg !161
  %6 = fdiv double %5, 1.110000e+00, !dbg !162
  %handler_result = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !163
  %7 = fdiv double %4, %handler_result, !dbg !163
  ret double %7, !dbg !164
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @predatorPrey(double noundef %0) #0 !dbg !165 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !166, metadata !DIExpression()), !dbg !167
  %3 = load double, ptr %2, align 8, !dbg !168
  %4 = fmul double 4.000000e+00, %3, !dbg !169
  %5 = load double, ptr %2, align 8, !dbg !170
  %6 = fmul double %4, %5, !dbg !171
  %7 = load double, ptr %2, align 8, !dbg !172
  %8 = fdiv double %7, 1.110000e+00, !dbg !173
  %handler_result = call double @fAddHandlerDouble(double 1.000000e+00, double %8), !dbg !174
  %9 = load double, ptr %2, align 8, !dbg !174
  %10 = fdiv double %9, 1.110000e+00, !dbg !175
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %10), !dbg !176
  %11 = fdiv double %6, %handler_result1, !dbg !176
  ret double %11, !dbg !177
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @logexp(double noundef %0) #0 !dbg !178 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !179, metadata !DIExpression()), !dbg !180
  %3 = load double, ptr %2, align 8, !dbg !181
  %4 = call double @exp(double noundef %3) #4, !dbg !182
  %handler_result = call double @fSubHandlerDouble(double %4, double 1.000000e+00), !dbg !183
  %handler_result1 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !184
  ret double %handler_result1, !dbg !184
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sine(double noundef %0) #0 !dbg !185 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !186, metadata !DIExpression()), !dbg !187
  %3 = load double, ptr %2, align 8, !dbg !188
  %4 = load double, ptr %2, align 8, !dbg !189
  %5 = load double, ptr %2, align 8, !dbg !190
  %6 = fmul double %4, %5, !dbg !191
  %7 = load double, ptr %2, align 8, !dbg !192
  %8 = fmul double %6, %7, !dbg !193
  %9 = fdiv double %8, 6.000000e+00, !dbg !194
  %handler_result = call double @fSubHandlerDouble(double %3, double %9), !dbg !195
  %10 = load double, ptr %2, align 8, !dbg !195
  %11 = load double, ptr %2, align 8, !dbg !196
  %12 = fmul double %10, %11, !dbg !197
  %13 = load double, ptr %2, align 8, !dbg !198
  %14 = fmul double %12, %13, !dbg !199
  %15 = load double, ptr %2, align 8, !dbg !200
  %16 = fmul double %14, %15, !dbg !201
  %17 = load double, ptr %2, align 8, !dbg !202
  %18 = fmul double %16, %17, !dbg !203
  %19 = fdiv double %18, 1.200000e+02, !dbg !204
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %19), !dbg !205
  %20 = load double, ptr %2, align 8, !dbg !205
  %21 = load double, ptr %2, align 8, !dbg !206
  %22 = fmul double %20, %21, !dbg !207
  %23 = load double, ptr %2, align 8, !dbg !208
  %24 = fmul double %22, %23, !dbg !209
  %25 = load double, ptr %2, align 8, !dbg !210
  %26 = fmul double %24, %25, !dbg !211
  %27 = load double, ptr %2, align 8, !dbg !212
  %28 = fmul double %26, %27, !dbg !213
  %29 = load double, ptr %2, align 8, !dbg !214
  %30 = fmul double %28, %29, !dbg !215
  %31 = load double, ptr %2, align 8, !dbg !216
  %32 = fmul double %30, %31, !dbg !217
  %33 = fdiv double %32, 5.040000e+03, !dbg !218
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %33), !dbg !219
  ret double %handler_result2, !dbg !219
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @carbonGas(double noundef %0) #0 !dbg !220 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !222
  %3 = load double, ptr %2, align 8, !dbg !223
  %4 = fdiv double 1.000000e+03, %3, !dbg !224
  %5 = fmul double 4.010000e-01, %4, !dbg !225
  %6 = load double, ptr %2, align 8, !dbg !226
  %7 = fdiv double 1.000000e+03, %6, !dbg !227
  %8 = fmul double %5, %7, !dbg !228
  %handler_result = call double @fAddHandlerDouble(double 3.500000e+07, double %8), !dbg !229
  %9 = load double, ptr %2, align 8, !dbg !229
  %handler_result1 = call double @fSubHandlerDouble(double %9, double 4.270000e-02), !dbg !230
  %10 = fmul double %handler_result, %handler_result1, !dbg !230
  %handler_result2 = call double @fSubHandlerDouble(double %10, double 0x3C5319F3D8BDD36B), !dbg !231
  ret double %handler_result2, !dbg !231
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample38(double noundef %0) #0 !dbg !232 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !234
  %3 = load double, ptr %2, align 8, !dbg !235
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !236
  %4 = load double, ptr %2, align 8, !dbg !236
  %handler_result1 = call double @fAddHandlerDouble(double %4, double 1.000000e+00), !dbg !237
  %handler_result4 = call double @callHandler(i32 12, double %handler_result1, double %handler_result1), !dbg !238
  %5 = fmul double %handler_result, %handler_result4, !dbg !238
  %6 = load double, ptr %2, align 8, !dbg !239
  %7 = load double, ptr %2, align 8, !dbg !240
  %handler_result5 = call double @callHandler(i32 12, double %7, double %7), !dbg !241
  %8 = fmul double %6, %handler_result5, !dbg !241
  %handler_result2 = call double @fSubHandlerDouble(double %5, double %8), !dbg !242
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double 1.000000e+00), !dbg !243
  ret double %handler_result3, !dbg !243
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem334(double noundef %0) #0 !dbg !244 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load double, ptr %2, align 8, !dbg !247
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !248
  %4 = call double @cbrt(double noundef %handler_result) #5, !dbg !248
  %5 = load double, ptr %2, align 8, !dbg !249
  %6 = call double @cbrt(double noundef %5) #5, !dbg !250
  %handler_result1 = call double @fSubHandlerDouble(double %4, double %6), !dbg !251
  ret double %handler_result1, !dbg !251
}

; Function Attrs: nounwind willreturn memory(none)
declare double @cbrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem333(double noundef %0) #0 !dbg !252 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !253, metadata !DIExpression()), !dbg !254
  %3 = load double, ptr %2, align 8, !dbg !255
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !256
  %4 = fdiv double 1.000000e+00, %handler_result, !dbg !256
  %5 = load double, ptr %2, align 8, !dbg !257
  %6 = fdiv double 2.000000e+00, %5, !dbg !258
  %handler_result1 = call double @fSubHandlerDouble(double %4, double %6), !dbg !259
  %7 = load double, ptr %2, align 8, !dbg !259
  %handler_result2 = call double @fSubHandlerDouble(double %7, double 1.000000e+00), !dbg !260
  %8 = fdiv double 1.000000e+00, %handler_result2, !dbg !260
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %8), !dbg !261
  ret double %handler_result3, !dbg !261
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem331(double noundef %0) #0 !dbg !262 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load double, ptr %2, align 8, !dbg !265
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !266
  %4 = fdiv double 1.000000e+00, %handler_result, !dbg !266
  %5 = load double, ptr %2, align 8, !dbg !267
  %6 = fdiv double 1.000000e+00, %5, !dbg !268
  %handler_result1 = call double @fSubHandlerDouble(double %4, double %6), !dbg !269
  ret double %handler_result1, !dbg !269
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample36(double noundef %0) #0 !dbg !270 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !271, metadata !DIExpression()), !dbg !272
  %3 = load double, ptr %2, align 8, !dbg !273
  %4 = call double @sqrt(double noundef %3) #4, !dbg !274
  %5 = fdiv double 1.000000e+00, %4, !dbg !275
  %6 = load double, ptr %2, align 8, !dbg !276
  %handler_result = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !277
  %7 = call double @sqrt(double noundef %handler_result) #4, !dbg !277
  %8 = fdiv double 1.000000e+00, %7, !dbg !278
  %handler_result1 = call double @fSubHandlerDouble(double %5, double %8), !dbg !279
  ret double %handler_result1, !dbg !279
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample35(double noundef %0) #0 !dbg !280 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !281, metadata !DIExpression()), !dbg !282
  %3 = load double, ptr %2, align 8, !dbg !283
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !284
  %handler_result2 = call double @callHandler(i32 3, double %handler_result, double %handler_result), !dbg !285
  %4 = fdiv double 1.000000e+00, %handler_result2, !dbg !285
  %5 = load double, ptr %2, align 8, !dbg !286
  %handler_result3 = call double @callHandler(i32 3, double %5, double %5), !dbg !287
  %6 = fdiv double 1.000000e+00, %handler_result3, !dbg !287
  %handler_result1 = call double @fSubHandlerDouble(double %4, double %6), !dbg !288
  ret double %handler_result1, !dbg !288
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample34(double noundef %0) #0 !dbg !289 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !290, metadata !DIExpression()), !dbg !291
  %3 = load double, ptr %2, align 8, !dbg !292
  %handler_result1 = call double @callHandler(i32 2, double %3, double %3), !dbg !293
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result1), !dbg !293
  %4 = load double, ptr %2, align 8, !dbg !293
  %handler_result2 = call double @callHandler(i32 1, double %4, double %4), !dbg !294
  %5 = fdiv double %handler_result, %handler_result2, !dbg !294
  ret double %5, !dbg !295
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample31(double noundef %0) #0 !dbg !296 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !297, metadata !DIExpression()), !dbg !298
  %3 = load double, ptr %2, align 8, !dbg !299
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !300
  %4 = call double @sqrt(double noundef %handler_result) #4, !dbg !300
  %5 = load double, ptr %2, align 8, !dbg !301
  %6 = call double @sqrt(double noundef %5) #4, !dbg !302
  %handler_result1 = call double @fSubHandlerDouble(double %4, double %6), !dbg !303
  ret double %handler_result1, !dbg !303
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test05_nonlin1_r4(double noundef %0) #0 !dbg !304 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load double, ptr %2, align 8, !dbg !307
  %handler_result = call double @fSubHandlerDouble(double %3, double 1.000000e+00), !dbg !308
  %4 = load double, ptr %2, align 8, !dbg !308
  %5 = load double, ptr %2, align 8, !dbg !309
  %6 = fmul double %4, %5, !dbg !310
  %handler_result1 = call double @fSubHandlerDouble(double %6, double 1.000000e+00), !dbg !311
  %7 = fdiv double %handler_result, %handler_result1, !dbg !311
  ret double %7, !dbg !312
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test05_nonlin1_test2(double noundef %0) #0 !dbg !313 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !314, metadata !DIExpression()), !dbg !315
  %3 = load double, ptr %2, align 8, !dbg !316
  %handler_result = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !317
  %4 = fdiv double 1.000000e+00, %handler_result, !dbg !317
  ret double %4, !dbg !318
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @intro_example_mixed(double noundef %0) #0 !dbg !319 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load double, ptr %2, align 8, !dbg !322
  %4 = load double, ptr %2, align 8, !dbg !323
  %handler_result = call double @fAddHandlerDouble(double %4, double 1.000000e+00), !dbg !324
  %5 = fdiv double %3, %handler_result, !dbg !324
  ret double %5, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sineOrder3(double noundef %0) #0 !dbg !326 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load double, ptr %2, align 8, !dbg !329
  %4 = fmul double 0x3FEE8EC8A4AEACC4, %3, !dbg !330
  %5 = load double, ptr %2, align 8, !dbg !331
  %6 = load double, ptr %2, align 8, !dbg !332
  %7 = fmul double %5, %6, !dbg !333
  %8 = load double, ptr %2, align 8, !dbg !334
  %9 = fmul double %7, %8, !dbg !335
  %10 = fmul double 0x3FC08345EB45D77F, %9, !dbg !336
  %handler_result = call double @fSubHandlerDouble(double %4, double %10), !dbg !337
  ret double %handler_result, !dbg !337
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @bsplines3(double noundef %0) #0 !dbg !338 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load double, ptr %2, align 8, !dbg !341
  %4 = fneg double %3, !dbg !342
  %5 = load double, ptr %2, align 8, !dbg !343
  %6 = fmul double %4, %5, !dbg !344
  %7 = load double, ptr %2, align 8, !dbg !345
  %8 = fmul double %6, %7, !dbg !346
  %9 = fdiv double %8, 6.000000e+00, !dbg !347
  ret double %9, !dbg !348
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample310(double noundef %0) #0 !dbg !349 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !350, metadata !DIExpression()), !dbg !351
  %3 = load double, ptr %2, align 8, !dbg !352
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !353
  %handler_result2 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !354
  %4 = load double, ptr %2, align 8, !dbg !354
  %handler_result1 = call double @fAddHandlerDouble(double 1.000000e+00, double %4), !dbg !355
  %handler_result3 = call double @callHandler(i32 12, double %handler_result1, double %handler_result1), !dbg !356
  %5 = fdiv double %handler_result2, %handler_result3, !dbg !356
  ret double %5, !dbg !357
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem343(double noundef %0) #0 !dbg !358 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !359, metadata !DIExpression()), !dbg !360
  %3 = load double, ptr %2, align 8, !dbg !361
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !362
  %4 = load double, ptr %2, align 8, !dbg !362
  %handler_result1 = call double @fAddHandlerDouble(double 1.000000e+00, double %4), !dbg !363
  %5 = fdiv double %handler_result, %handler_result1, !dbg !363
  %handler_result2 = call double @callHandler(i32 12, double %5, double %5), !dbg !364
  ret double %handler_result2, !dbg !364
}

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/runner/work/PI-detector/PI-detector/external/hsed/hsed.c", directory: "/home/runner/work/PI-detector/PI-detector/build/external/hsed", checksumkind: CSK_MD5, checksum: "179bb5306fc409c387930dfddadbcd76")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 14, type: !12, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "external/hsed/hsed.c", directory: "/home/runner/work/PI-detector/PI-detector", checksumkind: CSK_MD5, checksum: "179bb5306fc409c387930dfddadbcd76")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 14, type: !14)
!17 = !DILocation(line: 14, column: 19, scope: !10)
!18 = !DILocalVariable(name: "val", scope: !10, file: !11, line: 15, type: !14)
!19 = !DILocation(line: 15, column: 12, scope: !10)
!20 = !DILocation(line: 15, column: 22, scope: !10)
!21 = !DILocation(line: 16, column: 11, scope: !10)
!22 = !DILocation(line: 16, column: 9, scope: !10)
!23 = !DILocation(line: 17, column: 12, scope: !10)
!24 = !DILocation(line: 17, column: 5, scope: !10)
!25 = distinct !DISubprogram(name: "sqroot", scope: !11, file: !11, line: 21, type: !12, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!26 = !DILocalVariable(name: "x", arg: 1, scope: !25, file: !11, line: 21, type: !14)
!27 = !DILocation(line: 21, column: 22, scope: !25)
!28 = !DILocation(line: 22, column: 24, scope: !25)
!29 = !DILocation(line: 22, column: 22, scope: !25)
!30 = !DILocation(line: 22, column: 36, scope: !25)
!31 = !DILocation(line: 22, column: 34, scope: !25)
!32 = !DILocation(line: 22, column: 40, scope: !25)
!33 = !DILocation(line: 22, column: 38, scope: !25)
!34 = !DILocation(line: 22, column: 53, scope: !25)
!35 = !DILocation(line: 22, column: 51, scope: !25)
!36 = !DILocation(line: 22, column: 57, scope: !25)
!37 = !DILocation(line: 22, column: 55, scope: !25)
!38 = !DILocation(line: 22, column: 61, scope: !25)
!39 = !DILocation(line: 22, column: 59, scope: !25)
!40 = !DILocation(line: 22, column: 77, scope: !25)
!41 = !DILocation(line: 22, column: 75, scope: !25)
!42 = !DILocation(line: 22, column: 81, scope: !25)
!43 = !DILocation(line: 22, column: 79, scope: !25)
!44 = !DILocation(line: 22, column: 85, scope: !25)
!45 = !DILocation(line: 22, column: 83, scope: !25)
!46 = !DILocation(line: 22, column: 89, scope: !25)
!47 = !DILocation(line: 22, column: 87, scope: !25)
!48 = !DILocation(line: 22, column: 5, scope: !25)
!49 = distinct !DISubprogram(name: "sqrt_add", scope: !11, file: !11, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!50 = !DILocalVariable(name: "x", arg: 1, scope: !49, file: !11, line: 26, type: !14)
!51 = !DILocation(line: 26, column: 24, scope: !49)
!52 = !DILocation(line: 27, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !11, line: 27, column: 9)
!54 = !DILocation(line: 27, column: 11, scope: !53)
!55 = !DILocation(line: 27, column: 9, scope: !49)
!56 = !DILocation(line: 27, column: 18, scope: !53)
!57 = !DILocation(line: 28, column: 24, scope: !49)
!58 = !DILocation(line: 28, column: 19, scope: !49)
!59 = !DILocation(line: 28, column: 40, scope: !49)
!60 = !DILocation(line: 28, column: 35, scope: !49)
!61 = !DILocation(line: 28, column: 16, scope: !49)
!62 = !DILocation(line: 28, column: 5, scope: !49)
!63 = !DILocation(line: 29, column: 1, scope: !49)
!64 = distinct !DISubprogram(name: "exp1x", scope: !11, file: !11, line: 32, type: !12, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!65 = !DILocalVariable(name: "x", arg: 1, scope: !64, file: !11, line: 32, type: !14)
!66 = !DILocation(line: 32, column: 21, scope: !64)
!67 = !DILocation(line: 33, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !11, line: 33, column: 9)
!69 = !DILocation(line: 33, column: 11, scope: !68)
!70 = !DILocation(line: 33, column: 9, scope: !64)
!71 = !DILocation(line: 33, column: 19, scope: !68)
!72 = !DILocation(line: 34, column: 17, scope: !64)
!73 = !DILocation(line: 34, column: 13, scope: !64)
!74 = !DILocation(line: 34, column: 29, scope: !64)
!75 = !DILocation(line: 34, column: 27, scope: !64)
!76 = !DILocation(line: 34, column: 5, scope: !64)
!77 = !DILocation(line: 35, column: 1, scope: !64)
!78 = distinct !DISubprogram(name: "exp1x_log", scope: !11, file: !11, line: 38, type: !12, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!79 = !DILocalVariable(name: "x", arg: 1, scope: !78, file: !11, line: 38, type: !14)
!80 = !DILocation(line: 38, column: 25, scope: !78)
!81 = !DILocation(line: 39, column: 17, scope: !78)
!82 = !DILocation(line: 39, column: 13, scope: !78)
!83 = !DILocation(line: 39, column: 37, scope: !78)
!84 = !DILocation(line: 39, column: 33, scope: !78)
!85 = !DILocation(line: 39, column: 27, scope: !78)
!86 = !DILocation(line: 39, column: 5, scope: !78)
!87 = distinct !DISubprogram(name: "NMSEexample37", scope: !11, file: !11, line: 43, type: !12, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!88 = !DILocalVariable(name: "x", arg: 1, scope: !87, file: !11, line: 43, type: !14)
!89 = !DILocation(line: 43, column: 29, scope: !87)
!90 = !DILocation(line: 44, column: 16, scope: !87)
!91 = !DILocation(line: 44, column: 12, scope: !87)
!92 = !DILocation(line: 44, column: 5, scope: !87)
!93 = distinct !DISubprogram(name: "NMSEproblem336", scope: !11, file: !11, line: 48, type: !12, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!94 = !DILocalVariable(name: "x", arg: 1, scope: !93, file: !11, line: 48, type: !14)
!95 = !DILocation(line: 48, column: 30, scope: !93)
!96 = !DILocation(line: 49, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !11, line: 49, column: 9)
!98 = !DILocation(line: 49, column: 11, scope: !97)
!99 = !DILocation(line: 49, column: 9, scope: !93)
!100 = !DILocation(line: 49, column: 19, scope: !97)
!101 = !DILocation(line: 50, column: 16, scope: !93)
!102 = !DILocation(line: 50, column: 12, scope: !93)
!103 = !DILocation(line: 50, column: 31, scope: !93)
!104 = !DILocation(line: 50, column: 5, scope: !93)
!105 = !DILocation(line: 51, column: 1, scope: !93)
!106 = distinct !DISubprogram(name: "NMSEexample39", scope: !11, file: !11, line: 54, type: !12, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!107 = !DILocalVariable(name: "x", arg: 1, scope: !106, file: !11, line: 54, type: !14)
!108 = !DILocation(line: 54, column: 29, scope: !106)
!109 = !DILocation(line: 55, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !11, line: 55, column: 9)
!111 = !DILocation(line: 55, column: 11, scope: !110)
!112 = !DILocation(line: 55, column: 9, scope: !106)
!113 = !DILocation(line: 55, column: 19, scope: !110)
!114 = !DILocation(line: 56, column: 18, scope: !106)
!115 = !DILocation(line: 56, column: 16, scope: !106)
!116 = !DILocation(line: 56, column: 32, scope: !106)
!117 = !DILocation(line: 56, column: 26, scope: !106)
!118 = !DILocation(line: 56, column: 5, scope: !106)
!119 = !DILocation(line: 57, column: 1, scope: !106)
!120 = distinct !DISubprogram(name: "NMSEproblem341", scope: !11, file: !11, line: 60, type: !12, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!121 = !DILocalVariable(name: "x", arg: 1, scope: !120, file: !11, line: 60, type: !14)
!122 = !DILocation(line: 60, column: 30, scope: !120)
!123 = !DILocation(line: 61, column: 23, scope: !120)
!124 = !DILocation(line: 61, column: 30, scope: !120)
!125 = !DILocation(line: 61, column: 34, scope: !120)
!126 = !DILocation(line: 61, column: 32, scope: !120)
!127 = !DILocation(line: 61, column: 27, scope: !120)
!128 = !DILocation(line: 61, column: 5, scope: !120)
!129 = distinct !DISubprogram(name: "NMSEsection311", scope: !11, file: !11, line: 65, type: !12, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!130 = !DILocalVariable(name: "x", arg: 1, scope: !129, file: !11, line: 65, type: !14)
!131 = !DILocation(line: 65, column: 30, scope: !129)
!132 = !DILocation(line: 66, column: 16, scope: !129)
!133 = !DILocation(line: 66, column: 12, scope: !129)
!134 = !DILocation(line: 66, column: 26, scope: !129)
!135 = !DILocation(line: 66, column: 22, scope: !129)
!136 = !DILocation(line: 66, column: 19, scope: !129)
!137 = !DILocation(line: 66, column: 5, scope: !129)
!138 = distinct !DISubprogram(name: "NMSEproblem345", scope: !11, file: !11, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!139 = !DILocalVariable(name: "x", arg: 1, scope: !138, file: !11, line: 70, type: !14)
!140 = !DILocation(line: 70, column: 30, scope: !138)
!141 = !DILocation(line: 71, column: 13, scope: !138)
!142 = !DILocation(line: 71, column: 21, scope: !138)
!143 = !DILocation(line: 71, column: 28, scope: !138)
!144 = !DILocation(line: 71, column: 36, scope: !138)
!145 = !DILocation(line: 71, column: 25, scope: !138)
!146 = !DILocation(line: 71, column: 5, scope: !138)
!147 = distinct !DISubprogram(name: "NMSEproblem337", scope: !11, file: !11, line: 75, type: !12, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!148 = !DILocalVariable(name: "x", arg: 1, scope: !147, file: !11, line: 75, type: !14)
!149 = !DILocation(line: 75, column: 30, scope: !147)
!150 = !DILocation(line: 76, column: 16, scope: !147)
!151 = !DILocation(line: 76, column: 12, scope: !147)
!152 = !DILocation(line: 76, column: 32, scope: !147)
!153 = !DILocation(line: 76, column: 31, scope: !147)
!154 = !DILocation(line: 76, column: 27, scope: !147)
!155 = !DILocation(line: 76, column: 5, scope: !147)
!156 = distinct !DISubprogram(name: "verhulst", scope: !11, file: !11, line: 80, type: !12, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!157 = !DILocalVariable(name: "x", arg: 1, scope: !156, file: !11, line: 80, type: !14)
!158 = !DILocation(line: 80, column: 24, scope: !156)
!159 = !DILocation(line: 81, column: 19, scope: !156)
!160 = !DILocation(line: 81, column: 17, scope: !156)
!161 = !DILocation(line: 81, column: 25, scope: !156)
!162 = !DILocation(line: 81, column: 27, scope: !156)
!163 = !DILocation(line: 81, column: 22, scope: !156)
!164 = !DILocation(line: 81, column: 5, scope: !156)
!165 = distinct !DISubprogram(name: "predatorPrey", scope: !11, file: !11, line: 85, type: !12, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!166 = !DILocalVariable(name: "x", arg: 1, scope: !165, file: !11, line: 85, type: !14)
!167 = !DILocation(line: 85, column: 28, scope: !165)
!168 = !DILocation(line: 86, column: 19, scope: !165)
!169 = !DILocation(line: 86, column: 17, scope: !165)
!170 = !DILocation(line: 86, column: 23, scope: !165)
!171 = !DILocation(line: 86, column: 21, scope: !165)
!172 = !DILocation(line: 86, column: 35, scope: !165)
!173 = !DILocation(line: 86, column: 37, scope: !165)
!174 = !DILocation(line: 86, column: 46, scope: !165)
!175 = !DILocation(line: 86, column: 48, scope: !165)
!176 = !DILocation(line: 86, column: 26, scope: !165)
!177 = !DILocation(line: 86, column: 5, scope: !165)
!178 = distinct !DISubprogram(name: "logexp", scope: !11, file: !11, line: 90, type: !12, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!179 = !DILocalVariable(name: "x", arg: 1, scope: !178, file: !11, line: 90, type: !14)
!180 = !DILocation(line: 90, column: 22, scope: !178)
!181 = !DILocation(line: 91, column: 20, scope: !178)
!182 = !DILocation(line: 91, column: 16, scope: !178)
!183 = !DILocation(line: 91, column: 12, scope: !178)
!184 = !DILocation(line: 91, column: 5, scope: !178)
!185 = distinct !DISubprogram(name: "sine", scope: !11, file: !11, line: 95, type: !12, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!186 = !DILocalVariable(name: "x", arg: 1, scope: !185, file: !11, line: 95, type: !14)
!187 = !DILocation(line: 95, column: 20, scope: !185)
!188 = !DILocation(line: 96, column: 12, scope: !185)
!189 = !DILocation(line: 96, column: 17, scope: !185)
!190 = !DILocation(line: 96, column: 21, scope: !185)
!191 = !DILocation(line: 96, column: 19, scope: !185)
!192 = !DILocation(line: 96, column: 25, scope: !185)
!193 = !DILocation(line: 96, column: 23, scope: !185)
!194 = !DILocation(line: 96, column: 28, scope: !185)
!195 = !DILocation(line: 96, column: 37, scope: !185)
!196 = !DILocation(line: 96, column: 41, scope: !185)
!197 = !DILocation(line: 96, column: 39, scope: !185)
!198 = !DILocation(line: 96, column: 45, scope: !185)
!199 = !DILocation(line: 96, column: 43, scope: !185)
!200 = !DILocation(line: 96, column: 49, scope: !185)
!201 = !DILocation(line: 96, column: 47, scope: !185)
!202 = !DILocation(line: 96, column: 53, scope: !185)
!203 = !DILocation(line: 96, column: 51, scope: !185)
!204 = !DILocation(line: 96, column: 56, scope: !185)
!205 = !DILocation(line: 96, column: 67, scope: !185)
!206 = !DILocation(line: 96, column: 71, scope: !185)
!207 = !DILocation(line: 96, column: 69, scope: !185)
!208 = !DILocation(line: 96, column: 75, scope: !185)
!209 = !DILocation(line: 96, column: 73, scope: !185)
!210 = !DILocation(line: 96, column: 79, scope: !185)
!211 = !DILocation(line: 96, column: 77, scope: !185)
!212 = !DILocation(line: 96, column: 83, scope: !185)
!213 = !DILocation(line: 96, column: 81, scope: !185)
!214 = !DILocation(line: 96, column: 87, scope: !185)
!215 = !DILocation(line: 96, column: 85, scope: !185)
!216 = !DILocation(line: 96, column: 91, scope: !185)
!217 = !DILocation(line: 96, column: 89, scope: !185)
!218 = !DILocation(line: 96, column: 94, scope: !185)
!219 = !DILocation(line: 96, column: 5, scope: !185)
!220 = distinct !DISubprogram(name: "carbonGas", scope: !11, file: !11, line: 100, type: !12, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!221 = !DILocalVariable(name: "x", arg: 1, scope: !220, file: !11, line: 100, type: !14)
!222 = !DILocation(line: 100, column: 25, scope: !220)
!223 = !DILocation(line: 101, column: 47, scope: !220)
!224 = !DILocation(line: 101, column: 45, scope: !220)
!225 = !DILocation(line: 101, column: 35, scope: !220)
!226 = !DILocation(line: 101, column: 63, scope: !220)
!227 = !DILocation(line: 101, column: 61, scope: !220)
!228 = !DILocation(line: 101, column: 51, scope: !220)
!229 = !DILocation(line: 101, column: 71, scope: !220)
!230 = !DILocation(line: 101, column: 68, scope: !220)
!231 = !DILocation(line: 101, column: 5, scope: !220)
!232 = distinct !DISubprogram(name: "NMSEexample38", scope: !11, file: !11, line: 105, type: !12, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!233 = !DILocalVariable(name: "x", arg: 1, scope: !232, file: !11, line: 105, type: !14)
!234 = !DILocation(line: 105, column: 29, scope: !232)
!235 = !DILocation(line: 106, column: 15, scope: !232)
!236 = !DILocation(line: 106, column: 30, scope: !232)
!237 = !DILocation(line: 106, column: 26, scope: !232)
!238 = !DILocation(line: 106, column: 24, scope: !232)
!239 = !DILocation(line: 106, column: 43, scope: !232)
!240 = !DILocation(line: 106, column: 51, scope: !232)
!241 = !DILocation(line: 106, column: 45, scope: !232)
!242 = !DILocation(line: 106, column: 56, scope: !232)
!243 = !DILocation(line: 106, column: 5, scope: !232)
!244 = distinct !DISubprogram(name: "NMSEproblem334", scope: !11, file: !11, line: 110, type: !12, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!245 = !DILocalVariable(name: "x", arg: 1, scope: !244, file: !11, line: 110, type: !14)
!246 = !DILocation(line: 110, column: 30, scope: !244)
!247 = !DILocation(line: 111, column: 17, scope: !244)
!248 = !DILocation(line: 111, column: 12, scope: !244)
!249 = !DILocation(line: 111, column: 33, scope: !244)
!250 = !DILocation(line: 111, column: 28, scope: !244)
!251 = !DILocation(line: 111, column: 5, scope: !244)
!252 = distinct !DISubprogram(name: "NMSEproblem333", scope: !11, file: !11, line: 115, type: !12, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!253 = !DILocalVariable(name: "x", arg: 1, scope: !252, file: !11, line: 115, type: !14)
!254 = !DILocation(line: 115, column: 30, scope: !252)
!255 = !DILocation(line: 116, column: 21, scope: !252)
!256 = !DILocation(line: 116, column: 18, scope: !252)
!257 = !DILocation(line: 116, column: 40, scope: !252)
!258 = !DILocation(line: 116, column: 38, scope: !252)
!259 = !DILocation(line: 116, column: 54, scope: !252)
!260 = !DILocation(line: 116, column: 51, scope: !252)
!261 = !DILocation(line: 116, column: 5, scope: !252)
!262 = distinct !DISubprogram(name: "NMSEproblem331", scope: !11, file: !11, line: 120, type: !12, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!263 = !DILocalVariable(name: "x", arg: 1, scope: !262, file: !11, line: 120, type: !14)
!264 = !DILocation(line: 120, column: 30, scope: !262)
!265 = !DILocation(line: 121, column: 19, scope: !262)
!266 = !DILocation(line: 121, column: 16, scope: !262)
!267 = !DILocation(line: 121, column: 37, scope: !262)
!268 = !DILocation(line: 121, column: 35, scope: !262)
!269 = !DILocation(line: 121, column: 5, scope: !262)
!270 = distinct !DISubprogram(name: "NMSEexample36", scope: !11, file: !11, line: 125, type: !12, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!271 = !DILocalVariable(name: "x", arg: 1, scope: !270, file: !11, line: 125, type: !14)
!272 = !DILocation(line: 125, column: 29, scope: !270)
!273 = !DILocation(line: 126, column: 23, scope: !270)
!274 = !DILocation(line: 126, column: 18, scope: !270)
!275 = !DILocation(line: 126, column: 16, scope: !270)
!276 = !DILocation(line: 126, column: 39, scope: !270)
!277 = !DILocation(line: 126, column: 34, scope: !270)
!278 = !DILocation(line: 126, column: 32, scope: !270)
!279 = !DILocation(line: 126, column: 5, scope: !270)
!280 = distinct !DISubprogram(name: "NMSEexample35", scope: !11, file: !11, line: 130, type: !12, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!281 = !DILocalVariable(name: "x", arg: 1, scope: !280, file: !11, line: 130, type: !14)
!282 = !DILocation(line: 130, column: 29, scope: !280)
!283 = !DILocation(line: 131, column: 22, scope: !280)
!284 = !DILocation(line: 131, column: 18, scope: !280)
!285 = !DILocation(line: 131, column: 16, scope: !280)
!286 = !DILocation(line: 131, column: 43, scope: !280)
!287 = !DILocation(line: 131, column: 37, scope: !280)
!288 = !DILocation(line: 131, column: 5, scope: !280)
!289 = distinct !DISubprogram(name: "NMSEexample34", scope: !11, file: !11, line: 135, type: !12, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!290 = !DILocalVariable(name: "x", arg: 1, scope: !289, file: !11, line: 135, type: !14)
!291 = !DILocation(line: 135, column: 29, scope: !289)
!292 = !DILocation(line: 136, column: 23, scope: !289)
!293 = !DILocation(line: 136, column: 33, scope: !289)
!294 = !DILocation(line: 136, column: 27, scope: !289)
!295 = !DILocation(line: 136, column: 5, scope: !289)
!296 = distinct !DISubprogram(name: "NMSEexample31", scope: !11, file: !11, line: 140, type: !12, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!297 = !DILocalVariable(name: "x", arg: 1, scope: !296, file: !11, line: 140, type: !14)
!298 = !DILocation(line: 140, column: 29, scope: !296)
!299 = !DILocation(line: 141, column: 17, scope: !296)
!300 = !DILocation(line: 141, column: 12, scope: !296)
!301 = !DILocation(line: 141, column: 33, scope: !296)
!302 = !DILocation(line: 141, column: 28, scope: !296)
!303 = !DILocation(line: 141, column: 5, scope: !296)
!304 = distinct !DISubprogram(name: "test05_nonlin1_r4", scope: !11, file: !11, line: 145, type: !12, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!305 = !DILocalVariable(name: "x", arg: 1, scope: !304, file: !11, line: 145, type: !14)
!306 = !DILocation(line: 145, column: 33, scope: !304)
!307 = !DILocation(line: 146, column: 13, scope: !304)
!308 = !DILocation(line: 146, column: 25, scope: !304)
!309 = !DILocation(line: 146, column: 29, scope: !304)
!310 = !DILocation(line: 146, column: 27, scope: !304)
!311 = !DILocation(line: 146, column: 22, scope: !304)
!312 = !DILocation(line: 146, column: 5, scope: !304)
!313 = distinct !DISubprogram(name: "test05_nonlin1_test2", scope: !11, file: !11, line: 150, type: !12, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!314 = !DILocalVariable(name: "x", arg: 1, scope: !313, file: !11, line: 150, type: !14)
!315 = !DILocation(line: 150, column: 36, scope: !313)
!316 = !DILocation(line: 151, column: 19, scope: !313)
!317 = !DILocation(line: 151, column: 16, scope: !313)
!318 = !DILocation(line: 151, column: 5, scope: !313)
!319 = distinct !DISubprogram(name: "intro_example_mixed", scope: !11, file: !11, line: 155, type: !12, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!320 = !DILocalVariable(name: "x", arg: 1, scope: !319, file: !11, line: 155, type: !14)
!321 = !DILocation(line: 155, column: 35, scope: !319)
!322 = !DILocation(line: 156, column: 12, scope: !319)
!323 = !DILocation(line: 156, column: 17, scope: !319)
!324 = !DILocation(line: 156, column: 14, scope: !319)
!325 = !DILocation(line: 156, column: 5, scope: !319)
!326 = distinct !DISubprogram(name: "sineOrder3", scope: !11, file: !11, line: 160, type: !12, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!327 = !DILocalVariable(name: "x", arg: 1, scope: !326, file: !11, line: 160, type: !14)
!328 = !DILocation(line: 160, column: 26, scope: !326)
!329 = !DILocation(line: 161, column: 33, scope: !326)
!330 = !DILocation(line: 161, column: 31, scope: !326)
!331 = !DILocation(line: 161, column: 62, scope: !326)
!332 = !DILocation(line: 161, column: 66, scope: !326)
!333 = !DILocation(line: 161, column: 64, scope: !326)
!334 = !DILocation(line: 161, column: 70, scope: !326)
!335 = !DILocation(line: 161, column: 68, scope: !326)
!336 = !DILocation(line: 161, column: 59, scope: !326)
!337 = !DILocation(line: 161, column: 5, scope: !326)
!338 = distinct !DISubprogram(name: "bsplines3", scope: !11, file: !11, line: 165, type: !12, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!339 = !DILocalVariable(name: "x", arg: 1, scope: !338, file: !11, line: 165, type: !14)
!340 = !DILocation(line: 165, column: 25, scope: !338)
!341 = !DILocation(line: 166, column: 14, scope: !338)
!342 = !DILocation(line: 166, column: 13, scope: !338)
!343 = !DILocation(line: 166, column: 18, scope: !338)
!344 = !DILocation(line: 166, column: 16, scope: !338)
!345 = !DILocation(line: 166, column: 22, scope: !338)
!346 = !DILocation(line: 166, column: 20, scope: !338)
!347 = !DILocation(line: 166, column: 25, scope: !338)
!348 = !DILocation(line: 166, column: 5, scope: !338)
!349 = distinct !DISubprogram(name: "NMSEexample310", scope: !11, file: !11, line: 170, type: !12, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!350 = !DILocalVariable(name: "x", arg: 1, scope: !349, file: !11, line: 170, type: !14)
!351 = !DILocation(line: 170, column: 30, scope: !349)
!352 = !DILocation(line: 171, column: 22, scope: !349)
!353 = !DILocation(line: 171, column: 12, scope: !349)
!354 = !DILocation(line: 171, column: 37, scope: !349)
!355 = !DILocation(line: 171, column: 27, scope: !349)
!356 = !DILocation(line: 171, column: 25, scope: !349)
!357 = !DILocation(line: 171, column: 5, scope: !349)
!358 = distinct !DISubprogram(name: "NMSEproblem343", scope: !11, file: !11, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!359 = !DILocalVariable(name: "x", arg: 1, scope: !358, file: !11, line: 175, type: !14)
!360 = !DILocation(line: 175, column: 30, scope: !358)
!361 = !DILocation(line: 176, column: 23, scope: !358)
!362 = !DILocation(line: 176, column: 35, scope: !358)
!363 = !DILocation(line: 176, column: 26, scope: !358)
!364 = !DILocation(line: 176, column: 5, scope: !358)
