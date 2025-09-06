; ModuleID = '/PI-detector/external/hsed/hsed.c'
source_filename = "/PI-detector/external/hsed/hsed.c"
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
  %5 = call double @cos(double noundef %4) #4, !dbg !21
  %6 = fsub double %5, 5.000000e-01, !dbg !22
  store double %6, ptr %3, align 8, !dbg !19
  %7 = load double, ptr %3, align 8, !dbg !23
  %8 = fadd double %7, 1.000000e+10, !dbg !24
  store double %8, ptr %3, align 8, !dbg !25
  %9 = load double, ptr %3, align 8, !dbg !26
  ret double %9, !dbg !27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @sqroot(double noundef %0) #0 !dbg !28 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load double, ptr %2, align 8, !dbg !31
  %4 = fmul double 5.000000e-01, %3, !dbg !32
  %5 = fadd double 1.000000e+00, %4, !dbg !33
  %6 = load double, ptr %2, align 8, !dbg !34
  %7 = fmul double 1.250000e-01, %6, !dbg !35
  %8 = load double, ptr %2, align 8, !dbg !36
  %9 = fmul double %7, %8, !dbg !37
  %10 = fsub double %5, %9, !dbg !38
  %11 = load double, ptr %2, align 8, !dbg !39
  %12 = fmul double 6.250000e-02, %11, !dbg !40
  %13 = load double, ptr %2, align 8, !dbg !41
  %14 = fmul double %12, %13, !dbg !42
  %15 = load double, ptr %2, align 8, !dbg !43
  %16 = fmul double %14, %15, !dbg !44
  %17 = fadd double %10, %16, !dbg !45
  %18 = load double, ptr %2, align 8, !dbg !46
  %19 = fmul double 3.906250e-02, %18, !dbg !47
  %20 = load double, ptr %2, align 8, !dbg !48
  %21 = fmul double %19, %20, !dbg !49
  %22 = load double, ptr %2, align 8, !dbg !50
  %23 = fmul double %21, %22, !dbg !51
  %24 = load double, ptr %2, align 8, !dbg !52
  %25 = fmul double %23, %24, !dbg !53
  %26 = fsub double %17, %25, !dbg !54
  ret double %26, !dbg !55
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sqrt_add(double noundef %0) #0 !dbg !56 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !57, metadata !DIExpression()), !dbg !58
  %4 = load double, ptr %3, align 8, !dbg !59
  %5 = fcmp olt double %4, 1.000000e+00, !dbg !61
  br i1 %5, label %6, label %7, !dbg !62

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !63
  br label %15, !dbg !63

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !64
  %9 = fadd double %8, 1.000000e+00, !dbg !65
  %10 = call double @sqrt(double noundef %9) #4, !dbg !66
  %11 = load double, ptr %3, align 8, !dbg !67
  %12 = call double @sqrt(double noundef %11) #4, !dbg !68
  %13 = fadd double %10, %12, !dbg !69
  %14 = fdiv double 1.000000e+00, %13, !dbg !70
  store double %14, ptr %2, align 8, !dbg !71
  br label %15, !dbg !71

15:                                               ; preds = %7, %6
  %16 = load double, ptr %2, align 8, !dbg !72
  ret double %16, !dbg !72
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @exp1x(double noundef %0) #0 !dbg !73 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !74, metadata !DIExpression()), !dbg !75
  %4 = load double, ptr %3, align 8, !dbg !76
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !78
  br i1 %5, label %6, label %7, !dbg !79

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !80
  br label %13, !dbg !80

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !81
  %9 = call double @exp(double noundef %8) #4, !dbg !82
  %10 = fsub double %9, 1.000000e+00, !dbg !83
  %11 = load double, ptr %3, align 8, !dbg !84
  %12 = fdiv double %10, %11, !dbg !85
  store double %12, ptr %2, align 8, !dbg !86
  br label %13, !dbg !86

13:                                               ; preds = %7, %6
  %14 = load double, ptr %2, align 8, !dbg !87
  ret double %14, !dbg !87
}

; Function Attrs: nounwind
declare double @exp(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @exp1x_log(double noundef %0) #0 !dbg !88 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !89, metadata !DIExpression()), !dbg !90
  %3 = load double, ptr %2, align 8, !dbg !91
  %4 = call double @exp(double noundef %3) #4, !dbg !92
  %5 = fsub double %4, 1.000000e+00, !dbg !93
  %6 = load double, ptr %2, align 8, !dbg !94
  %7 = call double @exp(double noundef %6) #4, !dbg !95
  %8 = call double @log(double noundef %7) #4, !dbg !96
  %9 = fdiv double %5, %8, !dbg !97
  ret double %9, !dbg !98
}

; Function Attrs: nounwind
declare double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample37(double noundef %0) #0 !dbg !99 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !101
  %3 = load double, ptr %2, align 8, !dbg !102
  %4 = call double @exp(double noundef %3) #4, !dbg !103
  %5 = fsub double %4, 1.000000e+00, !dbg !104
  ret double %5, !dbg !105
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem336(double noundef %0) #0 !dbg !106 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !107, metadata !DIExpression()), !dbg !108
  %4 = load double, ptr %3, align 8, !dbg !109
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !111
  br i1 %5, label %6, label %7, !dbg !112

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !113
  br label %14, !dbg !113

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !114
  %9 = fadd double %8, 1.000000e+00, !dbg !115
  %10 = call double @log(double noundef %9) #4, !dbg !116
  %11 = load double, ptr %3, align 8, !dbg !117
  %12 = call double @log(double noundef %11) #4, !dbg !118
  %13 = fsub double %10, %12, !dbg !119
  store double %13, ptr %2, align 8, !dbg !120
  br label %14, !dbg !120

14:                                               ; preds = %7, %6
  %15 = load double, ptr %2, align 8, !dbg !121
  ret double %15, !dbg !121
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample39(double noundef %0) #0 !dbg !122 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !123, metadata !DIExpression()), !dbg !124
  %4 = load double, ptr %3, align 8, !dbg !125
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !127
  br i1 %5, label %6, label %7, !dbg !128

6:                                                ; preds = %1
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !129
  br label %14, !dbg !129

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8, !dbg !130
  %9 = fdiv double 1.000000e+00, %8, !dbg !131
  %10 = load double, ptr %3, align 8, !dbg !132
  %11 = call double @tan(double noundef %10) #4, !dbg !133
  %12 = fdiv double 1.000000e+00, %11, !dbg !134
  %13 = fsub double %9, %12, !dbg !135
  store double %13, ptr %2, align 8, !dbg !136
  br label %14, !dbg !136

14:                                               ; preds = %7, %6
  %15 = load double, ptr %2, align 8, !dbg !137
  ret double %15, !dbg !137
}

