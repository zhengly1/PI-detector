; ModuleID = 'mathieu_charv.c'
source_filename = "mathieu_charv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"Wrong characteristic Mathieu value\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"mathieu_charv.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"Characteristic value undefined for order 0\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid range [order_min,order_max]\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [45 x i8] c"Internal error in tridiagonal Mathieu matrix\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_a_e(order, qq, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_b_e(order, qq, &result)\00", align 1, !dbg !32

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_a_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !100 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !111, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %1, metadata !112, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !113, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 50, metadata !115, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !118, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !114, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !114, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !129
  %4 = fcmp oeq double %1, 0.000000e+00, !dbg !130
  br i1 %4, label %5, label %10, !dbg !132

5:                                                ; preds = %19, %3
  %6 = phi i32 [ %0, %3 ], [ %14, %19 ]
  %7 = mul nsw i32 %6, %6, !dbg !133
  %8 = sitofp i32 %7 to double, !dbg !135
  store double %8, ptr %2, align 8, !dbg !136, !tbaa !137
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !142
  store double 0.000000e+00, ptr %9, align 8, !dbg !143, !tbaa !144
  br label %729, !dbg !145

10:                                               ; preds = %3, %19
  %11 = phi double [ %18, %19 ], [ %1, %3 ]
  %12 = phi i32 [ %14, %19 ], [ %0, %3 ]
  %13 = and i32 %12, 1, !dbg !146
  tail call void @llvm.dbg.value(metadata double %11, metadata !112, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !111, metadata !DIExpression()), !dbg !129
  %14 = tail call i32 @llvm.abs.i32(i32 %12, i1 true), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !111, metadata !DIExpression()), !dbg !129
  %15 = fcmp olt double %11, 0.000000e+00, !dbg !149
  br i1 %15, label %16, label %23, !dbg !151

16:                                               ; preds = %10
  %17 = icmp eq i32 %13, 0, !dbg !152
  %18 = fneg double %11, !dbg !155
  br i1 %17, label %19, label %21, !dbg !156

19:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !111, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %18, metadata !112, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !113, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 50, metadata !115, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !118, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !114, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !129
  %20 = fcmp oeq double %11, 0.000000e+00, !dbg !130
  br i1 %20, label %5, label %10, !dbg !132

21:                                               ; preds = %16
  %22 = tail call i32 @gsl_sf_mathieu_b_e(i32 noundef %14, double noundef %18, ptr noundef %2), !dbg !157, !range !158
  br label %729, !dbg !159

23:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 %14, metadata !160, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %11, metadata !165, metadata !DIExpression()), !dbg !179
  switch i32 %14, label %151 [
    i32 0, label %24
    i32 1, label %53
    i32 2, label %87
    i32 3, label %117
  ], !dbg !181

24:                                               ; preds = %23
  %25 = fcmp ugt double %11, 4.000000e+00, !dbg !182
  br i1 %25, label %32, label %26, !dbg !184

26:                                               ; preds = %24
  %27 = fmul double %11, 2.000000e+00, !dbg !185
  %28 = fmul double %11, %27, !dbg !186
  %29 = fadd double %28, 4.000000e+00, !dbg !187
  %30 = tail call double @sqrt(double noundef %29) #9, !dbg !188
  %31 = fsub double 2.000000e+00, %30, !dbg !189
  br label %381, !dbg !190

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !196, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !197, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !198, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !199, metadata !DIExpression()), !dbg !206
  %33 = tail call double @sqrt(double noundef %11) #9, !dbg !208
  %34 = fmul double %33, 2.000000e+00, !dbg !209
  call void @llvm.dbg.value(metadata double %34, metadata !200, metadata !DIExpression()), !dbg !206
  %35 = fmul double %34, 1.600000e+01, !dbg !210
  call void @llvm.dbg.value(metadata double %35, metadata !201, metadata !DIExpression()), !dbg !206
  %36 = fmul double %35, %35, !dbg !211
  call void @llvm.dbg.value(metadata double %36, metadata !202, metadata !DIExpression()), !dbg !206
  %37 = fmul double %35, %36, !dbg !212
  call void @llvm.dbg.value(metadata double %37, metadata !203, metadata !DIExpression()), !dbg !206
  %38 = fmul double %35, %37, !dbg !213
  call void @llvm.dbg.value(metadata double %38, metadata !204, metadata !DIExpression()), !dbg !206
  %39 = fmul double %35, %38, !dbg !214
  call void @llvm.dbg.value(metadata double %39, metadata !205, metadata !DIExpression()), !dbg !206
  %40 = fmul double %11, 2.000000e+00, !dbg !215
  %41 = fsub double %34, %40, !dbg !216
  %42 = fadd double %41, -2.500000e-01, !dbg !217
  call void @llvm.dbg.value(metadata double %42, metadata !195, metadata !DIExpression()), !dbg !206
  %43 = fdiv double 1.000000e+00, %35, !dbg !218
  %44 = fsub double %42, %43, !dbg !219
  call void @llvm.dbg.value(metadata double %44, metadata !195, metadata !DIExpression()), !dbg !206
  %45 = fdiv double 1.200000e+01, %36, !dbg !220
  %46 = fsub double %44, %45, !dbg !221
  call void @llvm.dbg.value(metadata double %46, metadata !195, metadata !DIExpression()), !dbg !206
  %47 = fdiv double 2.120000e+02, %37, !dbg !222
  %48 = fsub double %46, %47, !dbg !223
  call void @llvm.dbg.value(metadata double %48, metadata !195, metadata !DIExpression()), !dbg !206
  %49 = fdiv double 4.752000e+03, %38, !dbg !224
  %50 = fsub double %48, %49, !dbg !225
  call void @llvm.dbg.value(metadata double %50, metadata !195, metadata !DIExpression()), !dbg !206
  %51 = fdiv double 1.267520e+05, %39, !dbg !226
  %52 = fsub double %50, %51, !dbg !227
  call void @llvm.dbg.value(metadata double %52, metadata !195, metadata !DIExpression()), !dbg !206
  br label %381, !dbg !228

53:                                               ; preds = %23
  %54 = fcmp ugt double %11, 4.000000e+00, !dbg !229
  br i1 %54, label %65, label %55, !dbg !231

55:                                               ; preds = %53
  %56 = fmul double %11, 5.000000e+00, !dbg !232
  %57 = fmul double %11, %56, !dbg !233
  %58 = fmul double %11, 1.600000e+01, !dbg !234
  %59 = fsub double %57, %58, !dbg !235
  %60 = fadd double %59, 6.400000e+01, !dbg !236
  %61 = tail call double @sqrt(double noundef %60) #9, !dbg !237
  %62 = fsub double %11, %61, !dbg !238
  %63 = fmul double %62, 5.000000e-01, !dbg !239
  %64 = fadd double %63, 5.000000e+00, !dbg !240
  br label %381, !dbg !241

65:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !196, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 9.000000e+00, metadata !197, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 8.100000e+01, metadata !198, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata double 7.290000e+02, metadata !199, metadata !DIExpression()), !dbg !242
  %66 = tail call double @sqrt(double noundef %11) #9, !dbg !244
  %67 = fmul double %66, 2.000000e+00, !dbg !245
  call void @llvm.dbg.value(metadata double %67, metadata !200, metadata !DIExpression()), !dbg !242
  %68 = fmul double %67, 1.600000e+01, !dbg !246
  call void @llvm.dbg.value(metadata double %68, metadata !201, metadata !DIExpression()), !dbg !242
  %69 = fmul double %68, %68, !dbg !247
  call void @llvm.dbg.value(metadata double %69, metadata !202, metadata !DIExpression()), !dbg !242
  %70 = fmul double %68, %69, !dbg !248
  call void @llvm.dbg.value(metadata double %70, metadata !203, metadata !DIExpression()), !dbg !242
  %71 = fmul double %68, %70, !dbg !249
  call void @llvm.dbg.value(metadata double %71, metadata !204, metadata !DIExpression()), !dbg !242
  %72 = fmul double %68, %71, !dbg !250
  call void @llvm.dbg.value(metadata double %72, metadata !205, metadata !DIExpression()), !dbg !242
  %73 = fmul double %11, 2.000000e+00, !dbg !251
  %74 = fmul double %67, 3.000000e+00, !dbg !252
  %75 = fsub double %74, %73, !dbg !253
  %76 = fadd double %75, -1.250000e+00, !dbg !254
  call void @llvm.dbg.value(metadata double %76, metadata !195, metadata !DIExpression()), !dbg !242
  %77 = fdiv double 9.000000e+00, %68, !dbg !255
  %78 = fsub double %76, %77, !dbg !256
  call void @llvm.dbg.value(metadata double %78, metadata !195, metadata !DIExpression()), !dbg !242
  %79 = fdiv double 1.800000e+02, %69, !dbg !257
  %80 = fsub double %78, %79, !dbg !258
  call void @llvm.dbg.value(metadata double %80, metadata !195, metadata !DIExpression()), !dbg !242
  %81 = fdiv double 5.076000e+03, %70, !dbg !259
  %82 = fsub double %80, %81, !dbg !260
  call void @llvm.dbg.value(metadata double %82, metadata !195, metadata !DIExpression()), !dbg !242
  %83 = fdiv double 1.749600e+05, %71, !dbg !261
  %84 = fsub double %82, %83, !dbg !262
  call void @llvm.dbg.value(metadata double %84, metadata !195, metadata !DIExpression()), !dbg !242
  %85 = fdiv double 0x415A74C800000000, %72, !dbg !263
  %86 = fsub double %84, %85, !dbg !264
  call void @llvm.dbg.value(metadata double %86, metadata !195, metadata !DIExpression()), !dbg !242
  br label %381, !dbg !265

87:                                               ; preds = %23
  %88 = fcmp ugt double %11, 3.000000e+00, !dbg !266
  br i1 %88, label %95, label %89, !dbg !268

89:                                               ; preds = %87
  call void @llvm.dbg.value(metadata double -8.000000e+00, metadata !169, metadata !DIExpression()), !dbg !179
  %90 = fmul double %11, 3.000000e+00, !dbg !269
  %91 = fmul double %11, %90, !dbg !271
  %92 = fsub double -4.800000e+01, %91, !dbg !272
  call void @llvm.dbg.value(metadata double %92, metadata !168, metadata !DIExpression()), !dbg !179
  %93 = fmul double %11, 2.000000e+01, !dbg !273
  %94 = fmul double %11, %93, !dbg !274
  call void @llvm.dbg.value(metadata double %94, metadata !167, metadata !DIExpression()), !dbg !179
  br label %260, !dbg !275

95:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !196, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 2.500000e+01, metadata !197, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 6.250000e+02, metadata !198, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata double 1.562500e+04, metadata !199, metadata !DIExpression()), !dbg !276
  %96 = tail call double @sqrt(double noundef %11) #9, !dbg !278
  %97 = fmul double %96, 2.000000e+00, !dbg !279
  call void @llvm.dbg.value(metadata double %97, metadata !200, metadata !DIExpression()), !dbg !276
  %98 = fmul double %97, 1.600000e+01, !dbg !280
  call void @llvm.dbg.value(metadata double %98, metadata !201, metadata !DIExpression()), !dbg !276
  %99 = fmul double %98, %98, !dbg !281
  call void @llvm.dbg.value(metadata double %99, metadata !202, metadata !DIExpression()), !dbg !276
  %100 = fmul double %98, %99, !dbg !282
  call void @llvm.dbg.value(metadata double %100, metadata !203, metadata !DIExpression()), !dbg !276
  %101 = fmul double %98, %100, !dbg !283
  call void @llvm.dbg.value(metadata double %101, metadata !204, metadata !DIExpression()), !dbg !276
  %102 = fmul double %98, %101, !dbg !284
  call void @llvm.dbg.value(metadata double %102, metadata !205, metadata !DIExpression()), !dbg !276
  %103 = fmul double %11, 2.000000e+00, !dbg !285
  %104 = fmul double %97, 5.000000e+00, !dbg !286
  %105 = fsub double %104, %103, !dbg !287
  %106 = fadd double %105, -3.250000e+00, !dbg !288
  call void @llvm.dbg.value(metadata double %106, metadata !195, metadata !DIExpression()), !dbg !276
  %107 = fdiv double 3.500000e+01, %98, !dbg !289
  %108 = fsub double %106, %107, !dbg !290
  call void @llvm.dbg.value(metadata double %108, metadata !195, metadata !DIExpression()), !dbg !276
  %109 = fdiv double 9.960000e+02, %99, !dbg !291
  %110 = fsub double %108, %109, !dbg !292
  call void @llvm.dbg.value(metadata double %110, metadata !195, metadata !DIExpression()), !dbg !276
  %111 = fdiv double 3.910000e+04, %100, !dbg !293
  %112 = fsub double %110, %111, !dbg !294
  call void @llvm.dbg.value(metadata double %112, metadata !195, metadata !DIExpression()), !dbg !276
  %113 = fdiv double 0x413C2AB000000000, %101, !dbg !295
  %114 = fsub double %112, %113, !dbg !296
  call void @llvm.dbg.value(metadata double %114, metadata !195, metadata !DIExpression()), !dbg !276
  %115 = fdiv double 0x41978EC580000000, %102, !dbg !297
  %116 = fsub double %114, %115, !dbg !298
  call void @llvm.dbg.value(metadata double %116, metadata !195, metadata !DIExpression()), !dbg !276
  br label %381, !dbg !299

117:                                              ; preds = %23
  %118 = fcmp ugt double %11, 6.250000e+00, !dbg !300
  br i1 %118, label %129, label %119, !dbg !302

119:                                              ; preds = %117
  %120 = fsub double -8.000000e+00, %11, !dbg !303
  call void @llvm.dbg.value(metadata double %120, metadata !169, metadata !DIExpression()), !dbg !179
  %121 = fmul double %11, 1.600000e+01, !dbg !305
  %122 = fadd double %121, -1.280000e+02, !dbg !306
  %123 = fmul double %11, 2.000000e+00, !dbg !307
  %124 = fmul double %11, %123, !dbg !308
  %125 = fsub double %122, %124, !dbg !309
  call void @llvm.dbg.value(metadata double %125, metadata !168, metadata !DIExpression()), !dbg !179
  %126 = fmul double %11, %11, !dbg !310
  %127 = fadd double %11, 8.000000e+00, !dbg !311
  %128 = fmul double %126, %127, !dbg !312
  call void @llvm.dbg.value(metadata double %128, metadata !167, metadata !DIExpression()), !dbg !179
  br label %260, !dbg !313

129:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 7.000000e+00, metadata !196, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 4.900000e+01, metadata !197, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 2.401000e+03, metadata !198, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 1.176490e+05, metadata !199, metadata !DIExpression()), !dbg !314
  %130 = tail call double @sqrt(double noundef %11) #9, !dbg !316
  %131 = fmul double %130, 2.000000e+00, !dbg !317
  call void @llvm.dbg.value(metadata double %131, metadata !200, metadata !DIExpression()), !dbg !314
  %132 = fmul double %131, 1.600000e+01, !dbg !318
  call void @llvm.dbg.value(metadata double %132, metadata !201, metadata !DIExpression()), !dbg !314
  %133 = fmul double %132, %132, !dbg !319
  call void @llvm.dbg.value(metadata double %133, metadata !202, metadata !DIExpression()), !dbg !314
  %134 = fmul double %132, %133, !dbg !320
  call void @llvm.dbg.value(metadata double %134, metadata !203, metadata !DIExpression()), !dbg !314
  %135 = fmul double %132, %134, !dbg !321
  call void @llvm.dbg.value(metadata double %135, metadata !204, metadata !DIExpression()), !dbg !314
  %136 = fmul double %132, %135, !dbg !322
  call void @llvm.dbg.value(metadata double %136, metadata !205, metadata !DIExpression()), !dbg !314
  %137 = fmul double %11, 2.000000e+00, !dbg !323
  %138 = fmul double %131, 7.000000e+00, !dbg !324
  %139 = fsub double %138, %137, !dbg !325
  %140 = fadd double %139, -6.250000e+00, !dbg !326
  call void @llvm.dbg.value(metadata double %140, metadata !195, metadata !DIExpression()), !dbg !314
  %141 = fdiv double 9.100000e+01, %132, !dbg !327
  %142 = fsub double %140, %141, !dbg !328
  call void @llvm.dbg.value(metadata double %142, metadata !195, metadata !DIExpression()), !dbg !314
  %143 = fdiv double 3.420000e+03, %133, !dbg !329
  %144 = fsub double %142, %143, !dbg !330
  call void @llvm.dbg.value(metadata double %144, metadata !195, metadata !DIExpression()), !dbg !314
  %145 = fdiv double 1.745240e+05, %134, !dbg !331
  %146 = fsub double %144, %145, !dbg !332
  call void @llvm.dbg.value(metadata double %146, metadata !195, metadata !DIExpression()), !dbg !314
  %147 = fdiv double 0x41642EEA00000000, %135, !dbg !333
  %148 = fsub double %146, %147, !dbg !334
  call void @llvm.dbg.value(metadata double %148, metadata !195, metadata !DIExpression()), !dbg !314
  %149 = fdiv double 0x41C57886B0000000, %136, !dbg !335
  %150 = fsub double %148, %149, !dbg !336
  call void @llvm.dbg.value(metadata double %150, metadata !195, metadata !DIExpression()), !dbg !314
  br label %381, !dbg !337

151:                                              ; preds = %23
  %152 = icmp ult i32 %14, 70, !dbg !338
  br i1 %152, label %153, label %257, !dbg !339

153:                                              ; preds = %151
  %154 = sitofp i32 %14 to double, !dbg !340
  %155 = fmul double %154, 1.700000e+00, !dbg !341
  %156 = tail call double @sqrt(double noundef %11) #9, !dbg !342
  %157 = fmul double %156, 2.000000e+00, !dbg !343
  %158 = fcmp ogt double %155, %157, !dbg !344
  br i1 %158, label %159, label %201, !dbg !345

159:                                              ; preds = %153
  %160 = mul i32 %12, %12, !dbg !346
  %161 = sitofp i32 %160 to double, !dbg !347
  call void @llvm.dbg.value(metadata double %161, metadata !170, metadata !DIExpression()), !dbg !348
  %162 = fadd double %161, -1.000000e+00, !dbg !349
  %163 = fmul double %162, %162, !dbg !350
  call void @llvm.dbg.value(metadata double %163, metadata !176, metadata !DIExpression()), !dbg !348
  %164 = fmul double %11, %11, !dbg !351
  call void @llvm.dbg.value(metadata double %164, metadata !177, metadata !DIExpression()), !dbg !348
  %165 = fmul double %164, %164, !dbg !352
  call void @llvm.dbg.value(metadata double %165, metadata !178, metadata !DIExpression()), !dbg !348
  %166 = fmul double %164, 5.000000e-01, !dbg !353
  %167 = fdiv double %166, %162, !dbg !354
  %168 = fadd double %167, %161, !dbg !355
  call void @llvm.dbg.value(metadata double %168, metadata !166, metadata !DIExpression()), !dbg !179
  %169 = fmul double %161, 5.000000e+00, !dbg !356
  %170 = fadd double %169, 7.000000e+00, !dbg !357
  %171 = fmul double %165, %170, !dbg !358
  %172 = fmul double %163, 3.200000e+01, !dbg !359
  %173 = fmul double %162, %172, !dbg !360
  %174 = fadd double %161, -4.000000e+00, !dbg !361
  %175 = fmul double %174, %173, !dbg !362
  %176 = fdiv double %171, %175, !dbg !363
  %177 = fadd double %168, %176, !dbg !364
  call void @llvm.dbg.value(metadata double %177, metadata !166, metadata !DIExpression()), !dbg !179
  %178 = fmul double %161, 9.000000e+00, !dbg !365
  %179 = fmul double %178, %161, !dbg !366
  %180 = fmul double %161, 5.800000e+01, !dbg !367
  %181 = fadd double %180, %179, !dbg !368
  %182 = fadd double %181, 2.900000e+01, !dbg !369
  %183 = fmul double %165, %182, !dbg !370
  %184 = fmul double %164, %183, !dbg !371
  %185 = fmul double %163, 6.400000e+01, !dbg !372
  %186 = fmul double %163, %185, !dbg !373
  %187 = fmul double %162, %186, !dbg !374
  %188 = fmul double %174, %187, !dbg !375
  %189 = fadd double %161, -9.000000e+00, !dbg !376
  %190 = fmul double %189, %188, !dbg !377
  %191 = fdiv double %184, %190, !dbg !378
  %192 = fadd double %177, %191, !dbg !379
  call void @llvm.dbg.value(metadata double %192, metadata !166, metadata !DIExpression()), !dbg !179
  %193 = fmul double %154, 1.400000e+00, !dbg !380
  %194 = tail call double @sqrt(double noundef %11) #9, !dbg !382
  %195 = fmul double %194, 2.000000e+00, !dbg !383
  %196 = fcmp olt double %193, %195, !dbg !384
  br i1 %196, label %197, label %381, !dbg !385

197:                                              ; preds = %159
  %198 = tail call fastcc double @asymptotic(i32 noundef %14, double noundef %11), !dbg !386
  %199 = fadd double %192, %198, !dbg !388
  call void @llvm.dbg.value(metadata double %199, metadata !166, metadata !DIExpression()), !dbg !179
  %200 = fmul double %199, 5.000000e-01, !dbg !389
  call void @llvm.dbg.value(metadata double %200, metadata !166, metadata !DIExpression()), !dbg !179
  br label %381, !dbg !390

201:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !391
  %202 = shl nuw nsw i32 %14, 1, !dbg !393
  %203 = or disjoint i32 %202, 1, !dbg !394
  %204 = sitofp i32 %203 to double, !dbg !395
  call void @llvm.dbg.value(metadata double %204, metadata !196, metadata !DIExpression()), !dbg !391
  %205 = fmul double %204, %204, !dbg !396
  call void @llvm.dbg.value(metadata double %205, metadata !197, metadata !DIExpression()), !dbg !391
  %206 = fmul double %205, %205, !dbg !397
  call void @llvm.dbg.value(metadata double %206, metadata !198, metadata !DIExpression()), !dbg !391
  %207 = fmul double %205, %206, !dbg !398
  call void @llvm.dbg.value(metadata double %207, metadata !199, metadata !DIExpression()), !dbg !391
  %208 = tail call double @sqrt(double noundef %11) #9, !dbg !399
  %209 = fmul double %208, 2.000000e+00, !dbg !400
  call void @llvm.dbg.value(metadata double %209, metadata !200, metadata !DIExpression()), !dbg !391
  %210 = fmul double %209, 1.600000e+01, !dbg !401
  call void @llvm.dbg.value(metadata double %210, metadata !201, metadata !DIExpression()), !dbg !391
  %211 = fmul double %210, %210, !dbg !402
  call void @llvm.dbg.value(metadata double %211, metadata !202, metadata !DIExpression()), !dbg !391
  %212 = fmul double %210, %211, !dbg !403
  call void @llvm.dbg.value(metadata double %212, metadata !203, metadata !DIExpression()), !dbg !391
  %213 = fmul double %210, %212, !dbg !404
  call void @llvm.dbg.value(metadata double %213, metadata !204, metadata !DIExpression()), !dbg !391
  %214 = fmul double %210, %213, !dbg !405
  call void @llvm.dbg.value(metadata double %214, metadata !205, metadata !DIExpression()), !dbg !391
  %215 = fmul double %11, 2.000000e+00, !dbg !406
  %216 = fmul double %209, %204, !dbg !407
  %217 = fsub double %216, %215, !dbg !408
  %218 = fadd double %205, 1.000000e+00, !dbg !409
  %219 = fmul double %218, 1.250000e-01, !dbg !410
  %220 = fsub double %217, %219, !dbg !411
  call void @llvm.dbg.value(metadata double %220, metadata !195, metadata !DIExpression()), !dbg !391
  %221 = fmul double %204, 2.500000e-01, !dbg !412
  %222 = fadd double %205, 3.000000e+00, !dbg !413
  %223 = fmul double %221, %222, !dbg !414
  %224 = fdiv double %223, %210, !dbg !415
  %225 = fsub double %220, %224, !dbg !416
  call void @llvm.dbg.value(metadata double %225, metadata !195, metadata !DIExpression()), !dbg !391
  %226 = fmul double %206, 5.000000e+00, !dbg !417
  %227 = fmul double %205, 3.400000e+01, !dbg !418
  %228 = fadd double %227, %226, !dbg !419
  %229 = fadd double %228, 9.000000e+00, !dbg !420
  %230 = fmul double %229, 2.500000e-01, !dbg !421
  %231 = fdiv double %230, %211, !dbg !422
  %232 = fsub double %225, %231, !dbg !423
  call void @llvm.dbg.value(metadata double %232, metadata !195, metadata !DIExpression()), !dbg !391
  %233 = fmul double %206, 3.300000e+01, !dbg !424
  %234 = fmul double %205, 4.100000e+02, !dbg !425
  %235 = fadd double %234, %233, !dbg !426
  %236 = fadd double %235, 4.050000e+02, !dbg !427
  %237 = fmul double %221, %236, !dbg !428
  %238 = fdiv double %237, %212, !dbg !429
  %239 = fsub double %232, %238, !dbg !430
  call void @llvm.dbg.value(metadata double %239, metadata !195, metadata !DIExpression()), !dbg !391
  %240 = fmul double %207, 6.300000e+01, !dbg !431
  %241 = fmul double %206, 1.260000e+03, !dbg !432
  %242 = fadd double %241, %240, !dbg !433
  %243 = fmul double %205, 2.943000e+03, !dbg !434
  %244 = fadd double %243, %242, !dbg !435
  %245 = fadd double %244, 4.860000e+02, !dbg !436
  %246 = fdiv double %245, %213, !dbg !437
  %247 = fsub double %239, %246, !dbg !438
  call void @llvm.dbg.value(metadata double %247, metadata !195, metadata !DIExpression()), !dbg !391
  %248 = fmul double %207, 5.270000e+02, !dbg !439
  %249 = fmul double %206, 1.561700e+04, !dbg !440
  %250 = fadd double %249, %248, !dbg !441
  %251 = fmul double %205, 6.900100e+04, !dbg !442
  %252 = fadd double %251, %250, !dbg !443
  %253 = fadd double %252, 4.160700e+04, !dbg !444
  %254 = fmul double %253, %204, !dbg !445
  %255 = fdiv double %254, %214, !dbg !446
  %256 = fsub double %247, %255, !dbg !447
  call void @llvm.dbg.value(metadata double %256, metadata !195, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata double %256, metadata !166, metadata !DIExpression()), !dbg !179
  br label %381

257:                                              ; preds = %151
  %258 = mul i32 %12, %12, !dbg !448
  %259 = sitofp i32 %258 to double, !dbg !449
  br label %381, !dbg !450

260:                                              ; preds = %119, %89
  %261 = phi double [ %120, %119 ], [ -8.000000e+00, %89 ], !dbg !451
  %262 = phi double [ %125, %119 ], [ %92, %89 ], !dbg !451
  %263 = phi double [ %128, %119 ], [ %94, %89 ], !dbg !451
  call void @llvm.dbg.value(metadata double %263, metadata !167, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %262, metadata !168, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %261, metadata !169, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %261, metadata !452, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata double %262, metadata !457, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata double %263, metadata !458, metadata !DIExpression()), !dbg !469
  %264 = fmul double %262, 3.000000e+00, !dbg !471
  %265 = fmul double %261, %261, !dbg !472
  %266 = fsub double %264, %265, !dbg !473
  %267 = fdiv double %266, 9.000000e+00, !dbg !474
  call void @llvm.dbg.value(metadata double %267, metadata !459, metadata !DIExpression()), !dbg !469
  %268 = fmul double %261, 9.000000e+00, !dbg !475
  %269 = fmul double %268, %262, !dbg !476
  %270 = fmul double %263, 2.700000e+01, !dbg !477
  %271 = fsub double %269, %270, !dbg !478
  %272 = fmul double %261, 2.000000e+00, !dbg !479
  %273 = fmul double %261, %272, !dbg !480
  %274 = fmul double %261, %273, !dbg !481
  %275 = fsub double %271, %274, !dbg !482
  %276 = fdiv double %275, 5.400000e+01, !dbg !483
  call void @llvm.dbg.value(metadata double %276, metadata !460, metadata !DIExpression()), !dbg !469
  %277 = fmul double %267, %267, !dbg !484
  %278 = fmul double %267, %277, !dbg !485
  %279 = fmul double %276, %276, !dbg !486
  %280 = fadd double %278, %279, !dbg !487
  call void @llvm.dbg.value(metadata double %280, metadata !461, metadata !DIExpression()), !dbg !469
  %281 = fcmp ult double %280, 0.000000e+00, !dbg !488
  br i1 %281, label %295, label %282, !dbg !489

282:                                              ; preds = %260
  %283 = tail call double @sqrt(double noundef %280) #9, !dbg !490
  %284 = fadd double %276, %283, !dbg !491
  call void @llvm.dbg.value(metadata double %284, metadata !464, metadata !DIExpression()), !dbg !492
  %285 = tail call double @llvm.fabs.f64(double %284), !dbg !493
  %286 = fdiv double %285, %284, !dbg !494
  %287 = tail call double @pow(double noundef %285, double noundef 0x3FD5555555555555) #9, !dbg !495
  %288 = fmul double %287, %286, !dbg !496
  call void @llvm.dbg.value(metadata double %288, metadata !462, metadata !DIExpression()), !dbg !469
  %289 = tail call double @sqrt(double noundef %280) #9, !dbg !497
  %290 = fsub double %276, %289, !dbg !498
  call void @llvm.dbg.value(metadata double %290, metadata !464, metadata !DIExpression()), !dbg !492
  %291 = tail call double @llvm.fabs.f64(double %290), !dbg !499
  %292 = fdiv double %291, %290, !dbg !500
  %293 = tail call double @pow(double noundef %291, double noundef 0x3FD5555555555555) #9, !dbg !501
  %294 = fmul double %293, %292, !dbg !502
  call void @llvm.dbg.value(metadata double %294, metadata !463, metadata !DIExpression()), !dbg !469
  br label %308, !dbg !503

295:                                              ; preds = %260
  %296 = fneg double %267, !dbg !504
  %297 = fmul double %267, %296, !dbg !505
  %298 = fmul double %267, %297, !dbg !506
  %299 = tail call double @sqrt(double noundef %298) #9, !dbg !507
  %300 = fdiv double %276, %299, !dbg !508
  %301 = tail call double @acos(double noundef %300) #9, !dbg !509
  call void @llvm.dbg.value(metadata double %301, metadata !467, metadata !DIExpression()), !dbg !510
  %302 = tail call double @sqrt(double noundef %296) #9, !dbg !511
  %303 = fmul double %302, 2.000000e+00, !dbg !512
  %304 = fadd double %301, 0x402921FB54442D18, !dbg !513
  %305 = fdiv double %304, 3.000000e+00, !dbg !514
  %306 = tail call double @cos(double noundef %305) #9, !dbg !515
  %307 = fmul double %303, %306, !dbg !516
  call void @llvm.dbg.value(metadata double %307, metadata !462, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !463, metadata !DIExpression()), !dbg !469
  br label %308

308:                                              ; preds = %295, %282
  %309 = phi double [ %294, %282 ], [ 0.000000e+00, %295 ], !dbg !517
  %310 = phi double [ %288, %282 ], [ %307, %295 ], !dbg !517
  call void @llvm.dbg.value(metadata double %310, metadata !462, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata double %309, metadata !463, metadata !DIExpression()), !dbg !469
  %311 = fadd double %309, %310, !dbg !518
  %312 = fdiv double %261, 3.000000e+00, !dbg !519
  %313 = fsub double %311, %312, !dbg !520
  call void @llvm.dbg.value(metadata double %313, metadata !166, metadata !DIExpression()), !dbg !179
  %314 = fcmp olt double %313, 0.000000e+00, !dbg !521
  br i1 %314, label %315, label %376, !dbg !523

315:                                              ; preds = %308
  %316 = tail call double @sqrt(double noundef %11) #9, !dbg !524
  %317 = sitofp i32 %14 to double, !dbg !525
  %318 = fmul double %317, 1.000000e-01, !dbg !526
  %319 = fcmp ogt double %316, %318, !dbg !527
  br i1 %319, label %320, label %376, !dbg !528

320:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i32 %14, metadata !191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata double %11, metadata !194, metadata !DIExpression()), !dbg !529
  %321 = shl nuw nsw i32 %14, 1, !dbg !531
  %322 = add nsw i32 %321, -1, !dbg !532
  %323 = sitofp i32 %322 to double, !dbg !533
  call void @llvm.dbg.value(metadata double %323, metadata !196, metadata !DIExpression()), !dbg !529
  %324 = fmul double %323, %323, !dbg !534
  call void @llvm.dbg.value(metadata double %324, metadata !197, metadata !DIExpression()), !dbg !529
  %325 = fmul double %324, %324, !dbg !535
  call void @llvm.dbg.value(metadata double %325, metadata !198, metadata !DIExpression()), !dbg !529
  %326 = fmul double %324, %325, !dbg !536
  call void @llvm.dbg.value(metadata double %326, metadata !199, metadata !DIExpression()), !dbg !529
  %327 = tail call double @sqrt(double noundef %11) #9, !dbg !537
  %328 = fmul double %327, 2.000000e+00, !dbg !538
  call void @llvm.dbg.value(metadata double %328, metadata !200, metadata !DIExpression()), !dbg !529
  %329 = fmul double %328, 1.600000e+01, !dbg !539
  call void @llvm.dbg.value(metadata double %329, metadata !201, metadata !DIExpression()), !dbg !529
  %330 = fmul double %329, %329, !dbg !540
  call void @llvm.dbg.value(metadata double %330, metadata !202, metadata !DIExpression()), !dbg !529
  %331 = fmul double %329, %330, !dbg !541
  call void @llvm.dbg.value(metadata double %331, metadata !203, metadata !DIExpression()), !dbg !529
  %332 = fmul double %329, %331, !dbg !542
  call void @llvm.dbg.value(metadata double %332, metadata !204, metadata !DIExpression()), !dbg !529
  %333 = fmul double %329, %332, !dbg !543
  call void @llvm.dbg.value(metadata double %333, metadata !205, metadata !DIExpression()), !dbg !529
  %334 = fmul double %11, 2.000000e+00, !dbg !544
  %335 = fmul double %328, %323, !dbg !545
  %336 = fsub double %335, %334, !dbg !546
  %337 = fadd double %324, 1.000000e+00, !dbg !547
  %338 = fmul double %337, 1.250000e-01, !dbg !548
  %339 = fsub double %336, %338, !dbg !549
  call void @llvm.dbg.value(metadata double %339, metadata !195, metadata !DIExpression()), !dbg !529
  %340 = fmul double %323, 2.500000e-01, !dbg !550
  %341 = fadd double %324, 3.000000e+00, !dbg !551
  %342 = fmul double %340, %341, !dbg !552
  %343 = fdiv double %342, %329, !dbg !553
  %344 = fsub double %339, %343, !dbg !554
  call void @llvm.dbg.value(metadata double %344, metadata !195, metadata !DIExpression()), !dbg !529
  %345 = fmul double %325, 5.000000e+00, !dbg !555
  %346 = fmul double %324, 3.400000e+01, !dbg !556
  %347 = fadd double %346, %345, !dbg !557
  %348 = fadd double %347, 9.000000e+00, !dbg !558
  %349 = fmul double %348, 2.500000e-01, !dbg !559
  %350 = fdiv double %349, %330, !dbg !560
  %351 = fsub double %344, %350, !dbg !561
  call void @llvm.dbg.value(metadata double %351, metadata !195, metadata !DIExpression()), !dbg !529
  %352 = fmul double %325, 3.300000e+01, !dbg !562
  %353 = fmul double %324, 4.100000e+02, !dbg !563
  %354 = fadd double %353, %352, !dbg !564
  %355 = fadd double %354, 4.050000e+02, !dbg !565
  %356 = fmul double %340, %355, !dbg !566
  %357 = fdiv double %356, %331, !dbg !567
  %358 = fsub double %351, %357, !dbg !568
  call void @llvm.dbg.value(metadata double %358, metadata !195, metadata !DIExpression()), !dbg !529
  %359 = fmul double %326, 6.300000e+01, !dbg !569
  %360 = fmul double %325, 1.260000e+03, !dbg !570
  %361 = fadd double %360, %359, !dbg !571
  %362 = fmul double %324, 2.943000e+03, !dbg !572
  %363 = fadd double %362, %361, !dbg !573
  %364 = fadd double %363, 4.860000e+02, !dbg !574
  %365 = fdiv double %364, %332, !dbg !575
  %366 = fsub double %358, %365, !dbg !576
  call void @llvm.dbg.value(metadata double %366, metadata !195, metadata !DIExpression()), !dbg !529
  %367 = fmul double %326, 5.270000e+02, !dbg !577
  %368 = fmul double %325, 1.561700e+04, !dbg !578
  %369 = fadd double %368, %367, !dbg !579
  %370 = fmul double %324, 6.900100e+04, !dbg !580
  %371 = fadd double %370, %369, !dbg !581
  %372 = fadd double %371, 4.160700e+04, !dbg !582
  %373 = fmul double %372, %323, !dbg !583
  %374 = fdiv double %373, %333, !dbg !584
  %375 = fsub double %366, %374, !dbg !585
  call void @llvm.dbg.value(metadata double %375, metadata !195, metadata !DIExpression()), !dbg !529
  br label %381, !dbg !586

376:                                              ; preds = %315, %308
  %377 = mul i32 %12, %12, !dbg !587
  %378 = sitofp i32 %377 to double, !dbg !588
  %379 = tail call double @llvm.fabs.f64(double %313), !dbg !589
  %380 = fadd double %379, %378, !dbg !590
  br label %381, !dbg !591

381:                                              ; preds = %26, %32, %55, %65, %95, %129, %159, %197, %201, %257, %320, %376
  %382 = phi double [ %259, %257 ], [ %375, %320 ], [ %380, %376 ], [ %150, %129 ], [ %116, %95 ], [ %64, %55 ], [ %86, %65 ], [ %31, %26 ], [ %52, %32 ], [ %256, %201 ], [ %200, %197 ], [ %192, %159 ], !dbg !179
  tail call void @llvm.dbg.value(metadata double %382, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %382, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %382, metadata !125, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !129
  %383 = icmp eq i32 %13, 0
  %384 = sitofp i32 %14 to float
  %385 = fpext float %384 to double
  %386 = fmul double %385, 5.000000e-01
  %387 = fadd double %386, -5.000000e-01
  %388 = fptosi double %387 to i32
  %389 = icmp sgt i32 %388, 0
  %390 = fmul double %11, %11
  %391 = sitofp i32 %14 to double
  %392 = mul i32 %12, %12
  %393 = sitofp i32 %392 to double
  %394 = icmp eq i32 %12, 0
  %395 = fmul double %11, 2.000000e+00
  %396 = fmul double %11, %395
  %397 = icmp ugt i32 %14, 3
  %398 = lshr i32 %14, 1
  %399 = add nsw i32 %398, -2
  %400 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1
  %401 = fmul double %391, 1.000000e-02
  %402 = tail call double @llvm.fabs.f64(double %382)
  %403 = fmul double %401, %402
  %404 = fadd double %403, 3.000000e+00
  %405 = icmp ugt i32 %14, 10
  %406 = fmul double %391, 1.500000e+00
  %407 = add i32 %388, -1, !dbg !592
  %408 = add nsw i32 %398, -1, !dbg !592
  %409 = and i32 %388, 1
  %410 = icmp eq i32 %407, 0
  %411 = and i32 %388, 2147483646
  %412 = icmp eq i32 %409, 0
  %413 = and i32 %408, 1
  %414 = icmp eq i32 %399, 0
  %415 = and i32 %408, -2
  %416 = icmp eq i32 %413, 0
  %417 = and i32 %388, 1
  %418 = icmp eq i32 %407, 0
  %419 = and i32 %388, 2147483646
  %420 = icmp eq i32 %417, 0
  %421 = and i32 %408, 1
  %422 = icmp eq i32 %399, 0
  %423 = and i32 %408, -2
  %424 = icmp eq i32 %421, 0
  br label %425, !dbg !592

425:                                              ; preds = %716, %381
  %426 = phi double [ %382, %381 ], [ %727, %716 ]
  %427 = phi double [ 2.500000e-02, %381 ], [ %722, %716 ]
  %428 = phi i32 [ 0, %381 ], [ %720, %716 ]
  %429 = phi i32 [ 0, %381 ], [ %713, %716 ]
  tail call void @llvm.dbg.value(metadata double %426, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %427, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %428, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %429, metadata !117, metadata !DIExpression()), !dbg !129
  %430 = fadd double %426, 1.000000e-03, !dbg !593
  tail call void @llvm.dbg.value(metadata double %430, metadata !120, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !129
  br i1 %383, label %431, label %493, !dbg !595

431:                                              ; preds = %425
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !596, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %11, metadata !601, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %430, metadata !602, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 50, metadata !603, metadata !DIExpression()), !dbg !608
  br i1 %394, label %467, label %432, !dbg !611

432:                                              ; preds = %431
  %433 = fdiv double %396, %430, !dbg !612
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !607, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 0, metadata !606, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %433, metadata !604, metadata !DIExpression()), !dbg !608
  br i1 %397, label %434, label %467, !dbg !615

434:                                              ; preds = %432
  br i1 %414, label %455, label %435, !dbg !616

435:                                              ; preds = %434, %435
  %436 = phi double [ %452, %435 ], [ %433, %434 ]
  %437 = phi i32 [ %446, %435 ], [ 0, %434 ]
  %438 = phi i32 [ %453, %435 ], [ 0, %434 ]
  tail call void @llvm.dbg.value(metadata double %436, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !606, metadata !DIExpression()), !dbg !608
  %439 = or disjoint i32 %437, 1, !dbg !620
  %440 = sitofp i32 %439 to double, !dbg !622
  %441 = fmul double %440, 4.000000e+00, !dbg !623
  %442 = fmul double %441, %440, !dbg !624
  %443 = fsub double %430, %442, !dbg !625
  %444 = fsub double %443, %436, !dbg !626
  %445 = fdiv double %390, %444, !dbg !627
  tail call void @llvm.dbg.value(metadata double %445, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %439, metadata !606, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %445, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %439, metadata !606, metadata !DIExpression()), !dbg !608
  %446 = add nuw nsw i32 %437, 2, !dbg !620
  %447 = sitofp i32 %446 to double, !dbg !622
  %448 = fmul double %447, 4.000000e+00, !dbg !623
  %449 = fmul double %448, %447, !dbg !624
  %450 = fsub double %430, %449, !dbg !625
  %451 = fsub double %450, %445, !dbg !626
  %452 = fdiv double %390, %451, !dbg !627
  tail call void @llvm.dbg.value(metadata double %452, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %446, metadata !606, metadata !DIExpression()), !dbg !608
  %453 = add i32 %438, 2, !dbg !616
  %454 = icmp eq i32 %453, %415, !dbg !616
  br i1 %454, label %455, label %435, !dbg !616, !llvm.loop !628

455:                                              ; preds = %435, %434
  %456 = phi double [ undef, %434 ], [ %452, %435 ]
  %457 = phi double [ %433, %434 ], [ %452, %435 ]
  %458 = phi i32 [ 0, %434 ], [ %446, %435 ]
  br i1 %416, label %467, label %459, !dbg !616

459:                                              ; preds = %455
  tail call void @llvm.dbg.value(metadata double %457, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %458, metadata !606, metadata !DIExpression()), !dbg !608
  %460 = add nuw nsw i32 %458, 1, !dbg !620
  %461 = sitofp i32 %460 to double, !dbg !622
  %462 = fmul double %461, 4.000000e+00, !dbg !623
  %463 = fmul double %462, %461, !dbg !624
  %464 = fsub double %430, %463, !dbg !625
  %465 = fsub double %464, %457, !dbg !626
  %466 = fdiv double %390, %465, !dbg !627
  tail call void @llvm.dbg.value(metadata double %466, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %460, metadata !606, metadata !DIExpression()), !dbg !608
  br label %467, !dbg !631

467:                                              ; preds = %459, %455, %432, %431
  %468 = phi double [ %433, %432 ], [ 0.000000e+00, %431 ], [ %456, %455 ], [ %466, %459 ], !dbg !633
  tail call void @llvm.dbg.value(metadata double poison, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !605, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 0, metadata !606, metadata !DIExpression()), !dbg !608
  br label %469, !dbg !631

469:                                              ; preds = %469, %467
  %470 = phi i32 [ 0, %467 ], [ %488, %469 ]
  %471 = phi double [ 0.000000e+00, %467 ], [ %487, %469 ]
  tail call void @llvm.dbg.value(metadata i32 %470, metadata !606, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %471, metadata !605, metadata !DIExpression()), !dbg !608
  %472 = sub nuw nsw i32 50, %470, !dbg !634
  %473 = sitofp i32 %472 to double, !dbg !636
  %474 = fmul double %473, 2.000000e+00, !dbg !637
  %475 = fadd double %474, %391, !dbg !638
  %476 = fmul double %475, %475, !dbg !639
  %477 = fsub double %430, %476, !dbg !640
  %478 = fsub double %477, %471, !dbg !641
  %479 = fdiv double %390, %478, !dbg !642
  tail call void @llvm.dbg.value(metadata double %479, metadata !605, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %470, metadata !606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %470, metadata !606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !608
  tail call void @llvm.dbg.value(metadata double %479, metadata !605, metadata !DIExpression()), !dbg !608
  %480 = sub nsw i32 49, %470, !dbg !634
  %481 = sitofp i32 %480 to double, !dbg !636
  %482 = fmul double %481, 2.000000e+00, !dbg !637
  %483 = fadd double %482, %391, !dbg !638
  %484 = fmul double %483, %483, !dbg !639
  %485 = fsub double %430, %484, !dbg !640
  %486 = fsub double %485, %479, !dbg !641
  %487 = fdiv double %390, %486, !dbg !642
  tail call void @llvm.dbg.value(metadata double %487, metadata !605, metadata !DIExpression()), !dbg !608
  %488 = add nuw nsw i32 %470, 2, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %488, metadata !606, metadata !DIExpression()), !dbg !608
  %489 = icmp eq i32 %488, 50, !dbg !644
  br i1 %489, label %490, label %469, !dbg !631, !llvm.loop !645

490:                                              ; preds = %469
  %491 = fmul double %487, 2.000000e+00, !dbg !647
  %492 = select i1 %394, double %491, double %487, !dbg !647
  tail call void @llvm.dbg.value(metadata double %555, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %492, metadata !605, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double poison, metadata !123, metadata !DIExpression()), !dbg !129
  br label %552, !dbg !648

493:                                              ; preds = %425
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !649, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %11, metadata !652, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %430, metadata !653, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 50, metadata !654, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %388, metadata !658, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %11, metadata !655, metadata !DIExpression()), !dbg !659
  br i1 %389, label %494, label %507, !dbg !661

494:                                              ; preds = %493
  br i1 %410, label %495, label %509, !dbg !661

495:                                              ; preds = %509, %494
  %496 = phi double [ undef, %494 ], [ %527, %509 ]
  %497 = phi double [ %11, %494 ], [ %527, %509 ]
  %498 = phi i32 [ 0, %494 ], [ %528, %509 ]
  br i1 %412, label %507, label %499, !dbg !661

499:                                              ; preds = %495
  tail call void @llvm.dbg.value(metadata double %497, metadata !655, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %498, metadata !657, metadata !DIExpression()), !dbg !659
  %500 = sitofp i32 %498 to double, !dbg !663
  %501 = fmul double %500, 2.000000e+00, !dbg !665
  %502 = fadd double %501, 1.000000e+00, !dbg !666
  %503 = fmul double %502, %502, !dbg !667
  %504 = fsub double %430, %503, !dbg !668
  %505 = fsub double %504, %497, !dbg !669
  %506 = fdiv double %390, %505, !dbg !670
  tail call void @llvm.dbg.value(metadata double %506, metadata !655, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %498, metadata !657, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !659
  br label %507, !dbg !671

507:                                              ; preds = %499, %495, %493
  %508 = phi double [ %11, %493 ], [ %496, %495 ], [ %506, %499 ], !dbg !659
  tail call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !656, metadata !DIExpression()), !dbg !659
  br label %531, !dbg !671

509:                                              ; preds = %494, %509
  %510 = phi double [ %527, %509 ], [ %11, %494 ]
  %511 = phi i32 [ %528, %509 ], [ 0, %494 ]
  %512 = phi i32 [ %529, %509 ], [ 0, %494 ]
  tail call void @llvm.dbg.value(metadata double %510, metadata !655, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %511, metadata !657, metadata !DIExpression()), !dbg !659
  %513 = sitofp i32 %511 to double, !dbg !663
  %514 = fmul double %513, 2.000000e+00, !dbg !665
  %515 = fadd double %514, 1.000000e+00, !dbg !666
  %516 = fmul double %515, %515, !dbg !667
  %517 = fsub double %430, %516, !dbg !668
  %518 = fsub double %517, %510, !dbg !669
  %519 = fdiv double %390, %518, !dbg !670
  tail call void @llvm.dbg.value(metadata double %519, metadata !655, metadata !DIExpression()), !dbg !659
  %520 = or disjoint i32 %511, 1, !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %520, metadata !657, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %519, metadata !655, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %520, metadata !657, metadata !DIExpression()), !dbg !659
  %521 = sitofp i32 %520 to double, !dbg !663
  %522 = fmul double %521, 2.000000e+00, !dbg !665
  %523 = fadd double %522, 1.000000e+00, !dbg !666
  %524 = fmul double %523, %523, !dbg !667
  %525 = fsub double %430, %524, !dbg !668
  %526 = fsub double %525, %519, !dbg !669
  %527 = fdiv double %390, %526, !dbg !670
  tail call void @llvm.dbg.value(metadata double %527, metadata !655, metadata !DIExpression()), !dbg !659
  %528 = add nuw nsw i32 %511, 2, !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %528, metadata !657, metadata !DIExpression()), !dbg !659
  %529 = add i32 %512, 2, !dbg !661
  %530 = icmp eq i32 %529, %411, !dbg !661
  br i1 %530, label %495, label %509, !dbg !661, !llvm.loop !674

531:                                              ; preds = %531, %507
  %532 = phi i32 [ 0, %507 ], [ %550, %531 ]
  %533 = phi double [ 0.000000e+00, %507 ], [ %549, %531 ]
  tail call void @llvm.dbg.value(metadata i32 %532, metadata !657, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %533, metadata !656, metadata !DIExpression()), !dbg !659
  %534 = sub nuw nsw i32 50, %532, !dbg !676
  %535 = sitofp i32 %534 to double, !dbg !678
  %536 = fmul double %535, 2.000000e+00, !dbg !679
  %537 = fadd double %536, %391, !dbg !680
  %538 = fmul double %537, %537, !dbg !681
  %539 = fsub double %430, %538, !dbg !682
  %540 = fsub double %539, %533, !dbg !683
  %541 = fdiv double %390, %540, !dbg !684
  tail call void @llvm.dbg.value(metadata double %541, metadata !656, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %532, metadata !657, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %532, metadata !657, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !659
  tail call void @llvm.dbg.value(metadata double %541, metadata !656, metadata !DIExpression()), !dbg !659
  %542 = sub nsw i32 49, %532, !dbg !676
  %543 = sitofp i32 %542 to double, !dbg !678
  %544 = fmul double %543, 2.000000e+00, !dbg !679
  %545 = fadd double %544, %391, !dbg !680
  %546 = fmul double %545, %545, !dbg !681
  %547 = fsub double %430, %546, !dbg !682
  %548 = fsub double %547, %541, !dbg !683
  %549 = fdiv double %390, %548, !dbg !684
  tail call void @llvm.dbg.value(metadata double %549, metadata !656, metadata !DIExpression()), !dbg !659
  %550 = add nuw nsw i32 %532, 2, !dbg !685
  tail call void @llvm.dbg.value(metadata i32 %550, metadata !657, metadata !DIExpression()), !dbg !659
  %551 = icmp eq i32 %550, 50, !dbg !686
  br i1 %551, label %552, label %531, !dbg !671, !llvm.loop !687

552:                                              ; preds = %531, %490
  %553 = phi double [ %468, %490 ], [ %508, %531 ]
  %554 = phi double [ %492, %490 ], [ %549, %531 ]
  %555 = fadd double %553, %393, !dbg !689
  %556 = fadd double %555, %554, !dbg !689
  %557 = fsub double %556, %430, !dbg !689
  tail call void @llvm.dbg.value(metadata double %557, metadata !123, metadata !DIExpression()), !dbg !129
  br label %558, !dbg !690

558:                                              ; preds = %700, %552
  %559 = phi i32 [ 0, %552 ], [ %701, %700 ], !dbg !691
  %560 = phi double [ %430, %552 ], [ %562, %700 ], !dbg !691
  %561 = phi double [ %557, %552 ], [ %689, %700 ], !dbg !691
  %562 = phi double [ %426, %552 ], [ %696, %700 ], !dbg !129
  tail call void @llvm.dbg.value(metadata double %562, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %561, metadata !123, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %560, metadata !120, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %559, metadata !116, metadata !DIExpression()), !dbg !129
  br i1 %383, label %563, label %625, !dbg !692

563:                                              ; preds = %558
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !596, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %11, metadata !601, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %562, metadata !602, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 50, metadata !603, metadata !DIExpression()), !dbg !696
  br i1 %394, label %599, label %564, !dbg !699

564:                                              ; preds = %563
  %565 = fdiv double %396, %562, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !607, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 0, metadata !606, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %565, metadata !604, metadata !DIExpression()), !dbg !696
  br i1 %397, label %566, label %599, !dbg !701

566:                                              ; preds = %564
  br i1 %422, label %587, label %567, !dbg !702

567:                                              ; preds = %566, %567
  %568 = phi double [ %584, %567 ], [ %565, %566 ]
  %569 = phi i32 [ %578, %567 ], [ 0, %566 ]
  %570 = phi i32 [ %585, %567 ], [ 0, %566 ]
  tail call void @llvm.dbg.value(metadata double %568, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %569, metadata !606, metadata !DIExpression()), !dbg !696
  %571 = or disjoint i32 %569, 1, !dbg !703
  %572 = sitofp i32 %571 to double, !dbg !704
  %573 = fmul double %572, 4.000000e+00, !dbg !705
  %574 = fmul double %573, %572, !dbg !706
  %575 = fsub double %562, %574, !dbg !707
  %576 = fsub double %575, %568, !dbg !708
  %577 = fdiv double %390, %576, !dbg !709
  tail call void @llvm.dbg.value(metadata double %577, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %571, metadata !606, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %577, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %571, metadata !606, metadata !DIExpression()), !dbg !696
  %578 = add nuw nsw i32 %569, 2, !dbg !703
  %579 = sitofp i32 %578 to double, !dbg !704
  %580 = fmul double %579, 4.000000e+00, !dbg !705
  %581 = fmul double %580, %579, !dbg !706
  %582 = fsub double %562, %581, !dbg !707
  %583 = fsub double %582, %577, !dbg !708
  %584 = fdiv double %390, %583, !dbg !709
  tail call void @llvm.dbg.value(metadata double %584, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %578, metadata !606, metadata !DIExpression()), !dbg !696
  %585 = add i32 %570, 2, !dbg !702
  %586 = icmp eq i32 %585, %423, !dbg !702
  br i1 %586, label %587, label %567, !dbg !702, !llvm.loop !710

587:                                              ; preds = %567, %566
  %588 = phi double [ undef, %566 ], [ %584, %567 ]
  %589 = phi double [ %565, %566 ], [ %584, %567 ]
  %590 = phi i32 [ 0, %566 ], [ %578, %567 ]
  br i1 %424, label %599, label %591, !dbg !702

591:                                              ; preds = %587
  tail call void @llvm.dbg.value(metadata double %589, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %590, metadata !606, metadata !DIExpression()), !dbg !696
  %592 = add nuw nsw i32 %590, 1, !dbg !703
  %593 = sitofp i32 %592 to double, !dbg !704
  %594 = fmul double %593, 4.000000e+00, !dbg !705
  %595 = fmul double %594, %593, !dbg !706
  %596 = fsub double %562, %595, !dbg !707
  %597 = fsub double %596, %589, !dbg !708
  %598 = fdiv double %390, %597, !dbg !709
  tail call void @llvm.dbg.value(metadata double %598, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %592, metadata !606, metadata !DIExpression()), !dbg !696
  br label %599, !dbg !712

599:                                              ; preds = %591, %587, %564, %563
  %600 = phi double [ %565, %564 ], [ 0.000000e+00, %563 ], [ %588, %587 ], [ %598, %591 ], !dbg !713
  tail call void @llvm.dbg.value(metadata double poison, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !605, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 0, metadata !606, metadata !DIExpression()), !dbg !696
  br label %601, !dbg !712

601:                                              ; preds = %601, %599
  %602 = phi i32 [ 0, %599 ], [ %620, %601 ]
  %603 = phi double [ 0.000000e+00, %599 ], [ %619, %601 ]
  tail call void @llvm.dbg.value(metadata i32 %602, metadata !606, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %603, metadata !605, metadata !DIExpression()), !dbg !696
  %604 = sub nuw nsw i32 50, %602, !dbg !714
  %605 = sitofp i32 %604 to double, !dbg !715
  %606 = fmul double %605, 2.000000e+00, !dbg !716
  %607 = fadd double %606, %391, !dbg !717
  %608 = fmul double %607, %607, !dbg !718
  %609 = fsub double %562, %608, !dbg !719
  %610 = fsub double %609, %603, !dbg !720
  %611 = fdiv double %390, %610, !dbg !721
  tail call void @llvm.dbg.value(metadata double %611, metadata !605, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %602, metadata !606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %602, metadata !606, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !696
  tail call void @llvm.dbg.value(metadata double %611, metadata !605, metadata !DIExpression()), !dbg !696
  %612 = sub nsw i32 49, %602, !dbg !714
  %613 = sitofp i32 %612 to double, !dbg !715
  %614 = fmul double %613, 2.000000e+00, !dbg !716
  %615 = fadd double %614, %391, !dbg !717
  %616 = fmul double %615, %615, !dbg !718
  %617 = fsub double %562, %616, !dbg !719
  %618 = fsub double %617, %611, !dbg !720
  %619 = fdiv double %390, %618, !dbg !721
  tail call void @llvm.dbg.value(metadata double %619, metadata !605, metadata !DIExpression()), !dbg !696
  %620 = add nuw nsw i32 %602, 2, !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %620, metadata !606, metadata !DIExpression()), !dbg !696
  %621 = icmp eq i32 %620, 50, !dbg !723
  br i1 %621, label %622, label %601, !dbg !712, !llvm.loop !724

622:                                              ; preds = %601
  %623 = fmul double %619, 2.000000e+00, !dbg !726
  %624 = select i1 %394, double %623, double %619, !dbg !726
  tail call void @llvm.dbg.value(metadata double %687, metadata !604, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %624, metadata !605, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !129
  br label %684, !dbg !727

625:                                              ; preds = %558
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !649, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %11, metadata !652, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %562, metadata !653, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 50, metadata !654, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %388, metadata !658, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %11, metadata !655, metadata !DIExpression()), !dbg !728
  br i1 %389, label %626, label %639, !dbg !730

626:                                              ; preds = %625
  br i1 %418, label %627, label %641, !dbg !730

627:                                              ; preds = %641, %626
  %628 = phi double [ undef, %626 ], [ %659, %641 ]
  %629 = phi double [ %11, %626 ], [ %659, %641 ]
  %630 = phi i32 [ 0, %626 ], [ %660, %641 ]
  br i1 %420, label %639, label %631, !dbg !730

631:                                              ; preds = %627
  tail call void @llvm.dbg.value(metadata double %629, metadata !655, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %630, metadata !657, metadata !DIExpression()), !dbg !728
  %632 = sitofp i32 %630 to double, !dbg !731
  %633 = fmul double %632, 2.000000e+00, !dbg !732
  %634 = fadd double %633, 1.000000e+00, !dbg !733
  %635 = fmul double %634, %634, !dbg !734
  %636 = fsub double %562, %635, !dbg !735
  %637 = fsub double %636, %629, !dbg !736
  %638 = fdiv double %390, %637, !dbg !737
  tail call void @llvm.dbg.value(metadata double %638, metadata !655, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %630, metadata !657, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !728
  br label %639, !dbg !738

639:                                              ; preds = %631, %627, %625
  %640 = phi double [ %11, %625 ], [ %628, %627 ], [ %638, %631 ], !dbg !728
  tail call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !656, metadata !DIExpression()), !dbg !728
  br label %663, !dbg !738

641:                                              ; preds = %626, %641
  %642 = phi double [ %659, %641 ], [ %11, %626 ]
  %643 = phi i32 [ %660, %641 ], [ 0, %626 ]
  %644 = phi i32 [ %661, %641 ], [ 0, %626 ]
  tail call void @llvm.dbg.value(metadata double %642, metadata !655, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %643, metadata !657, metadata !DIExpression()), !dbg !728
  %645 = sitofp i32 %643 to double, !dbg !731
  %646 = fmul double %645, 2.000000e+00, !dbg !732
  %647 = fadd double %646, 1.000000e+00, !dbg !733
  %648 = fmul double %647, %647, !dbg !734
  %649 = fsub double %562, %648, !dbg !735
  %650 = fsub double %649, %642, !dbg !736
  %651 = fdiv double %390, %650, !dbg !737
  tail call void @llvm.dbg.value(metadata double %651, metadata !655, metadata !DIExpression()), !dbg !728
  %652 = or disjoint i32 %643, 1, !dbg !739
  tail call void @llvm.dbg.value(metadata i32 %652, metadata !657, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %651, metadata !655, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %652, metadata !657, metadata !DIExpression()), !dbg !728
  %653 = sitofp i32 %652 to double, !dbg !731
  %654 = fmul double %653, 2.000000e+00, !dbg !732
  %655 = fadd double %654, 1.000000e+00, !dbg !733
  %656 = fmul double %655, %655, !dbg !734
  %657 = fsub double %562, %656, !dbg !735
  %658 = fsub double %657, %651, !dbg !736
  %659 = fdiv double %390, %658, !dbg !737
  tail call void @llvm.dbg.value(metadata double %659, metadata !655, metadata !DIExpression()), !dbg !728
  %660 = add nuw nsw i32 %643, 2, !dbg !739
  tail call void @llvm.dbg.value(metadata i32 %660, metadata !657, metadata !DIExpression()), !dbg !728
  %661 = add i32 %644, 2, !dbg !730
  %662 = icmp eq i32 %661, %419, !dbg !730
  br i1 %662, label %627, label %641, !dbg !730, !llvm.loop !740

663:                                              ; preds = %663, %639
  %664 = phi i32 [ 0, %639 ], [ %682, %663 ]
  %665 = phi double [ 0.000000e+00, %639 ], [ %681, %663 ]
  tail call void @llvm.dbg.value(metadata i32 %664, metadata !657, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %665, metadata !656, metadata !DIExpression()), !dbg !728
  %666 = sub nuw nsw i32 50, %664, !dbg !742
  %667 = sitofp i32 %666 to double, !dbg !743
  %668 = fmul double %667, 2.000000e+00, !dbg !744
  %669 = fadd double %668, %391, !dbg !745
  %670 = fmul double %669, %669, !dbg !746
  %671 = fsub double %562, %670, !dbg !747
  %672 = fsub double %671, %665, !dbg !748
  %673 = fdiv double %390, %672, !dbg !749
  tail call void @llvm.dbg.value(metadata double %673, metadata !656, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %664, metadata !657, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %664, metadata !657, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !728
  tail call void @llvm.dbg.value(metadata double %673, metadata !656, metadata !DIExpression()), !dbg !728
  %674 = sub nsw i32 49, %664, !dbg !742
  %675 = sitofp i32 %674 to double, !dbg !743
  %676 = fmul double %675, 2.000000e+00, !dbg !744
  %677 = fadd double %676, %391, !dbg !745
  %678 = fmul double %677, %677, !dbg !746
  %679 = fsub double %562, %678, !dbg !747
  %680 = fsub double %679, %673, !dbg !748
  %681 = fdiv double %390, %680, !dbg !749
  tail call void @llvm.dbg.value(metadata double %681, metadata !656, metadata !DIExpression()), !dbg !728
  %682 = add nuw nsw i32 %664, 2, !dbg !750
  tail call void @llvm.dbg.value(metadata i32 %682, metadata !657, metadata !DIExpression()), !dbg !728
  %683 = icmp eq i32 %682, 50, !dbg !751
  br i1 %683, label %684, label %663, !dbg !738, !llvm.loop !752

684:                                              ; preds = %663, %622
  %685 = phi double [ %600, %622 ], [ %640, %663 ]
  %686 = phi double [ %624, %622 ], [ %681, %663 ]
  %687 = fadd double %685, %393, !dbg !754
  %688 = fadd double %687, %686, !dbg !754
  %689 = fsub double %688, %562, !dbg !754
  tail call void @llvm.dbg.value(metadata double %689, metadata !122, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %560, metadata !121, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %562, metadata !120, metadata !DIExpression()), !dbg !129
  %690 = fcmp oeq double %689, %561, !dbg !755
  br i1 %690, label %703, label %691, !dbg !757

691:                                              ; preds = %684
  %692 = fsub double %562, %560, !dbg !758
  %693 = fsub double %689, %561, !dbg !759
  %694 = fdiv double %692, %693, !dbg !760
  %695 = fmul double %689, %694, !dbg !761
  %696 = fsub double %562, %695, !dbg !762
  tail call void @llvm.dbg.value(metadata double %696, metadata !127, metadata !DIExpression()), !dbg !129
  %697 = fsub double %696, %560, !dbg !763
  %698 = tail call double @llvm.fabs.f64(double %697), !dbg !764
  tail call void @llvm.dbg.value(metadata double %698, metadata !124, metadata !DIExpression()), !dbg !129
  %699 = fcmp olt double %698, 0x3CB0000000000000, !dbg !765
  br i1 %699, label %703, label %700, !dbg !767

700:                                              ; preds = %691
  tail call void @llvm.dbg.value(metadata double %689, metadata !123, metadata !DIExpression()), !dbg !129
  %701 = add nuw nsw i32 %559, 1, !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %701, metadata !116, metadata !DIExpression()), !dbg !129
  %702 = icmp eq i32 %701, 42, !dbg !769
  br i1 %702, label %703, label %558, !dbg !771, !llvm.loop !772

703:                                              ; preds = %700, %691, %684
  %704 = phi double [ 0x3CB0000000000000, %684 ], [ 0x3CB0000000000000, %691 ], [ %698, %700 ]
  %705 = phi double [ %562, %684 ], [ %696, %691 ], [ %696, %700 ], !dbg !129
  tail call void @llvm.dbg.value(metadata double %705, metadata !127, metadata !DIExpression()), !dbg !129
  %706 = fsub double %705, %382, !dbg !775
  %707 = tail call double @llvm.fabs.f64(double %706), !dbg !777
  %708 = fcmp ogt double %707, %404, !dbg !778
  %709 = fcmp ogt double %707, %406
  %710 = and i1 %405, %709
  %711 = or i1 %708, %710, !dbg !779
  br i1 %711, label %712, label %728, !dbg !779

712:                                              ; preds = %703
  %713 = add nuw nsw i32 %429, 1, !dbg !780
  tail call void @llvm.dbg.value(metadata i32 %713, metadata !117, metadata !DIExpression()), !dbg !129
  %714 = icmp eq i32 %713, 1000, !dbg !782
  br i1 %714, label %715, label %716, !dbg !784

715:                                              ; preds = %712
  store double %704, ptr %400, align 8, !dbg !785, !tbaa !144
  store double %707, ptr %400, align 8, !dbg !786, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %705, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !117, metadata !DIExpression()), !dbg !129
  store double %705, ptr %2, align 8, !dbg !788, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 489, i32 noundef 5) #9, !dbg !789
  br label %729, !dbg !789

716:                                              ; preds = %712
  %717 = fcmp ogt double %705, %382, !dbg !793
  %718 = fmul double %427, 5.000000e-01, !dbg !795
  tail call void @llvm.dbg.value(metadata double %722, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %722, metadata !126, metadata !DIExpression()), !dbg !129
  %719 = select i1 %717, i32 1, i32 -1
  %720 = select i1 %717, i32 -1, i32 1
  %721 = icmp eq i32 %428, %719, !dbg !795
  %722 = select i1 %721, double %718, double %427, !dbg !795
  tail call void @llvm.dbg.value(metadata double %722, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %720, metadata !119, metadata !DIExpression()), !dbg !129
  %723 = sitofp i32 %720 to double, !dbg !796
  %724 = fmul double %722, %723, !dbg !797
  %725 = sitofp i32 %713 to double, !dbg !798
  %726 = fmul double %724, %725, !dbg !799
  %727 = fadd double %426, %726, !dbg !800
  tail call void @llvm.dbg.value(metadata double %727, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %727, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %713, metadata !117, metadata !DIExpression()), !dbg !129
  br label %425

728:                                              ; preds = %703
  store double %704, ptr %400, align 8, !dbg !785, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %705, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %429, metadata !117, metadata !DIExpression()), !dbg !129
  store double %705, ptr %2, align 8, !dbg !788, !tbaa !137
  br label %729, !dbg !801

729:                                              ; preds = %728, %715, %21, %5
  %730 = phi i32 [ 0, %5 ], [ %22, %21 ], [ 5, %715 ], [ 0, %728 ], !dbg !129
  ret i32 %730, !dbg !802
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_b_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !803 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !805, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %1, metadata !806, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !807, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 50, metadata !809, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !812, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !808, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !823
  %4 = icmp eq i32 %0, 0, !dbg !824
  br i1 %4, label %7, label %5, !dbg !826

5:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double %1, metadata !806, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !805, metadata !DIExpression()), !dbg !823
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !827
  br i1 %6, label %8, label %13, !dbg !829

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 511, i32 noundef 5) #9, !dbg !830
  br label %628, !dbg !830

8:                                                ; preds = %22, %5
  %9 = phi i32 [ %0, %5 ], [ %17, %22 ]
  %10 = mul nsw i32 %9, %9, !dbg !833
  %11 = sitofp i32 %10 to double, !dbg !835
  store double %11, ptr %2, align 8, !dbg !836, !tbaa !137
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !837
  store double 0.000000e+00, ptr %12, align 8, !dbg !838, !tbaa !144
  br label %628, !dbg !839

13:                                               ; preds = %5, %22
  %14 = phi i32 [ %17, %22 ], [ %0, %5 ]
  %15 = phi double [ %21, %22 ], [ %1, %5 ]
  %16 = and i32 %14, 1, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !805, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %15, metadata !806, metadata !DIExpression()), !dbg !823
  %17 = tail call i32 @llvm.abs.i32(i32 %14, i1 true), !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !805, metadata !DIExpression()), !dbg !823
  %18 = fcmp olt double %15, 0.000000e+00, !dbg !843
  br i1 %18, label %19, label %26, !dbg !845

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 0, !dbg !846
  %21 = fneg double %15, !dbg !849
  br i1 %20, label %22, label %24, !dbg !850

22:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !805, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %21, metadata !806, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !807, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 50, metadata !809, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !812, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !823
  %23 = fcmp oeq double %15, 0.000000e+00, !dbg !827
  br i1 %23, label %8, label %13, !dbg !829

24:                                               ; preds = %19
  %25 = tail call i32 @gsl_sf_mathieu_a_e(i32 noundef %17, double noundef %21, ptr noundef %2), !dbg !851, !range !158
  br label %628, !dbg !852

26:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 %17, metadata !853, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double %15, metadata !856, metadata !DIExpression()), !dbg !870
  switch i32 %17, label %174 [
    i32 1, label %27
    i32 2, label %60
    i32 3, label %89
  ], !dbg !872

27:                                               ; preds = %26
  %28 = fcmp ugt double %15, 4.000000e+00, !dbg !873
  br i1 %28, label %39, label %29, !dbg !875

29:                                               ; preds = %27
  %30 = fmul double %15, 5.000000e+00, !dbg !876
  %31 = fmul double %15, %30, !dbg !877
  %32 = fmul double %15, 1.600000e+01, !dbg !878
  %33 = fadd double %32, %31, !dbg !879
  %34 = fadd double %33, 6.400000e+01, !dbg !880
  %35 = tail call double @sqrt(double noundef %34) #9, !dbg !881
  %36 = fadd double %15, %35, !dbg !882
  %37 = fmul double %36, 5.000000e-01, !dbg !883
  %38 = fsub double 5.000000e+00, %37, !dbg !884
  br label %292, !dbg !885

39:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %17, metadata !191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !886
  call void @llvm.dbg.value(metadata double %15, metadata !194, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !196, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !197, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !198, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !199, metadata !DIExpression()), !dbg !886
  %40 = tail call double @sqrt(double noundef %15) #9, !dbg !888
  %41 = fmul double %40, 2.000000e+00, !dbg !889
  call void @llvm.dbg.value(metadata double %41, metadata !200, metadata !DIExpression()), !dbg !886
  %42 = fmul double %41, 1.600000e+01, !dbg !890
  call void @llvm.dbg.value(metadata double %42, metadata !201, metadata !DIExpression()), !dbg !886
  %43 = fmul double %42, %42, !dbg !891
  call void @llvm.dbg.value(metadata double %43, metadata !202, metadata !DIExpression()), !dbg !886
  %44 = fmul double %42, %43, !dbg !892
  call void @llvm.dbg.value(metadata double %44, metadata !203, metadata !DIExpression()), !dbg !886
  %45 = fmul double %42, %44, !dbg !893
  call void @llvm.dbg.value(metadata double %45, metadata !204, metadata !DIExpression()), !dbg !886
  %46 = fmul double %42, %45, !dbg !894
  call void @llvm.dbg.value(metadata double %46, metadata !205, metadata !DIExpression()), !dbg !886
  %47 = fmul double %15, 2.000000e+00, !dbg !895
  %48 = fsub double %41, %47, !dbg !896
  %49 = fadd double %48, -2.500000e-01, !dbg !897
  call void @llvm.dbg.value(metadata double %49, metadata !195, metadata !DIExpression()), !dbg !886
  %50 = fdiv double 1.000000e+00, %42, !dbg !898
  %51 = fsub double %49, %50, !dbg !899
  call void @llvm.dbg.value(metadata double %51, metadata !195, metadata !DIExpression()), !dbg !886
  %52 = fdiv double 1.200000e+01, %43, !dbg !900
  %53 = fsub double %51, %52, !dbg !901
  call void @llvm.dbg.value(metadata double %53, metadata !195, metadata !DIExpression()), !dbg !886
  %54 = fdiv double 2.120000e+02, %44, !dbg !902
  %55 = fsub double %53, %54, !dbg !903
  call void @llvm.dbg.value(metadata double %55, metadata !195, metadata !DIExpression()), !dbg !886
  %56 = fdiv double 4.752000e+03, %45, !dbg !904
  %57 = fsub double %55, %56, !dbg !905
  call void @llvm.dbg.value(metadata double %57, metadata !195, metadata !DIExpression()), !dbg !886
  %58 = fdiv double 1.267520e+05, %46, !dbg !906
  %59 = fsub double %57, %58, !dbg !907
  call void @llvm.dbg.value(metadata double %59, metadata !195, metadata !DIExpression()), !dbg !886
  br label %292, !dbg !908

60:                                               ; preds = %26
  %61 = fcmp ugt double %15, 5.000000e+00, !dbg !909
  br i1 %61, label %67, label %62, !dbg !911

62:                                               ; preds = %60
  %63 = fmul double %15, %15, !dbg !912
  %64 = fadd double %63, 3.600000e+01, !dbg !913
  %65 = tail call double @llvm.sqrt.f64(double %64), !dbg !914
  %66 = fsub double 1.000000e+01, %65, !dbg !915
  br label %292, !dbg !916

67:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 %17, metadata !191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !917
  call void @llvm.dbg.value(metadata double %15, metadata !194, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !196, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata double 9.000000e+00, metadata !197, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata double 8.100000e+01, metadata !198, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata double 7.290000e+02, metadata !199, metadata !DIExpression()), !dbg !917
  %68 = tail call double @sqrt(double noundef %15) #9, !dbg !919
  %69 = fmul double %68, 2.000000e+00, !dbg !920
  call void @llvm.dbg.value(metadata double %69, metadata !200, metadata !DIExpression()), !dbg !917
  %70 = fmul double %69, 1.600000e+01, !dbg !921
  call void @llvm.dbg.value(metadata double %70, metadata !201, metadata !DIExpression()), !dbg !917
  %71 = fmul double %70, %70, !dbg !922
  call void @llvm.dbg.value(metadata double %71, metadata !202, metadata !DIExpression()), !dbg !917
  %72 = fmul double %70, %71, !dbg !923
  call void @llvm.dbg.value(metadata double %72, metadata !203, metadata !DIExpression()), !dbg !917
  %73 = fmul double %70, %72, !dbg !924
  call void @llvm.dbg.value(metadata double %73, metadata !204, metadata !DIExpression()), !dbg !917
  %74 = fmul double %70, %73, !dbg !925
  call void @llvm.dbg.value(metadata double %74, metadata !205, metadata !DIExpression()), !dbg !917
  %75 = fmul double %15, 2.000000e+00, !dbg !926
  %76 = fmul double %69, 3.000000e+00, !dbg !927
  %77 = fsub double %76, %75, !dbg !928
  %78 = fadd double %77, -1.250000e+00, !dbg !929
  call void @llvm.dbg.value(metadata double %78, metadata !195, metadata !DIExpression()), !dbg !917
  %79 = fdiv double 9.000000e+00, %70, !dbg !930
  %80 = fsub double %78, %79, !dbg !931
  call void @llvm.dbg.value(metadata double %80, metadata !195, metadata !DIExpression()), !dbg !917
  %81 = fdiv double 1.800000e+02, %71, !dbg !932
  %82 = fsub double %80, %81, !dbg !933
  call void @llvm.dbg.value(metadata double %82, metadata !195, metadata !DIExpression()), !dbg !917
  %83 = fdiv double 5.076000e+03, %72, !dbg !934
  %84 = fsub double %82, %83, !dbg !935
  call void @llvm.dbg.value(metadata double %84, metadata !195, metadata !DIExpression()), !dbg !917
  %85 = fdiv double 1.749600e+05, %73, !dbg !936
  %86 = fsub double %84, %85, !dbg !937
  call void @llvm.dbg.value(metadata double %86, metadata !195, metadata !DIExpression()), !dbg !917
  %87 = fdiv double 0x415A74C800000000, %74, !dbg !938
  %88 = fsub double %86, %87, !dbg !939
  call void @llvm.dbg.value(metadata double %88, metadata !195, metadata !DIExpression()), !dbg !917
  br label %292, !dbg !940

89:                                               ; preds = %26
  %90 = fcmp ugt double %15, 6.250000e+00, !dbg !941
  br i1 %90, label %152, label %91, !dbg !943

91:                                               ; preds = %89
  %92 = fadd double %15, -8.000000e+00, !dbg !944
  call void @llvm.dbg.value(metadata double %92, metadata !860, metadata !DIExpression()), !dbg !870
  %93 = fmul double %15, 1.600000e+01, !dbg !946
  %94 = fsub double -1.280000e+02, %93, !dbg !947
  %95 = fmul double %15, 2.000000e+00, !dbg !948
  %96 = fmul double %15, %95, !dbg !949
  %97 = fsub double %94, %96, !dbg !950
  call void @llvm.dbg.value(metadata double %97, metadata !859, metadata !DIExpression()), !dbg !870
  %98 = fmul double %15, %15, !dbg !951
  %99 = fsub double 8.000000e+00, %15, !dbg !952
  %100 = fmul double %98, %99, !dbg !953
  call void @llvm.dbg.value(metadata double %100, metadata !858, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double %92, metadata !452, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata double %97, metadata !457, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata double %100, metadata !458, metadata !DIExpression()), !dbg !954
  %101 = fmul double %97, 3.000000e+00, !dbg !956
  %102 = fmul double %92, %92, !dbg !957
  %103 = fsub double %101, %102, !dbg !958
  %104 = fdiv double %103, 9.000000e+00, !dbg !959
  call void @llvm.dbg.value(metadata double %104, metadata !459, metadata !DIExpression()), !dbg !954
  %105 = fmul double %92, 9.000000e+00, !dbg !960
  %106 = fmul double %105, %97, !dbg !961
  %107 = fmul double %100, 2.700000e+01, !dbg !962
  %108 = fsub double %106, %107, !dbg !963
  %109 = fmul double %92, 2.000000e+00, !dbg !964
  %110 = fmul double %92, %109, !dbg !965
  %111 = fmul double %92, %110, !dbg !966
  %112 = fsub double %108, %111, !dbg !967
  %113 = fdiv double %112, 5.400000e+01, !dbg !968
  call void @llvm.dbg.value(metadata double %113, metadata !460, metadata !DIExpression()), !dbg !954
  %114 = fmul double %104, %104, !dbg !969
  %115 = fmul double %104, %114, !dbg !970
  %116 = fmul double %113, %113, !dbg !971
  %117 = fadd double %115, %116, !dbg !972
  call void @llvm.dbg.value(metadata double %117, metadata !461, metadata !DIExpression()), !dbg !954
  %118 = fcmp ult double %117, 0.000000e+00, !dbg !973
  br i1 %118, label %132, label %119, !dbg !974

119:                                              ; preds = %91
  %120 = tail call double @sqrt(double noundef %117) #9, !dbg !975
  %121 = fadd double %113, %120, !dbg !976
  call void @llvm.dbg.value(metadata double %121, metadata !464, metadata !DIExpression()), !dbg !977
  %122 = tail call double @llvm.fabs.f64(double %121), !dbg !978
  %123 = fdiv double %122, %121, !dbg !979
  %124 = tail call double @pow(double noundef %122, double noundef 0x3FD5555555555555) #9, !dbg !980
  %125 = fmul double %124, %123, !dbg !981
  call void @llvm.dbg.value(metadata double %125, metadata !462, metadata !DIExpression()), !dbg !954
  %126 = tail call double @sqrt(double noundef %117) #9, !dbg !982
  %127 = fsub double %113, %126, !dbg !983
  call void @llvm.dbg.value(metadata double %127, metadata !464, metadata !DIExpression()), !dbg !977
  %128 = tail call double @llvm.fabs.f64(double %127), !dbg !984
  %129 = fdiv double %128, %127, !dbg !985
  %130 = tail call double @pow(double noundef %128, double noundef 0x3FD5555555555555) #9, !dbg !986
  %131 = fmul double %130, %129, !dbg !987
  call void @llvm.dbg.value(metadata double %131, metadata !463, metadata !DIExpression()), !dbg !954
  br label %145, !dbg !988

132:                                              ; preds = %91
  %133 = fneg double %104, !dbg !989
  %134 = fmul double %104, %133, !dbg !990
  %135 = fmul double %104, %134, !dbg !991
  %136 = tail call double @sqrt(double noundef %135) #9, !dbg !992
  %137 = fdiv double %113, %136, !dbg !993
  %138 = tail call double @acos(double noundef %137) #9, !dbg !994
  call void @llvm.dbg.value(metadata double %138, metadata !467, metadata !DIExpression()), !dbg !995
  %139 = tail call double @sqrt(double noundef %133) #9, !dbg !996
  %140 = fmul double %139, 2.000000e+00, !dbg !997
  %141 = fadd double %138, 0x402921FB54442D18, !dbg !998
  %142 = fdiv double %141, 3.000000e+00, !dbg !999
  %143 = tail call double @cos(double noundef %142) #9, !dbg !1000
  %144 = fmul double %140, %143, !dbg !1001
  call void @llvm.dbg.value(metadata double %144, metadata !462, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !463, metadata !DIExpression()), !dbg !954
  br label %145

145:                                              ; preds = %132, %119
  %146 = phi double [ %131, %119 ], [ 0.000000e+00, %132 ], !dbg !1002
  %147 = phi double [ %125, %119 ], [ %144, %132 ], !dbg !1002
  call void @llvm.dbg.value(metadata double %147, metadata !462, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata double %146, metadata !463, metadata !DIExpression()), !dbg !954
  %148 = fadd double %146, %147, !dbg !1003
  %149 = fdiv double %92, 3.000000e+00, !dbg !1004
  %150 = fsub double %148, %149, !dbg !1005
  call void @llvm.dbg.value(metadata double %150, metadata !857, metadata !DIExpression()), !dbg !870
  %151 = fcmp olt double %150, 0.000000e+00, !dbg !1006
  br i1 %151, label %284, label %289, !dbg !1008

152:                                              ; preds = %89
  call void @llvm.dbg.value(metadata i32 %17, metadata !191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1009
  call void @llvm.dbg.value(metadata double %15, metadata !194, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !196, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double 2.500000e+01, metadata !197, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double 6.250000e+02, metadata !198, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double 1.562500e+04, metadata !199, metadata !DIExpression()), !dbg !1009
  %153 = tail call double @sqrt(double noundef %15) #9, !dbg !1011
  %154 = fmul double %153, 2.000000e+00, !dbg !1012
  call void @llvm.dbg.value(metadata double %154, metadata !200, metadata !DIExpression()), !dbg !1009
  %155 = fmul double %154, 1.600000e+01, !dbg !1013
  call void @llvm.dbg.value(metadata double %155, metadata !201, metadata !DIExpression()), !dbg !1009
  %156 = fmul double %155, %155, !dbg !1014
  call void @llvm.dbg.value(metadata double %156, metadata !202, metadata !DIExpression()), !dbg !1009
  %157 = fmul double %155, %156, !dbg !1015
  call void @llvm.dbg.value(metadata double %157, metadata !203, metadata !DIExpression()), !dbg !1009
  %158 = fmul double %155, %157, !dbg !1016
  call void @llvm.dbg.value(metadata double %158, metadata !204, metadata !DIExpression()), !dbg !1009
  %159 = fmul double %155, %158, !dbg !1017
  call void @llvm.dbg.value(metadata double %159, metadata !205, metadata !DIExpression()), !dbg !1009
  %160 = fmul double %15, 2.000000e+00, !dbg !1018
  %161 = fmul double %154, 5.000000e+00, !dbg !1019
  %162 = fsub double %161, %160, !dbg !1020
  %163 = fadd double %162, -3.250000e+00, !dbg !1021
  call void @llvm.dbg.value(metadata double %163, metadata !195, metadata !DIExpression()), !dbg !1009
  %164 = fdiv double 3.500000e+01, %155, !dbg !1022
  %165 = fsub double %163, %164, !dbg !1023
  call void @llvm.dbg.value(metadata double %165, metadata !195, metadata !DIExpression()), !dbg !1009
  %166 = fdiv double 9.960000e+02, %156, !dbg !1024
  %167 = fsub double %165, %166, !dbg !1025
  call void @llvm.dbg.value(metadata double %167, metadata !195, metadata !DIExpression()), !dbg !1009
  %168 = fdiv double 3.910000e+04, %157, !dbg !1026
  %169 = fsub double %167, %168, !dbg !1027
  call void @llvm.dbg.value(metadata double %169, metadata !195, metadata !DIExpression()), !dbg !1009
  %170 = fdiv double 0x413C2AB000000000, %158, !dbg !1028
  %171 = fsub double %169, %170, !dbg !1029
  call void @llvm.dbg.value(metadata double %171, metadata !195, metadata !DIExpression()), !dbg !1009
  %172 = fdiv double 0x41978EC580000000, %159, !dbg !1030
  %173 = fsub double %171, %172, !dbg !1031
  call void @llvm.dbg.value(metadata double %173, metadata !195, metadata !DIExpression()), !dbg !1009
  br label %292, !dbg !1032

174:                                              ; preds = %26
  %175 = icmp ult i32 %17, 70, !dbg !1033
  br i1 %175, label %176, label %281, !dbg !1034

176:                                              ; preds = %174
  %177 = sitofp i32 %17 to double, !dbg !1035
  %178 = fmul double %177, 1.700000e+00, !dbg !1036
  %179 = tail call double @sqrt(double noundef %15) #9, !dbg !1037
  %180 = fmul double %179, 2.000000e+00, !dbg !1038
  %181 = fcmp ogt double %178, %180, !dbg !1039
  br i1 %181, label %182, label %225, !dbg !1040

182:                                              ; preds = %176
  %183 = mul i32 %14, %14, !dbg !1041
  %184 = sitofp i32 %183 to double, !dbg !1042
  call void @llvm.dbg.value(metadata double %184, metadata !861, metadata !DIExpression()), !dbg !1043
  %185 = fadd double %184, -1.000000e+00, !dbg !1044
  %186 = fmul double %185, %185, !dbg !1045
  call void @llvm.dbg.value(metadata double %186, metadata !867, metadata !DIExpression()), !dbg !1043
  %187 = fmul double %15, %15, !dbg !1046
  call void @llvm.dbg.value(metadata double %187, metadata !868, metadata !DIExpression()), !dbg !1043
  %188 = fmul double %187, %187, !dbg !1047
  call void @llvm.dbg.value(metadata double %188, metadata !869, metadata !DIExpression()), !dbg !1043
  %189 = fmul double %187, 5.000000e-01, !dbg !1048
  %190 = fdiv double %189, %185, !dbg !1049
  %191 = fadd double %190, %184, !dbg !1050
  call void @llvm.dbg.value(metadata double %191, metadata !857, metadata !DIExpression()), !dbg !870
  %192 = fmul double %184, 5.000000e+00, !dbg !1051
  %193 = fadd double %192, 7.000000e+00, !dbg !1052
  %194 = fmul double %188, %193, !dbg !1053
  %195 = fmul double %186, 3.200000e+01, !dbg !1054
  %196 = fmul double %185, %195, !dbg !1055
  %197 = fadd double %184, -4.000000e+00, !dbg !1056
  %198 = fmul double %197, %196, !dbg !1057
  %199 = fdiv double %194, %198, !dbg !1058
  %200 = fadd double %191, %199, !dbg !1059
  call void @llvm.dbg.value(metadata double %200, metadata !857, metadata !DIExpression()), !dbg !870
  %201 = fmul double %184, 9.000000e+00, !dbg !1060
  %202 = fmul double %201, %184, !dbg !1061
  %203 = fmul double %184, 5.800000e+01, !dbg !1062
  %204 = fadd double %203, %202, !dbg !1063
  %205 = fadd double %204, 2.900000e+01, !dbg !1064
  %206 = fmul double %188, %205, !dbg !1065
  %207 = fmul double %187, %206, !dbg !1066
  %208 = fmul double %186, 6.400000e+01, !dbg !1067
  %209 = fmul double %186, %208, !dbg !1068
  %210 = fmul double %185, %209, !dbg !1069
  %211 = fmul double %197, %210, !dbg !1070
  %212 = fadd double %184, -9.000000e+00, !dbg !1071
  %213 = fmul double %212, %211, !dbg !1072
  %214 = fdiv double %207, %213, !dbg !1073
  %215 = fadd double %200, %214, !dbg !1074
  call void @llvm.dbg.value(metadata double %215, metadata !857, metadata !DIExpression()), !dbg !870
  %216 = fmul double %177, 1.400000e+00, !dbg !1075
  %217 = tail call double @sqrt(double noundef %15) #9, !dbg !1077
  %218 = fmul double %217, 2.000000e+00, !dbg !1078
  %219 = fcmp olt double %216, %218, !dbg !1079
  br i1 %219, label %220, label %292, !dbg !1080

220:                                              ; preds = %182
  %221 = add nsw i32 %17, -1, !dbg !1081
  %222 = tail call fastcc double @asymptotic(i32 noundef %221, double noundef %15), !dbg !1083
  %223 = fadd double %215, %222, !dbg !1084
  call void @llvm.dbg.value(metadata double %223, metadata !857, metadata !DIExpression()), !dbg !870
  %224 = fmul double %223, 5.000000e-01, !dbg !1085
  call void @llvm.dbg.value(metadata double %224, metadata !857, metadata !DIExpression()), !dbg !870
  br label %292, !dbg !1086

225:                                              ; preds = %176
  call void @llvm.dbg.value(metadata i32 %17, metadata !191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1087
  call void @llvm.dbg.value(metadata double %15, metadata !194, metadata !DIExpression()), !dbg !1087
  %226 = shl nuw nsw i32 %17, 1, !dbg !1089
  %227 = add nsw i32 %226, -1, !dbg !1090
  %228 = sitofp i32 %227 to double, !dbg !1091
  call void @llvm.dbg.value(metadata double %228, metadata !196, metadata !DIExpression()), !dbg !1087
  %229 = fmul double %228, %228, !dbg !1092
  call void @llvm.dbg.value(metadata double %229, metadata !197, metadata !DIExpression()), !dbg !1087
  %230 = fmul double %229, %229, !dbg !1093
  call void @llvm.dbg.value(metadata double %230, metadata !198, metadata !DIExpression()), !dbg !1087
  %231 = fmul double %229, %230, !dbg !1094
  call void @llvm.dbg.value(metadata double %231, metadata !199, metadata !DIExpression()), !dbg !1087
  %232 = tail call double @sqrt(double noundef %15) #9, !dbg !1095
  %233 = fmul double %232, 2.000000e+00, !dbg !1096
  call void @llvm.dbg.value(metadata double %233, metadata !200, metadata !DIExpression()), !dbg !1087
  %234 = fmul double %233, 1.600000e+01, !dbg !1097
  call void @llvm.dbg.value(metadata double %234, metadata !201, metadata !DIExpression()), !dbg !1087
  %235 = fmul double %234, %234, !dbg !1098
  call void @llvm.dbg.value(metadata double %235, metadata !202, metadata !DIExpression()), !dbg !1087
  %236 = fmul double %234, %235, !dbg !1099
  call void @llvm.dbg.value(metadata double %236, metadata !203, metadata !DIExpression()), !dbg !1087
  %237 = fmul double %234, %236, !dbg !1100
  call void @llvm.dbg.value(metadata double %237, metadata !204, metadata !DIExpression()), !dbg !1087
  %238 = fmul double %234, %237, !dbg !1101
  call void @llvm.dbg.value(metadata double %238, metadata !205, metadata !DIExpression()), !dbg !1087
  %239 = fmul double %15, 2.000000e+00, !dbg !1102
  %240 = fmul double %233, %228, !dbg !1103
  %241 = fsub double %240, %239, !dbg !1104
  %242 = fadd double %229, 1.000000e+00, !dbg !1105
  %243 = fmul double %242, 1.250000e-01, !dbg !1106
  %244 = fsub double %241, %243, !dbg !1107
  call void @llvm.dbg.value(metadata double %244, metadata !195, metadata !DIExpression()), !dbg !1087
  %245 = fmul double %228, 2.500000e-01, !dbg !1108
  %246 = fadd double %229, 3.000000e+00, !dbg !1109
  %247 = fmul double %245, %246, !dbg !1110
  %248 = fdiv double %247, %234, !dbg !1111
  %249 = fsub double %244, %248, !dbg !1112
  call void @llvm.dbg.value(metadata double %249, metadata !195, metadata !DIExpression()), !dbg !1087
  %250 = fmul double %230, 5.000000e+00, !dbg !1113
  %251 = fmul double %229, 3.400000e+01, !dbg !1114
  %252 = fadd double %251, %250, !dbg !1115
  %253 = fadd double %252, 9.000000e+00, !dbg !1116
  %254 = fmul double %253, 2.500000e-01, !dbg !1117
  %255 = fdiv double %254, %235, !dbg !1118
  %256 = fsub double %249, %255, !dbg !1119
  call void @llvm.dbg.value(metadata double %256, metadata !195, metadata !DIExpression()), !dbg !1087
  %257 = fmul double %230, 3.300000e+01, !dbg !1120
  %258 = fmul double %229, 4.100000e+02, !dbg !1121
  %259 = fadd double %258, %257, !dbg !1122
  %260 = fadd double %259, 4.050000e+02, !dbg !1123
  %261 = fmul double %245, %260, !dbg !1124
  %262 = fdiv double %261, %236, !dbg !1125
  %263 = fsub double %256, %262, !dbg !1126
  call void @llvm.dbg.value(metadata double %263, metadata !195, metadata !DIExpression()), !dbg !1087
  %264 = fmul double %231, 6.300000e+01, !dbg !1127
  %265 = fmul double %230, 1.260000e+03, !dbg !1128
  %266 = fadd double %265, %264, !dbg !1129
  %267 = fmul double %229, 2.943000e+03, !dbg !1130
  %268 = fadd double %267, %266, !dbg !1131
  %269 = fadd double %268, 4.860000e+02, !dbg !1132
  %270 = fdiv double %269, %237, !dbg !1133
  %271 = fsub double %263, %270, !dbg !1134
  call void @llvm.dbg.value(metadata double %271, metadata !195, metadata !DIExpression()), !dbg !1087
  %272 = fmul double %231, 5.270000e+02, !dbg !1135
  %273 = fmul double %230, 1.561700e+04, !dbg !1136
  %274 = fadd double %273, %272, !dbg !1137
  %275 = fmul double %229, 6.900100e+04, !dbg !1138
  %276 = fadd double %275, %274, !dbg !1139
  %277 = fadd double %276, 4.160700e+04, !dbg !1140
  %278 = fmul double %277, %228, !dbg !1141
  %279 = fdiv double %278, %238, !dbg !1142
  %280 = fsub double %271, %279, !dbg !1143
  call void @llvm.dbg.value(metadata double %280, metadata !195, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata double %280, metadata !857, metadata !DIExpression()), !dbg !870
  br label %292

281:                                              ; preds = %174
  %282 = mul i32 %14, %14, !dbg !1144
  %283 = sitofp i32 %282 to double, !dbg !1145
  br label %292, !dbg !1146

284:                                              ; preds = %145
  %285 = tail call double @sqrt(double noundef %15) #9, !dbg !1147
  %286 = fcmp ogt double %285, 0x3FD3333333333334, !dbg !1148
  br i1 %286, label %287, label %289, !dbg !1149

287:                                              ; preds = %284
  %288 = tail call fastcc double @asymptotic(i32 noundef 2, double noundef %15), !dbg !1150
  br label %292, !dbg !1151

289:                                              ; preds = %284, %145
  %290 = tail call double @llvm.fabs.f64(double %150), !dbg !1152
  %291 = fadd double %290, 9.000000e+00, !dbg !1153
  br label %292, !dbg !1154

292:                                              ; preds = %29, %39, %62, %67, %152, %182, %220, %225, %281, %287, %289
  %293 = phi double [ %283, %281 ], [ %288, %287 ], [ %291, %289 ], [ %173, %152 ], [ %66, %62 ], [ %88, %67 ], [ %38, %29 ], [ %59, %39 ], [ %280, %225 ], [ %224, %220 ], [ %215, %182 ], !dbg !870
  tail call void @llvm.dbg.value(metadata double %293, metadata !822, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %293, metadata !821, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %293, metadata !819, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !823
  %294 = icmp eq i32 %16, 0
  %295 = fneg double %15
  %296 = sitofp i32 %17 to float
  %297 = fpext float %296 to double
  %298 = fmul double %297, 5.000000e-01
  %299 = fadd double %298, -5.000000e-01
  %300 = fptosi double %299 to i32
  %301 = icmp sgt i32 %300, 0
  %302 = fmul double %15, %15
  %303 = sitofp i32 %17 to double
  %304 = mul i32 %14, %14
  %305 = sitofp i32 %304 to double
  %306 = icmp ugt i32 %17, 3
  %307 = lshr i32 %17, 1
  %308 = add nsw i32 %307, -2
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1
  %310 = fmul double %303, 1.000000e-02
  %311 = tail call double @llvm.fabs.f64(double %293)
  %312 = fmul double %310, %311
  %313 = fadd double %312, 3.000000e+00
  %314 = icmp ugt i32 %17, 10
  %315 = fmul double %303, 1.500000e+00
  %316 = add i32 %300, -1, !dbg !1155
  %317 = add nsw i32 %307, -1, !dbg !1155
  %318 = and i32 %300, 1
  %319 = icmp eq i32 %316, 0
  %320 = and i32 %300, 2147483646
  %321 = icmp eq i32 %318, 0
  %322 = and i32 %317, 1
  %323 = icmp eq i32 %308, 0
  %324 = and i32 %317, -2
  %325 = icmp eq i32 %322, 0
  %326 = and i32 %300, 1
  %327 = icmp eq i32 %316, 0
  %328 = and i32 %300, 2147483646
  %329 = icmp eq i32 %326, 0
  %330 = and i32 %317, 1
  %331 = icmp eq i32 %308, 0
  %332 = and i32 %317, -2
  %333 = icmp eq i32 %330, 0
  br label %334, !dbg !1155

334:                                              ; preds = %615, %292
  %335 = phi double [ %293, %292 ], [ %626, %615 ]
  %336 = phi double [ 2.500000e-02, %292 ], [ %621, %615 ]
  %337 = phi i32 [ 0, %292 ], [ %619, %615 ]
  %338 = phi i32 [ 0, %292 ], [ %612, %615 ]
  tail call void @llvm.dbg.value(metadata double %335, metadata !822, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %336, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !813, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %338, metadata !811, metadata !DIExpression()), !dbg !823
  %339 = fadd double %335, 1.000000e-03, !dbg !1156
  tail call void @llvm.dbg.value(metadata double %339, metadata !814, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !823
  br i1 %294, label %340, label %397, !dbg !1158

340:                                              ; preds = %334
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1159, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double undef, metadata !1162, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double %339, metadata !1163, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1164, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1168, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1165, metadata !DIExpression()), !dbg !1169
  br i1 %306, label %341, label %354, !dbg !1172

341:                                              ; preds = %340
  br i1 %323, label %342, label %356, !dbg !1172

342:                                              ; preds = %356, %341
  %343 = phi double [ undef, %341 ], [ %373, %356 ]
  %344 = phi double [ 0.000000e+00, %341 ], [ %373, %356 ]
  %345 = phi i32 [ 0, %341 ], [ %367, %356 ]
  br i1 %325, label %354, label %346, !dbg !1172

346:                                              ; preds = %342
  tail call void @llvm.dbg.value(metadata double %344, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %345, metadata !1167, metadata !DIExpression()), !dbg !1169
  %347 = add nuw nsw i32 %345, 1, !dbg !1174
  %348 = sitofp i32 %347 to double, !dbg !1176
  %349 = fmul double %348, 4.000000e+00, !dbg !1177
  %350 = fmul double %349, %348, !dbg !1178
  %351 = fsub double %339, %350, !dbg !1179
  %352 = fsub double %351, %344, !dbg !1180
  %353 = fdiv double %302, %352, !dbg !1181
  tail call void @llvm.dbg.value(metadata double %353, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %347, metadata !1167, metadata !DIExpression()), !dbg !1169
  br label %354, !dbg !1182

354:                                              ; preds = %346, %342, %340
  %355 = phi double [ 0.000000e+00, %340 ], [ %343, %342 ], [ %353, %346 ], !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1166, metadata !DIExpression()), !dbg !1169
  br label %376, !dbg !1182

356:                                              ; preds = %341, %356
  %357 = phi double [ %373, %356 ], [ 0.000000e+00, %341 ]
  %358 = phi i32 [ %367, %356 ], [ 0, %341 ]
  %359 = phi i32 [ %374, %356 ], [ 0, %341 ]
  tail call void @llvm.dbg.value(metadata double %357, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %358, metadata !1167, metadata !DIExpression()), !dbg !1169
  %360 = or disjoint i32 %358, 1, !dbg !1174
  %361 = sitofp i32 %360 to double, !dbg !1176
  %362 = fmul double %361, 4.000000e+00, !dbg !1177
  %363 = fmul double %362, %361, !dbg !1178
  %364 = fsub double %339, %363, !dbg !1179
  %365 = fsub double %364, %357, !dbg !1180
  %366 = fdiv double %302, %365, !dbg !1181
  tail call void @llvm.dbg.value(metadata double %366, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %360, metadata !1167, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double %366, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %360, metadata !1167, metadata !DIExpression()), !dbg !1169
  %367 = add nuw nsw i32 %358, 2, !dbg !1174
  %368 = sitofp i32 %367 to double, !dbg !1176
  %369 = fmul double %368, 4.000000e+00, !dbg !1177
  %370 = fmul double %369, %368, !dbg !1178
  %371 = fsub double %339, %370, !dbg !1179
  %372 = fsub double %371, %366, !dbg !1180
  %373 = fdiv double %302, %372, !dbg !1181
  tail call void @llvm.dbg.value(metadata double %373, metadata !1165, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !1167, metadata !DIExpression()), !dbg !1169
  %374 = add i32 %359, 2, !dbg !1172
  %375 = icmp eq i32 %374, %324, !dbg !1172
  br i1 %375, label %342, label %356, !dbg !1172, !llvm.loop !1184

376:                                              ; preds = %376, %354
  %377 = phi i32 [ 0, %354 ], [ %395, %376 ]
  %378 = phi double [ 0.000000e+00, %354 ], [ %394, %376 ]
  tail call void @llvm.dbg.value(metadata i32 %377, metadata !1167, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double %378, metadata !1166, metadata !DIExpression()), !dbg !1169
  %379 = sub nuw nsw i32 50, %377, !dbg !1186
  %380 = sitofp i32 %379 to double, !dbg !1188
  %381 = fmul double %380, 2.000000e+00, !dbg !1189
  %382 = fadd double %381, %303, !dbg !1190
  %383 = fmul double %382, %382, !dbg !1191
  %384 = fsub double %339, %383, !dbg !1192
  %385 = fsub double %384, %378, !dbg !1193
  %386 = fdiv double %302, %385, !dbg !1194
  tail call void @llvm.dbg.value(metadata double %386, metadata !1166, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %377, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %377, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1169
  tail call void @llvm.dbg.value(metadata double %386, metadata !1166, metadata !DIExpression()), !dbg !1169
  %387 = sub nsw i32 49, %377, !dbg !1186
  %388 = sitofp i32 %387 to double, !dbg !1188
  %389 = fmul double %388, 2.000000e+00, !dbg !1189
  %390 = fadd double %389, %303, !dbg !1190
  %391 = fmul double %390, %390, !dbg !1191
  %392 = fsub double %339, %391, !dbg !1192
  %393 = fsub double %392, %386, !dbg !1193
  %394 = fdiv double %302, %393, !dbg !1194
  tail call void @llvm.dbg.value(metadata double %394, metadata !1166, metadata !DIExpression()), !dbg !1169
  %395 = add nuw nsw i32 %377, 2, !dbg !1195
  tail call void @llvm.dbg.value(metadata i32 %395, metadata !1167, metadata !DIExpression()), !dbg !1169
  %396 = icmp eq i32 %395, 50, !dbg !1196
  br i1 %396, label %456, label %376, !dbg !1182, !llvm.loop !1197

397:                                              ; preds = %334
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1199, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double undef, metadata !1202, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double %339, metadata !1203, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1204, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %300, metadata !1208, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double %295, metadata !1205, metadata !DIExpression()), !dbg !1209
  br i1 %301, label %398, label %411, !dbg !1211

398:                                              ; preds = %397
  br i1 %319, label %399, label %413, !dbg !1211

399:                                              ; preds = %413, %398
  %400 = phi double [ undef, %398 ], [ %431, %413 ]
  %401 = phi double [ %295, %398 ], [ %431, %413 ]
  %402 = phi i32 [ 0, %398 ], [ %432, %413 ]
  br i1 %321, label %411, label %403, !dbg !1211

403:                                              ; preds = %399
  tail call void @llvm.dbg.value(metadata double %401, metadata !1205, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !1207, metadata !DIExpression()), !dbg !1209
  %404 = sitofp i32 %402 to double, !dbg !1213
  %405 = fmul double %404, 2.000000e+00, !dbg !1215
  %406 = fadd double %405, 1.000000e+00, !dbg !1216
  %407 = fmul double %406, %406, !dbg !1217
  %408 = fsub double %339, %407, !dbg !1218
  %409 = fsub double %408, %401, !dbg !1219
  %410 = fdiv double %302, %409, !dbg !1220
  tail call void @llvm.dbg.value(metadata double %410, metadata !1205, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1209
  br label %411, !dbg !1221

411:                                              ; preds = %403, %399, %397
  %412 = phi double [ %295, %397 ], [ %400, %399 ], [ %410, %403 ], !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1206, metadata !DIExpression()), !dbg !1209
  br label %435, !dbg !1221

413:                                              ; preds = %398, %413
  %414 = phi double [ %431, %413 ], [ %295, %398 ]
  %415 = phi i32 [ %432, %413 ], [ 0, %398 ]
  %416 = phi i32 [ %433, %413 ], [ 0, %398 ]
  tail call void @llvm.dbg.value(metadata double %414, metadata !1205, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %415, metadata !1207, metadata !DIExpression()), !dbg !1209
  %417 = sitofp i32 %415 to double, !dbg !1213
  %418 = fmul double %417, 2.000000e+00, !dbg !1215
  %419 = fadd double %418, 1.000000e+00, !dbg !1216
  %420 = fmul double %419, %419, !dbg !1217
  %421 = fsub double %339, %420, !dbg !1218
  %422 = fsub double %421, %414, !dbg !1219
  %423 = fdiv double %302, %422, !dbg !1220
  tail call void @llvm.dbg.value(metadata double %423, metadata !1205, metadata !DIExpression()), !dbg !1209
  %424 = or disjoint i32 %415, 1, !dbg !1223
  tail call void @llvm.dbg.value(metadata i32 %424, metadata !1207, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double %423, metadata !1205, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %424, metadata !1207, metadata !DIExpression()), !dbg !1209
  %425 = sitofp i32 %424 to double, !dbg !1213
  %426 = fmul double %425, 2.000000e+00, !dbg !1215
  %427 = fadd double %426, 1.000000e+00, !dbg !1216
  %428 = fmul double %427, %427, !dbg !1217
  %429 = fsub double %339, %428, !dbg !1218
  %430 = fsub double %429, %423, !dbg !1219
  %431 = fdiv double %302, %430, !dbg !1220
  tail call void @llvm.dbg.value(metadata double %431, metadata !1205, metadata !DIExpression()), !dbg !1209
  %432 = add nuw nsw i32 %415, 2, !dbg !1223
  tail call void @llvm.dbg.value(metadata i32 %432, metadata !1207, metadata !DIExpression()), !dbg !1209
  %433 = add i32 %416, 2, !dbg !1211
  %434 = icmp eq i32 %433, %320, !dbg !1211
  br i1 %434, label %399, label %413, !dbg !1211, !llvm.loop !1224

435:                                              ; preds = %435, %411
  %436 = phi i32 [ 0, %411 ], [ %454, %435 ]
  %437 = phi double [ 0.000000e+00, %411 ], [ %453, %435 ]
  tail call void @llvm.dbg.value(metadata i32 %436, metadata !1207, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata double %437, metadata !1206, metadata !DIExpression()), !dbg !1209
  %438 = sub nuw nsw i32 50, %436, !dbg !1226
  %439 = sitofp i32 %438 to double, !dbg !1228
  %440 = fmul double %439, 2.000000e+00, !dbg !1229
  %441 = fadd double %440, %303, !dbg !1230
  %442 = fmul double %441, %441, !dbg !1231
  %443 = fsub double %339, %442, !dbg !1232
  %444 = fsub double %443, %437, !dbg !1233
  %445 = fdiv double %302, %444, !dbg !1234
  tail call void @llvm.dbg.value(metadata double %445, metadata !1206, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %436, metadata !1207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %436, metadata !1207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1209
  tail call void @llvm.dbg.value(metadata double %445, metadata !1206, metadata !DIExpression()), !dbg !1209
  %446 = sub nsw i32 49, %436, !dbg !1226
  %447 = sitofp i32 %446 to double, !dbg !1228
  %448 = fmul double %447, 2.000000e+00, !dbg !1229
  %449 = fadd double %448, %303, !dbg !1230
  %450 = fmul double %449, %449, !dbg !1231
  %451 = fsub double %339, %450, !dbg !1232
  %452 = fsub double %451, %445, !dbg !1233
  %453 = fdiv double %302, %452, !dbg !1234
  tail call void @llvm.dbg.value(metadata double %453, metadata !1206, metadata !DIExpression()), !dbg !1209
  %454 = add nuw nsw i32 %436, 2, !dbg !1235
  tail call void @llvm.dbg.value(metadata i32 %454, metadata !1207, metadata !DIExpression()), !dbg !1209
  %455 = icmp eq i32 %454, 50, !dbg !1236
  br i1 %455, label %456, label %435, !dbg !1221, !llvm.loop !1237

456:                                              ; preds = %435, %376
  %457 = phi double [ %355, %376 ], [ %412, %435 ]
  %458 = phi double [ %394, %376 ], [ %453, %435 ]
  %459 = fadd double %457, %305, !dbg !1239
  %460 = fadd double %459, %458, !dbg !1239
  %461 = fsub double %460, %339, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %461, metadata !817, metadata !DIExpression()), !dbg !823
  br label %462, !dbg !1240

462:                                              ; preds = %599, %456
  %463 = phi i32 [ 0, %456 ], [ %600, %599 ], !dbg !1241
  %464 = phi double [ %339, %456 ], [ %466, %599 ], !dbg !1241
  %465 = phi double [ %461, %456 ], [ %588, %599 ], !dbg !1241
  %466 = phi double [ %335, %456 ], [ %595, %599 ], !dbg !823
  tail call void @llvm.dbg.value(metadata double %466, metadata !821, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %465, metadata !817, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %464, metadata !814, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %463, metadata !810, metadata !DIExpression()), !dbg !823
  br i1 %294, label %467, label %524, !dbg !1242

467:                                              ; preds = %462
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1159, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double undef, metadata !1162, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double %466, metadata !1163, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1164, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1168, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1165, metadata !DIExpression()), !dbg !1246
  br i1 %306, label %468, label %481, !dbg !1249

468:                                              ; preds = %467
  br i1 %331, label %469, label %483, !dbg !1249

469:                                              ; preds = %483, %468
  %470 = phi double [ undef, %468 ], [ %500, %483 ]
  %471 = phi double [ 0.000000e+00, %468 ], [ %500, %483 ]
  %472 = phi i32 [ 0, %468 ], [ %494, %483 ]
  br i1 %333, label %481, label %473, !dbg !1249

473:                                              ; preds = %469
  tail call void @llvm.dbg.value(metadata double %471, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %472, metadata !1167, metadata !DIExpression()), !dbg !1246
  %474 = add nuw nsw i32 %472, 1, !dbg !1250
  %475 = sitofp i32 %474 to double, !dbg !1251
  %476 = fmul double %475, 4.000000e+00, !dbg !1252
  %477 = fmul double %476, %475, !dbg !1253
  %478 = fsub double %466, %477, !dbg !1254
  %479 = fsub double %478, %471, !dbg !1255
  %480 = fdiv double %302, %479, !dbg !1256
  tail call void @llvm.dbg.value(metadata double %480, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %474, metadata !1167, metadata !DIExpression()), !dbg !1246
  br label %481, !dbg !1257

481:                                              ; preds = %473, %469, %467
  %482 = phi double [ 0.000000e+00, %467 ], [ %470, %469 ], [ %480, %473 ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1166, metadata !DIExpression()), !dbg !1246
  br label %503, !dbg !1257

483:                                              ; preds = %468, %483
  %484 = phi double [ %500, %483 ], [ 0.000000e+00, %468 ]
  %485 = phi i32 [ %494, %483 ], [ 0, %468 ]
  %486 = phi i32 [ %501, %483 ], [ 0, %468 ]
  tail call void @llvm.dbg.value(metadata double %484, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %485, metadata !1167, metadata !DIExpression()), !dbg !1246
  %487 = or disjoint i32 %485, 1, !dbg !1250
  %488 = sitofp i32 %487 to double, !dbg !1251
  %489 = fmul double %488, 4.000000e+00, !dbg !1252
  %490 = fmul double %489, %488, !dbg !1253
  %491 = fsub double %466, %490, !dbg !1254
  %492 = fsub double %491, %484, !dbg !1255
  %493 = fdiv double %302, %492, !dbg !1256
  tail call void @llvm.dbg.value(metadata double %493, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %487, metadata !1167, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double %493, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %487, metadata !1167, metadata !DIExpression()), !dbg !1246
  %494 = add nuw nsw i32 %485, 2, !dbg !1250
  %495 = sitofp i32 %494 to double, !dbg !1251
  %496 = fmul double %495, 4.000000e+00, !dbg !1252
  %497 = fmul double %496, %495, !dbg !1253
  %498 = fsub double %466, %497, !dbg !1254
  %499 = fsub double %498, %493, !dbg !1255
  %500 = fdiv double %302, %499, !dbg !1256
  tail call void @llvm.dbg.value(metadata double %500, metadata !1165, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %494, metadata !1167, metadata !DIExpression()), !dbg !1246
  %501 = add i32 %486, 2, !dbg !1249
  %502 = icmp eq i32 %501, %332, !dbg !1249
  br i1 %502, label %469, label %483, !dbg !1249, !llvm.loop !1258

503:                                              ; preds = %503, %481
  %504 = phi i32 [ 0, %481 ], [ %522, %503 ]
  %505 = phi double [ 0.000000e+00, %481 ], [ %521, %503 ]
  tail call void @llvm.dbg.value(metadata i32 %504, metadata !1167, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double %505, metadata !1166, metadata !DIExpression()), !dbg !1246
  %506 = sub nuw nsw i32 50, %504, !dbg !1260
  %507 = sitofp i32 %506 to double, !dbg !1261
  %508 = fmul double %507, 2.000000e+00, !dbg !1262
  %509 = fadd double %508, %303, !dbg !1263
  %510 = fmul double %509, %509, !dbg !1264
  %511 = fsub double %466, %510, !dbg !1265
  %512 = fsub double %511, %505, !dbg !1266
  %513 = fdiv double %302, %512, !dbg !1267
  tail call void @llvm.dbg.value(metadata double %513, metadata !1166, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %504, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %504, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1246
  tail call void @llvm.dbg.value(metadata double %513, metadata !1166, metadata !DIExpression()), !dbg !1246
  %514 = sub nsw i32 49, %504, !dbg !1260
  %515 = sitofp i32 %514 to double, !dbg !1261
  %516 = fmul double %515, 2.000000e+00, !dbg !1262
  %517 = fadd double %516, %303, !dbg !1263
  %518 = fmul double %517, %517, !dbg !1264
  %519 = fsub double %466, %518, !dbg !1265
  %520 = fsub double %519, %513, !dbg !1266
  %521 = fdiv double %302, %520, !dbg !1267
  tail call void @llvm.dbg.value(metadata double %521, metadata !1166, metadata !DIExpression()), !dbg !1246
  %522 = add nuw nsw i32 %504, 2, !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %522, metadata !1167, metadata !DIExpression()), !dbg !1246
  %523 = icmp eq i32 %522, 50, !dbg !1269
  br i1 %523, label %583, label %503, !dbg !1257, !llvm.loop !1270

524:                                              ; preds = %462
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1199, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double undef, metadata !1202, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %466, metadata !1203, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1204, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %300, metadata !1208, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %295, metadata !1205, metadata !DIExpression()), !dbg !1272
  br i1 %301, label %525, label %538, !dbg !1274

525:                                              ; preds = %524
  br i1 %327, label %526, label %540, !dbg !1274

526:                                              ; preds = %540, %525
  %527 = phi double [ undef, %525 ], [ %558, %540 ]
  %528 = phi double [ %295, %525 ], [ %558, %540 ]
  %529 = phi i32 [ 0, %525 ], [ %559, %540 ]
  br i1 %329, label %538, label %530, !dbg !1274

530:                                              ; preds = %526
  tail call void @llvm.dbg.value(metadata double %528, metadata !1205, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %529, metadata !1207, metadata !DIExpression()), !dbg !1272
  %531 = sitofp i32 %529 to double, !dbg !1275
  %532 = fmul double %531, 2.000000e+00, !dbg !1276
  %533 = fadd double %532, 1.000000e+00, !dbg !1277
  %534 = fmul double %533, %533, !dbg !1278
  %535 = fsub double %466, %534, !dbg !1279
  %536 = fsub double %535, %528, !dbg !1280
  %537 = fdiv double %302, %536, !dbg !1281
  tail call void @llvm.dbg.value(metadata double %537, metadata !1205, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %529, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1272
  br label %538, !dbg !1282

538:                                              ; preds = %530, %526, %524
  %539 = phi double [ %295, %524 ], [ %527, %526 ], [ %537, %530 ], !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1206, metadata !DIExpression()), !dbg !1272
  br label %562, !dbg !1282

540:                                              ; preds = %525, %540
  %541 = phi double [ %558, %540 ], [ %295, %525 ]
  %542 = phi i32 [ %559, %540 ], [ 0, %525 ]
  %543 = phi i32 [ %560, %540 ], [ 0, %525 ]
  tail call void @llvm.dbg.value(metadata double %541, metadata !1205, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %542, metadata !1207, metadata !DIExpression()), !dbg !1272
  %544 = sitofp i32 %542 to double, !dbg !1275
  %545 = fmul double %544, 2.000000e+00, !dbg !1276
  %546 = fadd double %545, 1.000000e+00, !dbg !1277
  %547 = fmul double %546, %546, !dbg !1278
  %548 = fsub double %466, %547, !dbg !1279
  %549 = fsub double %548, %541, !dbg !1280
  %550 = fdiv double %302, %549, !dbg !1281
  tail call void @llvm.dbg.value(metadata double %550, metadata !1205, metadata !DIExpression()), !dbg !1272
  %551 = or disjoint i32 %542, 1, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %551, metadata !1207, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %550, metadata !1205, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %551, metadata !1207, metadata !DIExpression()), !dbg !1272
  %552 = sitofp i32 %551 to double, !dbg !1275
  %553 = fmul double %552, 2.000000e+00, !dbg !1276
  %554 = fadd double %553, 1.000000e+00, !dbg !1277
  %555 = fmul double %554, %554, !dbg !1278
  %556 = fsub double %466, %555, !dbg !1279
  %557 = fsub double %556, %550, !dbg !1280
  %558 = fdiv double %302, %557, !dbg !1281
  tail call void @llvm.dbg.value(metadata double %558, metadata !1205, metadata !DIExpression()), !dbg !1272
  %559 = add nuw nsw i32 %542, 2, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %559, metadata !1207, metadata !DIExpression()), !dbg !1272
  %560 = add i32 %543, 2, !dbg !1274
  %561 = icmp eq i32 %560, %328, !dbg !1274
  br i1 %561, label %526, label %540, !dbg !1274, !llvm.loop !1284

562:                                              ; preds = %562, %538
  %563 = phi i32 [ 0, %538 ], [ %581, %562 ]
  %564 = phi double [ 0.000000e+00, %538 ], [ %580, %562 ]
  tail call void @llvm.dbg.value(metadata i32 %563, metadata !1207, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %564, metadata !1206, metadata !DIExpression()), !dbg !1272
  %565 = sub nuw nsw i32 50, %563, !dbg !1286
  %566 = sitofp i32 %565 to double, !dbg !1287
  %567 = fmul double %566, 2.000000e+00, !dbg !1288
  %568 = fadd double %567, %303, !dbg !1289
  %569 = fmul double %568, %568, !dbg !1290
  %570 = fsub double %466, %569, !dbg !1291
  %571 = fsub double %570, %564, !dbg !1292
  %572 = fdiv double %302, %571, !dbg !1293
  tail call void @llvm.dbg.value(metadata double %572, metadata !1206, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %563, metadata !1207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %563, metadata !1207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %572, metadata !1206, metadata !DIExpression()), !dbg !1272
  %573 = sub nsw i32 49, %563, !dbg !1286
  %574 = sitofp i32 %573 to double, !dbg !1287
  %575 = fmul double %574, 2.000000e+00, !dbg !1288
  %576 = fadd double %575, %303, !dbg !1289
  %577 = fmul double %576, %576, !dbg !1290
  %578 = fsub double %466, %577, !dbg !1291
  %579 = fsub double %578, %572, !dbg !1292
  %580 = fdiv double %302, %579, !dbg !1293
  tail call void @llvm.dbg.value(metadata double %580, metadata !1206, metadata !DIExpression()), !dbg !1272
  %581 = add nuw nsw i32 %563, 2, !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %581, metadata !1207, metadata !DIExpression()), !dbg !1272
  %582 = icmp eq i32 %581, 50, !dbg !1295
  br i1 %582, label %583, label %562, !dbg !1282, !llvm.loop !1296

583:                                              ; preds = %562, %503
  %584 = phi double [ %482, %503 ], [ %539, %562 ]
  %585 = phi double [ %521, %503 ], [ %580, %562 ]
  %586 = fadd double %584, %305, !dbg !1298
  %587 = fadd double %586, %585, !dbg !1298
  %588 = fsub double %587, %466, !dbg !1298
  tail call void @llvm.dbg.value(metadata double %588, metadata !816, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %464, metadata !815, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %466, metadata !814, metadata !DIExpression()), !dbg !823
  %589 = fcmp oeq double %588, %465, !dbg !1299
  br i1 %589, label %602, label %590, !dbg !1301

590:                                              ; preds = %583
  %591 = fsub double %466, %464, !dbg !1302
  %592 = fsub double %588, %465, !dbg !1303
  %593 = fdiv double %591, %592, !dbg !1304
  %594 = fmul double %588, %593, !dbg !1305
  %595 = fsub double %466, %594, !dbg !1306
  tail call void @llvm.dbg.value(metadata double %595, metadata !821, metadata !DIExpression()), !dbg !823
  %596 = fsub double %595, %464, !dbg !1307
  %597 = tail call double @llvm.fabs.f64(double %596), !dbg !1308
  tail call void @llvm.dbg.value(metadata double %597, metadata !818, metadata !DIExpression()), !dbg !823
  %598 = fcmp olt double %597, 1.000000e-18, !dbg !1309
  br i1 %598, label %602, label %599, !dbg !1311

599:                                              ; preds = %590
  tail call void @llvm.dbg.value(metadata double %588, metadata !817, metadata !DIExpression()), !dbg !823
  %600 = add nuw nsw i32 %463, 1, !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %600, metadata !810, metadata !DIExpression()), !dbg !823
  %601 = icmp eq i32 %600, 42, !dbg !1313
  br i1 %601, label %602, label %462, !dbg !1315, !llvm.loop !1316

602:                                              ; preds = %599, %590, %583
  %603 = phi double [ 0x3CB0000000000000, %583 ], [ 0x3CB0000000000000, %590 ], [ %597, %599 ]
  %604 = phi double [ %466, %583 ], [ %595, %590 ], [ %595, %599 ], !dbg !823
  tail call void @llvm.dbg.value(metadata double %604, metadata !821, metadata !DIExpression()), !dbg !823
  %605 = fsub double %604, %293, !dbg !1319
  %606 = tail call double @llvm.fabs.f64(double %605), !dbg !1321
  %607 = fcmp ogt double %606, %313, !dbg !1322
  %608 = fcmp ogt double %606, %315
  %609 = and i1 %314, %608
  %610 = or i1 %607, %609, !dbg !1323
  br i1 %610, label %611, label %627, !dbg !1323

611:                                              ; preds = %602
  %612 = add nuw nsw i32 %338, 1, !dbg !1324
  tail call void @llvm.dbg.value(metadata i32 %612, metadata !811, metadata !DIExpression()), !dbg !823
  %613 = icmp eq i32 %612, 1000, !dbg !1326
  br i1 %613, label %614, label %615, !dbg !1328

614:                                              ; preds = %611
  store double %603, ptr %309, align 8, !dbg !1329, !tbaa !144
  store double %606, ptr %309, align 8, !dbg !1330, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %604, metadata !821, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !811, metadata !DIExpression()), !dbg !823
  store double %604, ptr %2, align 8, !dbg !1332, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 621, i32 noundef 5) #9, !dbg !1333
  br label %628, !dbg !1333

615:                                              ; preds = %611
  %616 = fcmp ogt double %604, %293, !dbg !1337
  %617 = fmul double %336, 5.000000e-01, !dbg !1339
  tail call void @llvm.dbg.value(metadata double %621, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %621, metadata !820, metadata !DIExpression()), !dbg !823
  %618 = select i1 %616, i32 1, i32 -1
  %619 = select i1 %616, i32 -1, i32 1
  %620 = icmp eq i32 %337, %618, !dbg !1339
  %621 = select i1 %620, double %617, double %336, !dbg !1339
  tail call void @llvm.dbg.value(metadata double %621, metadata !820, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %619, metadata !813, metadata !DIExpression()), !dbg !823
  %622 = sitofp i32 %619 to double, !dbg !1340
  %623 = fmul double %621, %622, !dbg !1341
  %624 = sitofp i32 %612 to double, !dbg !1342
  %625 = fmul double %623, %624, !dbg !1343
  %626 = fadd double %335, %625, !dbg !1344
  tail call void @llvm.dbg.value(metadata double %626, metadata !822, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata double %626, metadata !821, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %612, metadata !811, metadata !DIExpression()), !dbg !823
  br label %334

627:                                              ; preds = %602
  store double %603, ptr %309, align 8, !dbg !1329, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %604, metadata !821, metadata !DIExpression()), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 %338, metadata !811, metadata !DIExpression()), !dbg !823
  store double %604, ptr %2, align 8, !dbg !1332, !tbaa !137
  br label %628, !dbg !1345

628:                                              ; preds = %627, %614, %24, %8, %7
  %629 = phi i32 [ 5, %7 ], [ 0, %8 ], [ %25, %24 ], [ 5, %614 ], [ 0, %627 ], !dbg !823
  ret i32 %629, !dbg !1346
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !1347 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_mathieu_a_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !1352 {
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1435, metadata !DIExpression(), metadata !1449, metadata ptr %6, metadata !DIExpression()), !dbg !1450
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1441, metadata !DIExpression(), metadata !1451, metadata ptr %7, metadata !DIExpression()), !dbg !1450
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1442, metadata !DIExpression(), metadata !1452, metadata ptr %8, metadata !DIExpression()), !dbg !1450
  %9 = alloca %struct._gsl_matrix_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_matrix_view, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1418, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1419, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata double %2, metadata !1420, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1421, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1422, metadata !DIExpression()), !dbg !1450
  %12 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 1, !dbg !1453
  %13 = load i64, ptr %12, align 8, !dbg !1453, !tbaa !1454
  %14 = trunc i64 %13 to i32, !dbg !1459
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1423, metadata !DIExpression()), !dbg !1450
  %15 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 2, !dbg !1460
  %16 = load i64, ptr %15, align 8, !dbg !1460, !tbaa !1461
  %17 = trunc i64 %16 to i32, !dbg !1462
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1424, metadata !DIExpression()), !dbg !1450
  %18 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 3, !dbg !1463
  %19 = load i32, ptr %18, align 8, !dbg !1463, !tbaa !1464
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1425, metadata !DIExpression()), !dbg !1450
  %20 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 10, !dbg !1465
  %21 = load ptr, ptr %20, align 8, !dbg !1465, !tbaa !1466
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1429, metadata !DIExpression()), !dbg !1450
  %22 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 8, !dbg !1467
  %23 = load ptr, ptr %22, align 8, !dbg !1467, !tbaa !1468
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !1430, metadata !DIExpression()), !dbg !1450
  %24 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 9, !dbg !1469
  %25 = load ptr, ptr %24, align 8, !dbg !1469, !tbaa !1470
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1431, metadata !DIExpression()), !dbg !1450
  %26 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 11, !dbg !1471
  %27 = load ptr, ptr %26, align 8, !dbg !1471, !tbaa !1472
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1432, metadata !DIExpression()), !dbg !1450
  %28 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 12, !dbg !1473
  %29 = load ptr, ptr %28, align 8, !dbg !1473, !tbaa !1474
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1433, metadata !DIExpression()), !dbg !1450
  %30 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 6, !dbg !1475
  %31 = load ptr, ptr %30, align 8, !dbg !1475, !tbaa !1476
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1434, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #9, !dbg !1477
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #9, !dbg !1477
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9, !dbg !1478
  %32 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 15, !dbg !1479
  %33 = load ptr, ptr %32, align 8, !dbg !1479, !tbaa !1480
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1448, metadata !DIExpression()), !dbg !1450
  %34 = sext i32 %1 to i64, !dbg !1481
  %35 = load i64, ptr %3, align 8, !dbg !1483, !tbaa !1484
  %36 = icmp ult i64 %35, %34, !dbg !1485
  br i1 %36, label %41, label %37, !dbg !1486

37:                                               ; preds = %5
  %38 = icmp sle i32 %1, %0, !dbg !1487
  %39 = icmp slt i32 %0, 0
  %40 = or i1 %39, %38, !dbg !1488
  br i1 %40, label %41, label %42, !dbg !1488

41:                                               ; preds = %5, %37
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 723, i32 noundef 4) #9, !dbg !1489
  br label %404, !dbg !1489

42:                                               ; preds = %37
  %43 = getelementptr inbounds double, ptr %21, i64 1, !dbg !1492
  %44 = getelementptr inbounds double, ptr %21, i64 2, !dbg !1493
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false), !dbg !1494
  store double %2, ptr %44, align 8, !dbg !1495, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1426, metadata !DIExpression()), !dbg !1450
  %45 = add i32 %14, -1
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1426, metadata !DIExpression()), !dbg !1450
  %46 = icmp ugt i32 %45, 1, !dbg !1497
  br i1 %46, label %47, label %104, !dbg !1500

47:                                               ; preds = %42
  %48 = zext i32 %45 to i64, !dbg !1497
  %49 = add nsw i64 %48, -1, !dbg !1500
  %50 = and i64 %49, 1, !dbg !1500
  %51 = icmp eq i32 %45, 2, !dbg !1500
  br i1 %51, label %87, label %52, !dbg !1500

52:                                               ; preds = %47
  %53 = and i64 %49, -2, !dbg !1500
  br label %54, !dbg !1500

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 1, %52 ], [ %84, %54 ]
  %56 = phi i64 [ 0, %52 ], [ %85, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1426, metadata !DIExpression()), !dbg !1450
  %57 = trunc i64 %55 to i32, !dbg !1501
  %58 = mul i32 %57, 3, !dbg !1501
  %59 = zext i32 %58 to i64, !dbg !1503
  %60 = getelementptr inbounds double, ptr %21, i64 %59, !dbg !1503
  store double %2, ptr %60, align 8, !dbg !1504, !tbaa !1496
  %61 = shl i32 %57, 2, !dbg !1505
  %62 = mul i32 %61, %57, !dbg !1506
  %63 = uitofp i32 %62 to double, !dbg !1507
  %64 = add i32 %58, 1, !dbg !1508
  %65 = zext i32 %64 to i64, !dbg !1509
  %66 = getelementptr inbounds double, ptr %21, i64 %65, !dbg !1509
  store double %63, ptr %66, align 8, !dbg !1510, !tbaa !1496
  %67 = add i32 %58, 2, !dbg !1511
  %68 = zext i32 %67 to i64, !dbg !1512
  %69 = getelementptr inbounds double, ptr %21, i64 %68, !dbg !1512
  store double %2, ptr %69, align 8, !dbg !1513, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  %70 = trunc i64 %55 to i32, !dbg !1501
  %71 = add i32 %70, 1, !dbg !1501
  %72 = mul i32 %71, 3, !dbg !1501
  %73 = zext i32 %72 to i64, !dbg !1503
  %74 = getelementptr inbounds double, ptr %21, i64 %73, !dbg !1503
  store double %2, ptr %74, align 8, !dbg !1504, !tbaa !1496
  %75 = shl i32 %71, 2, !dbg !1505
  %76 = mul i32 %75, %71, !dbg !1506
  %77 = uitofp i32 %76 to double, !dbg !1507
  %78 = add nuw nsw i32 %72, 1, !dbg !1508
  %79 = zext i32 %78 to i64, !dbg !1509
  %80 = getelementptr inbounds double, ptr %21, i64 %79, !dbg !1509
  store double %77, ptr %80, align 8, !dbg !1510, !tbaa !1496
  %81 = add i32 %72, 2, !dbg !1511
  %82 = zext i32 %81 to i64, !dbg !1512
  %83 = getelementptr inbounds double, ptr %21, i64 %82, !dbg !1512
  store double %2, ptr %83, align 8, !dbg !1513, !tbaa !1496
  %84 = add nuw nsw i64 %55, 2, !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1426, metadata !DIExpression()), !dbg !1450
  %85 = add i64 %56, 2, !dbg !1500
  %86 = icmp eq i64 %85, %53, !dbg !1500
  br i1 %86, label %87, label %54, !dbg !1500, !llvm.loop !1515

87:                                               ; preds = %54, %47
  %88 = phi i64 [ 1, %47 ], [ %84, %54 ]
  %89 = icmp eq i64 %50, 0, !dbg !1500
  br i1 %89, label %104, label %90, !dbg !1500

90:                                               ; preds = %87
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1426, metadata !DIExpression()), !dbg !1450
  %91 = trunc i64 %88 to i32, !dbg !1501
  %92 = mul i32 %91, 3, !dbg !1501
  %93 = zext i32 %92 to i64, !dbg !1503
  %94 = getelementptr inbounds double, ptr %21, i64 %93, !dbg !1503
  store double %2, ptr %94, align 8, !dbg !1504, !tbaa !1496
  %95 = shl i32 %91, 2, !dbg !1505
  %96 = mul i32 %95, %91, !dbg !1506
  %97 = uitofp i32 %96 to double, !dbg !1507
  %98 = add i32 %92, 1, !dbg !1508
  %99 = zext i32 %98 to i64, !dbg !1509
  %100 = getelementptr inbounds double, ptr %21, i64 %99, !dbg !1509
  store double %97, ptr %100, align 8, !dbg !1510, !tbaa !1496
  %101 = add i32 %92, 2, !dbg !1511
  %102 = zext i32 %101 to i64, !dbg !1512
  %103 = getelementptr inbounds double, ptr %21, i64 %102, !dbg !1512
  store double %2, ptr %103, align 8, !dbg !1513, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  br label %104, !dbg !1517

104:                                              ; preds = %90, %87, %42
  %105 = mul i32 %14, 3, !dbg !1517
  %106 = add i32 %105, -3, !dbg !1518
  %107 = zext i32 %106 to i64, !dbg !1519
  %108 = getelementptr inbounds double, ptr %21, i64 %107, !dbg !1519
  store double %2, ptr %108, align 8, !dbg !1520, !tbaa !1496
  %109 = shl i32 %45, 2, !dbg !1521
  %110 = mul i32 %109, %45, !dbg !1522
  %111 = uitofp i32 %110 to double, !dbg !1523
  %112 = add i32 %105, -2, !dbg !1524
  %113 = zext i32 %112 to i64, !dbg !1525
  %114 = getelementptr inbounds double, ptr %21, i64 %113, !dbg !1525
  store double %111, ptr %114, align 8, !dbg !1526, !tbaa !1496
  %115 = add i32 %105, -1, !dbg !1527
  %116 = zext i32 %115 to i64, !dbg !1528
  %117 = getelementptr inbounds double, ptr %21, i64 %116, !dbg !1528
  store double 0.000000e+00, ptr %117, align 8, !dbg !1529, !tbaa !1496
  %118 = getelementptr inbounds double, ptr %21, i64 3, !dbg !1530
  %119 = load double, ptr %118, align 8, !dbg !1531, !tbaa !1496
  %120 = fmul double %119, 2.000000e+00, !dbg !1531
  store double %120, ptr %118, align 8, !dbg !1531, !tbaa !1496
  call void @llvm.dbg.value(metadata i32 %14, metadata !1532, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %21, metadata !1537, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %23, metadata !1538, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %25, metadata !1539, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %27, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1541, metadata !DIExpression()), !dbg !1542
  %121 = getelementptr double, ptr %21, i64 -1, !dbg !1544
  %122 = icmp sgt i32 %14, 0, !dbg !1546
  br i1 %122, label %123, label %158, !dbg !1548

123:                                              ; preds = %104
  %124 = and i64 %13, 4294967295, !dbg !1546
  call void @llvm.dbg.value(metadata i64 0, metadata !1541, metadata !DIExpression()), !dbg !1542
  %125 = load double, ptr %43, align 8, !dbg !1549, !tbaa !1496
  store double %125, ptr %23, align 8, !dbg !1551, !tbaa !1496
  call void @llvm.dbg.value(metadata i64 1, metadata !1541, metadata !DIExpression()), !dbg !1542
  %126 = icmp eq i32 %14, 1, !dbg !1546
  br i1 %126, label %158, label %127, !dbg !1548

127:                                              ; preds = %123, %149
  %128 = phi i64 [ %155, %149 ], [ 1, %123 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1541, metadata !DIExpression()), !dbg !1542
  %129 = mul nuw nsw i64 %128, 3, !dbg !1552
  %130 = getelementptr inbounds double, ptr %21, i64 %129, !dbg !1555
  %131 = load double, ptr %130, align 8, !dbg !1555, !tbaa !1496
  %132 = getelementptr double, ptr %121, i64 %129, !dbg !1556
  %133 = load double, ptr %132, align 8, !dbg !1556, !tbaa !1496
  %134 = fmul double %131, %133, !dbg !1557
  %135 = getelementptr inbounds double, ptr %27, i64 %128, !dbg !1558
  store double %134, ptr %135, align 8, !dbg !1559, !tbaa !1496
  %136 = fcmp olt double %134, 0.000000e+00, !dbg !1560
  br i1 %136, label %157, label %137, !dbg !1562

137:                                              ; preds = %127
  %138 = fcmp oeq double %134, 0.000000e+00, !dbg !1563
  br i1 %138, label %139, label %149, !dbg !1565

139:                                              ; preds = %137
  %140 = load double, ptr %130, align 8, !dbg !1566, !tbaa !1496
  %141 = fcmp une double %140, 0.000000e+00, !dbg !1567
  br i1 %141, label %145, label %142, !dbg !1568

142:                                              ; preds = %139
  %143 = load double, ptr %132, align 8, !dbg !1569, !tbaa !1496
  %144 = fcmp une double %143, 0.000000e+00, !dbg !1570
  br i1 %144, label %145, label %149, !dbg !1571

145:                                              ; preds = %142, %139
  %146 = trunc i64 %128 to i32
  %147 = mul i32 %14, -3, !dbg !1572
  %148 = icmp eq i32 %147, %146, !dbg !1574
  tail call void @llvm.dbg.value(metadata i1 %148, metadata !1428, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1450
  br i1 %148, label %158, label %157, !dbg !1576

149:                                              ; preds = %142, %137
  %150 = tail call double @sqrt(double noundef %134) #9, !dbg !1577
  %151 = getelementptr inbounds double, ptr %25, i64 %128, !dbg !1578
  store double %150, ptr %151, align 8, !dbg !1579, !tbaa !1496
  %152 = getelementptr double, ptr %43, i64 %129
  %153 = load double, ptr %152, align 8, !dbg !1549, !tbaa !1496
  %154 = getelementptr inbounds double, ptr %23, i64 %128, !dbg !1580
  store double %153, ptr %154, align 8, !dbg !1551, !tbaa !1496
  %155 = add nuw nsw i64 %128, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %155, metadata !1541, metadata !DIExpression()), !dbg !1542
  %156 = icmp eq i64 %155, %124, !dbg !1546
  br i1 %156, label %158, label %127, !dbg !1548, !llvm.loop !1582

157:                                              ; preds = %127, %145
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 5) #9, !dbg !1585
  br label %404, !dbg !1585

158:                                              ; preds = %149, %104, %123, %145
  %159 = mul i32 %14, %14
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %160 = icmp eq i32 %159, 0, !dbg !1588
  br i1 %160, label %164, label %161, !dbg !1591

161:                                              ; preds = %158
  %162 = zext i32 %159 to i64, !dbg !1591
  %163 = shl nuw nsw i64 %162, 3, !dbg !1591
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %163, i1 false), !dbg !1592, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1426, metadata !DIExpression()), !dbg !1450
  br label %164, !dbg !1593

164:                                              ; preds = %161, %158
  %165 = load double, ptr %23, align 8, !dbg !1593, !tbaa !1496
  store double %165, ptr %29, align 8, !dbg !1594, !tbaa !1496
  %166 = getelementptr inbounds double, ptr %25, i64 1, !dbg !1595
  %167 = load double, ptr %166, align 8, !dbg !1595, !tbaa !1496
  %168 = getelementptr inbounds double, ptr %29, i64 1, !dbg !1596
  store double %167, ptr %168, align 8, !dbg !1597, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1426, metadata !DIExpression()), !dbg !1450
  br i1 %46, label %171, label %169, !dbg !1598

169:                                              ; preds = %164
  %170 = zext nneg i32 %45 to i64, !dbg !1600
  br label %235, !dbg !1598

171:                                              ; preds = %164
  %172 = add i32 %14, 1
  %173 = zext i32 %45 to i64, !dbg !1601
  %174 = add nsw i64 %173, -1, !dbg !1598
  %175 = and i64 %174, 1, !dbg !1598
  %176 = icmp eq i32 %45, 2, !dbg !1598
  br i1 %176, label %215, label %177, !dbg !1598

177:                                              ; preds = %171
  %178 = and i64 %174, -2, !dbg !1598
  br label %179, !dbg !1598

179:                                              ; preds = %179, %177
  %180 = phi double [ %167, %177 ], [ %209, %179 ], !dbg !1603
  %181 = phi i64 [ 1, %177 ], [ %207, %179 ]
  %182 = phi i64 [ 0, %177 ], [ %213, %179 ]
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !1426, metadata !DIExpression()), !dbg !1450
  %183 = trunc i64 %181 to i32, !dbg !1605
  %184 = mul i32 %172, %183, !dbg !1605
  %185 = add i32 %184, -1, !dbg !1606
  %186 = zext i32 %185 to i64, !dbg !1607
  %187 = getelementptr inbounds double, ptr %29, i64 %186, !dbg !1607
  store double %180, ptr %187, align 8, !dbg !1608, !tbaa !1496
  %188 = getelementptr inbounds double, ptr %23, i64 %181, !dbg !1609
  %189 = load double, ptr %188, align 8, !dbg !1609, !tbaa !1496
  %190 = zext i32 %184 to i64, !dbg !1610
  %191 = getelementptr inbounds double, ptr %29, i64 %190, !dbg !1610
  store double %189, ptr %191, align 8, !dbg !1611, !tbaa !1496
  %192 = add nuw nsw i64 %181, 1, !dbg !1612
  %193 = getelementptr inbounds double, ptr %25, i64 %192, !dbg !1613
  %194 = load double, ptr %193, align 8, !dbg !1613, !tbaa !1496
  %195 = add i32 %184, 1, !dbg !1614
  %196 = zext i32 %195 to i64, !dbg !1615
  %197 = getelementptr inbounds double, ptr %29, i64 %196, !dbg !1615
  store double %194, ptr %197, align 8, !dbg !1616, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1426, metadata !DIExpression()), !dbg !1450
  %198 = trunc i64 %192 to i32, !dbg !1605
  %199 = mul i32 %172, %198, !dbg !1605
  %200 = add i32 %199, -1, !dbg !1606
  %201 = zext i32 %200 to i64, !dbg !1607
  %202 = getelementptr inbounds double, ptr %29, i64 %201, !dbg !1607
  store double %194, ptr %202, align 8, !dbg !1608, !tbaa !1496
  %203 = getelementptr inbounds double, ptr %23, i64 %192, !dbg !1609
  %204 = load double, ptr %203, align 8, !dbg !1609, !tbaa !1496
  %205 = zext i32 %199 to i64, !dbg !1610
  %206 = getelementptr inbounds double, ptr %29, i64 %205, !dbg !1610
  store double %204, ptr %206, align 8, !dbg !1611, !tbaa !1496
  %207 = add nuw nsw i64 %181, 2, !dbg !1612
  %208 = getelementptr inbounds double, ptr %25, i64 %207, !dbg !1613
  %209 = load double, ptr %208, align 8, !dbg !1613, !tbaa !1496
  %210 = add nuw nsw i32 %199, 1, !dbg !1614
  %211 = zext i32 %210 to i64, !dbg !1615
  %212 = getelementptr inbounds double, ptr %29, i64 %211, !dbg !1615
  store double %209, ptr %212, align 8, !dbg !1616, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !1426, metadata !DIExpression()), !dbg !1450
  %213 = add i64 %182, 2, !dbg !1598
  %214 = icmp eq i64 %213, %178, !dbg !1598
  br i1 %214, label %215, label %179, !dbg !1598, !llvm.loop !1617

215:                                              ; preds = %179, %171
  %216 = phi double [ %167, %171 ], [ %209, %179 ]
  %217 = phi i64 [ 1, %171 ], [ %207, %179 ]
  %218 = icmp eq i64 %175, 0, !dbg !1598
  br i1 %218, label %235, label %219, !dbg !1598

219:                                              ; preds = %215
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !1426, metadata !DIExpression()), !dbg !1450
  %220 = trunc i64 %217 to i32, !dbg !1605
  %221 = mul i32 %172, %220, !dbg !1605
  %222 = add i32 %221, -1, !dbg !1606
  %223 = zext i32 %222 to i64, !dbg !1607
  %224 = getelementptr inbounds double, ptr %29, i64 %223, !dbg !1607
  store double %216, ptr %224, align 8, !dbg !1608, !tbaa !1496
  %225 = getelementptr inbounds double, ptr %23, i64 %217, !dbg !1609
  %226 = load double, ptr %225, align 8, !dbg !1609, !tbaa !1496
  %227 = zext i32 %221 to i64, !dbg !1610
  %228 = getelementptr inbounds double, ptr %29, i64 %227, !dbg !1610
  store double %226, ptr %228, align 8, !dbg !1611, !tbaa !1496
  %229 = getelementptr double, ptr %25, i64 %217, !dbg !1613
  %230 = getelementptr double, ptr %229, i64 1, !dbg !1613
  %231 = load double, ptr %230, align 8, !dbg !1613, !tbaa !1496
  %232 = add i32 %221, 1, !dbg !1614
  %233 = zext i32 %232 to i64, !dbg !1615
  %234 = getelementptr inbounds double, ptr %29, i64 %233, !dbg !1615
  store double %231, ptr %234, align 8, !dbg !1616, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  br label %235, !dbg !1600

235:                                              ; preds = %219, %215, %169
  %236 = phi i64 [ %170, %169 ], [ %173, %215 ], [ %173, %219 ], !dbg !1600
  %237 = getelementptr inbounds double, ptr %25, i64 %236, !dbg !1600
  %238 = load double, ptr %237, align 8, !dbg !1600, !tbaa !1496
  %239 = mul i64 %13, %13, !dbg !1619
  %240 = add i64 %239, 4294967294, !dbg !1620
  %241 = and i64 %240, 4294967295, !dbg !1621
  %242 = getelementptr inbounds double, ptr %29, i64 %241, !dbg !1621
  store double %238, ptr %242, align 8, !dbg !1622, !tbaa !1496
  %243 = getelementptr inbounds double, ptr %23, i64 %236, !dbg !1623
  %244 = load double, ptr %243, align 8, !dbg !1623, !tbaa !1496
  %245 = add i32 %159, -1, !dbg !1624
  %246 = zext i32 %245 to i64, !dbg !1625
  %247 = getelementptr inbounds double, ptr %29, i64 %246, !dbg !1625
  store double %244, ptr %247, align 8, !dbg !1626, !tbaa !1496
  %248 = and i64 %13, 4294967295, !dbg !1627
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %29, i64 noundef %248, i64 noundef %248) #9, !dbg !1628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1435, metadata !DIExpression(), metadata !1629, metadata ptr %6, metadata !DIExpression()), !dbg !1450
  %249 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 13, !dbg !1630
  %250 = load ptr, ptr %249, align 8, !dbg !1630, !tbaa !1631
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef %250, i64 noundef 0, i64 noundef %248) #9, !dbg !1632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1442, metadata !DIExpression(), metadata !1633, metadata ptr %8, metadata !DIExpression()), !dbg !1450
  %251 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 14, !dbg !1634
  %252 = load ptr, ptr %251, align 8, !dbg !1634, !tbaa !1635
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef %252, i64 noundef 0, i64 noundef 0, i64 noundef %248, i64 noundef %248) #9, !dbg !1636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1441, metadata !DIExpression(), metadata !1637, metadata ptr %7, metadata !DIExpression()), !dbg !1450
  %253 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %33) #9, !dbg !1638
  %254 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #9, !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %255 = icmp eq i32 %19, %14, !dbg !1640
  br i1 %255, label %278, label %256, !dbg !1643

256:                                              ; preds = %235
  %257 = sub i32 %14, %19
  %258 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !1644
  %260 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !1646
  %262 = call i32 @llvm.umax.i32(i32 %257, i32 1), !dbg !1643
  %263 = zext i32 %262 to i64, !dbg !1640
  %264 = and i64 %263, 1, !dbg !1643
  %265 = icmp ult i32 %257, 2, !dbg !1643
  br i1 %265, label %268, label %266, !dbg !1643

266:                                              ; preds = %256
  %267 = and i64 %263, 4294967294, !dbg !1643
  br label %284, !dbg !1643

268:                                              ; preds = %284, %256
  %269 = phi i64 [ 0, %256 ], [ %300, %284 ]
  %270 = icmp eq i64 %264, 0, !dbg !1643
  br i1 %270, label %278, label %271, !dbg !1643

271:                                              ; preds = %268
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1655, metadata !DIExpression()), !dbg !1656
  %272 = mul i64 %261, %269, !dbg !1658
  %273 = getelementptr inbounds double, ptr %259, i64 %272, !dbg !1659
  %274 = load double, ptr %273, align 8, !dbg !1659, !tbaa !1496
  %275 = shl nuw i64 %269, 1, !dbg !1660
  %276 = and i64 %275, 4294967294, !dbg !1661
  %277 = getelementptr inbounds double, ptr %31, i64 %276, !dbg !1661
  store double %274, ptr %277, align 8, !dbg !1662, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  br label %278

278:                                              ; preds = %271, %268, %235
  %279 = mul i32 %17, %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %280 = icmp eq i32 %279, 0, !dbg !1663
  br i1 %280, label %303, label %281, !dbg !1666

281:                                              ; preds = %278
  %282 = zext i32 %279 to i64, !dbg !1666
  %283 = shl nuw nsw i64 %282, 3, !dbg !1666
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %29, i8 0, i64 %283, i1 false), !dbg !1667, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1426, metadata !DIExpression()), !dbg !1450
  br label %303, !dbg !1668

284:                                              ; preds = %284, %266
  %285 = phi i64 [ 0, %266 ], [ %300, %284 ]
  %286 = phi i64 [ 0, %266 ], [ %301, %284 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !1655, metadata !DIExpression()), !dbg !1656
  %287 = mul i64 %261, %285, !dbg !1658
  %288 = getelementptr inbounds double, ptr %259, i64 %287, !dbg !1659
  %289 = load double, ptr %288, align 8, !dbg !1659, !tbaa !1496
  %290 = shl nuw i64 %285, 1, !dbg !1660
  %291 = and i64 %290, 4294967292, !dbg !1661
  %292 = getelementptr inbounds double, ptr %31, i64 %291, !dbg !1661
  store double %289, ptr %292, align 8, !dbg !1662, !tbaa !1496
  %293 = or disjoint i64 %285, 1, !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1655, metadata !DIExpression()), !dbg !1656
  %294 = mul i64 %261, %293, !dbg !1658
  %295 = getelementptr inbounds double, ptr %259, i64 %294, !dbg !1659
  %296 = load double, ptr %295, align 8, !dbg !1659, !tbaa !1496
  %297 = shl nuw i64 %293, 1, !dbg !1660
  %298 = and i64 %297, 4294967294, !dbg !1661
  %299 = getelementptr inbounds double, ptr %31, i64 %298, !dbg !1661
  store double %296, ptr %299, align 8, !dbg !1662, !tbaa !1496
  %300 = add nuw nsw i64 %285, 2, !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1426, metadata !DIExpression()), !dbg !1450
  %301 = add i64 %286, 2, !dbg !1643
  %302 = icmp eq i64 %301, %267, !dbg !1643
  br i1 %302, label %268, label %284, !dbg !1643, !llvm.loop !1672

303:                                              ; preds = %281, %278
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %304 = icmp eq i32 %17, 0, !dbg !1668
  br i1 %304, label %339, label %305, !dbg !1674

305:                                              ; preds = %303
  %306 = and i64 %16, 4294967295, !dbg !1668
  br label %307, !dbg !1674

307:                                              ; preds = %305, %337
  %308 = phi i64 [ 0, %305 ], [ %309, %337 ]
  tail call void @llvm.dbg.value(metadata i64 %308, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1427, metadata !DIExpression()), !dbg !1450
  %309 = add nuw nsw i64 %308, 1, !dbg !1675
  %310 = trunc i64 %308 to i32
  %311 = mul i32 %310, %17
  %312 = shl i32 %310, 1
  %313 = or disjoint i32 %312, 1
  %314 = mul i32 %313, %313
  %315 = uitofp i32 %314 to double
  %316 = add i32 %311, %310
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds double, ptr %29, i64 %317
  br label %319, !dbg !1676

319:                                              ; preds = %307, %334
  %320 = phi i64 [ 0, %307 ], [ %335, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1427, metadata !DIExpression()), !dbg !1450
  %321 = icmp eq i64 %308, %320, !dbg !1678
  br i1 %321, label %322, label %324, !dbg !1682

322:                                              ; preds = %319
  store double %315, ptr %318, align 8, !dbg !1683, !tbaa !1496
  %323 = add nuw nsw i64 %320, 1, !dbg !1684
  br label %334, !dbg !1685

324:                                              ; preds = %319
  %325 = add nuw nsw i64 %320, 1, !dbg !1686
  %326 = icmp eq i64 %308, %325, !dbg !1688
  %327 = icmp eq i64 %309, %320
  %328 = or i1 %327, %326, !dbg !1689
  br i1 %328, label %329, label %334, !dbg !1689

329:                                              ; preds = %324
  %330 = trunc i64 %320 to i32, !dbg !1690
  %331 = add i32 %311, %330, !dbg !1690
  %332 = zext i32 %331 to i64, !dbg !1691
  %333 = getelementptr inbounds double, ptr %29, i64 %332, !dbg !1691
  store double %2, ptr %333, align 8, !dbg !1692, !tbaa !1496
  br label %334, !dbg !1691

334:                                              ; preds = %324, %322, %329
  %335 = phi i64 [ %325, %324 ], [ %323, %322 ], [ %325, %329 ], !dbg !1684
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1427, metadata !DIExpression()), !dbg !1450
  %336 = icmp eq i64 %335, %306, !dbg !1693
  br i1 %336, label %337, label %319, !dbg !1676, !llvm.loop !1694

337:                                              ; preds = %334
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !1426, metadata !DIExpression()), !dbg !1450
  %338 = icmp eq i64 %309, %306, !dbg !1668
  br i1 %338, label %339, label %307, !dbg !1674, !llvm.loop !1696

339:                                              ; preds = %337, %303
  %340 = load double, ptr %29, align 8, !dbg !1698, !tbaa !1496
  %341 = fadd double %340, %2, !dbg !1698
  store double %341, ptr %29, align 8, !dbg !1698, !tbaa !1496
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #9, !dbg !1699
  %342 = and i64 %16, 4294967295, !dbg !1700
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %29, i64 noundef %342, i64 noundef %342) #9, !dbg !1699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !1699, !tbaa.struct !1701, !DIAssignID !1705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1435, metadata !DIExpression(), metadata !1705, metadata ptr %6, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #9, !dbg !1699
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #9, !dbg !1706
  %343 = load ptr, ptr %249, align 8, !dbg !1707, !tbaa !1631
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef %343, i64 noundef 0, i64 noundef %342) #9, !dbg !1706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !1706, !tbaa.struct !1708, !DIAssignID !1709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1442, metadata !DIExpression(), metadata !1709, metadata ptr %8, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #9, !dbg !1706
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #9, !dbg !1710
  %344 = load ptr, ptr %251, align 8, !dbg !1711, !tbaa !1635
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef %344, i64 noundef 0, i64 noundef 0, i64 noundef %342, i64 noundef %342) #9, !dbg !1710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 48, i1 false), !dbg !1710, !tbaa.struct !1701, !DIAssignID !1712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1441, metadata !DIExpression(), metadata !1712, metadata ptr %7, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #9, !dbg !1710
  %345 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %33) #9, !dbg !1713
  %346 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #9, !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %347 = icmp eq i32 %19, %17, !dbg !1715
  br i1 %347, label %371, label %348, !dbg !1718

348:                                              ; preds = %339
  %349 = sub i32 %17, %19
  %350 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !1644
  %352 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %353 = load i64, ptr %352, align 8, !tbaa !1646
  %354 = call i32 @llvm.umax.i32(i32 %349, i32 1), !dbg !1718
  %355 = zext i32 %354 to i64, !dbg !1715
  %356 = and i64 %355, 1, !dbg !1718
  %357 = icmp ult i32 %349, 2, !dbg !1718
  br i1 %357, label %360, label %358, !dbg !1718

358:                                              ; preds = %348
  %359 = and i64 %355, 4294967294, !dbg !1718
  br label %373, !dbg !1718

360:                                              ; preds = %373, %348
  %361 = phi i64 [ 0, %348 ], [ %391, %373 ]
  %362 = icmp eq i64 %356, 0, !dbg !1718
  br i1 %362, label %371, label %363, !dbg !1718

363:                                              ; preds = %360
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !1655, metadata !DIExpression()), !dbg !1719
  %364 = mul i64 %353, %361, !dbg !1721
  %365 = getelementptr inbounds double, ptr %351, i64 %364, !dbg !1722
  %366 = load double, ptr %365, align 8, !dbg !1722, !tbaa !1496
  %367 = shl nuw i64 %361, 1, !dbg !1723
  %368 = and i64 %367, 4294967294, !dbg !1724
  %369 = or disjoint i64 %368, 1, !dbg !1724
  %370 = getelementptr inbounds double, ptr %31, i64 %369, !dbg !1724
  store double %366, ptr %370, align 8, !dbg !1725, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !1426, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1450
  br label %371, !dbg !1726

371:                                              ; preds = %363, %360, %339
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1426, metadata !DIExpression()), !dbg !1450
  %372 = icmp ugt i32 %0, %1, !dbg !1726
  br i1 %372, label %404, label %394, !dbg !1729

373:                                              ; preds = %373, %358
  %374 = phi i64 [ 0, %358 ], [ %391, %373 ]
  %375 = phi i64 [ 0, %358 ], [ %392, %373 ]
  tail call void @llvm.dbg.value(metadata i64 %374, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %374, metadata !1655, metadata !DIExpression()), !dbg !1719
  %376 = mul i64 %353, %374, !dbg !1721
  %377 = getelementptr inbounds double, ptr %351, i64 %376, !dbg !1722
  %378 = load double, ptr %377, align 8, !dbg !1722, !tbaa !1496
  %379 = shl nuw i64 %374, 1, !dbg !1723
  %380 = and i64 %379, 4294967292, !dbg !1724
  %381 = or disjoint i64 %380, 1, !dbg !1724
  %382 = getelementptr inbounds double, ptr %31, i64 %381, !dbg !1724
  store double %378, ptr %382, align 8, !dbg !1725, !tbaa !1496
  %383 = or disjoint i64 %374, 1, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1426, metadata !DIExpression()), !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1655, metadata !DIExpression()), !dbg !1719
  %384 = mul i64 %353, %383, !dbg !1721
  %385 = getelementptr inbounds double, ptr %351, i64 %384, !dbg !1722
  %386 = load double, ptr %385, align 8, !dbg !1722, !tbaa !1496
  %387 = shl nuw i64 %383, 1, !dbg !1723
  %388 = and i64 %387, 4294967294, !dbg !1724
  %389 = or disjoint i64 %388, 1, !dbg !1724
  %390 = getelementptr inbounds double, ptr %31, i64 %389, !dbg !1724
  store double %386, ptr %390, align 8, !dbg !1725, !tbaa !1496
  %391 = add nuw nsw i64 %374, 2, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1426, metadata !DIExpression()), !dbg !1450
  %392 = add i64 %375, 2, !dbg !1718
  %393 = icmp eq i64 %392, %359, !dbg !1718
  br i1 %393, label %360, label %373, !dbg !1718, !llvm.loop !1731

394:                                              ; preds = %371, %394
  %395 = phi i32 [ %402, %394 ], [ %0, %371 ]
  tail call void @llvm.dbg.value(metadata i32 %395, metadata !1426, metadata !DIExpression()), !dbg !1450
  %396 = zext i32 %395 to i64, !dbg !1733
  %397 = getelementptr inbounds double, ptr %31, i64 %396, !dbg !1733
  %398 = load double, ptr %397, align 8, !dbg !1733, !tbaa !1496
  %399 = sub i32 %395, %0, !dbg !1735
  %400 = zext i32 %399 to i64, !dbg !1736
  %401 = getelementptr inbounds double, ptr %4, i64 %400, !dbg !1736
  store double %398, ptr %401, align 8, !dbg !1737, !tbaa !1496
  %402 = add i32 %395, 1, !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !1426, metadata !DIExpression()), !dbg !1450
  %403 = icmp ugt i32 %402, %1, !dbg !1726
  br i1 %403, label %404, label %394, !dbg !1729, !llvm.loop !1739

404:                                              ; preds = %394, %371, %157, %41
  %405 = phi i32 [ 4, %41 ], [ 5, %157 ], [ 0, %371 ], [ 0, %394 ], !dbg !1450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #9, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #9, !dbg !1741
  ret i32 %405, !dbg !1741
}

declare !dbg !1742 void @gsl_matrix_view_array(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !1745 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1748 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1751 i32 @gsl_eigen_symmv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1754 i32 @gsl_eigen_symmv_sort(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_mathieu_b_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !1758 {
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1772, metadata !DIExpression(), metadata !1776, metadata ptr %6, metadata !DIExpression()), !dbg !1777
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1773, metadata !DIExpression(), metadata !1778, metadata ptr %7, metadata !DIExpression()), !dbg !1777
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1774, metadata !DIExpression(), metadata !1779, metadata ptr %8, metadata !DIExpression()), !dbg !1777
  %9 = alloca %struct._gsl_matrix_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_matrix_view, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1760, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1761, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata double %2, metadata !1762, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1763, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1764, metadata !DIExpression()), !dbg !1777
  %12 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 1, !dbg !1780
  %13 = load i64, ptr %12, align 8, !dbg !1780, !tbaa !1454
  %14 = trunc i64 %13 to i32, !dbg !1781
  %15 = add i32 %14, -1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1765, metadata !DIExpression()), !dbg !1777
  %16 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 2, !dbg !1782
  %17 = load i64, ptr %16, align 8, !dbg !1782, !tbaa !1461
  %18 = trunc i64 %17 to i32, !dbg !1783
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1766, metadata !DIExpression()), !dbg !1777
  %19 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 3, !dbg !1784
  %20 = load i32, ptr %19, align 8, !dbg !1784, !tbaa !1464
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1767, metadata !DIExpression()), !dbg !1777
  %21 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 12, !dbg !1785
  %22 = load ptr, ptr %21, align 8, !dbg !1785, !tbaa !1474
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1770, metadata !DIExpression()), !dbg !1777
  %23 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 7, !dbg !1786
  %24 = load ptr, ptr %23, align 8, !dbg !1786, !tbaa !1787
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !1771, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #9, !dbg !1788
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #9, !dbg !1788
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9, !dbg !1789
  %25 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 15, !dbg !1790
  %26 = load ptr, ptr %25, align 8, !dbg !1790, !tbaa !1480
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !1775, metadata !DIExpression()), !dbg !1777
  %27 = sext i32 %1 to i64, !dbg !1791
  %28 = load i64, ptr %3, align 8, !dbg !1793, !tbaa !1484
  %29 = icmp ult i64 %28, %27, !dbg !1794
  br i1 %29, label %40, label %30, !dbg !1795

30:                                               ; preds = %5
  %31 = icmp sle i32 %1, %0, !dbg !1796
  %32 = icmp slt i32 %0, 0
  %33 = or i1 %32, %31, !dbg !1797
  br i1 %33, label %40, label %34, !dbg !1797

34:                                               ; preds = %30
  %35 = mul i32 %15, %15
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %36 = icmp eq i32 %35, 0, !dbg !1798
  br i1 %36, label %41, label %37, !dbg !1801

37:                                               ; preds = %34
  %38 = zext i32 %35 to i64, !dbg !1801
  %39 = shl nuw nsw i64 %38, 3, !dbg !1801
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %39, i1 false), !dbg !1802, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1768, metadata !DIExpression()), !dbg !1777
  br label %41, !dbg !1803

40:                                               ; preds = %5, %30
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 819, i32 noundef 4) #9, !dbg !1806
  br label %235, !dbg !1806

41:                                               ; preds = %37, %34
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %42 = icmp eq i32 %15, 0, !dbg !1803
  br i1 %42, label %77, label %43, !dbg !1809

43:                                               ; preds = %41
  %44 = zext i32 %15 to i64, !dbg !1803
  br label %45, !dbg !1809

45:                                               ; preds = %43, %75
  %46 = phi i64 [ 0, %43 ], [ %47, %75 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1777
  %47 = add nuw nsw i64 %46, 1, !dbg !1810
  %48 = trunc i64 %46 to i32
  %49 = mul i32 %15, %48
  %50 = trunc i64 %47 to i32
  %51 = shl i32 %50, 2
  %52 = mul i32 %51, %50
  %53 = uitofp i32 %52 to double
  %54 = mul i64 %13, %46
  %55 = and i64 %54, 4294967295
  %56 = getelementptr inbounds double, ptr %22, i64 %55
  br label %57, !dbg !1811

57:                                               ; preds = %45, %72
  %58 = phi i64 [ 0, %45 ], [ %73, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1769, metadata !DIExpression()), !dbg !1777
  %59 = icmp eq i64 %46, %58, !dbg !1813
  br i1 %59, label %60, label %62, !dbg !1817

60:                                               ; preds = %57
  store double %53, ptr %56, align 8, !dbg !1818, !tbaa !1496
  %61 = add nuw nsw i64 %58, 1, !dbg !1819
  br label %72, !dbg !1820

62:                                               ; preds = %57
  %63 = add nuw nsw i64 %58, 1, !dbg !1821
  %64 = icmp eq i64 %46, %63, !dbg !1823
  %65 = icmp eq i64 %47, %58
  %66 = or i1 %65, %64, !dbg !1824
  br i1 %66, label %67, label %72, !dbg !1824

67:                                               ; preds = %62
  %68 = trunc i64 %58 to i32, !dbg !1825
  %69 = add i32 %49, %68, !dbg !1825
  %70 = zext i32 %69 to i64, !dbg !1826
  %71 = getelementptr inbounds double, ptr %22, i64 %70, !dbg !1826
  store double %2, ptr %71, align 8, !dbg !1827, !tbaa !1496
  br label %72, !dbg !1826

72:                                               ; preds = %62, %60, %67
  %73 = phi i64 [ %63, %62 ], [ %61, %60 ], [ %63, %67 ], !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1769, metadata !DIExpression()), !dbg !1777
  %74 = icmp eq i64 %73, %44, !dbg !1828
  br i1 %74, label %75, label %57, !dbg !1811, !llvm.loop !1829

75:                                               ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1768, metadata !DIExpression()), !dbg !1777
  %76 = icmp eq i64 %47, %44, !dbg !1803
  br i1 %76, label %77, label %45, !dbg !1809, !llvm.loop !1831

77:                                               ; preds = %75, %41
  %78 = phi i64 [ 0, %41 ], [ %44, %75 ], !dbg !1833
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef %22, i64 noundef %78, i64 noundef %78) #9, !dbg !1834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1772, metadata !DIExpression(), metadata !1835, metadata ptr %6, metadata !DIExpression()), !dbg !1777
  %79 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 13, !dbg !1836
  %80 = load ptr, ptr %79, align 8, !dbg !1836, !tbaa !1631
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef %80, i64 noundef 0, i64 noundef %78) #9, !dbg !1837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1774, metadata !DIExpression(), metadata !1838, metadata ptr %8, metadata !DIExpression()), !dbg !1777
  %81 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 14, !dbg !1839
  %82 = load ptr, ptr %81, align 8, !dbg !1839, !tbaa !1635
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef %82, i64 noundef 0, i64 noundef 0, i64 noundef %78, i64 noundef %78) #9, !dbg !1840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1773, metadata !DIExpression(), metadata !1841, metadata ptr %7, metadata !DIExpression()), !dbg !1777
  %83 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %26) #9, !dbg !1842
  %84 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #9, !dbg !1843
  store double 0.000000e+00, ptr %24, align 8, !dbg !1844, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %85 = icmp eq i32 %15, %20, !dbg !1845
  br i1 %85, label %109, label %86, !dbg !1848

86:                                               ; preds = %77
  %87 = sub i32 %15, %20
  %88 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !1644
  %90 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !1646
  %92 = call i32 @llvm.umax.i32(i32 %87, i32 1), !dbg !1848
  %93 = zext i32 %92 to i64, !dbg !1845
  %94 = and i64 %93, 1, !dbg !1848
  %95 = icmp ult i32 %87, 2, !dbg !1848
  br i1 %95, label %98, label %96, !dbg !1848

96:                                               ; preds = %86
  %97 = and i64 %93, 4294967294, !dbg !1848
  br label %115, !dbg !1848

98:                                               ; preds = %115, %86
  %99 = phi i64 [ 0, %86 ], [ %128, %115 ]
  %100 = icmp eq i64 %94, 0, !dbg !1848
  br i1 %100, label %109, label %101, !dbg !1848

101:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1655, metadata !DIExpression()), !dbg !1849
  %102 = mul i64 %91, %99, !dbg !1851
  %103 = getelementptr inbounds double, ptr %89, i64 %102, !dbg !1852
  %104 = load double, ptr %103, align 8, !dbg !1852, !tbaa !1496
  %105 = shl i64 %99, 1, !dbg !1853
  %106 = add i64 %105, 2, !dbg !1853
  %107 = and i64 %106, 4294967294, !dbg !1854
  %108 = getelementptr inbounds double, ptr %24, i64 %107, !dbg !1854
  store double %104, ptr %108, align 8, !dbg !1855, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1768, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1777
  br label %109

109:                                              ; preds = %101, %98, %77
  %110 = mul i32 %18, %18
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %111 = icmp eq i32 %110, 0, !dbg !1856
  br i1 %111, label %134, label %112, !dbg !1859

112:                                              ; preds = %109
  %113 = zext i32 %110 to i64, !dbg !1859
  %114 = shl nuw nsw i64 %113, 3, !dbg !1859
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %114, i1 false), !dbg !1860, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1768, metadata !DIExpression()), !dbg !1777
  br label %134, !dbg !1861

115:                                              ; preds = %115, %96
  %116 = phi i64 [ 0, %96 ], [ %128, %115 ]
  %117 = phi i64 [ 0, %96 ], [ %132, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !1655, metadata !DIExpression()), !dbg !1849
  %118 = mul i64 %91, %116, !dbg !1851
  %119 = getelementptr inbounds double, ptr %89, i64 %118, !dbg !1852
  %120 = load double, ptr %119, align 8, !dbg !1852, !tbaa !1496
  %121 = or disjoint i64 %116, 1, !dbg !1864
  %122 = shl nuw i64 %121, 1, !dbg !1853
  %123 = and i64 %122, 4294967294, !dbg !1854
  %124 = getelementptr inbounds double, ptr %24, i64 %123, !dbg !1854
  store double %120, ptr %124, align 8, !dbg !1855, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1655, metadata !DIExpression()), !dbg !1849
  %125 = mul i64 %91, %121, !dbg !1851
  %126 = getelementptr inbounds double, ptr %89, i64 %125, !dbg !1852
  %127 = load double, ptr %126, align 8, !dbg !1852, !tbaa !1496
  %128 = add nuw nsw i64 %116, 2, !dbg !1864
  %129 = shl nuw i64 %128, 1, !dbg !1853
  %130 = and i64 %129, 4294967292, !dbg !1854
  %131 = getelementptr inbounds double, ptr %24, i64 %130, !dbg !1854
  store double %127, ptr %131, align 8, !dbg !1855, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1768, metadata !DIExpression()), !dbg !1777
  %132 = add nuw i64 %117, 2, !dbg !1848
  %133 = icmp eq i64 %132, %97, !dbg !1848
  br i1 %133, label %98, label %115, !dbg !1848, !llvm.loop !1865

134:                                              ; preds = %112, %109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %135 = icmp eq i32 %18, 0, !dbg !1861
  br i1 %135, label %170, label %136, !dbg !1867

136:                                              ; preds = %134
  %137 = and i64 %17, 4294967295, !dbg !1861
  br label %138, !dbg !1867

138:                                              ; preds = %136, %168
  %139 = phi i64 [ 0, %136 ], [ %140, %168 ]
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1777
  %140 = add nuw nsw i64 %139, 1, !dbg !1868
  %141 = trunc i64 %139 to i32
  %142 = mul i32 %141, %18
  %143 = shl i32 %141, 1
  %144 = or disjoint i32 %143, 1
  %145 = mul i32 %144, %144
  %146 = uitofp i32 %145 to double
  %147 = add i32 %142, %141
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %22, i64 %148
  br label %150, !dbg !1869

150:                                              ; preds = %138, %165
  %151 = phi i64 [ 0, %138 ], [ %166, %165 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !1769, metadata !DIExpression()), !dbg !1777
  %152 = icmp eq i64 %139, %151, !dbg !1871
  br i1 %152, label %153, label %155, !dbg !1875

153:                                              ; preds = %150
  store double %146, ptr %149, align 8, !dbg !1876, !tbaa !1496
  %154 = add nuw nsw i64 %151, 1, !dbg !1877
  br label %165, !dbg !1878

155:                                              ; preds = %150
  %156 = add nuw nsw i64 %151, 1, !dbg !1879
  %157 = icmp eq i64 %139, %156, !dbg !1881
  %158 = icmp eq i64 %140, %151
  %159 = or i1 %158, %157, !dbg !1882
  br i1 %159, label %160, label %165, !dbg !1882

160:                                              ; preds = %155
  %161 = trunc i64 %151 to i32, !dbg !1883
  %162 = add i32 %142, %161, !dbg !1883
  %163 = zext i32 %162 to i64, !dbg !1884
  %164 = getelementptr inbounds double, ptr %22, i64 %163, !dbg !1884
  store double %2, ptr %164, align 8, !dbg !1885, !tbaa !1496
  br label %165, !dbg !1884

165:                                              ; preds = %155, %153, %160
  %166 = phi i64 [ %156, %155 ], [ %154, %153 ], [ %156, %160 ], !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !1769, metadata !DIExpression()), !dbg !1777
  %167 = icmp eq i64 %166, %137, !dbg !1886
  br i1 %167, label %168, label %150, !dbg !1869, !llvm.loop !1887

168:                                              ; preds = %165
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1768, metadata !DIExpression()), !dbg !1777
  %169 = icmp eq i64 %140, %137, !dbg !1861
  br i1 %169, label %170, label %138, !dbg !1867, !llvm.loop !1889

170:                                              ; preds = %168, %134
  %171 = load double, ptr %22, align 8, !dbg !1891, !tbaa !1496
  %172 = fsub double %171, %2, !dbg !1891
  store double %172, ptr %22, align 8, !dbg !1891, !tbaa !1496
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #9, !dbg !1892
  %173 = and i64 %17, 4294967295, !dbg !1893
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %22, i64 noundef %173, i64 noundef %173) #9, !dbg !1892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !1892, !tbaa.struct !1701, !DIAssignID !1894
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1772, metadata !DIExpression(), metadata !1894, metadata ptr %6, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #9, !dbg !1892
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #9, !dbg !1895
  %174 = load ptr, ptr %79, align 8, !dbg !1896, !tbaa !1631
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef %174, i64 noundef 0, i64 noundef %173) #9, !dbg !1895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !1895, !tbaa.struct !1708, !DIAssignID !1897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1774, metadata !DIExpression(), metadata !1897, metadata ptr %8, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #9, !dbg !1895
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #9, !dbg !1898
  %175 = load ptr, ptr %81, align 8, !dbg !1899, !tbaa !1635
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef %175, i64 noundef 0, i64 noundef 0, i64 noundef %173, i64 noundef %173) #9, !dbg !1898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 48, i1 false), !dbg !1898, !tbaa.struct !1701, !DIAssignID !1900
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1773, metadata !DIExpression(), metadata !1900, metadata ptr %7, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #9, !dbg !1898
  %176 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %26) #9, !dbg !1901
  %177 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #9, !dbg !1902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %178 = icmp eq i32 %20, %18, !dbg !1903
  br i1 %178, label %202, label %179, !dbg !1906

179:                                              ; preds = %170
  %180 = sub i32 %18, %20
  %181 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !1644
  %183 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !1646
  %185 = call i32 @llvm.umax.i32(i32 %180, i32 1), !dbg !1906
  %186 = zext i32 %185 to i64, !dbg !1903
  %187 = and i64 %186, 1, !dbg !1906
  %188 = icmp ult i32 %180, 2, !dbg !1906
  br i1 %188, label %191, label %189, !dbg !1906

189:                                              ; preds = %179
  %190 = and i64 %186, 4294967294, !dbg !1906
  br label %204, !dbg !1906

191:                                              ; preds = %204, %179
  %192 = phi i64 [ 0, %179 ], [ %222, %204 ]
  %193 = icmp eq i64 %187, 0, !dbg !1906
  br i1 %193, label %202, label %194, !dbg !1906

194:                                              ; preds = %191
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1655, metadata !DIExpression()), !dbg !1907
  %195 = mul i64 %184, %192, !dbg !1909
  %196 = getelementptr inbounds double, ptr %182, i64 %195, !dbg !1910
  %197 = load double, ptr %196, align 8, !dbg !1910, !tbaa !1496
  %198 = shl nuw i64 %192, 1, !dbg !1911
  %199 = and i64 %198, 4294967294, !dbg !1912
  %200 = or disjoint i64 %199, 1, !dbg !1912
  %201 = getelementptr inbounds double, ptr %24, i64 %200, !dbg !1912
  store double %197, ptr %201, align 8, !dbg !1913, !tbaa !1496
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1768, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1777
  br label %202, !dbg !1914

202:                                              ; preds = %194, %191, %170
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1768, metadata !DIExpression()), !dbg !1777
  %203 = icmp ugt i32 %0, %1, !dbg !1914
  br i1 %203, label %235, label %225, !dbg !1917

204:                                              ; preds = %204, %189
  %205 = phi i64 [ 0, %189 ], [ %222, %204 ]
  %206 = phi i64 [ 0, %189 ], [ %223, %204 ]
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1655, metadata !DIExpression()), !dbg !1907
  %207 = mul i64 %184, %205, !dbg !1909
  %208 = getelementptr inbounds double, ptr %182, i64 %207, !dbg !1910
  %209 = load double, ptr %208, align 8, !dbg !1910, !tbaa !1496
  %210 = shl nuw i64 %205, 1, !dbg !1911
  %211 = and i64 %210, 4294967292, !dbg !1912
  %212 = or disjoint i64 %211, 1, !dbg !1912
  %213 = getelementptr inbounds double, ptr %24, i64 %212, !dbg !1912
  store double %209, ptr %213, align 8, !dbg !1913, !tbaa !1496
  %214 = or disjoint i64 %205, 1, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !1768, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1647, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !1655, metadata !DIExpression()), !dbg !1907
  %215 = mul i64 %184, %214, !dbg !1909
  %216 = getelementptr inbounds double, ptr %182, i64 %215, !dbg !1910
  %217 = load double, ptr %216, align 8, !dbg !1910, !tbaa !1496
  %218 = shl nuw i64 %214, 1, !dbg !1911
  %219 = and i64 %218, 4294967294, !dbg !1912
  %220 = or disjoint i64 %219, 1, !dbg !1912
  %221 = getelementptr inbounds double, ptr %24, i64 %220, !dbg !1912
  store double %217, ptr %221, align 8, !dbg !1913, !tbaa !1496
  %222 = add nuw nsw i64 %205, 2, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !1768, metadata !DIExpression()), !dbg !1777
  %223 = add i64 %206, 2, !dbg !1906
  %224 = icmp eq i64 %223, %190, !dbg !1906
  br i1 %224, label %191, label %204, !dbg !1906, !llvm.loop !1919

225:                                              ; preds = %202, %225
  %226 = phi i32 [ %233, %225 ], [ %0, %202 ]
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !1768, metadata !DIExpression()), !dbg !1777
  %227 = zext i32 %226 to i64, !dbg !1921
  %228 = getelementptr inbounds double, ptr %24, i64 %227, !dbg !1921
  %229 = load double, ptr %228, align 8, !dbg !1921, !tbaa !1496
  %230 = sub i32 %226, %0, !dbg !1923
  %231 = zext i32 %230 to i64, !dbg !1924
  %232 = getelementptr inbounds double, ptr %4, i64 %231, !dbg !1924
  store double %229, ptr %232, align 8, !dbg !1925, !tbaa !1496
  %233 = add i32 %226, 1, !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %233, metadata !1768, metadata !DIExpression()), !dbg !1777
  %234 = icmp ugt i32 %233, %1, !dbg !1914
  br i1 %234, label %235, label %225, !dbg !1917, !llvm.loop !1927

235:                                              ; preds = %225, %202, %40
  %236 = phi i32 [ 4, %40 ], [ 0, %202 ], [ 0, %225 ], !dbg !1777
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #9, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #9, !dbg !1929
  ret i32 %236, !dbg !1929
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_a(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1930 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1936
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1934, metadata !DIExpression(), metadata !1936, metadata ptr %3, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1932, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata double %1, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1938
  %4 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1938, !range !158
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1935, metadata !DIExpression()), !dbg !1937
  %5 = icmp eq i32 %4, 0, !dbg !1939
  br i1 %5, label %7, label %6, !dbg !1938

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 884, i32 noundef %4) #9, !dbg !1941
  br label %7, !dbg !1941

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1938, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1944
  ret double %8, !dbg !1944
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_b(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1945 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1949, metadata !DIExpression(), metadata !1951, metadata ptr %3, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1947, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata double %1, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1953
  %4 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1953, !range !158
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1950, metadata !DIExpression()), !dbg !1952
  %5 = icmp eq i32 %4, 0, !dbg !1954
  br i1 %5, label %7, label %6, !dbg !1953

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 889, i32 noundef %4) #9, !dbg !1956
  br label %7, !dbg !1956

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1953, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1959
  ret double %8, !dbg !1959
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1960 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc double @asymptotic(i32 noundef %0, double noundef %1) unnamed_addr #6 !dbg !192 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !191, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double %1, metadata !194, metadata !DIExpression()), !dbg !1964
  %3 = shl nsw i32 %0, 1, !dbg !1965
  %4 = or disjoint i32 %3, 1, !dbg !1966
  %5 = sitofp i32 %4 to double, !dbg !1967
  tail call void @llvm.dbg.value(metadata double %5, metadata !196, metadata !DIExpression()), !dbg !1964
  %6 = fmul double %5, %5, !dbg !1968
  tail call void @llvm.dbg.value(metadata double %6, metadata !197, metadata !DIExpression()), !dbg !1964
  %7 = fmul double %6, %6, !dbg !1969
  tail call void @llvm.dbg.value(metadata double %7, metadata !198, metadata !DIExpression()), !dbg !1964
  %8 = fmul double %6, %7, !dbg !1970
  tail call void @llvm.dbg.value(metadata double %8, metadata !199, metadata !DIExpression()), !dbg !1964
  %9 = tail call double @sqrt(double noundef %1) #9, !dbg !1971
  %10 = fmul double %9, 2.000000e+00, !dbg !1972
  tail call void @llvm.dbg.value(metadata double %10, metadata !200, metadata !DIExpression()), !dbg !1964
  %11 = fmul double %10, 1.600000e+01, !dbg !1973
  tail call void @llvm.dbg.value(metadata double %11, metadata !201, metadata !DIExpression()), !dbg !1964
  %12 = fmul double %11, %11, !dbg !1974
  tail call void @llvm.dbg.value(metadata double %12, metadata !202, metadata !DIExpression()), !dbg !1964
  %13 = fmul double %11, %12, !dbg !1975
  tail call void @llvm.dbg.value(metadata double %13, metadata !203, metadata !DIExpression()), !dbg !1964
  %14 = fmul double %11, %13, !dbg !1976
  tail call void @llvm.dbg.value(metadata double %14, metadata !204, metadata !DIExpression()), !dbg !1964
  %15 = fmul double %11, %14, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %15, metadata !205, metadata !DIExpression()), !dbg !1964
  %16 = fmul double %1, 2.000000e+00, !dbg !1978
  %17 = fmul double %10, %5, !dbg !1979
  %18 = fsub double %17, %16, !dbg !1980
  %19 = fadd double %6, 1.000000e+00, !dbg !1981
  %20 = fmul double %19, 1.250000e-01, !dbg !1982
  %21 = fsub double %18, %20, !dbg !1983
  tail call void @llvm.dbg.value(metadata double %21, metadata !195, metadata !DIExpression()), !dbg !1964
  %22 = fmul double %5, 2.500000e-01, !dbg !1984
  %23 = fadd double %6, 3.000000e+00, !dbg !1985
  %24 = fmul double %22, %23, !dbg !1986
  %25 = fdiv double %24, %11, !dbg !1987
  %26 = fsub double %21, %25, !dbg !1988
  tail call void @llvm.dbg.value(metadata double %26, metadata !195, metadata !DIExpression()), !dbg !1964
  %27 = fmul double %7, 5.000000e+00, !dbg !1989
  %28 = fmul double %6, 3.400000e+01, !dbg !1990
  %29 = fadd double %28, %27, !dbg !1991
  %30 = fadd double %29, 9.000000e+00, !dbg !1992
  %31 = fmul double %30, 2.500000e-01, !dbg !1993
  %32 = fdiv double %31, %12, !dbg !1994
  %33 = fsub double %26, %32, !dbg !1995
  tail call void @llvm.dbg.value(metadata double %33, metadata !195, metadata !DIExpression()), !dbg !1964
  %34 = fmul double %7, 3.300000e+01, !dbg !1996
  %35 = fmul double %6, 4.100000e+02, !dbg !1997
  %36 = fadd double %35, %34, !dbg !1998
  %37 = fadd double %36, 4.050000e+02, !dbg !1999
  %38 = fmul double %22, %37, !dbg !2000
  %39 = fdiv double %38, %13, !dbg !2001
  %40 = fsub double %33, %39, !dbg !2002
  tail call void @llvm.dbg.value(metadata double %40, metadata !195, metadata !DIExpression()), !dbg !1964
  %41 = fmul double %8, 6.300000e+01, !dbg !2003
  %42 = fmul double %7, 1.260000e+03, !dbg !2004
  %43 = fadd double %42, %41, !dbg !2005
  %44 = fmul double %6, 2.943000e+03, !dbg !2006
  %45 = fadd double %44, %43, !dbg !2007
  %46 = fadd double %45, 4.860000e+02, !dbg !2008
  %47 = fdiv double %46, %14, !dbg !2009
  %48 = fsub double %40, %47, !dbg !2010
  tail call void @llvm.dbg.value(metadata double %48, metadata !195, metadata !DIExpression()), !dbg !1964
  %49 = fmul double %8, 5.270000e+02, !dbg !2011
  %50 = fmul double %7, 1.561700e+04, !dbg !2012
  %51 = fadd double %50, %49, !dbg !2013
  %52 = fmul double %6, 6.900100e+04, !dbg !2014
  %53 = fadd double %52, %51, !dbg !2015
  %54 = fadd double %53, 4.160700e+04, !dbg !2016
  %55 = fmul double %54, %5, !dbg !2017
  %56 = fdiv double %55, %15, !dbg !2018
  %57 = fsub double %48, %56, !dbg !2019
  tail call void @llvm.dbg.value(metadata double %57, metadata !195, metadata !DIExpression()), !dbg !1964
  ret double %57, !dbg !2020
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2021 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2024 double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2025 double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_charv.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1439356857015e420773eb08233032bc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 43)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 36)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 748, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 45)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 884, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 39)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 889, type: !29, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !83, globals: !86, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36, !75}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!40 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!41 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!42 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!43 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!44 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!45 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!46 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!47 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!48 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!49 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!50 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!51 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!52 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!53 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!54 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!55 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!56 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!57 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!58 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!59 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!60 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!61 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!62 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!63 = !DIEnumerator(name: "GSL_ESING", value: 21)
!64 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!65 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!66 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!67 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!68 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!69 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!70 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!71 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!72 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!73 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!74 = !DIEnumerator(name: "GSL_EOF", value: 32)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 265, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_ASC", value: 0)
!80 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_DESC", value: 1)
!81 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_ASC", value: 2)
!82 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_DESC", value: 3)
!83 = !{!38, !84, !85}
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!86 = !{!0, !7, !12, !17, !22, !27, !32, !87}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 37)
!92 = !{i32 7, !"Dwarf Version", i32 5}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 8, !"PIC Level", i32 2}
!96 = !{i32 7, !"PIE Level", i32 2}
!97 = !{i32 7, !"uwtable", i32 2}
!98 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!99 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!100 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !2, file: !2, line: 370, type: !101, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !110)
!101 = !DISubroutineType(types: !102)
!102 = !{!38, !38, !84, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !105, line: 41, baseType: !106)
!105 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !105, line: 37, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !106, file: !105, line: 38, baseType: !84, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !106, file: !105, line: 39, baseType: !84, size: 64, offset: 64)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!111 = !DILocalVariable(name: "order", arg: 1, scope: !100, file: !2, line: 370, type: !38)
!112 = !DILocalVariable(name: "qq", arg: 2, scope: !100, file: !2, line: 370, type: !84)
!113 = !DILocalVariable(name: "result", arg: 3, scope: !100, file: !2, line: 370, type: !103)
!114 = !DILocalVariable(name: "even_odd", scope: !100, file: !2, line: 372, type: !38)
!115 = !DILocalVariable(name: "nterms", scope: !100, file: !2, line: 372, type: !38)
!116 = !DILocalVariable(name: "ii", scope: !100, file: !2, line: 372, type: !38)
!117 = !DILocalVariable(name: "counter", scope: !100, file: !2, line: 372, type: !38)
!118 = !DILocalVariable(name: "maxcount", scope: !100, file: !2, line: 372, type: !38)
!119 = !DILocalVariable(name: "dir", scope: !100, file: !2, line: 373, type: !38)
!120 = !DILocalVariable(name: "a1", scope: !100, file: !2, line: 374, type: !84)
!121 = !DILocalVariable(name: "a2", scope: !100, file: !2, line: 374, type: !84)
!122 = !DILocalVariable(name: "fa", scope: !100, file: !2, line: 374, type: !84)
!123 = !DILocalVariable(name: "fa1", scope: !100, file: !2, line: 374, type: !84)
!124 = !DILocalVariable(name: "dela", scope: !100, file: !2, line: 374, type: !84)
!125 = !DILocalVariable(name: "aa_orig", scope: !100, file: !2, line: 374, type: !84)
!126 = !DILocalVariable(name: "da", scope: !100, file: !2, line: 374, type: !84)
!127 = !DILocalVariable(name: "aa", scope: !100, file: !2, line: 374, type: !84)
!128 = !DILocalVariable(name: "aa_approx", scope: !100, file: !2, line: 375, type: !84)
!129 = !DILocation(line: 0, scope: !100)
!130 = !DILocation(line: 384, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !100, file: !2, line: 384, column: 7)
!132 = !DILocation(line: 384, column: 7, scope: !100)
!133 = !DILocation(line: 386, column: 26, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !2, line: 385, column: 3)
!135 = !DILocation(line: 386, column: 21, scope: !134)
!136 = !DILocation(line: 386, column: 19, scope: !134)
!137 = !{!138, !139, i64 0}
!138 = !{!"gsl_sf_result_struct", !139, i64 0, !139, i64 8}
!139 = !{!"double", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 387, column: 15, scope: !134)
!143 = !DILocation(line: 387, column: 19, scope: !134)
!144 = !{!138, !139, i64 8}
!145 = !DILocation(line: 388, column: 7, scope: !134)
!146 = !DILocation(line: 379, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !100, file: !2, line: 379, column: 7)
!148 = !DILocation(line: 393, column: 7, scope: !100)
!149 = !DILocation(line: 395, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !100, file: !2, line: 395, column: 7)
!151 = !DILocation(line: 395, column: 7, scope: !100)
!152 = !DILocation(line: 397, column: 20, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 397, column: 11)
!154 = distinct !DILexicalBlock(scope: !150, file: !2, line: 396, column: 3)
!155 = !DILocation(line: 0, scope: !153)
!156 = !DILocation(line: 397, column: 11, scope: !154)
!157 = !DILocation(line: 400, column: 18, scope: !153)
!158 = !{i32 0, i32 6}
!159 = !DILocation(line: 400, column: 11, scope: !153)
!160 = !DILocalVariable(name: "order", arg: 1, scope: !161, file: !2, line: 205, type: !38)
!161 = distinct !DISubprogram(name: "approx_c", scope: !2, file: !2, line: 205, type: !162, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!84, !38, !84}
!164 = !{!160, !165, !166, !167, !168, !169, !170, !176, !177, !178}
!165 = !DILocalVariable(name: "qq", arg: 2, scope: !161, file: !2, line: 205, type: !84)
!166 = !DILocalVariable(name: "approx", scope: !161, file: !2, line: 207, type: !84)
!167 = !DILocalVariable(name: "c0", scope: !161, file: !2, line: 208, type: !84)
!168 = !DILocalVariable(name: "c1", scope: !161, file: !2, line: 208, type: !84)
!169 = !DILocalVariable(name: "c2", scope: !161, file: !2, line: 208, type: !84)
!170 = !DILocalVariable(name: "n2", scope: !171, file: !2, line: 260, type: !84)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 258, column: 15)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 257, column: 19)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 256, column: 11)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 255, column: 15)
!175 = distinct !DILexicalBlock(scope: !161, file: !2, line: 217, column: 3)
!176 = !DILocalVariable(name: "n22", scope: !171, file: !2, line: 261, type: !84)
!177 = !DILocalVariable(name: "q2", scope: !171, file: !2, line: 262, type: !84)
!178 = !DILocalVariable(name: "q4", scope: !171, file: !2, line: 263, type: !84)
!179 = !DILocation(line: 0, scope: !161, inlinedAt: !180)
!180 = distinct !DILocation(line: 404, column: 15, scope: !100)
!181 = !DILocation(line: 216, column: 3, scope: !161, inlinedAt: !180)
!182 = !DILocation(line: 219, column: 18, scope: !183, inlinedAt: !180)
!183 = distinct !DILexicalBlock(scope: !175, file: !2, line: 219, column: 15)
!184 = !DILocation(line: 219, column: 15, scope: !175, inlinedAt: !180)
!185 = !DILocation(line: 220, column: 37, scope: !183, inlinedAt: !180)
!186 = !DILocation(line: 220, column: 40, scope: !183, inlinedAt: !180)
!187 = !DILocation(line: 220, column: 34, scope: !183, inlinedAt: !180)
!188 = !DILocation(line: 220, column: 27, scope: !183, inlinedAt: !180)
!189 = !DILocation(line: 220, column: 25, scope: !183, inlinedAt: !180)
!190 = !DILocation(line: 220, column: 15, scope: !183, inlinedAt: !180)
!191 = !DILocalVariable(name: "order", arg: 1, scope: !192, file: !2, line: 144, type: !38)
!192 = distinct !DISubprogram(name: "asymptotic", scope: !2, file: !2, line: 144, type: !162, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !193)
!193 = !{!191, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!194 = !DILocalVariable(name: "qq", arg: 2, scope: !192, file: !2, line: 144, type: !84)
!195 = !DILocalVariable(name: "asymp", scope: !192, file: !2, line: 146, type: !84)
!196 = !DILocalVariable(name: "nn", scope: !192, file: !2, line: 147, type: !84)
!197 = !DILocalVariable(name: "n2", scope: !192, file: !2, line: 147, type: !84)
!198 = !DILocalVariable(name: "n4", scope: !192, file: !2, line: 147, type: !84)
!199 = !DILocalVariable(name: "n6", scope: !192, file: !2, line: 147, type: !84)
!200 = !DILocalVariable(name: "hh", scope: !192, file: !2, line: 148, type: !84)
!201 = !DILocalVariable(name: "ah", scope: !192, file: !2, line: 148, type: !84)
!202 = !DILocalVariable(name: "ah2", scope: !192, file: !2, line: 148, type: !84)
!203 = !DILocalVariable(name: "ah3", scope: !192, file: !2, line: 148, type: !84)
!204 = !DILocalVariable(name: "ah4", scope: !192, file: !2, line: 148, type: !84)
!205 = !DILocalVariable(name: "ah5", scope: !192, file: !2, line: 148, type: !84)
!206 = !DILocation(line: 0, scope: !192, inlinedAt: !207)
!207 = distinct !DILocation(line: 222, column: 22, scope: !183, inlinedAt: !180)
!208 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !207)
!209 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !207)
!210 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !207)
!211 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !207)
!212 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !207)
!213 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !207)
!214 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !207)
!215 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !207)
!216 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !207)
!217 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !207)
!218 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !207)
!219 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !207)
!220 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !207)
!221 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !207)
!222 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !207)
!223 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !207)
!224 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !207)
!225 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !207)
!226 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !207)
!227 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !207)
!228 = !DILocation(line: 222, column: 15, scope: !183, inlinedAt: !180)
!229 = !DILocation(line: 226, column: 18, scope: !230, inlinedAt: !180)
!230 = distinct !DILexicalBlock(scope: !175, file: !2, line: 226, column: 15)
!231 = !DILocation(line: 226, column: 15, scope: !175, inlinedAt: !180)
!232 = !DILocation(line: 227, column: 43, scope: !230, inlinedAt: !180)
!233 = !DILocation(line: 227, column: 46, scope: !230, inlinedAt: !180)
!234 = !DILocation(line: 227, column: 54, scope: !230, inlinedAt: !180)
!235 = !DILocation(line: 227, column: 50, scope: !230, inlinedAt: !180)
!236 = !DILocation(line: 227, column: 58, scope: !230, inlinedAt: !180)
!237 = !DILocation(line: 227, column: 37, scope: !230, inlinedAt: !180)
!238 = !DILocation(line: 227, column: 35, scope: !230, inlinedAt: !180)
!239 = !DILocation(line: 227, column: 30, scope: !230, inlinedAt: !180)
!240 = !DILocation(line: 227, column: 25, scope: !230, inlinedAt: !180)
!241 = !DILocation(line: 227, column: 15, scope: !230, inlinedAt: !180)
!242 = !DILocation(line: 0, scope: !192, inlinedAt: !243)
!243 = distinct !DILocation(line: 229, column: 22, scope: !230, inlinedAt: !180)
!244 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !243)
!245 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !243)
!246 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !243)
!247 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !243)
!248 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !243)
!249 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !243)
!250 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !243)
!251 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !243)
!252 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !243)
!253 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !243)
!254 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !243)
!255 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !243)
!256 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !243)
!257 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !243)
!258 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !243)
!259 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !243)
!260 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !243)
!261 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !243)
!262 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !243)
!263 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !243)
!264 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !243)
!265 = !DILocation(line: 229, column: 15, scope: !230, inlinedAt: !180)
!266 = !DILocation(line: 233, column: 18, scope: !267, inlinedAt: !180)
!267 = distinct !DILexicalBlock(scope: !175, file: !2, line: 233, column: 15)
!268 = !DILocation(line: 233, column: 15, scope: !175, inlinedAt: !180)
!269 = !DILocation(line: 236, column: 27, scope: !270, inlinedAt: !180)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 234, column: 11)
!271 = !DILocation(line: 236, column: 30, scope: !270, inlinedAt: !180)
!272 = !DILocation(line: 236, column: 24, scope: !270, inlinedAt: !180)
!273 = !DILocation(line: 237, column: 22, scope: !270, inlinedAt: !180)
!274 = !DILocation(line: 237, column: 25, scope: !270, inlinedAt: !180)
!275 = !DILocation(line: 241, column: 11, scope: !175, inlinedAt: !180)
!276 = !DILocation(line: 0, scope: !192, inlinedAt: !277)
!277 = distinct !DILocation(line: 240, column: 22, scope: !267, inlinedAt: !180)
!278 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !277)
!279 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !277)
!280 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !277)
!281 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !277)
!282 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !277)
!283 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !277)
!284 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !277)
!285 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !277)
!286 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !277)
!287 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !277)
!288 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !277)
!289 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !277)
!290 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !277)
!291 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !277)
!292 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !277)
!293 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !277)
!294 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !277)
!295 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !277)
!296 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !277)
!297 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !277)
!298 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !277)
!299 = !DILocation(line: 240, column: 15, scope: !267, inlinedAt: !180)
!300 = !DILocation(line: 244, column: 18, scope: !301, inlinedAt: !180)
!301 = distinct !DILexicalBlock(scope: !175, file: !2, line: 244, column: 15)
!302 = !DILocation(line: 244, column: 15, scope: !175, inlinedAt: !180)
!303 = !DILocation(line: 246, column: 24, scope: !304, inlinedAt: !180)
!304 = distinct !DILexicalBlock(scope: !301, file: !2, line: 245, column: 11)
!305 = !DILocation(line: 247, column: 22, scope: !304, inlinedAt: !180)
!306 = !DILocation(line: 247, column: 26, scope: !304, inlinedAt: !180)
!307 = !DILocation(line: 247, column: 35, scope: !304, inlinedAt: !180)
!308 = !DILocation(line: 247, column: 38, scope: !304, inlinedAt: !180)
!309 = !DILocation(line: 247, column: 32, scope: !304, inlinedAt: !180)
!310 = !DILocation(line: 248, column: 22, scope: !304, inlinedAt: !180)
!311 = !DILocation(line: 248, column: 30, scope: !304, inlinedAt: !180)
!312 = !DILocation(line: 248, column: 25, scope: !304, inlinedAt: !180)
!313 = !DILocation(line: 252, column: 11, scope: !175, inlinedAt: !180)
!314 = !DILocation(line: 0, scope: !192, inlinedAt: !315)
!315 = distinct !DILocation(line: 251, column: 22, scope: !301, inlinedAt: !180)
!316 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !315)
!317 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !315)
!318 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !315)
!319 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !315)
!320 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !315)
!321 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !315)
!322 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !315)
!323 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !315)
!324 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !315)
!325 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !315)
!326 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !315)
!327 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !315)
!328 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !315)
!329 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !315)
!330 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !315)
!331 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !315)
!332 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !315)
!333 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !315)
!334 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !315)
!335 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !315)
!336 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !315)
!337 = !DILocation(line: 251, column: 15, scope: !301, inlinedAt: !180)
!338 = !DILocation(line: 255, column: 21, scope: !174, inlinedAt: !180)
!339 = !DILocation(line: 255, column: 15, scope: !175, inlinedAt: !180)
!340 = !DILocation(line: 257, column: 23, scope: !172, inlinedAt: !180)
!341 = !DILocation(line: 257, column: 22, scope: !172, inlinedAt: !180)
!342 = !DILocation(line: 257, column: 33, scope: !172, inlinedAt: !180)
!343 = !DILocation(line: 257, column: 32, scope: !172, inlinedAt: !180)
!344 = !DILocation(line: 257, column: 29, scope: !172, inlinedAt: !180)
!345 = !DILocation(line: 257, column: 19, scope: !173, inlinedAt: !180)
!346 = !DILocation(line: 260, column: 45, scope: !171, inlinedAt: !180)
!347 = !DILocation(line: 260, column: 31, scope: !171, inlinedAt: !180)
!348 = !DILocation(line: 0, scope: !171, inlinedAt: !180)
!349 = !DILocation(line: 261, column: 45, scope: !171, inlinedAt: !180)
!350 = !DILocation(line: 261, column: 49, scope: !171, inlinedAt: !180)
!351 = !DILocation(line: 262, column: 33, scope: !171, inlinedAt: !180)
!352 = !DILocation(line: 263, column: 33, scope: !171, inlinedAt: !180)
!353 = !DILocation(line: 264, column: 36, scope: !171, inlinedAt: !180)
!354 = !DILocation(line: 264, column: 39, scope: !171, inlinedAt: !180)
!355 = !DILocation(line: 264, column: 31, scope: !171, inlinedAt: !180)
!356 = !DILocation(line: 265, column: 31, scope: !171, inlinedAt: !180)
!357 = !DILocation(line: 265, column: 35, scope: !171, inlinedAt: !180)
!358 = !DILocation(line: 265, column: 39, scope: !171, inlinedAt: !180)
!359 = !DILocation(line: 265, column: 46, scope: !171, inlinedAt: !180)
!360 = !DILocation(line: 265, column: 50, scope: !171, inlinedAt: !180)
!361 = !DILocation(line: 265, column: 64, scope: !171, inlinedAt: !180)
!362 = !DILocation(line: 265, column: 59, scope: !171, inlinedAt: !180)
!363 = !DILocation(line: 265, column: 42, scope: !171, inlinedAt: !180)
!364 = !DILocation(line: 265, column: 26, scope: !171, inlinedAt: !180)
!365 = !DILocation(line: 266, column: 31, scope: !171, inlinedAt: !180)
!366 = !DILocation(line: 266, column: 34, scope: !171, inlinedAt: !180)
!367 = !DILocation(line: 266, column: 42, scope: !171, inlinedAt: !180)
!368 = !DILocation(line: 266, column: 38, scope: !171, inlinedAt: !180)
!369 = !DILocation(line: 266, column: 46, scope: !171, inlinedAt: !180)
!370 = !DILocation(line: 266, column: 51, scope: !171, inlinedAt: !180)
!371 = !DILocation(line: 266, column: 54, scope: !171, inlinedAt: !180)
!372 = !DILocation(line: 267, column: 26, scope: !171, inlinedAt: !180)
!373 = !DILocation(line: 267, column: 30, scope: !171, inlinedAt: !180)
!374 = !DILocation(line: 267, column: 34, scope: !171, inlinedAt: !180)
!375 = !DILocation(line: 267, column: 43, scope: !171, inlinedAt: !180)
!376 = !DILocation(line: 267, column: 57, scope: !171, inlinedAt: !180)
!377 = !DILocation(line: 267, column: 52, scope: !171, inlinedAt: !180)
!378 = !DILocation(line: 266, column: 57, scope: !171, inlinedAt: !180)
!379 = !DILocation(line: 266, column: 26, scope: !171, inlinedAt: !180)
!380 = !DILocation(line: 268, column: 26, scope: !381, inlinedAt: !180)
!381 = distinct !DILexicalBlock(scope: !171, file: !2, line: 268, column: 23)
!382 = !DILocation(line: 268, column: 37, scope: !381, inlinedAt: !180)
!383 = !DILocation(line: 268, column: 36, scope: !381, inlinedAt: !180)
!384 = !DILocation(line: 268, column: 33, scope: !381, inlinedAt: !180)
!385 = !DILocation(line: 268, column: 23, scope: !171, inlinedAt: !180)
!386 = !DILocation(line: 270, column: 33, scope: !387, inlinedAt: !180)
!387 = distinct !DILexicalBlock(scope: !381, file: !2, line: 269, column: 19)
!388 = !DILocation(line: 270, column: 30, scope: !387, inlinedAt: !180)
!389 = !DILocation(line: 271, column: 30, scope: !387, inlinedAt: !180)
!390 = !DILocation(line: 272, column: 19, scope: !387, inlinedAt: !180)
!391 = !DILocation(line: 0, scope: !192, inlinedAt: !392)
!392 = distinct !DILocation(line: 275, column: 28, scope: !172, inlinedAt: !180)
!393 = !DILocation(line: 152, column: 9, scope: !192, inlinedAt: !392)
!394 = !DILocation(line: 152, column: 16, scope: !192, inlinedAt: !392)
!395 = !DILocation(line: 152, column: 8, scope: !192, inlinedAt: !392)
!396 = !DILocation(line: 153, column: 10, scope: !192, inlinedAt: !392)
!397 = !DILocation(line: 154, column: 10, scope: !192, inlinedAt: !392)
!398 = !DILocation(line: 155, column: 10, scope: !192, inlinedAt: !392)
!399 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !392)
!400 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !392)
!401 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !392)
!402 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !392)
!403 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !392)
!404 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !392)
!405 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !392)
!406 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !392)
!407 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !392)
!408 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !392)
!409 = !DILocation(line: 165, column: 37, scope: !192, inlinedAt: !392)
!410 = !DILocation(line: 165, column: 32, scope: !192, inlinedAt: !392)
!411 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !392)
!412 = !DILocation(line: 166, column: 16, scope: !192, inlinedAt: !392)
!413 = !DILocation(line: 166, column: 50, scope: !192, inlinedAt: !392)
!414 = !DILocation(line: 166, column: 19, scope: !192, inlinedAt: !392)
!415 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !392)
!416 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !392)
!417 = !DILocation(line: 167, column: 35, scope: !192, inlinedAt: !392)
!418 = !DILocation(line: 167, column: 46, scope: !192, inlinedAt: !392)
!419 = !DILocation(line: 167, column: 39, scope: !192, inlinedAt: !392)
!420 = !DILocation(line: 167, column: 50, scope: !192, inlinedAt: !392)
!421 = !DILocation(line: 167, column: 16, scope: !192, inlinedAt: !392)
!422 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !392)
!423 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !392)
!424 = !DILocation(line: 168, column: 35, scope: !192, inlinedAt: !392)
!425 = !DILocation(line: 168, column: 46, scope: !192, inlinedAt: !392)
!426 = !DILocation(line: 168, column: 39, scope: !192, inlinedAt: !392)
!427 = !DILocation(line: 168, column: 50, scope: !192, inlinedAt: !392)
!428 = !DILocation(line: 168, column: 19, scope: !192, inlinedAt: !392)
!429 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !392)
!430 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !392)
!431 = !DILocation(line: 169, column: 24, scope: !192, inlinedAt: !392)
!432 = !DILocation(line: 169, column: 35, scope: !192, inlinedAt: !392)
!433 = !DILocation(line: 169, column: 28, scope: !192, inlinedAt: !392)
!434 = !DILocation(line: 169, column: 46, scope: !192, inlinedAt: !392)
!435 = !DILocation(line: 169, column: 39, scope: !192, inlinedAt: !392)
!436 = !DILocation(line: 169, column: 50, scope: !192, inlinedAt: !392)
!437 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !392)
!438 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !392)
!439 = !DILocation(line: 170, column: 24, scope: !192, inlinedAt: !392)
!440 = !DILocation(line: 170, column: 35, scope: !192, inlinedAt: !392)
!441 = !DILocation(line: 170, column: 28, scope: !192, inlinedAt: !392)
!442 = !DILocation(line: 170, column: 46, scope: !192, inlinedAt: !392)
!443 = !DILocation(line: 170, column: 39, scope: !192, inlinedAt: !392)
!444 = !DILocation(line: 170, column: 50, scope: !192, inlinedAt: !392)
!445 = !DILocation(line: 170, column: 19, scope: !192, inlinedAt: !392)
!446 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !392)
!447 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !392)
!448 = !DILocation(line: 280, column: 27, scope: !174, inlinedAt: !180)
!449 = !DILocation(line: 280, column: 22, scope: !174, inlinedAt: !180)
!450 = !DILocation(line: 280, column: 15, scope: !174, inlinedAt: !180)
!451 = !DILocation(line: 0, scope: !175, inlinedAt: !180)
!452 = !DILocalVariable(name: "c2", arg: 1, scope: !453, file: !2, line: 177, type: !84)
!453 = distinct !DISubprogram(name: "solve_cubic", scope: !2, file: !2, line: 177, type: !454, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!84, !84, !84, !84}
!456 = !{!452, !457, !458, !459, !460, !461, !462, !463, !464, !467}
!457 = !DILocalVariable(name: "c1", arg: 2, scope: !453, file: !2, line: 177, type: !84)
!458 = !DILocalVariable(name: "c0", arg: 3, scope: !453, file: !2, line: 177, type: !84)
!459 = !DILocalVariable(name: "qq", scope: !453, file: !2, line: 179, type: !84)
!460 = !DILocalVariable(name: "rr", scope: !453, file: !2, line: 179, type: !84)
!461 = !DILocalVariable(name: "ww", scope: !453, file: !2, line: 179, type: !84)
!462 = !DILocalVariable(name: "ss", scope: !453, file: !2, line: 179, type: !84)
!463 = !DILocalVariable(name: "tt", scope: !453, file: !2, line: 179, type: !84)
!464 = !DILocalVariable(name: "t1", scope: !465, file: !2, line: 188, type: !84)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 187, column: 3)
!466 = distinct !DILexicalBlock(scope: !453, file: !2, line: 186, column: 7)
!467 = !DILocalVariable(name: "theta", scope: !468, file: !2, line: 195, type: !84)
!468 = distinct !DILexicalBlock(scope: !466, file: !2, line: 194, column: 3)
!469 = !DILocation(line: 0, scope: !453, inlinedAt: !470)
!470 = distinct !DILocation(line: 284, column: 12, scope: !161, inlinedAt: !180)
!471 = !DILocation(line: 182, column: 10, scope: !453, inlinedAt: !470)
!472 = !DILocation(line: 182, column: 18, scope: !453, inlinedAt: !470)
!473 = !DILocation(line: 182, column: 14, scope: !453, inlinedAt: !470)
!474 = !DILocation(line: 182, column: 22, scope: !453, inlinedAt: !470)
!475 = !DILocation(line: 183, column: 10, scope: !453, inlinedAt: !470)
!476 = !DILocation(line: 183, column: 13, scope: !453, inlinedAt: !470)
!477 = !DILocation(line: 183, column: 21, scope: !453, inlinedAt: !470)
!478 = !DILocation(line: 183, column: 17, scope: !453, inlinedAt: !470)
!479 = !DILocation(line: 183, column: 28, scope: !453, inlinedAt: !470)
!480 = !DILocation(line: 183, column: 31, scope: !453, inlinedAt: !470)
!481 = !DILocation(line: 183, column: 34, scope: !453, inlinedAt: !470)
!482 = !DILocation(line: 183, column: 25, scope: !453, inlinedAt: !470)
!483 = !DILocation(line: 183, column: 38, scope: !453, inlinedAt: !470)
!484 = !DILocation(line: 184, column: 10, scope: !453, inlinedAt: !470)
!485 = !DILocation(line: 184, column: 13, scope: !453, inlinedAt: !470)
!486 = !DILocation(line: 184, column: 21, scope: !453, inlinedAt: !470)
!487 = !DILocation(line: 184, column: 17, scope: !453, inlinedAt: !470)
!488 = !DILocation(line: 186, column: 10, scope: !466, inlinedAt: !470)
!489 = !DILocation(line: 186, column: 7, scope: !453, inlinedAt: !470)
!490 = !DILocation(line: 188, column: 24, scope: !465, inlinedAt: !470)
!491 = !DILocation(line: 188, column: 22, scope: !465, inlinedAt: !470)
!492 = !DILocation(line: 0, scope: !465, inlinedAt: !470)
!493 = !DILocation(line: 189, column: 12, scope: !465, inlinedAt: !470)
!494 = !DILocation(line: 189, column: 20, scope: !465, inlinedAt: !470)
!495 = !DILocation(line: 189, column: 24, scope: !465, inlinedAt: !470)
!496 = !DILocation(line: 189, column: 23, scope: !465, inlinedAt: !470)
!497 = !DILocation(line: 190, column: 17, scope: !465, inlinedAt: !470)
!498 = !DILocation(line: 190, column: 15, scope: !465, inlinedAt: !470)
!499 = !DILocation(line: 191, column: 12, scope: !465, inlinedAt: !470)
!500 = !DILocation(line: 191, column: 20, scope: !465, inlinedAt: !470)
!501 = !DILocation(line: 191, column: 24, scope: !465, inlinedAt: !470)
!502 = !DILocation(line: 191, column: 23, scope: !465, inlinedAt: !470)
!503 = !DILocation(line: 192, column: 3, scope: !465, inlinedAt: !470)
!504 = !DILocation(line: 195, column: 35, scope: !468, inlinedAt: !470)
!505 = !DILocation(line: 195, column: 38, scope: !468, inlinedAt: !470)
!506 = !DILocation(line: 195, column: 41, scope: !468, inlinedAt: !470)
!507 = !DILocation(line: 195, column: 30, scope: !468, inlinedAt: !470)
!508 = !DILocation(line: 195, column: 29, scope: !468, inlinedAt: !470)
!509 = !DILocation(line: 195, column: 22, scope: !468, inlinedAt: !470)
!510 = !DILocation(line: 0, scope: !468, inlinedAt: !470)
!511 = !DILocation(line: 196, column: 14, scope: !468, inlinedAt: !470)
!512 = !DILocation(line: 196, column: 13, scope: !468, inlinedAt: !470)
!513 = !DILocation(line: 196, column: 35, scope: !468, inlinedAt: !470)
!514 = !DILocation(line: 196, column: 44, scope: !468, inlinedAt: !470)
!515 = !DILocation(line: 196, column: 24, scope: !468, inlinedAt: !470)
!516 = !DILocation(line: 196, column: 23, scope: !468, inlinedAt: !470)
!517 = !DILocation(line: 0, scope: !466, inlinedAt: !470)
!518 = !DILocation(line: 200, column: 14, scope: !453, inlinedAt: !470)
!519 = !DILocation(line: 200, column: 23, scope: !453, inlinedAt: !470)
!520 = !DILocation(line: 200, column: 19, scope: !453, inlinedAt: !470)
!521 = !DILocation(line: 286, column: 15, scope: !522, inlinedAt: !180)
!522 = distinct !DILexicalBlock(scope: !161, file: !2, line: 286, column: 8)
!523 = !DILocation(line: 286, column: 19, scope: !522, inlinedAt: !180)
!524 = !DILocation(line: 286, column: 22, scope: !522, inlinedAt: !180)
!525 = !DILocation(line: 286, column: 37, scope: !522, inlinedAt: !180)
!526 = !DILocation(line: 286, column: 36, scope: !522, inlinedAt: !180)
!527 = !DILocation(line: 286, column: 31, scope: !522, inlinedAt: !180)
!528 = !DILocation(line: 286, column: 8, scope: !161, inlinedAt: !180)
!529 = !DILocation(line: 0, scope: !192, inlinedAt: !530)
!530 = distinct !DILocation(line: 287, column: 14, scope: !522, inlinedAt: !180)
!531 = !DILocation(line: 152, column: 9, scope: !192, inlinedAt: !530)
!532 = !DILocation(line: 152, column: 16, scope: !192, inlinedAt: !530)
!533 = !DILocation(line: 152, column: 8, scope: !192, inlinedAt: !530)
!534 = !DILocation(line: 153, column: 10, scope: !192, inlinedAt: !530)
!535 = !DILocation(line: 154, column: 10, scope: !192, inlinedAt: !530)
!536 = !DILocation(line: 155, column: 10, scope: !192, inlinedAt: !530)
!537 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !530)
!538 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !530)
!539 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !530)
!540 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !530)
!541 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !530)
!542 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !530)
!543 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !530)
!544 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !530)
!545 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !530)
!546 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !530)
!547 = !DILocation(line: 165, column: 37, scope: !192, inlinedAt: !530)
!548 = !DILocation(line: 165, column: 32, scope: !192, inlinedAt: !530)
!549 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !530)
!550 = !DILocation(line: 166, column: 16, scope: !192, inlinedAt: !530)
!551 = !DILocation(line: 166, column: 50, scope: !192, inlinedAt: !530)
!552 = !DILocation(line: 166, column: 19, scope: !192, inlinedAt: !530)
!553 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !530)
!554 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !530)
!555 = !DILocation(line: 167, column: 35, scope: !192, inlinedAt: !530)
!556 = !DILocation(line: 167, column: 46, scope: !192, inlinedAt: !530)
!557 = !DILocation(line: 167, column: 39, scope: !192, inlinedAt: !530)
!558 = !DILocation(line: 167, column: 50, scope: !192, inlinedAt: !530)
!559 = !DILocation(line: 167, column: 16, scope: !192, inlinedAt: !530)
!560 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !530)
!561 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !530)
!562 = !DILocation(line: 168, column: 35, scope: !192, inlinedAt: !530)
!563 = !DILocation(line: 168, column: 46, scope: !192, inlinedAt: !530)
!564 = !DILocation(line: 168, column: 39, scope: !192, inlinedAt: !530)
!565 = !DILocation(line: 168, column: 50, scope: !192, inlinedAt: !530)
!566 = !DILocation(line: 168, column: 19, scope: !192, inlinedAt: !530)
!567 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !530)
!568 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !530)
!569 = !DILocation(line: 169, column: 24, scope: !192, inlinedAt: !530)
!570 = !DILocation(line: 169, column: 35, scope: !192, inlinedAt: !530)
!571 = !DILocation(line: 169, column: 28, scope: !192, inlinedAt: !530)
!572 = !DILocation(line: 169, column: 46, scope: !192, inlinedAt: !530)
!573 = !DILocation(line: 169, column: 39, scope: !192, inlinedAt: !530)
!574 = !DILocation(line: 169, column: 50, scope: !192, inlinedAt: !530)
!575 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !530)
!576 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !530)
!577 = !DILocation(line: 170, column: 24, scope: !192, inlinedAt: !530)
!578 = !DILocation(line: 170, column: 35, scope: !192, inlinedAt: !530)
!579 = !DILocation(line: 170, column: 28, scope: !192, inlinedAt: !530)
!580 = !DILocation(line: 170, column: 46, scope: !192, inlinedAt: !530)
!581 = !DILocation(line: 170, column: 39, scope: !192, inlinedAt: !530)
!582 = !DILocation(line: 170, column: 50, scope: !192, inlinedAt: !530)
!583 = !DILocation(line: 170, column: 19, scope: !192, inlinedAt: !530)
!584 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !530)
!585 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !530)
!586 = !DILocation(line: 287, column: 7, scope: !522, inlinedAt: !180)
!587 = !DILocation(line: 289, column: 20, scope: !522, inlinedAt: !180)
!588 = !DILocation(line: 289, column: 15, scope: !522, inlinedAt: !180)
!589 = !DILocation(line: 289, column: 29, scope: !522, inlinedAt: !180)
!590 = !DILocation(line: 289, column: 27, scope: !522, inlinedAt: !180)
!591 = !DILocation(line: 289, column: 7, scope: !522, inlinedAt: !180)
!592 = !DILocation(line: 411, column: 3, scope: !100)
!593 = !DILocation(line: 413, column: 15, scope: !594)
!594 = distinct !DILexicalBlock(scope: !100, file: !2, line: 412, column: 3)
!595 = !DILocation(line: 415, column: 11, scope: !594)
!596 = !DILocalVariable(name: "order", arg: 1, scope: !597, file: !2, line: 36, type: !38)
!597 = distinct !DISubprogram(name: "ceer", scope: !2, file: !2, line: 36, type: !598, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!84, !38, !84, !84, !38}
!600 = !{!596, !601, !602, !603, !604, !605, !606, !607}
!601 = !DILocalVariable(name: "qq", arg: 2, scope: !597, file: !2, line: 36, type: !84)
!602 = !DILocalVariable(name: "aa", arg: 3, scope: !597, file: !2, line: 36, type: !84)
!603 = !DILocalVariable(name: "nterms", arg: 4, scope: !597, file: !2, line: 36, type: !38)
!604 = !DILocalVariable(name: "term", scope: !597, file: !2, line: 39, type: !84)
!605 = !DILocalVariable(name: "term1", scope: !597, file: !2, line: 39, type: !84)
!606 = !DILocalVariable(name: "ii", scope: !597, file: !2, line: 40, type: !38)
!607 = !DILocalVariable(name: "n1", scope: !597, file: !2, line: 40, type: !38)
!608 = !DILocation(line: 0, scope: !597, inlinedAt: !609)
!609 = distinct !DILocation(line: 416, column: 17, scope: !610)
!610 = distinct !DILexicalBlock(scope: !594, file: !2, line: 415, column: 11)
!611 = !DILocation(line: 43, column: 7, scope: !597, inlinedAt: !609)
!612 = !DILocation(line: 47, column: 23, scope: !613, inlinedAt: !609)
!613 = distinct !DILexicalBlock(scope: !614, file: !2, line: 46, column: 3)
!614 = distinct !DILexicalBlock(scope: !597, file: !2, line: 43, column: 7)
!615 = !DILocation(line: 49, column: 11, scope: !613, inlinedAt: !609)
!616 = !DILocation(line: 53, column: 11, scope: !617, inlinedAt: !609)
!617 = distinct !DILexicalBlock(scope: !618, file: !2, line: 53, column: 11)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 50, column: 7)
!619 = distinct !DILexicalBlock(scope: !613, file: !2, line: 49, column: 11)
!620 = !DILocation(line: 54, column: 41, scope: !621, inlinedAt: !609)
!621 = distinct !DILexicalBlock(scope: !617, file: !2, line: 53, column: 11)
!622 = !DILocation(line: 54, column: 38, scope: !621, inlinedAt: !609)
!623 = !DILocation(line: 54, column: 37, scope: !621, inlinedAt: !609)
!624 = !DILocation(line: 54, column: 44, scope: !621, inlinedAt: !609)
!625 = !DILocation(line: 54, column: 32, scope: !621, inlinedAt: !609)
!626 = !DILocation(line: 54, column: 52, scope: !621, inlinedAt: !609)
!627 = !DILocation(line: 54, column: 27, scope: !621, inlinedAt: !609)
!628 = distinct !{!628, !616, !629, !630}
!629 = !DILocation(line: 54, column: 58, scope: !617, inlinedAt: !609)
!630 = !{!"llvm.loop.mustprogress"}
!631 = !DILocation(line: 62, column: 3, scope: !632, inlinedAt: !609)
!632 = distinct !DILexicalBlock(scope: !597, file: !2, line: 62, column: 3)
!633 = !DILocation(line: 0, scope: !614, inlinedAt: !609)
!634 = !DILocation(line: 64, column: 36, scope: !635, inlinedAt: !609)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 62, column: 3)
!636 = !DILocation(line: 64, column: 28, scope: !635, inlinedAt: !609)
!637 = !DILocation(line: 64, column: 27, scope: !635, inlinedAt: !609)
!638 = !DILocation(line: 64, column: 22, scope: !635, inlinedAt: !609)
!639 = !DILocation(line: 64, column: 42, scope: !635, inlinedAt: !609)
!640 = !DILocation(line: 64, column: 13, scope: !635, inlinedAt: !609)
!641 = !DILocation(line: 64, column: 71, scope: !635, inlinedAt: !609)
!642 = !DILocation(line: 63, column: 20, scope: !635, inlinedAt: !609)
!643 = !DILocation(line: 62, column: 27, scope: !635, inlinedAt: !609)
!644 = !DILocation(line: 62, column: 16, scope: !635, inlinedAt: !609)
!645 = distinct !{!645, !631, !646, !630}
!646 = !DILocation(line: 64, column: 78, scope: !632, inlinedAt: !609)
!647 = !DILocation(line: 66, column: 7, scope: !597, inlinedAt: !609)
!648 = !DILocation(line: 416, column: 11, scope: !610)
!649 = !DILocalVariable(name: "order", arg: 1, scope: !650, file: !2, line: 73, type: !38)
!650 = distinct !DISubprogram(name: "ceor", scope: !2, file: !2, line: 73, type: !598, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !651)
!651 = !{!649, !652, !653, !654, !655, !656, !657, !658}
!652 = !DILocalVariable(name: "qq", arg: 2, scope: !650, file: !2, line: 73, type: !84)
!653 = !DILocalVariable(name: "aa", arg: 3, scope: !650, file: !2, line: 73, type: !84)
!654 = !DILocalVariable(name: "nterms", arg: 4, scope: !650, file: !2, line: 73, type: !38)
!655 = !DILocalVariable(name: "term", scope: !650, file: !2, line: 75, type: !84)
!656 = !DILocalVariable(name: "term1", scope: !650, file: !2, line: 75, type: !84)
!657 = !DILocalVariable(name: "ii", scope: !650, file: !2, line: 76, type: !38)
!658 = !DILocalVariable(name: "n1", scope: !650, file: !2, line: 76, type: !38)
!659 = !DILocation(line: 0, scope: !650, inlinedAt: !660)
!660 = distinct !DILocation(line: 418, column: 17, scope: !610)
!661 = !DILocation(line: 81, column: 3, scope: !662, inlinedAt: !660)
!662 = distinct !DILexicalBlock(scope: !650, file: !2, line: 81, column: 3)
!663 = !DILocation(line: 82, column: 31, scope: !664, inlinedAt: !660)
!664 = distinct !DILexicalBlock(scope: !662, file: !2, line: 81, column: 3)
!665 = !DILocation(line: 82, column: 30, scope: !664, inlinedAt: !660)
!666 = !DILocation(line: 82, column: 34, scope: !664, inlinedAt: !660)
!667 = !DILocation(line: 82, column: 40, scope: !664, inlinedAt: !660)
!668 = !DILocation(line: 82, column: 24, scope: !664, inlinedAt: !660)
!669 = !DILocation(line: 82, column: 56, scope: !664, inlinedAt: !660)
!670 = !DILocation(line: 82, column: 19, scope: !664, inlinedAt: !660)
!671 = !DILocation(line: 86, column: 3, scope: !672, inlinedAt: !660)
!672 = distinct !DILexicalBlock(scope: !650, file: !2, line: 86, column: 3)
!673 = !DILocation(line: 81, column: 23, scope: !664, inlinedAt: !660)
!674 = distinct !{!674, !661, !675, !630}
!675 = !DILocation(line: 82, column: 62, scope: !662, inlinedAt: !660)
!676 = !DILocation(line: 88, column: 36, scope: !677, inlinedAt: !660)
!677 = distinct !DILexicalBlock(scope: !672, file: !2, line: 86, column: 3)
!678 = !DILocation(line: 88, column: 28, scope: !677, inlinedAt: !660)
!679 = !DILocation(line: 88, column: 27, scope: !677, inlinedAt: !660)
!680 = !DILocation(line: 88, column: 22, scope: !677, inlinedAt: !660)
!681 = !DILocation(line: 88, column: 42, scope: !677, inlinedAt: !660)
!682 = !DILocation(line: 88, column: 13, scope: !677, inlinedAt: !660)
!683 = !DILocation(line: 88, column: 71, scope: !677, inlinedAt: !660)
!684 = !DILocation(line: 87, column: 20, scope: !677, inlinedAt: !660)
!685 = !DILocation(line: 86, column: 27, scope: !677, inlinedAt: !660)
!686 = !DILocation(line: 86, column: 16, scope: !677, inlinedAt: !660)
!687 = distinct !{!687, !671, !688, !630}
!688 = !DILocation(line: 88, column: 78, scope: !672, inlinedAt: !660)
!689 = !DILocation(line: 0, scope: !610)
!690 = !DILocation(line: 420, column: 7, scope: !594)
!691 = !DILocation(line: 0, scope: !594)
!692 = !DILocation(line: 422, column: 15, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 421, column: 7)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 420, column: 7)
!695 = distinct !DILexicalBlock(scope: !594, file: !2, line: 420, column: 7)
!696 = !DILocation(line: 0, scope: !597, inlinedAt: !697)
!697 = distinct !DILocation(line: 423, column: 20, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !2, line: 422, column: 15)
!699 = !DILocation(line: 43, column: 7, scope: !597, inlinedAt: !697)
!700 = !DILocation(line: 47, column: 23, scope: !613, inlinedAt: !697)
!701 = !DILocation(line: 49, column: 11, scope: !613, inlinedAt: !697)
!702 = !DILocation(line: 53, column: 11, scope: !617, inlinedAt: !697)
!703 = !DILocation(line: 54, column: 41, scope: !621, inlinedAt: !697)
!704 = !DILocation(line: 54, column: 38, scope: !621, inlinedAt: !697)
!705 = !DILocation(line: 54, column: 37, scope: !621, inlinedAt: !697)
!706 = !DILocation(line: 54, column: 44, scope: !621, inlinedAt: !697)
!707 = !DILocation(line: 54, column: 32, scope: !621, inlinedAt: !697)
!708 = !DILocation(line: 54, column: 52, scope: !621, inlinedAt: !697)
!709 = !DILocation(line: 54, column: 27, scope: !621, inlinedAt: !697)
!710 = distinct !{!710, !702, !711, !630}
!711 = !DILocation(line: 54, column: 58, scope: !617, inlinedAt: !697)
!712 = !DILocation(line: 62, column: 3, scope: !632, inlinedAt: !697)
!713 = !DILocation(line: 0, scope: !614, inlinedAt: !697)
!714 = !DILocation(line: 64, column: 36, scope: !635, inlinedAt: !697)
!715 = !DILocation(line: 64, column: 28, scope: !635, inlinedAt: !697)
!716 = !DILocation(line: 64, column: 27, scope: !635, inlinedAt: !697)
!717 = !DILocation(line: 64, column: 22, scope: !635, inlinedAt: !697)
!718 = !DILocation(line: 64, column: 42, scope: !635, inlinedAt: !697)
!719 = !DILocation(line: 64, column: 13, scope: !635, inlinedAt: !697)
!720 = !DILocation(line: 64, column: 71, scope: !635, inlinedAt: !697)
!721 = !DILocation(line: 63, column: 20, scope: !635, inlinedAt: !697)
!722 = !DILocation(line: 62, column: 27, scope: !635, inlinedAt: !697)
!723 = !DILocation(line: 62, column: 16, scope: !635, inlinedAt: !697)
!724 = distinct !{!724, !712, !725, !630}
!725 = !DILocation(line: 64, column: 78, scope: !632, inlinedAt: !697)
!726 = !DILocation(line: 66, column: 7, scope: !597, inlinedAt: !697)
!727 = !DILocation(line: 423, column: 15, scope: !698)
!728 = !DILocation(line: 0, scope: !650, inlinedAt: !729)
!729 = distinct !DILocation(line: 425, column: 20, scope: !698)
!730 = !DILocation(line: 81, column: 3, scope: !662, inlinedAt: !729)
!731 = !DILocation(line: 82, column: 31, scope: !664, inlinedAt: !729)
!732 = !DILocation(line: 82, column: 30, scope: !664, inlinedAt: !729)
!733 = !DILocation(line: 82, column: 34, scope: !664, inlinedAt: !729)
!734 = !DILocation(line: 82, column: 40, scope: !664, inlinedAt: !729)
!735 = !DILocation(line: 82, column: 24, scope: !664, inlinedAt: !729)
!736 = !DILocation(line: 82, column: 56, scope: !664, inlinedAt: !729)
!737 = !DILocation(line: 82, column: 19, scope: !664, inlinedAt: !729)
!738 = !DILocation(line: 86, column: 3, scope: !672, inlinedAt: !729)
!739 = !DILocation(line: 81, column: 23, scope: !664, inlinedAt: !729)
!740 = distinct !{!740, !730, !741, !630}
!741 = !DILocation(line: 82, column: 62, scope: !662, inlinedAt: !729)
!742 = !DILocation(line: 88, column: 36, scope: !677, inlinedAt: !729)
!743 = !DILocation(line: 88, column: 28, scope: !677, inlinedAt: !729)
!744 = !DILocation(line: 88, column: 27, scope: !677, inlinedAt: !729)
!745 = !DILocation(line: 88, column: 22, scope: !677, inlinedAt: !729)
!746 = !DILocation(line: 88, column: 42, scope: !677, inlinedAt: !729)
!747 = !DILocation(line: 88, column: 13, scope: !677, inlinedAt: !729)
!748 = !DILocation(line: 88, column: 71, scope: !677, inlinedAt: !729)
!749 = !DILocation(line: 87, column: 20, scope: !677, inlinedAt: !729)
!750 = !DILocation(line: 86, column: 27, scope: !677, inlinedAt: !729)
!751 = !DILocation(line: 86, column: 16, scope: !677, inlinedAt: !729)
!752 = distinct !{!752, !738, !753, !630}
!753 = !DILocation(line: 88, column: 78, scope: !672, inlinedAt: !729)
!754 = !DILocation(line: 0, scope: !698)
!755 = !DILocation(line: 430, column: 18, scope: !756)
!756 = distinct !DILexicalBlock(scope: !693, file: !2, line: 430, column: 15)
!757 = !DILocation(line: 430, column: 15, scope: !693)
!758 = !DILocation(line: 435, column: 21, scope: !693)
!759 = !DILocation(line: 435, column: 31, scope: !693)
!760 = !DILocation(line: 435, column: 26, scope: !693)
!761 = !DILocation(line: 435, column: 37, scope: !693)
!762 = !DILocation(line: 435, column: 14, scope: !693)
!763 = !DILocation(line: 436, column: 26, scope: !693)
!764 = !DILocation(line: 436, column: 18, scope: !693)
!765 = !DILocation(line: 437, column: 20, scope: !766)
!766 = distinct !DILexicalBlock(scope: !693, file: !2, line: 437, column: 15)
!767 = !DILocation(line: 437, column: 15, scope: !693)
!768 = !DILocation(line: 448, column: 13, scope: !693)
!769 = !DILocation(line: 442, column: 18, scope: !770)
!770 = distinct !DILexicalBlock(scope: !693, file: !2, line: 442, column: 15)
!771 = !DILocation(line: 442, column: 15, scope: !693)
!772 = distinct !{!772, !773, !774}
!773 = !DILocation(line: 420, column: 7, scope: !695)
!774 = !DILocation(line: 449, column: 7, scope: !695)
!775 = !DILocation(line: 453, column: 19, scope: !776)
!776 = distinct !DILexicalBlock(scope: !594, file: !2, line: 453, column: 11)
!777 = !DILocation(line: 453, column: 11, scope: !776)
!778 = !DILocation(line: 453, column: 30, scope: !776)
!779 = !DILocation(line: 453, column: 63, scope: !776)
!780 = !DILocation(line: 456, column: 18, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !2, line: 455, column: 7)
!782 = !DILocation(line: 457, column: 23, scope: !783)
!783 = distinct !DILexicalBlock(scope: !781, file: !2, line: 457, column: 15)
!784 = !DILocation(line: 457, column: 15, scope: !781)
!785 = !DILocation(line: 0, scope: !693)
!786 = !DILocation(line: 459, column: 27, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !2, line: 458, column: 11)
!788 = !DILocation(line: 483, column: 15, scope: !100)
!789 = !DILocation(line: 489, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 489, column: 7)
!791 = distinct !DILexicalBlock(scope: !792, file: !2, line: 488, column: 3)
!792 = distinct !DILexicalBlock(scope: !100, file: !2, line: 487, column: 7)
!793 = !DILocation(line: 462, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !781, file: !2, line: 462, column: 15)
!795 = !DILocation(line: 0, scope: !794)
!796 = !DILocation(line: 474, column: 24, scope: !781)
!797 = !DILocation(line: 474, column: 27, scope: !781)
!798 = !DILocation(line: 474, column: 31, scope: !781)
!799 = !DILocation(line: 474, column: 30, scope: !781)
!800 = !DILocation(line: 474, column: 21, scope: !781)
!801 = !DILocation(line: 487, column: 7, scope: !100)
!802 = !DILocation(line: 493, column: 1, scope: !100)
!803 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !2, file: !2, line: 496, type: !101, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!805 = !DILocalVariable(name: "order", arg: 1, scope: !803, file: !2, line: 496, type: !38)
!806 = !DILocalVariable(name: "qq", arg: 2, scope: !803, file: !2, line: 496, type: !84)
!807 = !DILocalVariable(name: "result", arg: 3, scope: !803, file: !2, line: 496, type: !103)
!808 = !DILocalVariable(name: "even_odd", scope: !803, file: !2, line: 498, type: !38)
!809 = !DILocalVariable(name: "nterms", scope: !803, file: !2, line: 498, type: !38)
!810 = !DILocalVariable(name: "ii", scope: !803, file: !2, line: 498, type: !38)
!811 = !DILocalVariable(name: "counter", scope: !803, file: !2, line: 498, type: !38)
!812 = !DILocalVariable(name: "maxcount", scope: !803, file: !2, line: 498, type: !38)
!813 = !DILocalVariable(name: "dir", scope: !803, file: !2, line: 499, type: !38)
!814 = !DILocalVariable(name: "a1", scope: !803, file: !2, line: 500, type: !84)
!815 = !DILocalVariable(name: "a2", scope: !803, file: !2, line: 500, type: !84)
!816 = !DILocalVariable(name: "fa", scope: !803, file: !2, line: 500, type: !84)
!817 = !DILocalVariable(name: "fa1", scope: !803, file: !2, line: 500, type: !84)
!818 = !DILocalVariable(name: "dela", scope: !803, file: !2, line: 500, type: !84)
!819 = !DILocalVariable(name: "aa_orig", scope: !803, file: !2, line: 500, type: !84)
!820 = !DILocalVariable(name: "da", scope: !803, file: !2, line: 500, type: !84)
!821 = !DILocalVariable(name: "aa", scope: !803, file: !2, line: 500, type: !84)
!822 = !DILocalVariable(name: "aa_approx", scope: !803, file: !2, line: 501, type: !84)
!823 = !DILocation(line: 0, scope: !803)
!824 = !DILocation(line: 509, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !803, file: !2, line: 509, column: 7)
!826 = !DILocation(line: 509, column: 7, scope: !803)
!827 = !DILocation(line: 516, column: 10, scope: !828)
!828 = distinct !DILexicalBlock(scope: !803, file: !2, line: 516, column: 7)
!829 = !DILocation(line: 516, column: 7, scope: !803)
!830 = !DILocation(line: 511, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 511, column: 7)
!832 = distinct !DILexicalBlock(scope: !825, file: !2, line: 510, column: 3)
!833 = !DILocation(line: 518, column: 26, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !2, line: 517, column: 3)
!835 = !DILocation(line: 518, column: 21, scope: !834)
!836 = !DILocation(line: 518, column: 19, scope: !834)
!837 = !DILocation(line: 519, column: 15, scope: !834)
!838 = !DILocation(line: 519, column: 19, scope: !834)
!839 = !DILocation(line: 520, column: 7, scope: !834)
!840 = !DILocation(line: 505, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !803, file: !2, line: 505, column: 7)
!842 = !DILocation(line: 525, column: 7, scope: !803)
!843 = !DILocation(line: 527, column: 10, scope: !844)
!844 = distinct !DILexicalBlock(scope: !803, file: !2, line: 527, column: 7)
!845 = !DILocation(line: 527, column: 7, scope: !803)
!846 = !DILocation(line: 529, column: 20, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !2, line: 529, column: 11)
!848 = distinct !DILexicalBlock(scope: !844, file: !2, line: 528, column: 3)
!849 = !DILocation(line: 0, scope: !847)
!850 = !DILocation(line: 529, column: 11, scope: !848)
!851 = !DILocation(line: 532, column: 18, scope: !847)
!852 = !DILocation(line: 532, column: 11, scope: !847)
!853 = !DILocalVariable(name: "order", arg: 1, scope: !854, file: !2, line: 293, type: !38)
!854 = distinct !DISubprogram(name: "approx_s", scope: !2, file: !2, line: 293, type: !162, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !855)
!855 = !{!853, !856, !857, !858, !859, !860, !861, !867, !868, !869}
!856 = !DILocalVariable(name: "qq", arg: 2, scope: !854, file: !2, line: 293, type: !84)
!857 = !DILocalVariable(name: "approx", scope: !854, file: !2, line: 295, type: !84)
!858 = !DILocalVariable(name: "c0", scope: !854, file: !2, line: 296, type: !84)
!859 = !DILocalVariable(name: "c1", scope: !854, file: !2, line: 296, type: !84)
!860 = !DILocalVariable(name: "c2", scope: !854, file: !2, line: 296, type: !84)
!861 = !DILocalVariable(name: "n2", scope: !862, file: !2, line: 337, type: !84)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 335, column: 15)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 334, column: 19)
!864 = distinct !DILexicalBlock(scope: !865, file: !2, line: 333, column: 11)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 332, column: 15)
!866 = distinct !DILexicalBlock(scope: !854, file: !2, line: 305, column: 3)
!867 = !DILocalVariable(name: "n22", scope: !862, file: !2, line: 338, type: !84)
!868 = !DILocalVariable(name: "q2", scope: !862, file: !2, line: 339, type: !84)
!869 = !DILocalVariable(name: "q4", scope: !862, file: !2, line: 340, type: !84)
!870 = !DILocation(line: 0, scope: !854, inlinedAt: !871)
!871 = distinct !DILocation(line: 536, column: 15, scope: !803)
!872 = !DILocation(line: 304, column: 3, scope: !854, inlinedAt: !871)
!873 = !DILocation(line: 307, column: 18, scope: !874, inlinedAt: !871)
!874 = distinct !DILexicalBlock(scope: !866, file: !2, line: 307, column: 15)
!875 = !DILocation(line: 307, column: 15, scope: !866, inlinedAt: !871)
!876 = !DILocation(line: 308, column: 43, scope: !874, inlinedAt: !871)
!877 = !DILocation(line: 308, column: 46, scope: !874, inlinedAt: !871)
!878 = !DILocation(line: 308, column: 54, scope: !874, inlinedAt: !871)
!879 = !DILocation(line: 308, column: 50, scope: !874, inlinedAt: !871)
!880 = !DILocation(line: 308, column: 58, scope: !874, inlinedAt: !871)
!881 = !DILocation(line: 308, column: 37, scope: !874, inlinedAt: !871)
!882 = !DILocation(line: 308, column: 35, scope: !874, inlinedAt: !871)
!883 = !DILocation(line: 308, column: 30, scope: !874, inlinedAt: !871)
!884 = !DILocation(line: 308, column: 25, scope: !874, inlinedAt: !871)
!885 = !DILocation(line: 308, column: 15, scope: !874, inlinedAt: !871)
!886 = !DILocation(line: 0, scope: !192, inlinedAt: !887)
!887 = distinct !DILocation(line: 310, column: 22, scope: !874, inlinedAt: !871)
!888 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !887)
!889 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !887)
!890 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !887)
!891 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !887)
!892 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !887)
!893 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !887)
!894 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !887)
!895 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !887)
!896 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !887)
!897 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !887)
!898 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !887)
!899 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !887)
!900 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !887)
!901 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !887)
!902 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !887)
!903 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !887)
!904 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !887)
!905 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !887)
!906 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !887)
!907 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !887)
!908 = !DILocation(line: 310, column: 15, scope: !874, inlinedAt: !871)
!909 = !DILocation(line: 314, column: 18, scope: !910, inlinedAt: !871)
!910 = distinct !DILexicalBlock(scope: !866, file: !2, line: 314, column: 15)
!911 = !DILocation(line: 314, column: 15, scope: !866, inlinedAt: !871)
!912 = !DILocation(line: 315, column: 40, scope: !910, inlinedAt: !871)
!913 = !DILocation(line: 315, column: 36, scope: !910, inlinedAt: !871)
!914 = !DILocation(line: 315, column: 28, scope: !910, inlinedAt: !871)
!915 = !DILocation(line: 315, column: 26, scope: !910, inlinedAt: !871)
!916 = !DILocation(line: 315, column: 15, scope: !910, inlinedAt: !871)
!917 = !DILocation(line: 0, scope: !192, inlinedAt: !918)
!918 = distinct !DILocation(line: 317, column: 22, scope: !910, inlinedAt: !871)
!919 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !918)
!920 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !918)
!921 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !918)
!922 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !918)
!923 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !918)
!924 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !918)
!925 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !918)
!926 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !918)
!927 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !918)
!928 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !918)
!929 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !918)
!930 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !918)
!931 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !918)
!932 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !918)
!933 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !918)
!934 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !918)
!935 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !918)
!936 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !918)
!937 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !918)
!938 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !918)
!939 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !918)
!940 = !DILocation(line: 317, column: 15, scope: !910, inlinedAt: !871)
!941 = !DILocation(line: 321, column: 18, scope: !942, inlinedAt: !871)
!942 = distinct !DILexicalBlock(scope: !866, file: !2, line: 321, column: 15)
!943 = !DILocation(line: 321, column: 15, scope: !866, inlinedAt: !871)
!944 = !DILocation(line: 323, column: 23, scope: !945, inlinedAt: !871)
!945 = distinct !DILexicalBlock(scope: !942, file: !2, line: 322, column: 11)
!946 = !DILocation(line: 324, column: 29, scope: !945, inlinedAt: !871)
!947 = !DILocation(line: 324, column: 25, scope: !945, inlinedAt: !871)
!948 = !DILocation(line: 324, column: 36, scope: !945, inlinedAt: !871)
!949 = !DILocation(line: 324, column: 39, scope: !945, inlinedAt: !871)
!950 = !DILocation(line: 324, column: 33, scope: !945, inlinedAt: !871)
!951 = !DILocation(line: 325, column: 22, scope: !945, inlinedAt: !871)
!952 = !DILocation(line: 325, column: 29, scope: !945, inlinedAt: !871)
!953 = !DILocation(line: 325, column: 25, scope: !945, inlinedAt: !871)
!954 = !DILocation(line: 0, scope: !453, inlinedAt: !955)
!955 = distinct !DILocation(line: 361, column: 12, scope: !854, inlinedAt: !871)
!956 = !DILocation(line: 182, column: 10, scope: !453, inlinedAt: !955)
!957 = !DILocation(line: 182, column: 18, scope: !453, inlinedAt: !955)
!958 = !DILocation(line: 182, column: 14, scope: !453, inlinedAt: !955)
!959 = !DILocation(line: 182, column: 22, scope: !453, inlinedAt: !955)
!960 = !DILocation(line: 183, column: 10, scope: !453, inlinedAt: !955)
!961 = !DILocation(line: 183, column: 13, scope: !453, inlinedAt: !955)
!962 = !DILocation(line: 183, column: 21, scope: !453, inlinedAt: !955)
!963 = !DILocation(line: 183, column: 17, scope: !453, inlinedAt: !955)
!964 = !DILocation(line: 183, column: 28, scope: !453, inlinedAt: !955)
!965 = !DILocation(line: 183, column: 31, scope: !453, inlinedAt: !955)
!966 = !DILocation(line: 183, column: 34, scope: !453, inlinedAt: !955)
!967 = !DILocation(line: 183, column: 25, scope: !453, inlinedAt: !955)
!968 = !DILocation(line: 183, column: 38, scope: !453, inlinedAt: !955)
!969 = !DILocation(line: 184, column: 10, scope: !453, inlinedAt: !955)
!970 = !DILocation(line: 184, column: 13, scope: !453, inlinedAt: !955)
!971 = !DILocation(line: 184, column: 21, scope: !453, inlinedAt: !955)
!972 = !DILocation(line: 184, column: 17, scope: !453, inlinedAt: !955)
!973 = !DILocation(line: 186, column: 10, scope: !466, inlinedAt: !955)
!974 = !DILocation(line: 186, column: 7, scope: !453, inlinedAt: !955)
!975 = !DILocation(line: 188, column: 24, scope: !465, inlinedAt: !955)
!976 = !DILocation(line: 188, column: 22, scope: !465, inlinedAt: !955)
!977 = !DILocation(line: 0, scope: !465, inlinedAt: !955)
!978 = !DILocation(line: 189, column: 12, scope: !465, inlinedAt: !955)
!979 = !DILocation(line: 189, column: 20, scope: !465, inlinedAt: !955)
!980 = !DILocation(line: 189, column: 24, scope: !465, inlinedAt: !955)
!981 = !DILocation(line: 189, column: 23, scope: !465, inlinedAt: !955)
!982 = !DILocation(line: 190, column: 17, scope: !465, inlinedAt: !955)
!983 = !DILocation(line: 190, column: 15, scope: !465, inlinedAt: !955)
!984 = !DILocation(line: 191, column: 12, scope: !465, inlinedAt: !955)
!985 = !DILocation(line: 191, column: 20, scope: !465, inlinedAt: !955)
!986 = !DILocation(line: 191, column: 24, scope: !465, inlinedAt: !955)
!987 = !DILocation(line: 191, column: 23, scope: !465, inlinedAt: !955)
!988 = !DILocation(line: 192, column: 3, scope: !465, inlinedAt: !955)
!989 = !DILocation(line: 195, column: 35, scope: !468, inlinedAt: !955)
!990 = !DILocation(line: 195, column: 38, scope: !468, inlinedAt: !955)
!991 = !DILocation(line: 195, column: 41, scope: !468, inlinedAt: !955)
!992 = !DILocation(line: 195, column: 30, scope: !468, inlinedAt: !955)
!993 = !DILocation(line: 195, column: 29, scope: !468, inlinedAt: !955)
!994 = !DILocation(line: 195, column: 22, scope: !468, inlinedAt: !955)
!995 = !DILocation(line: 0, scope: !468, inlinedAt: !955)
!996 = !DILocation(line: 196, column: 14, scope: !468, inlinedAt: !955)
!997 = !DILocation(line: 196, column: 13, scope: !468, inlinedAt: !955)
!998 = !DILocation(line: 196, column: 35, scope: !468, inlinedAt: !955)
!999 = !DILocation(line: 196, column: 44, scope: !468, inlinedAt: !955)
!1000 = !DILocation(line: 196, column: 24, scope: !468, inlinedAt: !955)
!1001 = !DILocation(line: 196, column: 23, scope: !468, inlinedAt: !955)
!1002 = !DILocation(line: 0, scope: !466, inlinedAt: !955)
!1003 = !DILocation(line: 200, column: 14, scope: !453, inlinedAt: !955)
!1004 = !DILocation(line: 200, column: 23, scope: !453, inlinedAt: !955)
!1005 = !DILocation(line: 200, column: 19, scope: !453, inlinedAt: !955)
!1006 = !DILocation(line: 363, column: 15, scope: !1007, inlinedAt: !871)
!1007 = distinct !DILexicalBlock(scope: !854, file: !2, line: 363, column: 8)
!1008 = !DILocation(line: 363, column: 19, scope: !1007, inlinedAt: !871)
!1009 = !DILocation(line: 0, scope: !192, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 328, column: 22, scope: !942, inlinedAt: !871)
!1011 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !1010)
!1012 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !1010)
!1013 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !1010)
!1014 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !1010)
!1015 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !1010)
!1016 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !1010)
!1017 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !1010)
!1018 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !1010)
!1019 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !1010)
!1020 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !1010)
!1021 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !1010)
!1022 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !1010)
!1023 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !1010)
!1024 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !1010)
!1025 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !1010)
!1026 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !1010)
!1027 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !1010)
!1028 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !1010)
!1029 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !1010)
!1030 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !1010)
!1031 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !1010)
!1032 = !DILocation(line: 328, column: 15, scope: !942, inlinedAt: !871)
!1033 = !DILocation(line: 332, column: 21, scope: !865, inlinedAt: !871)
!1034 = !DILocation(line: 332, column: 15, scope: !866, inlinedAt: !871)
!1035 = !DILocation(line: 334, column: 23, scope: !863, inlinedAt: !871)
!1036 = !DILocation(line: 334, column: 22, scope: !863, inlinedAt: !871)
!1037 = !DILocation(line: 334, column: 33, scope: !863, inlinedAt: !871)
!1038 = !DILocation(line: 334, column: 32, scope: !863, inlinedAt: !871)
!1039 = !DILocation(line: 334, column: 29, scope: !863, inlinedAt: !871)
!1040 = !DILocation(line: 334, column: 19, scope: !864, inlinedAt: !871)
!1041 = !DILocation(line: 337, column: 45, scope: !862, inlinedAt: !871)
!1042 = !DILocation(line: 337, column: 31, scope: !862, inlinedAt: !871)
!1043 = !DILocation(line: 0, scope: !862, inlinedAt: !871)
!1044 = !DILocation(line: 338, column: 45, scope: !862, inlinedAt: !871)
!1045 = !DILocation(line: 338, column: 49, scope: !862, inlinedAt: !871)
!1046 = !DILocation(line: 339, column: 33, scope: !862, inlinedAt: !871)
!1047 = !DILocation(line: 340, column: 33, scope: !862, inlinedAt: !871)
!1048 = !DILocation(line: 341, column: 36, scope: !862, inlinedAt: !871)
!1049 = !DILocation(line: 341, column: 39, scope: !862, inlinedAt: !871)
!1050 = !DILocation(line: 341, column: 31, scope: !862, inlinedAt: !871)
!1051 = !DILocation(line: 342, column: 31, scope: !862, inlinedAt: !871)
!1052 = !DILocation(line: 342, column: 35, scope: !862, inlinedAt: !871)
!1053 = !DILocation(line: 342, column: 39, scope: !862, inlinedAt: !871)
!1054 = !DILocation(line: 342, column: 46, scope: !862, inlinedAt: !871)
!1055 = !DILocation(line: 342, column: 50, scope: !862, inlinedAt: !871)
!1056 = !DILocation(line: 342, column: 64, scope: !862, inlinedAt: !871)
!1057 = !DILocation(line: 342, column: 59, scope: !862, inlinedAt: !871)
!1058 = !DILocation(line: 342, column: 42, scope: !862, inlinedAt: !871)
!1059 = !DILocation(line: 342, column: 26, scope: !862, inlinedAt: !871)
!1060 = !DILocation(line: 343, column: 31, scope: !862, inlinedAt: !871)
!1061 = !DILocation(line: 343, column: 34, scope: !862, inlinedAt: !871)
!1062 = !DILocation(line: 343, column: 42, scope: !862, inlinedAt: !871)
!1063 = !DILocation(line: 343, column: 38, scope: !862, inlinedAt: !871)
!1064 = !DILocation(line: 343, column: 46, scope: !862, inlinedAt: !871)
!1065 = !DILocation(line: 343, column: 51, scope: !862, inlinedAt: !871)
!1066 = !DILocation(line: 343, column: 54, scope: !862, inlinedAt: !871)
!1067 = !DILocation(line: 344, column: 26, scope: !862, inlinedAt: !871)
!1068 = !DILocation(line: 344, column: 30, scope: !862, inlinedAt: !871)
!1069 = !DILocation(line: 344, column: 34, scope: !862, inlinedAt: !871)
!1070 = !DILocation(line: 344, column: 43, scope: !862, inlinedAt: !871)
!1071 = !DILocation(line: 344, column: 57, scope: !862, inlinedAt: !871)
!1072 = !DILocation(line: 344, column: 52, scope: !862, inlinedAt: !871)
!1073 = !DILocation(line: 343, column: 57, scope: !862, inlinedAt: !871)
!1074 = !DILocation(line: 343, column: 26, scope: !862, inlinedAt: !871)
!1075 = !DILocation(line: 345, column: 26, scope: !1076, inlinedAt: !871)
!1076 = distinct !DILexicalBlock(scope: !862, file: !2, line: 345, column: 23)
!1077 = !DILocation(line: 345, column: 37, scope: !1076, inlinedAt: !871)
!1078 = !DILocation(line: 345, column: 36, scope: !1076, inlinedAt: !871)
!1079 = !DILocation(line: 345, column: 33, scope: !1076, inlinedAt: !871)
!1080 = !DILocation(line: 345, column: 23, scope: !862, inlinedAt: !871)
!1081 = !DILocation(line: 347, column: 49, scope: !1082, inlinedAt: !871)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 346, column: 19)
!1083 = !DILocation(line: 347, column: 33, scope: !1082, inlinedAt: !871)
!1084 = !DILocation(line: 347, column: 30, scope: !1082, inlinedAt: !871)
!1085 = !DILocation(line: 348, column: 30, scope: !1082, inlinedAt: !871)
!1086 = !DILocation(line: 349, column: 19, scope: !1082, inlinedAt: !871)
!1087 = !DILocation(line: 0, scope: !192, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 352, column: 28, scope: !863, inlinedAt: !871)
!1089 = !DILocation(line: 152, column: 9, scope: !192, inlinedAt: !1088)
!1090 = !DILocation(line: 152, column: 16, scope: !192, inlinedAt: !1088)
!1091 = !DILocation(line: 152, column: 8, scope: !192, inlinedAt: !1088)
!1092 = !DILocation(line: 153, column: 10, scope: !192, inlinedAt: !1088)
!1093 = !DILocation(line: 154, column: 10, scope: !192, inlinedAt: !1088)
!1094 = !DILocation(line: 155, column: 10, scope: !192, inlinedAt: !1088)
!1095 = !DILocation(line: 157, column: 10, scope: !192, inlinedAt: !1088)
!1096 = !DILocation(line: 157, column: 9, scope: !192, inlinedAt: !1088)
!1097 = !DILocation(line: 158, column: 10, scope: !192, inlinedAt: !1088)
!1098 = !DILocation(line: 159, column: 11, scope: !192, inlinedAt: !1088)
!1099 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !1088)
!1100 = !DILocation(line: 161, column: 12, scope: !192, inlinedAt: !1088)
!1101 = !DILocation(line: 162, column: 12, scope: !192, inlinedAt: !1088)
!1102 = !DILocation(line: 165, column: 13, scope: !192, inlinedAt: !1088)
!1103 = !DILocation(line: 165, column: 21, scope: !192, inlinedAt: !1088)
!1104 = !DILocation(line: 165, column: 17, scope: !192, inlinedAt: !1088)
!1105 = !DILocation(line: 165, column: 37, scope: !192, inlinedAt: !1088)
!1106 = !DILocation(line: 165, column: 32, scope: !192, inlinedAt: !1088)
!1107 = !DILocation(line: 165, column: 25, scope: !192, inlinedAt: !1088)
!1108 = !DILocation(line: 166, column: 16, scope: !192, inlinedAt: !1088)
!1109 = !DILocation(line: 166, column: 50, scope: !192, inlinedAt: !1088)
!1110 = !DILocation(line: 166, column: 19, scope: !192, inlinedAt: !1088)
!1111 = !DILocation(line: 166, column: 58, scope: !192, inlinedAt: !1088)
!1112 = !DILocation(line: 166, column: 9, scope: !192, inlinedAt: !1088)
!1113 = !DILocation(line: 167, column: 35, scope: !192, inlinedAt: !1088)
!1114 = !DILocation(line: 167, column: 46, scope: !192, inlinedAt: !1088)
!1115 = !DILocation(line: 167, column: 39, scope: !192, inlinedAt: !1088)
!1116 = !DILocation(line: 167, column: 50, scope: !192, inlinedAt: !1088)
!1117 = !DILocation(line: 167, column: 16, scope: !192, inlinedAt: !1088)
!1118 = !DILocation(line: 167, column: 58, scope: !192, inlinedAt: !1088)
!1119 = !DILocation(line: 167, column: 9, scope: !192, inlinedAt: !1088)
!1120 = !DILocation(line: 168, column: 35, scope: !192, inlinedAt: !1088)
!1121 = !DILocation(line: 168, column: 46, scope: !192, inlinedAt: !1088)
!1122 = !DILocation(line: 168, column: 39, scope: !192, inlinedAt: !1088)
!1123 = !DILocation(line: 168, column: 50, scope: !192, inlinedAt: !1088)
!1124 = !DILocation(line: 168, column: 19, scope: !192, inlinedAt: !1088)
!1125 = !DILocation(line: 168, column: 58, scope: !192, inlinedAt: !1088)
!1126 = !DILocation(line: 168, column: 9, scope: !192, inlinedAt: !1088)
!1127 = !DILocation(line: 169, column: 24, scope: !192, inlinedAt: !1088)
!1128 = !DILocation(line: 169, column: 35, scope: !192, inlinedAt: !1088)
!1129 = !DILocation(line: 169, column: 28, scope: !192, inlinedAt: !1088)
!1130 = !DILocation(line: 169, column: 46, scope: !192, inlinedAt: !1088)
!1131 = !DILocation(line: 169, column: 39, scope: !192, inlinedAt: !1088)
!1132 = !DILocation(line: 169, column: 50, scope: !192, inlinedAt: !1088)
!1133 = !DILocation(line: 169, column: 58, scope: !192, inlinedAt: !1088)
!1134 = !DILocation(line: 169, column: 9, scope: !192, inlinedAt: !1088)
!1135 = !DILocation(line: 170, column: 24, scope: !192, inlinedAt: !1088)
!1136 = !DILocation(line: 170, column: 35, scope: !192, inlinedAt: !1088)
!1137 = !DILocation(line: 170, column: 28, scope: !192, inlinedAt: !1088)
!1138 = !DILocation(line: 170, column: 46, scope: !192, inlinedAt: !1088)
!1139 = !DILocation(line: 170, column: 39, scope: !192, inlinedAt: !1088)
!1140 = !DILocation(line: 170, column: 50, scope: !192, inlinedAt: !1088)
!1141 = !DILocation(line: 170, column: 19, scope: !192, inlinedAt: !1088)
!1142 = !DILocation(line: 170, column: 58, scope: !192, inlinedAt: !1088)
!1143 = !DILocation(line: 170, column: 9, scope: !192, inlinedAt: !1088)
!1144 = !DILocation(line: 357, column: 27, scope: !865, inlinedAt: !871)
!1145 = !DILocation(line: 357, column: 22, scope: !865, inlinedAt: !871)
!1146 = !DILocation(line: 357, column: 15, scope: !865, inlinedAt: !871)
!1147 = !DILocation(line: 363, column: 22, scope: !1007, inlinedAt: !871)
!1148 = !DILocation(line: 363, column: 31, scope: !1007, inlinedAt: !871)
!1149 = !DILocation(line: 363, column: 8, scope: !854, inlinedAt: !871)
!1150 = !DILocation(line: 364, column: 14, scope: !1007, inlinedAt: !871)
!1151 = !DILocation(line: 364, column: 7, scope: !1007, inlinedAt: !871)
!1152 = !DILocation(line: 366, column: 29, scope: !1007, inlinedAt: !871)
!1153 = !DILocation(line: 366, column: 27, scope: !1007, inlinedAt: !871)
!1154 = !DILocation(line: 366, column: 7, scope: !1007, inlinedAt: !871)
!1155 = !DILocation(line: 543, column: 3, scope: !803)
!1156 = !DILocation(line: 545, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !803, file: !2, line: 544, column: 3)
!1158 = !DILocation(line: 547, column: 11, scope: !1157)
!1159 = !DILocalVariable(name: "order", arg: 1, scope: !1160, file: !2, line: 94, type: !38)
!1160 = distinct !DISubprogram(name: "seer", scope: !2, file: !2, line: 94, type: !598, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1161)
!1161 = !{!1159, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1162 = !DILocalVariable(name: "qq", arg: 2, scope: !1160, file: !2, line: 94, type: !84)
!1163 = !DILocalVariable(name: "aa", arg: 3, scope: !1160, file: !2, line: 94, type: !84)
!1164 = !DILocalVariable(name: "nterms", arg: 4, scope: !1160, file: !2, line: 94, type: !38)
!1165 = !DILocalVariable(name: "term", scope: !1160, file: !2, line: 96, type: !84)
!1166 = !DILocalVariable(name: "term1", scope: !1160, file: !2, line: 96, type: !84)
!1167 = !DILocalVariable(name: "ii", scope: !1160, file: !2, line: 97, type: !38)
!1168 = !DILocalVariable(name: "n1", scope: !1160, file: !2, line: 97, type: !38)
!1169 = !DILocation(line: 0, scope: !1160, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 548, column: 17, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 547, column: 11)
!1172 = !DILocation(line: 102, column: 3, scope: !1173, inlinedAt: !1170)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 102, column: 3)
!1174 = !DILocation(line: 103, column: 34, scope: !1175, inlinedAt: !1170)
!1175 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 102, column: 3)
!1176 = !DILocation(line: 103, column: 30, scope: !1175, inlinedAt: !1170)
!1177 = !DILocation(line: 103, column: 29, scope: !1175, inlinedAt: !1170)
!1178 = !DILocation(line: 103, column: 38, scope: !1175, inlinedAt: !1170)
!1179 = !DILocation(line: 103, column: 24, scope: !1175, inlinedAt: !1170)
!1180 = !DILocation(line: 103, column: 48, scope: !1175, inlinedAt: !1170)
!1181 = !DILocation(line: 103, column: 19, scope: !1175, inlinedAt: !1170)
!1182 = !DILocation(line: 107, column: 3, scope: !1183, inlinedAt: !1170)
!1183 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 107, column: 3)
!1184 = distinct !{!1184, !1172, !1185, !630}
!1185 = !DILocation(line: 103, column: 54, scope: !1173, inlinedAt: !1170)
!1186 = !DILocation(line: 109, column: 36, scope: !1187, inlinedAt: !1170)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 107, column: 3)
!1188 = !DILocation(line: 109, column: 28, scope: !1187, inlinedAt: !1170)
!1189 = !DILocation(line: 109, column: 27, scope: !1187, inlinedAt: !1170)
!1190 = !DILocation(line: 109, column: 22, scope: !1187, inlinedAt: !1170)
!1191 = !DILocation(line: 109, column: 42, scope: !1187, inlinedAt: !1170)
!1192 = !DILocation(line: 109, column: 13, scope: !1187, inlinedAt: !1170)
!1193 = !DILocation(line: 109, column: 71, scope: !1187, inlinedAt: !1170)
!1194 = !DILocation(line: 108, column: 20, scope: !1187, inlinedAt: !1170)
!1195 = !DILocation(line: 107, column: 27, scope: !1187, inlinedAt: !1170)
!1196 = !DILocation(line: 107, column: 16, scope: !1187, inlinedAt: !1170)
!1197 = distinct !{!1197, !1182, !1198, !630}
!1198 = !DILocation(line: 109, column: 78, scope: !1183, inlinedAt: !1170)
!1199 = !DILocalVariable(name: "order", arg: 1, scope: !1200, file: !2, line: 115, type: !38)
!1200 = distinct !DISubprogram(name: "seor", scope: !2, file: !2, line: 115, type: !598, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1201)
!1201 = !{!1199, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1202 = !DILocalVariable(name: "qq", arg: 2, scope: !1200, file: !2, line: 115, type: !84)
!1203 = !DILocalVariable(name: "aa", arg: 3, scope: !1200, file: !2, line: 115, type: !84)
!1204 = !DILocalVariable(name: "nterms", arg: 4, scope: !1200, file: !2, line: 115, type: !38)
!1205 = !DILocalVariable(name: "term", scope: !1200, file: !2, line: 117, type: !84)
!1206 = !DILocalVariable(name: "term1", scope: !1200, file: !2, line: 117, type: !84)
!1207 = !DILocalVariable(name: "ii", scope: !1200, file: !2, line: 118, type: !38)
!1208 = !DILocalVariable(name: "n1", scope: !1200, file: !2, line: 118, type: !38)
!1209 = !DILocation(line: 0, scope: !1200, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 550, column: 17, scope: !1171)
!1211 = !DILocation(line: 123, column: 3, scope: !1212, inlinedAt: !1210)
!1212 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 123, column: 3)
!1213 = !DILocation(line: 124, column: 31, scope: !1214, inlinedAt: !1210)
!1214 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 123, column: 3)
!1215 = !DILocation(line: 124, column: 30, scope: !1214, inlinedAt: !1210)
!1216 = !DILocation(line: 124, column: 34, scope: !1214, inlinedAt: !1210)
!1217 = !DILocation(line: 124, column: 40, scope: !1214, inlinedAt: !1210)
!1218 = !DILocation(line: 124, column: 24, scope: !1214, inlinedAt: !1210)
!1219 = !DILocation(line: 124, column: 56, scope: !1214, inlinedAt: !1210)
!1220 = !DILocation(line: 124, column: 19, scope: !1214, inlinedAt: !1210)
!1221 = !DILocation(line: 128, column: 3, scope: !1222, inlinedAt: !1210)
!1222 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 128, column: 3)
!1223 = !DILocation(line: 123, column: 23, scope: !1214, inlinedAt: !1210)
!1224 = distinct !{!1224, !1211, !1225, !630}
!1225 = !DILocation(line: 124, column: 62, scope: !1212, inlinedAt: !1210)
!1226 = !DILocation(line: 130, column: 36, scope: !1227, inlinedAt: !1210)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 128, column: 3)
!1228 = !DILocation(line: 130, column: 28, scope: !1227, inlinedAt: !1210)
!1229 = !DILocation(line: 130, column: 27, scope: !1227, inlinedAt: !1210)
!1230 = !DILocation(line: 130, column: 22, scope: !1227, inlinedAt: !1210)
!1231 = !DILocation(line: 130, column: 42, scope: !1227, inlinedAt: !1210)
!1232 = !DILocation(line: 130, column: 13, scope: !1227, inlinedAt: !1210)
!1233 = !DILocation(line: 130, column: 71, scope: !1227, inlinedAt: !1210)
!1234 = !DILocation(line: 129, column: 20, scope: !1227, inlinedAt: !1210)
!1235 = !DILocation(line: 128, column: 27, scope: !1227, inlinedAt: !1210)
!1236 = !DILocation(line: 128, column: 16, scope: !1227, inlinedAt: !1210)
!1237 = distinct !{!1237, !1221, !1238, !630}
!1238 = !DILocation(line: 130, column: 78, scope: !1222, inlinedAt: !1210)
!1239 = !DILocation(line: 0, scope: !1171)
!1240 = !DILocation(line: 552, column: 7, scope: !1157)
!1241 = !DILocation(line: 0, scope: !1157)
!1242 = !DILocation(line: 554, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 553, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 552, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 552, column: 7)
!1246 = !DILocation(line: 0, scope: !1160, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 555, column: 20, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 554, column: 15)
!1249 = !DILocation(line: 102, column: 3, scope: !1173, inlinedAt: !1247)
!1250 = !DILocation(line: 103, column: 34, scope: !1175, inlinedAt: !1247)
!1251 = !DILocation(line: 103, column: 30, scope: !1175, inlinedAt: !1247)
!1252 = !DILocation(line: 103, column: 29, scope: !1175, inlinedAt: !1247)
!1253 = !DILocation(line: 103, column: 38, scope: !1175, inlinedAt: !1247)
!1254 = !DILocation(line: 103, column: 24, scope: !1175, inlinedAt: !1247)
!1255 = !DILocation(line: 103, column: 48, scope: !1175, inlinedAt: !1247)
!1256 = !DILocation(line: 103, column: 19, scope: !1175, inlinedAt: !1247)
!1257 = !DILocation(line: 107, column: 3, scope: !1183, inlinedAt: !1247)
!1258 = distinct !{!1258, !1249, !1259, !630}
!1259 = !DILocation(line: 103, column: 54, scope: !1173, inlinedAt: !1247)
!1260 = !DILocation(line: 109, column: 36, scope: !1187, inlinedAt: !1247)
!1261 = !DILocation(line: 109, column: 28, scope: !1187, inlinedAt: !1247)
!1262 = !DILocation(line: 109, column: 27, scope: !1187, inlinedAt: !1247)
!1263 = !DILocation(line: 109, column: 22, scope: !1187, inlinedAt: !1247)
!1264 = !DILocation(line: 109, column: 42, scope: !1187, inlinedAt: !1247)
!1265 = !DILocation(line: 109, column: 13, scope: !1187, inlinedAt: !1247)
!1266 = !DILocation(line: 109, column: 71, scope: !1187, inlinedAt: !1247)
!1267 = !DILocation(line: 108, column: 20, scope: !1187, inlinedAt: !1247)
!1268 = !DILocation(line: 107, column: 27, scope: !1187, inlinedAt: !1247)
!1269 = !DILocation(line: 107, column: 16, scope: !1187, inlinedAt: !1247)
!1270 = distinct !{!1270, !1257, !1271, !630}
!1271 = !DILocation(line: 109, column: 78, scope: !1183, inlinedAt: !1247)
!1272 = !DILocation(line: 0, scope: !1200, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 557, column: 20, scope: !1248)
!1274 = !DILocation(line: 123, column: 3, scope: !1212, inlinedAt: !1273)
!1275 = !DILocation(line: 124, column: 31, scope: !1214, inlinedAt: !1273)
!1276 = !DILocation(line: 124, column: 30, scope: !1214, inlinedAt: !1273)
!1277 = !DILocation(line: 124, column: 34, scope: !1214, inlinedAt: !1273)
!1278 = !DILocation(line: 124, column: 40, scope: !1214, inlinedAt: !1273)
!1279 = !DILocation(line: 124, column: 24, scope: !1214, inlinedAt: !1273)
!1280 = !DILocation(line: 124, column: 56, scope: !1214, inlinedAt: !1273)
!1281 = !DILocation(line: 124, column: 19, scope: !1214, inlinedAt: !1273)
!1282 = !DILocation(line: 128, column: 3, scope: !1222, inlinedAt: !1273)
!1283 = !DILocation(line: 123, column: 23, scope: !1214, inlinedAt: !1273)
!1284 = distinct !{!1284, !1274, !1285, !630}
!1285 = !DILocation(line: 124, column: 62, scope: !1212, inlinedAt: !1273)
!1286 = !DILocation(line: 130, column: 36, scope: !1227, inlinedAt: !1273)
!1287 = !DILocation(line: 130, column: 28, scope: !1227, inlinedAt: !1273)
!1288 = !DILocation(line: 130, column: 27, scope: !1227, inlinedAt: !1273)
!1289 = !DILocation(line: 130, column: 22, scope: !1227, inlinedAt: !1273)
!1290 = !DILocation(line: 130, column: 42, scope: !1227, inlinedAt: !1273)
!1291 = !DILocation(line: 130, column: 13, scope: !1227, inlinedAt: !1273)
!1292 = !DILocation(line: 130, column: 71, scope: !1227, inlinedAt: !1273)
!1293 = !DILocation(line: 129, column: 20, scope: !1227, inlinedAt: !1273)
!1294 = !DILocation(line: 128, column: 27, scope: !1227, inlinedAt: !1273)
!1295 = !DILocation(line: 128, column: 16, scope: !1227, inlinedAt: !1273)
!1296 = distinct !{!1296, !1282, !1297, !630}
!1297 = !DILocation(line: 130, column: 78, scope: !1222, inlinedAt: !1273)
!1298 = !DILocation(line: 0, scope: !1248)
!1299 = !DILocation(line: 562, column: 18, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 562, column: 15)
!1301 = !DILocation(line: 562, column: 15, scope: !1243)
!1302 = !DILocation(line: 567, column: 21, scope: !1243)
!1303 = !DILocation(line: 567, column: 31, scope: !1243)
!1304 = !DILocation(line: 567, column: 26, scope: !1243)
!1305 = !DILocation(line: 567, column: 37, scope: !1243)
!1306 = !DILocation(line: 567, column: 14, scope: !1243)
!1307 = !DILocation(line: 568, column: 26, scope: !1243)
!1308 = !DILocation(line: 568, column: 18, scope: !1243)
!1309 = !DILocation(line: 569, column: 20, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 569, column: 15)
!1311 = !DILocation(line: 569, column: 15, scope: !1243)
!1312 = !DILocation(line: 580, column: 13, scope: !1243)
!1313 = !DILocation(line: 574, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 574, column: 15)
!1315 = !DILocation(line: 574, column: 15, scope: !1243)
!1316 = distinct !{!1316, !1317, !1318}
!1317 = !DILocation(line: 552, column: 7, scope: !1245)
!1318 = !DILocation(line: 581, column: 7, scope: !1245)
!1319 = !DILocation(line: 585, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 585, column: 11)
!1321 = !DILocation(line: 585, column: 11, scope: !1320)
!1322 = !DILocation(line: 585, column: 30, scope: !1320)
!1323 = !DILocation(line: 585, column: 63, scope: !1320)
!1324 = !DILocation(line: 588, column: 18, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 587, column: 7)
!1326 = !DILocation(line: 589, column: 23, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 589, column: 15)
!1328 = !DILocation(line: 589, column: 15, scope: !1325)
!1329 = !DILocation(line: 0, scope: !1243)
!1330 = !DILocation(line: 591, column: 27, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 590, column: 11)
!1332 = !DILocation(line: 615, column: 15, scope: !803)
!1333 = !DILocation(line: 621, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 621, column: 7)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 620, column: 3)
!1336 = distinct !DILexicalBlock(scope: !803, file: !2, line: 619, column: 7)
!1337 = !DILocation(line: 594, column: 18, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 594, column: 15)
!1339 = !DILocation(line: 0, scope: !1338)
!1340 = !DILocation(line: 606, column: 24, scope: !1325)
!1341 = !DILocation(line: 606, column: 27, scope: !1325)
!1342 = !DILocation(line: 606, column: 31, scope: !1325)
!1343 = !DILocation(line: 606, column: 30, scope: !1325)
!1344 = !DILocation(line: 606, column: 21, scope: !1325)
!1345 = !DILocation(line: 619, column: 7, scope: !803)
!1346 = !DILocation(line: 625, column: 1, scope: !803)
!1347 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1350, !1350, !38, !38}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1352 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !2, file: !2, line: 710, type: !1353, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1417)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!38, !38, !38, !84, !1355, !1370}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !1357, line: 60, baseType: !1358)
!1357 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1357, line: 42, size: 1024, elements: !1359)
!1359 = !{!1360, !1364, !1365, !1366, !1367, !1368, !1369, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1395, !1407}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1358, file: !1357, line: 44, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1362, line: 18, baseType: !1363)
!1362 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1363 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !1358, file: !1357, line: 45, baseType: !1361, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !1358, file: !1357, line: 46, baseType: !1361, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !1358, file: !1357, line: 47, baseType: !38, size: 32, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !1358, file: !1357, line: 48, baseType: !84, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !1358, file: !1357, line: 49, baseType: !84, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !1358, file: !1357, line: 50, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1358, file: !1357, line: 51, baseType: !1370, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !1358, file: !1357, line: 52, baseType: !1370, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !1358, file: !1357, line: 53, baseType: !1370, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !1358, file: !1357, line: 54, baseType: !1370, size: 64, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !1358, file: !1357, line: 55, baseType: !1370, size: 64, offset: 704)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !1358, file: !1357, line: 56, baseType: !1370, size: 64, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1358, file: !1357, line: 57, baseType: !1378, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !1380, line: 50, baseType: !1381)
!1380 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 42, size: 320, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1394}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1381, file: !1380, line: 44, baseType: !1361, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1381, file: !1380, line: 45, baseType: !1361, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1381, file: !1380, line: 46, baseType: !1370, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1381, file: !1380, line: 47, baseType: !1387, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !1389, line: 44, baseType: !1390)
!1389 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !1389, line: 38, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1390, file: !1389, line: 40, baseType: !1361, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1390, file: !1389, line: 41, baseType: !1370, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1381, file: !1380, line: 48, baseType: !38, size: 32, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !1358, file: !1357, line: 58, baseType: !1396, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !1398, line: 50, baseType: !1399)
!1398 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1398, line: 42, size: 384, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !1399, file: !1398, line: 44, baseType: !1361, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !1399, file: !1398, line: 45, baseType: !1361, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !1399, file: !1398, line: 46, baseType: !1361, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1399, file: !1398, line: 47, baseType: !1370, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1399, file: !1398, line: 48, baseType: !1387, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1399, file: !1398, line: 49, baseType: !38, size: 32, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !1358, file: !1357, line: 59, baseType: !1408, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !76, line: 54, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 48, size: 320, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1410, file: !76, line: 49, baseType: !1361, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1410, file: !76, line: 50, baseType: !1370, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1410, file: !76, line: 51, baseType: !1370, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1410, file: !76, line: 52, baseType: !1370, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1410, file: !76, line: 53, baseType: !1370, size: 64, offset: 256)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1441, !1442, !1448}
!1418 = !DILocalVariable(name: "order_min", arg: 1, scope: !1352, file: !2, line: 710, type: !38)
!1419 = !DILocalVariable(name: "order_max", arg: 2, scope: !1352, file: !2, line: 710, type: !38)
!1420 = !DILocalVariable(name: "qq", arg: 3, scope: !1352, file: !2, line: 710, type: !84)
!1421 = !DILocalVariable(name: "work", arg: 4, scope: !1352, file: !2, line: 710, type: !1355)
!1422 = !DILocalVariable(name: "result_array", arg: 5, scope: !1352, file: !2, line: 710, type: !1370)
!1423 = !DILocalVariable(name: "even_order", scope: !1352, file: !2, line: 712, type: !77)
!1424 = !DILocalVariable(name: "odd_order", scope: !1352, file: !2, line: 712, type: !77)
!1425 = !DILocalVariable(name: "extra_values", scope: !1352, file: !2, line: 713, type: !77)
!1426 = !DILocalVariable(name: "ii", scope: !1352, file: !2, line: 713, type: !77)
!1427 = !DILocalVariable(name: "jj", scope: !1352, file: !2, line: 713, type: !77)
!1428 = !DILocalVariable(name: "status", scope: !1352, file: !2, line: 714, type: !38)
!1429 = !DILocalVariable(name: "tt", scope: !1352, file: !2, line: 715, type: !1370)
!1430 = !DILocalVariable(name: "dd", scope: !1352, file: !2, line: 715, type: !1370)
!1431 = !DILocalVariable(name: "ee", scope: !1352, file: !2, line: 715, type: !1370)
!1432 = !DILocalVariable(name: "e2", scope: !1352, file: !2, line: 715, type: !1370)
!1433 = !DILocalVariable(name: "zz", scope: !1352, file: !2, line: 716, type: !1370)
!1434 = !DILocalVariable(name: "aa", scope: !1352, file: !2, line: 716, type: !1370)
!1435 = !DILocalVariable(name: "mat", scope: !1352, file: !2, line: 717, type: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !1398, line: 57, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !1398, line: 55, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1398, line: 52, size: 384, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !1438, file: !1398, line: 54, baseType: !1397, size: 384)
!1441 = !DILocalVariable(name: "evec", scope: !1352, file: !2, line: 717, type: !1436)
!1442 = !DILocalVariable(name: "eval", scope: !1352, file: !2, line: 718, type: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !1380, line: 57, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !1380, line: 55, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 52, size: 320, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1445, file: !1380, line: 54, baseType: !1379, size: 320)
!1448 = !DILocalVariable(name: "wmat", scope: !1352, file: !2, line: 719, type: !1408)
!1449 = distinct !DIAssignID()
!1450 = !DILocation(line: 0, scope: !1352)
!1451 = distinct !DIAssignID()
!1452 = distinct !DIAssignID()
!1453 = !DILocation(line: 712, column: 35, scope: !1352)
!1454 = !{!1455, !1456, i64 8}
!1455 = !{!"", !1456, i64 0, !1456, i64 8, !1456, i64 16, !1457, i64 24, !139, i64 32, !139, i64 40, !1458, i64 48, !1458, i64 56, !1458, i64 64, !1458, i64 72, !1458, i64 80, !1458, i64 88, !1458, i64 96, !1458, i64 104, !1458, i64 112, !1458, i64 120}
!1456 = !{!"long", !140, i64 0}
!1457 = !{!"int", !140, i64 0}
!1458 = !{!"any pointer", !140, i64 0}
!1459 = !DILocation(line: 712, column: 29, scope: !1352)
!1460 = !DILocation(line: 712, column: 65, scope: !1352)
!1461 = !{!1455, !1456, i64 16}
!1462 = !DILocation(line: 712, column: 59, scope: !1352)
!1463 = !DILocation(line: 713, column: 28, scope: !1352)
!1464 = !{!1455, !1457, i64 24}
!1465 = !DILocation(line: 715, column: 22, scope: !1352)
!1466 = !{!1455, !1458, i64 80}
!1467 = !DILocation(line: 715, column: 38, scope: !1352)
!1468 = !{!1455, !1458, i64 64}
!1469 = !DILocation(line: 715, column: 54, scope: !1352)
!1470 = !{!1455, !1458, i64 72}
!1471 = !DILocation(line: 715, column: 70, scope: !1352)
!1472 = !{!1455, !1458, i64 88}
!1473 = !DILocation(line: 716, column: 22, scope: !1352)
!1474 = !{!1455, !1458, i64 96}
!1475 = !DILocation(line: 716, column: 38, scope: !1352)
!1476 = !{!1455, !1458, i64 48}
!1477 = !DILocation(line: 717, column: 3, scope: !1352)
!1478 = !DILocation(line: 718, column: 3, scope: !1352)
!1479 = !DILocation(line: 719, column: 43, scope: !1352)
!1480 = !{!1455, !1458, i64 120}
!1481 = !DILocation(line: 721, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 721, column: 7)
!1483 = !DILocation(line: 721, column: 25, scope: !1482)
!1484 = !{!1455, !1456, i64 0}
!1485 = !DILocation(line: 721, column: 17, scope: !1482)
!1486 = !DILocation(line: 721, column: 30, scope: !1482)
!1487 = !DILocation(line: 721, column: 43, scope: !1482)
!1488 = !DILocation(line: 721, column: 56, scope: !1482)
!1489 = !DILocation(line: 723, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 723, column: 7)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 722, column: 5)
!1492 = !DILocation(line: 730, column: 3, scope: !1352)
!1493 = !DILocation(line: 731, column: 3, scope: !1352)
!1494 = !DILocation(line: 730, column: 9, scope: !1352)
!1495 = !DILocation(line: 731, column: 9, scope: !1352)
!1496 = !{!139, !139, i64 0}
!1497 = !DILocation(line: 732, column: 16, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 732, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 732, column: 3)
!1500 = !DILocation(line: 732, column: 3, scope: !1499)
!1501 = !DILocation(line: 734, column: 11, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 733, column: 3)
!1503 = !DILocation(line: 734, column: 7, scope: !1502)
!1504 = !DILocation(line: 734, column: 16, scope: !1502)
!1505 = !DILocation(line: 735, column: 21, scope: !1502)
!1506 = !DILocation(line: 735, column: 24, scope: !1502)
!1507 = !DILocation(line: 735, column: 20, scope: !1502)
!1508 = !DILocation(line: 735, column: 14, scope: !1502)
!1509 = !DILocation(line: 735, column: 7, scope: !1502)
!1510 = !DILocation(line: 735, column: 18, scope: !1502)
!1511 = !DILocation(line: 736, column: 14, scope: !1502)
!1512 = !DILocation(line: 736, column: 7, scope: !1502)
!1513 = !DILocation(line: 736, column: 18, scope: !1502)
!1514 = !DILocation(line: 732, column: 33, scope: !1498)
!1515 = distinct !{!1515, !1500, !1516, !630}
!1516 = !DILocation(line: 737, column: 3, scope: !1499)
!1517 = !DILocation(line: 738, column: 7, scope: !1352)
!1518 = !DILocation(line: 738, column: 18, scope: !1352)
!1519 = !DILocation(line: 738, column: 3, scope: !1352)
!1520 = !DILocation(line: 738, column: 22, scope: !1352)
!1521 = !DILocation(line: 739, column: 25, scope: !1352)
!1522 = !DILocation(line: 739, column: 42, scope: !1352)
!1523 = !DILocation(line: 739, column: 24, scope: !1352)
!1524 = !DILocation(line: 739, column: 18, scope: !1352)
!1525 = !DILocation(line: 739, column: 3, scope: !1352)
!1526 = !DILocation(line: 739, column: 22, scope: !1352)
!1527 = !DILocation(line: 740, column: 18, scope: !1352)
!1528 = !DILocation(line: 740, column: 3, scope: !1352)
!1529 = !DILocation(line: 740, column: 22, scope: !1352)
!1530 = !DILocation(line: 742, column: 3, scope: !1352)
!1531 = !DILocation(line: 742, column: 9, scope: !1352)
!1532 = !DILocalVariable(name: "nn", arg: 1, scope: !1533, file: !2, line: 675, type: !38)
!1533 = distinct !DISubprogram(name: "figi", scope: !2, file: !2, line: 675, type: !1534, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!38, !38, !1370, !1370, !1370, !1370}
!1536 = !{!1532, !1537, !1538, !1539, !1540, !1541}
!1537 = !DILocalVariable(name: "tt", arg: 2, scope: !1533, file: !2, line: 675, type: !1370)
!1538 = !DILocalVariable(name: "dd", arg: 3, scope: !1533, file: !2, line: 675, type: !1370)
!1539 = !DILocalVariable(name: "ee", arg: 4, scope: !1533, file: !2, line: 675, type: !1370)
!1540 = !DILocalVariable(name: "e2", arg: 5, scope: !1533, file: !2, line: 676, type: !1370)
!1541 = !DILocalVariable(name: "ii", scope: !1533, file: !2, line: 678, type: !38)
!1542 = !DILocation(line: 0, scope: !1533, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 744, column: 12, scope: !1352)
!1544 = !DILocation(line: 680, column: 8, scope: !1545, inlinedAt: !1543)
!1545 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 680, column: 3)
!1546 = !DILocation(line: 680, column: 16, scope: !1547, inlinedAt: !1543)
!1547 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 680, column: 3)
!1548 = !DILocation(line: 680, column: 3, scope: !1545, inlinedAt: !1543)
!1549 = !DILocation(line: 703, column: 16, scope: !1550, inlinedAt: !1543)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 681, column: 3)
!1551 = !DILocation(line: 703, column: 14, scope: !1550, inlinedAt: !1543)
!1552 = !DILocation(line: 684, column: 24, scope: !1553, inlinedAt: !1543)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 683, column: 7)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 682, column: 11)
!1555 = !DILocation(line: 684, column: 20, scope: !1553, inlinedAt: !1543)
!1556 = !DILocation(line: 684, column: 29, scope: !1553, inlinedAt: !1543)
!1557 = !DILocation(line: 684, column: 28, scope: !1553, inlinedAt: !1543)
!1558 = !DILocation(line: 684, column: 11, scope: !1553, inlinedAt: !1543)
!1559 = !DILocation(line: 684, column: 18, scope: !1553, inlinedAt: !1543)
!1560 = !DILocation(line: 686, column: 22, scope: !1561, inlinedAt: !1543)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 686, column: 15)
!1562 = !DILocation(line: 686, column: 15, scope: !1553, inlinedAt: !1543)
!1563 = !DILocation(line: 693, column: 22, scope: !1564, inlinedAt: !1543)
!1564 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 693, column: 15)
!1565 = !DILocation(line: 693, column: 29, scope: !1564, inlinedAt: !1543)
!1566 = !DILocation(line: 693, column: 33, scope: !1564, inlinedAt: !1543)
!1567 = !DILocation(line: 693, column: 42, scope: !1564, inlinedAt: !1543)
!1568 = !DILocation(line: 693, column: 49, scope: !1564, inlinedAt: !1543)
!1569 = !DILocation(line: 693, column: 52, scope: !1564, inlinedAt: !1543)
!1570 = !DILocation(line: 693, column: 67, scope: !1564, inlinedAt: !1543)
!1571 = !DILocation(line: 693, column: 15, scope: !1553, inlinedAt: !1543)
!1572 = !DILocation(line: 697, column: 28, scope: !1573, inlinedAt: !1543)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 694, column: 11)
!1574 = !DILocation(line: 746, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 746, column: 7)
!1576 = !DILocation(line: 746, column: 7, scope: !1352)
!1577 = !DILocation(line: 700, column: 20, scope: !1553, inlinedAt: !1543)
!1578 = !DILocation(line: 700, column: 11, scope: !1553, inlinedAt: !1543)
!1579 = !DILocation(line: 700, column: 18, scope: !1553, inlinedAt: !1543)
!1580 = !DILocation(line: 703, column: 7, scope: !1550, inlinedAt: !1543)
!1581 = !DILocation(line: 680, column: 23, scope: !1547, inlinedAt: !1543)
!1582 = distinct !{!1582, !1548, !1583, !630, !1584}
!1583 = !DILocation(line: 704, column: 3, scope: !1545, inlinedAt: !1543)
!1584 = !{!"llvm.loop.peeled.count", i32 1}
!1585 = !DILocation(line: 748, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 748, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 747, column: 5)
!1588 = !DILocation(line: 752, column: 16, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 752, column: 3)
!1590 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 752, column: 3)
!1591 = !DILocation(line: 752, column: 3, scope: !1590)
!1592 = !DILocation(line: 753, column: 14, scope: !1589)
!1593 = !DILocation(line: 755, column: 11, scope: !1352)
!1594 = !DILocation(line: 755, column: 9, scope: !1352)
!1595 = !DILocation(line: 756, column: 11, scope: !1352)
!1596 = !DILocation(line: 756, column: 3, scope: !1352)
!1597 = !DILocation(line: 756, column: 9, scope: !1352)
!1598 = !DILocation(line: 757, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 757, column: 3)
!1600 = !DILocation(line: 763, column: 48, scope: !1352)
!1601 = !DILocation(line: 757, column: 16, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 757, column: 3)
!1603 = !DILocation(line: 759, column: 32, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 758, column: 3)
!1605 = !DILocation(line: 759, column: 23, scope: !1604)
!1606 = !DILocation(line: 759, column: 26, scope: !1604)
!1607 = !DILocation(line: 759, column: 7, scope: !1604)
!1608 = !DILocation(line: 759, column: 30, scope: !1604)
!1609 = !DILocation(line: 760, column: 30, scope: !1604)
!1610 = !DILocation(line: 760, column: 7, scope: !1604)
!1611 = !DILocation(line: 760, column: 28, scope: !1604)
!1612 = !DILocation(line: 761, column: 37, scope: !1604)
!1613 = !DILocation(line: 761, column: 32, scope: !1604)
!1614 = !DILocation(line: 761, column: 26, scope: !1604)
!1615 = !DILocation(line: 761, column: 7, scope: !1604)
!1616 = !DILocation(line: 761, column: 30, scope: !1604)
!1617 = distinct !{!1617, !1598, !1618, !630}
!1618 = !DILocation(line: 762, column: 3, scope: !1599)
!1619 = !DILocation(line: 763, column: 31, scope: !1352)
!1620 = !DILocation(line: 763, column: 42, scope: !1352)
!1621 = !DILocation(line: 763, column: 3, scope: !1352)
!1622 = !DILocation(line: 763, column: 46, scope: !1352)
!1623 = !DILocation(line: 764, column: 33, scope: !1352)
!1624 = !DILocation(line: 764, column: 27, scope: !1352)
!1625 = !DILocation(line: 764, column: 3, scope: !1352)
!1626 = !DILocation(line: 764, column: 31, scope: !1352)
!1627 = !DILocation(line: 767, column: 35, scope: !1352)
!1628 = !DILocation(line: 767, column: 9, scope: !1352)
!1629 = distinct !DIAssignID()
!1630 = !DILocation(line: 768, column: 37, scope: !1352)
!1631 = !{!1455, !1458, i64 104}
!1632 = !DILocation(line: 768, column: 10, scope: !1352)
!1633 = distinct !DIAssignID()
!1634 = !DILocation(line: 769, column: 37, scope: !1352)
!1635 = !{!1455, !1458, i64 112}
!1636 = !DILocation(line: 769, column: 10, scope: !1352)
!1637 = distinct !DIAssignID()
!1638 = !DILocation(line: 770, column: 3, scope: !1352)
!1639 = !DILocation(line: 771, column: 3, scope: !1352)
!1640 = !DILocation(line: 773, column: 16, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 773, column: 3)
!1642 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 773, column: 3)
!1643 = !DILocation(line: 773, column: 3, scope: !1642)
!1644 = !{!1645, !1458, i64 16}
!1645 = !{!"", !1456, i64 0, !1456, i64 8, !1458, i64 16, !1458, i64 24, !1457, i64 32}
!1646 = !{!1645, !1456, i64 8}
!1647 = !DILocalVariable(name: "v", arg: 1, scope: !1648, file: !1380, line: 175, type: !1651)
!1648 = distinct !DISubprogram(name: "gsl_vector_get", scope: !1380, file: !1380, line: 175, type: !1649, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1654)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!84, !1651, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1654 = !{!1647, !1655}
!1655 = !DILocalVariable(name: "i", arg: 2, scope: !1648, file: !1380, line: 175, type: !1653)
!1656 = !DILocation(line: 0, scope: !1648, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 774, column: 18, scope: !1641)
!1658 = !DILocation(line: 183, column: 20, scope: !1648, inlinedAt: !1657)
!1659 = !DILocation(line: 183, column: 10, scope: !1648, inlinedAt: !1657)
!1660 = !DILocation(line: 774, column: 11, scope: !1641)
!1661 = !DILocation(line: 774, column: 7, scope: !1641)
!1662 = !DILocation(line: 774, column: 16, scope: !1641)
!1663 = !DILocation(line: 777, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 777, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 777, column: 3)
!1666 = !DILocation(line: 777, column: 3, scope: !1665)
!1667 = !DILocation(line: 778, column: 14, scope: !1664)
!1668 = !DILocation(line: 779, column: 16, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 779, column: 3)
!1670 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 779, column: 3)
!1671 = !DILocation(line: 773, column: 44, scope: !1641)
!1672 = distinct !{!1672, !1643, !1673, !630}
!1673 = !DILocation(line: 774, column: 49, scope: !1642)
!1674 = !DILocation(line: 779, column: 3, scope: !1670)
!1675 = !DILocation(line: 779, column: 30, scope: !1669)
!1676 = !DILocation(line: 780, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 780, column: 7)
!1678 = !DILocation(line: 782, column: 18, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 782, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 781, column: 7)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 780, column: 7)
!1682 = !DILocation(line: 782, column: 15, scope: !1680)
!1683 = !DILocation(line: 783, column: 35, scope: !1679)
!1684 = !DILocation(line: 780, column: 34, scope: !1681)
!1685 = !DILocation(line: 783, column: 15, scope: !1679)
!1686 = !DILocation(line: 784, column: 29, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 784, column: 20)
!1688 = !DILocation(line: 784, column: 23, scope: !1687)
!1689 = !DILocation(line: 784, column: 33, scope: !1687)
!1690 = !DILocation(line: 785, column: 30, scope: !1687)
!1691 = !DILocation(line: 785, column: 15, scope: !1687)
!1692 = !DILocation(line: 785, column: 35, scope: !1687)
!1693 = !DILocation(line: 780, column: 20, scope: !1681)
!1694 = distinct !{!1694, !1676, !1695, !630}
!1695 = !DILocation(line: 786, column: 7, scope: !1677)
!1696 = distinct !{!1696, !1674, !1697, !630}
!1697 = !DILocation(line: 786, column: 7, scope: !1670)
!1698 = !DILocation(line: 787, column: 9, scope: !1352)
!1699 = !DILocation(line: 790, column: 9, scope: !1352)
!1700 = !DILocation(line: 790, column: 35, scope: !1352)
!1701 = !{i64 0, i64 8, !1702, i64 8, i64 8, !1702, i64 16, i64 8, !1702, i64 24, i64 8, !1703, i64 32, i64 8, !1703, i64 40, i64 4, !1704}
!1702 = !{!1456, !1456, i64 0}
!1703 = !{!1458, !1458, i64 0}
!1704 = !{!1457, !1457, i64 0}
!1705 = distinct !DIAssignID()
!1706 = !DILocation(line: 791, column: 10, scope: !1352)
!1707 = !DILocation(line: 791, column: 37, scope: !1352)
!1708 = !{i64 0, i64 8, !1702, i64 8, i64 8, !1702, i64 16, i64 8, !1703, i64 24, i64 8, !1703, i64 32, i64 4, !1704}
!1709 = distinct !DIAssignID()
!1710 = !DILocation(line: 792, column: 10, scope: !1352)
!1711 = !DILocation(line: 792, column: 37, scope: !1352)
!1712 = distinct !DIAssignID()
!1713 = !DILocation(line: 793, column: 3, scope: !1352)
!1714 = !DILocation(line: 794, column: 3, scope: !1352)
!1715 = !DILocation(line: 796, column: 16, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 796, column: 3)
!1717 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 796, column: 3)
!1718 = !DILocation(line: 796, column: 3, scope: !1717)
!1719 = !DILocation(line: 0, scope: !1648, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 797, column: 20, scope: !1716)
!1721 = !DILocation(line: 183, column: 20, scope: !1648, inlinedAt: !1720)
!1722 = !DILocation(line: 183, column: 10, scope: !1648, inlinedAt: !1720)
!1723 = !DILocation(line: 797, column: 11, scope: !1716)
!1724 = !DILocation(line: 797, column: 7, scope: !1716)
!1725 = !DILocation(line: 797, column: 18, scope: !1716)
!1726 = !DILocation(line: 799, column: 28, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 799, column: 3)
!1728 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 799, column: 3)
!1729 = !DILocation(line: 799, column: 3, scope: !1728)
!1730 = !DILocation(line: 796, column: 43, scope: !1716)
!1731 = distinct !{!1731, !1718, !1732, !630}
!1732 = !DILocation(line: 797, column: 51, scope: !1717)
!1733 = !DILocation(line: 801, column: 38, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 800, column: 5)
!1735 = !DILocation(line: 801, column: 23, scope: !1734)
!1736 = !DILocation(line: 801, column: 7, scope: !1734)
!1737 = !DILocation(line: 801, column: 36, scope: !1734)
!1738 = !DILocation(line: 799, column: 45, scope: !1727)
!1739 = distinct !{!1739, !1729, !1740, !630}
!1740 = !DILocation(line: 802, column: 5, scope: !1728)
!1741 = !DILocation(line: 805, column: 1, scope: !1352)
!1742 = !DISubprogram(name: "gsl_matrix_view_array", scope: !1398, file: !1398, line: 129, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1437, !1370, !1653, !1653}
!1745 = !DISubprogram(name: "gsl_vector_subvector", scope: !1380, file: !1380, line: 103, type: !1746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1444, !1378, !1361, !1361}
!1748 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !1398, file: !1398, line: 101, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1437, !1396, !1653, !1653, !1653, !1653}
!1751 = !DISubprogram(name: "gsl_eigen_symmv", scope: !76, file: !76, line: 58, type: !1752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!38, !1396, !1378, !1396, !1408}
!1754 = !DISubprogram(name: "gsl_eigen_symmv_sort", scope: !76, file: !76, line: 280, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!38, !1378, !1396, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_sort_t", file: !76, line: 271, baseType: !75)
!1758 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !2, file: !2, line: 808, type: !1353, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1760 = !DILocalVariable(name: "order_min", arg: 1, scope: !1758, file: !2, line: 808, type: !38)
!1761 = !DILocalVariable(name: "order_max", arg: 2, scope: !1758, file: !2, line: 808, type: !38)
!1762 = !DILocalVariable(name: "qq", arg: 3, scope: !1758, file: !2, line: 808, type: !84)
!1763 = !DILocalVariable(name: "work", arg: 4, scope: !1758, file: !2, line: 808, type: !1355)
!1764 = !DILocalVariable(name: "result_array", arg: 5, scope: !1758, file: !2, line: 808, type: !1370)
!1765 = !DILocalVariable(name: "even_order", scope: !1758, file: !2, line: 810, type: !77)
!1766 = !DILocalVariable(name: "odd_order", scope: !1758, file: !2, line: 810, type: !77)
!1767 = !DILocalVariable(name: "extra_values", scope: !1758, file: !2, line: 811, type: !77)
!1768 = !DILocalVariable(name: "ii", scope: !1758, file: !2, line: 811, type: !77)
!1769 = !DILocalVariable(name: "jj", scope: !1758, file: !2, line: 811, type: !77)
!1770 = !DILocalVariable(name: "zz", scope: !1758, file: !2, line: 812, type: !1370)
!1771 = !DILocalVariable(name: "bb", scope: !1758, file: !2, line: 812, type: !1370)
!1772 = !DILocalVariable(name: "mat", scope: !1758, file: !2, line: 813, type: !1436)
!1773 = !DILocalVariable(name: "evec", scope: !1758, file: !2, line: 813, type: !1436)
!1774 = !DILocalVariable(name: "eval", scope: !1758, file: !2, line: 814, type: !1443)
!1775 = !DILocalVariable(name: "wmat", scope: !1758, file: !2, line: 815, type: !1408)
!1776 = distinct !DIAssignID()
!1777 = !DILocation(line: 0, scope: !1758)
!1778 = distinct !DIAssignID()
!1779 = distinct !DIAssignID()
!1780 = !DILocation(line: 810, column: 35, scope: !1758)
!1781 = !DILocation(line: 810, column: 29, scope: !1758)
!1782 = !DILocation(line: 810, column: 67, scope: !1758)
!1783 = !DILocation(line: 810, column: 61, scope: !1758)
!1784 = !DILocation(line: 811, column: 28, scope: !1758)
!1785 = !DILocation(line: 812, column: 22, scope: !1758)
!1786 = !DILocation(line: 812, column: 38, scope: !1758)
!1787 = !{!1455, !1458, i64 56}
!1788 = !DILocation(line: 813, column: 3, scope: !1758)
!1789 = !DILocation(line: 814, column: 3, scope: !1758)
!1790 = !DILocation(line: 815, column: 43, scope: !1758)
!1791 = !DILocation(line: 817, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 817, column: 7)
!1793 = !DILocation(line: 817, column: 25, scope: !1792)
!1794 = !DILocation(line: 817, column: 17, scope: !1792)
!1795 = !DILocation(line: 817, column: 30, scope: !1792)
!1796 = !DILocation(line: 817, column: 43, scope: !1792)
!1797 = !DILocation(line: 817, column: 56, scope: !1792)
!1798 = !DILocation(line: 823, column: 16, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 823, column: 3)
!1800 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 823, column: 3)
!1801 = !DILocation(line: 823, column: 3, scope: !1800)
!1802 = !DILocation(line: 824, column: 14, scope: !1799)
!1803 = !DILocation(line: 825, column: 16, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 825, column: 3)
!1805 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 825, column: 3)
!1806 = !DILocation(line: 819, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 819, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 818, column: 5)
!1809 = !DILocation(line: 825, column: 3, scope: !1805)
!1810 = !DILocation(line: 825, column: 31, scope: !1804)
!1811 = !DILocation(line: 826, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 826, column: 7)
!1813 = !DILocation(line: 828, column: 18, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 828, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 827, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 826, column: 7)
!1817 = !DILocation(line: 828, column: 15, scope: !1815)
!1818 = !DILocation(line: 829, column: 36, scope: !1814)
!1819 = !DILocation(line: 826, column: 35, scope: !1816)
!1820 = !DILocation(line: 829, column: 15, scope: !1814)
!1821 = !DILocation(line: 830, column: 29, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 830, column: 20)
!1823 = !DILocation(line: 830, column: 23, scope: !1822)
!1824 = !DILocation(line: 830, column: 33, scope: !1822)
!1825 = !DILocation(line: 831, column: 31, scope: !1822)
!1826 = !DILocation(line: 831, column: 15, scope: !1822)
!1827 = !DILocation(line: 831, column: 36, scope: !1822)
!1828 = !DILocation(line: 826, column: 20, scope: !1816)
!1829 = distinct !{!1829, !1811, !1830, !630}
!1830 = !DILocation(line: 832, column: 7, scope: !1812)
!1831 = distinct !{!1831, !1809, !1832, !630}
!1832 = !DILocation(line: 832, column: 7, scope: !1805)
!1833 = !DILocation(line: 835, column: 35, scope: !1758)
!1834 = !DILocation(line: 835, column: 9, scope: !1758)
!1835 = distinct !DIAssignID()
!1836 = !DILocation(line: 836, column: 37, scope: !1758)
!1837 = !DILocation(line: 836, column: 10, scope: !1758)
!1838 = distinct !DIAssignID()
!1839 = !DILocation(line: 837, column: 37, scope: !1758)
!1840 = !DILocation(line: 837, column: 10, scope: !1758)
!1841 = distinct !DIAssignID()
!1842 = !DILocation(line: 838, column: 3, scope: !1758)
!1843 = !DILocation(line: 839, column: 3, scope: !1758)
!1844 = !DILocation(line: 841, column: 9, scope: !1758)
!1845 = !DILocation(line: 842, column: 16, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 842, column: 3)
!1847 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 842, column: 3)
!1848 = !DILocation(line: 842, column: 3, scope: !1847)
!1849 = !DILocation(line: 0, scope: !1648, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 843, column: 22, scope: !1846)
!1851 = !DILocation(line: 183, column: 20, scope: !1648, inlinedAt: !1850)
!1852 = !DILocation(line: 183, column: 10, scope: !1648, inlinedAt: !1850)
!1853 = !DILocation(line: 843, column: 11, scope: !1846)
!1854 = !DILocation(line: 843, column: 7, scope: !1846)
!1855 = !DILocation(line: 843, column: 20, scope: !1846)
!1856 = !DILocation(line: 846, column: 16, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 846, column: 3)
!1858 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 846, column: 3)
!1859 = !DILocation(line: 846, column: 3, scope: !1858)
!1860 = !DILocation(line: 847, column: 14, scope: !1857)
!1861 = !DILocation(line: 848, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 848, column: 3)
!1863 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 848, column: 3)
!1864 = !DILocation(line: 843, column: 15, scope: !1846)
!1865 = distinct !{!1865, !1848, !1866, !630}
!1866 = !DILocation(line: 843, column: 53, scope: !1847)
!1867 = !DILocation(line: 848, column: 3, scope: !1863)
!1868 = !DILocation(line: 848, column: 30, scope: !1862)
!1869 = !DILocation(line: 849, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 849, column: 7)
!1871 = !DILocation(line: 851, column: 18, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 851, column: 15)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 850, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 849, column: 7)
!1875 = !DILocation(line: 851, column: 15, scope: !1873)
!1876 = !DILocation(line: 852, column: 35, scope: !1872)
!1877 = !DILocation(line: 849, column: 34, scope: !1874)
!1878 = !DILocation(line: 852, column: 15, scope: !1872)
!1879 = !DILocation(line: 853, column: 29, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 853, column: 20)
!1881 = !DILocation(line: 853, column: 23, scope: !1880)
!1882 = !DILocation(line: 853, column: 33, scope: !1880)
!1883 = !DILocation(line: 854, column: 30, scope: !1880)
!1884 = !DILocation(line: 854, column: 15, scope: !1880)
!1885 = !DILocation(line: 854, column: 35, scope: !1880)
!1886 = !DILocation(line: 849, column: 20, scope: !1874)
!1887 = distinct !{!1887, !1869, !1888, !630}
!1888 = !DILocation(line: 855, column: 7, scope: !1870)
!1889 = distinct !{!1889, !1867, !1890, !630}
!1890 = !DILocation(line: 855, column: 7, scope: !1863)
!1891 = !DILocation(line: 857, column: 9, scope: !1758)
!1892 = !DILocation(line: 860, column: 9, scope: !1758)
!1893 = !DILocation(line: 860, column: 35, scope: !1758)
!1894 = distinct !DIAssignID()
!1895 = !DILocation(line: 861, column: 10, scope: !1758)
!1896 = !DILocation(line: 861, column: 37, scope: !1758)
!1897 = distinct !DIAssignID()
!1898 = !DILocation(line: 862, column: 10, scope: !1758)
!1899 = !DILocation(line: 862, column: 37, scope: !1758)
!1900 = distinct !DIAssignID()
!1901 = !DILocation(line: 863, column: 3, scope: !1758)
!1902 = !DILocation(line: 864, column: 3, scope: !1758)
!1903 = !DILocation(line: 866, column: 16, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 866, column: 3)
!1905 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 866, column: 3)
!1906 = !DILocation(line: 866, column: 3, scope: !1905)
!1907 = !DILocation(line: 0, scope: !1648, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 867, column: 20, scope: !1904)
!1909 = !DILocation(line: 183, column: 20, scope: !1648, inlinedAt: !1908)
!1910 = !DILocation(line: 183, column: 10, scope: !1648, inlinedAt: !1908)
!1911 = !DILocation(line: 867, column: 11, scope: !1904)
!1912 = !DILocation(line: 867, column: 7, scope: !1904)
!1913 = !DILocation(line: 867, column: 18, scope: !1904)
!1914 = !DILocation(line: 869, column: 28, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 869, column: 3)
!1916 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 869, column: 3)
!1917 = !DILocation(line: 869, column: 3, scope: !1916)
!1918 = !DILocation(line: 866, column: 43, scope: !1904)
!1919 = distinct !{!1919, !1906, !1920, !630}
!1920 = !DILocation(line: 867, column: 51, scope: !1905)
!1921 = !DILocation(line: 871, column: 38, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 870, column: 5)
!1923 = !DILocation(line: 871, column: 23, scope: !1922)
!1924 = !DILocation(line: 871, column: 7, scope: !1922)
!1925 = !DILocation(line: 871, column: 36, scope: !1922)
!1926 = !DILocation(line: 869, column: 45, scope: !1915)
!1927 = distinct !{!1927, !1917, !1928, !630}
!1928 = !DILocation(line: 872, column: 5, scope: !1916)
!1929 = !DILocation(line: 875, column: 1, scope: !1758)
!1930 = distinct !DISubprogram(name: "gsl_sf_mathieu_a", scope: !2, file: !2, line: 882, type: !162, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1931)
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DILocalVariable(name: "order", arg: 1, scope: !1930, file: !2, line: 882, type: !38)
!1933 = !DILocalVariable(name: "qq", arg: 2, scope: !1930, file: !2, line: 882, type: !84)
!1934 = !DILocalVariable(name: "result", scope: !1930, file: !2, line: 884, type: !104)
!1935 = !DILocalVariable(name: "status", scope: !1930, file: !2, line: 884, type: !38)
!1936 = distinct !DIAssignID()
!1937 = !DILocation(line: 0, scope: !1930)
!1938 = !DILocation(line: 884, column: 2, scope: !1930)
!1939 = !DILocation(line: 884, column: 2, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 884, column: 2)
!1941 = !DILocation(line: 884, column: 2, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 884, column: 2)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 884, column: 2)
!1944 = !DILocation(line: 885, column: 1, scope: !1930)
!1945 = distinct !DISubprogram(name: "gsl_sf_mathieu_b", scope: !2, file: !2, line: 887, type: !162, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1946)
!1946 = !{!1947, !1948, !1949, !1950}
!1947 = !DILocalVariable(name: "order", arg: 1, scope: !1945, file: !2, line: 887, type: !38)
!1948 = !DILocalVariable(name: "qq", arg: 2, scope: !1945, file: !2, line: 887, type: !84)
!1949 = !DILocalVariable(name: "result", scope: !1945, file: !2, line: 889, type: !104)
!1950 = !DILocalVariable(name: "status", scope: !1945, file: !2, line: 889, type: !38)
!1951 = distinct !DIAssignID()
!1952 = !DILocation(line: 0, scope: !1945)
!1953 = !DILocation(line: 889, column: 2, scope: !1945)
!1954 = !DILocation(line: 889, column: 2, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 889, column: 2)
!1956 = !DILocation(line: 889, column: 2, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 889, column: 2)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 889, column: 2)
!1959 = !DILocation(line: 890, column: 1, scope: !1945)
!1960 = !DISubprogram(name: "sqrt", scope: !1961, file: !1961, line: 143, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!84, !84}
!1964 = !DILocation(line: 0, scope: !192)
!1965 = !DILocation(line: 152, column: 9, scope: !192)
!1966 = !DILocation(line: 152, column: 16, scope: !192)
!1967 = !DILocation(line: 152, column: 8, scope: !192)
!1968 = !DILocation(line: 153, column: 10, scope: !192)
!1969 = !DILocation(line: 154, column: 10, scope: !192)
!1970 = !DILocation(line: 155, column: 10, scope: !192)
!1971 = !DILocation(line: 157, column: 10, scope: !192)
!1972 = !DILocation(line: 157, column: 9, scope: !192)
!1973 = !DILocation(line: 158, column: 10, scope: !192)
!1974 = !DILocation(line: 159, column: 11, scope: !192)
!1975 = !DILocation(line: 160, column: 12, scope: !192)
!1976 = !DILocation(line: 161, column: 12, scope: !192)
!1977 = !DILocation(line: 162, column: 12, scope: !192)
!1978 = !DILocation(line: 165, column: 13, scope: !192)
!1979 = !DILocation(line: 165, column: 21, scope: !192)
!1980 = !DILocation(line: 165, column: 17, scope: !192)
!1981 = !DILocation(line: 165, column: 37, scope: !192)
!1982 = !DILocation(line: 165, column: 32, scope: !192)
!1983 = !DILocation(line: 165, column: 25, scope: !192)
!1984 = !DILocation(line: 166, column: 16, scope: !192)
!1985 = !DILocation(line: 166, column: 50, scope: !192)
!1986 = !DILocation(line: 166, column: 19, scope: !192)
!1987 = !DILocation(line: 166, column: 58, scope: !192)
!1988 = !DILocation(line: 166, column: 9, scope: !192)
!1989 = !DILocation(line: 167, column: 35, scope: !192)
!1990 = !DILocation(line: 167, column: 46, scope: !192)
!1991 = !DILocation(line: 167, column: 39, scope: !192)
!1992 = !DILocation(line: 167, column: 50, scope: !192)
!1993 = !DILocation(line: 167, column: 16, scope: !192)
!1994 = !DILocation(line: 167, column: 58, scope: !192)
!1995 = !DILocation(line: 167, column: 9, scope: !192)
!1996 = !DILocation(line: 168, column: 35, scope: !192)
!1997 = !DILocation(line: 168, column: 46, scope: !192)
!1998 = !DILocation(line: 168, column: 39, scope: !192)
!1999 = !DILocation(line: 168, column: 50, scope: !192)
!2000 = !DILocation(line: 168, column: 19, scope: !192)
!2001 = !DILocation(line: 168, column: 58, scope: !192)
!2002 = !DILocation(line: 168, column: 9, scope: !192)
!2003 = !DILocation(line: 169, column: 24, scope: !192)
!2004 = !DILocation(line: 169, column: 35, scope: !192)
!2005 = !DILocation(line: 169, column: 28, scope: !192)
!2006 = !DILocation(line: 169, column: 46, scope: !192)
!2007 = !DILocation(line: 169, column: 39, scope: !192)
!2008 = !DILocation(line: 169, column: 50, scope: !192)
!2009 = !DILocation(line: 169, column: 58, scope: !192)
!2010 = !DILocation(line: 169, column: 9, scope: !192)
!2011 = !DILocation(line: 170, column: 24, scope: !192)
!2012 = !DILocation(line: 170, column: 35, scope: !192)
!2013 = !DILocation(line: 170, column: 28, scope: !192)
!2014 = !DILocation(line: 170, column: 46, scope: !192)
!2015 = !DILocation(line: 170, column: 39, scope: !192)
!2016 = !DILocation(line: 170, column: 50, scope: !192)
!2017 = !DILocation(line: 170, column: 19, scope: !192)
!2018 = !DILocation(line: 170, column: 58, scope: !192)
!2019 = !DILocation(line: 170, column: 9, scope: !192)
!2020 = !DILocation(line: 172, column: 3, scope: !192)
!2021 = !DISubprogram(name: "pow", scope: !1961, file: !1961, line: 140, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!84, !84, !84}
!2024 = !DISubprogram(name: "acos", scope: !1961, file: !1961, line: 53, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubprogram(name: "cos", scope: !1961, file: !1961, line: 62, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
