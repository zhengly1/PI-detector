; ModuleID = 'mathieu_charv.ll'
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
  br label %561, !dbg !145

10:                                               ; preds = %19, %3
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
  br label %561, !dbg !159

23:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 %14, metadata !160, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %11, metadata !165, metadata !DIExpression()), !dbg !179
  switch i32 %14, label %112 [
    i32 0, label %24
    i32 1, label %44
    i32 2, label %67
    i32 3, label %89
  ], !dbg !181

24:                                               ; preds = %23
  %25 = fcmp ugt double %11, 4.000000e+00, !dbg !182
  br i1 %25, label %30, label %26, !dbg !184

26:                                               ; preds = %24
  %27 = fmul double %11, 2.000000e+00, !dbg !185
  %28 = fmul double %11, %27, !dbg !186
  %handler_result = call double @fAddHandlerDouble(double %28, double 4.000000e+00), !dbg !187
  %29 = tail call double @sqrt(double noundef %handler_result) #8, !dbg !187
  %handler_result1 = call double @fSubHandlerDouble(double 2.000000e+00, double %29), !dbg !188
  br label %282, !dbg !188

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !194, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !195, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !197, metadata !DIExpression()), !dbg !204
  %31 = tail call double @sqrt(double noundef %11) #8, !dbg !206
  %32 = fmul double %31, 2.000000e+00, !dbg !207
  call void @llvm.dbg.value(metadata double %32, metadata !198, metadata !DIExpression()), !dbg !204
  %33 = fmul double %32, 1.600000e+01, !dbg !208
  call void @llvm.dbg.value(metadata double %33, metadata !199, metadata !DIExpression()), !dbg !204
  %34 = fmul double %33, %33, !dbg !209
  call void @llvm.dbg.value(metadata double %34, metadata !200, metadata !DIExpression()), !dbg !204
  %35 = fmul double %33, %34, !dbg !210
  call void @llvm.dbg.value(metadata double %35, metadata !201, metadata !DIExpression()), !dbg !204
  %36 = fmul double %33, %35, !dbg !211
  call void @llvm.dbg.value(metadata double %36, metadata !202, metadata !DIExpression()), !dbg !204
  %37 = fmul double %33, %36, !dbg !212
  call void @llvm.dbg.value(metadata double %37, metadata !203, metadata !DIExpression()), !dbg !204
  %38 = fmul double %11, 2.000000e+00, !dbg !213
  %handler_result2 = call double @fSubHandlerDouble(double %32, double %38), !dbg !214
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -2.500000e-01), !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !193, metadata !DIExpression()), !dbg !204
  %39 = fdiv double 1.000000e+00, %33, !dbg !215
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %39), !dbg !216
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !204
  %40 = fdiv double 1.200000e+01, %34, !dbg !216
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %40), !dbg !217
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !193, metadata !DIExpression()), !dbg !204
  %41 = fdiv double 2.120000e+02, %35, !dbg !217
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %41), !dbg !218
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !193, metadata !DIExpression()), !dbg !204
  %42 = fdiv double 4.752000e+03, %36, !dbg !218
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result6, double %42), !dbg !219
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !204
  %43 = fdiv double 1.267520e+05, %37, !dbg !219
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %43), !dbg !220
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !193, metadata !DIExpression()), !dbg !204
  br label %282, !dbg !220

44:                                               ; preds = %23
  %45 = fcmp ugt double %11, 4.000000e+00, !dbg !221
  br i1 %45, label %52, label %46, !dbg !223

46:                                               ; preds = %44
  %47 = fmul double %11, 5.000000e+00, !dbg !224
  %48 = fmul double %11, %47, !dbg !225
  %49 = fmul double %11, 1.600000e+01, !dbg !226
  %handler_result9 = call double @fSubHandlerDouble(double %48, double %49), !dbg !227
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 6.400000e+01), !dbg !228
  %50 = tail call double @sqrt(double noundef %handler_result10) #8, !dbg !228
  %handler_result11 = call double @fSubHandlerDouble(double %11, double %50), !dbg !229
  %51 = fmul double %handler_result11, 5.000000e-01, !dbg !229
  %handler_result12 = call double @fAddHandlerDouble(double %51, double 5.000000e+00), !dbg !230
  br label %282, !dbg !230

52:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !194, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 9.000000e+00, metadata !195, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 8.100000e+01, metadata !196, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata double 7.290000e+02, metadata !197, metadata !DIExpression()), !dbg !231
  %53 = tail call double @sqrt(double noundef %11) #8, !dbg !233
  %54 = fmul double %53, 2.000000e+00, !dbg !234
  call void @llvm.dbg.value(metadata double %54, metadata !198, metadata !DIExpression()), !dbg !231
  %55 = fmul double %54, 1.600000e+01, !dbg !235
  call void @llvm.dbg.value(metadata double %55, metadata !199, metadata !DIExpression()), !dbg !231
  %56 = fmul double %55, %55, !dbg !236
  call void @llvm.dbg.value(metadata double %56, metadata !200, metadata !DIExpression()), !dbg !231
  %57 = fmul double %55, %56, !dbg !237
  call void @llvm.dbg.value(metadata double %57, metadata !201, metadata !DIExpression()), !dbg !231
  %58 = fmul double %55, %57, !dbg !238
  call void @llvm.dbg.value(metadata double %58, metadata !202, metadata !DIExpression()), !dbg !231
  %59 = fmul double %55, %58, !dbg !239
  call void @llvm.dbg.value(metadata double %59, metadata !203, metadata !DIExpression()), !dbg !231
  %60 = fmul double %11, 2.000000e+00, !dbg !240
  %61 = fmul double %54, 3.000000e+00, !dbg !241
  %handler_result13 = call double @fSubHandlerDouble(double %61, double %60), !dbg !242
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double -1.250000e+00), !dbg !243
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !193, metadata !DIExpression()), !dbg !231
  %62 = fdiv double 9.000000e+00, %55, !dbg !243
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result14, double %62), !dbg !244
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !193, metadata !DIExpression()), !dbg !231
  %63 = fdiv double 1.800000e+02, %56, !dbg !244
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %63), !dbg !245
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !193, metadata !DIExpression()), !dbg !231
  %64 = fdiv double 5.076000e+03, %57, !dbg !245
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %64), !dbg !246
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !231
  %65 = fdiv double 1.749600e+05, %58, !dbg !246
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result17, double %65), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !193, metadata !DIExpression()), !dbg !231
  %66 = fdiv double 0x415A74C800000000, %59, !dbg !247
  %handler_result19 = call double @fSubHandlerDouble(double %handler_result18, double %66), !dbg !248
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !193, metadata !DIExpression()), !dbg !231
  br label %282, !dbg !248

67:                                               ; preds = %23
  %68 = fcmp ugt double %11, 3.000000e+00, !dbg !249
  br i1 %68, label %74, label %69, !dbg !251

69:                                               ; preds = %67
  call void @llvm.dbg.value(metadata double -8.000000e+00, metadata !169, metadata !DIExpression()), !dbg !179
  %70 = fmul double %11, 3.000000e+00, !dbg !252
  %71 = fmul double %11, %70, !dbg !254
  %handler_result20 = call double @fSubHandlerDouble(double -4.800000e+01, double %71), !dbg !255
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !168, metadata !DIExpression()), !dbg !179
  %72 = fmul double %11, 2.000000e+01, !dbg !255
  %73 = fmul double %11, %72, !dbg !256
  call void @llvm.dbg.value(metadata double %73, metadata !167, metadata !DIExpression()), !dbg !179
  br label %192, !dbg !257

74:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !194, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata double 2.500000e+01, metadata !195, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata double 6.250000e+02, metadata !196, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata double 1.562500e+04, metadata !197, metadata !DIExpression()), !dbg !258
  %75 = tail call double @sqrt(double noundef %11) #8, !dbg !260
  %76 = fmul double %75, 2.000000e+00, !dbg !261
  call void @llvm.dbg.value(metadata double %76, metadata !198, metadata !DIExpression()), !dbg !258
  %77 = fmul double %76, 1.600000e+01, !dbg !262
  call void @llvm.dbg.value(metadata double %77, metadata !199, metadata !DIExpression()), !dbg !258
  %78 = fmul double %77, %77, !dbg !263
  call void @llvm.dbg.value(metadata double %78, metadata !200, metadata !DIExpression()), !dbg !258
  %79 = fmul double %77, %78, !dbg !264
  call void @llvm.dbg.value(metadata double %79, metadata !201, metadata !DIExpression()), !dbg !258
  %80 = fmul double %77, %79, !dbg !265
  call void @llvm.dbg.value(metadata double %80, metadata !202, metadata !DIExpression()), !dbg !258
  %81 = fmul double %77, %80, !dbg !266
  call void @llvm.dbg.value(metadata double %81, metadata !203, metadata !DIExpression()), !dbg !258
  %82 = fmul double %11, 2.000000e+00, !dbg !267
  %83 = fmul double %76, 5.000000e+00, !dbg !268
  %handler_result21 = call double @fSubHandlerDouble(double %83, double %82), !dbg !269
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double -3.250000e+00), !dbg !270
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !193, metadata !DIExpression()), !dbg !258
  %84 = fdiv double 3.500000e+01, %77, !dbg !270
  %handler_result23 = call double @fSubHandlerDouble(double %handler_result22, double %84), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !193, metadata !DIExpression()), !dbg !258
  %85 = fdiv double 9.960000e+02, %78, !dbg !271
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result23, double %85), !dbg !272
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !193, metadata !DIExpression()), !dbg !258
  %86 = fdiv double 3.910000e+04, %79, !dbg !272
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result24, double %86), !dbg !273
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !193, metadata !DIExpression()), !dbg !258
  %87 = fdiv double 0x413C2AB000000000, %80, !dbg !273
  %handler_result26 = call double @fSubHandlerDouble(double %handler_result25, double %87), !dbg !274
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !193, metadata !DIExpression()), !dbg !258
  %88 = fdiv double 0x41978EC580000000, %81, !dbg !274
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result26, double %88), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !193, metadata !DIExpression()), !dbg !258
  br label %282, !dbg !275

89:                                               ; preds = %23
  %90 = fcmp ugt double %11, 6.250000e+00, !dbg !276
  br i1 %90, label %97, label %91, !dbg !278

91:                                               ; preds = %89
  %handler_result28 = call double @fSubHandlerDouble(double -8.000000e+00, double %11), !dbg !279
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !169, metadata !DIExpression()), !dbg !179
  %92 = fmul double %11, 1.600000e+01, !dbg !279
  %handler_result29 = call double @fAddHandlerDouble(double %92, double -1.280000e+02), !dbg !281
  %93 = fmul double %11, 2.000000e+00, !dbg !281
  %94 = fmul double %11, %93, !dbg !282
  %handler_result30 = call double @fSubHandlerDouble(double %handler_result29, double %94), !dbg !283
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !168, metadata !DIExpression()), !dbg !179
  %95 = fmul double %11, %11, !dbg !283
  %handler_result31 = call double @fAddHandlerDouble(double %11, double 8.000000e+00), !dbg !284
  %96 = fmul double %95, %handler_result31, !dbg !284
  call void @llvm.dbg.value(metadata double %96, metadata !167, metadata !DIExpression()), !dbg !179
  br label %192, !dbg !285

97:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 7.000000e+00, metadata !194, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 4.900000e+01, metadata !195, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 2.401000e+03, metadata !196, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 1.176490e+05, metadata !197, metadata !DIExpression()), !dbg !286
  %98 = tail call double @sqrt(double noundef %11) #8, !dbg !288
  %99 = fmul double %98, 2.000000e+00, !dbg !289
  call void @llvm.dbg.value(metadata double %99, metadata !198, metadata !DIExpression()), !dbg !286
  %100 = fmul double %99, 1.600000e+01, !dbg !290
  call void @llvm.dbg.value(metadata double %100, metadata !199, metadata !DIExpression()), !dbg !286
  %101 = fmul double %100, %100, !dbg !291
  call void @llvm.dbg.value(metadata double %101, metadata !200, metadata !DIExpression()), !dbg !286
  %102 = fmul double %100, %101, !dbg !292
  call void @llvm.dbg.value(metadata double %102, metadata !201, metadata !DIExpression()), !dbg !286
  %103 = fmul double %100, %102, !dbg !293
  call void @llvm.dbg.value(metadata double %103, metadata !202, metadata !DIExpression()), !dbg !286
  %104 = fmul double %100, %103, !dbg !294
  call void @llvm.dbg.value(metadata double %104, metadata !203, metadata !DIExpression()), !dbg !286
  %105 = fmul double %11, 2.000000e+00, !dbg !295
  %106 = fmul double %99, 7.000000e+00, !dbg !296
  %handler_result32 = call double @fSubHandlerDouble(double %106, double %105), !dbg !297
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -6.250000e+00), !dbg !298
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !193, metadata !DIExpression()), !dbg !286
  %107 = fdiv double 9.100000e+01, %100, !dbg !298
  %handler_result34 = call double @fSubHandlerDouble(double %handler_result33, double %107), !dbg !299
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !193, metadata !DIExpression()), !dbg !286
  %108 = fdiv double 3.420000e+03, %101, !dbg !299
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result34, double %108), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !193, metadata !DIExpression()), !dbg !286
  %109 = fdiv double 1.745240e+05, %102, !dbg !300
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result35, double %109), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !193, metadata !DIExpression()), !dbg !286
  %110 = fdiv double 0x41642EEA00000000, %103, !dbg !301
  %handler_result37 = call double @fSubHandlerDouble(double %handler_result36, double %110), !dbg !302
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !286
  %111 = fdiv double 0x41C57886B0000000, %104, !dbg !302
  %handler_result38 = call double @fSubHandlerDouble(double %handler_result37, double %111), !dbg !303
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !193, metadata !DIExpression()), !dbg !286
  br label %282, !dbg !303

112:                                              ; preds = %23
  %113 = icmp ult i32 %14, 70, !dbg !304
  br i1 %113, label %114, label %189, !dbg !305

114:                                              ; preds = %112
  %115 = sitofp i32 %14 to double, !dbg !306
  %116 = fmul double %115, 1.700000e+00, !dbg !307
  %117 = tail call double @sqrt(double noundef %11) #8, !dbg !308
  %118 = fmul double %117, 2.000000e+00, !dbg !309
  %119 = fcmp ogt double %116, %118, !dbg !310
  br i1 %119, label %120, label %152, !dbg !311

120:                                              ; preds = %114
  %121 = mul i32 %12, %12, !dbg !312
  %122 = sitofp i32 %121 to double, !dbg !313
  call void @llvm.dbg.value(metadata double %122, metadata !170, metadata !DIExpression()), !dbg !314
  %handler_result39 = call double @fAddHandlerDouble(double %122, double -1.000000e+00), !dbg !315
  %123 = fmul double %handler_result39, %handler_result39, !dbg !315
  call void @llvm.dbg.value(metadata double %123, metadata !176, metadata !DIExpression()), !dbg !314
  %124 = fmul double %11, %11, !dbg !316
  call void @llvm.dbg.value(metadata double %124, metadata !177, metadata !DIExpression()), !dbg !314
  %125 = fmul double %124, %124, !dbg !317
  call void @llvm.dbg.value(metadata double %125, metadata !178, metadata !DIExpression()), !dbg !314
  %126 = fmul double %124, 5.000000e-01, !dbg !318
  %127 = fdiv double %126, %handler_result39, !dbg !319
  %handler_result40 = call double @fAddHandlerDouble(double %127, double %122), !dbg !320
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !166, metadata !DIExpression()), !dbg !179
  %128 = fmul double %122, 5.000000e+00, !dbg !320
  %handler_result41 = call double @fAddHandlerDouble(double %128, double 7.000000e+00), !dbg !321
  %129 = fmul double %125, %handler_result41, !dbg !321
  %130 = fmul double %123, 3.200000e+01, !dbg !322
  %131 = fmul double %handler_result39, %130, !dbg !323
  %handler_result42 = call double @fAddHandlerDouble(double %122, double -4.000000e+00), !dbg !324
  %132 = fmul double %handler_result42, %131, !dbg !324
  %133 = fdiv double %129, %132, !dbg !325
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result40, double %133), !dbg !326
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !166, metadata !DIExpression()), !dbg !179
  %134 = fmul double %122, 9.000000e+00, !dbg !326
  %135 = fmul double %134, %122, !dbg !327
  %136 = fmul double %122, 5.800000e+01, !dbg !328
  %handler_result44 = call double @fAddHandlerDouble(double %136, double %135), !dbg !329
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double 2.900000e+01), !dbg !330
  %137 = fmul double %125, %handler_result45, !dbg !330
  %138 = fmul double %124, %137, !dbg !331
  %139 = fmul double %123, 6.400000e+01, !dbg !332
  %140 = fmul double %123, %139, !dbg !333
  %141 = fmul double %handler_result39, %140, !dbg !334
  %142 = fmul double %handler_result42, %141, !dbg !335
  %handler_result46 = call double @fAddHandlerDouble(double %122, double -9.000000e+00), !dbg !336
  %143 = fmul double %handler_result46, %142, !dbg !336
  %144 = fdiv double %138, %143, !dbg !337
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result43, double %144), !dbg !338
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !166, metadata !DIExpression()), !dbg !179
  %145 = fmul double %115, 1.400000e+00, !dbg !338
  %146 = tail call double @sqrt(double noundef %11) #8, !dbg !340
  %147 = fmul double %146, 2.000000e+00, !dbg !341
  %148 = fcmp olt double %145, %147, !dbg !342
  br i1 %148, label %149, label %282, !dbg !343

149:                                              ; preds = %120
  %150 = tail call fastcc double @asymptotic(i32 noundef %14, double noundef %11), !dbg !344
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double %150), !dbg !346
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !166, metadata !DIExpression()), !dbg !179
  %151 = fmul double %handler_result48, 5.000000e-01, !dbg !346
  call void @llvm.dbg.value(metadata double %151, metadata !166, metadata !DIExpression()), !dbg !179
  br label %282, !dbg !347

152:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !348
  %153 = shl nuw nsw i32 %14, 1, !dbg !350
  %154 = or disjoint i32 %153, 1, !dbg !351
  %155 = sitofp i32 %154 to double, !dbg !352
  call void @llvm.dbg.value(metadata double %155, metadata !194, metadata !DIExpression()), !dbg !348
  %156 = fmul double %155, %155, !dbg !353
  call void @llvm.dbg.value(metadata double %156, metadata !195, metadata !DIExpression()), !dbg !348
  %157 = fmul double %156, %156, !dbg !354
  call void @llvm.dbg.value(metadata double %157, metadata !196, metadata !DIExpression()), !dbg !348
  %158 = fmul double %156, %157, !dbg !355
  call void @llvm.dbg.value(metadata double %158, metadata !197, metadata !DIExpression()), !dbg !348
  %159 = tail call double @sqrt(double noundef %11) #8, !dbg !356
  %160 = fmul double %159, 2.000000e+00, !dbg !357
  call void @llvm.dbg.value(metadata double %160, metadata !198, metadata !DIExpression()), !dbg !348
  %161 = fmul double %160, 1.600000e+01, !dbg !358
  call void @llvm.dbg.value(metadata double %161, metadata !199, metadata !DIExpression()), !dbg !348
  %162 = fmul double %161, %161, !dbg !359
  call void @llvm.dbg.value(metadata double %162, metadata !200, metadata !DIExpression()), !dbg !348
  %163 = fmul double %161, %162, !dbg !360
  call void @llvm.dbg.value(metadata double %163, metadata !201, metadata !DIExpression()), !dbg !348
  %164 = fmul double %161, %163, !dbg !361
  call void @llvm.dbg.value(metadata double %164, metadata !202, metadata !DIExpression()), !dbg !348
  %165 = fmul double %161, %164, !dbg !362
  call void @llvm.dbg.value(metadata double %165, metadata !203, metadata !DIExpression()), !dbg !348
  %166 = fmul double %11, 2.000000e+00, !dbg !363
  %167 = fmul double %160, %155, !dbg !364
  %handler_result49 = call double @fSubHandlerDouble(double %167, double %166), !dbg !365
  %handler_result50 = call double @fAddHandlerDouble(double %156, double 1.000000e+00), !dbg !366
  %168 = fmul double %handler_result50, 1.250000e-01, !dbg !366
  %handler_result51 = call double @fSubHandlerDouble(double %handler_result49, double %168), !dbg !367
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !193, metadata !DIExpression()), !dbg !348
  %169 = fmul double %155, 2.500000e-01, !dbg !367
  %handler_result52 = call double @fAddHandlerDouble(double %156, double 3.000000e+00), !dbg !368
  %170 = fmul double %169, %handler_result52, !dbg !368
  %171 = fdiv double %170, %161, !dbg !369
  %handler_result53 = call double @fSubHandlerDouble(double %handler_result51, double %171), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !193, metadata !DIExpression()), !dbg !348
  %172 = fmul double %157, 5.000000e+00, !dbg !370
  %173 = fmul double %156, 3.400000e+01, !dbg !371
  %handler_result54 = call double @fAddHandlerDouble(double %173, double %172), !dbg !372
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 9.000000e+00), !dbg !373
  %174 = fmul double %handler_result55, 2.500000e-01, !dbg !373
  %175 = fdiv double %174, %162, !dbg !374
  %handler_result56 = call double @fSubHandlerDouble(double %handler_result53, double %175), !dbg !375
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !193, metadata !DIExpression()), !dbg !348
  %176 = fmul double %157, 3.300000e+01, !dbg !375
  %177 = fmul double %156, 4.100000e+02, !dbg !376
  %handler_result57 = call double @fAddHandlerDouble(double %177, double %176), !dbg !377
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 4.050000e+02), !dbg !378
  %178 = fmul double %169, %handler_result58, !dbg !378
  %179 = fdiv double %178, %163, !dbg !379
  %handler_result59 = call double @fSubHandlerDouble(double %handler_result56, double %179), !dbg !380
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !193, metadata !DIExpression()), !dbg !348
  %180 = fmul double %158, 6.300000e+01, !dbg !380
  %181 = fmul double %157, 1.260000e+03, !dbg !381
  %handler_result60 = call double @fAddHandlerDouble(double %181, double %180), !dbg !382
  %182 = fmul double %156, 2.943000e+03, !dbg !382
  %handler_result61 = call double @fAddHandlerDouble(double %182, double %handler_result60), !dbg !383
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double 4.860000e+02), !dbg !384
  %183 = fdiv double %handler_result62, %164, !dbg !384
  %handler_result63 = call double @fSubHandlerDouble(double %handler_result59, double %183), !dbg !385
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !193, metadata !DIExpression()), !dbg !348
  %184 = fmul double %158, 5.270000e+02, !dbg !385
  %185 = fmul double %157, 1.561700e+04, !dbg !386
  %handler_result64 = call double @fAddHandlerDouble(double %185, double %184), !dbg !387
  %186 = fmul double %156, 6.900100e+04, !dbg !387
  %handler_result65 = call double @fAddHandlerDouble(double %186, double %handler_result64), !dbg !388
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 4.160700e+04), !dbg !389
  %187 = fmul double %handler_result66, %155, !dbg !389
  %188 = fdiv double %187, %165, !dbg !390
  %handler_result67 = call double @fSubHandlerDouble(double %handler_result63, double %188)
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !193, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !166, metadata !DIExpression()), !dbg !179
  br label %282

189:                                              ; preds = %112
  %190 = mul i32 %12, %12, !dbg !391
  %191 = sitofp i32 %190 to double, !dbg !392
  br label %282, !dbg !393

192:                                              ; preds = %91, %69
  %193 = phi double [ %handler_result28, %91 ], [ -8.000000e+00, %69 ], !dbg !394
  %194 = phi double [ %handler_result30, %91 ], [ %handler_result20, %69 ], !dbg !394
  %195 = phi double [ %96, %91 ], [ %73, %69 ], !dbg !394
  call void @llvm.dbg.value(metadata double %195, metadata !167, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %194, metadata !168, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %193, metadata !169, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata double %193, metadata !395, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %194, metadata !400, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %195, metadata !401, metadata !DIExpression()), !dbg !412
  %196 = fmul double %194, 3.000000e+00, !dbg !414
  %197 = fmul double %193, %193, !dbg !415
  %handler_result68 = call double @fSubHandlerDouble(double %196, double %197), !dbg !416
  %198 = fdiv double %handler_result68, 9.000000e+00, !dbg !416
  call void @llvm.dbg.value(metadata double %198, metadata !402, metadata !DIExpression()), !dbg !412
  %199 = fmul double %193, 9.000000e+00, !dbg !417
  %200 = fmul double %199, %194, !dbg !418
  %201 = fmul double %195, 2.700000e+01, !dbg !419
  %handler_result69 = call double @fSubHandlerDouble(double %200, double %201), !dbg !420
  %202 = fmul double %193, 2.000000e+00, !dbg !420
  %203 = fmul double %193, %202, !dbg !421
  %204 = fmul double %193, %203, !dbg !422
  %handler_result70 = call double @fSubHandlerDouble(double %handler_result69, double %204), !dbg !423
  %205 = fdiv double %handler_result70, 5.400000e+01, !dbg !423
  call void @llvm.dbg.value(metadata double %205, metadata !403, metadata !DIExpression()), !dbg !412
  %206 = fmul double %198, %198, !dbg !424
  %207 = fmul double %198, %206, !dbg !425
  %208 = fmul double %205, %205, !dbg !426
  %handler_result71 = call double @fAddHandlerDouble(double %207, double %208), !dbg !427
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !404, metadata !DIExpression()), !dbg !412
  %209 = fcmp ult double %handler_result71, 0.000000e+00, !dbg !427
  br i1 %209, label %221, label %210, !dbg !428

210:                                              ; preds = %192
  %211 = tail call double @sqrt(double noundef %handler_result71) #8, !dbg !429
  %handler_result72 = call double @fAddHandlerDouble(double %205, double %211), !dbg !430
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !407, metadata !DIExpression()), !dbg !431
  %212 = tail call double @llvm.fabs.f64(double %handler_result72), !dbg !430
  %213 = fdiv double %212, %handler_result72, !dbg !432
  %214 = tail call double @pow(double noundef %212, double noundef 0x3FD5555555555555) #8, !dbg !433
  %215 = fmul double %214, %213, !dbg !434
  call void @llvm.dbg.value(metadata double %215, metadata !405, metadata !DIExpression()), !dbg !412
  %216 = tail call double @sqrt(double noundef %handler_result71) #8, !dbg !435
  %handler_result73 = call double @fSubHandlerDouble(double %205, double %216), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !407, metadata !DIExpression()), !dbg !431
  %217 = tail call double @llvm.fabs.f64(double %handler_result73), !dbg !436
  %218 = fdiv double %217, %handler_result73, !dbg !437
  %219 = tail call double @pow(double noundef %217, double noundef 0x3FD5555555555555) #8, !dbg !438
  %220 = fmul double %219, %218, !dbg !439
  call void @llvm.dbg.value(metadata double %220, metadata !406, metadata !DIExpression()), !dbg !412
  br label %231, !dbg !440

221:                                              ; preds = %192
  %222 = fneg double %198, !dbg !441
  %223 = fmul double %198, %222, !dbg !442
  %224 = fmul double %198, %223, !dbg !443
  %225 = tail call double @sqrt(double noundef %224) #8, !dbg !444
  %226 = fdiv double %205, %225, !dbg !445
  %handler_result166 = call double @callHandler(i32 5, double %226, double %226), !dbg !446
  call void @llvm.dbg.value(metadata double %handler_result166, metadata !410, metadata !DIExpression()), !dbg !447
  %227 = tail call double @sqrt(double noundef %222) #8, !dbg !446
  %228 = fmul double %227, 2.000000e+00, !dbg !448
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result166, double 0x402921FB54442D18), !dbg !449
  %229 = fdiv double %handler_result74, 3.000000e+00, !dbg !449
  %handler_result167 = call double @callHandler(i32 2, double %229, double %229), !dbg !450
  %230 = fmul double %228, %handler_result167, !dbg !450
  call void @llvm.dbg.value(metadata double %230, metadata !405, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !406, metadata !DIExpression()), !dbg !412
  br label %231

231:                                              ; preds = %221, %210
  %232 = phi double [ %220, %210 ], [ 0.000000e+00, %221 ], !dbg !451
  %233 = phi double [ %215, %210 ], [ %230, %221 ], !dbg !451
  call void @llvm.dbg.value(metadata double %233, metadata !405, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %232, metadata !406, metadata !DIExpression()), !dbg !412
  %handler_result75 = call double @fAddHandlerDouble(double %232, double %233), !dbg !452
  %234 = fdiv double %193, 3.000000e+00, !dbg !452
  %handler_result76 = call double @fSubHandlerDouble(double %handler_result75, double %234), !dbg !453
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !166, metadata !DIExpression()), !dbg !179
  %235 = fcmp olt double %handler_result76, 0.000000e+00, !dbg !453
  br i1 %235, label %236, label %278, !dbg !455

236:                                              ; preds = %231
  %237 = tail call double @sqrt(double noundef %11) #8, !dbg !456
  %238 = sitofp i32 %14 to double, !dbg !457
  %239 = fmul double %238, 1.000000e-01, !dbg !458
  %240 = fcmp ogt double %237, %239, !dbg !459
  br i1 %240, label %241, label %278, !dbg !460

241:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i32 %14, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !461
  call void @llvm.dbg.value(metadata double %11, metadata !192, metadata !DIExpression()), !dbg !461
  %242 = shl nuw nsw i32 %14, 1, !dbg !463
  %243 = add nsw i32 %242, -1, !dbg !464
  %244 = sitofp i32 %243 to double, !dbg !465
  call void @llvm.dbg.value(metadata double %244, metadata !194, metadata !DIExpression()), !dbg !461
  %245 = fmul double %244, %244, !dbg !466
  call void @llvm.dbg.value(metadata double %245, metadata !195, metadata !DIExpression()), !dbg !461
  %246 = fmul double %245, %245, !dbg !467
  call void @llvm.dbg.value(metadata double %246, metadata !196, metadata !DIExpression()), !dbg !461
  %247 = fmul double %245, %246, !dbg !468
  call void @llvm.dbg.value(metadata double %247, metadata !197, metadata !DIExpression()), !dbg !461
  %248 = tail call double @sqrt(double noundef %11) #8, !dbg !469
  %249 = fmul double %248, 2.000000e+00, !dbg !470
  call void @llvm.dbg.value(metadata double %249, metadata !198, metadata !DIExpression()), !dbg !461
  %250 = fmul double %249, 1.600000e+01, !dbg !471
  call void @llvm.dbg.value(metadata double %250, metadata !199, metadata !DIExpression()), !dbg !461
  %251 = fmul double %250, %250, !dbg !472
  call void @llvm.dbg.value(metadata double %251, metadata !200, metadata !DIExpression()), !dbg !461
  %252 = fmul double %250, %251, !dbg !473
  call void @llvm.dbg.value(metadata double %252, metadata !201, metadata !DIExpression()), !dbg !461
  %253 = fmul double %250, %252, !dbg !474
  call void @llvm.dbg.value(metadata double %253, metadata !202, metadata !DIExpression()), !dbg !461
  %254 = fmul double %250, %253, !dbg !475
  call void @llvm.dbg.value(metadata double %254, metadata !203, metadata !DIExpression()), !dbg !461
  %255 = fmul double %11, 2.000000e+00, !dbg !476
  %256 = fmul double %249, %244, !dbg !477
  %handler_result77 = call double @fSubHandlerDouble(double %256, double %255), !dbg !478
  %handler_result78 = call double @fAddHandlerDouble(double %245, double 1.000000e+00), !dbg !479
  %257 = fmul double %handler_result78, 1.250000e-01, !dbg !479
  %handler_result79 = call double @fSubHandlerDouble(double %handler_result77, double %257), !dbg !480
  call void @llvm.dbg.value(metadata double %handler_result79, metadata !193, metadata !DIExpression()), !dbg !461
  %258 = fmul double %244, 2.500000e-01, !dbg !480
  %handler_result80 = call double @fAddHandlerDouble(double %245, double 3.000000e+00), !dbg !481
  %259 = fmul double %258, %handler_result80, !dbg !481
  %260 = fdiv double %259, %250, !dbg !482
  %handler_result81 = call double @fSubHandlerDouble(double %handler_result79, double %260), !dbg !483
  call void @llvm.dbg.value(metadata double %handler_result81, metadata !193, metadata !DIExpression()), !dbg !461
  %261 = fmul double %246, 5.000000e+00, !dbg !483
  %262 = fmul double %245, 3.400000e+01, !dbg !484
  %handler_result82 = call double @fAddHandlerDouble(double %262, double %261), !dbg !485
  %handler_result83 = call double @fAddHandlerDouble(double %handler_result82, double 9.000000e+00), !dbg !486
  %263 = fmul double %handler_result83, 2.500000e-01, !dbg !486
  %264 = fdiv double %263, %251, !dbg !487
  %handler_result84 = call double @fSubHandlerDouble(double %handler_result81, double %264), !dbg !488
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !193, metadata !DIExpression()), !dbg !461
  %265 = fmul double %246, 3.300000e+01, !dbg !488
  %266 = fmul double %245, 4.100000e+02, !dbg !489
  %handler_result85 = call double @fAddHandlerDouble(double %266, double %265), !dbg !490
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result85, double 4.050000e+02), !dbg !491
  %267 = fmul double %258, %handler_result86, !dbg !491
  %268 = fdiv double %267, %252, !dbg !492
  %handler_result87 = call double @fSubHandlerDouble(double %handler_result84, double %268), !dbg !493
  call void @llvm.dbg.value(metadata double %handler_result87, metadata !193, metadata !DIExpression()), !dbg !461
  %269 = fmul double %247, 6.300000e+01, !dbg !493
  %270 = fmul double %246, 1.260000e+03, !dbg !494
  %handler_result88 = call double @fAddHandlerDouble(double %270, double %269), !dbg !495
  %271 = fmul double %245, 2.943000e+03, !dbg !495
  %handler_result89 = call double @fAddHandlerDouble(double %271, double %handler_result88), !dbg !496
  %handler_result90 = call double @fAddHandlerDouble(double %handler_result89, double 4.860000e+02), !dbg !497
  %272 = fdiv double %handler_result90, %253, !dbg !497
  %handler_result91 = call double @fSubHandlerDouble(double %handler_result87, double %272), !dbg !498
  call void @llvm.dbg.value(metadata double %handler_result91, metadata !193, metadata !DIExpression()), !dbg !461
  %273 = fmul double %247, 5.270000e+02, !dbg !498
  %274 = fmul double %246, 1.561700e+04, !dbg !499
  %handler_result92 = call double @fAddHandlerDouble(double %274, double %273), !dbg !500
  %275 = fmul double %245, 6.900100e+04, !dbg !500
  %handler_result93 = call double @fAddHandlerDouble(double %275, double %handler_result92), !dbg !501
  %handler_result94 = call double @fAddHandlerDouble(double %handler_result93, double 4.160700e+04), !dbg !502
  %276 = fmul double %handler_result94, %244, !dbg !502
  %277 = fdiv double %276, %254, !dbg !503
  %handler_result95 = call double @fSubHandlerDouble(double %handler_result91, double %277), !dbg !504
  call void @llvm.dbg.value(metadata double %handler_result95, metadata !193, metadata !DIExpression()), !dbg !461
  br label %282, !dbg !504

278:                                              ; preds = %236, %231
  %279 = mul i32 %12, %12, !dbg !505
  %280 = sitofp i32 %279 to double, !dbg !506
  %281 = tail call double @llvm.fabs.f64(double %handler_result76), !dbg !507
  %handler_result96 = call double @fAddHandlerDouble(double %281, double %280), !dbg !508
  br label %282, !dbg !508

282:                                              ; preds = %278, %241, %189, %152, %149, %120, %97, %74, %52, %46, %30, %26
  %283 = phi double [ %191, %189 ], [ %handler_result95, %241 ], [ %handler_result96, %278 ], [ %handler_result38, %97 ], [ %handler_result27, %74 ], [ %handler_result12, %46 ], [ %handler_result19, %52 ], [ %handler_result1, %26 ], [ %handler_result8, %30 ], [ %handler_result67, %152 ], [ %151, %149 ], [ %handler_result47, %120 ], !dbg !179
  tail call void @llvm.dbg.value(metadata double %283, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %283, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %283, metadata !125, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !129
  %284 = icmp eq i32 %13, 0
  %285 = sitofp i32 %14 to float
  %286 = fpext float %285 to double
  %287 = fmul double %286, 5.000000e-01
  %handler_result97 = call double @fAddHandlerDouble(double %287, double -5.000000e-01)
  %288 = fptosi double %handler_result97 to i32
  %289 = icmp sgt i32 %288, 0
  %290 = fmul double %11, %11
  %291 = sitofp i32 %14 to double
  %292 = mul i32 %12, %12
  %293 = sitofp i32 %292 to double
  %294 = icmp eq i32 %12, 0
  %295 = fmul double %11, 2.000000e+00
  %296 = fmul double %11, %295
  %297 = icmp ugt i32 %14, 3
  %298 = lshr i32 %14, 1
  %299 = add nsw i32 %298, -2
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1
  %301 = fmul double %291, 1.000000e-02
  %302 = tail call double @llvm.fabs.f64(double %283)
  %303 = fmul double %301, %302
  %handler_result98 = call double @fAddHandlerDouble(double %303, double 3.000000e+00)
  %304 = icmp ugt i32 %14, 10
  %305 = fmul double %291, 1.500000e+00
  %306 = add i32 %288, -1, !dbg !509
  %307 = add nsw i32 %298, -1, !dbg !509
  %308 = and i32 %288, 1
  %309 = icmp eq i32 %306, 0
  %310 = and i32 %288, 2147483646
  %311 = icmp eq i32 %308, 0
  %312 = and i32 %307, 1
  %313 = icmp eq i32 %299, 0
  %314 = and i32 %307, -2
  %315 = icmp eq i32 %312, 0
  %316 = and i32 %288, 1
  %317 = icmp eq i32 %306, 0
  %318 = and i32 %288, 2147483646
  %319 = icmp eq i32 %316, 0
  %320 = and i32 %307, 1
  %321 = icmp eq i32 %299, 0
  %322 = and i32 %307, -2
  %323 = icmp eq i32 %320, 0
  br label %324, !dbg !509

324:                                              ; preds = %549, %282
  %325 = phi double [ %283, %282 ], [ %handler_result165, %549 ]
  %326 = phi double [ 2.500000e-02, %282 ], [ %555, %549 ]
  %327 = phi i32 [ 0, %282 ], [ %553, %549 ]
  %328 = phi i32 [ 0, %282 ], [ %546, %549 ]
  tail call void @llvm.dbg.value(metadata double %325, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %326, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %327, metadata !119, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %328, metadata !117, metadata !DIExpression()), !dbg !129
  %handler_result99 = call double @fAddHandlerDouble(double %325, double 1.000000e-03), !dbg !510
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !120, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !129
  br i1 %284, label %329, label %379, !dbg !510

329:                                              ; preds = %324
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !512, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %11, metadata !517, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !518, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 50, metadata !519, metadata !DIExpression()), !dbg !524
  br i1 %294, label %359, label %330, !dbg !527