; Function Attrs: nounwind
declare double @tan(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem341(double noundef %0) #0 !dbg !138 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !139, metadata !DIExpression()), !dbg !140
  %3 = load double, ptr %2, align 8, !dbg !141
  %4 = call double @cos(double noundef %3) #4, !dbg !142
  %5 = fsub double 1.000000e+00, %4, !dbg !143
  %6 = load double, ptr %2, align 8, !dbg !144
  %7 = load double, ptr %2, align 8, !dbg !145
  %8 = fmul double %6, %7, !dbg !146
  %9 = fdiv double %5, %8, !dbg !147
  ret double %9, !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEsection311(double noundef %0) #0 !dbg !149 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !150, metadata !DIExpression()), !dbg !151
  %3 = load double, ptr %2, align 8, !dbg !152
  %4 = call double @exp(double noundef %3) #4, !dbg !153
  %5 = load double, ptr %2, align 8, !dbg !154
  %6 = call double @exp(double noundef %5) #4, !dbg !155
  %7 = fsub double %6, 1.000000e+00, !dbg !156
  %8 = fdiv double %4, %7, !dbg !157
  ret double %8, !dbg !158
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem345(double noundef %0) #0 !dbg !159 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = load double, ptr %2, align 8, !dbg !162
  %4 = load double, ptr %2, align 8, !dbg !163
  %5 = call double @sin(double noundef %4) #4, !dbg !164
  %6 = fsub double %3, %5, !dbg !165
  %7 = load double, ptr %2, align 8, !dbg !166
  %8 = load double, ptr %2, align 8, !dbg !167
  %9 = call double @tan(double noundef %8) #4, !dbg !168
  %10 = fsub double %7, %9, !dbg !169
  %11 = fdiv double %6, %10, !dbg !170
  ret double %11, !dbg !171
}

; Function Attrs: nounwind
declare double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem337(double noundef %0) #0 !dbg !172 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !173, metadata !DIExpression()), !dbg !174
  %3 = load double, ptr %2, align 8, !dbg !175
  %4 = call double @exp(double noundef %3) #4, !dbg !176
  %5 = fsub double %4, 2.000000e+00, !dbg !177
  %6 = load double, ptr %2, align 8, !dbg !178
  %7 = fneg double %6, !dbg !179
  %8 = call double @exp(double noundef %7) #4, !dbg !180
  %9 = fadd double %5, %8, !dbg !181
  ret double %9, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @verhulst(double noundef %0) #0 !dbg !183 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !184, metadata !DIExpression()), !dbg !185
  %3 = load double, ptr %2, align 8, !dbg !186
  %4 = fmul double 4.000000e+00, %3, !dbg !187
  %5 = load double, ptr %2, align 8, !dbg !188
  %6 = fdiv double %5, 1.110000e+00, !dbg !189
  %7 = fadd double %6, 1.000000e+00, !dbg !190
  %8 = fdiv double %4, %7, !dbg !191
  ret double %8, !dbg !192
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @predatorPrey(double noundef %0) #0 !dbg !193 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !194, metadata !DIExpression()), !dbg !195
  %3 = load double, ptr %2, align 8, !dbg !196
  %4 = fmul double 4.000000e+00, %3, !dbg !197
  %5 = load double, ptr %2, align 8, !dbg !198
  %6 = fmul double %4, %5, !dbg !199
  %7 = load double, ptr %2, align 8, !dbg !200
  %8 = fdiv double %7, 1.110000e+00, !dbg !201
  %9 = fadd double 1.000000e+00, %8, !dbg !202
  %10 = load double, ptr %2, align 8, !dbg !203
  %11 = fdiv double %10, 1.110000e+00, !dbg !204
  %12 = fadd double %9, %11, !dbg !205
  %13 = fdiv double %6, %12, !dbg !206
  ret double %13, !dbg !207
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @logexp(double noundef %0) #0 !dbg !208 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !209, metadata !DIExpression()), !dbg !210
  %3 = load double, ptr %2, align 8, !dbg !211
  %4 = call double @exp(double noundef %3) #4, !dbg !212
  %5 = fsub double %4, 1.000000e+00, !dbg !213
  %6 = call double @log(double noundef %5) #4, !dbg !214
  ret double %6, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sine(double noundef %0) #0 !dbg !216 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !217, metadata !DIExpression()), !dbg !218
  %3 = load double, ptr %2, align 8, !dbg !219
  %4 = load double, ptr %2, align 8, !dbg !220
  %5 = load double, ptr %2, align 8, !dbg !221
  %6 = fmul double %4, %5, !dbg !222
  %7 = load double, ptr %2, align 8, !dbg !223
  %8 = fmul double %6, %7, !dbg !224
  %9 = fdiv double %8, 6.000000e+00, !dbg !225
  %10 = fsub double %3, %9, !dbg !226
  %11 = load double, ptr %2, align 8, !dbg !227
  %12 = load double, ptr %2, align 8, !dbg !228
  %13 = fmul double %11, %12, !dbg !229
  %14 = load double, ptr %2, align 8, !dbg !230
  %15 = fmul double %13, %14, !dbg !231
  %16 = load double, ptr %2, align 8, !dbg !232
  %17 = fmul double %15, %16, !dbg !233
  %18 = load double, ptr %2, align 8, !dbg !234
  %19 = fmul double %17, %18, !dbg !235
  %20 = fdiv double %19, 1.200000e+02, !dbg !236
  %21 = fadd double %10, %20, !dbg !237
  %22 = load double, ptr %2, align 8, !dbg !238
  %23 = load double, ptr %2, align 8, !dbg !239
  %24 = fmul double %22, %23, !dbg !240
  %25 = load double, ptr %2, align 8, !dbg !241
  %26 = fmul double %24, %25, !dbg !242
  %27 = load double, ptr %2, align 8, !dbg !243
  %28 = fmul double %26, %27, !dbg !244
  %29 = load double, ptr %2, align 8, !dbg !245
  %30 = fmul double %28, %29, !dbg !246
  %31 = load double, ptr %2, align 8, !dbg !247
  %32 = fmul double %30, %31, !dbg !248
  %33 = load double, ptr %2, align 8, !dbg !249
  %34 = fmul double %32, %33, !dbg !250
  %35 = fdiv double %34, 5.040000e+03, !dbg !251
  %36 = fsub double %21, %35, !dbg !252
  ret double %36, !dbg !253
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @carbonGas(double noundef %0) #0 !dbg !254 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !255, metadata !DIExpression()), !dbg !256
  %3 = load double, ptr %2, align 8, !dbg !257
  %4 = fdiv double 1.000000e+03, %3, !dbg !258
  %5 = fmul double 4.010000e-01, %4, !dbg !259
  %6 = load double, ptr %2, align 8, !dbg !260
  %7 = fdiv double 1.000000e+03, %6, !dbg !261
  %8 = fmul double %5, %7, !dbg !262
  %9 = fadd double 3.500000e+07, %8, !dbg !263
  %10 = load double, ptr %2, align 8, !dbg !264
  %11 = fsub double %10, 4.270000e-02, !dbg !265
  %12 = fmul double %9, %11, !dbg !266
  %13 = fsub double %12, 0x3C5319F3D8BDD36B, !dbg !267
  ret double %13, !dbg !268
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample38(double noundef %0) #0 !dbg !269 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !271
  %3 = load double, ptr %2, align 8, !dbg !272
  %4 = fadd double %3, 1.000000e+00, !dbg !273
  %5 = load double, ptr %2, align 8, !dbg !274
  %6 = fadd double %5, 1.000000e+00, !dbg !275
  %7 = call double @log(double noundef %6) #4, !dbg !276
  %8 = fmul double %4, %7, !dbg !277
  %9 = load double, ptr %2, align 8, !dbg !278
  %10 = load double, ptr %2, align 8, !dbg !279
  %11 = call double @log(double noundef %10) #4, !dbg !280
  %12 = fmul double %9, %11, !dbg !281
  %13 = fsub double %8, %12, !dbg !282
  %14 = fsub double %13, 1.000000e+00, !dbg !283
  ret double %14, !dbg !284
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem334(double noundef %0) #0 !dbg !285 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !286, metadata !DIExpression()), !dbg !287
  %3 = load double, ptr %2, align 8, !dbg !288
  %4 = fadd double %3, 1.000000e+00, !dbg !289
  %5 = call double @cbrt(double noundef %4) #5, !dbg !290
  %6 = load double, ptr %2, align 8, !dbg !291
  %7 = call double @cbrt(double noundef %6) #5, !dbg !292
  %8 = fsub double %5, %7, !dbg !293
  ret double %8, !dbg !294
}