330:                                              ; preds = %329
  %331 = fdiv double %296, %handler_result99, !dbg !528
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !523, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %331, metadata !520, metadata !DIExpression()), !dbg !524
  br i1 %297, label %332, label %359, !dbg !531

332:                                              ; preds = %330
  br i1 %313, label %349, label %333, !dbg !532

333:                                              ; preds = %333, %332
  %334 = phi double [ %346, %333 ], [ %331, %332 ]
  %335 = phi i32 [ %342, %333 ], [ 0, %332 ]
  %336 = phi i32 [ %347, %333 ], [ 0, %332 ]
  tail call void @llvm.dbg.value(metadata double %334, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %335, metadata !522, metadata !DIExpression()), !dbg !524
  %337 = or disjoint i32 %335, 1, !dbg !536
  %338 = sitofp i32 %337 to double, !dbg !538
  %339 = fmul double %338, 4.000000e+00, !dbg !539
  %340 = fmul double %339, %338, !dbg !540
  %handler_result100 = call double @fSubHandlerDouble(double %handler_result99, double %340), !dbg !541
  %handler_result101 = call double @fSubHandlerDouble(double %handler_result100, double %334), !dbg !542
  %341 = fdiv double %290, %handler_result101, !dbg !542
  tail call void @llvm.dbg.value(metadata double %341, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !522, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %341, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !522, metadata !DIExpression()), !dbg !524
  %342 = add nuw nsw i32 %335, 2, !dbg !536
  %343 = sitofp i32 %342 to double, !dbg !538
  %344 = fmul double %343, 4.000000e+00, !dbg !539
  %345 = fmul double %344, %343, !dbg !540
  %handler_result102 = call double @fSubHandlerDouble(double %handler_result99, double %345), !dbg !541
  %handler_result103 = call double @fSubHandlerDouble(double %handler_result102, double %341), !dbg !542
  %346 = fdiv double %290, %handler_result103, !dbg !542
  tail call void @llvm.dbg.value(metadata double %346, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %342, metadata !522, metadata !DIExpression()), !dbg !524
  %347 = add i32 %336, 2, !dbg !532
  %348 = icmp eq i32 %347, %314, !dbg !532
  br i1 %348, label %349, label %333, !dbg !532, !llvm.loop !543

349:                                              ; preds = %333, %332
  %350 = phi double [ undef, %332 ], [ %346, %333 ]
  %351 = phi double [ %331, %332 ], [ %346, %333 ]
  %352 = phi i32 [ 0, %332 ], [ %342, %333 ]
  br i1 %315, label %359, label %353, !dbg !532

353:                                              ; preds = %349
  tail call void @llvm.dbg.value(metadata double %351, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %352, metadata !522, metadata !DIExpression()), !dbg !524
  %354 = add nuw nsw i32 %352, 1, !dbg !536
  %355 = sitofp i32 %354 to double, !dbg !538
  %356 = fmul double %355, 4.000000e+00, !dbg !539
  %357 = fmul double %356, %355, !dbg !540
  %handler_result104 = call double @fSubHandlerDouble(double %handler_result99, double %357), !dbg !541
  %handler_result105 = call double @fSubHandlerDouble(double %handler_result104, double %351), !dbg !542
  %358 = fdiv double %290, %handler_result105, !dbg !542
  tail call void @llvm.dbg.value(metadata double %358, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %354, metadata !522, metadata !DIExpression()), !dbg !524
  br label %359, !dbg !546

359:                                              ; preds = %353, %349, %330, %329
  %360 = phi double [ %331, %330 ], [ 0.000000e+00, %329 ], [ %350, %349 ], [ %358, %353 ], !dbg !548
  tail call void @llvm.dbg.value(metadata double poison, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !521, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !524
  br label %361, !dbg !546

361:                                              ; preds = %361, %359
  %362 = phi i32 [ 0, %359 ], [ %374, %361 ]
  %363 = phi double [ 0.000000e+00, %359 ], [ %373, %361 ]
  tail call void @llvm.dbg.value(metadata i32 %362, metadata !522, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %363, metadata !521, metadata !DIExpression()), !dbg !524
  %364 = sub nuw nsw i32 50, %362, !dbg !549
  %365 = sitofp i32 %364 to double, !dbg !551
  %366 = fmul double %365, 2.000000e+00, !dbg !552
  %handler_result106 = call double @fAddHandlerDouble(double %366, double %291), !dbg !553
  %367 = fmul double %handler_result106, %handler_result106, !dbg !553
  %handler_result107 = call double @fSubHandlerDouble(double %handler_result99, double %367), !dbg !554
  %handler_result108 = call double @fSubHandlerDouble(double %handler_result107, double %363), !dbg !555
  %368 = fdiv double %290, %handler_result108, !dbg !555
  tail call void @llvm.dbg.value(metadata double %368, metadata !521, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %362, metadata !522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %362, metadata !522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !524
  tail call void @llvm.dbg.value(metadata double %368, metadata !521, metadata !DIExpression()), !dbg !524
  %369 = sub nsw i32 49, %362, !dbg !549
  %370 = sitofp i32 %369 to double, !dbg !551
  %371 = fmul double %370, 2.000000e+00, !dbg !552
  %handler_result109 = call double @fAddHandlerDouble(double %371, double %291), !dbg !553
  %372 = fmul double %handler_result109, %handler_result109, !dbg !553
  %handler_result110 = call double @fSubHandlerDouble(double %handler_result99, double %372), !dbg !554
  %handler_result111 = call double @fSubHandlerDouble(double %handler_result110, double %368), !dbg !555
  %373 = fdiv double %290, %handler_result111, !dbg !555
  tail call void @llvm.dbg.value(metadata double %373, metadata !521, metadata !DIExpression()), !dbg !524
  %374 = add nuw nsw i32 %362, 2, !dbg !556
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !522, metadata !DIExpression()), !dbg !524
  %375 = icmp eq i32 %374, 50, !dbg !557
  br i1 %375, label %376, label %361, !dbg !546, !llvm.loop !558

376:                                              ; preds = %361
  %377 = fmul double %373, 2.000000e+00, !dbg !560
  %378 = select i1 %294, double %377, double %373, !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result127, metadata !520, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %378, metadata !521, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double poison, metadata !123, metadata !DIExpression()), !dbg !129
  br label %423, !dbg !561

379:                                              ; preds = %324
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !562, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %11, metadata !565, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !566, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 50, metadata !567, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %288, metadata !571, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 0, metadata !570, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %11, metadata !568, metadata !DIExpression()), !dbg !572
  br i1 %289, label %380, label %390, !dbg !574

380:                                              ; preds = %379
  br i1 %309, label %381, label %392, !dbg !574

381:                                              ; preds = %392, %380
  %382 = phi double [ undef, %380 ], [ %404, %392 ]
  %383 = phi double [ %11, %380 ], [ %404, %392 ]
  %384 = phi i32 [ 0, %380 ], [ %405, %392 ]
  br i1 %311, label %390, label %385, !dbg !574

385:                                              ; preds = %381
  tail call void @llvm.dbg.value(metadata double %383, metadata !568, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !570, metadata !DIExpression()), !dbg !572
  %386 = sitofp i32 %384 to double, !dbg !576
  %387 = fmul double %386, 2.000000e+00, !dbg !578
  %handler_result112 = call double @fAddHandlerDouble(double %387, double 1.000000e+00), !dbg !579
  %388 = fmul double %handler_result112, %handler_result112, !dbg !579
  %handler_result113 = call double @fSubHandlerDouble(double %handler_result99, double %388), !dbg !580
  %handler_result114 = call double @fSubHandlerDouble(double %handler_result113, double %383), !dbg !581
  %389 = fdiv double %290, %handler_result114, !dbg !581
  tail call void @llvm.dbg.value(metadata double %389, metadata !568, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !570, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !572
  br label %390, !dbg !582

390:                                              ; preds = %385, %381, %379
  %391 = phi double [ %11, %379 ], [ %382, %381 ], [ %389, %385 ], !dbg !572
  tail call void @llvm.dbg.value(metadata i32 0, metadata !570, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !569, metadata !DIExpression()), !dbg !572
  br label %408, !dbg !582

392:                                              ; preds = %392, %380
  %393 = phi double [ %404, %392 ], [ %11, %380 ]
  %394 = phi i32 [ %405, %392 ], [ 0, %380 ]
  %395 = phi i32 [ %406, %392 ], [ 0, %380 ]
  tail call void @llvm.dbg.value(metadata double %393, metadata !568, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %394, metadata !570, metadata !DIExpression()), !dbg !572
  %396 = sitofp i32 %394 to double, !dbg !576
  %397 = fmul double %396, 2.000000e+00, !dbg !578
  %handler_result115 = call double @fAddHandlerDouble(double %397, double 1.000000e+00), !dbg !579
  %398 = fmul double %handler_result115, %handler_result115, !dbg !579
  %handler_result116 = call double @fSubHandlerDouble(double %handler_result99, double %398), !dbg !580
  %handler_result117 = call double @fSubHandlerDouble(double %handler_result116, double %393), !dbg !581
  %399 = fdiv double %290, %handler_result117, !dbg !581
  tail call void @llvm.dbg.value(metadata double %399, metadata !568, metadata !DIExpression()), !dbg !572
  %400 = or disjoint i32 %394, 1, !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %400, metadata !570, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %399, metadata !568, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %400, metadata !570, metadata !DIExpression()), !dbg !572
  %401 = sitofp i32 %400 to double, !dbg !576
  %402 = fmul double %401, 2.000000e+00, !dbg !578
  %handler_result118 = call double @fAddHandlerDouble(double %402, double 1.000000e+00), !dbg !579
  %403 = fmul double %handler_result118, %handler_result118, !dbg !579
  %handler_result119 = call double @fSubHandlerDouble(double %handler_result99, double %403), !dbg !580
  %handler_result120 = call double @fSubHandlerDouble(double %handler_result119, double %399), !dbg !581
  %404 = fdiv double %290, %handler_result120, !dbg !581
  tail call void @llvm.dbg.value(metadata double %404, metadata !568, metadata !DIExpression()), !dbg !572
  %405 = add nuw nsw i32 %394, 2, !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %405, metadata !570, metadata !DIExpression()), !dbg !572
  %406 = add i32 %395, 2, !dbg !574
  %407 = icmp eq i32 %406, %310, !dbg !574
  br i1 %407, label %381, label %392, !dbg !574, !llvm.loop !585

408:                                              ; preds = %408, %390
  %409 = phi i32 [ 0, %390 ], [ %421, %408 ]
  %410 = phi double [ 0.000000e+00, %390 ], [ %420, %408 ]
  tail call void @llvm.dbg.value(metadata i32 %409, metadata !570, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %410, metadata !569, metadata !DIExpression()), !dbg !572
  %411 = sub nuw nsw i32 50, %409, !dbg !587
  %412 = sitofp i32 %411 to double, !dbg !589
  %413 = fmul double %412, 2.000000e+00, !dbg !590
  %handler_result121 = call double @fAddHandlerDouble(double %413, double %291), !dbg !591
  %414 = fmul double %handler_result121, %handler_result121, !dbg !591
  %handler_result122 = call double @fSubHandlerDouble(double %handler_result99, double %414), !dbg !592
  %handler_result123 = call double @fSubHandlerDouble(double %handler_result122, double %410), !dbg !593
  %415 = fdiv double %290, %handler_result123, !dbg !593
  tail call void @llvm.dbg.value(metadata double %415, metadata !569, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %409, metadata !570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %409, metadata !570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !572
  tail call void @llvm.dbg.value(metadata double %415, metadata !569, metadata !DIExpression()), !dbg !572
  %416 = sub nsw i32 49, %409, !dbg !587
  %417 = sitofp i32 %416 to double, !dbg !589
  %418 = fmul double %417, 2.000000e+00, !dbg !590
  %handler_result124 = call double @fAddHandlerDouble(double %418, double %291), !dbg !591
  %419 = fmul double %handler_result124, %handler_result124, !dbg !591
  %handler_result125 = call double @fSubHandlerDouble(double %handler_result99, double %419), !dbg !592
  %handler_result126 = call double @fSubHandlerDouble(double %handler_result125, double %415), !dbg !593
  %420 = fdiv double %290, %handler_result126, !dbg !593
  tail call void @llvm.dbg.value(metadata double %420, metadata !569, metadata !DIExpression()), !dbg !572
  %421 = add nuw nsw i32 %409, 2, !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %421, metadata !570, metadata !DIExpression()), !dbg !572
  %422 = icmp eq i32 %421, 50, !dbg !595
  br i1 %422, label %423, label %408, !dbg !582, !llvm.loop !596

423:                                              ; preds = %408, %376
  %424 = phi double [ %360, %376 ], [ %391, %408 ]
  %425 = phi double [ %378, %376 ], [ %420, %408 ]
  %handler_result127 = call double @fAddHandlerDouble(double %424, double %293), !dbg !598
  %handler_result128 = call double @fAddHandlerDouble(double %handler_result127, double %425), !dbg !598
  %handler_result129 = call double @fSubHandlerDouble(double %handler_result128, double %handler_result99), !dbg !599
  tail call void @llvm.dbg.value(metadata double %handler_result129, metadata !123, metadata !DIExpression()), !dbg !129
  br label %426, !dbg !599

426:                                              ; preds = %534, %423
  %427 = phi i32 [ 0, %423 ], [ %535, %534 ], !dbg !600
  %428 = phi double [ %handler_result99, %423 ], [ %430, %534 ], !dbg !600
  %429 = phi double [ %handler_result129, %423 ], [ %handler_result159, %534 ], !dbg !600
  %430 = phi double [ %325, %423 ], [ %handler_result162, %534 ], !dbg !129
  tail call void @llvm.dbg.value(metadata double %430, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %429, metadata !123, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %428, metadata !120, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %427, metadata !116, metadata !DIExpression()), !dbg !129
  br i1 %284, label %431, label %481, !dbg !601

431:                                              ; preds = %426
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !512, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %11, metadata !517, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %430, metadata !518, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 50, metadata !519, metadata !DIExpression()), !dbg !605
  br i1 %294, label %461, label %432, !dbg !608

432:                                              ; preds = %431
  %433 = fdiv double %296, %430, !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !523, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %433, metadata !520, metadata !DIExpression()), !dbg !605
  br i1 %297, label %434, label %461, !dbg !610

434:                                              ; preds = %432
  br i1 %321, label %451, label %435, !dbg !611

435:                                              ; preds = %435, %434
  %436 = phi double [ %448, %435 ], [ %433, %434 ]
  %437 = phi i32 [ %444, %435 ], [ 0, %434 ]
  %438 = phi i32 [ %449, %435 ], [ 0, %434 ]
  tail call void @llvm.dbg.value(metadata double %436, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !522, metadata !DIExpression()), !dbg !605
  %439 = or disjoint i32 %437, 1, !dbg !612
  %440 = sitofp i32 %439 to double, !dbg !613
  %441 = fmul double %440, 4.000000e+00, !dbg !614
  %442 = fmul double %441, %440, !dbg !615
  %handler_result130 = call double @fSubHandlerDouble(double %430, double %442), !dbg !616
  %handler_result131 = call double @fSubHandlerDouble(double %handler_result130, double %436), !dbg !617
  %443 = fdiv double %290, %handler_result131, !dbg !617
  tail call void @llvm.dbg.value(metadata double %443, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %439, metadata !522, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %443, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %439, metadata !522, metadata !DIExpression()), !dbg !605
  %444 = add nuw nsw i32 %437, 2, !dbg !612
  %445 = sitofp i32 %444 to double, !dbg !613
  %446 = fmul double %445, 4.000000e+00, !dbg !614
  %447 = fmul double %446, %445, !dbg !615
  %handler_result132 = call double @fSubHandlerDouble(double %430, double %447), !dbg !616
  %handler_result133 = call double @fSubHandlerDouble(double %handler_result132, double %443), !dbg !617
  %448 = fdiv double %290, %handler_result133, !dbg !617
  tail call void @llvm.dbg.value(metadata double %448, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %444, metadata !522, metadata !DIExpression()), !dbg !605
  %449 = add i32 %438, 2, !dbg !611
  %450 = icmp eq i32 %449, %322, !dbg !611
  br i1 %450, label %451, label %435, !dbg !611, !llvm.loop !618

451:                                              ; preds = %435, %434
  %452 = phi double [ undef, %434 ], [ %448, %435 ]
  %453 = phi double [ %433, %434 ], [ %448, %435 ]
  %454 = phi i32 [ 0, %434 ], [ %444, %435 ]
  br i1 %323, label %461, label %455, !dbg !611

455:                                              ; preds = %451
  tail call void @llvm.dbg.value(metadata double %453, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %454, metadata !522, metadata !DIExpression()), !dbg !605
  %456 = add nuw nsw i32 %454, 1, !dbg !612
  %457 = sitofp i32 %456 to double, !dbg !613
  %458 = fmul double %457, 4.000000e+00, !dbg !614
  %459 = fmul double %458, %457, !dbg !615
  %handler_result134 = call double @fSubHandlerDouble(double %430, double %459), !dbg !616
  %handler_result135 = call double @fSubHandlerDouble(double %handler_result134, double %453), !dbg !617
  %460 = fdiv double %290, %handler_result135, !dbg !617
  tail call void @llvm.dbg.value(metadata double %460, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %456, metadata !522, metadata !DIExpression()), !dbg !605
  br label %461, !dbg !620

461:                                              ; preds = %455, %451, %432, %431
  %462 = phi double [ %433, %432 ], [ 0.000000e+00, %431 ], [ %452, %451 ], [ %460, %455 ], !dbg !621
  tail call void @llvm.dbg.value(metadata double poison, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !521, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !605
  br label %463, !dbg !620

463:                                              ; preds = %463, %461
  %464 = phi i32 [ 0, %461 ], [ %476, %463 ]
  %465 = phi double [ 0.000000e+00, %461 ], [ %475, %463 ]
  tail call void @llvm.dbg.value(metadata i32 %464, metadata !522, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %465, metadata !521, metadata !DIExpression()), !dbg !605
  %466 = sub nuw nsw i32 50, %464, !dbg !622
  %467 = sitofp i32 %466 to double, !dbg !623
  %468 = fmul double %467, 2.000000e+00, !dbg !624
  %handler_result136 = call double @fAddHandlerDouble(double %468, double %291), !dbg !625
  %469 = fmul double %handler_result136, %handler_result136, !dbg !625
  %handler_result137 = call double @fSubHandlerDouble(double %430, double %469), !dbg !626
  %handler_result138 = call double @fSubHandlerDouble(double %handler_result137, double %465), !dbg !627
  %470 = fdiv double %290, %handler_result138, !dbg !627
  tail call void @llvm.dbg.value(metadata double %470, metadata !521, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %464, metadata !522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %464, metadata !522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !605
  tail call void @llvm.dbg.value(metadata double %470, metadata !521, metadata !DIExpression()), !dbg !605
  %471 = sub nsw i32 49, %464, !dbg !622
  %472 = sitofp i32 %471 to double, !dbg !623
  %473 = fmul double %472, 2.000000e+00, !dbg !624
  %handler_result139 = call double @fAddHandlerDouble(double %473, double %291), !dbg !625
  %474 = fmul double %handler_result139, %handler_result139, !dbg !625
  %handler_result140 = call double @fSubHandlerDouble(double %430, double %474), !dbg !626
  %handler_result141 = call double @fSubHandlerDouble(double %handler_result140, double %470), !dbg !627
  %475 = fdiv double %290, %handler_result141, !dbg !627
  tail call void @llvm.dbg.value(metadata double %475, metadata !521, metadata !DIExpression()), !dbg !605
  %476 = add nuw nsw i32 %464, 2, !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %476, metadata !522, metadata !DIExpression()), !dbg !605
  %477 = icmp eq i32 %476, 50, !dbg !629
  br i1 %477, label %478, label %463, !dbg !620, !llvm.loop !630

478:                                              ; preds = %463
  %479 = fmul double %475, 2.000000e+00, !dbg !632
  %480 = select i1 %294, double %479, double %475, !dbg !632
  tail call void @llvm.dbg.value(metadata double %handler_result157, metadata !520, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %480, metadata !521, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double poison, metadata !122, metadata !DIExpression()), !dbg !129
  br label %525, !dbg !633

481:                                              ; preds = %426
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !562, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %11, metadata !565, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %430, metadata !566, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 50, metadata !567, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %288, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 0, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %11, metadata !568, metadata !DIExpression()), !dbg !634
  br i1 %289, label %482, label %492, !dbg !636

482:                                              ; preds = %481
  br i1 %317, label %483, label %494, !dbg !636

483:                                              ; preds = %494, %482
  %484 = phi double [ undef, %482 ], [ %506, %494 ]
  %485 = phi double [ %11, %482 ], [ %506, %494 ]
  %486 = phi i32 [ 0, %482 ], [ %507, %494 ]
  br i1 %319, label %492, label %487, !dbg !636

487:                                              ; preds = %483
  tail call void @llvm.dbg.value(metadata double %485, metadata !568, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %486, metadata !570, metadata !DIExpression()), !dbg !634
  %488 = sitofp i32 %486 to double, !dbg !637
  %489 = fmul double %488, 2.000000e+00, !dbg !638
  %handler_result142 = call double @fAddHandlerDouble(double %489, double 1.000000e+00), !dbg !639
  %490 = fmul double %handler_result142, %handler_result142, !dbg !639
  %handler_result143 = call double @fSubHandlerDouble(double %430, double %490), !dbg !640
  %handler_result144 = call double @fSubHandlerDouble(double %handler_result143, double %485), !dbg !641
  %491 = fdiv double %290, %handler_result144, !dbg !641
  tail call void @llvm.dbg.value(metadata double %491, metadata !568, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %486, metadata !570, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !634
  br label %492, !dbg !642

492:                                              ; preds = %487, %483, %481
  %493 = phi double [ %11, %481 ], [ %484, %483 ], [ %491, %487 ], !dbg !634
  tail call void @llvm.dbg.value(metadata i32 0, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !569, metadata !DIExpression()), !dbg !634
  br label %510, !dbg !642

494:                                              ; preds = %494, %482
  %495 = phi double [ %506, %494 ], [ %11, %482 ]
  %496 = phi i32 [ %507, %494 ], [ 0, %482 ]
  %497 = phi i32 [ %508, %494 ], [ 0, %482 ]
  tail call void @llvm.dbg.value(metadata double %495, metadata !568, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %496, metadata !570, metadata !DIExpression()), !dbg !634
  %498 = sitofp i32 %496 to double, !dbg !637
  %499 = fmul double %498, 2.000000e+00, !dbg !638
  %handler_result145 = call double @fAddHandlerDouble(double %499, double 1.000000e+00), !dbg !639
  %500 = fmul double %handler_result145, %handler_result145, !dbg !639
  %handler_result146 = call double @fSubHandlerDouble(double %430, double %500), !dbg !640
  %handler_result147 = call double @fSubHandlerDouble(double %handler_result146, double %495), !dbg !641
  %501 = fdiv double %290, %handler_result147, !dbg !641
  tail call void @llvm.dbg.value(metadata double %501, metadata !568, metadata !DIExpression()), !dbg !634
  %502 = or disjoint i32 %496, 1, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %502, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %501, metadata !568, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %502, metadata !570, metadata !DIExpression()), !dbg !634
  %503 = sitofp i32 %502 to double, !dbg !637
  %504 = fmul double %503, 2.000000e+00, !dbg !638
  %handler_result148 = call double @fAddHandlerDouble(double %504, double 1.000000e+00), !dbg !639
  %505 = fmul double %handler_result148, %handler_result148, !dbg !639
  %handler_result149 = call double @fSubHandlerDouble(double %430, double %505), !dbg !640
  %handler_result150 = call double @fSubHandlerDouble(double %handler_result149, double %501), !dbg !641
  %506 = fdiv double %290, %handler_result150, !dbg !641
  tail call void @llvm.dbg.value(metadata double %506, metadata !568, metadata !DIExpression()), !dbg !634
  %507 = add nuw nsw i32 %496, 2, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %507, metadata !570, metadata !DIExpression()), !dbg !634
  %508 = add i32 %497, 2, !dbg !636
  %509 = icmp eq i32 %508, %318, !dbg !636
  br i1 %509, label %483, label %494, !dbg !636, !llvm.loop !644

510:                                              ; preds = %510, %492
  %511 = phi i32 [ 0, %492 ], [ %523, %510 ]
  %512 = phi double [ 0.000000e+00, %492 ], [ %522, %510 ]
  tail call void @llvm.dbg.value(metadata i32 %511, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %512, metadata !569, metadata !DIExpression()), !dbg !634
  %513 = sub nuw nsw i32 50, %511, !dbg !646
  %514 = sitofp i32 %513 to double, !dbg !647
  %515 = fmul double %514, 2.000000e+00, !dbg !648
  %handler_result151 = call double @fAddHandlerDouble(double %515, double %291), !dbg !649
  %516 = fmul double %handler_result151, %handler_result151, !dbg !649
  %handler_result152 = call double @fSubHandlerDouble(double %430, double %516), !dbg !650
  %handler_result153 = call double @fSubHandlerDouble(double %handler_result152, double %512), !dbg !651
  %517 = fdiv double %290, %handler_result153, !dbg !651
  tail call void @llvm.dbg.value(metadata double %517, metadata !569, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %511, metadata !570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %511, metadata !570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !634
  tail call void @llvm.dbg.value(metadata double %517, metadata !569, metadata !DIExpression()), !dbg !634
  %518 = sub nsw i32 49, %511, !dbg !646
  %519 = sitofp i32 %518 to double, !dbg !647
  %520 = fmul double %519, 2.000000e+00, !dbg !648
  %handler_result154 = call double @fAddHandlerDouble(double %520, double %291), !dbg !649
  %521 = fmul double %handler_result154, %handler_result154, !dbg !649
  %handler_result155 = call double @fSubHandlerDouble(double %430, double %521), !dbg !650
  %handler_result156 = call double @fSubHandlerDouble(double %handler_result155, double %517), !dbg !651
  %522 = fdiv double %290, %handler_result156, !dbg !651
  tail call void @llvm.dbg.value(metadata double %522, metadata !569, metadata !DIExpression()), !dbg !634
  %523 = add nuw nsw i32 %511, 2, !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %523, metadata !570, metadata !DIExpression()), !dbg !634
  %524 = icmp eq i32 %523, 50, !dbg !653
  br i1 %524, label %525, label %510, !dbg !642, !llvm.loop !654

525:                                              ; preds = %510, %478
  %526 = phi double [ %462, %478 ], [ %493, %510 ]
  %527 = phi double [ %480, %478 ], [ %522, %510 ]
  %handler_result157 = call double @fAddHandlerDouble(double %526, double %293), !dbg !656
  %handler_result158 = call double @fAddHandlerDouble(double %handler_result157, double %527), !dbg !656
  %handler_result159 = call double @fSubHandlerDouble(double %handler_result158, double %430), !dbg !657
  tail call void @llvm.dbg.value(metadata double %handler_result159, metadata !122, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %428, metadata !121, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %430, metadata !120, metadata !DIExpression()), !dbg !129
  %528 = fcmp oeq double %handler_result159, %429, !dbg !657
  br i1 %528, label %537, label %529, !dbg !659

529:                                              ; preds = %525
  %handler_result160 = call double @fSubHandlerDouble(double %430, double %428), !dbg !660
  %handler_result161 = call double @fSubHandlerDouble(double %handler_result159, double %429), !dbg !661
  %530 = fdiv double %handler_result160, %handler_result161, !dbg !661
  %531 = fmul double %handler_result159, %530, !dbg !662
  %handler_result162 = call double @fSubHandlerDouble(double %430, double %531), !dbg !663
  tail call void @llvm.dbg.value(metadata double %handler_result162, metadata !127, metadata !DIExpression()), !dbg !129
  %handler_result163 = call double @fSubHandlerDouble(double %handler_result162, double %428), !dbg !664
  %532 = tail call double @llvm.fabs.f64(double %handler_result163), !dbg !664
  tail call void @llvm.dbg.value(metadata double %532, metadata !124, metadata !DIExpression()), !dbg !129
  %533 = fcmp olt double %532, 0x3CB0000000000000, !dbg !665
  br i1 %533, label %537, label %534, !dbg !667

534:                                              ; preds = %529
  tail call void @llvm.dbg.value(metadata double %handler_result159, metadata !123, metadata !DIExpression()), !dbg !129
  %535 = add nuw nsw i32 %427, 1, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %535, metadata !116, metadata !DIExpression()), !dbg !129
  %536 = icmp eq i32 %535, 42, !dbg !669
  br i1 %536, label %537, label %426, !dbg !671, !llvm.loop !672

537:                                              ; preds = %534, %529, %525
  %538 = phi double [ 0x3CB0000000000000, %525 ], [ 0x3CB0000000000000, %529 ], [ %532, %534 ]
  %539 = phi double [ %430, %525 ], [ %handler_result162, %529 ], [ %handler_result162, %534 ], !dbg !129
  tail call void @llvm.dbg.value(metadata double %539, metadata !127, metadata !DIExpression()), !dbg !129
  %handler_result164 = call double @fSubHandlerDouble(double %539, double %283), !dbg !675
  %540 = tail call double @llvm.fabs.f64(double %handler_result164), !dbg !675
  %541 = fcmp ogt double %540, %handler_result98, !dbg !677
  %542 = fcmp ogt double %540, %305
  %543 = and i1 %304, %542
  %544 = or i1 %541, %543, !dbg !678
  br i1 %544, label %545, label %560, !dbg !678

545:                                              ; preds = %537
  %546 = add nuw nsw i32 %328, 1, !dbg !679
  tail call void @llvm.dbg.value(metadata i32 %546, metadata !117, metadata !DIExpression()), !dbg !129
  %547 = icmp eq i32 %546, 1000, !dbg !681
  br i1 %547, label %548, label %549, !dbg !683

548:                                              ; preds = %545
  store double %538, ptr %300, align 8, !dbg !684, !tbaa !144
  store double %540, ptr %300, align 8, !dbg !685, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %539, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !117, metadata !DIExpression()), !dbg !129
  store double %539, ptr %2, align 8, !dbg !687, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 489, i32 noundef 5) #8, !dbg !688
  br label %561, !dbg !688

549:                                              ; preds = %545
  %550 = fcmp ogt double %539, %283, !dbg !692
  %551 = fmul double %326, 5.000000e-01, !dbg !694
  tail call void @llvm.dbg.value(metadata double %555, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %555, metadata !126, metadata !DIExpression()), !dbg !129
  %552 = select i1 %550, i32 1, i32 -1
  %553 = select i1 %550, i32 -1, i32 1
  %554 = icmp eq i32 %327, %552, !dbg !694
  %555 = select i1 %554, double %551, double %326, !dbg !694
  tail call void @llvm.dbg.value(metadata double %555, metadata !126, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %553, metadata !119, metadata !DIExpression()), !dbg !129
  %556 = sitofp i32 %553 to double, !dbg !695
  %557 = fmul double %555, %556, !dbg !696
  %558 = sitofp i32 %546 to double, !dbg !697
  %559 = fmul double %557, %558, !dbg !698
  %handler_result165 = call double @fAddHandlerDouble(double %325, double %559)
  tail call void @llvm.dbg.value(metadata double %handler_result165, metadata !128, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata double %handler_result165, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %546, metadata !117, metadata !DIExpression()), !dbg !129
  br label %324

560:                                              ; preds = %537
  store double %538, ptr %300, align 8, !dbg !684, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %539, metadata !127, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %328, metadata !117, metadata !DIExpression()), !dbg !129
  store double %539, ptr %2, align 8, !dbg !687, !tbaa !137
  br label %561, !dbg !699

561:                                              ; preds = %560, %548, %21, %5
  %562 = phi i32 [ 0, %5 ], [ %22, %21 ], [ 5, %548 ], [ 0, %560 ], !dbg !129
  ret i32 %562, !dbg !700
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_b_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !701 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !703, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %1, metadata !704, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !705, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 50, metadata !707, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !710, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !711, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !706, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !721
  %4 = icmp eq i32 %0, 0, !dbg !722
  br i1 %4, label %7, label %5, !dbg !724

5:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double %1, metadata !704, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !703, metadata !DIExpression()), !dbg !721
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !725
  br i1 %6, label %8, label %13, !dbg !727

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 511, i32 noundef 5) #8, !dbg !728
  br label %487, !dbg !728

8:                                                ; preds = %22, %5
  %9 = phi i32 [ %0, %5 ], [ %17, %22 ]
  %10 = mul nsw i32 %9, %9, !dbg !731
  %11 = sitofp i32 %10 to double, !dbg !733
  store double %11, ptr %2, align 8, !dbg !734, !tbaa !137
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !735
  store double 0.000000e+00, ptr %12, align 8, !dbg !736, !tbaa !144
  br label %487, !dbg !737

13:                                               ; preds = %22, %5
  %14 = phi i32 [ %17, %22 ], [ %0, %5 ]
  %15 = phi double [ %21, %22 ], [ %1, %5 ]
  %16 = and i32 %14, 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !703, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %15, metadata !704, metadata !DIExpression()), !dbg !721
  %17 = tail call i32 @llvm.abs.i32(i32 %14, i1 true), !dbg !740
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !703, metadata !DIExpression()), !dbg !721
  %18 = fcmp olt double %15, 0.000000e+00, !dbg !741
  br i1 %18, label %19, label %26, !dbg !743

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 0, !dbg !744
  %21 = fneg double %15, !dbg !747
  br i1 %20, label %22, label %24, !dbg !748

22:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !703, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %21, metadata !704, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !705, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 50, metadata !707, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !710, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !711, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !721
  %23 = fcmp oeq double %15, 0.000000e+00, !dbg !725
  br i1 %23, label %8, label %13, !dbg !727

24:                                               ; preds = %19
  %25 = tail call i32 @gsl_sf_mathieu_a_e(i32 noundef %17, double noundef %21, ptr noundef %2), !dbg !749, !range !158
  br label %487, !dbg !750

26:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 %17, metadata !751, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata double %15, metadata !754, metadata !DIExpression()), !dbg !768
  switch i32 %17, label %132 [
    i32 1, label %27
    i32 2, label %49
    i32 3, label %69
  ], !dbg !770

27:                                               ; preds = %26
  %28 = fcmp ugt double %15, 4.000000e+00, !dbg !771
  br i1 %28, label %35, label %29, !dbg !773

29:                                               ; preds = %27
  %30 = fmul double %15, 5.000000e+00, !dbg !774
  %31 = fmul double %15, %30, !dbg !775
  %32 = fmul double %15, 1.600000e+01, !dbg !776
  %handler_result = call double @fAddHandlerDouble(double %32, double %31), !dbg !777
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 6.400000e+01), !dbg !778
  %33 = tail call double @sqrt(double noundef %handler_result1) #8, !dbg !778
  %handler_result2 = call double @fAddHandlerDouble(double %15, double %33), !dbg !779
  %34 = fmul double %handler_result2, 5.000000e-01, !dbg !779
  %handler_result3 = call double @fSubHandlerDouble(double 5.000000e+00, double %34), !dbg !780
  br label %220, !dbg !780

35:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %17, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !781
  call void @llvm.dbg.value(metadata double %15, metadata !192, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !194, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !195, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !196, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !197, metadata !DIExpression()), !dbg !781
  %36 = tail call double @sqrt(double noundef %15) #8, !dbg !783
  %37 = fmul double %36, 2.000000e+00, !dbg !784
  call void @llvm.dbg.value(metadata double %37, metadata !198, metadata !DIExpression()), !dbg !781
  %38 = fmul double %37, 1.600000e+01, !dbg !785
  call void @llvm.dbg.value(metadata double %38, metadata !199, metadata !DIExpression()), !dbg !781
  %39 = fmul double %38, %38, !dbg !786
  call void @llvm.dbg.value(metadata double %39, metadata !200, metadata !DIExpression()), !dbg !781
  %40 = fmul double %38, %39, !dbg !787
  call void @llvm.dbg.value(metadata double %40, metadata !201, metadata !DIExpression()), !dbg !781
  %41 = fmul double %38, %40, !dbg !788
  call void @llvm.dbg.value(metadata double %41, metadata !202, metadata !DIExpression()), !dbg !781
  %42 = fmul double %38, %41, !dbg !789
  call void @llvm.dbg.value(metadata double %42, metadata !203, metadata !DIExpression()), !dbg !781
  %43 = fmul double %15, 2.000000e+00, !dbg !790
  %handler_result4 = call double @fSubHandlerDouble(double %37, double %43), !dbg !791
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -2.500000e-01), !dbg !792
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !193, metadata !DIExpression()), !dbg !781
  %44 = fdiv double 1.000000e+00, %38, !dbg !792
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %44), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !193, metadata !DIExpression()), !dbg !781
  %45 = fdiv double 1.200000e+01, %39, !dbg !793
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result6, double %45), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !781
  %46 = fdiv double 2.120000e+02, %40, !dbg !794
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %46), !dbg !795
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !193, metadata !DIExpression()), !dbg !781
  %47 = fdiv double 4.752000e+03, %41, !dbg !795
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result8, double %47), !dbg !796
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !193, metadata !DIExpression()), !dbg !781
  %48 = fdiv double 1.267520e+05, %42, !dbg !796
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %48), !dbg !797
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !193, metadata !DIExpression()), !dbg !781
  br label %220, !dbg !797

49:                                               ; preds = %26
  %50 = fcmp ugt double %15, 5.000000e+00, !dbg !798
  br i1 %50, label %54, label %51, !dbg !800

51:                                               ; preds = %49
  %52 = fmul double %15, %15, !dbg !801
  %handler_result11 = call double @fAddHandlerDouble(double %52, double 3.600000e+01), !dbg !802
  %53 = tail call double @llvm.sqrt.f64(double %handler_result11), !dbg !802
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+01, double %53), !dbg !803
  br label %220, !dbg !803

54:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 %17, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !804
  call void @llvm.dbg.value(metadata double %15, metadata !192, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !194, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata double 9.000000e+00, metadata !195, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata double 8.100000e+01, metadata !196, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata double 7.290000e+02, metadata !197, metadata !DIExpression()), !dbg !804
  %55 = tail call double @sqrt(double noundef %15) #8, !dbg !806
  %56 = fmul double %55, 2.000000e+00, !dbg !807
  call void @llvm.dbg.value(metadata double %56, metadata !198, metadata !DIExpression()), !dbg !804
  %57 = fmul double %56, 1.600000e+01, !dbg !808
  call void @llvm.dbg.value(metadata double %57, metadata !199, metadata !DIExpression()), !dbg !804
  %58 = fmul double %57, %57, !dbg !809
  call void @llvm.dbg.value(metadata double %58, metadata !200, metadata !DIExpression()), !dbg !804
  %59 = fmul double %57, %58, !dbg !810
  call void @llvm.dbg.value(metadata double %59, metadata !201, metadata !DIExpression()), !dbg !804
  %60 = fmul double %57, %59, !dbg !811
  call void @llvm.dbg.value(metadata double %60, metadata !202, metadata !DIExpression()), !dbg !804
  %61 = fmul double %57, %60, !dbg !812
  call void @llvm.dbg.value(metadata double %61, metadata !203, metadata !DIExpression()), !dbg !804
  %62 = fmul double %15, 2.000000e+00, !dbg !813
  %63 = fmul double %56, 3.000000e+00, !dbg !814
  %handler_result13 = call double @fSubHandlerDouble(double %63, double %62), !dbg !815
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double -1.250000e+00), !dbg !816
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !193, metadata !DIExpression()), !dbg !804
  %64 = fdiv double 9.000000e+00, %57, !dbg !816
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result14, double %64), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !193, metadata !DIExpression()), !dbg !804
  %65 = fdiv double 1.800000e+02, %58, !dbg !817
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %65), !dbg !818
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !193, metadata !DIExpression()), !dbg !804
  %66 = fdiv double 5.076000e+03, %59, !dbg !818
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %66), !dbg !819
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !804
  %67 = fdiv double 1.749600e+05, %60, !dbg !819
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result17, double %67), !dbg !820
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !193, metadata !DIExpression()), !dbg !804
  %68 = fdiv double 0x415A74C800000000, %61, !dbg !820
  %handler_result19 = call double @fSubHandlerDouble(double %handler_result18, double %68), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !193, metadata !DIExpression()), !dbg !804
  br label %220, !dbg !821

69:                                               ; preds = %26
  %70 = fcmp ugt double %15, 6.250000e+00, !dbg !822
  br i1 %70, label %117, label %71, !dbg !824

71:                                               ; preds = %69
  %handler_result20 = call double @fAddHandlerDouble(double %15, double -8.000000e+00), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !758, metadata !DIExpression()), !dbg !768
  %72 = fmul double %15, 1.600000e+01, !dbg !825
  %handler_result21 = call double @fSubHandlerDouble(double -1.280000e+02, double %72), !dbg !827
  %73 = fmul double %15, 2.000000e+00, !dbg !827
  %74 = fmul double %15, %73, !dbg !828
  %handler_result22 = call double @fSubHandlerDouble(double %handler_result21, double %74), !dbg !829
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !757, metadata !DIExpression()), !dbg !768
  %75 = fmul double %15, %15, !dbg !829
  %handler_result23 = call double @fSubHandlerDouble(double 8.000000e+00, double %15), !dbg !830
  %76 = fmul double %75, %handler_result23, !dbg !830
  call void @llvm.dbg.value(metadata double %76, metadata !756, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !395, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !400, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata double %76, metadata !401, metadata !DIExpression()), !dbg !831
  %77 = fmul double %handler_result22, 3.000000e+00, !dbg !833
  %78 = fmul double %handler_result20, %handler_result20, !dbg !834
  %handler_result24 = call double @fSubHandlerDouble(double %77, double %78), !dbg !835
  %79 = fdiv double %handler_result24, 9.000000e+00, !dbg !835
  call void @llvm.dbg.value(metadata double %79, metadata !402, metadata !DIExpression()), !dbg !831
  %80 = fmul double %handler_result20, 9.000000e+00, !dbg !836
  %81 = fmul double %80, %handler_result22, !dbg !837
  %82 = fmul double %76, 2.700000e+01, !dbg !838
  %handler_result25 = call double @fSubHandlerDouble(double %81, double %82), !dbg !839
  %83 = fmul double %handler_result20, 2.000000e+00, !dbg !839
  %84 = fmul double %handler_result20, %83, !dbg !840
  %85 = fmul double %handler_result20, %84, !dbg !841
  %handler_result26 = call double @fSubHandlerDouble(double %handler_result25, double %85), !dbg !842
  %86 = fdiv double %handler_result26, 5.400000e+01, !dbg !842
  call void @llvm.dbg.value(metadata double %86, metadata !403, metadata !DIExpression()), !dbg !831
  %87 = fmul double %79, %79, !dbg !843
  %88 = fmul double %79, %87, !dbg !844
  %89 = fmul double %86, %86, !dbg !845
  %handler_result27 = call double @fAddHandlerDouble(double %88, double %89), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !404, metadata !DIExpression()), !dbg !831
  %90 = fcmp ult double %handler_result27, 0.000000e+00, !dbg !846
  br i1 %90, label %102, label %91, !dbg !847

91:                                               ; preds = %71
  %92 = tail call double @sqrt(double noundef %handler_result27) #8, !dbg !848
  %handler_result28 = call double @fAddHandlerDouble(double %86, double %92), !dbg !849
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !407, metadata !DIExpression()), !dbg !850
  %93 = tail call double @llvm.fabs.f64(double %handler_result28), !dbg !849
  %94 = fdiv double %93, %handler_result28, !dbg !851
  %95 = tail call double @pow(double noundef %93, double noundef 0x3FD5555555555555) #8, !dbg !852
  %96 = fmul double %95, %94, !dbg !853
  call void @llvm.dbg.value(metadata double %96, metadata !405, metadata !DIExpression()), !dbg !831
  %97 = tail call double @sqrt(double noundef %handler_result27) #8, !dbg !854
  %handler_result29 = call double @fSubHandlerDouble(double %86, double %97), !dbg !855
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !407, metadata !DIExpression()), !dbg !850
  %98 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !855
  %99 = fdiv double %98, %handler_result29, !dbg !856
  %100 = tail call double @pow(double noundef %98, double noundef 0x3FD5555555555555) #8, !dbg !857
  %101 = fmul double %100, %99, !dbg !858
  call void @llvm.dbg.value(metadata double %101, metadata !406, metadata !DIExpression()), !dbg !831
  br label %112, !dbg !859

102:                                              ; preds = %71
  %103 = fneg double %79, !dbg !860
  %104 = fmul double %79, %103, !dbg !861
  %105 = fmul double %79, %104, !dbg !862
  %106 = tail call double @sqrt(double noundef %105) #8, !dbg !863
  %107 = fdiv double %86, %106, !dbg !864
  %handler_result139 = call double @callHandler(i32 5, double %107, double %107), !dbg !865
  call void @llvm.dbg.value(metadata double %handler_result139, metadata !410, metadata !DIExpression()), !dbg !866
  %108 = tail call double @sqrt(double noundef %103) #8, !dbg !865
  %109 = fmul double %108, 2.000000e+00, !dbg !867
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result139, double 0x402921FB54442D18), !dbg !868
  %110 = fdiv double %handler_result30, 3.000000e+00, !dbg !868
  %handler_result140 = call double @callHandler(i32 2, double %110, double %110), !dbg !869
  %111 = fmul double %109, %handler_result140, !dbg !869
  call void @llvm.dbg.value(metadata double %111, metadata !405, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !406, metadata !DIExpression()), !dbg !831
  br label %112

112:                                              ; preds = %102, %91
  %113 = phi double [ %101, %91 ], [ 0.000000e+00, %102 ], !dbg !870
  %114 = phi double [ %96, %91 ], [ %111, %102 ], !dbg !870
  call void @llvm.dbg.value(metadata double %114, metadata !405, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata double %113, metadata !406, metadata !DIExpression()), !dbg !831
  %handler_result31 = call double @fAddHandlerDouble(double %113, double %114), !dbg !871
  %115 = fdiv double %handler_result20, 3.000000e+00, !dbg !871
  %handler_result32 = call double @fSubHandlerDouble(double %handler_result31, double %115), !dbg !872
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !755, metadata !DIExpression()), !dbg !768
  %116 = fcmp olt double %handler_result32, 0.000000e+00, !dbg !872
  br i1 %116, label %213, label %218, !dbg !874

117:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 %17, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !875
  call void @llvm.dbg.value(metadata double %15, metadata !192, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !194, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata double 2.500000e+01, metadata !195, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata double 6.250000e+02, metadata !196, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata double 1.562500e+04, metadata !197, metadata !DIExpression()), !dbg !875
  %118 = tail call double @sqrt(double noundef %15) #8, !dbg !877
  %119 = fmul double %118, 2.000000e+00, !dbg !878
  call void @llvm.dbg.value(metadata double %119, metadata !198, metadata !DIExpression()), !dbg !875
  %120 = fmul double %119, 1.600000e+01, !dbg !879
  call void @llvm.dbg.value(metadata double %120, metadata !199, metadata !DIExpression()), !dbg !875
  %121 = fmul double %120, %120, !dbg !880
  call void @llvm.dbg.value(metadata double %121, metadata !200, metadata !DIExpression()), !dbg !875
  %122 = fmul double %120, %121, !dbg !881
  call void @llvm.dbg.value(metadata double %122, metadata !201, metadata !DIExpression()), !dbg !875
  %123 = fmul double %120, %122, !dbg !882
  call void @llvm.dbg.value(metadata double %123, metadata !202, metadata !DIExpression()), !dbg !875
  %124 = fmul double %120, %123, !dbg !883
  call void @llvm.dbg.value(metadata double %124, metadata !203, metadata !DIExpression()), !dbg !875
  %125 = fmul double %15, 2.000000e+00, !dbg !884
  %126 = fmul double %119, 5.000000e+00, !dbg !885
  %handler_result33 = call double @fSubHandlerDouble(double %126, double %125), !dbg !886
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double -3.250000e+00), !dbg !887
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !193, metadata !DIExpression()), !dbg !875
  %127 = fdiv double 3.500000e+01, %120, !dbg !887
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result34, double %127), !dbg !888
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !193, metadata !DIExpression()), !dbg !875
  %128 = fdiv double 9.960000e+02, %121, !dbg !888
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result35, double %128), !dbg !889
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !193, metadata !DIExpression()), !dbg !875
  %129 = fdiv double 3.910000e+04, %122, !dbg !889
  %handler_result37 = call double @fSubHandlerDouble(double %handler_result36, double %129), !dbg !890
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !875
  %130 = fdiv double 0x413C2AB000000000, %123, !dbg !890
  %handler_result38 = call double @fSubHandlerDouble(double %handler_result37, double %130), !dbg !891
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !193, metadata !DIExpression()), !dbg !875
  %131 = fdiv double 0x41978EC580000000, %124, !dbg !891
  %handler_result39 = call double @fSubHandlerDouble(double %handler_result38, double %131), !dbg !892
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !193, metadata !DIExpression()), !dbg !875
  br label %220, !dbg !892

132:                                              ; preds = %26
  %133 = icmp ult i32 %17, 70, !dbg !893
  br i1 %133, label %134, label %210, !dbg !894

134:                                              ; preds = %132
  %135 = sitofp i32 %17 to double, !dbg !895
  %136 = fmul double %135, 1.700000e+00, !dbg !896
  %137 = tail call double @sqrt(double noundef %15) #8, !dbg !897
  %138 = fmul double %137, 2.000000e+00, !dbg !898
  %139 = fcmp ogt double %136, %138, !dbg !899
  br i1 %139, label %140, label %173, !dbg !900

140:                                              ; preds = %134
  %141 = mul i32 %14, %14, !dbg !901
  %142 = sitofp i32 %141 to double, !dbg !902
  call void @llvm.dbg.value(metadata double %142, metadata !759, metadata !DIExpression()), !dbg !903
  %handler_result40 = call double @fAddHandlerDouble(double %142, double -1.000000e+00), !dbg !904
  %143 = fmul double %handler_result40, %handler_result40, !dbg !904
  call void @llvm.dbg.value(metadata double %143, metadata !765, metadata !DIExpression()), !dbg !903
  %144 = fmul double %15, %15, !dbg !905
  call void @llvm.dbg.value(metadata double %144, metadata !766, metadata !DIExpression()), !dbg !903
  %145 = fmul double %144, %144, !dbg !906
  call void @llvm.dbg.value(metadata double %145, metadata !767, metadata !DIExpression()), !dbg !903
  %146 = fmul double %144, 5.000000e-01, !dbg !907
  %147 = fdiv double %146, %handler_result40, !dbg !908
  %handler_result41 = call double @fAddHandlerDouble(double %147, double %142), !dbg !909
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !755, metadata !DIExpression()), !dbg !768
  %148 = fmul double %142, 5.000000e+00, !dbg !909
  %handler_result42 = call double @fAddHandlerDouble(double %148, double 7.000000e+00), !dbg !910
  %149 = fmul double %145, %handler_result42, !dbg !910
  %150 = fmul double %143, 3.200000e+01, !dbg !911
  %151 = fmul double %handler_result40, %150, !dbg !912
  %handler_result43 = call double @fAddHandlerDouble(double %142, double -4.000000e+00), !dbg !913
  %152 = fmul double %handler_result43, %151, !dbg !913
  %153 = fdiv double %149, %152, !dbg !914
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result41, double %153), !dbg !915
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !755, metadata !DIExpression()), !dbg !768
  %154 = fmul double %142, 9.000000e+00, !dbg !915
  %155 = fmul double %154, %142, !dbg !916
  %156 = fmul double %142, 5.800000e+01, !dbg !917
  %handler_result45 = call double @fAddHandlerDouble(double %156, double %155), !dbg !918
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 2.900000e+01), !dbg !919
  %157 = fmul double %145, %handler_result46, !dbg !919
  %158 = fmul double %144, %157, !dbg !920
  %159 = fmul double %143, 6.400000e+01, !dbg !921
  %160 = fmul double %143, %159, !dbg !922
  %161 = fmul double %handler_result40, %160, !dbg !923
  %162 = fmul double %handler_result43, %161, !dbg !924
  %handler_result47 = call double @fAddHandlerDouble(double %142, double -9.000000e+00), !dbg !925
  %163 = fmul double %handler_result47, %162, !dbg !925
  %164 = fdiv double %158, %163, !dbg !926
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result44, double %164), !dbg !927
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !755, metadata !DIExpression()), !dbg !768
  %165 = fmul double %135, 1.400000e+00, !dbg !927
  %166 = tail call double @sqrt(double noundef %15) #8, !dbg !929
  %167 = fmul double %166, 2.000000e+00, !dbg !930
  %168 = fcmp olt double %165, %167, !dbg !931
  br i1 %168, label %169, label %220, !dbg !932

169:                                              ; preds = %140
  %170 = add nsw i32 %17, -1, !dbg !933
  %171 = tail call fastcc double @asymptotic(i32 noundef %170, double noundef %15), !dbg !935
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %171), !dbg !936
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !755, metadata !DIExpression()), !dbg !768
  %172 = fmul double %handler_result49, 5.000000e-01, !dbg !936
  call void @llvm.dbg.value(metadata double %172, metadata !755, metadata !DIExpression()), !dbg !768
  br label %220, !dbg !937

173:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i32 %17, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !938
  call void @llvm.dbg.value(metadata double %15, metadata !192, metadata !DIExpression()), !dbg !938
  %174 = shl nuw nsw i32 %17, 1, !dbg !940
  %175 = add nsw i32 %174, -1, !dbg !941
  %176 = sitofp i32 %175 to double, !dbg !942
  call void @llvm.dbg.value(metadata double %176, metadata !194, metadata !DIExpression()), !dbg !938
  %177 = fmul double %176, %176, !dbg !943
  call void @llvm.dbg.value(metadata double %177, metadata !195, metadata !DIExpression()), !dbg !938
  %178 = fmul double %177, %177, !dbg !944
  call void @llvm.dbg.value(metadata double %178, metadata !196, metadata !DIExpression()), !dbg !938
  %179 = fmul double %177, %178, !dbg !945
  call void @llvm.dbg.value(metadata double %179, metadata !197, metadata !DIExpression()), !dbg !938
  %180 = tail call double @sqrt(double noundef %15) #8, !dbg !946
  %181 = fmul double %180, 2.000000e+00, !dbg !947
  call void @llvm.dbg.value(metadata double %181, metadata !198, metadata !DIExpression()), !dbg !938
  %182 = fmul double %181, 1.600000e+01, !dbg !948
  call void @llvm.dbg.value(metadata double %182, metadata !199, metadata !DIExpression()), !dbg !938
  %183 = fmul double %182, %182, !dbg !949
  call void @llvm.dbg.value(metadata double %183, metadata !200, metadata !DIExpression()), !dbg !938
  %184 = fmul double %182, %183, !dbg !950
  call void @llvm.dbg.value(metadata double %184, metadata !201, metadata !DIExpression()), !dbg !938
  %185 = fmul double %182, %184, !dbg !951
  call void @llvm.dbg.value(metadata double %185, metadata !202, metadata !DIExpression()), !dbg !938
  %186 = fmul double %182, %185, !dbg !952
  call void @llvm.dbg.value(metadata double %186, metadata !203, metadata !DIExpression()), !dbg !938
  %187 = fmul double %15, 2.000000e+00, !dbg !953
  %188 = fmul double %181, %176, !dbg !954
  %handler_result50 = call double @fSubHandlerDouble(double %188, double %187), !dbg !955
  %handler_result51 = call double @fAddHandlerDouble(double %177, double 1.000000e+00), !dbg !956
  %189 = fmul double %handler_result51, 1.250000e-01, !dbg !956
  %handler_result52 = call double @fSubHandlerDouble(double %handler_result50, double %189), !dbg !957
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !193, metadata !DIExpression()), !dbg !938
  %190 = fmul double %176, 2.500000e-01, !dbg !957
  %handler_result53 = call double @fAddHandlerDouble(double %177, double 3.000000e+00), !dbg !958
  %191 = fmul double %190, %handler_result53, !dbg !958
  %192 = fdiv double %191, %182, !dbg !959
  %handler_result54 = call double @fSubHandlerDouble(double %handler_result52, double %192), !dbg !960
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !193, metadata !DIExpression()), !dbg !938
  %193 = fmul double %178, 5.000000e+00, !dbg !960
  %194 = fmul double %177, 3.400000e+01, !dbg !961
  %handler_result55 = call double @fAddHandlerDouble(double %194, double %193), !dbg !962
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 9.000000e+00), !dbg !963
  %195 = fmul double %handler_result56, 2.500000e-01, !dbg !963
  %196 = fdiv double %195, %183, !dbg !964
  %handler_result57 = call double @fSubHandlerDouble(double %handler_result54, double %196), !dbg !965
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !193, metadata !DIExpression()), !dbg !938
  %197 = fmul double %178, 3.300000e+01, !dbg !965
  %198 = fmul double %177, 4.100000e+02, !dbg !966
  %handler_result58 = call double @fAddHandlerDouble(double %198, double %197), !dbg !967
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double 4.050000e+02), !dbg !968
  %199 = fmul double %190, %handler_result59, !dbg !968
  %200 = fdiv double %199, %184, !dbg !969
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result57, double %200), !dbg !970
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !193, metadata !DIExpression()), !dbg !938
  %201 = fmul double %179, 6.300000e+01, !dbg !970
  %202 = fmul double %178, 1.260000e+03, !dbg !971
  %handler_result61 = call double @fAddHandlerDouble(double %202, double %201), !dbg !972
  %203 = fmul double %177, 2.943000e+03, !dbg !972
  %handler_result62 = call double @fAddHandlerDouble(double %203, double %handler_result61), !dbg !973
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double 4.860000e+02), !dbg !974
  %204 = fdiv double %handler_result63, %185, !dbg !974
  %handler_result64 = call double @fSubHandlerDouble(double %handler_result60, double %204), !dbg !975
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !193, metadata !DIExpression()), !dbg !938
  %205 = fmul double %179, 5.270000e+02, !dbg !975
  %206 = fmul double %178, 1.561700e+04, !dbg !976
  %handler_result65 = call double @fAddHandlerDouble(double %206, double %205), !dbg !977
  %207 = fmul double %177, 6.900100e+04, !dbg !977
  %handler_result66 = call double @fAddHandlerDouble(double %207, double %handler_result65), !dbg !978
  %handler_result67 = call double @fAddHandlerDouble(double %handler_result66, double 4.160700e+04), !dbg !979
  %208 = fmul double %handler_result67, %176, !dbg !979
  %209 = fdiv double %208, %186, !dbg !980
  %handler_result68 = call double @fSubHandlerDouble(double %handler_result64, double %209)
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !193, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !755, metadata !DIExpression()), !dbg !768
  br label %220

210:                                              ; preds = %132
  %211 = mul i32 %14, %14, !dbg !981
  %212 = sitofp i32 %211 to double, !dbg !982
  br label %220, !dbg !983

213:                                              ; preds = %112
  %214 = tail call double @sqrt(double noundef %15) #8, !dbg !984
  %215 = fcmp ogt double %214, 0x3FD3333333333334, !dbg !985
  br i1 %215, label %216, label %218, !dbg !986

216:                                              ; preds = %213
  %217 = tail call fastcc double @asymptotic(i32 noundef 2, double noundef %15), !dbg !987
  br label %220, !dbg !988

218:                                              ; preds = %213, %112
  %219 = tail call double @llvm.fabs.f64(double %handler_result32), !dbg !989
  %handler_result69 = call double @fAddHandlerDouble(double %219, double 9.000000e+00), !dbg !990
  br label %220, !dbg !990

220:                                              ; preds = %218, %216, %210, %173, %169, %140, %117, %54, %51, %35, %29
  %221 = phi double [ %212, %210 ], [ %217, %216 ], [ %handler_result69, %218 ], [ %handler_result39, %117 ], [ %handler_result12, %51 ], [ %handler_result19, %54 ], [ %handler_result3, %29 ], [ %handler_result10, %35 ], [ %handler_result68, %173 ], [ %172, %169 ], [ %handler_result48, %140 ], !dbg !768
  tail call void @llvm.dbg.value(metadata double %221, metadata !720, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %221, metadata !719, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %221, metadata !717, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 2.500000e-02, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !711, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !721
  %222 = icmp eq i32 %16, 0
  %223 = fneg double %15
  %224 = sitofp i32 %17 to float
  %225 = fpext float %224 to double
  %226 = fmul double %225, 5.000000e-01
  %handler_result70 = call double @fAddHandlerDouble(double %226, double -5.000000e-01)
  %227 = fptosi double %handler_result70 to i32
  %228 = icmp sgt i32 %227, 0
  %229 = fmul double %15, %15
  %230 = sitofp i32 %17 to double
  %231 = mul i32 %14, %14
  %232 = sitofp i32 %231 to double
  %233 = icmp ugt i32 %17, 3
  %234 = lshr i32 %17, 1
  %235 = add nsw i32 %234, -2
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1
  %237 = fmul double %230, 1.000000e-02
  %238 = tail call double @llvm.fabs.f64(double %221)
  %239 = fmul double %237, %238
  %handler_result71 = call double @fAddHandlerDouble(double %239, double 3.000000e+00)
  %240 = icmp ugt i32 %17, 10
  %241 = fmul double %230, 1.500000e+00
  %242 = add i32 %227, -1, !dbg !991
  %243 = add nsw i32 %234, -1, !dbg !991
  %244 = and i32 %227, 1
  %245 = icmp eq i32 %242, 0
  %246 = and i32 %227, 2147483646
  %247 = icmp eq i32 %244, 0
  %248 = and i32 %243, 1
  %249 = icmp eq i32 %235, 0
  %250 = and i32 %243, -2
  %251 = icmp eq i32 %248, 0
  %252 = and i32 %227, 1
  %253 = icmp eq i32 %242, 0
  %254 = and i32 %227, 2147483646
  %255 = icmp eq i32 %252, 0
  %256 = and i32 %243, 1
  %257 = icmp eq i32 %235, 0
  %258 = and i32 %243, -2
  %259 = icmp eq i32 %256, 0
  br label %260, !dbg !991

260:                                              ; preds = %475, %220
  %261 = phi double [ %221, %220 ], [ %handler_result138, %475 ]
  %262 = phi double [ 2.500000e-02, %220 ], [ %481, %475 ]
  %263 = phi i32 [ 0, %220 ], [ %479, %475 ]
  %264 = phi i32 [ 0, %220 ], [ %472, %475 ]
  tail call void @llvm.dbg.value(metadata double %261, metadata !720, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %262, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %263, metadata !711, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %264, metadata !709, metadata !DIExpression()), !dbg !721
  %handler_result72 = call double @fAddHandlerDouble(double %261, double 1.000000e-03), !dbg !992
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !712, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, metadata !708, metadata !DIExpression()), !dbg !721
  br i1 %222, label %265, label %310, !dbg !992

265:                                              ; preds = %260
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !994, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double undef, metadata !997, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !998, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 50, metadata !999, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1003, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1000, metadata !DIExpression()), !dbg !1004
  br i1 %233, label %266, label %277, !dbg !1007

266:                                              ; preds = %265
  br i1 %249, label %267, label %279, !dbg !1007

267:                                              ; preds = %279, %266
  %268 = phi double [ undef, %266 ], [ %292, %279 ]
  %269 = phi double [ 0.000000e+00, %266 ], [ %292, %279 ]
  %270 = phi i32 [ 0, %266 ], [ %288, %279 ]
  br i1 %251, label %277, label %271, !dbg !1007

271:                                              ; preds = %267
  tail call void @llvm.dbg.value(metadata double %269, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %270, metadata !1002, metadata !DIExpression()), !dbg !1004
  %272 = add nuw nsw i32 %270, 1, !dbg !1009
  %273 = sitofp i32 %272 to double, !dbg !1011
  %274 = fmul double %273, 4.000000e+00, !dbg !1012
  %275 = fmul double %274, %273, !dbg !1013
  %handler_result73 = call double @fSubHandlerDouble(double %handler_result72, double %275), !dbg !1014
  %handler_result74 = call double @fSubHandlerDouble(double %handler_result73, double %269), !dbg !1015
  %276 = fdiv double %229, %handler_result74, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %276, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %272, metadata !1002, metadata !DIExpression()), !dbg !1004
  br label %277, !dbg !1016

277:                                              ; preds = %271, %267, %265
  %278 = phi double [ 0.000000e+00, %265 ], [ %268, %267 ], [ %276, %271 ], !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1001, metadata !DIExpression()), !dbg !1004
  br label %295, !dbg !1016

279:                                              ; preds = %279, %266
  %280 = phi double [ %292, %279 ], [ 0.000000e+00, %266 ]
  %281 = phi i32 [ %288, %279 ], [ 0, %266 ]
  %282 = phi i32 [ %293, %279 ], [ 0, %266 ]
  tail call void @llvm.dbg.value(metadata double %280, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %281, metadata !1002, metadata !DIExpression()), !dbg !1004
  %283 = or disjoint i32 %281, 1, !dbg !1009
  %284 = sitofp i32 %283 to double, !dbg !1011
  %285 = fmul double %284, 4.000000e+00, !dbg !1012
  %286 = fmul double %285, %284, !dbg !1013
  %handler_result75 = call double @fSubHandlerDouble(double %handler_result72, double %286), !dbg !1014
  %handler_result76 = call double @fSubHandlerDouble(double %handler_result75, double %280), !dbg !1015
  %287 = fdiv double %229, %handler_result76, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %287, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %283, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %287, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %283, metadata !1002, metadata !DIExpression()), !dbg !1004
  %288 = add nuw nsw i32 %281, 2, !dbg !1009
  %289 = sitofp i32 %288 to double, !dbg !1011
  %290 = fmul double %289, 4.000000e+00, !dbg !1012
  %291 = fmul double %290, %289, !dbg !1013
  %handler_result77 = call double @fSubHandlerDouble(double %handler_result72, double %291), !dbg !1014
  %handler_result78 = call double @fSubHandlerDouble(double %handler_result77, double %287), !dbg !1015
  %292 = fdiv double %229, %handler_result78, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %292, metadata !1000, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %288, metadata !1002, metadata !DIExpression()), !dbg !1004
  %293 = add i32 %282, 2, !dbg !1007
  %294 = icmp eq i32 %293, %250, !dbg !1007
  br i1 %294, label %267, label %279, !dbg !1007, !llvm.loop !1018

295:                                              ; preds = %295, %277
  %296 = phi i32 [ 0, %277 ], [ %308, %295 ]
  %297 = phi double [ 0.000000e+00, %277 ], [ %307, %295 ]
  tail call void @llvm.dbg.value(metadata i32 %296, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %297, metadata !1001, metadata !DIExpression()), !dbg !1004
  %298 = sub nuw nsw i32 50, %296, !dbg !1020
  %299 = sitofp i32 %298 to double, !dbg !1022
  %300 = fmul double %299, 2.000000e+00, !dbg !1023
  %handler_result79 = call double @fAddHandlerDouble(double %300, double %230), !dbg !1024
  %301 = fmul double %handler_result79, %handler_result79, !dbg !1024
  %handler_result80 = call double @fSubHandlerDouble(double %handler_result72, double %301), !dbg !1025
  %handler_result81 = call double @fSubHandlerDouble(double %handler_result80, double %297), !dbg !1026
  %302 = fdiv double %229, %handler_result81, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %302, metadata !1001, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %296, metadata !1002, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %296, metadata !1002, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %302, metadata !1001, metadata !DIExpression()), !dbg !1004
  %303 = sub nsw i32 49, %296, !dbg !1020
  %304 = sitofp i32 %303 to double, !dbg !1022
  %305 = fmul double %304, 2.000000e+00, !dbg !1023
  %handler_result82 = call double @fAddHandlerDouble(double %305, double %230), !dbg !1024
  %306 = fmul double %handler_result82, %handler_result82, !dbg !1024
  %handler_result83 = call double @fSubHandlerDouble(double %handler_result72, double %306), !dbg !1025
  %handler_result84 = call double @fSubHandlerDouble(double %handler_result83, double %302), !dbg !1026
  %307 = fdiv double %229, %handler_result84, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %307, metadata !1001, metadata !DIExpression()), !dbg !1004
  %308 = add nuw nsw i32 %296, 2, !dbg !1027
  tail call void @llvm.dbg.value(metadata i32 %308, metadata !1002, metadata !DIExpression()), !dbg !1004
  %309 = icmp eq i32 %308, 50, !dbg !1028
  br i1 %309, label %354, label %295, !dbg !1016, !llvm.loop !1029

310:                                              ; preds = %260
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1031, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double undef, metadata !1034, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !1035, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1036, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !1040, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %223, metadata !1037, metadata !DIExpression()), !dbg !1041
  br i1 %228, label %311, label %321, !dbg !1043

311:                                              ; preds = %310
  br i1 %245, label %312, label %323, !dbg !1043

312:                                              ; preds = %323, %311
  %313 = phi double [ undef, %311 ], [ %335, %323 ]
  %314 = phi double [ %223, %311 ], [ %335, %323 ]
  %315 = phi i32 [ 0, %311 ], [ %336, %323 ]
  br i1 %247, label %321, label %316, !dbg !1043

316:                                              ; preds = %312
  tail call void @llvm.dbg.value(metadata double %314, metadata !1037, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %315, metadata !1039, metadata !DIExpression()), !dbg !1041
  %317 = sitofp i32 %315 to double, !dbg !1045
  %318 = fmul double %317, 2.000000e+00, !dbg !1047
  %handler_result85 = call double @fAddHandlerDouble(double %318, double 1.000000e+00), !dbg !1048
  %319 = fmul double %handler_result85, %handler_result85, !dbg !1048
  %handler_result86 = call double @fSubHandlerDouble(double %handler_result72, double %319), !dbg !1049
  %handler_result87 = call double @fSubHandlerDouble(double %handler_result86, double %314), !dbg !1050
  %320 = fdiv double %229, %handler_result87, !dbg !1050
  tail call void @llvm.dbg.value(metadata double %320, metadata !1037, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %315, metadata !1039, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1041
  br label %321, !dbg !1051

321:                                              ; preds = %316, %312, %310
  %322 = phi double [ %223, %310 ], [ %313, %312 ], [ %320, %316 ], !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1038, metadata !DIExpression()), !dbg !1041
  br label %339, !dbg !1051

323:                                              ; preds = %323, %311
  %324 = phi double [ %335, %323 ], [ %223, %311 ]
  %325 = phi i32 [ %336, %323 ], [ 0, %311 ]
  %326 = phi i32 [ %337, %323 ], [ 0, %311 ]
  tail call void @llvm.dbg.value(metadata double %324, metadata !1037, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %325, metadata !1039, metadata !DIExpression()), !dbg !1041
  %327 = sitofp i32 %325 to double, !dbg !1045
  %328 = fmul double %327, 2.000000e+00, !dbg !1047
  %handler_result88 = call double @fAddHandlerDouble(double %328, double 1.000000e+00), !dbg !1048
  %329 = fmul double %handler_result88, %handler_result88, !dbg !1048
  %handler_result89 = call double @fSubHandlerDouble(double %handler_result72, double %329), !dbg !1049
  %handler_result90 = call double @fSubHandlerDouble(double %handler_result89, double %324), !dbg !1050
  %330 = fdiv double %229, %handler_result90, !dbg !1050
  tail call void @llvm.dbg.value(metadata double %330, metadata !1037, metadata !DIExpression()), !dbg !1041
  %331 = or disjoint i32 %325, 1, !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %331, metadata !1039, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %330, metadata !1037, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %331, metadata !1039, metadata !DIExpression()), !dbg !1041
  %332 = sitofp i32 %331 to double, !dbg !1045
  %333 = fmul double %332, 2.000000e+00, !dbg !1047
  %handler_result91 = call double @fAddHandlerDouble(double %333, double 1.000000e+00), !dbg !1048
  %334 = fmul double %handler_result91, %handler_result91, !dbg !1048
  %handler_result92 = call double @fSubHandlerDouble(double %handler_result72, double %334), !dbg !1049
  %handler_result93 = call double @fSubHandlerDouble(double %handler_result92, double %330), !dbg !1050
  %335 = fdiv double %229, %handler_result93, !dbg !1050
  tail call void @llvm.dbg.value(metadata double %335, metadata !1037, metadata !DIExpression()), !dbg !1041
  %336 = add nuw nsw i32 %325, 2, !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %336, metadata !1039, metadata !DIExpression()), !dbg !1041
  %337 = add i32 %326, 2, !dbg !1043
  %338 = icmp eq i32 %337, %246, !dbg !1043
  br i1 %338, label %312, label %323, !dbg !1043, !llvm.loop !1054

339:                                              ; preds = %339, %321
  %340 = phi i32 [ 0, %321 ], [ %352, %339 ]
  %341 = phi double [ 0.000000e+00, %321 ], [ %351, %339 ]
  tail call void @llvm.dbg.value(metadata i32 %340, metadata !1039, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %341, metadata !1038, metadata !DIExpression()), !dbg !1041
  %342 = sub nuw nsw i32 50, %340, !dbg !1056
  %343 = sitofp i32 %342 to double, !dbg !1058
  %344 = fmul double %343, 2.000000e+00, !dbg !1059
  %handler_result94 = call double @fAddHandlerDouble(double %344, double %230), !dbg !1060
  %345 = fmul double %handler_result94, %handler_result94, !dbg !1060
  %handler_result95 = call double @fSubHandlerDouble(double %handler_result72, double %345), !dbg !1061
  %handler_result96 = call double @fSubHandlerDouble(double %handler_result95, double %341), !dbg !1062
  %346 = fdiv double %229, %handler_result96, !dbg !1062
  tail call void @llvm.dbg.value(metadata double %346, metadata !1038, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %340, metadata !1039, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %340, metadata !1039, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %346, metadata !1038, metadata !DIExpression()), !dbg !1041
  %347 = sub nsw i32 49, %340, !dbg !1056
  %348 = sitofp i32 %347 to double, !dbg !1058
  %349 = fmul double %348, 2.000000e+00, !dbg !1059
  %handler_result97 = call double @fAddHandlerDouble(double %349, double %230), !dbg !1060
  %350 = fmul double %handler_result97, %handler_result97, !dbg !1060
  %handler_result98 = call double @fSubHandlerDouble(double %handler_result72, double %350), !dbg !1061
  %handler_result99 = call double @fSubHandlerDouble(double %handler_result98, double %346), !dbg !1062
  %351 = fdiv double %229, %handler_result99, !dbg !1062
  tail call void @llvm.dbg.value(metadata double %351, metadata !1038, metadata !DIExpression()), !dbg !1041
  %352 = add nuw nsw i32 %340, 2, !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %352, metadata !1039, metadata !DIExpression()), !dbg !1041
  %353 = icmp eq i32 %352, 50, !dbg !1064
  br i1 %353, label %354, label %339, !dbg !1051, !llvm.loop !1065

354:                                              ; preds = %339, %295
  %355 = phi double [ %278, %295 ], [ %322, %339 ]
  %356 = phi double [ %307, %295 ], [ %351, %339 ]
  %handler_result100 = call double @fAddHandlerDouble(double %355, double %232), !dbg !1067
  %handler_result101 = call double @fAddHandlerDouble(double %handler_result100, double %356), !dbg !1067
  %handler_result102 = call double @fSubHandlerDouble(double %handler_result101, double %handler_result72), !dbg !1068
  tail call void @llvm.dbg.value(metadata double %handler_result102, metadata !715, metadata !DIExpression()), !dbg !721
  br label %357, !dbg !1068

357:                                              ; preds = %460, %354
  %358 = phi i32 [ 0, %354 ], [ %461, %460 ], !dbg !1069
  %359 = phi double [ %handler_result72, %354 ], [ %361, %460 ], !dbg !1069
  %360 = phi double [ %handler_result102, %354 ], [ %handler_result132, %460 ], !dbg !1069
  %361 = phi double [ %261, %354 ], [ %handler_result135, %460 ], !dbg !721
  tail call void @llvm.dbg.value(metadata double %361, metadata !719, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %360, metadata !715, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %359, metadata !712, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %358, metadata !708, metadata !DIExpression()), !dbg !721
  br i1 %222, label %362, label %407, !dbg !1070

362:                                              ; preds = %357
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !994, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double undef, metadata !997, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double %361, metadata !998, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 50, metadata !999, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1003, metadata !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1000, metadata !DIExpression()), !dbg !1074
  br i1 %233, label %363, label %374, !dbg !1077

363:                                              ; preds = %362
  br i1 %257, label %364, label %376, !dbg !1077

364:                                              ; preds = %376, %363
  %365 = phi double [ undef, %363 ], [ %389, %376 ]
  %366 = phi double [ 0.000000e+00, %363 ], [ %389, %376 ]
  %367 = phi i32 [ 0, %363 ], [ %385, %376 ]
  br i1 %259, label %374, label %368, !dbg !1077