; Function Attrs: nounwind willreturn memory(none)
declare double @cbrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem333(double noundef %0) #0 !dbg !295 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load double, ptr %2, align 8, !dbg !298
  %4 = fadd double %3, 1.000000e+00, !dbg !299
  %5 = fdiv double 1.000000e+00, %4, !dbg !300
  %6 = load double, ptr %2, align 8, !dbg !301
  %7 = fdiv double 2.000000e+00, %6, !dbg !302
  %8 = fsub double %5, %7, !dbg !303
  %9 = load double, ptr %2, align 8, !dbg !304
  %10 = fsub double %9, 1.000000e+00, !dbg !305
  %11 = fdiv double 1.000000e+00, %10, !dbg !306
  %12 = fadd double %8, %11, !dbg !307
  ret double %12, !dbg !308
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem331(double noundef %0) #0 !dbg !309 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load double, ptr %2, align 8, !dbg !312
  %4 = fadd double %3, 1.000000e+00, !dbg !313
  %5 = fdiv double 1.000000e+00, %4, !dbg !314
  %6 = load double, ptr %2, align 8, !dbg !315
  %7 = fdiv double 1.000000e+00, %6, !dbg !316
  %8 = fsub double %5, %7, !dbg !317
  ret double %8, !dbg !318
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample36(double noundef %0) #0 !dbg !319 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load double, ptr %2, align 8, !dbg !322
  %4 = call double @sqrt(double noundef %3) #4, !dbg !323
  %5 = fdiv double 1.000000e+00, %4, !dbg !324
  %6 = load double, ptr %2, align 8, !dbg !325
  %7 = fadd double %6, 1.000000e+00, !dbg !326
  %8 = call double @sqrt(double noundef %7) #4, !dbg !327
  %9 = fdiv double 1.000000e+00, %8, !dbg !328
  %10 = fsub double %5, %9, !dbg !329
  ret double %10, !dbg !330
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample35(double noundef %0) #0 !dbg !331 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load double, ptr %2, align 8, !dbg !334
  %4 = fadd double %3, 1.000000e+00, !dbg !335
  %5 = call double @tan(double noundef %4) #4, !dbg !336
  %6 = fdiv double 1.000000e+00, %5, !dbg !337
  %7 = load double, ptr %2, align 8, !dbg !338
  %8 = call double @tan(double noundef %7) #4, !dbg !339
  %9 = fdiv double 1.000000e+00, %8, !dbg !340
  %10 = fsub double %6, %9, !dbg !341
  ret double %10, !dbg !342
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample34(double noundef %0) #0 !dbg !343 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !345
  %3 = load double, ptr %2, align 8, !dbg !346
  %4 = call double @cos(double noundef %3) #4, !dbg !347
  %5 = fsub double 1.000000e+00, %4, !dbg !348
  %6 = load double, ptr %2, align 8, !dbg !349
  %7 = call double @sin(double noundef %6) #4, !dbg !350
  %8 = fdiv double %5, %7, !dbg !351
  ret double %8, !dbg !352
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample31(double noundef %0) #0 !dbg !353 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !354, metadata !DIExpression()), !dbg !355
  %3 = load double, ptr %2, align 8, !dbg !356
  %4 = fadd double %3, 1.000000e+00, !dbg !357
  %5 = call double @sqrt(double noundef %4) #4, !dbg !358
  %6 = load double, ptr %2, align 8, !dbg !359
  %7 = call double @sqrt(double noundef %6) #4, !dbg !360
  %8 = fsub double %5, %7, !dbg !361
  ret double %8, !dbg !362
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test05_nonlin1_r4(double noundef %0) #0 !dbg !363 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !364, metadata !DIExpression()), !dbg !365
  %3 = load double, ptr %2, align 8, !dbg !366
  %4 = fsub double %3, 1.000000e+00, !dbg !367
  %5 = load double, ptr %2, align 8, !dbg !368
  %6 = load double, ptr %2, align 8, !dbg !369
  %7 = fmul double %5, %6, !dbg !370
  %8 = fsub double %7, 1.000000e+00, !dbg !371
  %9 = fdiv double %4, %8, !dbg !372
  ret double %9, !dbg !373
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test05_nonlin1_test2(double noundef %0) #0 !dbg !374 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !375, metadata !DIExpression()), !dbg !376
  %3 = load double, ptr %2, align 8, !dbg !377
  %4 = fadd double %3, 1.000000e+00, !dbg !378
  %5 = fdiv double 1.000000e+00, %4, !dbg !379
  ret double %5, !dbg !380
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @intro_example_mixed(double noundef %0) #0 !dbg !381 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load double, ptr %2, align 8, !dbg !384
  %4 = load double, ptr %2, align 8, !dbg !385
  %5 = fadd double %4, 1.000000e+00, !dbg !386
  %6 = fdiv double %3, %5, !dbg !387
  ret double %6, !dbg !388
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sineOrder3(double noundef %0) #0 !dbg !389 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !390, metadata !DIExpression()), !dbg !391
  %3 = load double, ptr %2, align 8, !dbg !392
  %4 = fmul double 0x3FEE8EC8A4AEACC4, %3, !dbg !393
  %5 = load double, ptr %2, align 8, !dbg !394
  %6 = load double, ptr %2, align 8, !dbg !395
  %7 = fmul double %5, %6, !dbg !396
  %8 = load double, ptr %2, align 8, !dbg !397
  %9 = fmul double %7, %8, !dbg !398
  %10 = fmul double 0x3FC08345EB45D77F, %9, !dbg !399
  %11 = fsub double %4, %10, !dbg !400
  ret double %11, !dbg !401
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @bsplines3(double noundef %0) #0 !dbg !402 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load double, ptr %2, align 8, !dbg !405
  %4 = fneg double %3, !dbg !406
  %5 = load double, ptr %2, align 8, !dbg !407
  %6 = fmul double %4, %5, !dbg !408
  %7 = load double, ptr %2, align 8, !dbg !409
  %8 = fmul double %6, %7, !dbg !410
  %9 = fdiv double %8, 6.000000e+00, !dbg !411
  ret double %9, !dbg !412
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEexample310(double noundef %0) #0 !dbg !413 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load double, ptr %2, align 8, !dbg !416
  %4 = fsub double 1.000000e+00, %3, !dbg !417
  %5 = call double @log(double noundef %4) #4, !dbg !418
  %6 = load double, ptr %2, align 8, !dbg !419
  %7 = fadd double 1.000000e+00, %6, !dbg !420
  %8 = call double @log(double noundef %7) #4, !dbg !421
  %9 = fdiv double %5, %8, !dbg !422
  ret double %9, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NMSEproblem343(double noundef %0) #0 !dbg !424 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !426
  %3 = load double, ptr %2, align 8, !dbg !427
  %4 = fsub double 1.000000e+00, %3, !dbg !428
  %5 = load double, ptr %2, align 8, !dbg !429
  %6 = fadd double 1.000000e+00, %5, !dbg !430
  %7 = fdiv double %4, %6, !dbg !431
  %8 = call double @log(double noundef %7) #4, !dbg !432
  ret double %8, !dbg !433
}

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
!1 = !DIFile(filename: "/PI-detector/external/hsed/hsed.c", directory: "/PI-detector/build/external/hsed", checksumkind: CSK_MD5, checksum: "179bb5306fc409c387930dfddadbcd76")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 14, type: !12, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "external/hsed/hsed.c", directory: "/PI-detector", checksumkind: CSK_MD5, checksum: "179bb5306fc409c387930dfddadbcd76")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 14, type: !14)
!17 = !DILocation(line: 14, column: 19, scope: !10)
!18 = !DILocalVariable(name: "val", scope: !10, file: !11, line: 15, type: !14)
!19 = !DILocation(line: 15, column: 12, scope: !10)
!20 = !DILocation(line: 15, column: 22, scope: !10)
!21 = !DILocation(line: 15, column: 18, scope: !10)
!22 = !DILocation(line: 15, column: 25, scope: !10)
!23 = !DILocation(line: 16, column: 11, scope: !10)
!24 = !DILocation(line: 16, column: 15, scope: !10)
!25 = !DILocation(line: 16, column: 9, scope: !10)
!26 = !DILocation(line: 17, column: 12, scope: !10)
!27 = !DILocation(line: 17, column: 5, scope: !10)
!28 = distinct !DISubprogram(name: "sqroot", scope: !11, file: !11, line: 21, type: !12, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!29 = !DILocalVariable(name: "x", arg: 1, scope: !28, file: !11, line: 21, type: !14)
!30 = !DILocation(line: 21, column: 22, scope: !28)
!31 = !DILocation(line: 22, column: 24, scope: !28)
!32 = !DILocation(line: 22, column: 22, scope: !28)
!33 = !DILocation(line: 22, column: 16, scope: !28)
!34 = !DILocation(line: 22, column: 36, scope: !28)
!35 = !DILocation(line: 22, column: 34, scope: !28)
!36 = !DILocation(line: 22, column: 40, scope: !28)
!37 = !DILocation(line: 22, column: 38, scope: !28)
!38 = !DILocation(line: 22, column: 26, scope: !28)
!39 = !DILocation(line: 22, column: 53, scope: !28)
!40 = !DILocation(line: 22, column: 51, scope: !28)
!41 = !DILocation(line: 22, column: 57, scope: !28)
!42 = !DILocation(line: 22, column: 55, scope: !28)
!43 = !DILocation(line: 22, column: 61, scope: !28)
!44 = !DILocation(line: 22, column: 59, scope: !28)
!45 = !DILocation(line: 22, column: 42, scope: !28)
!46 = !DILocation(line: 22, column: 77, scope: !28)
!47 = !DILocation(line: 22, column: 75, scope: !28)
!48 = !DILocation(line: 22, column: 81, scope: !28)
!49 = !DILocation(line: 22, column: 79, scope: !28)
!50 = !DILocation(line: 22, column: 85, scope: !28)
!51 = !DILocation(line: 22, column: 83, scope: !28)
!52 = !DILocation(line: 22, column: 89, scope: !28)
!53 = !DILocation(line: 22, column: 87, scope: !28)
!54 = !DILocation(line: 22, column: 63, scope: !28)
!55 = !DILocation(line: 22, column: 5, scope: !28)
!56 = distinct !DISubprogram(name: "sqrt_add", scope: !11, file: !11, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!57 = !DILocalVariable(name: "x", arg: 1, scope: !56, file: !11, line: 26, type: !14)
!58 = !DILocation(line: 26, column: 24, scope: !56)
!59 = !DILocation(line: 27, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !11, line: 27, column: 9)
!61 = !DILocation(line: 27, column: 11, scope: !60)
!62 = !DILocation(line: 27, column: 9, scope: !56)
!63 = !DILocation(line: 27, column: 18, scope: !60)
!64 = !DILocation(line: 28, column: 24, scope: !56)
!65 = !DILocation(line: 28, column: 26, scope: !56)
!66 = !DILocation(line: 28, column: 19, scope: !56)
!67 = !DILocation(line: 28, column: 40, scope: !56)
!68 = !DILocation(line: 28, column: 35, scope: !56)
!69 = !DILocation(line: 28, column: 33, scope: !56)
!70 = !DILocation(line: 28, column: 16, scope: !56)
!71 = !DILocation(line: 28, column: 5, scope: !56)
!72 = !DILocation(line: 29, column: 1, scope: !56)
!73 = distinct !DISubprogram(name: "exp1x", scope: !11, file: !11, line: 32, type: !12, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!74 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !11, line: 32, type: !14)
!75 = !DILocation(line: 32, column: 21, scope: !73)
!76 = !DILocation(line: 33, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !11, line: 33, column: 9)
!78 = !DILocation(line: 33, column: 11, scope: !77)
!79 = !DILocation(line: 33, column: 9, scope: !73)
!80 = !DILocation(line: 33, column: 19, scope: !77)
!81 = !DILocation(line: 34, column: 17, scope: !73)
!82 = !DILocation(line: 34, column: 13, scope: !73)
!83 = !DILocation(line: 34, column: 20, scope: !73)
!84 = !DILocation(line: 34, column: 29, scope: !73)
!85 = !DILocation(line: 34, column: 27, scope: !73)
!86 = !DILocation(line: 34, column: 5, scope: !73)
!87 = !DILocation(line: 35, column: 1, scope: !73)
!88 = distinct !DISubprogram(name: "exp1x_log", scope: !11, file: !11, line: 38, type: !12, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!89 = !DILocalVariable(name: "x", arg: 1, scope: !88, file: !11, line: 38, type: !14)
!90 = !DILocation(line: 38, column: 25, scope: !88)
!91 = !DILocation(line: 39, column: 17, scope: !88)
!92 = !DILocation(line: 39, column: 13, scope: !88)
!93 = !DILocation(line: 39, column: 20, scope: !88)
!94 = !DILocation(line: 39, column: 37, scope: !88)
!95 = !DILocation(line: 39, column: 33, scope: !88)
!96 = !DILocation(line: 39, column: 29, scope: !88)
!97 = !DILocation(line: 39, column: 27, scope: !88)
!98 = !DILocation(line: 39, column: 5, scope: !88)
!99 = distinct !DISubprogram(name: "NMSEexample37", scope: !11, file: !11, line: 43, type: !12, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!100 = !DILocalVariable(name: "x", arg: 1, scope: !99, file: !11, line: 43, type: !14)
!101 = !DILocation(line: 43, column: 29, scope: !99)
!102 = !DILocation(line: 44, column: 16, scope: !99)
!103 = !DILocation(line: 44, column: 12, scope: !99)
!104 = !DILocation(line: 44, column: 19, scope: !99)
!105 = !DILocation(line: 44, column: 5, scope: !99)
!106 = distinct !DISubprogram(name: "NMSEproblem336", scope: !11, file: !11, line: 48, type: !12, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!107 = !DILocalVariable(name: "x", arg: 1, scope: !106, file: !11, line: 48, type: !14)
!108 = !DILocation(line: 48, column: 30, scope: !106)
!109 = !DILocation(line: 49, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !11, line: 49, column: 9)
!111 = !DILocation(line: 49, column: 11, scope: !110)
!112 = !DILocation(line: 49, column: 9, scope: !106)
!113 = !DILocation(line: 49, column: 19, scope: !110)
!114 = !DILocation(line: 50, column: 16, scope: !106)
!115 = !DILocation(line: 50, column: 18, scope: !106)
!116 = !DILocation(line: 50, column: 12, scope: !106)
!117 = !DILocation(line: 50, column: 31, scope: !106)
!118 = !DILocation(line: 50, column: 27, scope: !106)
!119 = !DILocation(line: 50, column: 25, scope: !106)
!120 = !DILocation(line: 50, column: 5, scope: !106)
!121 = !DILocation(line: 51, column: 1, scope: !106)
!122 = distinct !DISubprogram(name: "NMSEexample39", scope: !11, file: !11, line: 54, type: !12, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!123 = !DILocalVariable(name: "x", arg: 1, scope: !122, file: !11, line: 54, type: !14)
!124 = !DILocation(line: 54, column: 29, scope: !122)
!125 = !DILocation(line: 55, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !11, line: 55, column: 9)
!127 = !DILocation(line: 55, column: 11, scope: !126)
!128 = !DILocation(line: 55, column: 9, scope: !122)
!129 = !DILocation(line: 55, column: 19, scope: !126)
!130 = !DILocation(line: 56, column: 18, scope: !122)
!131 = !DILocation(line: 56, column: 16, scope: !122)
!132 = !DILocation(line: 56, column: 32, scope: !122)
!133 = !DILocation(line: 56, column: 28, scope: !122)
!134 = !DILocation(line: 56, column: 26, scope: !122)
!135 = !DILocation(line: 56, column: 20, scope: !122)
!136 = !DILocation(line: 56, column: 5, scope: !122)
!137 = !DILocation(line: 57, column: 1, scope: !122)
!138 = distinct !DISubprogram(name: "NMSEproblem341", scope: !11, file: !11, line: 60, type: !12, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!139 = !DILocalVariable(name: "x", arg: 1, scope: !138, file: !11, line: 60, type: !14)
!140 = !DILocation(line: 60, column: 30, scope: !138)
!141 = !DILocation(line: 61, column: 23, scope: !138)
!142 = !DILocation(line: 61, column: 19, scope: !138)
!143 = !DILocation(line: 61, column: 17, scope: !138)
!144 = !DILocation(line: 61, column: 30, scope: !138)
!145 = !DILocation(line: 61, column: 34, scope: !138)
!146 = !DILocation(line: 61, column: 32, scope: !138)
!147 = !DILocation(line: 61, column: 27, scope: !138)
!148 = !DILocation(line: 61, column: 5, scope: !138)
!149 = distinct !DISubprogram(name: "NMSEsection311", scope: !11, file: !11, line: 65, type: !12, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!150 = !DILocalVariable(name: "x", arg: 1, scope: !149, file: !11, line: 65, type: !14)
!151 = !DILocation(line: 65, column: 30, scope: !149)
!152 = !DILocation(line: 66, column: 16, scope: !149)
!153 = !DILocation(line: 66, column: 12, scope: !149)
!154 = !DILocation(line: 66, column: 26, scope: !149)
!155 = !DILocation(line: 66, column: 22, scope: !149)
!156 = !DILocation(line: 66, column: 29, scope: !149)
!157 = !DILocation(line: 66, column: 19, scope: !149)
!158 = !DILocation(line: 66, column: 5, scope: !149)
!159 = distinct !DISubprogram(name: "NMSEproblem345", scope: !11, file: !11, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!160 = !DILocalVariable(name: "x", arg: 1, scope: !159, file: !11, line: 70, type: !14)
!161 = !DILocation(line: 70, column: 30, scope: !159)
!162 = !DILocation(line: 71, column: 13, scope: !159)
!163 = !DILocation(line: 71, column: 21, scope: !159)
!164 = !DILocation(line: 71, column: 17, scope: !159)
!165 = !DILocation(line: 71, column: 15, scope: !159)
!166 = !DILocation(line: 71, column: 28, scope: !159)
!167 = !DILocation(line: 71, column: 36, scope: !159)
!168 = !DILocation(line: 71, column: 32, scope: !159)
!169 = !DILocation(line: 71, column: 30, scope: !159)
!170 = !DILocation(line: 71, column: 25, scope: !159)
!171 = !DILocation(line: 71, column: 5, scope: !159)
!172 = distinct !DISubprogram(name: "NMSEproblem337", scope: !11, file: !11, line: 75, type: !12, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!173 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !11, line: 75, type: !14)
!174 = !DILocation(line: 75, column: 30, scope: !172)
!175 = !DILocation(line: 76, column: 16, scope: !172)
!176 = !DILocation(line: 76, column: 12, scope: !172)
!177 = !DILocation(line: 76, column: 19, scope: !172)
!178 = !DILocation(line: 76, column: 32, scope: !172)
!179 = !DILocation(line: 76, column: 31, scope: !172)
!180 = !DILocation(line: 76, column: 27, scope: !172)
!181 = !DILocation(line: 76, column: 25, scope: !172)
!182 = !DILocation(line: 76, column: 5, scope: !172)
!183 = distinct !DISubprogram(name: "verhulst", scope: !11, file: !11, line: 80, type: !12, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!184 = !DILocalVariable(name: "x", arg: 1, scope: !183, file: !11, line: 80, type: !14)
!185 = !DILocation(line: 80, column: 24, scope: !183)
!186 = !DILocation(line: 81, column: 19, scope: !183)
!187 = !DILocation(line: 81, column: 17, scope: !183)
!188 = !DILocation(line: 81, column: 25, scope: !183)
!189 = !DILocation(line: 81, column: 27, scope: !183)
!190 = !DILocation(line: 81, column: 34, scope: !183)
!191 = !DILocation(line: 81, column: 22, scope: !183)
!192 = !DILocation(line: 81, column: 5, scope: !183)
!193 = distinct !DISubprogram(name: "predatorPrey", scope: !11, file: !11, line: 85, type: !12, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!194 = !DILocalVariable(name: "x", arg: 1, scope: !193, file: !11, line: 85, type: !14)
!195 = !DILocation(line: 85, column: 28, scope: !193)
!196 = !DILocation(line: 86, column: 19, scope: !193)
!197 = !DILocation(line: 86, column: 17, scope: !193)
!198 = !DILocation(line: 86, column: 23, scope: !193)
!199 = !DILocation(line: 86, column: 21, scope: !193)
!200 = !DILocation(line: 86, column: 35, scope: !193)
!201 = !DILocation(line: 86, column: 37, scope: !193)
!202 = !DILocation(line: 86, column: 33, scope: !193)
!203 = !DILocation(line: 86, column: 46, scope: !193)
!204 = !DILocation(line: 86, column: 48, scope: !193)
!205 = !DILocation(line: 86, column: 44, scope: !193)
!206 = !DILocation(line: 86, column: 26, scope: !193)
!207 = !DILocation(line: 86, column: 5, scope: !193)
!208 = distinct !DISubprogram(name: "logexp", scope: !11, file: !11, line: 90, type: !12, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!209 = !DILocalVariable(name: "x", arg: 1, scope: !208, file: !11, line: 90, type: !14)
!210 = !DILocation(line: 90, column: 22, scope: !208)
!211 = !DILocation(line: 91, column: 20, scope: !208)
!212 = !DILocation(line: 91, column: 16, scope: !208)
!213 = !DILocation(line: 91, column: 23, scope: !208)
!214 = !DILocation(line: 91, column: 12, scope: !208)
!215 = !DILocation(line: 91, column: 5, scope: !208)
!216 = distinct !DISubprogram(name: "sine", scope: !11, file: !11, line: 95, type: !12, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!217 = !DILocalVariable(name: "x", arg: 1, scope: !216, file: !11, line: 95, type: !14)
!218 = !DILocation(line: 95, column: 20, scope: !216)
!219 = !DILocation(line: 96, column: 12, scope: !216)
!220 = !DILocation(line: 96, column: 17, scope: !216)
!221 = !DILocation(line: 96, column: 21, scope: !216)
!222 = !DILocation(line: 96, column: 19, scope: !216)
!223 = !DILocation(line: 96, column: 25, scope: !216)
!224 = !DILocation(line: 96, column: 23, scope: !216)
!225 = !DILocation(line: 96, column: 28, scope: !216)
!226 = !DILocation(line: 96, column: 14, scope: !216)
!227 = !DILocation(line: 96, column: 37, scope: !216)
!228 = !DILocation(line: 96, column: 41, scope: !216)
!229 = !DILocation(line: 96, column: 39, scope: !216)
!230 = !DILocation(line: 96, column: 45, scope: !216)
!231 = !DILocation(line: 96, column: 43, scope: !216)
!232 = !DILocation(line: 96, column: 49, scope: !216)
!233 = !DILocation(line: 96, column: 47, scope: !216)
!234 = !DILocation(line: 96, column: 53, scope: !216)
!235 = !DILocation(line: 96, column: 51, scope: !216)
!236 = !DILocation(line: 96, column: 56, scope: !216)
!237 = !DILocation(line: 96, column: 34, scope: !216)
!238 = !DILocation(line: 96, column: 67, scope: !216)
!239 = !DILocation(line: 96, column: 71, scope: !216)
!240 = !DILocation(line: 96, column: 69, scope: !216)
!241 = !DILocation(line: 96, column: 75, scope: !216)
!242 = !DILocation(line: 96, column: 73, scope: !216)
!243 = !DILocation(line: 96, column: 79, scope: !216)
!244 = !DILocation(line: 96, column: 77, scope: !216)
!245 = !DILocation(line: 96, column: 83, scope: !216)
!246 = !DILocation(line: 96, column: 81, scope: !216)
!247 = !DILocation(line: 96, column: 87, scope: !216)
!248 = !DILocation(line: 96, column: 85, scope: !216)
!249 = !DILocation(line: 96, column: 91, scope: !216)
!250 = !DILocation(line: 96, column: 89, scope: !216)
!251 = !DILocation(line: 96, column: 94, scope: !216)
!252 = !DILocation(line: 96, column: 64, scope: !216)
!253 = !DILocation(line: 96, column: 5, scope: !216)
!254 = distinct !DISubprogram(name: "carbonGas", scope: !11, file: !11, line: 100, type: !12, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!255 = !DILocalVariable(name: "x", arg: 1, scope: !254, file: !11, line: 100, type: !14)
!256 = !DILocation(line: 100, column: 25, scope: !254)
!257 = !DILocation(line: 101, column: 47, scope: !254)
!258 = !DILocation(line: 101, column: 45, scope: !254)
!259 = !DILocation(line: 101, column: 35, scope: !254)
!260 = !DILocation(line: 101, column: 63, scope: !254)
!261 = !DILocation(line: 101, column: 61, scope: !254)
!262 = !DILocation(line: 101, column: 51, scope: !254)
!263 = !DILocation(line: 101, column: 25, scope: !254)
!264 = !DILocation(line: 101, column: 71, scope: !254)
!265 = !DILocation(line: 101, column: 73, scope: !254)
!266 = !DILocation(line: 101, column: 68, scope: !254)
!267 = !DILocation(line: 101, column: 96, scope: !254)
!268 = !DILocation(line: 101, column: 5, scope: !254)
!269 = distinct !DISubprogram(name: "NMSEexample38", scope: !11, file: !11, line: 105, type: !12, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!270 = !DILocalVariable(name: "x", arg: 1, scope: !269, file: !11, line: 105, type: !14)
!271 = !DILocation(line: 105, column: 29, scope: !269)
!272 = !DILocation(line: 106, column: 15, scope: !269)
!273 = !DILocation(line: 106, column: 17, scope: !269)
!274 = !DILocation(line: 106, column: 30, scope: !269)
!275 = !DILocation(line: 106, column: 32, scope: !269)
!276 = !DILocation(line: 106, column: 26, scope: !269)
!277 = !DILocation(line: 106, column: 24, scope: !269)
!278 = !DILocation(line: 106, column: 43, scope: !269)
!279 = !DILocation(line: 106, column: 51, scope: !269)
!280 = !DILocation(line: 106, column: 47, scope: !269)
!281 = !DILocation(line: 106, column: 45, scope: !269)
!282 = !DILocation(line: 106, column: 40, scope: !269)
!283 = !DILocation(line: 106, column: 56, scope: !269)
!284 = !DILocation(line: 106, column: 5, scope: !269)
!285 = distinct !DISubprogram(name: "NMSEproblem334", scope: !11, file: !11, line: 110, type: !12, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!286 = !DILocalVariable(name: "x", arg: 1, scope: !285, file: !11, line: 110, type: !14)
!287 = !DILocation(line: 110, column: 30, scope: !285)
!288 = !DILocation(line: 111, column: 17, scope: !285)
!289 = !DILocation(line: 111, column: 19, scope: !285)
!290 = !DILocation(line: 111, column: 12, scope: !285)
!291 = !DILocation(line: 111, column: 33, scope: !285)
!292 = !DILocation(line: 111, column: 28, scope: !285)
!293 = !DILocation(line: 111, column: 26, scope: !285)
!294 = !DILocation(line: 111, column: 5, scope: !285)
!295 = distinct !DISubprogram(name: "NMSEproblem333", scope: !11, file: !11, line: 115, type: !12, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!296 = !DILocalVariable(name: "x", arg: 1, scope: !295, file: !11, line: 115, type: !14)
!297 = !DILocation(line: 115, column: 30, scope: !295)
!298 = !DILocation(line: 116, column: 21, scope: !295)
!299 = !DILocation(line: 116, column: 23, scope: !295)
!300 = !DILocation(line: 116, column: 18, scope: !295)
!301 = !DILocation(line: 116, column: 40, scope: !295)
!302 = !DILocation(line: 116, column: 38, scope: !295)
!303 = !DILocation(line: 116, column: 31, scope: !295)
!304 = !DILocation(line: 116, column: 54, scope: !295)
!305 = !DILocation(line: 116, column: 56, scope: !295)
!306 = !DILocation(line: 116, column: 51, scope: !295)
!307 = !DILocation(line: 116, column: 44, scope: !295)
!308 = !DILocation(line: 116, column: 5, scope: !295)
!309 = distinct !DISubprogram(name: "NMSEproblem331", scope: !11, file: !11, line: 120, type: !12, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!310 = !DILocalVariable(name: "x", arg: 1, scope: !309, file: !11, line: 120, type: !14)
!311 = !DILocation(line: 120, column: 30, scope: !309)
!312 = !DILocation(line: 121, column: 19, scope: !309)
!313 = !DILocation(line: 121, column: 21, scope: !309)
!314 = !DILocation(line: 121, column: 16, scope: !309)
!315 = !DILocation(line: 121, column: 37, scope: !309)
!316 = !DILocation(line: 121, column: 35, scope: !309)
!317 = !DILocation(line: 121, column: 28, scope: !309)
!318 = !DILocation(line: 121, column: 5, scope: !309)
!319 = distinct !DISubprogram(name: "NMSEexample36", scope: !11, file: !11, line: 125, type: !12, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!320 = !DILocalVariable(name: "x", arg: 1, scope: !319, file: !11, line: 125, type: !14)
!321 = !DILocation(line: 125, column: 29, scope: !319)
!322 = !DILocation(line: 126, column: 23, scope: !319)
!323 = !DILocation(line: 126, column: 18, scope: !319)
!324 = !DILocation(line: 126, column: 16, scope: !319)
!325 = !DILocation(line: 126, column: 39, scope: !319)
!326 = !DILocation(line: 126, column: 41, scope: !319)
!327 = !DILocation(line: 126, column: 34, scope: !319)
!328 = !DILocation(line: 126, column: 32, scope: !319)
!329 = !DILocation(line: 126, column: 26, scope: !319)
!330 = !DILocation(line: 126, column: 5, scope: !319)
!331 = distinct !DISubprogram(name: "NMSEexample35", scope: !11, file: !11, line: 130, type: !12, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!332 = !DILocalVariable(name: "x", arg: 1, scope: !331, file: !11, line: 130, type: !14)
!333 = !DILocation(line: 130, column: 29, scope: !331)
!334 = !DILocation(line: 131, column: 22, scope: !331)
!335 = !DILocation(line: 131, column: 24, scope: !331)
!336 = !DILocation(line: 131, column: 18, scope: !331)
!337 = !DILocation(line: 131, column: 16, scope: !331)
!338 = !DILocation(line: 131, column: 43, scope: !331)
!339 = !DILocation(line: 131, column: 39, scope: !331)
!340 = !DILocation(line: 131, column: 37, scope: !331)
!341 = !DILocation(line: 131, column: 31, scope: !331)
!342 = !DILocation(line: 131, column: 5, scope: !331)
!343 = distinct !DISubprogram(name: "NMSEexample34", scope: !11, file: !11, line: 135, type: !12, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!344 = !DILocalVariable(name: "x", arg: 1, scope: !343, file: !11, line: 135, type: !14)
!345 = !DILocation(line: 135, column: 29, scope: !343)
!346 = !DILocation(line: 136, column: 23, scope: !343)
!347 = !DILocation(line: 136, column: 19, scope: !343)
!348 = !DILocation(line: 136, column: 17, scope: !343)
!349 = !DILocation(line: 136, column: 33, scope: !343)
!350 = !DILocation(line: 136, column: 29, scope: !343)
!351 = !DILocation(line: 136, column: 27, scope: !343)
!352 = !DILocation(line: 136, column: 5, scope: !343)
!353 = distinct !DISubprogram(name: "NMSEexample31", scope: !11, file: !11, line: 140, type: !12, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!354 = !DILocalVariable(name: "x", arg: 1, scope: !353, file: !11, line: 140, type: !14)
!355 = !DILocation(line: 140, column: 29, scope: !353)
!356 = !DILocation(line: 141, column: 17, scope: !353)
!357 = !DILocation(line: 141, column: 19, scope: !353)
!358 = !DILocation(line: 141, column: 12, scope: !353)
!359 = !DILocation(line: 141, column: 33, scope: !353)
!360 = !DILocation(line: 141, column: 28, scope: !353)
!361 = !DILocation(line: 141, column: 26, scope: !353)
!362 = !DILocation(line: 141, column: 5, scope: !353)
!363 = distinct !DISubprogram(name: "test05_nonlin1_r4", scope: !11, file: !11, line: 145, type: !12, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!364 = !DILocalVariable(name: "x", arg: 1, scope: !363, file: !11, line: 145, type: !14)
!365 = !DILocation(line: 145, column: 33, scope: !363)
!366 = !DILocation(line: 146, column: 13, scope: !363)
!367 = !DILocation(line: 146, column: 15, scope: !363)
!368 = !DILocation(line: 146, column: 25, scope: !363)
!369 = !DILocation(line: 146, column: 29, scope: !363)
!370 = !DILocation(line: 146, column: 27, scope: !363)
!371 = !DILocation(line: 146, column: 31, scope: !363)
!372 = !DILocation(line: 146, column: 22, scope: !363)
!373 = !DILocation(line: 146, column: 5, scope: !363)
!374 = distinct !DISubprogram(name: "test05_nonlin1_test2", scope: !11, file: !11, line: 150, type: !12, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!375 = !DILocalVariable(name: "x", arg: 1, scope: !374, file: !11, line: 150, type: !14)
!376 = !DILocation(line: 150, column: 36, scope: !374)
!377 = !DILocation(line: 151, column: 19, scope: !374)
!378 = !DILocation(line: 151, column: 21, scope: !374)
!379 = !DILocation(line: 151, column: 16, scope: !374)
!380 = !DILocation(line: 151, column: 5, scope: !374)
!381 = distinct !DISubprogram(name: "intro_example_mixed", scope: !11, file: !11, line: 155, type: !12, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!382 = !DILocalVariable(name: "x", arg: 1, scope: !381, file: !11, line: 155, type: !14)
!383 = !DILocation(line: 155, column: 35, scope: !381)
!384 = !DILocation(line: 156, column: 12, scope: !381)
!385 = !DILocation(line: 156, column: 17, scope: !381)
!386 = !DILocation(line: 156, column: 19, scope: !381)
!387 = !DILocation(line: 156, column: 14, scope: !381)
!388 = !DILocation(line: 156, column: 5, scope: !381)
!389 = distinct !DISubprogram(name: "sineOrder3", scope: !11, file: !11, line: 160, type: !12, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!390 = !DILocalVariable(name: "x", arg: 1, scope: !389, file: !11, line: 160, type: !14)
!391 = !DILocation(line: 160, column: 26, scope: !389)
!392 = !DILocation(line: 161, column: 33, scope: !389)
!393 = !DILocation(line: 161, column: 31, scope: !389)
!394 = !DILocation(line: 161, column: 62, scope: !389)
!395 = !DILocation(line: 161, column: 66, scope: !389)
!396 = !DILocation(line: 161, column: 64, scope: !389)
!397 = !DILocation(line: 161, column: 70, scope: !389)
!398 = !DILocation(line: 161, column: 68, scope: !389)
!399 = !DILocation(line: 161, column: 59, scope: !389)
!400 = !DILocation(line: 161, column: 36, scope: !389)
!401 = !DILocation(line: 161, column: 5, scope: !389)
!402 = distinct !DISubprogram(name: "bsplines3", scope: !11, file: !11, line: 165, type: !12, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!403 = !DILocalVariable(name: "x", arg: 1, scope: !402, file: !11, line: 165, type: !14)
!404 = !DILocation(line: 165, column: 25, scope: !402)
!405 = !DILocation(line: 166, column: 14, scope: !402)
!406 = !DILocation(line: 166, column: 13, scope: !402)
!407 = !DILocation(line: 166, column: 18, scope: !402)
!408 = !DILocation(line: 166, column: 16, scope: !402)
!409 = !DILocation(line: 166, column: 22, scope: !402)
!410 = !DILocation(line: 166, column: 20, scope: !402)
!411 = !DILocation(line: 166, column: 25, scope: !402)
!412 = !DILocation(line: 166, column: 5, scope: !402)
!413 = distinct !DISubprogram(name: "NMSEexample310", scope: !11, file: !11, line: 170, type: !12, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!414 = !DILocalVariable(name: "x", arg: 1, scope: !413, file: !11, line: 170, type: !14)
!415 = !DILocation(line: 170, column: 30, scope: !413)
!416 = !DILocation(line: 171, column: 22, scope: !413)
!417 = !DILocation(line: 171, column: 20, scope: !413)
!418 = !DILocation(line: 171, column: 12, scope: !413)
!419 = !DILocation(line: 171, column: 37, scope: !413)
!420 = !DILocation(line: 171, column: 35, scope: !413)
!421 = !DILocation(line: 171, column: 27, scope: !413)
!422 = !DILocation(line: 171, column: 25, scope: !413)
!423 = !DILocation(line: 171, column: 5, scope: !413)
!424 = distinct !DISubprogram(name: "NMSEproblem343", scope: !11, file: !11, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!425 = !DILocalVariable(name: "x", arg: 1, scope: !424, file: !11, line: 175, type: !14)
!426 = !DILocation(line: 175, column: 30, scope: !424)
!427 = !DILocation(line: 176, column: 23, scope: !424)
!428 = !DILocation(line: 176, column: 21, scope: !424)
!429 = !DILocation(line: 176, column: 35, scope: !424)
!430 = !DILocation(line: 176, column: 33, scope: !424)
!431 = !DILocation(line: 176, column: 26, scope: !424)
!432 = !DILocation(line: 176, column: 12, scope: !424)
!433 = !DILocation(line: 176, column: 5, scope: !424)