368:                                              ; preds = %364
  tail call void @llvm.dbg.value(metadata double %366, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !1002, metadata !DIExpression()), !dbg !1074
  %369 = add nuw nsw i32 %367, 1, !dbg !1078
  %370 = sitofp i32 %369 to double, !dbg !1079
  %371 = fmul double %370, 4.000000e+00, !dbg !1080
  %372 = fmul double %371, %370, !dbg !1081
  %handler_result103 = call double @fSubHandlerDouble(double %361, double %372), !dbg !1082
  %handler_result104 = call double @fSubHandlerDouble(double %handler_result103, double %366), !dbg !1083
  %373 = fdiv double %229, %handler_result104, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %373, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %369, metadata !1002, metadata !DIExpression()), !dbg !1074
  br label %374, !dbg !1084

374:                                              ; preds = %368, %364, %362
  %375 = phi double [ 0.000000e+00, %362 ], [ %365, %364 ], [ %373, %368 ], !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1001, metadata !DIExpression()), !dbg !1074
  br label %392, !dbg !1084

376:                                              ; preds = %376, %363
  %377 = phi double [ %389, %376 ], [ 0.000000e+00, %363 ]
  %378 = phi i32 [ %385, %376 ], [ 0, %363 ]
  %379 = phi i32 [ %390, %376 ], [ 0, %363 ]
  tail call void @llvm.dbg.value(metadata double %377, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %378, metadata !1002, metadata !DIExpression()), !dbg !1074
  %380 = or disjoint i32 %378, 1, !dbg !1078
  %381 = sitofp i32 %380 to double, !dbg !1079
  %382 = fmul double %381, 4.000000e+00, !dbg !1080
  %383 = fmul double %382, %381, !dbg !1081
  %handler_result105 = call double @fSubHandlerDouble(double %361, double %383), !dbg !1082
  %handler_result106 = call double @fSubHandlerDouble(double %handler_result105, double %377), !dbg !1083
  %384 = fdiv double %229, %handler_result106, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %384, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !1002, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double %384, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !1002, metadata !DIExpression()), !dbg !1074
  %385 = add nuw nsw i32 %378, 2, !dbg !1078
  %386 = sitofp i32 %385 to double, !dbg !1079
  %387 = fmul double %386, 4.000000e+00, !dbg !1080
  %388 = fmul double %387, %386, !dbg !1081
  %handler_result107 = call double @fSubHandlerDouble(double %361, double %388), !dbg !1082
  %handler_result108 = call double @fSubHandlerDouble(double %handler_result107, double %384), !dbg !1083
  %389 = fdiv double %229, %handler_result108, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %389, metadata !1000, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !1002, metadata !DIExpression()), !dbg !1074
  %390 = add i32 %379, 2, !dbg !1077
  %391 = icmp eq i32 %390, %258, !dbg !1077
  br i1 %391, label %364, label %376, !dbg !1077, !llvm.loop !1085

392:                                              ; preds = %392, %374
  %393 = phi i32 [ 0, %374 ], [ %405, %392 ]
  %394 = phi double [ 0.000000e+00, %374 ], [ %404, %392 ]
  tail call void @llvm.dbg.value(metadata i32 %393, metadata !1002, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata double %394, metadata !1001, metadata !DIExpression()), !dbg !1074
  %395 = sub nuw nsw i32 50, %393, !dbg !1087
  %396 = sitofp i32 %395 to double, !dbg !1088
  %397 = fmul double %396, 2.000000e+00, !dbg !1089
  %handler_result109 = call double @fAddHandlerDouble(double %397, double %230), !dbg !1090
  %398 = fmul double %handler_result109, %handler_result109, !dbg !1090
  %handler_result110 = call double @fSubHandlerDouble(double %361, double %398), !dbg !1091
  %handler_result111 = call double @fSubHandlerDouble(double %handler_result110, double %394), !dbg !1092
  %399 = fdiv double %229, %handler_result111, !dbg !1092
  tail call void @llvm.dbg.value(metadata double %399, metadata !1001, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %393, metadata !1002, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1074
  tail call void @llvm.dbg.value(metadata i32 %393, metadata !1002, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1074
  tail call void @llvm.dbg.value(metadata double %399, metadata !1001, metadata !DIExpression()), !dbg !1074
  %400 = sub nsw i32 49, %393, !dbg !1087
  %401 = sitofp i32 %400 to double, !dbg !1088
  %402 = fmul double %401, 2.000000e+00, !dbg !1089
  %handler_result112 = call double @fAddHandlerDouble(double %402, double %230), !dbg !1090
  %403 = fmul double %handler_result112, %handler_result112, !dbg !1090
  %handler_result113 = call double @fSubHandlerDouble(double %361, double %403), !dbg !1091
  %handler_result114 = call double @fSubHandlerDouble(double %handler_result113, double %399), !dbg !1092
  %404 = fdiv double %229, %handler_result114, !dbg !1092
  tail call void @llvm.dbg.value(metadata double %404, metadata !1001, metadata !DIExpression()), !dbg !1074
  %405 = add nuw nsw i32 %393, 2, !dbg !1093
  tail call void @llvm.dbg.value(metadata i32 %405, metadata !1002, metadata !DIExpression()), !dbg !1074
  %406 = icmp eq i32 %405, 50, !dbg !1094
  br i1 %406, label %451, label %392, !dbg !1084, !llvm.loop !1095

407:                                              ; preds = %357
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1031, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double undef, metadata !1034, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double %361, metadata !1035, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 50, metadata !1036, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !1040, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double %223, metadata !1037, metadata !DIExpression()), !dbg !1097
  br i1 %228, label %408, label %418, !dbg !1099

408:                                              ; preds = %407
  br i1 %253, label %409, label %420, !dbg !1099

409:                                              ; preds = %420, %408
  %410 = phi double [ undef, %408 ], [ %432, %420 ]
  %411 = phi double [ %223, %408 ], [ %432, %420 ]
  %412 = phi i32 [ 0, %408 ], [ %433, %420 ]
  br i1 %255, label %418, label %413, !dbg !1099

413:                                              ; preds = %409
  tail call void @llvm.dbg.value(metadata double %411, metadata !1037, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %412, metadata !1039, metadata !DIExpression()), !dbg !1097
  %414 = sitofp i32 %412 to double, !dbg !1100
  %415 = fmul double %414, 2.000000e+00, !dbg !1101
  %handler_result115 = call double @fAddHandlerDouble(double %415, double 1.000000e+00), !dbg !1102
  %416 = fmul double %handler_result115, %handler_result115, !dbg !1102
  %handler_result116 = call double @fSubHandlerDouble(double %361, double %416), !dbg !1103
  %handler_result117 = call double @fSubHandlerDouble(double %handler_result116, double %411), !dbg !1104
  %417 = fdiv double %229, %handler_result117, !dbg !1104
  tail call void @llvm.dbg.value(metadata double %417, metadata !1037, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %412, metadata !1039, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1097
  br label %418, !dbg !1105

418:                                              ; preds = %413, %409, %407
  %419 = phi double [ %223, %407 ], [ %410, %409 ], [ %417, %413 ], !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1038, metadata !DIExpression()), !dbg !1097
  br label %436, !dbg !1105

420:                                              ; preds = %420, %408
  %421 = phi double [ %432, %420 ], [ %223, %408 ]
  %422 = phi i32 [ %433, %420 ], [ 0, %408 ]
  %423 = phi i32 [ %434, %420 ], [ 0, %408 ]
  tail call void @llvm.dbg.value(metadata double %421, metadata !1037, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %422, metadata !1039, metadata !DIExpression()), !dbg !1097
  %424 = sitofp i32 %422 to double, !dbg !1100
  %425 = fmul double %424, 2.000000e+00, !dbg !1101
  %handler_result118 = call double @fAddHandlerDouble(double %425, double 1.000000e+00), !dbg !1102
  %426 = fmul double %handler_result118, %handler_result118, !dbg !1102
  %handler_result119 = call double @fSubHandlerDouble(double %361, double %426), !dbg !1103
  %handler_result120 = call double @fSubHandlerDouble(double %handler_result119, double %421), !dbg !1104
  %427 = fdiv double %229, %handler_result120, !dbg !1104
  tail call void @llvm.dbg.value(metadata double %427, metadata !1037, metadata !DIExpression()), !dbg !1097
  %428 = or disjoint i32 %422, 1, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %428, metadata !1039, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double %427, metadata !1037, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %428, metadata !1039, metadata !DIExpression()), !dbg !1097
  %429 = sitofp i32 %428 to double, !dbg !1100
  %430 = fmul double %429, 2.000000e+00, !dbg !1101
  %handler_result121 = call double @fAddHandlerDouble(double %430, double 1.000000e+00), !dbg !1102
  %431 = fmul double %handler_result121, %handler_result121, !dbg !1102
  %handler_result122 = call double @fSubHandlerDouble(double %361, double %431), !dbg !1103
  %handler_result123 = call double @fSubHandlerDouble(double %handler_result122, double %427), !dbg !1104
  %432 = fdiv double %229, %handler_result123, !dbg !1104
  tail call void @llvm.dbg.value(metadata double %432, metadata !1037, metadata !DIExpression()), !dbg !1097
  %433 = add nuw nsw i32 %422, 2, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %433, metadata !1039, metadata !DIExpression()), !dbg !1097
  %434 = add i32 %423, 2, !dbg !1099
  %435 = icmp eq i32 %434, %254, !dbg !1099
  br i1 %435, label %409, label %420, !dbg !1099, !llvm.loop !1107

436:                                              ; preds = %436, %418
  %437 = phi i32 [ 0, %418 ], [ %449, %436 ]
  %438 = phi double [ 0.000000e+00, %418 ], [ %448, %436 ]
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !1039, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata double %438, metadata !1038, metadata !DIExpression()), !dbg !1097
  %439 = sub nuw nsw i32 50, %437, !dbg !1109
  %440 = sitofp i32 %439 to double, !dbg !1110
  %441 = fmul double %440, 2.000000e+00, !dbg !1111
  %handler_result124 = call double @fAddHandlerDouble(double %441, double %230), !dbg !1112
  %442 = fmul double %handler_result124, %handler_result124, !dbg !1112
  %handler_result125 = call double @fSubHandlerDouble(double %361, double %442), !dbg !1113
  %handler_result126 = call double @fSubHandlerDouble(double %handler_result125, double %438), !dbg !1114
  %443 = fdiv double %229, %handler_result126, !dbg !1114
  tail call void @llvm.dbg.value(metadata double %443, metadata !1038, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !1039, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %437, metadata !1039, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1097
  tail call void @llvm.dbg.value(metadata double %443, metadata !1038, metadata !DIExpression()), !dbg !1097
  %444 = sub nsw i32 49, %437, !dbg !1109
  %445 = sitofp i32 %444 to double, !dbg !1110
  %446 = fmul double %445, 2.000000e+00, !dbg !1111
  %handler_result127 = call double @fAddHandlerDouble(double %446, double %230), !dbg !1112
  %447 = fmul double %handler_result127, %handler_result127, !dbg !1112
  %handler_result128 = call double @fSubHandlerDouble(double %361, double %447), !dbg !1113
  %handler_result129 = call double @fSubHandlerDouble(double %handler_result128, double %443), !dbg !1114
  %448 = fdiv double %229, %handler_result129, !dbg !1114
  tail call void @llvm.dbg.value(metadata double %448, metadata !1038, metadata !DIExpression()), !dbg !1097
  %449 = add nuw nsw i32 %437, 2, !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %449, metadata !1039, metadata !DIExpression()), !dbg !1097
  %450 = icmp eq i32 %449, 50, !dbg !1116
  br i1 %450, label %451, label %436, !dbg !1105, !llvm.loop !1117

451:                                              ; preds = %436, %392
  %452 = phi double [ %375, %392 ], [ %419, %436 ]
  %453 = phi double [ %404, %392 ], [ %448, %436 ]
  %handler_result130 = call double @fAddHandlerDouble(double %452, double %232), !dbg !1119
  %handler_result131 = call double @fAddHandlerDouble(double %handler_result130, double %453), !dbg !1119
  %handler_result132 = call double @fSubHandlerDouble(double %handler_result131, double %361), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %handler_result132, metadata !714, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %359, metadata !713, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %361, metadata !712, metadata !DIExpression()), !dbg !721
  %454 = fcmp oeq double %handler_result132, %360, !dbg !1120
  br i1 %454, label %463, label %455, !dbg !1122

455:                                              ; preds = %451
  %handler_result133 = call double @fSubHandlerDouble(double %361, double %359), !dbg !1123
  %handler_result134 = call double @fSubHandlerDouble(double %handler_result132, double %360), !dbg !1124
  %456 = fdiv double %handler_result133, %handler_result134, !dbg !1124
  %457 = fmul double %handler_result132, %456, !dbg !1125
  %handler_result135 = call double @fSubHandlerDouble(double %361, double %457), !dbg !1126
  tail call void @llvm.dbg.value(metadata double %handler_result135, metadata !719, metadata !DIExpression()), !dbg !721
  %handler_result136 = call double @fSubHandlerDouble(double %handler_result135, double %359), !dbg !1127
  %458 = tail call double @llvm.fabs.f64(double %handler_result136), !dbg !1127
  tail call void @llvm.dbg.value(metadata double %458, metadata !716, metadata !DIExpression()), !dbg !721
  %459 = fcmp olt double %458, 1.000000e-18, !dbg !1128
  br i1 %459, label %463, label %460, !dbg !1130

460:                                              ; preds = %455
  tail call void @llvm.dbg.value(metadata double %handler_result132, metadata !715, metadata !DIExpression()), !dbg !721
  %461 = add nuw nsw i32 %358, 1, !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %461, metadata !708, metadata !DIExpression()), !dbg !721
  %462 = icmp eq i32 %461, 42, !dbg !1132
  br i1 %462, label %463, label %357, !dbg !1134, !llvm.loop !1135

463:                                              ; preds = %460, %455, %451
  %464 = phi double [ 0x3CB0000000000000, %451 ], [ 0x3CB0000000000000, %455 ], [ %458, %460 ]
  %465 = phi double [ %361, %451 ], [ %handler_result135, %455 ], [ %handler_result135, %460 ], !dbg !721
  tail call void @llvm.dbg.value(metadata double %465, metadata !719, metadata !DIExpression()), !dbg !721
  %handler_result137 = call double @fSubHandlerDouble(double %465, double %221), !dbg !1138
  %466 = tail call double @llvm.fabs.f64(double %handler_result137), !dbg !1138
  %467 = fcmp ogt double %466, %handler_result71, !dbg !1140
  %468 = fcmp ogt double %466, %241
  %469 = and i1 %240, %468
  %470 = or i1 %467, %469, !dbg !1141
  br i1 %470, label %471, label %486, !dbg !1141

471:                                              ; preds = %463
  %472 = add nuw nsw i32 %264, 1, !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 %472, metadata !709, metadata !DIExpression()), !dbg !721
  %473 = icmp eq i32 %472, 1000, !dbg !1144
  br i1 %473, label %474, label %475, !dbg !1146

474:                                              ; preds = %471
  store double %464, ptr %236, align 8, !dbg !1147, !tbaa !144
  store double %466, ptr %236, align 8, !dbg !1148, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %465, metadata !719, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !709, metadata !DIExpression()), !dbg !721
  store double %465, ptr %2, align 8, !dbg !1150, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 621, i32 noundef 5) #8, !dbg !1151
  br label %487, !dbg !1151

475:                                              ; preds = %471
  %476 = fcmp ogt double %465, %221, !dbg !1155
  %477 = fmul double %262, 5.000000e-01, !dbg !1157
  tail call void @llvm.dbg.value(metadata double %481, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %481, metadata !718, metadata !DIExpression()), !dbg !721
  %478 = select i1 %476, i32 1, i32 -1
  %479 = select i1 %476, i32 -1, i32 1
  %480 = icmp eq i32 %263, %478, !dbg !1157
  %481 = select i1 %480, double %477, double %262, !dbg !1157
  tail call void @llvm.dbg.value(metadata double %481, metadata !718, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !711, metadata !DIExpression()), !dbg !721
  %482 = sitofp i32 %479 to double, !dbg !1158
  %483 = fmul double %481, %482, !dbg !1159
  %484 = sitofp i32 %472 to double, !dbg !1160
  %485 = fmul double %483, %484, !dbg !1161
  %handler_result138 = call double @fAddHandlerDouble(double %261, double %485)
  tail call void @llvm.dbg.value(metadata double %handler_result138, metadata !720, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %handler_result138, metadata !719, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %472, metadata !709, metadata !DIExpression()), !dbg !721
  br label %260

486:                                              ; preds = %463
  store double %464, ptr %236, align 8, !dbg !1147, !tbaa !144
  tail call void @llvm.dbg.value(metadata double %465, metadata !719, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %264, metadata !709, metadata !DIExpression()), !dbg !721
  store double %465, ptr %2, align 8, !dbg !1150, !tbaa !137
  br label %487, !dbg !1162

487:                                              ; preds = %486, %474, %24, %8, %7
  %488 = phi i32 [ 5, %7 ], [ 0, %8 ], [ %25, %24 ], [ 5, %474 ], [ 0, %486 ], !dbg !721
  ret i32 %488, !dbg !1163
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !1164 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_mathieu_a_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !1169 {
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1252, metadata !DIExpression(), metadata !1266, metadata ptr %6, metadata !DIExpression()), !dbg !1267
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1268, metadata ptr %7, metadata !DIExpression()), !dbg !1267
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1259, metadata !DIExpression(), metadata !1269, metadata ptr %8, metadata !DIExpression()), !dbg !1267
  %9 = alloca %struct._gsl_matrix_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_matrix_view, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1236, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata double %2, metadata !1237, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1238, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1239, metadata !DIExpression()), !dbg !1267
  %12 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 1, !dbg !1270
  %13 = load i64, ptr %12, align 8, !dbg !1270, !tbaa !1271
  %14 = trunc i64 %13 to i32, !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1240, metadata !DIExpression()), !dbg !1267
  %15 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 2, !dbg !1277
  %16 = load i64, ptr %15, align 8, !dbg !1277, !tbaa !1278
  %17 = trunc i64 %16 to i32, !dbg !1279
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1241, metadata !DIExpression()), !dbg !1267
  %18 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 3, !dbg !1280
  %19 = load i32, ptr %18, align 8, !dbg !1280, !tbaa !1281
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1242, metadata !DIExpression()), !dbg !1267
  %20 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 10, !dbg !1282
  %21 = load ptr, ptr %20, align 8, !dbg !1282, !tbaa !1283
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1246, metadata !DIExpression()), !dbg !1267
  %22 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 8, !dbg !1284
  %23 = load ptr, ptr %22, align 8, !dbg !1284, !tbaa !1285
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !1247, metadata !DIExpression()), !dbg !1267
  %24 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 9, !dbg !1286
  %25 = load ptr, ptr %24, align 8, !dbg !1286, !tbaa !1287
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1248, metadata !DIExpression()), !dbg !1267
  %26 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 11, !dbg !1288
  %27 = load ptr, ptr %26, align 8, !dbg !1288, !tbaa !1289
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1249, metadata !DIExpression()), !dbg !1267
  %28 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 12, !dbg !1290
  %29 = load ptr, ptr %28, align 8, !dbg !1290, !tbaa !1291
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1250, metadata !DIExpression()), !dbg !1267
  %30 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 6, !dbg !1292
  %31 = load ptr, ptr %30, align 8, !dbg !1292, !tbaa !1293
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1251, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #8, !dbg !1294
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8, !dbg !1294
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #8, !dbg !1295
  %32 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 15, !dbg !1296
  %33 = load ptr, ptr %32, align 8, !dbg !1296, !tbaa !1297
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1265, metadata !DIExpression()), !dbg !1267
  %34 = sext i32 %1 to i64, !dbg !1298
  %35 = load i64, ptr %3, align 8, !dbg !1300, !tbaa !1301
  %36 = icmp ult i64 %35, %34, !dbg !1302
  br i1 %36, label %41, label %37, !dbg !1303

37:                                               ; preds = %5
  %38 = icmp sle i32 %1, %0, !dbg !1304
  %39 = icmp slt i32 %0, 0
  %40 = or i1 %39, %38, !dbg !1305
  br i1 %40, label %41, label %42, !dbg !1305

41:                                               ; preds = %37, %5
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 723, i32 noundef 4) #8, !dbg !1306
  br label %403, !dbg !1306

42:                                               ; preds = %37
  %43 = getelementptr inbounds double, ptr %21, i64 1, !dbg !1309
  %44 = getelementptr inbounds double, ptr %21, i64 2, !dbg !1310
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false), !dbg !1311
  store double %2, ptr %44, align 8, !dbg !1312, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1267
  %45 = add i32 %14, -1
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1267
  %46 = icmp ugt i32 %45, 1, !dbg !1314
  br i1 %46, label %47, label %104, !dbg !1317

47:                                               ; preds = %42
  %48 = zext i32 %45 to i64, !dbg !1314
  %49 = add nsw i64 %48, -1, !dbg !1317
  %50 = and i64 %49, 1, !dbg !1317
  %51 = icmp eq i32 %45, 2, !dbg !1317
  br i1 %51, label %87, label %52, !dbg !1317

52:                                               ; preds = %47
  %53 = and i64 %49, -2, !dbg !1317
  br label %54, !dbg !1317

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 1, %52 ], [ %84, %54 ]
  %56 = phi i64 [ 0, %52 ], [ %85, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1243, metadata !DIExpression()), !dbg !1267
  %57 = trunc i64 %55 to i32, !dbg !1318
  %58 = mul i32 %57, 3, !dbg !1318
  %59 = zext i32 %58 to i64, !dbg !1320
  %60 = getelementptr inbounds double, ptr %21, i64 %59, !dbg !1320
  store double %2, ptr %60, align 8, !dbg !1321, !tbaa !1313
  %61 = shl i32 %57, 2, !dbg !1322
  %62 = mul i32 %61, %57, !dbg !1323
  %63 = uitofp i32 %62 to double, !dbg !1324
  %64 = add i32 %58, 1, !dbg !1325
  %65 = zext i32 %64 to i64, !dbg !1326
  %66 = getelementptr inbounds double, ptr %21, i64 %65, !dbg !1326
  store double %63, ptr %66, align 8, !dbg !1327, !tbaa !1313
  %67 = add i32 %58, 2, !dbg !1328
  %68 = zext i32 %67 to i64, !dbg !1329
  %69 = getelementptr inbounds double, ptr %21, i64 %68, !dbg !1329
  store double %2, ptr %69, align 8, !dbg !1330, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  %70 = trunc i64 %55 to i32, !dbg !1318
  %71 = add i32 %70, 1, !dbg !1318
  %72 = mul i32 %71, 3, !dbg !1318
  %73 = zext i32 %72 to i64, !dbg !1320
  %74 = getelementptr inbounds double, ptr %21, i64 %73, !dbg !1320
  store double %2, ptr %74, align 8, !dbg !1321, !tbaa !1313
  %75 = shl i32 %71, 2, !dbg !1322
  %76 = mul i32 %75, %71, !dbg !1323
  %77 = uitofp i32 %76 to double, !dbg !1324
  %78 = add nuw nsw i32 %72, 1, !dbg !1325
  %79 = zext i32 %78 to i64, !dbg !1326
  %80 = getelementptr inbounds double, ptr %21, i64 %79, !dbg !1326
  store double %77, ptr %80, align 8, !dbg !1327, !tbaa !1313
  %81 = add i32 %72, 2, !dbg !1328
  %82 = zext i32 %81 to i64, !dbg !1329
  %83 = getelementptr inbounds double, ptr %21, i64 %82, !dbg !1329
  store double %2, ptr %83, align 8, !dbg !1330, !tbaa !1313
  %84 = add nuw nsw i64 %55, 2, !dbg !1331
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1243, metadata !DIExpression()), !dbg !1267
  %85 = add i64 %56, 2, !dbg !1317
  %86 = icmp eq i64 %85, %53, !dbg !1317
  br i1 %86, label %87, label %54, !dbg !1317, !llvm.loop !1332

87:                                               ; preds = %54, %47
  %88 = phi i64 [ 1, %47 ], [ %84, %54 ]
  %89 = icmp eq i64 %50, 0, !dbg !1317
  br i1 %89, label %104, label %90, !dbg !1317

90:                                               ; preds = %87
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1243, metadata !DIExpression()), !dbg !1267
  %91 = trunc i64 %88 to i32, !dbg !1318
  %92 = mul i32 %91, 3, !dbg !1318
  %93 = zext i32 %92 to i64, !dbg !1320
  %94 = getelementptr inbounds double, ptr %21, i64 %93, !dbg !1320
  store double %2, ptr %94, align 8, !dbg !1321, !tbaa !1313
  %95 = shl i32 %91, 2, !dbg !1322
  %96 = mul i32 %95, %91, !dbg !1323
  %97 = uitofp i32 %96 to double, !dbg !1324
  %98 = add i32 %92, 1, !dbg !1325
  %99 = zext i32 %98 to i64, !dbg !1326
  %100 = getelementptr inbounds double, ptr %21, i64 %99, !dbg !1326
  store double %97, ptr %100, align 8, !dbg !1327, !tbaa !1313
  %101 = add i32 %92, 2, !dbg !1328
  %102 = zext i32 %101 to i64, !dbg !1329
  %103 = getelementptr inbounds double, ptr %21, i64 %102, !dbg !1329
  store double %2, ptr %103, align 8, !dbg !1330, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  br label %104, !dbg !1334

104:                                              ; preds = %90, %87, %42
  %105 = mul i32 %14, 3, !dbg !1334
  %106 = add i32 %105, -3, !dbg !1335
  %107 = zext i32 %106 to i64, !dbg !1336
  %108 = getelementptr inbounds double, ptr %21, i64 %107, !dbg !1336
  store double %2, ptr %108, align 8, !dbg !1337, !tbaa !1313
  %109 = shl i32 %45, 2, !dbg !1338
  %110 = mul i32 %109, %45, !dbg !1339
  %111 = uitofp i32 %110 to double, !dbg !1340
  %112 = add i32 %105, -2, !dbg !1341
  %113 = zext i32 %112 to i64, !dbg !1342
  %114 = getelementptr inbounds double, ptr %21, i64 %113, !dbg !1342
  store double %111, ptr %114, align 8, !dbg !1343, !tbaa !1313
  %115 = add i32 %105, -1, !dbg !1344
  %116 = zext i32 %115 to i64, !dbg !1345
  %117 = getelementptr inbounds double, ptr %21, i64 %116, !dbg !1345
  store double 0.000000e+00, ptr %117, align 8, !dbg !1346, !tbaa !1313
  %118 = getelementptr inbounds double, ptr %21, i64 3, !dbg !1347
  %119 = load double, ptr %118, align 8, !dbg !1348, !tbaa !1313
  %120 = fmul double %119, 2.000000e+00, !dbg !1348
  store double %120, ptr %118, align 8, !dbg !1348, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %14, metadata !1349, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %21, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %23, metadata !1355, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %25, metadata !1356, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %27, metadata !1357, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1359
  %121 = getelementptr double, ptr %21, i64 -1, !dbg !1361
  %122 = icmp sgt i32 %14, 0, !dbg !1363
  br i1 %122, label %123, label %158, !dbg !1365

123:                                              ; preds = %104
  %124 = and i64 %13, 4294967295, !dbg !1363
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()), !dbg !1359
  %125 = load double, ptr %43, align 8, !dbg !1366, !tbaa !1313
  store double %125, ptr %23, align 8, !dbg !1368, !tbaa !1313
  call void @llvm.dbg.value(metadata i64 1, metadata !1358, metadata !DIExpression()), !dbg !1359
  %126 = icmp eq i32 %14, 1, !dbg !1363
  br i1 %126, label %158, label %127, !dbg !1365

127:                                              ; preds = %149, %123
  %128 = phi i64 [ %155, %149 ], [ 1, %123 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1358, metadata !DIExpression()), !dbg !1359
  %129 = mul nuw nsw i64 %128, 3, !dbg !1369
  %130 = getelementptr inbounds double, ptr %21, i64 %129, !dbg !1372
  %131 = load double, ptr %130, align 8, !dbg !1372, !tbaa !1313
  %132 = getelementptr double, ptr %121, i64 %129, !dbg !1373
  %133 = load double, ptr %132, align 8, !dbg !1373, !tbaa !1313
  %134 = fmul double %131, %133, !dbg !1374
  %135 = getelementptr inbounds double, ptr %27, i64 %128, !dbg !1375
  store double %134, ptr %135, align 8, !dbg !1376, !tbaa !1313
  %136 = fcmp olt double %134, 0.000000e+00, !dbg !1377
  br i1 %136, label %157, label %137, !dbg !1379

137:                                              ; preds = %127
  %138 = fcmp oeq double %134, 0.000000e+00, !dbg !1380
  br i1 %138, label %139, label %149, !dbg !1382

139:                                              ; preds = %137
  %140 = load double, ptr %130, align 8, !dbg !1383, !tbaa !1313
  %141 = fcmp une double %140, 0.000000e+00, !dbg !1384
  br i1 %141, label %145, label %142, !dbg !1385

142:                                              ; preds = %139
  %143 = load double, ptr %132, align 8, !dbg !1386, !tbaa !1313
  %144 = fcmp une double %143, 0.000000e+00, !dbg !1387
  br i1 %144, label %145, label %149, !dbg !1388

145:                                              ; preds = %142, %139
  %146 = trunc i64 %128 to i32
  %147 = mul i32 %14, -3, !dbg !1389
  %148 = icmp eq i32 %147, %146, !dbg !1391
  tail call void @llvm.dbg.value(metadata i1 %148, metadata !1245, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1267
  br i1 %148, label %158, label %157, !dbg !1393

149:                                              ; preds = %142, %137
  %150 = tail call double @sqrt(double noundef %134) #8, !dbg !1394
  %151 = getelementptr inbounds double, ptr %25, i64 %128, !dbg !1395
  store double %150, ptr %151, align 8, !dbg !1396, !tbaa !1313
  %152 = getelementptr double, ptr %43, i64 %129
  %153 = load double, ptr %152, align 8, !dbg !1366, !tbaa !1313
  %154 = getelementptr inbounds double, ptr %23, i64 %128, !dbg !1397
  store double %153, ptr %154, align 8, !dbg !1368, !tbaa !1313
  %155 = add nuw nsw i64 %128, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %155, metadata !1358, metadata !DIExpression()), !dbg !1359
  %156 = icmp eq i64 %155, %124, !dbg !1363
  br i1 %156, label %158, label %127, !dbg !1365, !llvm.loop !1399

157:                                              ; preds = %145, %127
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 5) #8, !dbg !1402
  br label %403, !dbg !1402

158:                                              ; preds = %149, %145, %123, %104
  %159 = mul i32 %14, %14
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %160 = icmp eq i32 %159, 0, !dbg !1405
  br i1 %160, label %164, label %161, !dbg !1408

161:                                              ; preds = %158
  %162 = zext i32 %159 to i64, !dbg !1408
  %163 = shl nuw nsw i64 %162, 3, !dbg !1408
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %163, i1 false), !dbg !1409, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1243, metadata !DIExpression()), !dbg !1267
  br label %164, !dbg !1410

164:                                              ; preds = %161, %158
  %165 = load double, ptr %23, align 8, !dbg !1410, !tbaa !1313
  store double %165, ptr %29, align 8, !dbg !1411, !tbaa !1313
  %166 = getelementptr inbounds double, ptr %25, i64 1, !dbg !1412
  %167 = load double, ptr %166, align 8, !dbg !1412, !tbaa !1313
  %168 = getelementptr inbounds double, ptr %29, i64 1, !dbg !1413
  store double %167, ptr %168, align 8, !dbg !1414, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1267
  br i1 %46, label %171, label %169, !dbg !1415

169:                                              ; preds = %164
  %170 = zext nneg i32 %45 to i64, !dbg !1417
  br label %235, !dbg !1415

171:                                              ; preds = %164
  %172 = add i32 %14, 1
  %173 = zext i32 %45 to i64, !dbg !1418
  %174 = add nsw i64 %173, -1, !dbg !1415
  %175 = and i64 %174, 1, !dbg !1415
  %176 = icmp eq i32 %45, 2, !dbg !1415
  br i1 %176, label %215, label %177, !dbg !1415

177:                                              ; preds = %171
  %178 = and i64 %174, -2, !dbg !1415
  br label %179, !dbg !1415

179:                                              ; preds = %179, %177
  %180 = phi double [ %167, %177 ], [ %209, %179 ], !dbg !1420
  %181 = phi i64 [ 1, %177 ], [ %207, %179 ]
  %182 = phi i64 [ 0, %177 ], [ %213, %179 ]
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !1243, metadata !DIExpression()), !dbg !1267
  %183 = trunc i64 %181 to i32, !dbg !1422
  %184 = mul i32 %172, %183, !dbg !1422
  %185 = add i32 %184, -1, !dbg !1423
  %186 = zext i32 %185 to i64, !dbg !1424
  %187 = getelementptr inbounds double, ptr %29, i64 %186, !dbg !1424
  store double %180, ptr %187, align 8, !dbg !1425, !tbaa !1313
  %188 = getelementptr inbounds double, ptr %23, i64 %181, !dbg !1426
  %189 = load double, ptr %188, align 8, !dbg !1426, !tbaa !1313
  %190 = zext i32 %184 to i64, !dbg !1427
  %191 = getelementptr inbounds double, ptr %29, i64 %190, !dbg !1427
  store double %189, ptr %191, align 8, !dbg !1428, !tbaa !1313
  %192 = add nuw nsw i64 %181, 1, !dbg !1429
  %193 = getelementptr inbounds double, ptr %25, i64 %192, !dbg !1430
  %194 = load double, ptr %193, align 8, !dbg !1430, !tbaa !1313
  %195 = add i32 %184, 1, !dbg !1431
  %196 = zext i32 %195 to i64, !dbg !1432
  %197 = getelementptr inbounds double, ptr %29, i64 %196, !dbg !1432
  store double %194, ptr %197, align 8, !dbg !1433, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1243, metadata !DIExpression()), !dbg !1267
  %198 = trunc i64 %192 to i32, !dbg !1422
  %199 = mul i32 %172, %198, !dbg !1422
  %200 = add i32 %199, -1, !dbg !1423
  %201 = zext i32 %200 to i64, !dbg !1424
  %202 = getelementptr inbounds double, ptr %29, i64 %201, !dbg !1424
  store double %194, ptr %202, align 8, !dbg !1425, !tbaa !1313
  %203 = getelementptr inbounds double, ptr %23, i64 %192, !dbg !1426
  %204 = load double, ptr %203, align 8, !dbg !1426, !tbaa !1313
  %205 = zext i32 %199 to i64, !dbg !1427
  %206 = getelementptr inbounds double, ptr %29, i64 %205, !dbg !1427
  store double %204, ptr %206, align 8, !dbg !1428, !tbaa !1313
  %207 = add nuw nsw i64 %181, 2, !dbg !1429
  %208 = getelementptr inbounds double, ptr %25, i64 %207, !dbg !1430
  %209 = load double, ptr %208, align 8, !dbg !1430, !tbaa !1313
  %210 = add nuw nsw i32 %199, 1, !dbg !1431
  %211 = zext i32 %210 to i64, !dbg !1432
  %212 = getelementptr inbounds double, ptr %29, i64 %211, !dbg !1432
  store double %209, ptr %212, align 8, !dbg !1433, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !1243, metadata !DIExpression()), !dbg !1267
  %213 = add i64 %182, 2, !dbg !1415
  %214 = icmp eq i64 %213, %178, !dbg !1415
  br i1 %214, label %215, label %179, !dbg !1415, !llvm.loop !1434

215:                                              ; preds = %179, %171
  %216 = phi double [ %167, %171 ], [ %209, %179 ]
  %217 = phi i64 [ 1, %171 ], [ %207, %179 ]
  %218 = icmp eq i64 %175, 0, !dbg !1415
  br i1 %218, label %235, label %219, !dbg !1415

219:                                              ; preds = %215
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !1243, metadata !DIExpression()), !dbg !1267
  %220 = trunc i64 %217 to i32, !dbg !1422
  %221 = mul i32 %172, %220, !dbg !1422
  %222 = add i32 %221, -1, !dbg !1423
  %223 = zext i32 %222 to i64, !dbg !1424
  %224 = getelementptr inbounds double, ptr %29, i64 %223, !dbg !1424
  store double %216, ptr %224, align 8, !dbg !1425, !tbaa !1313
  %225 = getelementptr inbounds double, ptr %23, i64 %217, !dbg !1426
  %226 = load double, ptr %225, align 8, !dbg !1426, !tbaa !1313
  %227 = zext i32 %221 to i64, !dbg !1427
  %228 = getelementptr inbounds double, ptr %29, i64 %227, !dbg !1427
  store double %226, ptr %228, align 8, !dbg !1428, !tbaa !1313
  %229 = getelementptr double, ptr %25, i64 %217, !dbg !1430
  %230 = getelementptr double, ptr %229, i64 1, !dbg !1430
  %231 = load double, ptr %230, align 8, !dbg !1430, !tbaa !1313
  %232 = add i32 %221, 1, !dbg !1431
  %233 = zext i32 %232 to i64, !dbg !1432
  %234 = getelementptr inbounds double, ptr %29, i64 %233, !dbg !1432
  store double %231, ptr %234, align 8, !dbg !1433, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  br label %235, !dbg !1417

235:                                              ; preds = %219, %215, %169
  %236 = phi i64 [ %170, %169 ], [ %173, %215 ], [ %173, %219 ], !dbg !1417
  %237 = getelementptr inbounds double, ptr %25, i64 %236, !dbg !1417
  %238 = load double, ptr %237, align 8, !dbg !1417, !tbaa !1313
  %239 = mul i64 %13, %13, !dbg !1436
  %240 = add i64 %239, 4294967294, !dbg !1437
  %241 = and i64 %240, 4294967295, !dbg !1438
  %242 = getelementptr inbounds double, ptr %29, i64 %241, !dbg !1438
  store double %238, ptr %242, align 8, !dbg !1439, !tbaa !1313
  %243 = getelementptr inbounds double, ptr %23, i64 %236, !dbg !1440
  %244 = load double, ptr %243, align 8, !dbg !1440, !tbaa !1313
  %245 = add i32 %159, -1, !dbg !1441
  %246 = zext i32 %245 to i64, !dbg !1442
  %247 = getelementptr inbounds double, ptr %29, i64 %246, !dbg !1442
  store double %244, ptr %247, align 8, !dbg !1443, !tbaa !1313
  %248 = and i64 %13, 4294967295, !dbg !1444
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %29, i64 noundef %248, i64 noundef %248) #8, !dbg !1445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1252, metadata !DIExpression(), metadata !1446, metadata ptr %6, metadata !DIExpression()), !dbg !1267
  %249 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 13, !dbg !1447
  %250 = load ptr, ptr %249, align 8, !dbg !1447, !tbaa !1448
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef %250, i64 noundef 0, i64 noundef %248) #8, !dbg !1449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1259, metadata !DIExpression(), metadata !1450, metadata ptr %8, metadata !DIExpression()), !dbg !1267
  %251 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 14, !dbg !1451
  %252 = load ptr, ptr %251, align 8, !dbg !1451, !tbaa !1452
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef %252, i64 noundef 0, i64 noundef 0, i64 noundef %248, i64 noundef %248) #8, !dbg !1453
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1454, metadata ptr %7, metadata !DIExpression()), !dbg !1267
  %253 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %33) #8, !dbg !1455
  %254 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #8, !dbg !1456
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %255 = icmp eq i32 %19, %14, !dbg !1457
  br i1 %255, label %278, label %256, !dbg !1460

256:                                              ; preds = %235
  %257 = sub i32 %14, %19
  %258 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !1461
  %260 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !1463
  %262 = call i32 @llvm.umax.i32(i32 %257, i32 1), !dbg !1460
  %263 = zext i32 %262 to i64, !dbg !1457
  %264 = and i64 %263, 1, !dbg !1460
  %265 = icmp ult i32 %257, 2, !dbg !1460
  br i1 %265, label %268, label %266, !dbg !1460

266:                                              ; preds = %256
  %267 = and i64 %263, 4294967294, !dbg !1460
  br label %284, !dbg !1460

268:                                              ; preds = %284, %256
  %269 = phi i64 [ 0, %256 ], [ %300, %284 ]
  %270 = icmp eq i64 %264, 0, !dbg !1460
  br i1 %270, label %278, label %271, !dbg !1460

271:                                              ; preds = %268
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1472, metadata !DIExpression()), !dbg !1473
  %272 = mul i64 %261, %269, !dbg !1475
  %273 = getelementptr inbounds double, ptr %259, i64 %272, !dbg !1476
  %274 = load double, ptr %273, align 8, !dbg !1476, !tbaa !1313
  %275 = shl nuw i64 %269, 1, !dbg !1477
  %276 = and i64 %275, 4294967294, !dbg !1478
  %277 = getelementptr inbounds double, ptr %31, i64 %276, !dbg !1478
  store double %274, ptr %277, align 8, !dbg !1479, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  br label %278

278:                                              ; preds = %271, %268, %235
  %279 = mul i32 %17, %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %280 = icmp eq i32 %279, 0, !dbg !1480
  br i1 %280, label %303, label %281, !dbg !1483

281:                                              ; preds = %278
  %282 = zext i32 %279 to i64, !dbg !1483
  %283 = shl nuw nsw i64 %282, 3, !dbg !1483
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %29, i8 0, i64 %283, i1 false), !dbg !1484, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1243, metadata !DIExpression()), !dbg !1267
  br label %303, !dbg !1485

284:                                              ; preds = %284, %266
  %285 = phi i64 [ 0, %266 ], [ %300, %284 ]
  %286 = phi i64 [ 0, %266 ], [ %301, %284 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !1472, metadata !DIExpression()), !dbg !1473
  %287 = mul i64 %261, %285, !dbg !1475
  %288 = getelementptr inbounds double, ptr %259, i64 %287, !dbg !1476
  %289 = load double, ptr %288, align 8, !dbg !1476, !tbaa !1313
  %290 = shl nuw i64 %285, 1, !dbg !1477
  %291 = and i64 %290, 4294967292, !dbg !1478
  %292 = getelementptr inbounds double, ptr %31, i64 %291, !dbg !1478
  store double %289, ptr %292, align 8, !dbg !1479, !tbaa !1313
  %293 = or disjoint i64 %285, 1, !dbg !1488
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !1472, metadata !DIExpression()), !dbg !1473
  %294 = mul i64 %261, %293, !dbg !1475
  %295 = getelementptr inbounds double, ptr %259, i64 %294, !dbg !1476
  %296 = load double, ptr %295, align 8, !dbg !1476, !tbaa !1313
  %297 = shl nuw i64 %293, 1, !dbg !1477
  %298 = and i64 %297, 4294967294, !dbg !1478
  %299 = getelementptr inbounds double, ptr %31, i64 %298, !dbg !1478
  store double %296, ptr %299, align 8, !dbg !1479, !tbaa !1313
  %300 = add nuw nsw i64 %285, 2, !dbg !1488
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1243, metadata !DIExpression()), !dbg !1267
  %301 = add i64 %286, 2, !dbg !1460
  %302 = icmp eq i64 %301, %267, !dbg !1460
  br i1 %302, label %268, label %284, !dbg !1460, !llvm.loop !1489

303:                                              ; preds = %281, %278
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %304 = icmp eq i32 %17, 0, !dbg !1485
  br i1 %304, label %339, label %305, !dbg !1491

305:                                              ; preds = %303
  %306 = and i64 %16, 4294967295, !dbg !1485
  br label %307, !dbg !1491

307:                                              ; preds = %337, %305
  %308 = phi i64 [ 0, %305 ], [ %309, %337 ]
  tail call void @llvm.dbg.value(metadata i64 %308, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1244, metadata !DIExpression()), !dbg !1267
  %309 = add nuw nsw i64 %308, 1, !dbg !1492
  %310 = trunc i64 %308 to i32
  %311 = mul i32 %310, %17
  %312 = shl i32 %310, 1
  %313 = or disjoint i32 %312, 1
  %314 = mul i32 %313, %313
  %315 = uitofp i32 %314 to double
  %316 = add i32 %311, %310
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds double, ptr %29, i64 %317
  br label %319, !dbg !1493

319:                                              ; preds = %334, %307
  %320 = phi i64 [ 0, %307 ], [ %335, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1244, metadata !DIExpression()), !dbg !1267
  %321 = icmp eq i64 %308, %320, !dbg !1495
  br i1 %321, label %322, label %324, !dbg !1499

322:                                              ; preds = %319
  store double %315, ptr %318, align 8, !dbg !1500, !tbaa !1313
  %323 = add nuw nsw i64 %320, 1, !dbg !1501
  br label %334, !dbg !1502

324:                                              ; preds = %319
  %325 = add nuw nsw i64 %320, 1, !dbg !1503
  %326 = icmp eq i64 %308, %325, !dbg !1505
  %327 = icmp eq i64 %309, %320
  %328 = or i1 %327, %326, !dbg !1506
  br i1 %328, label %329, label %334, !dbg !1506

329:                                              ; preds = %324
  %330 = trunc i64 %320 to i32, !dbg !1507
  %331 = add i32 %311, %330, !dbg !1507
  %332 = zext i32 %331 to i64, !dbg !1508
  %333 = getelementptr inbounds double, ptr %29, i64 %332, !dbg !1508
  store double %2, ptr %333, align 8, !dbg !1509, !tbaa !1313
  br label %334, !dbg !1508

334:                                              ; preds = %329, %324, %322
  %335 = phi i64 [ %325, %324 ], [ %323, %322 ], [ %325, %329 ], !dbg !1501
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1244, metadata !DIExpression()), !dbg !1267
  %336 = icmp eq i64 %335, %306, !dbg !1510
  br i1 %336, label %337, label %319, !dbg !1493, !llvm.loop !1511

337:                                              ; preds = %334
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !1243, metadata !DIExpression()), !dbg !1267
  %338 = icmp eq i64 %309, %306, !dbg !1485
  br i1 %338, label %339, label %307, !dbg !1491, !llvm.loop !1513

339:                                              ; preds = %337, %303
  %340 = load double, ptr %29, align 8, !dbg !1515, !tbaa !1313
  %handler_result = call double @fAddHandlerDouble(double %340, double %2), !dbg !1515
  store double %handler_result, ptr %29, align 8, !dbg !1515, !tbaa !1313
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #8, !dbg !1516
  %341 = and i64 %16, 4294967295, !dbg !1517
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %29, i64 noundef %341, i64 noundef %341) #8, !dbg !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !1516, !tbaa.struct !1518, !DIAssignID !1522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1252, metadata !DIExpression(), metadata !1522, metadata ptr %6, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #8, !dbg !1516
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8, !dbg !1523
  %342 = load ptr, ptr %249, align 8, !dbg !1524, !tbaa !1448
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef %342, i64 noundef 0, i64 noundef %341) #8, !dbg !1523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !1523, !tbaa.struct !1525, !DIAssignID !1526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1259, metadata !DIExpression(), metadata !1526, metadata ptr %8, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8, !dbg !1523
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #8, !dbg !1527
  %343 = load ptr, ptr %251, align 8, !dbg !1528, !tbaa !1452
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef %343, i64 noundef 0, i64 noundef 0, i64 noundef %341, i64 noundef %341) #8, !dbg !1527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 48, i1 false), !dbg !1527, !tbaa.struct !1518, !DIAssignID !1529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1529, metadata ptr %7, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #8, !dbg !1527
  %344 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %33) #8, !dbg !1530
  %345 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #8, !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %346 = icmp eq i32 %19, %17, !dbg !1532
  br i1 %346, label %370, label %347, !dbg !1535

347:                                              ; preds = %339
  %348 = sub i32 %17, %19
  %349 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !1461
  %351 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %352 = load i64, ptr %351, align 8, !tbaa !1463
  %353 = call i32 @llvm.umax.i32(i32 %348, i32 1), !dbg !1535
  %354 = zext i32 %353 to i64, !dbg !1532
  %355 = and i64 %354, 1, !dbg !1535
  %356 = icmp ult i32 %348, 2, !dbg !1535
  br i1 %356, label %359, label %357, !dbg !1535

357:                                              ; preds = %347
  %358 = and i64 %354, 4294967294, !dbg !1535
  br label %372, !dbg !1535

359:                                              ; preds = %372, %347
  %360 = phi i64 [ 0, %347 ], [ %390, %372 ]
  %361 = icmp eq i64 %355, 0, !dbg !1535
  br i1 %361, label %370, label %362, !dbg !1535

362:                                              ; preds = %359
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !1472, metadata !DIExpression()), !dbg !1536
  %363 = mul i64 %352, %360, !dbg !1538
  %364 = getelementptr inbounds double, ptr %350, i64 %363, !dbg !1539
  %365 = load double, ptr %364, align 8, !dbg !1539, !tbaa !1313
  %366 = shl nuw i64 %360, 1, !dbg !1540
  %367 = and i64 %366, 4294967294, !dbg !1541
  %368 = or disjoint i64 %367, 1, !dbg !1541
  %369 = getelementptr inbounds double, ptr %31, i64 %368, !dbg !1541
  store double %365, ptr %369, align 8, !dbg !1542, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !1243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1267
  br label %370, !dbg !1543

370:                                              ; preds = %362, %359, %339
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1243, metadata !DIExpression()), !dbg !1267
  %371 = icmp ugt i32 %0, %1, !dbg !1543
  br i1 %371, label %403, label %393, !dbg !1546

372:                                              ; preds = %372, %357
  %373 = phi i64 [ 0, %357 ], [ %390, %372 ]
  %374 = phi i64 [ 0, %357 ], [ %391, %372 ]
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !1472, metadata !DIExpression()), !dbg !1536
  %375 = mul i64 %352, %373, !dbg !1538
  %376 = getelementptr inbounds double, ptr %350, i64 %375, !dbg !1539
  %377 = load double, ptr %376, align 8, !dbg !1539, !tbaa !1313
  %378 = shl nuw i64 %373, 1, !dbg !1540
  %379 = and i64 %378, 4294967292, !dbg !1541
  %380 = or disjoint i64 %379, 1, !dbg !1541
  %381 = getelementptr inbounds double, ptr %31, i64 %380, !dbg !1541
  store double %377, ptr %381, align 8, !dbg !1542, !tbaa !1313
  %382 = or disjoint i64 %373, 1, !dbg !1547
  tail call void @llvm.dbg.value(metadata i64 %382, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 %382, metadata !1243, metadata !DIExpression()), !dbg !1267
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata i64 %382, metadata !1472, metadata !DIExpression()), !dbg !1536
  %383 = mul i64 %352, %382, !dbg !1538
  %384 = getelementptr inbounds double, ptr %350, i64 %383, !dbg !1539
  %385 = load double, ptr %384, align 8, !dbg !1539, !tbaa !1313
  %386 = shl nuw i64 %382, 1, !dbg !1540
  %387 = and i64 %386, 4294967294, !dbg !1541
  %388 = or disjoint i64 %387, 1, !dbg !1541
  %389 = getelementptr inbounds double, ptr %31, i64 %388, !dbg !1541
  store double %385, ptr %389, align 8, !dbg !1542, !tbaa !1313
  %390 = add nuw nsw i64 %373, 2, !dbg !1547
  tail call void @llvm.dbg.value(metadata i64 %390, metadata !1243, metadata !DIExpression()), !dbg !1267
  %391 = add i64 %374, 2, !dbg !1535
  %392 = icmp eq i64 %391, %358, !dbg !1535
  br i1 %392, label %359, label %372, !dbg !1535, !llvm.loop !1548

393:                                              ; preds = %393, %370
  %394 = phi i32 [ %401, %393 ], [ %0, %370 ]
  tail call void @llvm.dbg.value(metadata i32 %394, metadata !1243, metadata !DIExpression()), !dbg !1267
  %395 = zext i32 %394 to i64, !dbg !1550
  %396 = getelementptr inbounds double, ptr %31, i64 %395, !dbg !1550
  %397 = load double, ptr %396, align 8, !dbg !1550, !tbaa !1313
  %398 = sub i32 %394, %0, !dbg !1552
  %399 = zext i32 %398 to i64, !dbg !1553
  %400 = getelementptr inbounds double, ptr %4, i64 %399, !dbg !1553
  store double %397, ptr %400, align 8, !dbg !1554, !tbaa !1313
  %401 = add i32 %394, 1, !dbg !1555
  tail call void @llvm.dbg.value(metadata i32 %401, metadata !1243, metadata !DIExpression()), !dbg !1267
  %402 = icmp ugt i32 %401, %1, !dbg !1543
  br i1 %402, label %403, label %393, !dbg !1546, !llvm.loop !1556

403:                                              ; preds = %393, %370, %157, %41
  %404 = phi i32 [ 4, %41 ], [ 5, %157 ], [ 0, %370 ], [ 0, %393 ], !dbg !1267
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #8, !dbg !1558
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8, !dbg !1558
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8, !dbg !1558
  ret i32 %404, !dbg !1558
}

declare !dbg !1559 void @gsl_matrix_view_array(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !1562 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1565 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1568 i32 @gsl_eigen_symmv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1571 i32 @gsl_eigen_symmv_sort(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_mathieu_b_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !1575 {
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1593
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1589, metadata !DIExpression(), metadata !1593, metadata ptr %6, metadata !DIExpression()), !dbg !1594
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1595
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1590, metadata !DIExpression(), metadata !1595, metadata ptr %7, metadata !DIExpression()), !dbg !1594
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1591, metadata !DIExpression(), metadata !1596, metadata ptr %8, metadata !DIExpression()), !dbg !1594
  %9 = alloca %struct._gsl_matrix_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_matrix_view, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1577, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1578, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata double %2, metadata !1579, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1580, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1581, metadata !DIExpression()), !dbg !1594
  %12 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 1, !dbg !1597
  %13 = load i64, ptr %12, align 8, !dbg !1597, !tbaa !1271
  %14 = trunc i64 %13 to i32, !dbg !1598
  %15 = add i32 %14, -1, !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1582, metadata !DIExpression()), !dbg !1594
  %16 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 2, !dbg !1599
  %17 = load i64, ptr %16, align 8, !dbg !1599, !tbaa !1278
  %18 = trunc i64 %17 to i32, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1583, metadata !DIExpression()), !dbg !1594
  %19 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 3, !dbg !1601
  %20 = load i32, ptr %19, align 8, !dbg !1601, !tbaa !1281
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1584, metadata !DIExpression()), !dbg !1594
  %21 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 12, !dbg !1602
  %22 = load ptr, ptr %21, align 8, !dbg !1602, !tbaa !1291
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1587, metadata !DIExpression()), !dbg !1594
  %23 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 7, !dbg !1603
  %24 = load ptr, ptr %23, align 8, !dbg !1603, !tbaa !1604
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !1588, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #8, !dbg !1605
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8, !dbg !1605
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #8, !dbg !1606
  %25 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 15, !dbg !1607
  %26 = load ptr, ptr %25, align 8, !dbg !1607, !tbaa !1297
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !1592, metadata !DIExpression()), !dbg !1594
  %27 = sext i32 %1 to i64, !dbg !1608
  %28 = load i64, ptr %3, align 8, !dbg !1610, !tbaa !1301
  %29 = icmp ult i64 %28, %27, !dbg !1611
  br i1 %29, label %40, label %30, !dbg !1612

30:                                               ; preds = %5
  %31 = icmp sle i32 %1, %0, !dbg !1613
  %32 = icmp slt i32 %0, 0
  %33 = or i1 %32, %31, !dbg !1614
  br i1 %33, label %40, label %34, !dbg !1614

34:                                               ; preds = %30
  %35 = mul i32 %15, %15
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %36 = icmp eq i32 %35, 0, !dbg !1615
  br i1 %36, label %41, label %37, !dbg !1618

37:                                               ; preds = %34
  %38 = zext i32 %35 to i64, !dbg !1618
  %39 = shl nuw nsw i64 %38, 3, !dbg !1618
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %39, i1 false), !dbg !1619, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1585, metadata !DIExpression()), !dbg !1594
  br label %41, !dbg !1620

40:                                               ; preds = %30, %5
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 819, i32 noundef 4) #8, !dbg !1623
  br label %234, !dbg !1623

41:                                               ; preds = %37, %34
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %42 = icmp eq i32 %15, 0, !dbg !1620
  br i1 %42, label %77, label %43, !dbg !1626

43:                                               ; preds = %41
  %44 = zext i32 %15 to i64, !dbg !1620
  br label %45, !dbg !1626

45:                                               ; preds = %75, %43
  %46 = phi i64 [ 0, %43 ], [ %47, %75 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1586, metadata !DIExpression()), !dbg !1594
  %47 = add nuw nsw i64 %46, 1, !dbg !1627
  %48 = trunc i64 %46 to i32
  %49 = mul i32 %15, %48
  %50 = trunc i64 %47 to i32
  %51 = shl i32 %50, 2
  %52 = mul i32 %51, %50
  %53 = uitofp i32 %52 to double
  %54 = mul i64 %13, %46
  %55 = and i64 %54, 4294967295
  %56 = getelementptr inbounds double, ptr %22, i64 %55
  br label %57, !dbg !1628

57:                                               ; preds = %72, %45
  %58 = phi i64 [ 0, %45 ], [ %73, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1586, metadata !DIExpression()), !dbg !1594
  %59 = icmp eq i64 %46, %58, !dbg !1630
  br i1 %59, label %60, label %62, !dbg !1634

60:                                               ; preds = %57
  store double %53, ptr %56, align 8, !dbg !1635, !tbaa !1313
  %61 = add nuw nsw i64 %58, 1, !dbg !1636
  br label %72, !dbg !1637

62:                                               ; preds = %57
  %63 = add nuw nsw i64 %58, 1, !dbg !1638
  %64 = icmp eq i64 %46, %63, !dbg !1640
  %65 = icmp eq i64 %47, %58
  %66 = or i1 %65, %64, !dbg !1641
  br i1 %66, label %67, label %72, !dbg !1641

67:                                               ; preds = %62
  %68 = trunc i64 %58 to i32, !dbg !1642
  %69 = add i32 %49, %68, !dbg !1642
  %70 = zext i32 %69 to i64, !dbg !1643
  %71 = getelementptr inbounds double, ptr %22, i64 %70, !dbg !1643
  store double %2, ptr %71, align 8, !dbg !1644, !tbaa !1313
  br label %72, !dbg !1643

72:                                               ; preds = %67, %62, %60
  %73 = phi i64 [ %63, %62 ], [ %61, %60 ], [ %63, %67 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1586, metadata !DIExpression()), !dbg !1594
  %74 = icmp eq i64 %73, %44, !dbg !1645
  br i1 %74, label %75, label %57, !dbg !1628, !llvm.loop !1646

75:                                               ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1585, metadata !DIExpression()), !dbg !1594
  %76 = icmp eq i64 %47, %44, !dbg !1620
  br i1 %76, label %77, label %45, !dbg !1626, !llvm.loop !1648

77:                                               ; preds = %75, %41
  %78 = phi i64 [ 0, %41 ], [ %44, %75 ], !dbg !1650
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef %22, i64 noundef %78, i64 noundef %78) #8, !dbg !1651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1589, metadata !DIExpression(), metadata !1652, metadata ptr %6, metadata !DIExpression()), !dbg !1594
  %79 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 13, !dbg !1653
  %80 = load ptr, ptr %79, align 8, !dbg !1653, !tbaa !1448
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef %80, i64 noundef 0, i64 noundef %78) #8, !dbg !1654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1591, metadata !DIExpression(), metadata !1655, metadata ptr %8, metadata !DIExpression()), !dbg !1594
  %81 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %3, i64 0, i32 14, !dbg !1656
  %82 = load ptr, ptr %81, align 8, !dbg !1656, !tbaa !1452
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef %82, i64 noundef 0, i64 noundef 0, i64 noundef %78, i64 noundef %78) #8, !dbg !1657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1590, metadata !DIExpression(), metadata !1658, metadata ptr %7, metadata !DIExpression()), !dbg !1594
  %83 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %26) #8, !dbg !1659
  %84 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #8, !dbg !1660
  store double 0.000000e+00, ptr %24, align 8, !dbg !1661, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %85 = icmp eq i32 %15, %20, !dbg !1662
  br i1 %85, label %109, label %86, !dbg !1665

86:                                               ; preds = %77
  %87 = sub i32 %15, %20
  %88 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !1461
  %90 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !1463
  %92 = call i32 @llvm.umax.i32(i32 %87, i32 1), !dbg !1665
  %93 = zext i32 %92 to i64, !dbg !1662
  %94 = and i64 %93, 1, !dbg !1665
  %95 = icmp ult i32 %87, 2, !dbg !1665
  br i1 %95, label %98, label %96, !dbg !1665

96:                                               ; preds = %86
  %97 = and i64 %93, 4294967294, !dbg !1665
  br label %115, !dbg !1665

98:                                               ; preds = %115, %86
  %99 = phi i64 [ 0, %86 ], [ %128, %115 ]
  %100 = icmp eq i64 %94, 0, !dbg !1665
  br i1 %100, label %109, label %101, !dbg !1665

101:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1472, metadata !DIExpression()), !dbg !1666
  %102 = mul i64 %91, %99, !dbg !1668
  %103 = getelementptr inbounds double, ptr %89, i64 %102, !dbg !1669
  %104 = load double, ptr %103, align 8, !dbg !1669, !tbaa !1313
  %105 = shl i64 %99, 1, !dbg !1670
  %106 = add i64 %105, 2, !dbg !1670
  %107 = and i64 %106, 4294967294, !dbg !1671
  %108 = getelementptr inbounds double, ptr %24, i64 %107, !dbg !1671
  store double %104, ptr %108, align 8, !dbg !1672, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1585, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1594
  br label %109

109:                                              ; preds = %101, %98, %77
  %110 = mul i32 %18, %18
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %111 = icmp eq i32 %110, 0, !dbg !1673
  br i1 %111, label %134, label %112, !dbg !1676

112:                                              ; preds = %109
  %113 = zext i32 %110 to i64, !dbg !1676
  %114 = shl nuw nsw i64 %113, 3, !dbg !1676
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %114, i1 false), !dbg !1677, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1585, metadata !DIExpression()), !dbg !1594
  br label %134, !dbg !1678

115:                                              ; preds = %115, %96
  %116 = phi i64 [ 0, %96 ], [ %128, %115 ]
  %117 = phi i64 [ 0, %96 ], [ %132, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !1472, metadata !DIExpression()), !dbg !1666
  %118 = mul i64 %91, %116, !dbg !1668
  %119 = getelementptr inbounds double, ptr %89, i64 %118, !dbg !1669
  %120 = load double, ptr %119, align 8, !dbg !1669, !tbaa !1313
  %121 = or disjoint i64 %116, 1, !dbg !1681
  %122 = shl nuw i64 %121, 1, !dbg !1670
  %123 = and i64 %122, 4294967294, !dbg !1671
  %124 = getelementptr inbounds double, ptr %24, i64 %123, !dbg !1671
  store double %120, ptr %124, align 8, !dbg !1672, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !1472, metadata !DIExpression()), !dbg !1666
  %125 = mul i64 %91, %121, !dbg !1668
  %126 = getelementptr inbounds double, ptr %89, i64 %125, !dbg !1669
  %127 = load double, ptr %126, align 8, !dbg !1669, !tbaa !1313
  %128 = add nuw nsw i64 %116, 2, !dbg !1681
  %129 = shl nuw i64 %128, 1, !dbg !1670
  %130 = and i64 %129, 4294967292, !dbg !1671
  %131 = getelementptr inbounds double, ptr %24, i64 %130, !dbg !1671
  store double %127, ptr %131, align 8, !dbg !1672, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1585, metadata !DIExpression()), !dbg !1594
  %132 = add nuw i64 %117, 2, !dbg !1665
  %133 = icmp eq i64 %132, %97, !dbg !1665
  br i1 %133, label %98, label %115, !dbg !1665, !llvm.loop !1682

134:                                              ; preds = %112, %109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %135 = icmp eq i32 %18, 0, !dbg !1678
  br i1 %135, label %170, label %136, !dbg !1684

136:                                              ; preds = %134
  %137 = and i64 %17, 4294967295, !dbg !1678
  br label %138, !dbg !1684

138:                                              ; preds = %168, %136
  %139 = phi i64 [ 0, %136 ], [ %140, %168 ]
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1586, metadata !DIExpression()), !dbg !1594
  %140 = add nuw nsw i64 %139, 1, !dbg !1685
  %141 = trunc i64 %139 to i32
  %142 = mul i32 %141, %18
  %143 = shl i32 %141, 1
  %144 = or disjoint i32 %143, 1
  %145 = mul i32 %144, %144
  %146 = uitofp i32 %145 to double
  %147 = add i32 %142, %141
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %22, i64 %148
  br label %150, !dbg !1686

150:                                              ; preds = %165, %138
  %151 = phi i64 [ 0, %138 ], [ %166, %165 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !1586, metadata !DIExpression()), !dbg !1594
  %152 = icmp eq i64 %139, %151, !dbg !1688
  br i1 %152, label %153, label %155, !dbg !1692

153:                                              ; preds = %150
  store double %146, ptr %149, align 8, !dbg !1693, !tbaa !1313
  %154 = add nuw nsw i64 %151, 1, !dbg !1694
  br label %165, !dbg !1695

155:                                              ; preds = %150
  %156 = add nuw nsw i64 %151, 1, !dbg !1696
  %157 = icmp eq i64 %139, %156, !dbg !1698
  %158 = icmp eq i64 %140, %151
  %159 = or i1 %158, %157, !dbg !1699
  br i1 %159, label %160, label %165, !dbg !1699

160:                                              ; preds = %155
  %161 = trunc i64 %151 to i32, !dbg !1700
  %162 = add i32 %142, %161, !dbg !1700
  %163 = zext i32 %162 to i64, !dbg !1701
  %164 = getelementptr inbounds double, ptr %22, i64 %163, !dbg !1701
  store double %2, ptr %164, align 8, !dbg !1702, !tbaa !1313
  br label %165, !dbg !1701

165:                                              ; preds = %160, %155, %153
  %166 = phi i64 [ %156, %155 ], [ %154, %153 ], [ %156, %160 ], !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !1586, metadata !DIExpression()), !dbg !1594
  %167 = icmp eq i64 %166, %137, !dbg !1703
  br i1 %167, label %168, label %150, !dbg !1686, !llvm.loop !1704

168:                                              ; preds = %165
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1585, metadata !DIExpression()), !dbg !1594
  %169 = icmp eq i64 %140, %137, !dbg !1678
  br i1 %169, label %170, label %138, !dbg !1684, !llvm.loop !1706

170:                                              ; preds = %168, %134
  %171 = load double, ptr %22, align 8, !dbg !1708, !tbaa !1313
  %handler_result = call double @fSubHandlerDouble(double %171, double %2), !dbg !1708
  store double %handler_result, ptr %22, align 8, !dbg !1708, !tbaa !1313
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #8, !dbg !1709
  %172 = and i64 %17, 4294967295, !dbg !1710
  call void @gsl_matrix_view_array(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %22, i64 noundef %172, i64 noundef %172) #8, !dbg !1709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !1709, !tbaa.struct !1518, !DIAssignID !1711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1589, metadata !DIExpression(), metadata !1711, metadata ptr %6, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #8, !dbg !1709
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8, !dbg !1712
  %173 = load ptr, ptr %79, align 8, !dbg !1713, !tbaa !1448
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef %173, i64 noundef 0, i64 noundef %172) #8, !dbg !1712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !1712, !tbaa.struct !1525, !DIAssignID !1714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1591, metadata !DIExpression(), metadata !1714, metadata ptr %8, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8, !dbg !1712
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #8, !dbg !1715
  %174 = load ptr, ptr %81, align 8, !dbg !1716, !tbaa !1452
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef %174, i64 noundef 0, i64 noundef 0, i64 noundef %172, i64 noundef %172) #8, !dbg !1715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 48, i1 false), !dbg !1715, !tbaa.struct !1518, !DIAssignID !1717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1590, metadata !DIExpression(), metadata !1717, metadata ptr %7, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #8, !dbg !1715
  %175 = call i32 @gsl_eigen_symmv(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %26) #8, !dbg !1718
  %176 = call i32 @gsl_eigen_symmv_sort(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #8, !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %177 = icmp eq i32 %20, %18, !dbg !1720
  br i1 %177, label %201, label %178, !dbg !1723

178:                                              ; preds = %170
  %179 = sub i32 %18, %20
  %180 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !1461
  %182 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !1463
  %184 = call i32 @llvm.umax.i32(i32 %179, i32 1), !dbg !1723
  %185 = zext i32 %184 to i64, !dbg !1720
  %186 = and i64 %185, 1, !dbg !1723
  %187 = icmp ult i32 %179, 2, !dbg !1723
  br i1 %187, label %190, label %188, !dbg !1723

188:                                              ; preds = %178
  %189 = and i64 %185, 4294967294, !dbg !1723
  br label %203, !dbg !1723

190:                                              ; preds = %203, %178
  %191 = phi i64 [ 0, %178 ], [ %221, %203 ]
  %192 = icmp eq i64 %186, 0, !dbg !1723
  br i1 %192, label %201, label %193, !dbg !1723

193:                                              ; preds = %190
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !1472, metadata !DIExpression()), !dbg !1724
  %194 = mul i64 %183, %191, !dbg !1726
  %195 = getelementptr inbounds double, ptr %181, i64 %194, !dbg !1727
  %196 = load double, ptr %195, align 8, !dbg !1727, !tbaa !1313
  %197 = shl nuw i64 %191, 1, !dbg !1728
  %198 = and i64 %197, 4294967294, !dbg !1729
  %199 = or disjoint i64 %198, 1, !dbg !1729
  %200 = getelementptr inbounds double, ptr %24, i64 %199, !dbg !1729
  store double %196, ptr %200, align 8, !dbg !1730, !tbaa !1313
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !1585, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1594
  br label %201, !dbg !1731

201:                                              ; preds = %193, %190, %170
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1585, metadata !DIExpression()), !dbg !1594
  %202 = icmp ugt i32 %0, %1, !dbg !1731
  br i1 %202, label %234, label %224, !dbg !1734

203:                                              ; preds = %203, %188
  %204 = phi i64 [ 0, %188 ], [ %221, %203 ]
  %205 = phi i64 [ 0, %188 ], [ %222, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !1472, metadata !DIExpression()), !dbg !1724
  %206 = mul i64 %183, %204, !dbg !1726
  %207 = getelementptr inbounds double, ptr %181, i64 %206, !dbg !1727
  %208 = load double, ptr %207, align 8, !dbg !1727, !tbaa !1313
  %209 = shl nuw i64 %204, 1, !dbg !1728
  %210 = and i64 %209, 4294967292, !dbg !1729
  %211 = or disjoint i64 %210, 1, !dbg !1729
  %212 = getelementptr inbounds double, ptr %24, i64 %211, !dbg !1729
  store double %208, ptr %212, align 8, !dbg !1730, !tbaa !1313
  %213 = or disjoint i64 %204, 1, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !1585, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !1472, metadata !DIExpression()), !dbg !1724
  %214 = mul i64 %183, %213, !dbg !1726
  %215 = getelementptr inbounds double, ptr %181, i64 %214, !dbg !1727
  %216 = load double, ptr %215, align 8, !dbg !1727, !tbaa !1313
  %217 = shl nuw i64 %213, 1, !dbg !1728
  %218 = and i64 %217, 4294967294, !dbg !1729
  %219 = or disjoint i64 %218, 1, !dbg !1729
  %220 = getelementptr inbounds double, ptr %24, i64 %219, !dbg !1729
  store double %216, ptr %220, align 8, !dbg !1730, !tbaa !1313
  %221 = add nuw nsw i64 %204, 2, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !1585, metadata !DIExpression()), !dbg !1594
  %222 = add i64 %205, 2, !dbg !1723
  %223 = icmp eq i64 %222, %189, !dbg !1723
  br i1 %223, label %190, label %203, !dbg !1723, !llvm.loop !1736

224:                                              ; preds = %224, %201
  %225 = phi i32 [ %232, %224 ], [ %0, %201 ]
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !1585, metadata !DIExpression()), !dbg !1594
  %226 = zext i32 %225 to i64, !dbg !1738
  %227 = getelementptr inbounds double, ptr %24, i64 %226, !dbg !1738
  %228 = load double, ptr %227, align 8, !dbg !1738, !tbaa !1313
  %229 = sub i32 %225, %0, !dbg !1740
  %230 = zext i32 %229 to i64, !dbg !1741
  %231 = getelementptr inbounds double, ptr %4, i64 %230, !dbg !1741
  store double %228, ptr %231, align 8, !dbg !1742, !tbaa !1313
  %232 = add i32 %225, 1, !dbg !1743
  tail call void @llvm.dbg.value(metadata i32 %232, metadata !1585, metadata !DIExpression()), !dbg !1594
  %233 = icmp ugt i32 %232, %1, !dbg !1731
  br i1 %233, label %234, label %224, !dbg !1734, !llvm.loop !1744

234:                                              ; preds = %224, %201, %40
  %235 = phi i32 [ 4, %40 ], [ 0, %201 ], [ 0, %224 ], !dbg !1594
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #8, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8, !dbg !1746
  ret i32 %235, !dbg !1746
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_a(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1747 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1751, metadata !DIExpression(), metadata !1753, metadata ptr %3, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1749, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata double %1, metadata !1750, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1755
  %4 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1755, !range !158
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1752, metadata !DIExpression()), !dbg !1754
  %5 = icmp eq i32 %4, 0, !dbg !1756
  br i1 %5, label %7, label %6, !dbg !1755

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 884, i32 noundef %4) #8, !dbg !1758
  br label %7, !dbg !1758

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1755, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1761
  ret double %8, !dbg !1761
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_b(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1762 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1766, metadata !DIExpression(), metadata !1768, metadata ptr %3, metadata !DIExpression()), !dbg !1769
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1764, metadata !DIExpression()), !dbg !1769
  tail call void @llvm.dbg.value(metadata double %1, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1770
  %4 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1770, !range !158
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1767, metadata !DIExpression()), !dbg !1769
  %5 = icmp eq i32 %4, 0, !dbg !1771
  br i1 %5, label %7, label %6, !dbg !1770

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 889, i32 noundef %4) #8, !dbg !1773
  br label %7, !dbg !1773

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1770, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1776
  ret double %8, !dbg !1776
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1777 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc double @asymptotic(i32 noundef %0, double noundef %1) unnamed_addr #6 !dbg !190 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !189, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata double %1, metadata !192, metadata !DIExpression()), !dbg !1781
  %3 = shl nsw i32 %0, 1, !dbg !1782
  %4 = or disjoint i32 %3, 1, !dbg !1783
  %5 = sitofp i32 %4 to double, !dbg !1784
  tail call void @llvm.dbg.value(metadata double %5, metadata !194, metadata !DIExpression()), !dbg !1781
  %6 = fmul double %5, %5, !dbg !1785
  tail call void @llvm.dbg.value(metadata double %6, metadata !195, metadata !DIExpression()), !dbg !1781
  %7 = fmul double %6, %6, !dbg !1786
  tail call void @llvm.dbg.value(metadata double %7, metadata !196, metadata !DIExpression()), !dbg !1781
  %8 = fmul double %6, %7, !dbg !1787
  tail call void @llvm.dbg.value(metadata double %8, metadata !197, metadata !DIExpression()), !dbg !1781
  %9 = tail call double @sqrt(double noundef %1) #8, !dbg !1788
  %10 = fmul double %9, 2.000000e+00, !dbg !1789
  tail call void @llvm.dbg.value(metadata double %10, metadata !198, metadata !DIExpression()), !dbg !1781
  %11 = fmul double %10, 1.600000e+01, !dbg !1790
  tail call void @llvm.dbg.value(metadata double %11, metadata !199, metadata !DIExpression()), !dbg !1781
  %12 = fmul double %11, %11, !dbg !1791
  tail call void @llvm.dbg.value(metadata double %12, metadata !200, metadata !DIExpression()), !dbg !1781
  %13 = fmul double %11, %12, !dbg !1792
  tail call void @llvm.dbg.value(metadata double %13, metadata !201, metadata !DIExpression()), !dbg !1781
  %14 = fmul double %11, %13, !dbg !1793
  tail call void @llvm.dbg.value(metadata double %14, metadata !202, metadata !DIExpression()), !dbg !1781
  %15 = fmul double %11, %14, !dbg !1794
  tail call void @llvm.dbg.value(metadata double %15, metadata !203, metadata !DIExpression()), !dbg !1781
  %16 = fmul double %1, 2.000000e+00, !dbg !1795
  %17 = fmul double %10, %5, !dbg !1796
  %handler_result = call double @fSubHandlerDouble(double %17, double %16), !dbg !1797
  %handler_result1 = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !1798
  %18 = fmul double %handler_result1, 1.250000e-01, !dbg !1798
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result, double %18), !dbg !1799
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !1781
  %19 = fmul double %5, 2.500000e-01, !dbg !1799
  %handler_result3 = call double @fAddHandlerDouble(double %6, double 3.000000e+00), !dbg !1800
  %20 = fmul double %19, %handler_result3, !dbg !1800
  %21 = fdiv double %20, %11, !dbg !1801
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result2, double %21), !dbg !1802
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !1781
  %22 = fmul double %7, 5.000000e+00, !dbg !1802
  %23 = fmul double %6, 3.400000e+01, !dbg !1803
  %handler_result5 = call double @fAddHandlerDouble(double %23, double %22), !dbg !1804
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 9.000000e+00), !dbg !1805
  %24 = fmul double %handler_result6, 2.500000e-01, !dbg !1805
  %25 = fdiv double %24, %12, !dbg !1806
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result4, double %25), !dbg !1807
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !1781
  %26 = fmul double %7, 3.300000e+01, !dbg !1807
  %27 = fmul double %6, 4.100000e+02, !dbg !1808
  %handler_result8 = call double @fAddHandlerDouble(double %27, double %26), !dbg !1809
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 4.050000e+02), !dbg !1810
  %28 = fmul double %19, %handler_result9, !dbg !1810
  %29 = fdiv double %28, %13, !dbg !1811
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result7, double %29), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !193, metadata !DIExpression()), !dbg !1781
  %30 = fmul double %8, 6.300000e+01, !dbg !1812
  %31 = fmul double %7, 1.260000e+03, !dbg !1813
  %handler_result11 = call double @fAddHandlerDouble(double %31, double %30), !dbg !1814
  %32 = fmul double %6, 2.943000e+03, !dbg !1814
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %handler_result11), !dbg !1815
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 4.860000e+02), !dbg !1816
  %33 = fdiv double %handler_result13, %14, !dbg !1816
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result10, double %33), !dbg !1817
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !193, metadata !DIExpression()), !dbg !1781
  %34 = fmul double %8, 5.270000e+02, !dbg !1817
  %35 = fmul double %7, 1.561700e+04, !dbg !1818
  %handler_result15 = call double @fAddHandlerDouble(double %35, double %34), !dbg !1819
  %36 = fmul double %6, 6.900100e+04, !dbg !1819
  %handler_result16 = call double @fAddHandlerDouble(double %36, double %handler_result15), !dbg !1820
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 4.160700e+04), !dbg !1821
  %37 = fmul double %handler_result17, %5, !dbg !1821
  %38 = fdiv double %37, %15, !dbg !1822
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result14, double %38), !dbg !1823
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !193, metadata !DIExpression()), !dbg !1781
  ret double %handler_result18, !dbg !1823
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1824 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1827 double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1828 double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!187 = !DILocation(line: 220, column: 27, scope: !183, inlinedAt: !180)
!188 = !DILocation(line: 220, column: 15, scope: !183, inlinedAt: !180)
!189 = !DILocalVariable(name: "order", arg: 1, scope: !190, file: !2, line: 144, type: !38)
!190 = distinct !DISubprogram(name: "asymptotic", scope: !2, file: !2, line: 144, type: !162, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !191)
!191 = !{!189, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!192 = !DILocalVariable(name: "qq", arg: 2, scope: !190, file: !2, line: 144, type: !84)
!193 = !DILocalVariable(name: "asymp", scope: !190, file: !2, line: 146, type: !84)
!194 = !DILocalVariable(name: "nn", scope: !190, file: !2, line: 147, type: !84)
!195 = !DILocalVariable(name: "n2", scope: !190, file: !2, line: 147, type: !84)
!196 = !DILocalVariable(name: "n4", scope: !190, file: !2, line: 147, type: !84)
!197 = !DILocalVariable(name: "n6", scope: !190, file: !2, line: 147, type: !84)
!198 = !DILocalVariable(name: "hh", scope: !190, file: !2, line: 148, type: !84)
!199 = !DILocalVariable(name: "ah", scope: !190, file: !2, line: 148, type: !84)
!200 = !DILocalVariable(name: "ah2", scope: !190, file: !2, line: 148, type: !84)
!201 = !DILocalVariable(name: "ah3", scope: !190, file: !2, line: 148, type: !84)
!202 = !DILocalVariable(name: "ah4", scope: !190, file: !2, line: 148, type: !84)
!203 = !DILocalVariable(name: "ah5", scope: !190, file: !2, line: 148, type: !84)
!204 = !DILocation(line: 0, scope: !190, inlinedAt: !205)
!205 = distinct !DILocation(line: 222, column: 22, scope: !183, inlinedAt: !180)
!206 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !205)
!207 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !205)
!208 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !205)
!209 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !205)
!210 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !205)
!211 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !205)
!212 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !205)
!213 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !205)
!214 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !205)
!215 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !205)
!216 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !205)
!217 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !205)
!218 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !205)
!219 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !205)
!220 = !DILocation(line: 222, column: 15, scope: !183, inlinedAt: !180)
!221 = !DILocation(line: 226, column: 18, scope: !222, inlinedAt: !180)
!222 = distinct !DILexicalBlock(scope: !175, file: !2, line: 226, column: 15)
!223 = !DILocation(line: 226, column: 15, scope: !175, inlinedAt: !180)
!224 = !DILocation(line: 227, column: 43, scope: !222, inlinedAt: !180)
!225 = !DILocation(line: 227, column: 46, scope: !222, inlinedAt: !180)
!226 = !DILocation(line: 227, column: 54, scope: !222, inlinedAt: !180)
!227 = !DILocation(line: 227, column: 58, scope: !222, inlinedAt: !180)
!228 = !DILocation(line: 227, column: 37, scope: !222, inlinedAt: !180)
!229 = !DILocation(line: 227, column: 30, scope: !222, inlinedAt: !180)
!230 = !DILocation(line: 227, column: 15, scope: !222, inlinedAt: !180)
!231 = !DILocation(line: 0, scope: !190, inlinedAt: !232)
!232 = distinct !DILocation(line: 229, column: 22, scope: !222, inlinedAt: !180)
!233 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !232)
!234 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !232)
!235 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !232)
!236 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !232)
!237 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !232)
!238 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !232)
!239 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !232)
!240 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !232)
!241 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !232)
!242 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !232)
!243 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !232)
!244 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !232)
!245 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !232)
!246 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !232)
!247 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !232)
!248 = !DILocation(line: 229, column: 15, scope: !222, inlinedAt: !180)
!249 = !DILocation(line: 233, column: 18, scope: !250, inlinedAt: !180)
!250 = distinct !DILexicalBlock(scope: !175, file: !2, line: 233, column: 15)
!251 = !DILocation(line: 233, column: 15, scope: !175, inlinedAt: !180)
!252 = !DILocation(line: 236, column: 27, scope: !253, inlinedAt: !180)
!253 = distinct !DILexicalBlock(scope: !250, file: !2, line: 234, column: 11)
!254 = !DILocation(line: 236, column: 30, scope: !253, inlinedAt: !180)
!255 = !DILocation(line: 237, column: 22, scope: !253, inlinedAt: !180)
!256 = !DILocation(line: 237, column: 25, scope: !253, inlinedAt: !180)
!257 = !DILocation(line: 241, column: 11, scope: !175, inlinedAt: !180)
!258 = !DILocation(line: 0, scope: !190, inlinedAt: !259)
!259 = distinct !DILocation(line: 240, column: 22, scope: !250, inlinedAt: !180)
!260 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !259)
!261 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !259)
!262 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !259)
!263 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !259)
!264 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !259)
!265 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !259)
!266 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !259)
!267 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !259)
!268 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !259)
!269 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !259)
!270 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !259)
!271 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !259)
!272 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !259)
!273 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !259)
!274 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !259)
!275 = !DILocation(line: 240, column: 15, scope: !250, inlinedAt: !180)
!276 = !DILocation(line: 244, column: 18, scope: !277, inlinedAt: !180)
!277 = distinct !DILexicalBlock(scope: !175, file: !2, line: 244, column: 15)
!278 = !DILocation(line: 244, column: 15, scope: !175, inlinedAt: !180)
!279 = !DILocation(line: 247, column: 22, scope: !280, inlinedAt: !180)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 245, column: 11)
!281 = !DILocation(line: 247, column: 35, scope: !280, inlinedAt: !180)
!282 = !DILocation(line: 247, column: 38, scope: !280, inlinedAt: !180)
!283 = !DILocation(line: 248, column: 22, scope: !280, inlinedAt: !180)
!284 = !DILocation(line: 248, column: 25, scope: !280, inlinedAt: !180)
!285 = !DILocation(line: 252, column: 11, scope: !175, inlinedAt: !180)
!286 = !DILocation(line: 0, scope: !190, inlinedAt: !287)
!287 = distinct !DILocation(line: 251, column: 22, scope: !277, inlinedAt: !180)
!288 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !287)
!289 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !287)
!290 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !287)
!291 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !287)
!292 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !287)
!293 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !287)
!294 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !287)
!295 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !287)
!296 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !287)
!297 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !287)
!298 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !287)
!299 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !287)
!300 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !287)
!301 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !287)
!302 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !287)
!303 = !DILocation(line: 251, column: 15, scope: !277, inlinedAt: !180)
!304 = !DILocation(line: 255, column: 21, scope: !174, inlinedAt: !180)
!305 = !DILocation(line: 255, column: 15, scope: !175, inlinedAt: !180)
!306 = !DILocation(line: 257, column: 23, scope: !172, inlinedAt: !180)
!307 = !DILocation(line: 257, column: 22, scope: !172, inlinedAt: !180)
!308 = !DILocation(line: 257, column: 33, scope: !172, inlinedAt: !180)
!309 = !DILocation(line: 257, column: 32, scope: !172, inlinedAt: !180)
!310 = !DILocation(line: 257, column: 29, scope: !172, inlinedAt: !180)
!311 = !DILocation(line: 257, column: 19, scope: !173, inlinedAt: !180)
!312 = !DILocation(line: 260, column: 45, scope: !171, inlinedAt: !180)
!313 = !DILocation(line: 260, column: 31, scope: !171, inlinedAt: !180)
!314 = !DILocation(line: 0, scope: !171, inlinedAt: !180)
!315 = !DILocation(line: 261, column: 49, scope: !171, inlinedAt: !180)
!316 = !DILocation(line: 262, column: 33, scope: !171, inlinedAt: !180)
!317 = !DILocation(line: 263, column: 33, scope: !171, inlinedAt: !180)
!318 = !DILocation(line: 264, column: 36, scope: !171, inlinedAt: !180)
!319 = !DILocation(line: 264, column: 39, scope: !171, inlinedAt: !180)
!320 = !DILocation(line: 265, column: 31, scope: !171, inlinedAt: !180)
!321 = !DILocation(line: 265, column: 39, scope: !171, inlinedAt: !180)
!322 = !DILocation(line: 265, column: 46, scope: !171, inlinedAt: !180)
!323 = !DILocation(line: 265, column: 50, scope: !171, inlinedAt: !180)
!324 = !DILocation(line: 265, column: 59, scope: !171, inlinedAt: !180)
!325 = !DILocation(line: 265, column: 42, scope: !171, inlinedAt: !180)
!326 = !DILocation(line: 266, column: 31, scope: !171, inlinedAt: !180)
!327 = !DILocation(line: 266, column: 34, scope: !171, inlinedAt: !180)
!328 = !DILocation(line: 266, column: 42, scope: !171, inlinedAt: !180)
!329 = !DILocation(line: 266, column: 46, scope: !171, inlinedAt: !180)
!330 = !DILocation(line: 266, column: 51, scope: !171, inlinedAt: !180)
!331 = !DILocation(line: 266, column: 54, scope: !171, inlinedAt: !180)
!332 = !DILocation(line: 267, column: 26, scope: !171, inlinedAt: !180)
!333 = !DILocation(line: 267, column: 30, scope: !171, inlinedAt: !180)
!334 = !DILocation(line: 267, column: 34, scope: !171, inlinedAt: !180)
!335 = !DILocation(line: 267, column: 43, scope: !171, inlinedAt: !180)
!336 = !DILocation(line: 267, column: 52, scope: !171, inlinedAt: !180)
!337 = !DILocation(line: 266, column: 57, scope: !171, inlinedAt: !180)
!338 = !DILocation(line: 268, column: 26, scope: !339, inlinedAt: !180)
!339 = distinct !DILexicalBlock(scope: !171, file: !2, line: 268, column: 23)
!340 = !DILocation(line: 268, column: 37, scope: !339, inlinedAt: !180)
!341 = !DILocation(line: 268, column: 36, scope: !339, inlinedAt: !180)
!342 = !DILocation(line: 268, column: 33, scope: !339, inlinedAt: !180)
!343 = !DILocation(line: 268, column: 23, scope: !171, inlinedAt: !180)
!344 = !DILocation(line: 270, column: 33, scope: !345, inlinedAt: !180)
!345 = distinct !DILexicalBlock(scope: !339, file: !2, line: 269, column: 19)
!346 = !DILocation(line: 271, column: 30, scope: !345, inlinedAt: !180)
!347 = !DILocation(line: 272, column: 19, scope: !345, inlinedAt: !180)
!348 = !DILocation(line: 0, scope: !190, inlinedAt: !349)
!349 = distinct !DILocation(line: 275, column: 28, scope: !172, inlinedAt: !180)
!350 = !DILocation(line: 152, column: 9, scope: !190, inlinedAt: !349)
!351 = !DILocation(line: 152, column: 16, scope: !190, inlinedAt: !349)
!352 = !DILocation(line: 152, column: 8, scope: !190, inlinedAt: !349)
!353 = !DILocation(line: 153, column: 10, scope: !190, inlinedAt: !349)
!354 = !DILocation(line: 154, column: 10, scope: !190, inlinedAt: !349)
!355 = !DILocation(line: 155, column: 10, scope: !190, inlinedAt: !349)
!356 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !349)
!357 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !349)
!358 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !349)
!359 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !349)
!360 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !349)
!361 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !349)
!362 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !349)
!363 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !349)
!364 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !349)
!365 = !DILocation(line: 165, column: 37, scope: !190, inlinedAt: !349)
!366 = !DILocation(line: 165, column: 32, scope: !190, inlinedAt: !349)
!367 = !DILocation(line: 166, column: 16, scope: !190, inlinedAt: !349)
!368 = !DILocation(line: 166, column: 19, scope: !190, inlinedAt: !349)
!369 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !349)
!370 = !DILocation(line: 167, column: 35, scope: !190, inlinedAt: !349)
!371 = !DILocation(line: 167, column: 46, scope: !190, inlinedAt: !349)
!372 = !DILocation(line: 167, column: 50, scope: !190, inlinedAt: !349)
!373 = !DILocation(line: 167, column: 16, scope: !190, inlinedAt: !349)
!374 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !349)
!375 = !DILocation(line: 168, column: 35, scope: !190, inlinedAt: !349)
!376 = !DILocation(line: 168, column: 46, scope: !190, inlinedAt: !349)
!377 = !DILocation(line: 168, column: 50, scope: !190, inlinedAt: !349)
!378 = !DILocation(line: 168, column: 19, scope: !190, inlinedAt: !349)
!379 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !349)
!380 = !DILocation(line: 169, column: 24, scope: !190, inlinedAt: !349)
!381 = !DILocation(line: 169, column: 35, scope: !190, inlinedAt: !349)
!382 = !DILocation(line: 169, column: 46, scope: !190, inlinedAt: !349)
!383 = !DILocation(line: 169, column: 50, scope: !190, inlinedAt: !349)
!384 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !349)
!385 = !DILocation(line: 170, column: 24, scope: !190, inlinedAt: !349)
!386 = !DILocation(line: 170, column: 35, scope: !190, inlinedAt: !349)
!387 = !DILocation(line: 170, column: 46, scope: !190, inlinedAt: !349)
!388 = !DILocation(line: 170, column: 50, scope: !190, inlinedAt: !349)
!389 = !DILocation(line: 170, column: 19, scope: !190, inlinedAt: !349)
!390 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !349)
!391 = !DILocation(line: 280, column: 27, scope: !174, inlinedAt: !180)
!392 = !DILocation(line: 280, column: 22, scope: !174, inlinedAt: !180)
!393 = !DILocation(line: 280, column: 15, scope: !174, inlinedAt: !180)
!394 = !DILocation(line: 0, scope: !175, inlinedAt: !180)
!395 = !DILocalVariable(name: "c2", arg: 1, scope: !396, file: !2, line: 177, type: !84)
!396 = distinct !DISubprogram(name: "solve_cubic", scope: !2, file: !2, line: 177, type: !397, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!84, !84, !84, !84}
!399 = !{!395, !400, !401, !402, !403, !404, !405, !406, !407, !410}
!400 = !DILocalVariable(name: "c1", arg: 2, scope: !396, file: !2, line: 177, type: !84)
!401 = !DILocalVariable(name: "c0", arg: 3, scope: !396, file: !2, line: 177, type: !84)
!402 = !DILocalVariable(name: "qq", scope: !396, file: !2, line: 179, type: !84)
!403 = !DILocalVariable(name: "rr", scope: !396, file: !2, line: 179, type: !84)
!404 = !DILocalVariable(name: "ww", scope: !396, file: !2, line: 179, type: !84)
!405 = !DILocalVariable(name: "ss", scope: !396, file: !2, line: 179, type: !84)
!406 = !DILocalVariable(name: "tt", scope: !396, file: !2, line: 179, type: !84)
!407 = !DILocalVariable(name: "t1", scope: !408, file: !2, line: 188, type: !84)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 187, column: 3)
!409 = distinct !DILexicalBlock(scope: !396, file: !2, line: 186, column: 7)
!410 = !DILocalVariable(name: "theta", scope: !411, file: !2, line: 195, type: !84)
!411 = distinct !DILexicalBlock(scope: !409, file: !2, line: 194, column: 3)
!412 = !DILocation(line: 0, scope: !396, inlinedAt: !413)
!413 = distinct !DILocation(line: 284, column: 12, scope: !161, inlinedAt: !180)
!414 = !DILocation(line: 182, column: 10, scope: !396, inlinedAt: !413)
!415 = !DILocation(line: 182, column: 18, scope: !396, inlinedAt: !413)
!416 = !DILocation(line: 182, column: 22, scope: !396, inlinedAt: !413)
!417 = !DILocation(line: 183, column: 10, scope: !396, inlinedAt: !413)
!418 = !DILocation(line: 183, column: 13, scope: !396, inlinedAt: !413)
!419 = !DILocation(line: 183, column: 21, scope: !396, inlinedAt: !413)
!420 = !DILocation(line: 183, column: 28, scope: !396, inlinedAt: !413)
!421 = !DILocation(line: 183, column: 31, scope: !396, inlinedAt: !413)
!422 = !DILocation(line: 183, column: 34, scope: !396, inlinedAt: !413)
!423 = !DILocation(line: 183, column: 38, scope: !396, inlinedAt: !413)
!424 = !DILocation(line: 184, column: 10, scope: !396, inlinedAt: !413)
!425 = !DILocation(line: 184, column: 13, scope: !396, inlinedAt: !413)
!426 = !DILocation(line: 184, column: 21, scope: !396, inlinedAt: !413)
!427 = !DILocation(line: 186, column: 10, scope: !409, inlinedAt: !413)
!428 = !DILocation(line: 186, column: 7, scope: !396, inlinedAt: !413)
!429 = !DILocation(line: 188, column: 24, scope: !408, inlinedAt: !413)
!430 = !DILocation(line: 189, column: 12, scope: !408, inlinedAt: !413)
!431 = !DILocation(line: 0, scope: !408, inlinedAt: !413)
!432 = !DILocation(line: 189, column: 20, scope: !408, inlinedAt: !413)
!433 = !DILocation(line: 189, column: 24, scope: !408, inlinedAt: !413)
!434 = !DILocation(line: 189, column: 23, scope: !408, inlinedAt: !413)
!435 = !DILocation(line: 190, column: 17, scope: !408, inlinedAt: !413)
!436 = !DILocation(line: 191, column: 12, scope: !408, inlinedAt: !413)
!437 = !DILocation(line: 191, column: 20, scope: !408, inlinedAt: !413)
!438 = !DILocation(line: 191, column: 24, scope: !408, inlinedAt: !413)
!439 = !DILocation(line: 191, column: 23, scope: !408, inlinedAt: !413)
!440 = !DILocation(line: 192, column: 3, scope: !408, inlinedAt: !413)
!441 = !DILocation(line: 195, column: 35, scope: !411, inlinedAt: !413)
!442 = !DILocation(line: 195, column: 38, scope: !411, inlinedAt: !413)
!443 = !DILocation(line: 195, column: 41, scope: !411, inlinedAt: !413)
!444 = !DILocation(line: 195, column: 30, scope: !411, inlinedAt: !413)
!445 = !DILocation(line: 195, column: 29, scope: !411, inlinedAt: !413)
!446 = !DILocation(line: 196, column: 14, scope: !411, inlinedAt: !413)
!447 = !DILocation(line: 0, scope: !411, inlinedAt: !413)
!448 = !DILocation(line: 196, column: 13, scope: !411, inlinedAt: !413)
!449 = !DILocation(line: 196, column: 44, scope: !411, inlinedAt: !413)
!450 = !DILocation(line: 196, column: 23, scope: !411, inlinedAt: !413)
!451 = !DILocation(line: 0, scope: !409, inlinedAt: !413)
!452 = !DILocation(line: 200, column: 23, scope: !396, inlinedAt: !413)
!453 = !DILocation(line: 286, column: 15, scope: !454, inlinedAt: !180)
!454 = distinct !DILexicalBlock(scope: !161, file: !2, line: 286, column: 8)
!455 = !DILocation(line: 286, column: 19, scope: !454, inlinedAt: !180)
!456 = !DILocation(line: 286, column: 22, scope: !454, inlinedAt: !180)
!457 = !DILocation(line: 286, column: 37, scope: !454, inlinedAt: !180)
!458 = !DILocation(line: 286, column: 36, scope: !454, inlinedAt: !180)
!459 = !DILocation(line: 286, column: 31, scope: !454, inlinedAt: !180)
!460 = !DILocation(line: 286, column: 8, scope: !161, inlinedAt: !180)
!461 = !DILocation(line: 0, scope: !190, inlinedAt: !462)
!462 = distinct !DILocation(line: 287, column: 14, scope: !454, inlinedAt: !180)
!463 = !DILocation(line: 152, column: 9, scope: !190, inlinedAt: !462)
!464 = !DILocation(line: 152, column: 16, scope: !190, inlinedAt: !462)
!465 = !DILocation(line: 152, column: 8, scope: !190, inlinedAt: !462)
!466 = !DILocation(line: 153, column: 10, scope: !190, inlinedAt: !462)
!467 = !DILocation(line: 154, column: 10, scope: !190, inlinedAt: !462)
!468 = !DILocation(line: 155, column: 10, scope: !190, inlinedAt: !462)
!469 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !462)
!470 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !462)
!471 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !462)
!472 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !462)
!473 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !462)
!474 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !462)
!475 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !462)
!476 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !462)
!477 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !462)
!478 = !DILocation(line: 165, column: 37, scope: !190, inlinedAt: !462)
!479 = !DILocation(line: 165, column: 32, scope: !190, inlinedAt: !462)
!480 = !DILocation(line: 166, column: 16, scope: !190, inlinedAt: !462)
!481 = !DILocation(line: 166, column: 19, scope: !190, inlinedAt: !462)
!482 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !462)
!483 = !DILocation(line: 167, column: 35, scope: !190, inlinedAt: !462)
!484 = !DILocation(line: 167, column: 46, scope: !190, inlinedAt: !462)
!485 = !DILocation(line: 167, column: 50, scope: !190, inlinedAt: !462)
!486 = !DILocation(line: 167, column: 16, scope: !190, inlinedAt: !462)
!487 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !462)
!488 = !DILocation(line: 168, column: 35, scope: !190, inlinedAt: !462)
!489 = !DILocation(line: 168, column: 46, scope: !190, inlinedAt: !462)
!490 = !DILocation(line: 168, column: 50, scope: !190, inlinedAt: !462)
!491 = !DILocation(line: 168, column: 19, scope: !190, inlinedAt: !462)
!492 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !462)
!493 = !DILocation(line: 169, column: 24, scope: !190, inlinedAt: !462)
!494 = !DILocation(line: 169, column: 35, scope: !190, inlinedAt: !462)
!495 = !DILocation(line: 169, column: 46, scope: !190, inlinedAt: !462)
!496 = !DILocation(line: 169, column: 50, scope: !190, inlinedAt: !462)
!497 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !462)
!498 = !DILocation(line: 170, column: 24, scope: !190, inlinedAt: !462)
!499 = !DILocation(line: 170, column: 35, scope: !190, inlinedAt: !462)
!500 = !DILocation(line: 170, column: 46, scope: !190, inlinedAt: !462)
!501 = !DILocation(line: 170, column: 50, scope: !190, inlinedAt: !462)
!502 = !DILocation(line: 170, column: 19, scope: !190, inlinedAt: !462)
!503 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !462)
!504 = !DILocation(line: 287, column: 7, scope: !454, inlinedAt: !180)
!505 = !DILocation(line: 289, column: 20, scope: !454, inlinedAt: !180)
!506 = !DILocation(line: 289, column: 15, scope: !454, inlinedAt: !180)
!507 = !DILocation(line: 289, column: 29, scope: !454, inlinedAt: !180)
!508 = !DILocation(line: 289, column: 7, scope: !454, inlinedAt: !180)
!509 = !DILocation(line: 411, column: 3, scope: !100)
!510 = !DILocation(line: 415, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !100, file: !2, line: 412, column: 3)
!512 = !DILocalVariable(name: "order", arg: 1, scope: !513, file: !2, line: 36, type: !38)
!513 = distinct !DISubprogram(name: "ceer", scope: !2, file: !2, line: 36, type: !514, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!84, !38, !84, !84, !38}
!516 = !{!512, !517, !518, !519, !520, !521, !522, !523}
!517 = !DILocalVariable(name: "qq", arg: 2, scope: !513, file: !2, line: 36, type: !84)
!518 = !DILocalVariable(name: "aa", arg: 3, scope: !513, file: !2, line: 36, type: !84)
!519 = !DILocalVariable(name: "nterms", arg: 4, scope: !513, file: !2, line: 36, type: !38)
!520 = !DILocalVariable(name: "term", scope: !513, file: !2, line: 39, type: !84)
!521 = !DILocalVariable(name: "term1", scope: !513, file: !2, line: 39, type: !84)
!522 = !DILocalVariable(name: "ii", scope: !513, file: !2, line: 40, type: !38)
!523 = !DILocalVariable(name: "n1", scope: !513, file: !2, line: 40, type: !38)
!524 = !DILocation(line: 0, scope: !513, inlinedAt: !525)
!525 = distinct !DILocation(line: 416, column: 17, scope: !526)
!526 = distinct !DILexicalBlock(scope: !511, file: !2, line: 415, column: 11)
!527 = !DILocation(line: 43, column: 7, scope: !513, inlinedAt: !525)
!528 = !DILocation(line: 47, column: 23, scope: !529, inlinedAt: !525)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 46, column: 3)
!530 = distinct !DILexicalBlock(scope: !513, file: !2, line: 43, column: 7)
!531 = !DILocation(line: 49, column: 11, scope: !529, inlinedAt: !525)
!532 = !DILocation(line: 53, column: 11, scope: !533, inlinedAt: !525)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 53, column: 11)
!534 = distinct !DILexicalBlock(scope: !535, file: !2, line: 50, column: 7)
!535 = distinct !DILexicalBlock(scope: !529, file: !2, line: 49, column: 11)
!536 = !DILocation(line: 54, column: 41, scope: !537, inlinedAt: !525)
!537 = distinct !DILexicalBlock(scope: !533, file: !2, line: 53, column: 11)
!538 = !DILocation(line: 54, column: 38, scope: !537, inlinedAt: !525)
!539 = !DILocation(line: 54, column: 37, scope: !537, inlinedAt: !525)
!540 = !DILocation(line: 54, column: 44, scope: !537, inlinedAt: !525)
!541 = !DILocation(line: 54, column: 52, scope: !537, inlinedAt: !525)
!542 = !DILocation(line: 54, column: 27, scope: !537, inlinedAt: !525)
!543 = distinct !{!543, !532, !544, !545}
!544 = !DILocation(line: 54, column: 58, scope: !533, inlinedAt: !525)
!545 = !{!"llvm.loop.mustprogress"}
!546 = !DILocation(line: 62, column: 3, scope: !547, inlinedAt: !525)
!547 = distinct !DILexicalBlock(scope: !513, file: !2, line: 62, column: 3)
!548 = !DILocation(line: 0, scope: !530, inlinedAt: !525)
!549 = !DILocation(line: 64, column: 36, scope: !550, inlinedAt: !525)
!550 = distinct !DILexicalBlock(scope: !547, file: !2, line: 62, column: 3)
!551 = !DILocation(line: 64, column: 28, scope: !550, inlinedAt: !525)
!552 = !DILocation(line: 64, column: 27, scope: !550, inlinedAt: !525)
!553 = !DILocation(line: 64, column: 42, scope: !550, inlinedAt: !525)
!554 = !DILocation(line: 64, column: 71, scope: !550, inlinedAt: !525)
!555 = !DILocation(line: 63, column: 20, scope: !550, inlinedAt: !525)
!556 = !DILocation(line: 62, column: 27, scope: !550, inlinedAt: !525)
!557 = !DILocation(line: 62, column: 16, scope: !550, inlinedAt: !525)
!558 = distinct !{!558, !546, !559, !545}
!559 = !DILocation(line: 64, column: 78, scope: !547, inlinedAt: !525)
!560 = !DILocation(line: 66, column: 7, scope: !513, inlinedAt: !525)
!561 = !DILocation(line: 416, column: 11, scope: !526)
!562 = !DILocalVariable(name: "order", arg: 1, scope: !563, file: !2, line: 73, type: !38)
!563 = distinct !DISubprogram(name: "ceor", scope: !2, file: !2, line: 73, type: !514, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !564)
!564 = !{!562, !565, !566, !567, !568, !569, !570, !571}
!565 = !DILocalVariable(name: "qq", arg: 2, scope: !563, file: !2, line: 73, type: !84)
!566 = !DILocalVariable(name: "aa", arg: 3, scope: !563, file: !2, line: 73, type: !84)
!567 = !DILocalVariable(name: "nterms", arg: 4, scope: !563, file: !2, line: 73, type: !38)
!568 = !DILocalVariable(name: "term", scope: !563, file: !2, line: 75, type: !84)
!569 = !DILocalVariable(name: "term1", scope: !563, file: !2, line: 75, type: !84)
!570 = !DILocalVariable(name: "ii", scope: !563, file: !2, line: 76, type: !38)
!571 = !DILocalVariable(name: "n1", scope: !563, file: !2, line: 76, type: !38)
!572 = !DILocation(line: 0, scope: !563, inlinedAt: !573)
!573 = distinct !DILocation(line: 418, column: 17, scope: !526)
!574 = !DILocation(line: 81, column: 3, scope: !575, inlinedAt: !573)
!575 = distinct !DILexicalBlock(scope: !563, file: !2, line: 81, column: 3)
!576 = !DILocation(line: 82, column: 31, scope: !577, inlinedAt: !573)
!577 = distinct !DILexicalBlock(scope: !575, file: !2, line: 81, column: 3)
!578 = !DILocation(line: 82, column: 30, scope: !577, inlinedAt: !573)
!579 = !DILocation(line: 82, column: 40, scope: !577, inlinedAt: !573)
!580 = !DILocation(line: 82, column: 56, scope: !577, inlinedAt: !573)
!581 = !DILocation(line: 82, column: 19, scope: !577, inlinedAt: !573)
!582 = !DILocation(line: 86, column: 3, scope: !583, inlinedAt: !573)
!583 = distinct !DILexicalBlock(scope: !563, file: !2, line: 86, column: 3)
!584 = !DILocation(line: 81, column: 23, scope: !577, inlinedAt: !573)
!585 = distinct !{!585, !574, !586, !545}
!586 = !DILocation(line: 82, column: 62, scope: !575, inlinedAt: !573)
!587 = !DILocation(line: 88, column: 36, scope: !588, inlinedAt: !573)
!588 = distinct !DILexicalBlock(scope: !583, file: !2, line: 86, column: 3)
!589 = !DILocation(line: 88, column: 28, scope: !588, inlinedAt: !573)
!590 = !DILocation(line: 88, column: 27, scope: !588, inlinedAt: !573)
!591 = !DILocation(line: 88, column: 42, scope: !588, inlinedAt: !573)
!592 = !DILocation(line: 88, column: 71, scope: !588, inlinedAt: !573)
!593 = !DILocation(line: 87, column: 20, scope: !588, inlinedAt: !573)
!594 = !DILocation(line: 86, column: 27, scope: !588, inlinedAt: !573)
!595 = !DILocation(line: 86, column: 16, scope: !588, inlinedAt: !573)
!596 = distinct !{!596, !582, !597, !545}
!597 = !DILocation(line: 88, column: 78, scope: !583, inlinedAt: !573)
!598 = !DILocation(line: 0, scope: !526)
!599 = !DILocation(line: 420, column: 7, scope: !511)
!600 = !DILocation(line: 0, scope: !511)
!601 = !DILocation(line: 422, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 421, column: 7)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 420, column: 7)
!604 = distinct !DILexicalBlock(scope: !511, file: !2, line: 420, column: 7)
!605 = !DILocation(line: 0, scope: !513, inlinedAt: !606)
!606 = distinct !DILocation(line: 423, column: 20, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !2, line: 422, column: 15)
!608 = !DILocation(line: 43, column: 7, scope: !513, inlinedAt: !606)
!609 = !DILocation(line: 47, column: 23, scope: !529, inlinedAt: !606)
!610 = !DILocation(line: 49, column: 11, scope: !529, inlinedAt: !606)
!611 = !DILocation(line: 53, column: 11, scope: !533, inlinedAt: !606)
!612 = !DILocation(line: 54, column: 41, scope: !537, inlinedAt: !606)
!613 = !DILocation(line: 54, column: 38, scope: !537, inlinedAt: !606)
!614 = !DILocation(line: 54, column: 37, scope: !537, inlinedAt: !606)
!615 = !DILocation(line: 54, column: 44, scope: !537, inlinedAt: !606)
!616 = !DILocation(line: 54, column: 52, scope: !537, inlinedAt: !606)
!617 = !DILocation(line: 54, column: 27, scope: !537, inlinedAt: !606)
!618 = distinct !{!618, !611, !619, !545}
!619 = !DILocation(line: 54, column: 58, scope: !533, inlinedAt: !606)
!620 = !DILocation(line: 62, column: 3, scope: !547, inlinedAt: !606)
!621 = !DILocation(line: 0, scope: !530, inlinedAt: !606)
!622 = !DILocation(line: 64, column: 36, scope: !550, inlinedAt: !606)
!623 = !DILocation(line: 64, column: 28, scope: !550, inlinedAt: !606)
!624 = !DILocation(line: 64, column: 27, scope: !550, inlinedAt: !606)
!625 = !DILocation(line: 64, column: 42, scope: !550, inlinedAt: !606)
!626 = !DILocation(line: 64, column: 71, scope: !550, inlinedAt: !606)
!627 = !DILocation(line: 63, column: 20, scope: !550, inlinedAt: !606)
!628 = !DILocation(line: 62, column: 27, scope: !550, inlinedAt: !606)
!629 = !DILocation(line: 62, column: 16, scope: !550, inlinedAt: !606)
!630 = distinct !{!630, !620, !631, !545}
!631 = !DILocation(line: 64, column: 78, scope: !547, inlinedAt: !606)
!632 = !DILocation(line: 66, column: 7, scope: !513, inlinedAt: !606)
!633 = !DILocation(line: 423, column: 15, scope: !607)
!634 = !DILocation(line: 0, scope: !563, inlinedAt: !635)
!635 = distinct !DILocation(line: 425, column: 20, scope: !607)
!636 = !DILocation(line: 81, column: 3, scope: !575, inlinedAt: !635)
!637 = !DILocation(line: 82, column: 31, scope: !577, inlinedAt: !635)
!638 = !DILocation(line: 82, column: 30, scope: !577, inlinedAt: !635)
!639 = !DILocation(line: 82, column: 40, scope: !577, inlinedAt: !635)
!640 = !DILocation(line: 82, column: 56, scope: !577, inlinedAt: !635)
!641 = !DILocation(line: 82, column: 19, scope: !577, inlinedAt: !635)
!642 = !DILocation(line: 86, column: 3, scope: !583, inlinedAt: !635)
!643 = !DILocation(line: 81, column: 23, scope: !577, inlinedAt: !635)
!644 = distinct !{!644, !636, !645, !545}
!645 = !DILocation(line: 82, column: 62, scope: !575, inlinedAt: !635)
!646 = !DILocation(line: 88, column: 36, scope: !588, inlinedAt: !635)
!647 = !DILocation(line: 88, column: 28, scope: !588, inlinedAt: !635)
!648 = !DILocation(line: 88, column: 27, scope: !588, inlinedAt: !635)
!649 = !DILocation(line: 88, column: 42, scope: !588, inlinedAt: !635)
!650 = !DILocation(line: 88, column: 71, scope: !588, inlinedAt: !635)
!651 = !DILocation(line: 87, column: 20, scope: !588, inlinedAt: !635)
!652 = !DILocation(line: 86, column: 27, scope: !588, inlinedAt: !635)
!653 = !DILocation(line: 86, column: 16, scope: !588, inlinedAt: !635)
!654 = distinct !{!654, !642, !655, !545}
!655 = !DILocation(line: 88, column: 78, scope: !583, inlinedAt: !635)
!656 = !DILocation(line: 0, scope: !607)
!657 = !DILocation(line: 430, column: 18, scope: !658)
!658 = distinct !DILexicalBlock(scope: !602, file: !2, line: 430, column: 15)
!659 = !DILocation(line: 430, column: 15, scope: !602)
!660 = !DILocation(line: 435, column: 31, scope: !602)
!661 = !DILocation(line: 435, column: 26, scope: !602)
!662 = !DILocation(line: 435, column: 37, scope: !602)
!663 = !DILocation(line: 436, column: 26, scope: !602)
!664 = !DILocation(line: 436, column: 18, scope: !602)
!665 = !DILocation(line: 437, column: 20, scope: !666)
!666 = distinct !DILexicalBlock(scope: !602, file: !2, line: 437, column: 15)
!667 = !DILocation(line: 437, column: 15, scope: !602)
!668 = !DILocation(line: 448, column: 13, scope: !602)
!669 = !DILocation(line: 442, column: 18, scope: !670)
!670 = distinct !DILexicalBlock(scope: !602, file: !2, line: 442, column: 15)
!671 = !DILocation(line: 442, column: 15, scope: !602)
!672 = distinct !{!672, !673, !674}
!673 = !DILocation(line: 420, column: 7, scope: !604)
!674 = !DILocation(line: 449, column: 7, scope: !604)
!675 = !DILocation(line: 453, column: 11, scope: !676)
!676 = distinct !DILexicalBlock(scope: !511, file: !2, line: 453, column: 11)
!677 = !DILocation(line: 453, column: 30, scope: !676)
!678 = !DILocation(line: 453, column: 63, scope: !676)
!679 = !DILocation(line: 456, column: 18, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !2, line: 455, column: 7)
!681 = !DILocation(line: 457, column: 23, scope: !682)
!682 = distinct !DILexicalBlock(scope: !680, file: !2, line: 457, column: 15)
!683 = !DILocation(line: 457, column: 15, scope: !680)
!684 = !DILocation(line: 0, scope: !602)
!685 = !DILocation(line: 459, column: 27, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !2, line: 458, column: 11)
!687 = !DILocation(line: 483, column: 15, scope: !100)
!688 = !DILocation(line: 489, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !2, line: 489, column: 7)
!690 = distinct !DILexicalBlock(scope: !691, file: !2, line: 488, column: 3)
!691 = distinct !DILexicalBlock(scope: !100, file: !2, line: 487, column: 7)
!692 = !DILocation(line: 462, column: 18, scope: !693)
!693 = distinct !DILexicalBlock(scope: !680, file: !2, line: 462, column: 15)
!694 = !DILocation(line: 0, scope: !693)
!695 = !DILocation(line: 474, column: 24, scope: !680)
!696 = !DILocation(line: 474, column: 27, scope: !680)
!697 = !DILocation(line: 474, column: 31, scope: !680)
!698 = !DILocation(line: 474, column: 30, scope: !680)
!699 = !DILocation(line: 487, column: 7, scope: !100)
!700 = !DILocation(line: 493, column: 1, scope: !100)
!701 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !2, file: !2, line: 496, type: !101, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!703 = !DILocalVariable(name: "order", arg: 1, scope: !701, file: !2, line: 496, type: !38)
!704 = !DILocalVariable(name: "qq", arg: 2, scope: !701, file: !2, line: 496, type: !84)
!705 = !DILocalVariable(name: "result", arg: 3, scope: !701, file: !2, line: 496, type: !103)
!706 = !DILocalVariable(name: "even_odd", scope: !701, file: !2, line: 498, type: !38)
!707 = !DILocalVariable(name: "nterms", scope: !701, file: !2, line: 498, type: !38)
!708 = !DILocalVariable(name: "ii", scope: !701, file: !2, line: 498, type: !38)
!709 = !DILocalVariable(name: "counter", scope: !701, file: !2, line: 498, type: !38)
!710 = !DILocalVariable(name: "maxcount", scope: !701, file: !2, line: 498, type: !38)
!711 = !DILocalVariable(name: "dir", scope: !701, file: !2, line: 499, type: !38)
!712 = !DILocalVariable(name: "a1", scope: !701, file: !2, line: 500, type: !84)
!713 = !DILocalVariable(name: "a2", scope: !701, file: !2, line: 500, type: !84)
!714 = !DILocalVariable(name: "fa", scope: !701, file: !2, line: 500, type: !84)
!715 = !DILocalVariable(name: "fa1", scope: !701, file: !2, line: 500, type: !84)
!716 = !DILocalVariable(name: "dela", scope: !701, file: !2, line: 500, type: !84)
!717 = !DILocalVariable(name: "aa_orig", scope: !701, file: !2, line: 500, type: !84)
!718 = !DILocalVariable(name: "da", scope: !701, file: !2, line: 500, type: !84)
!719 = !DILocalVariable(name: "aa", scope: !701, file: !2, line: 500, type: !84)
!720 = !DILocalVariable(name: "aa_approx", scope: !701, file: !2, line: 501, type: !84)
!721 = !DILocation(line: 0, scope: !701)
!722 = !DILocation(line: 509, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !701, file: !2, line: 509, column: 7)
!724 = !DILocation(line: 509, column: 7, scope: !701)
!725 = !DILocation(line: 516, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !701, file: !2, line: 516, column: 7)
!727 = !DILocation(line: 516, column: 7, scope: !701)
!728 = !DILocation(line: 511, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 511, column: 7)
!730 = distinct !DILexicalBlock(scope: !723, file: !2, line: 510, column: 3)
!731 = !DILocation(line: 518, column: 26, scope: !732)
!732 = distinct !DILexicalBlock(scope: !726, file: !2, line: 517, column: 3)
!733 = !DILocation(line: 518, column: 21, scope: !732)
!734 = !DILocation(line: 518, column: 19, scope: !732)
!735 = !DILocation(line: 519, column: 15, scope: !732)
!736 = !DILocation(line: 519, column: 19, scope: !732)
!737 = !DILocation(line: 520, column: 7, scope: !732)
!738 = !DILocation(line: 505, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !701, file: !2, line: 505, column: 7)
!740 = !DILocation(line: 525, column: 7, scope: !701)
!741 = !DILocation(line: 527, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !701, file: !2, line: 527, column: 7)
!743 = !DILocation(line: 527, column: 7, scope: !701)
!744 = !DILocation(line: 529, column: 20, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !2, line: 529, column: 11)
!746 = distinct !DILexicalBlock(scope: !742, file: !2, line: 528, column: 3)
!747 = !DILocation(line: 0, scope: !745)
!748 = !DILocation(line: 529, column: 11, scope: !746)
!749 = !DILocation(line: 532, column: 18, scope: !745)
!750 = !DILocation(line: 532, column: 11, scope: !745)
!751 = !DILocalVariable(name: "order", arg: 1, scope: !752, file: !2, line: 293, type: !38)
!752 = distinct !DISubprogram(name: "approx_s", scope: !2, file: !2, line: 293, type: !162, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !753)
!753 = !{!751, !754, !755, !756, !757, !758, !759, !765, !766, !767}
!754 = !DILocalVariable(name: "qq", arg: 2, scope: !752, file: !2, line: 293, type: !84)
!755 = !DILocalVariable(name: "approx", scope: !752, file: !2, line: 295, type: !84)
!756 = !DILocalVariable(name: "c0", scope: !752, file: !2, line: 296, type: !84)
!757 = !DILocalVariable(name: "c1", scope: !752, file: !2, line: 296, type: !84)
!758 = !DILocalVariable(name: "c2", scope: !752, file: !2, line: 296, type: !84)
!759 = !DILocalVariable(name: "n2", scope: !760, file: !2, line: 337, type: !84)
!760 = distinct !DILexicalBlock(scope: !761, file: !2, line: 335, column: 15)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 334, column: 19)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 333, column: 11)
!763 = distinct !DILexicalBlock(scope: !764, file: !2, line: 332, column: 15)
!764 = distinct !DILexicalBlock(scope: !752, file: !2, line: 305, column: 3)
!765 = !DILocalVariable(name: "n22", scope: !760, file: !2, line: 338, type: !84)
!766 = !DILocalVariable(name: "q2", scope: !760, file: !2, line: 339, type: !84)
!767 = !DILocalVariable(name: "q4", scope: !760, file: !2, line: 340, type: !84)
!768 = !DILocation(line: 0, scope: !752, inlinedAt: !769)
!769 = distinct !DILocation(line: 536, column: 15, scope: !701)
!770 = !DILocation(line: 304, column: 3, scope: !752, inlinedAt: !769)
!771 = !DILocation(line: 307, column: 18, scope: !772, inlinedAt: !769)
!772 = distinct !DILexicalBlock(scope: !764, file: !2, line: 307, column: 15)
!773 = !DILocation(line: 307, column: 15, scope: !764, inlinedAt: !769)
!774 = !DILocation(line: 308, column: 43, scope: !772, inlinedAt: !769)
!775 = !DILocation(line: 308, column: 46, scope: !772, inlinedAt: !769)
!776 = !DILocation(line: 308, column: 54, scope: !772, inlinedAt: !769)
!777 = !DILocation(line: 308, column: 58, scope: !772, inlinedAt: !769)
!778 = !DILocation(line: 308, column: 37, scope: !772, inlinedAt: !769)
!779 = !DILocation(line: 308, column: 30, scope: !772, inlinedAt: !769)
!780 = !DILocation(line: 308, column: 15, scope: !772, inlinedAt: !769)
!781 = !DILocation(line: 0, scope: !190, inlinedAt: !782)
!782 = distinct !DILocation(line: 310, column: 22, scope: !772, inlinedAt: !769)
!783 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !782)
!784 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !782)
!785 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !782)
!786 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !782)
!787 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !782)
!788 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !782)
!789 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !782)
!790 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !782)
!791 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !782)
!792 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !782)
!793 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !782)
!794 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !782)
!795 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !782)
!796 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !782)
!797 = !DILocation(line: 310, column: 15, scope: !772, inlinedAt: !769)
!798 = !DILocation(line: 314, column: 18, scope: !799, inlinedAt: !769)
!799 = distinct !DILexicalBlock(scope: !764, file: !2, line: 314, column: 15)
!800 = !DILocation(line: 314, column: 15, scope: !764, inlinedAt: !769)
!801 = !DILocation(line: 315, column: 40, scope: !799, inlinedAt: !769)
!802 = !DILocation(line: 315, column: 28, scope: !799, inlinedAt: !769)
!803 = !DILocation(line: 315, column: 15, scope: !799, inlinedAt: !769)
!804 = !DILocation(line: 0, scope: !190, inlinedAt: !805)
!805 = distinct !DILocation(line: 317, column: 22, scope: !799, inlinedAt: !769)
!806 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !805)
!807 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !805)
!808 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !805)
!809 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !805)
!810 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !805)
!811 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !805)
!812 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !805)
!813 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !805)
!814 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !805)
!815 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !805)
!816 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !805)
!817 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !805)
!818 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !805)
!819 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !805)
!820 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !805)
!821 = !DILocation(line: 317, column: 15, scope: !799, inlinedAt: !769)
!822 = !DILocation(line: 321, column: 18, scope: !823, inlinedAt: !769)
!823 = distinct !DILexicalBlock(scope: !764, file: !2, line: 321, column: 15)
!824 = !DILocation(line: 321, column: 15, scope: !764, inlinedAt: !769)
!825 = !DILocation(line: 324, column: 29, scope: !826, inlinedAt: !769)
!826 = distinct !DILexicalBlock(scope: !823, file: !2, line: 322, column: 11)
!827 = !DILocation(line: 324, column: 36, scope: !826, inlinedAt: !769)
!828 = !DILocation(line: 324, column: 39, scope: !826, inlinedAt: !769)
!829 = !DILocation(line: 325, column: 22, scope: !826, inlinedAt: !769)
!830 = !DILocation(line: 325, column: 25, scope: !826, inlinedAt: !769)
!831 = !DILocation(line: 0, scope: !396, inlinedAt: !832)
!832 = distinct !DILocation(line: 361, column: 12, scope: !752, inlinedAt: !769)
!833 = !DILocation(line: 182, column: 10, scope: !396, inlinedAt: !832)
!834 = !DILocation(line: 182, column: 18, scope: !396, inlinedAt: !832)
!835 = !DILocation(line: 182, column: 22, scope: !396, inlinedAt: !832)
!836 = !DILocation(line: 183, column: 10, scope: !396, inlinedAt: !832)
!837 = !DILocation(line: 183, column: 13, scope: !396, inlinedAt: !832)
!838 = !DILocation(line: 183, column: 21, scope: !396, inlinedAt: !832)
!839 = !DILocation(line: 183, column: 28, scope: !396, inlinedAt: !832)
!840 = !DILocation(line: 183, column: 31, scope: !396, inlinedAt: !832)
!841 = !DILocation(line: 183, column: 34, scope: !396, inlinedAt: !832)
!842 = !DILocation(line: 183, column: 38, scope: !396, inlinedAt: !832)
!843 = !DILocation(line: 184, column: 10, scope: !396, inlinedAt: !832)
!844 = !DILocation(line: 184, column: 13, scope: !396, inlinedAt: !832)
!845 = !DILocation(line: 184, column: 21, scope: !396, inlinedAt: !832)
!846 = !DILocation(line: 186, column: 10, scope: !409, inlinedAt: !832)
!847 = !DILocation(line: 186, column: 7, scope: !396, inlinedAt: !832)
!848 = !DILocation(line: 188, column: 24, scope: !408, inlinedAt: !832)
!849 = !DILocation(line: 189, column: 12, scope: !408, inlinedAt: !832)
!850 = !DILocation(line: 0, scope: !408, inlinedAt: !832)
!851 = !DILocation(line: 189, column: 20, scope: !408, inlinedAt: !832)
!852 = !DILocation(line: 189, column: 24, scope: !408, inlinedAt: !832)
!853 = !DILocation(line: 189, column: 23, scope: !408, inlinedAt: !832)
!854 = !DILocation(line: 190, column: 17, scope: !408, inlinedAt: !832)
!855 = !DILocation(line: 191, column: 12, scope: !408, inlinedAt: !832)
!856 = !DILocation(line: 191, column: 20, scope: !408, inlinedAt: !832)
!857 = !DILocation(line: 191, column: 24, scope: !408, inlinedAt: !832)
!858 = !DILocation(line: 191, column: 23, scope: !408, inlinedAt: !832)
!859 = !DILocation(line: 192, column: 3, scope: !408, inlinedAt: !832)
!860 = !DILocation(line: 195, column: 35, scope: !411, inlinedAt: !832)
!861 = !DILocation(line: 195, column: 38, scope: !411, inlinedAt: !832)
!862 = !DILocation(line: 195, column: 41, scope: !411, inlinedAt: !832)
!863 = !DILocation(line: 195, column: 30, scope: !411, inlinedAt: !832)
!864 = !DILocation(line: 195, column: 29, scope: !411, inlinedAt: !832)
!865 = !DILocation(line: 196, column: 14, scope: !411, inlinedAt: !832)
!866 = !DILocation(line: 0, scope: !411, inlinedAt: !832)
!867 = !DILocation(line: 196, column: 13, scope: !411, inlinedAt: !832)
!868 = !DILocation(line: 196, column: 44, scope: !411, inlinedAt: !832)
!869 = !DILocation(line: 196, column: 23, scope: !411, inlinedAt: !832)
!870 = !DILocation(line: 0, scope: !409, inlinedAt: !832)
!871 = !DILocation(line: 200, column: 23, scope: !396, inlinedAt: !832)
!872 = !DILocation(line: 363, column: 15, scope: !873, inlinedAt: !769)
!873 = distinct !DILexicalBlock(scope: !752, file: !2, line: 363, column: 8)
!874 = !DILocation(line: 363, column: 19, scope: !873, inlinedAt: !769)
!875 = !DILocation(line: 0, scope: !190, inlinedAt: !876)
!876 = distinct !DILocation(line: 328, column: 22, scope: !823, inlinedAt: !769)
!877 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !876)
!878 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !876)
!879 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !876)
!880 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !876)
!881 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !876)
!882 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !876)
!883 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !876)
!884 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !876)
!885 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !876)
!886 = !DILocation(line: 165, column: 25, scope: !190, inlinedAt: !876)
!887 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !876)
!888 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !876)
!889 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !876)
!890 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !876)
!891 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !876)
!892 = !DILocation(line: 328, column: 15, scope: !823, inlinedAt: !769)
!893 = !DILocation(line: 332, column: 21, scope: !763, inlinedAt: !769)
!894 = !DILocation(line: 332, column: 15, scope: !764, inlinedAt: !769)
!895 = !DILocation(line: 334, column: 23, scope: !761, inlinedAt: !769)
!896 = !DILocation(line: 334, column: 22, scope: !761, inlinedAt: !769)
!897 = !DILocation(line: 334, column: 33, scope: !761, inlinedAt: !769)
!898 = !DILocation(line: 334, column: 32, scope: !761, inlinedAt: !769)
!899 = !DILocation(line: 334, column: 29, scope: !761, inlinedAt: !769)
!900 = !DILocation(line: 334, column: 19, scope: !762, inlinedAt: !769)
!901 = !DILocation(line: 337, column: 45, scope: !760, inlinedAt: !769)
!902 = !DILocation(line: 337, column: 31, scope: !760, inlinedAt: !769)
!903 = !DILocation(line: 0, scope: !760, inlinedAt: !769)
!904 = !DILocation(line: 338, column: 49, scope: !760, inlinedAt: !769)
!905 = !DILocation(line: 339, column: 33, scope: !760, inlinedAt: !769)
!906 = !DILocation(line: 340, column: 33, scope: !760, inlinedAt: !769)
!907 = !DILocation(line: 341, column: 36, scope: !760, inlinedAt: !769)
!908 = !DILocation(line: 341, column: 39, scope: !760, inlinedAt: !769)
!909 = !DILocation(line: 342, column: 31, scope: !760, inlinedAt: !769)
!910 = !DILocation(line: 342, column: 39, scope: !760, inlinedAt: !769)
!911 = !DILocation(line: 342, column: 46, scope: !760, inlinedAt: !769)
!912 = !DILocation(line: 342, column: 50, scope: !760, inlinedAt: !769)
!913 = !DILocation(line: 342, column: 59, scope: !760, inlinedAt: !769)
!914 = !DILocation(line: 342, column: 42, scope: !760, inlinedAt: !769)
!915 = !DILocation(line: 343, column: 31, scope: !760, inlinedAt: !769)
!916 = !DILocation(line: 343, column: 34, scope: !760, inlinedAt: !769)
!917 = !DILocation(line: 343, column: 42, scope: !760, inlinedAt: !769)
!918 = !DILocation(line: 343, column: 46, scope: !760, inlinedAt: !769)
!919 = !DILocation(line: 343, column: 51, scope: !760, inlinedAt: !769)
!920 = !DILocation(line: 343, column: 54, scope: !760, inlinedAt: !769)
!921 = !DILocation(line: 344, column: 26, scope: !760, inlinedAt: !769)
!922 = !DILocation(line: 344, column: 30, scope: !760, inlinedAt: !769)
!923 = !DILocation(line: 344, column: 34, scope: !760, inlinedAt: !769)
!924 = !DILocation(line: 344, column: 43, scope: !760, inlinedAt: !769)
!925 = !DILocation(line: 344, column: 52, scope: !760, inlinedAt: !769)
!926 = !DILocation(line: 343, column: 57, scope: !760, inlinedAt: !769)
!927 = !DILocation(line: 345, column: 26, scope: !928, inlinedAt: !769)
!928 = distinct !DILexicalBlock(scope: !760, file: !2, line: 345, column: 23)
!929 = !DILocation(line: 345, column: 37, scope: !928, inlinedAt: !769)
!930 = !DILocation(line: 345, column: 36, scope: !928, inlinedAt: !769)
!931 = !DILocation(line: 345, column: 33, scope: !928, inlinedAt: !769)
!932 = !DILocation(line: 345, column: 23, scope: !760, inlinedAt: !769)
!933 = !DILocation(line: 347, column: 49, scope: !934, inlinedAt: !769)
!934 = distinct !DILexicalBlock(scope: !928, file: !2, line: 346, column: 19)
!935 = !DILocation(line: 347, column: 33, scope: !934, inlinedAt: !769)
!936 = !DILocation(line: 348, column: 30, scope: !934, inlinedAt: !769)
!937 = !DILocation(line: 349, column: 19, scope: !934, inlinedAt: !769)
!938 = !DILocation(line: 0, scope: !190, inlinedAt: !939)
!939 = distinct !DILocation(line: 352, column: 28, scope: !761, inlinedAt: !769)
!940 = !DILocation(line: 152, column: 9, scope: !190, inlinedAt: !939)
!941 = !DILocation(line: 152, column: 16, scope: !190, inlinedAt: !939)
!942 = !DILocation(line: 152, column: 8, scope: !190, inlinedAt: !939)
!943 = !DILocation(line: 153, column: 10, scope: !190, inlinedAt: !939)
!944 = !DILocation(line: 154, column: 10, scope: !190, inlinedAt: !939)
!945 = !DILocation(line: 155, column: 10, scope: !190, inlinedAt: !939)
!946 = !DILocation(line: 157, column: 10, scope: !190, inlinedAt: !939)
!947 = !DILocation(line: 157, column: 9, scope: !190, inlinedAt: !939)
!948 = !DILocation(line: 158, column: 10, scope: !190, inlinedAt: !939)
!949 = !DILocation(line: 159, column: 11, scope: !190, inlinedAt: !939)
!950 = !DILocation(line: 160, column: 12, scope: !190, inlinedAt: !939)
!951 = !DILocation(line: 161, column: 12, scope: !190, inlinedAt: !939)
!952 = !DILocation(line: 162, column: 12, scope: !190, inlinedAt: !939)
!953 = !DILocation(line: 165, column: 13, scope: !190, inlinedAt: !939)
!954 = !DILocation(line: 165, column: 21, scope: !190, inlinedAt: !939)
!955 = !DILocation(line: 165, column: 37, scope: !190, inlinedAt: !939)
!956 = !DILocation(line: 165, column: 32, scope: !190, inlinedAt: !939)
!957 = !DILocation(line: 166, column: 16, scope: !190, inlinedAt: !939)
!958 = !DILocation(line: 166, column: 19, scope: !190, inlinedAt: !939)
!959 = !DILocation(line: 166, column: 58, scope: !190, inlinedAt: !939)
!960 = !DILocation(line: 167, column: 35, scope: !190, inlinedAt: !939)
!961 = !DILocation(line: 167, column: 46, scope: !190, inlinedAt: !939)
!962 = !DILocation(line: 167, column: 50, scope: !190, inlinedAt: !939)
!963 = !DILocation(line: 167, column: 16, scope: !190, inlinedAt: !939)
!964 = !DILocation(line: 167, column: 58, scope: !190, inlinedAt: !939)
!965 = !DILocation(line: 168, column: 35, scope: !190, inlinedAt: !939)
!966 = !DILocation(line: 168, column: 46, scope: !190, inlinedAt: !939)
!967 = !DILocation(line: 168, column: 50, scope: !190, inlinedAt: !939)
!968 = !DILocation(line: 168, column: 19, scope: !190, inlinedAt: !939)
!969 = !DILocation(line: 168, column: 58, scope: !190, inlinedAt: !939)
!970 = !DILocation(line: 169, column: 24, scope: !190, inlinedAt: !939)
!971 = !DILocation(line: 169, column: 35, scope: !190, inlinedAt: !939)
!972 = !DILocation(line: 169, column: 46, scope: !190, inlinedAt: !939)
!973 = !DILocation(line: 169, column: 50, scope: !190, inlinedAt: !939)
!974 = !DILocation(line: 169, column: 58, scope: !190, inlinedAt: !939)
!975 = !DILocation(line: 170, column: 24, scope: !190, inlinedAt: !939)
!976 = !DILocation(line: 170, column: 35, scope: !190, inlinedAt: !939)
!977 = !DILocation(line: 170, column: 46, scope: !190, inlinedAt: !939)
!978 = !DILocation(line: 170, column: 50, scope: !190, inlinedAt: !939)
!979 = !DILocation(line: 170, column: 19, scope: !190, inlinedAt: !939)
!980 = !DILocation(line: 170, column: 58, scope: !190, inlinedAt: !939)
!981 = !DILocation(line: 357, column: 27, scope: !763, inlinedAt: !769)
!982 = !DILocation(line: 357, column: 22, scope: !763, inlinedAt: !769)
!983 = !DILocation(line: 357, column: 15, scope: !763, inlinedAt: !769)
!984 = !DILocation(line: 363, column: 22, scope: !873, inlinedAt: !769)
!985 = !DILocation(line: 363, column: 31, scope: !873, inlinedAt: !769)
!986 = !DILocation(line: 363, column: 8, scope: !752, inlinedAt: !769)
!987 = !DILocation(line: 364, column: 14, scope: !873, inlinedAt: !769)
!988 = !DILocation(line: 364, column: 7, scope: !873, inlinedAt: !769)
!989 = !DILocation(line: 366, column: 29, scope: !873, inlinedAt: !769)
!990 = !DILocation(line: 366, column: 7, scope: !873, inlinedAt: !769)
!991 = !DILocation(line: 543, column: 3, scope: !701)
!992 = !DILocation(line: 547, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !701, file: !2, line: 544, column: 3)
!994 = !DILocalVariable(name: "order", arg: 1, scope: !995, file: !2, line: 94, type: !38)
!995 = distinct !DISubprogram(name: "seer", scope: !2, file: !2, line: 94, type: !514, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !996)
!996 = !{!994, !997, !998, !999, !1000, !1001, !1002, !1003}
!997 = !DILocalVariable(name: "qq", arg: 2, scope: !995, file: !2, line: 94, type: !84)
!998 = !DILocalVariable(name: "aa", arg: 3, scope: !995, file: !2, line: 94, type: !84)
!999 = !DILocalVariable(name: "nterms", arg: 4, scope: !995, file: !2, line: 94, type: !38)
!1000 = !DILocalVariable(name: "term", scope: !995, file: !2, line: 96, type: !84)
!1001 = !DILocalVariable(name: "term1", scope: !995, file: !2, line: 96, type: !84)
!1002 = !DILocalVariable(name: "ii", scope: !995, file: !2, line: 97, type: !38)
!1003 = !DILocalVariable(name: "n1", scope: !995, file: !2, line: 97, type: !38)
!1004 = !DILocation(line: 0, scope: !995, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 548, column: 17, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !993, file: !2, line: 547, column: 11)
!1007 = !DILocation(line: 102, column: 3, scope: !1008, inlinedAt: !1005)
!1008 = distinct !DILexicalBlock(scope: !995, file: !2, line: 102, column: 3)
!1009 = !DILocation(line: 103, column: 34, scope: !1010, inlinedAt: !1005)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 102, column: 3)
!1011 = !DILocation(line: 103, column: 30, scope: !1010, inlinedAt: !1005)
!1012 = !DILocation(line: 103, column: 29, scope: !1010, inlinedAt: !1005)
!1013 = !DILocation(line: 103, column: 38, scope: !1010, inlinedAt: !1005)
!1014 = !DILocation(line: 103, column: 48, scope: !1010, inlinedAt: !1005)
!1015 = !DILocation(line: 103, column: 19, scope: !1010, inlinedAt: !1005)
!1016 = !DILocation(line: 107, column: 3, scope: !1017, inlinedAt: !1005)
!1017 = distinct !DILexicalBlock(scope: !995, file: !2, line: 107, column: 3)
!1018 = distinct !{!1018, !1007, !1019, !545}
!1019 = !DILocation(line: 103, column: 54, scope: !1008, inlinedAt: !1005)
!1020 = !DILocation(line: 109, column: 36, scope: !1021, inlinedAt: !1005)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 107, column: 3)
!1022 = !DILocation(line: 109, column: 28, scope: !1021, inlinedAt: !1005)
!1023 = !DILocation(line: 109, column: 27, scope: !1021, inlinedAt: !1005)
!1024 = !DILocation(line: 109, column: 42, scope: !1021, inlinedAt: !1005)
!1025 = !DILocation(line: 109, column: 71, scope: !1021, inlinedAt: !1005)
!1026 = !DILocation(line: 108, column: 20, scope: !1021, inlinedAt: !1005)
!1027 = !DILocation(line: 107, column: 27, scope: !1021, inlinedAt: !1005)
!1028 = !DILocation(line: 107, column: 16, scope: !1021, inlinedAt: !1005)
!1029 = distinct !{!1029, !1016, !1030, !545}
!1030 = !DILocation(line: 109, column: 78, scope: !1017, inlinedAt: !1005)
!1031 = !DILocalVariable(name: "order", arg: 1, scope: !1032, file: !2, line: 115, type: !38)
!1032 = distinct !DISubprogram(name: "seor", scope: !2, file: !2, line: 115, type: !514, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1033)
!1033 = !{!1031, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1034 = !DILocalVariable(name: "qq", arg: 2, scope: !1032, file: !2, line: 115, type: !84)
!1035 = !DILocalVariable(name: "aa", arg: 3, scope: !1032, file: !2, line: 115, type: !84)
!1036 = !DILocalVariable(name: "nterms", arg: 4, scope: !1032, file: !2, line: 115, type: !38)
!1037 = !DILocalVariable(name: "term", scope: !1032, file: !2, line: 117, type: !84)
!1038 = !DILocalVariable(name: "term1", scope: !1032, file: !2, line: 117, type: !84)
!1039 = !DILocalVariable(name: "ii", scope: !1032, file: !2, line: 118, type: !38)
!1040 = !DILocalVariable(name: "n1", scope: !1032, file: !2, line: 118, type: !38)
!1041 = !DILocation(line: 0, scope: !1032, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 550, column: 17, scope: !1006)
!1043 = !DILocation(line: 123, column: 3, scope: !1044, inlinedAt: !1042)
!1044 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 123, column: 3)
!1045 = !DILocation(line: 124, column: 31, scope: !1046, inlinedAt: !1042)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 123, column: 3)
!1047 = !DILocation(line: 124, column: 30, scope: !1046, inlinedAt: !1042)
!1048 = !DILocation(line: 124, column: 40, scope: !1046, inlinedAt: !1042)
!1049 = !DILocation(line: 124, column: 56, scope: !1046, inlinedAt: !1042)
!1050 = !DILocation(line: 124, column: 19, scope: !1046, inlinedAt: !1042)
!1051 = !DILocation(line: 128, column: 3, scope: !1052, inlinedAt: !1042)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 128, column: 3)
!1053 = !DILocation(line: 123, column: 23, scope: !1046, inlinedAt: !1042)
!1054 = distinct !{!1054, !1043, !1055, !545}
!1055 = !DILocation(line: 124, column: 62, scope: !1044, inlinedAt: !1042)
!1056 = !DILocation(line: 130, column: 36, scope: !1057, inlinedAt: !1042)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 128, column: 3)
!1058 = !DILocation(line: 130, column: 28, scope: !1057, inlinedAt: !1042)
!1059 = !DILocation(line: 130, column: 27, scope: !1057, inlinedAt: !1042)
!1060 = !DILocation(line: 130, column: 42, scope: !1057, inlinedAt: !1042)
!1061 = !DILocation(line: 130, column: 71, scope: !1057, inlinedAt: !1042)
!1062 = !DILocation(line: 129, column: 20, scope: !1057, inlinedAt: !1042)
!1063 = !DILocation(line: 128, column: 27, scope: !1057, inlinedAt: !1042)
!1064 = !DILocation(line: 128, column: 16, scope: !1057, inlinedAt: !1042)
!1065 = distinct !{!1065, !1051, !1066, !545}
!1066 = !DILocation(line: 130, column: 78, scope: !1052, inlinedAt: !1042)
!1067 = !DILocation(line: 0, scope: !1006)
!1068 = !DILocation(line: 552, column: 7, scope: !993)
!1069 = !DILocation(line: 0, scope: !993)
!1070 = !DILocation(line: 554, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 553, column: 7)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 552, column: 7)
!1073 = distinct !DILexicalBlock(scope: !993, file: !2, line: 552, column: 7)
!1074 = !DILocation(line: 0, scope: !995, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 555, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 554, column: 15)
!1077 = !DILocation(line: 102, column: 3, scope: !1008, inlinedAt: !1075)
!1078 = !DILocation(line: 103, column: 34, scope: !1010, inlinedAt: !1075)
!1079 = !DILocation(line: 103, column: 30, scope: !1010, inlinedAt: !1075)
!1080 = !DILocation(line: 103, column: 29, scope: !1010, inlinedAt: !1075)
!1081 = !DILocation(line: 103, column: 38, scope: !1010, inlinedAt: !1075)
!1082 = !DILocation(line: 103, column: 48, scope: !1010, inlinedAt: !1075)
!1083 = !DILocation(line: 103, column: 19, scope: !1010, inlinedAt: !1075)
!1084 = !DILocation(line: 107, column: 3, scope: !1017, inlinedAt: !1075)
!1085 = distinct !{!1085, !1077, !1086, !545}
!1086 = !DILocation(line: 103, column: 54, scope: !1008, inlinedAt: !1075)
!1087 = !DILocation(line: 109, column: 36, scope: !1021, inlinedAt: !1075)
!1088 = !DILocation(line: 109, column: 28, scope: !1021, inlinedAt: !1075)
!1089 = !DILocation(line: 109, column: 27, scope: !1021, inlinedAt: !1075)
!1090 = !DILocation(line: 109, column: 42, scope: !1021, inlinedAt: !1075)
!1091 = !DILocation(line: 109, column: 71, scope: !1021, inlinedAt: !1075)
!1092 = !DILocation(line: 108, column: 20, scope: !1021, inlinedAt: !1075)
!1093 = !DILocation(line: 107, column: 27, scope: !1021, inlinedAt: !1075)
!1094 = !DILocation(line: 107, column: 16, scope: !1021, inlinedAt: !1075)
!1095 = distinct !{!1095, !1084, !1096, !545}
!1096 = !DILocation(line: 109, column: 78, scope: !1017, inlinedAt: !1075)
!1097 = !DILocation(line: 0, scope: !1032, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 557, column: 20, scope: !1076)
!1099 = !DILocation(line: 123, column: 3, scope: !1044, inlinedAt: !1098)
!1100 = !DILocation(line: 124, column: 31, scope: !1046, inlinedAt: !1098)
!1101 = !DILocation(line: 124, column: 30, scope: !1046, inlinedAt: !1098)
!1102 = !DILocation(line: 124, column: 40, scope: !1046, inlinedAt: !1098)
!1103 = !DILocation(line: 124, column: 56, scope: !1046, inlinedAt: !1098)
!1104 = !DILocation(line: 124, column: 19, scope: !1046, inlinedAt: !1098)
!1105 = !DILocation(line: 128, column: 3, scope: !1052, inlinedAt: !1098)
!1106 = !DILocation(line: 123, column: 23, scope: !1046, inlinedAt: !1098)
!1107 = distinct !{!1107, !1099, !1108, !545}
!1108 = !DILocation(line: 124, column: 62, scope: !1044, inlinedAt: !1098)
!1109 = !DILocation(line: 130, column: 36, scope: !1057, inlinedAt: !1098)
!1110 = !DILocation(line: 130, column: 28, scope: !1057, inlinedAt: !1098)
!1111 = !DILocation(line: 130, column: 27, scope: !1057, inlinedAt: !1098)
!1112 = !DILocation(line: 130, column: 42, scope: !1057, inlinedAt: !1098)
!1113 = !DILocation(line: 130, column: 71, scope: !1057, inlinedAt: !1098)
!1114 = !DILocation(line: 129, column: 20, scope: !1057, inlinedAt: !1098)
!1115 = !DILocation(line: 128, column: 27, scope: !1057, inlinedAt: !1098)
!1116 = !DILocation(line: 128, column: 16, scope: !1057, inlinedAt: !1098)
!1117 = distinct !{!1117, !1105, !1118, !545}
!1118 = !DILocation(line: 130, column: 78, scope: !1052, inlinedAt: !1098)
!1119 = !DILocation(line: 0, scope: !1076)
!1120 = !DILocation(line: 562, column: 18, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 562, column: 15)
!1122 = !DILocation(line: 562, column: 15, scope: !1071)
!1123 = !DILocation(line: 567, column: 31, scope: !1071)
!1124 = !DILocation(line: 567, column: 26, scope: !1071)
!1125 = !DILocation(line: 567, column: 37, scope: !1071)
!1126 = !DILocation(line: 568, column: 26, scope: !1071)
!1127 = !DILocation(line: 568, column: 18, scope: !1071)
!1128 = !DILocation(line: 569, column: 20, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 569, column: 15)
!1130 = !DILocation(line: 569, column: 15, scope: !1071)
!1131 = !DILocation(line: 580, column: 13, scope: !1071)
!1132 = !DILocation(line: 574, column: 18, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 574, column: 15)
!1134 = !DILocation(line: 574, column: 15, scope: !1071)
!1135 = distinct !{!1135, !1136, !1137}
!1136 = !DILocation(line: 552, column: 7, scope: !1073)
!1137 = !DILocation(line: 581, column: 7, scope: !1073)
!1138 = !DILocation(line: 585, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !993, file: !2, line: 585, column: 11)
!1140 = !DILocation(line: 585, column: 30, scope: !1139)
!1141 = !DILocation(line: 585, column: 63, scope: !1139)
!1142 = !DILocation(line: 588, column: 18, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 587, column: 7)
!1144 = !DILocation(line: 589, column: 23, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 589, column: 15)
!1146 = !DILocation(line: 589, column: 15, scope: !1143)
!1147 = !DILocation(line: 0, scope: !1071)
!1148 = !DILocation(line: 591, column: 27, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 590, column: 11)
!1150 = !DILocation(line: 615, column: 15, scope: !701)
!1151 = !DILocation(line: 621, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 621, column: 7)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 620, column: 3)
!1154 = distinct !DILexicalBlock(scope: !701, file: !2, line: 619, column: 7)
!1155 = !DILocation(line: 594, column: 18, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 594, column: 15)
!1157 = !DILocation(line: 0, scope: !1156)
!1158 = !DILocation(line: 606, column: 24, scope: !1143)
!1159 = !DILocation(line: 606, column: 27, scope: !1143)
!1160 = !DILocation(line: 606, column: 31, scope: !1143)
!1161 = !DILocation(line: 606, column: 30, scope: !1143)
!1162 = !DILocation(line: 619, column: 7, scope: !701)
!1163 = !DILocation(line: 625, column: 1, scope: !701)
!1164 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1167, !1167, !38, !38}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1169 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !2, file: !2, line: 710, type: !1170, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1234)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!38, !38, !38, !84, !1172, !1187}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !1174, line: 60, baseType: !1175)
!1174 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1174, line: 42, size: 1024, elements: !1176)
!1176 = !{!1177, !1181, !1182, !1183, !1184, !1185, !1186, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1212, !1224}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !1174, line: 44, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1179, line: 18, baseType: !1180)
!1179 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !1175, file: !1174, line: 45, baseType: !1178, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !1175, file: !1174, line: 46, baseType: !1178, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !1175, file: !1174, line: 47, baseType: !38, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !1175, file: !1174, line: 48, baseType: !84, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !1175, file: !1174, line: 49, baseType: !84, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !1175, file: !1174, line: 50, baseType: !1187, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1175, file: !1174, line: 51, baseType: !1187, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !1175, file: !1174, line: 52, baseType: !1187, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !1175, file: !1174, line: 53, baseType: !1187, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !1175, file: !1174, line: 54, baseType: !1187, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !1175, file: !1174, line: 55, baseType: !1187, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !1175, file: !1174, line: 56, baseType: !1187, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1175, file: !1174, line: 57, baseType: !1195, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !1197, line: 50, baseType: !1198)
!1197 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 42, size: 320, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1211}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1198, file: !1197, line: 44, baseType: !1178, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1198, file: !1197, line: 45, baseType: !1178, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1198, file: !1197, line: 46, baseType: !1187, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1198, file: !1197, line: 47, baseType: !1204, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !1206, line: 44, baseType: !1207)
!1206 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !1206, line: 38, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1207, file: !1206, line: 40, baseType: !1178, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1207, file: !1206, line: 41, baseType: !1187, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1198, file: !1197, line: 48, baseType: !38, size: 32, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !1175, file: !1174, line: 58, baseType: !1213, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !1215, line: 50, baseType: !1216)
!1215 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 42, size: 384, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !1216, file: !1215, line: 44, baseType: !1178, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !1216, file: !1215, line: 45, baseType: !1178, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !1216, file: !1215, line: 46, baseType: !1178, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1216, file: !1215, line: 47, baseType: !1187, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1216, file: !1215, line: 48, baseType: !1204, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1216, file: !1215, line: 49, baseType: !38, size: 32, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !1175, file: !1174, line: 59, baseType: !1225, size: 64, offset: 960)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !76, line: 54, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 48, size: 320, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1227, file: !76, line: 49, baseType: !1178, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1227, file: !76, line: 50, baseType: !1187, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1227, file: !76, line: 51, baseType: !1187, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1227, file: !76, line: 52, baseType: !1187, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1227, file: !76, line: 53, baseType: !1187, size: 64, offset: 256)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1258, !1259, !1265}
!1235 = !DILocalVariable(name: "order_min", arg: 1, scope: !1169, file: !2, line: 710, type: !38)
!1236 = !DILocalVariable(name: "order_max", arg: 2, scope: !1169, file: !2, line: 710, type: !38)
!1237 = !DILocalVariable(name: "qq", arg: 3, scope: !1169, file: !2, line: 710, type: !84)
!1238 = !DILocalVariable(name: "work", arg: 4, scope: !1169, file: !2, line: 710, type: !1172)
!1239 = !DILocalVariable(name: "result_array", arg: 5, scope: !1169, file: !2, line: 710, type: !1187)
!1240 = !DILocalVariable(name: "even_order", scope: !1169, file: !2, line: 712, type: !77)
!1241 = !DILocalVariable(name: "odd_order", scope: !1169, file: !2, line: 712, type: !77)
!1242 = !DILocalVariable(name: "extra_values", scope: !1169, file: !2, line: 713, type: !77)
!1243 = !DILocalVariable(name: "ii", scope: !1169, file: !2, line: 713, type: !77)
!1244 = !DILocalVariable(name: "jj", scope: !1169, file: !2, line: 713, type: !77)
!1245 = !DILocalVariable(name: "status", scope: !1169, file: !2, line: 714, type: !38)
!1246 = !DILocalVariable(name: "tt", scope: !1169, file: !2, line: 715, type: !1187)
!1247 = !DILocalVariable(name: "dd", scope: !1169, file: !2, line: 715, type: !1187)
!1248 = !DILocalVariable(name: "ee", scope: !1169, file: !2, line: 715, type: !1187)
!1249 = !DILocalVariable(name: "e2", scope: !1169, file: !2, line: 715, type: !1187)
!1250 = !DILocalVariable(name: "zz", scope: !1169, file: !2, line: 716, type: !1187)
!1251 = !DILocalVariable(name: "aa", scope: !1169, file: !2, line: 716, type: !1187)
!1252 = !DILocalVariable(name: "mat", scope: !1169, file: !2, line: 717, type: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !1215, line: 57, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !1215, line: 55, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 52, size: 384, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !1255, file: !1215, line: 54, baseType: !1214, size: 384)
!1258 = !DILocalVariable(name: "evec", scope: !1169, file: !2, line: 717, type: !1253)
!1259 = !DILocalVariable(name: "eval", scope: !1169, file: !2, line: 718, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !1197, line: 57, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !1197, line: 55, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 52, size: 320, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1262, file: !1197, line: 54, baseType: !1196, size: 320)
!1265 = !DILocalVariable(name: "wmat", scope: !1169, file: !2, line: 719, type: !1225)
!1266 = distinct !DIAssignID()
!1267 = !DILocation(line: 0, scope: !1169)
!1268 = distinct !DIAssignID()
!1269 = distinct !DIAssignID()
!1270 = !DILocation(line: 712, column: 35, scope: !1169)
!1271 = !{!1272, !1273, i64 8}
!1272 = !{!"", !1273, i64 0, !1273, i64 8, !1273, i64 16, !1274, i64 24, !139, i64 32, !139, i64 40, !1275, i64 48, !1275, i64 56, !1275, i64 64, !1275, i64 72, !1275, i64 80, !1275, i64 88, !1275, i64 96, !1275, i64 104, !1275, i64 112, !1275, i64 120}
!1273 = !{!"long", !140, i64 0}
!1274 = !{!"int", !140, i64 0}
!1275 = !{!"any pointer", !140, i64 0}
!1276 = !DILocation(line: 712, column: 29, scope: !1169)
!1277 = !DILocation(line: 712, column: 65, scope: !1169)
!1278 = !{!1272, !1273, i64 16}
!1279 = !DILocation(line: 712, column: 59, scope: !1169)
!1280 = !DILocation(line: 713, column: 28, scope: !1169)
!1281 = !{!1272, !1274, i64 24}
!1282 = !DILocation(line: 715, column: 22, scope: !1169)
!1283 = !{!1272, !1275, i64 80}
!1284 = !DILocation(line: 715, column: 38, scope: !1169)
!1285 = !{!1272, !1275, i64 64}
!1286 = !DILocation(line: 715, column: 54, scope: !1169)
!1287 = !{!1272, !1275, i64 72}
!1288 = !DILocation(line: 715, column: 70, scope: !1169)
!1289 = !{!1272, !1275, i64 88}
!1290 = !DILocation(line: 716, column: 22, scope: !1169)
!1291 = !{!1272, !1275, i64 96}
!1292 = !DILocation(line: 716, column: 38, scope: !1169)
!1293 = !{!1272, !1275, i64 48}
!1294 = !DILocation(line: 717, column: 3, scope: !1169)
!1295 = !DILocation(line: 718, column: 3, scope: !1169)
!1296 = !DILocation(line: 719, column: 43, scope: !1169)
!1297 = !{!1272, !1275, i64 120}
!1298 = !DILocation(line: 721, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 721, column: 7)
!1300 = !DILocation(line: 721, column: 25, scope: !1299)
!1301 = !{!1272, !1273, i64 0}
!1302 = !DILocation(line: 721, column: 17, scope: !1299)
!1303 = !DILocation(line: 721, column: 30, scope: !1299)
!1304 = !DILocation(line: 721, column: 43, scope: !1299)
!1305 = !DILocation(line: 721, column: 56, scope: !1299)
!1306 = !DILocation(line: 723, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 723, column: 7)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 722, column: 5)
!1309 = !DILocation(line: 730, column: 3, scope: !1169)
!1310 = !DILocation(line: 731, column: 3, scope: !1169)
!1311 = !DILocation(line: 730, column: 9, scope: !1169)
!1312 = !DILocation(line: 731, column: 9, scope: !1169)
!1313 = !{!139, !139, i64 0}
!1314 = !DILocation(line: 732, column: 16, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 732, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 732, column: 3)
!1317 = !DILocation(line: 732, column: 3, scope: !1316)
!1318 = !DILocation(line: 734, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 733, column: 3)
!1320 = !DILocation(line: 734, column: 7, scope: !1319)
!1321 = !DILocation(line: 734, column: 16, scope: !1319)
!1322 = !DILocation(line: 735, column: 21, scope: !1319)
!1323 = !DILocation(line: 735, column: 24, scope: !1319)
!1324 = !DILocation(line: 735, column: 20, scope: !1319)
!1325 = !DILocation(line: 735, column: 14, scope: !1319)
!1326 = !DILocation(line: 735, column: 7, scope: !1319)
!1327 = !DILocation(line: 735, column: 18, scope: !1319)
!1328 = !DILocation(line: 736, column: 14, scope: !1319)
!1329 = !DILocation(line: 736, column: 7, scope: !1319)
!1330 = !DILocation(line: 736, column: 18, scope: !1319)
!1331 = !DILocation(line: 732, column: 33, scope: !1315)
!1332 = distinct !{!1332, !1317, !1333, !545}
!1333 = !DILocation(line: 737, column: 3, scope: !1316)
!1334 = !DILocation(line: 738, column: 7, scope: !1169)
!1335 = !DILocation(line: 738, column: 18, scope: !1169)
!1336 = !DILocation(line: 738, column: 3, scope: !1169)
!1337 = !DILocation(line: 738, column: 22, scope: !1169)
!1338 = !DILocation(line: 739, column: 25, scope: !1169)
!1339 = !DILocation(line: 739, column: 42, scope: !1169)
!1340 = !DILocation(line: 739, column: 24, scope: !1169)
!1341 = !DILocation(line: 739, column: 18, scope: !1169)
!1342 = !DILocation(line: 739, column: 3, scope: !1169)
!1343 = !DILocation(line: 739, column: 22, scope: !1169)
!1344 = !DILocation(line: 740, column: 18, scope: !1169)
!1345 = !DILocation(line: 740, column: 3, scope: !1169)
!1346 = !DILocation(line: 740, column: 22, scope: !1169)
!1347 = !DILocation(line: 742, column: 3, scope: !1169)
!1348 = !DILocation(line: 742, column: 9, scope: !1169)
!1349 = !DILocalVariable(name: "nn", arg: 1, scope: !1350, file: !2, line: 675, type: !38)
!1350 = distinct !DISubprogram(name: "figi", scope: !2, file: !2, line: 675, type: !1351, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!38, !38, !1187, !1187, !1187, !1187}
!1353 = !{!1349, !1354, !1355, !1356, !1357, !1358}
!1354 = !DILocalVariable(name: "tt", arg: 2, scope: !1350, file: !2, line: 675, type: !1187)
!1355 = !DILocalVariable(name: "dd", arg: 3, scope: !1350, file: !2, line: 675, type: !1187)
!1356 = !DILocalVariable(name: "ee", arg: 4, scope: !1350, file: !2, line: 675, type: !1187)
!1357 = !DILocalVariable(name: "e2", arg: 5, scope: !1350, file: !2, line: 676, type: !1187)
!1358 = !DILocalVariable(name: "ii", scope: !1350, file: !2, line: 678, type: !38)
!1359 = !DILocation(line: 0, scope: !1350, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 744, column: 12, scope: !1169)
!1361 = !DILocation(line: 680, column: 8, scope: !1362, inlinedAt: !1360)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 680, column: 3)
!1363 = !DILocation(line: 680, column: 16, scope: !1364, inlinedAt: !1360)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 680, column: 3)
!1365 = !DILocation(line: 680, column: 3, scope: !1362, inlinedAt: !1360)
!1366 = !DILocation(line: 703, column: 16, scope: !1367, inlinedAt: !1360)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 681, column: 3)
!1368 = !DILocation(line: 703, column: 14, scope: !1367, inlinedAt: !1360)
!1369 = !DILocation(line: 684, column: 24, scope: !1370, inlinedAt: !1360)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 683, column: 7)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 682, column: 11)
!1372 = !DILocation(line: 684, column: 20, scope: !1370, inlinedAt: !1360)
!1373 = !DILocation(line: 684, column: 29, scope: !1370, inlinedAt: !1360)
!1374 = !DILocation(line: 684, column: 28, scope: !1370, inlinedAt: !1360)
!1375 = !DILocation(line: 684, column: 11, scope: !1370, inlinedAt: !1360)
!1376 = !DILocation(line: 684, column: 18, scope: !1370, inlinedAt: !1360)
!1377 = !DILocation(line: 686, column: 22, scope: !1378, inlinedAt: !1360)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 686, column: 15)
!1379 = !DILocation(line: 686, column: 15, scope: !1370, inlinedAt: !1360)
!1380 = !DILocation(line: 693, column: 22, scope: !1381, inlinedAt: !1360)
!1381 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 693, column: 15)
!1382 = !DILocation(line: 693, column: 29, scope: !1381, inlinedAt: !1360)
!1383 = !DILocation(line: 693, column: 33, scope: !1381, inlinedAt: !1360)
!1384 = !DILocation(line: 693, column: 42, scope: !1381, inlinedAt: !1360)
!1385 = !DILocation(line: 693, column: 49, scope: !1381, inlinedAt: !1360)
!1386 = !DILocation(line: 693, column: 52, scope: !1381, inlinedAt: !1360)
!1387 = !DILocation(line: 693, column: 67, scope: !1381, inlinedAt: !1360)
!1388 = !DILocation(line: 693, column: 15, scope: !1370, inlinedAt: !1360)
!1389 = !DILocation(line: 697, column: 28, scope: !1390, inlinedAt: !1360)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 694, column: 11)
!1391 = !DILocation(line: 746, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 746, column: 7)
!1393 = !DILocation(line: 746, column: 7, scope: !1169)
!1394 = !DILocation(line: 700, column: 20, scope: !1370, inlinedAt: !1360)
!1395 = !DILocation(line: 700, column: 11, scope: !1370, inlinedAt: !1360)
!1396 = !DILocation(line: 700, column: 18, scope: !1370, inlinedAt: !1360)
!1397 = !DILocation(line: 703, column: 7, scope: !1367, inlinedAt: !1360)
!1398 = !DILocation(line: 680, column: 23, scope: !1364, inlinedAt: !1360)
!1399 = distinct !{!1399, !1365, !1400, !545, !1401}
!1400 = !DILocation(line: 704, column: 3, scope: !1362, inlinedAt: !1360)
!1401 = !{!"llvm.loop.peeled.count", i32 1}
!1402 = !DILocation(line: 748, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 748, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 747, column: 5)
!1405 = !DILocation(line: 752, column: 16, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 752, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 752, column: 3)
!1408 = !DILocation(line: 752, column: 3, scope: !1407)
!1409 = !DILocation(line: 753, column: 14, scope: !1406)
!1410 = !DILocation(line: 755, column: 11, scope: !1169)
!1411 = !DILocation(line: 755, column: 9, scope: !1169)
!1412 = !DILocation(line: 756, column: 11, scope: !1169)
!1413 = !DILocation(line: 756, column: 3, scope: !1169)
!1414 = !DILocation(line: 756, column: 9, scope: !1169)
!1415 = !DILocation(line: 757, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 757, column: 3)
!1417 = !DILocation(line: 763, column: 48, scope: !1169)
!1418 = !DILocation(line: 757, column: 16, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 757, column: 3)
!1420 = !DILocation(line: 759, column: 32, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 758, column: 3)
!1422 = !DILocation(line: 759, column: 23, scope: !1421)
!1423 = !DILocation(line: 759, column: 26, scope: !1421)
!1424 = !DILocation(line: 759, column: 7, scope: !1421)
!1425 = !DILocation(line: 759, column: 30, scope: !1421)
!1426 = !DILocation(line: 760, column: 30, scope: !1421)
!1427 = !DILocation(line: 760, column: 7, scope: !1421)
!1428 = !DILocation(line: 760, column: 28, scope: !1421)
!1429 = !DILocation(line: 761, column: 37, scope: !1421)
!1430 = !DILocation(line: 761, column: 32, scope: !1421)
!1431 = !DILocation(line: 761, column: 26, scope: !1421)
!1432 = !DILocation(line: 761, column: 7, scope: !1421)
!1433 = !DILocation(line: 761, column: 30, scope: !1421)
!1434 = distinct !{!1434, !1415, !1435, !545}
!1435 = !DILocation(line: 762, column: 3, scope: !1416)
!1436 = !DILocation(line: 763, column: 31, scope: !1169)
!1437 = !DILocation(line: 763, column: 42, scope: !1169)
!1438 = !DILocation(line: 763, column: 3, scope: !1169)
!1439 = !DILocation(line: 763, column: 46, scope: !1169)
!1440 = !DILocation(line: 764, column: 33, scope: !1169)
!1441 = !DILocation(line: 764, column: 27, scope: !1169)
!1442 = !DILocation(line: 764, column: 3, scope: !1169)
!1443 = !DILocation(line: 764, column: 31, scope: !1169)
!1444 = !DILocation(line: 767, column: 35, scope: !1169)
!1445 = !DILocation(line: 767, column: 9, scope: !1169)
!1446 = distinct !DIAssignID()
!1447 = !DILocation(line: 768, column: 37, scope: !1169)
!1448 = !{!1272, !1275, i64 104}
!1449 = !DILocation(line: 768, column: 10, scope: !1169)
!1450 = distinct !DIAssignID()
!1451 = !DILocation(line: 769, column: 37, scope: !1169)
!1452 = !{!1272, !1275, i64 112}
!1453 = !DILocation(line: 769, column: 10, scope: !1169)
!1454 = distinct !DIAssignID()
!1455 = !DILocation(line: 770, column: 3, scope: !1169)
!1456 = !DILocation(line: 771, column: 3, scope: !1169)
!1457 = !DILocation(line: 773, column: 16, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 773, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 773, column: 3)
!1460 = !DILocation(line: 773, column: 3, scope: !1459)
!1461 = !{!1462, !1275, i64 16}
!1462 = !{!"", !1273, i64 0, !1273, i64 8, !1275, i64 16, !1275, i64 24, !1274, i64 32}
!1463 = !{!1462, !1273, i64 8}
!1464 = !DILocalVariable(name: "v", arg: 1, scope: !1465, file: !1197, line: 175, type: !1468)
!1465 = distinct !DISubprogram(name: "gsl_vector_get", scope: !1197, file: !1197, line: 175, type: !1466, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1471)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!84, !1468, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1471 = !{!1464, !1472}
!1472 = !DILocalVariable(name: "i", arg: 2, scope: !1465, file: !1197, line: 175, type: !1470)
!1473 = !DILocation(line: 0, scope: !1465, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 774, column: 18, scope: !1458)
!1475 = !DILocation(line: 183, column: 20, scope: !1465, inlinedAt: !1474)
!1476 = !DILocation(line: 183, column: 10, scope: !1465, inlinedAt: !1474)
!1477 = !DILocation(line: 774, column: 11, scope: !1458)
!1478 = !DILocation(line: 774, column: 7, scope: !1458)
!1479 = !DILocation(line: 774, column: 16, scope: !1458)
!1480 = !DILocation(line: 777, column: 16, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 777, column: 3)
!1482 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 777, column: 3)
!1483 = !DILocation(line: 777, column: 3, scope: !1482)
!1484 = !DILocation(line: 778, column: 14, scope: !1481)
!1485 = !DILocation(line: 779, column: 16, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 779, column: 3)
!1487 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 779, column: 3)
!1488 = !DILocation(line: 773, column: 44, scope: !1458)
!1489 = distinct !{!1489, !1460, !1490, !545}
!1490 = !DILocation(line: 774, column: 49, scope: !1459)
!1491 = !DILocation(line: 779, column: 3, scope: !1487)
!1492 = !DILocation(line: 779, column: 30, scope: !1486)
!1493 = !DILocation(line: 780, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 780, column: 7)
!1495 = !DILocation(line: 782, column: 18, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 782, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 781, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 780, column: 7)
!1499 = !DILocation(line: 782, column: 15, scope: !1497)
!1500 = !DILocation(line: 783, column: 35, scope: !1496)
!1501 = !DILocation(line: 780, column: 34, scope: !1498)
!1502 = !DILocation(line: 783, column: 15, scope: !1496)
!1503 = !DILocation(line: 784, column: 29, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 784, column: 20)
!1505 = !DILocation(line: 784, column: 23, scope: !1504)
!1506 = !DILocation(line: 784, column: 33, scope: !1504)
!1507 = !DILocation(line: 785, column: 30, scope: !1504)
!1508 = !DILocation(line: 785, column: 15, scope: !1504)
!1509 = !DILocation(line: 785, column: 35, scope: !1504)
!1510 = !DILocation(line: 780, column: 20, scope: !1498)
!1511 = distinct !{!1511, !1493, !1512, !545}
!1512 = !DILocation(line: 786, column: 7, scope: !1494)
!1513 = distinct !{!1513, !1491, !1514, !545}
!1514 = !DILocation(line: 786, column: 7, scope: !1487)
!1515 = !DILocation(line: 787, column: 9, scope: !1169)
!1516 = !DILocation(line: 790, column: 9, scope: !1169)
!1517 = !DILocation(line: 790, column: 35, scope: !1169)
!1518 = !{i64 0, i64 8, !1519, i64 8, i64 8, !1519, i64 16, i64 8, !1519, i64 24, i64 8, !1520, i64 32, i64 8, !1520, i64 40, i64 4, !1521}
!1519 = !{!1273, !1273, i64 0}
!1520 = !{!1275, !1275, i64 0}
!1521 = !{!1274, !1274, i64 0}
!1522 = distinct !DIAssignID()
!1523 = !DILocation(line: 791, column: 10, scope: !1169)
!1524 = !DILocation(line: 791, column: 37, scope: !1169)
!1525 = !{i64 0, i64 8, !1519, i64 8, i64 8, !1519, i64 16, i64 8, !1520, i64 24, i64 8, !1520, i64 32, i64 4, !1521}
!1526 = distinct !DIAssignID()
!1527 = !DILocation(line: 792, column: 10, scope: !1169)
!1528 = !DILocation(line: 792, column: 37, scope: !1169)
!1529 = distinct !DIAssignID()
!1530 = !DILocation(line: 793, column: 3, scope: !1169)
!1531 = !DILocation(line: 794, column: 3, scope: !1169)
!1532 = !DILocation(line: 796, column: 16, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 796, column: 3)
!1534 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 796, column: 3)
!1535 = !DILocation(line: 796, column: 3, scope: !1534)
!1536 = !DILocation(line: 0, scope: !1465, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 797, column: 20, scope: !1533)
!1538 = !DILocation(line: 183, column: 20, scope: !1465, inlinedAt: !1537)
!1539 = !DILocation(line: 183, column: 10, scope: !1465, inlinedAt: !1537)
!1540 = !DILocation(line: 797, column: 11, scope: !1533)
!1541 = !DILocation(line: 797, column: 7, scope: !1533)
!1542 = !DILocation(line: 797, column: 18, scope: !1533)
!1543 = !DILocation(line: 799, column: 28, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 799, column: 3)
!1545 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 799, column: 3)
!1546 = !DILocation(line: 799, column: 3, scope: !1545)
!1547 = !DILocation(line: 796, column: 43, scope: !1533)
!1548 = distinct !{!1548, !1535, !1549, !545}
!1549 = !DILocation(line: 797, column: 51, scope: !1534)
!1550 = !DILocation(line: 801, column: 38, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 800, column: 5)
!1552 = !DILocation(line: 801, column: 23, scope: !1551)
!1553 = !DILocation(line: 801, column: 7, scope: !1551)
!1554 = !DILocation(line: 801, column: 36, scope: !1551)
!1555 = !DILocation(line: 799, column: 45, scope: !1544)
!1556 = distinct !{!1556, !1546, !1557, !545}
!1557 = !DILocation(line: 802, column: 5, scope: !1545)
!1558 = !DILocation(line: 805, column: 1, scope: !1169)
!1559 = !DISubprogram(name: "gsl_matrix_view_array", scope: !1215, file: !1215, line: 129, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1254, !1187, !1470, !1470}
!1562 = !DISubprogram(name: "gsl_vector_subvector", scope: !1197, file: !1197, line: 103, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1261, !1195, !1178, !1178}
!1565 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !1215, file: !1215, line: 101, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1254, !1213, !1470, !1470, !1470, !1470}
!1568 = !DISubprogram(name: "gsl_eigen_symmv", scope: !76, file: !76, line: 58, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!38, !1213, !1195, !1213, !1225}
!1571 = !DISubprogram(name: "gsl_eigen_symmv_sort", scope: !76, file: !76, line: 280, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!38, !1195, !1213, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_sort_t", file: !76, line: 271, baseType: !75)
!1575 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !2, file: !2, line: 808, type: !1170, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1577 = !DILocalVariable(name: "order_min", arg: 1, scope: !1575, file: !2, line: 808, type: !38)
!1578 = !DILocalVariable(name: "order_max", arg: 2, scope: !1575, file: !2, line: 808, type: !38)
!1579 = !DILocalVariable(name: "qq", arg: 3, scope: !1575, file: !2, line: 808, type: !84)
!1580 = !DILocalVariable(name: "work", arg: 4, scope: !1575, file: !2, line: 808, type: !1172)
!1581 = !DILocalVariable(name: "result_array", arg: 5, scope: !1575, file: !2, line: 808, type: !1187)
!1582 = !DILocalVariable(name: "even_order", scope: !1575, file: !2, line: 810, type: !77)
!1583 = !DILocalVariable(name: "odd_order", scope: !1575, file: !2, line: 810, type: !77)
!1584 = !DILocalVariable(name: "extra_values", scope: !1575, file: !2, line: 811, type: !77)
!1585 = !DILocalVariable(name: "ii", scope: !1575, file: !2, line: 811, type: !77)
!1586 = !DILocalVariable(name: "jj", scope: !1575, file: !2, line: 811, type: !77)
!1587 = !DILocalVariable(name: "zz", scope: !1575, file: !2, line: 812, type: !1187)
!1588 = !DILocalVariable(name: "bb", scope: !1575, file: !2, line: 812, type: !1187)
!1589 = !DILocalVariable(name: "mat", scope: !1575, file: !2, line: 813, type: !1253)
!1590 = !DILocalVariable(name: "evec", scope: !1575, file: !2, line: 813, type: !1253)
!1591 = !DILocalVariable(name: "eval", scope: !1575, file: !2, line: 814, type: !1260)
!1592 = !DILocalVariable(name: "wmat", scope: !1575, file: !2, line: 815, type: !1225)
!1593 = distinct !DIAssignID()
!1594 = !DILocation(line: 0, scope: !1575)
!1595 = distinct !DIAssignID()
!1596 = distinct !DIAssignID()
!1597 = !DILocation(line: 810, column: 35, scope: !1575)
!1598 = !DILocation(line: 810, column: 29, scope: !1575)
!1599 = !DILocation(line: 810, column: 67, scope: !1575)
!1600 = !DILocation(line: 810, column: 61, scope: !1575)
!1601 = !DILocation(line: 811, column: 28, scope: !1575)
!1602 = !DILocation(line: 812, column: 22, scope: !1575)
!1603 = !DILocation(line: 812, column: 38, scope: !1575)
!1604 = !{!1272, !1275, i64 56}
!1605 = !DILocation(line: 813, column: 3, scope: !1575)
!1606 = !DILocation(line: 814, column: 3, scope: !1575)
!1607 = !DILocation(line: 815, column: 43, scope: !1575)
!1608 = !DILocation(line: 817, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 817, column: 7)
!1610 = !DILocation(line: 817, column: 25, scope: !1609)
!1611 = !DILocation(line: 817, column: 17, scope: !1609)
!1612 = !DILocation(line: 817, column: 30, scope: !1609)
!1613 = !DILocation(line: 817, column: 43, scope: !1609)
!1614 = !DILocation(line: 817, column: 56, scope: !1609)
!1615 = !DILocation(line: 823, column: 16, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 823, column: 3)
!1617 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 823, column: 3)
!1618 = !DILocation(line: 823, column: 3, scope: !1617)
!1619 = !DILocation(line: 824, column: 14, scope: !1616)
!1620 = !DILocation(line: 825, column: 16, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 825, column: 3)
!1622 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 825, column: 3)
!1623 = !DILocation(line: 819, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 819, column: 7)
!1625 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 818, column: 5)
!1626 = !DILocation(line: 825, column: 3, scope: !1622)
!1627 = !DILocation(line: 825, column: 31, scope: !1621)
!1628 = !DILocation(line: 826, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 826, column: 7)
!1630 = !DILocation(line: 828, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 828, column: 15)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 827, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 826, column: 7)
!1634 = !DILocation(line: 828, column: 15, scope: !1632)
!1635 = !DILocation(line: 829, column: 36, scope: !1631)
!1636 = !DILocation(line: 826, column: 35, scope: !1633)
!1637 = !DILocation(line: 829, column: 15, scope: !1631)
!1638 = !DILocation(line: 830, column: 29, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 830, column: 20)
!1640 = !DILocation(line: 830, column: 23, scope: !1639)
!1641 = !DILocation(line: 830, column: 33, scope: !1639)
!1642 = !DILocation(line: 831, column: 31, scope: !1639)
!1643 = !DILocation(line: 831, column: 15, scope: !1639)
!1644 = !DILocation(line: 831, column: 36, scope: !1639)
!1645 = !DILocation(line: 826, column: 20, scope: !1633)
!1646 = distinct !{!1646, !1628, !1647, !545}
!1647 = !DILocation(line: 832, column: 7, scope: !1629)
!1648 = distinct !{!1648, !1626, !1649, !545}
!1649 = !DILocation(line: 832, column: 7, scope: !1622)
!1650 = !DILocation(line: 835, column: 35, scope: !1575)
!1651 = !DILocation(line: 835, column: 9, scope: !1575)
!1652 = distinct !DIAssignID()
!1653 = !DILocation(line: 836, column: 37, scope: !1575)
!1654 = !DILocation(line: 836, column: 10, scope: !1575)
!1655 = distinct !DIAssignID()
!1656 = !DILocation(line: 837, column: 37, scope: !1575)
!1657 = !DILocation(line: 837, column: 10, scope: !1575)
!1658 = distinct !DIAssignID()
!1659 = !DILocation(line: 838, column: 3, scope: !1575)
!1660 = !DILocation(line: 839, column: 3, scope: !1575)
!1661 = !DILocation(line: 841, column: 9, scope: !1575)
!1662 = !DILocation(line: 842, column: 16, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 842, column: 3)
!1664 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 842, column: 3)
!1665 = !DILocation(line: 842, column: 3, scope: !1664)
!1666 = !DILocation(line: 0, scope: !1465, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 843, column: 22, scope: !1663)
!1668 = !DILocation(line: 183, column: 20, scope: !1465, inlinedAt: !1667)
!1669 = !DILocation(line: 183, column: 10, scope: !1465, inlinedAt: !1667)
!1670 = !DILocation(line: 843, column: 11, scope: !1663)
!1671 = !DILocation(line: 843, column: 7, scope: !1663)
!1672 = !DILocation(line: 843, column: 20, scope: !1663)
!1673 = !DILocation(line: 846, column: 16, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 846, column: 3)
!1675 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 846, column: 3)
!1676 = !DILocation(line: 846, column: 3, scope: !1675)
!1677 = !DILocation(line: 847, column: 14, scope: !1674)
!1678 = !DILocation(line: 848, column: 16, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 848, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 848, column: 3)
!1681 = !DILocation(line: 843, column: 15, scope: !1663)
!1682 = distinct !{!1682, !1665, !1683, !545}
!1683 = !DILocation(line: 843, column: 53, scope: !1664)
!1684 = !DILocation(line: 848, column: 3, scope: !1680)
!1685 = !DILocation(line: 848, column: 30, scope: !1679)
!1686 = !DILocation(line: 849, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 849, column: 7)
!1688 = !DILocation(line: 851, column: 18, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 851, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 850, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 849, column: 7)
!1692 = !DILocation(line: 851, column: 15, scope: !1690)
!1693 = !DILocation(line: 852, column: 35, scope: !1689)
!1694 = !DILocation(line: 849, column: 34, scope: !1691)
!1695 = !DILocation(line: 852, column: 15, scope: !1689)
!1696 = !DILocation(line: 853, column: 29, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 853, column: 20)
!1698 = !DILocation(line: 853, column: 23, scope: !1697)
!1699 = !DILocation(line: 853, column: 33, scope: !1697)
!1700 = !DILocation(line: 854, column: 30, scope: !1697)
!1701 = !DILocation(line: 854, column: 15, scope: !1697)
!1702 = !DILocation(line: 854, column: 35, scope: !1697)
!1703 = !DILocation(line: 849, column: 20, scope: !1691)
!1704 = distinct !{!1704, !1686, !1705, !545}
!1705 = !DILocation(line: 855, column: 7, scope: !1687)
!1706 = distinct !{!1706, !1684, !1707, !545}
!1707 = !DILocation(line: 855, column: 7, scope: !1680)
!1708 = !DILocation(line: 857, column: 9, scope: !1575)
!1709 = !DILocation(line: 860, column: 9, scope: !1575)
!1710 = !DILocation(line: 860, column: 35, scope: !1575)
!1711 = distinct !DIAssignID()
!1712 = !DILocation(line: 861, column: 10, scope: !1575)
!1713 = !DILocation(line: 861, column: 37, scope: !1575)
!1714 = distinct !DIAssignID()
!1715 = !DILocation(line: 862, column: 10, scope: !1575)
!1716 = !DILocation(line: 862, column: 37, scope: !1575)
!1717 = distinct !DIAssignID()
!1718 = !DILocation(line: 863, column: 3, scope: !1575)
!1719 = !DILocation(line: 864, column: 3, scope: !1575)
!1720 = !DILocation(line: 866, column: 16, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 866, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 866, column: 3)
!1723 = !DILocation(line: 866, column: 3, scope: !1722)
!1724 = !DILocation(line: 0, scope: !1465, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 867, column: 20, scope: !1721)
!1726 = !DILocation(line: 183, column: 20, scope: !1465, inlinedAt: !1725)
!1727 = !DILocation(line: 183, column: 10, scope: !1465, inlinedAt: !1725)
!1728 = !DILocation(line: 867, column: 11, scope: !1721)
!1729 = !DILocation(line: 867, column: 7, scope: !1721)
!1730 = !DILocation(line: 867, column: 18, scope: !1721)
!1731 = !DILocation(line: 869, column: 28, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 869, column: 3)
!1733 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 869, column: 3)
!1734 = !DILocation(line: 869, column: 3, scope: !1733)
!1735 = !DILocation(line: 866, column: 43, scope: !1721)
!1736 = distinct !{!1736, !1723, !1737, !545}
!1737 = !DILocation(line: 867, column: 51, scope: !1722)
!1738 = !DILocation(line: 871, column: 38, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 870, column: 5)
!1740 = !DILocation(line: 871, column: 23, scope: !1739)
!1741 = !DILocation(line: 871, column: 7, scope: !1739)
!1742 = !DILocation(line: 871, column: 36, scope: !1739)
!1743 = !DILocation(line: 869, column: 45, scope: !1732)
!1744 = distinct !{!1744, !1734, !1745, !545}
!1745 = !DILocation(line: 872, column: 5, scope: !1733)
!1746 = !DILocation(line: 875, column: 1, scope: !1575)
!1747 = distinct !DISubprogram(name: "gsl_sf_mathieu_a", scope: !2, file: !2, line: 882, type: !162, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1748)
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DILocalVariable(name: "order", arg: 1, scope: !1747, file: !2, line: 882, type: !38)
!1750 = !DILocalVariable(name: "qq", arg: 2, scope: !1747, file: !2, line: 882, type: !84)
!1751 = !DILocalVariable(name: "result", scope: !1747, file: !2, line: 884, type: !104)
!1752 = !DILocalVariable(name: "status", scope: !1747, file: !2, line: 884, type: !38)
!1753 = distinct !DIAssignID()
!1754 = !DILocation(line: 0, scope: !1747)
!1755 = !DILocation(line: 884, column: 2, scope: !1747)
!1756 = !DILocation(line: 884, column: 2, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 884, column: 2)
!1758 = !DILocation(line: 884, column: 2, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 884, column: 2)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 884, column: 2)
!1761 = !DILocation(line: 885, column: 1, scope: !1747)
!1762 = distinct !DISubprogram(name: "gsl_sf_mathieu_b", scope: !2, file: !2, line: 887, type: !162, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1763)
!1763 = !{!1764, !1765, !1766, !1767}
!1764 = !DILocalVariable(name: "order", arg: 1, scope: !1762, file: !2, line: 887, type: !38)
!1765 = !DILocalVariable(name: "qq", arg: 2, scope: !1762, file: !2, line: 887, type: !84)
!1766 = !DILocalVariable(name: "result", scope: !1762, file: !2, line: 889, type: !104)
!1767 = !DILocalVariable(name: "status", scope: !1762, file: !2, line: 889, type: !38)
!1768 = distinct !DIAssignID()
!1769 = !DILocation(line: 0, scope: !1762)
!1770 = !DILocation(line: 889, column: 2, scope: !1762)
!1771 = !DILocation(line: 889, column: 2, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 889, column: 2)
!1773 = !DILocation(line: 889, column: 2, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 889, column: 2)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 889, column: 2)
!1776 = !DILocation(line: 890, column: 1, scope: !1762)
!1777 = !DISubprogram(name: "sqrt", scope: !1778, file: !1778, line: 143, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!84, !84}
!1781 = !DILocation(line: 0, scope: !190)
!1782 = !DILocation(line: 152, column: 9, scope: !190)
!1783 = !DILocation(line: 152, column: 16, scope: !190)
!1784 = !DILocation(line: 152, column: 8, scope: !190)
!1785 = !DILocation(line: 153, column: 10, scope: !190)
!1786 = !DILocation(line: 154, column: 10, scope: !190)
!1787 = !DILocation(line: 155, column: 10, scope: !190)
!1788 = !DILocation(line: 157, column: 10, scope: !190)
!1789 = !DILocation(line: 157, column: 9, scope: !190)
!1790 = !DILocation(line: 158, column: 10, scope: !190)
!1791 = !DILocation(line: 159, column: 11, scope: !190)
!1792 = !DILocation(line: 160, column: 12, scope: !190)
!1793 = !DILocation(line: 161, column: 12, scope: !190)
!1794 = !DILocation(line: 162, column: 12, scope: !190)
!1795 = !DILocation(line: 165, column: 13, scope: !190)
!1796 = !DILocation(line: 165, column: 21, scope: !190)
!1797 = !DILocation(line: 165, column: 37, scope: !190)
!1798 = !DILocation(line: 165, column: 32, scope: !190)
!1799 = !DILocation(line: 166, column: 16, scope: !190)
!1800 = !DILocation(line: 166, column: 19, scope: !190)
!1801 = !DILocation(line: 166, column: 58, scope: !190)
!1802 = !DILocation(line: 167, column: 35, scope: !190)
!1803 = !DILocation(line: 167, column: 46, scope: !190)
!1804 = !DILocation(line: 167, column: 50, scope: !190)
!1805 = !DILocation(line: 167, column: 16, scope: !190)
!1806 = !DILocation(line: 167, column: 58, scope: !190)
!1807 = !DILocation(line: 168, column: 35, scope: !190)
!1808 = !DILocation(line: 168, column: 46, scope: !190)
!1809 = !DILocation(line: 168, column: 50, scope: !190)
!1810 = !DILocation(line: 168, column: 19, scope: !190)
!1811 = !DILocation(line: 168, column: 58, scope: !190)
!1812 = !DILocation(line: 169, column: 24, scope: !190)
!1813 = !DILocation(line: 169, column: 35, scope: !190)
!1814 = !DILocation(line: 169, column: 46, scope: !190)
!1815 = !DILocation(line: 169, column: 50, scope: !190)
!1816 = !DILocation(line: 169, column: 58, scope: !190)
!1817 = !DILocation(line: 170, column: 24, scope: !190)
!1818 = !DILocation(line: 170, column: 35, scope: !190)
!1819 = !DILocation(line: 170, column: 46, scope: !190)
!1820 = !DILocation(line: 170, column: 50, scope: !190)
!1821 = !DILocation(line: 170, column: 19, scope: !190)
!1822 = !DILocation(line: 170, column: 58, scope: !190)
!1823 = !DILocation(line: 172, column: 3, scope: !190)
!1824 = !DISubprogram(name: "pow", scope: !1778, file: !1778, line: 140, type: !1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!84, !84, !84}
!1827 = !DISubprogram(name: "acos", scope: !1778, file: !1778, line: 53, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1828 = !DISubprogram(name: "cos", scope: !1778, file: !1778, line: 62, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
