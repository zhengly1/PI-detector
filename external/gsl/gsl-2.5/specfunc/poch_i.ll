; ModuleID = 'poch.ll'
source_filename = "poch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"poch.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnpoch_e(a, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [29 x i8] c"gsl_sf_poch_e(a, x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [32 x i8] c"gsl_sf_pochrel_e(a, x, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !32
@bern = internal unnamed_addr constant [21 x double] [double 0.000000e+00, double 0x3FB5555555555555, double 0xBF56C16C16C16C17, double 0x3F01566ABC011567, double 0xBEABBD779334EF0B, double 0x3E566A8F2BF70EBE, double 0xBE022805D644267F, double 0x3DAD6DB2C4E09162, double 0xBD57DA4E1F79955C, double 0x3D0355871D652E9E, double 0xBCAF57D968CAACF1, double 0x3C5967E1F09C376F, double 0xBC0497D9033A2B5C, double 0x3BB0B132D7C6AD06, double 0xBB5B0F72D59F1C16, double 0x3B05EF2DA4CCA26D, double 0xBAE6394CAA612629, double 0x3A5CD299DE521B62, double 0xBA075CDE656574A7, double 0x39B2EFE8DB3B4ADF, double 0xB95EB322904761FF], align 16, !dbg !37

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnpoch_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !95 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !106, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata double %1, metadata !107, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !108, metadata !DIExpression()), !dbg !109
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !110
  %handler_result = call double @fAddHandlerDouble(double %0, double %1)
  %5 = fcmp ugt double %handler_result, 0.000000e+00
  %6 = and i1 %4, %5, !dbg !112
  br i1 %6, label %9, label %7, !dbg !112

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !113, !tbaa !116
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !113
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !113, !tbaa !121
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 1) #6, !dbg !122
  br label %14, !dbg !122

9:                                                ; preds = %3
  %10 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  br i1 %10, label %11, label %12, !dbg !126

11:                                               ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !127
  br label %14, !dbg !129

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef %2), !dbg !130
  br label %14, !dbg !132

14:                                               ; preds = %12, %11, %7
  %15 = phi i32 [ 1, %7 ], [ 0, %11 ], [ %13, %12 ], !dbg !133
  ret i32 %15, !dbg !134
}

declare !dbg !135 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !140 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !184
  call void @llvm.dbg.assign(metadata i1 undef, metadata !146, metadata !DIExpression(), metadata !184, metadata ptr %4, metadata !DIExpression()), !dbg !185
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !186, metadata ptr %5, metadata !DIExpression()), !dbg !185
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !152, metadata !DIExpression(), metadata !187, metadata ptr %6, metadata !DIExpression()), !dbg !188
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !189, metadata ptr %7, metadata !DIExpression()), !dbg !188
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !178, metadata !DIExpression(), metadata !190, metadata ptr %8, metadata !DIExpression()), !dbg !191
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !192
  call void @llvm.dbg.assign(metadata i1 undef, metadata !179, metadata !DIExpression(), metadata !192, metadata ptr %9, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata double %0, metadata !142, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata double %1, metadata !143, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !144, metadata !DIExpression()), !dbg !194
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !195
  tail call void @llvm.dbg.value(metadata double %10, metadata !145, metadata !DIExpression()), !dbg !194
  %11 = fmul double %0, 1.000000e-01, !dbg !196
  %12 = fcmp ogt double %10, %11, !dbg !197
  br i1 %12, label %18, label %13, !dbg !198

13:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %0, metadata !199, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !205, metadata !DIExpression()), !dbg !206
  %14 = fcmp ogt double %0, 2.000000e+00, !dbg !208
  %15 = select i1 %14, double %0, double 2.000000e+00, !dbg !208
  %handler_result37 = call double @callHandler(i32 12, double %15, double %15), !dbg !209
  %16 = fmul double %10, %handler_result37, !dbg !209
  %17 = fcmp ogt double %16, 1.000000e-01, !dbg !210
  br i1 %17, label %18, label %56, !dbg !211

18:                                               ; preds = %13, %3
  %19 = fcmp olt double %0, 1.710000e+02, !dbg !212
  %handler_result = call double @fAddHandlerDouble(double %0, double %1)
  %20 = fcmp olt double %handler_result, 1.710000e+02
  %21 = and i1 %19, %20, !dbg !213
  br i1 %21, label %22, label %42, !dbg !213

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !214
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !215
  %23 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %4) #6, !dbg !216
  %24 = call i32 @gsl_sf_gammainv_e(double noundef %handler_result, ptr noundef nonnull %5) #6, !dbg !217
  %25 = load double, ptr %5, align 8, !dbg !218, !tbaa !116
  %26 = load double, ptr %4, align 8, !dbg !219, !tbaa !116
  %27 = fdiv double %25, %26, !dbg !220
  %handler_result38 = call double @callHandler(i32 12, double %27, double %27), !dbg !221
  %28 = fneg double %handler_result38, !dbg !221
  store double %28, ptr %2, align 8, !dbg !222, !tbaa !116
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !223
  %30 = load double, ptr %29, align 8, !dbg !223, !tbaa !121
  %31 = load double, ptr %4, align 8, !dbg !224, !tbaa !116
  %32 = call double @llvm.fabs.f64(double %31), !dbg !225
  %33 = fdiv double %30, %32, !dbg !226
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !227
  %35 = load double, ptr %34, align 8, !dbg !227, !tbaa !121
  %36 = load double, ptr %5, align 8, !dbg !228, !tbaa !116
  %37 = call double @llvm.fabs.f64(double %36), !dbg !229
  %38 = fdiv double %35, %37, !dbg !230
  %handler_result1 = call double @fAddHandlerDouble(double %33, double %38), !dbg !231
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !231
  %40 = call double @llvm.fabs.f64(double %28), !dbg !232
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !233
  %handler_result2 = call double @fAddHandlerDouble(double %41, double %handler_result1), !dbg !234
  store double %handler_result2, ptr %39, align 8, !dbg !234, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !235
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !235
  br label %145

42:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !236
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !237
  %43 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %6) #6, !dbg !238
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !155, metadata !DIExpression()), !dbg !188
  %44 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %7) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !156, metadata !DIExpression()), !dbg !188
  %45 = load double, ptr %7, align 8, !dbg !240, !tbaa !116
  %46 = load double, ptr %6, align 8, !dbg !241, !tbaa !116
  %handler_result3 = call double @fSubHandlerDouble(double %45, double %46), !dbg !242
  store double %handler_result3, ptr %2, align 8, !dbg !242, !tbaa !116
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !243
  %48 = load double, ptr %47, align 8, !dbg !243, !tbaa !121
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !244
  %50 = load double, ptr %49, align 8, !dbg !244, !tbaa !121
  %handler_result4 = call double @fAddHandlerDouble(double %48, double %50), !dbg !245
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !245
  %52 = call double @llvm.fabs.f64(double %handler_result3), !dbg !246
  %53 = fmul double %52, 0x3CC0000000000000, !dbg !247
  %handler_result5 = call double @fAddHandlerDouble(double %53, double %handler_result4), !dbg !248
  store double %handler_result5, ptr %51, align 8, !dbg !248, !tbaa !121
  %54 = icmp eq i32 %43, 0, !dbg !249
  %55 = select i1 %54, i32 %44, i32 %43, !dbg !249
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !250
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !250
  br label %145

56:                                               ; preds = %13
  %57 = fcmp olt double %10, %11, !dbg !251
  %58 = fcmp ogt double %0, 1.500000e+01
  %59 = and i1 %58, %57, !dbg !252
  br i1 %59, label %60, label %128, !dbg !252

60:                                               ; preds = %56
  %61 = fdiv double %1, %0, !dbg !253
  tail call void @llvm.dbg.value(metadata double %61, metadata !157, metadata !DIExpression()), !dbg !191
  %handler_result6 = call double @fAddHandlerDouble(double %61, double 1.000000e+00), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !160, metadata !DIExpression()), !dbg !191
  %62 = fmul double %handler_result6, %handler_result6, !dbg !254
  %63 = fmul double %handler_result6, %62, !dbg !255
  tail call void @llvm.dbg.value(metadata double %63, metadata !161, metadata !DIExpression()), !dbg !191
  %64 = fmul double %handler_result6, %63, !dbg !256
  %65 = fmul double %handler_result6, %64, !dbg !257
  tail call void @llvm.dbg.value(metadata double %65, metadata !162, metadata !DIExpression()), !dbg !191
  %66 = fmul double %handler_result6, %65, !dbg !258
  %67 = fmul double %handler_result6, %66, !dbg !259
  tail call void @llvm.dbg.value(metadata double %67, metadata !163, metadata !DIExpression()), !dbg !191
  %68 = fneg double %61, !dbg !260
  tail call void @llvm.dbg.value(metadata double poison, metadata !164, metadata !DIExpression()), !dbg !191
  %handler_result7 = call double @fAddHandlerDouble(double %61, double 3.000000e+00), !dbg !261
  %69 = fmul double %61, %handler_result7, !dbg !261
  %handler_result8 = call double @fAddHandlerDouble(double %69, double 3.000000e+00), !dbg !262
  %70 = fmul double %handler_result8, %68, !dbg !262
  %71 = fdiv double %70, %63, !dbg !263
  tail call void @llvm.dbg.value(metadata double %71, metadata !165, metadata !DIExpression()), !dbg !191
  %handler_result9 = call double @fAddHandlerDouble(double %61, double 5.000000e+00), !dbg !264
  %72 = fmul double %61, %handler_result9, !dbg !264
  %handler_result10 = call double @fAddHandlerDouble(double %72, double 1.000000e+01), !dbg !265
  %73 = fmul double %61, %handler_result10, !dbg !265
  %handler_result11 = call double @fAddHandlerDouble(double %73, double 1.000000e+01), !dbg !266
  %74 = fmul double %61, %handler_result11, !dbg !266
  %handler_result12 = call double @fAddHandlerDouble(double %74, double 5.000000e+00), !dbg !267
  %75 = fmul double %handler_result12, %68, !dbg !267
  %76 = fdiv double %75, %65, !dbg !268
  tail call void @llvm.dbg.value(metadata double %76, metadata !166, metadata !DIExpression()), !dbg !191
  %handler_result13 = call double @fAddHandlerDouble(double %61, double 7.000000e+00), !dbg !269
  %77 = fmul double %61, %handler_result13, !dbg !269
  %handler_result14 = call double @fAddHandlerDouble(double %77, double 2.100000e+01), !dbg !270
  %78 = fmul double %61, %handler_result14, !dbg !270
  %handler_result15 = call double @fAddHandlerDouble(double %78, double 3.500000e+01), !dbg !271
  %79 = fmul double %61, %handler_result15, !dbg !271
  %handler_result16 = call double @fAddHandlerDouble(double %79, double 3.500000e+01), !dbg !272
  %80 = fmul double %61, %handler_result16, !dbg !272
  %handler_result17 = call double @fAddHandlerDouble(double %80, double 2.100000e+01), !dbg !273
  %81 = fmul double %61, %handler_result17, !dbg !273
  %handler_result18 = call double @fAddHandlerDouble(double %81, double 7.000000e+00), !dbg !274
  %82 = fmul double %handler_result18, %68, !dbg !274
  %83 = fdiv double %82, %67, !dbg !275
  tail call void @llvm.dbg.value(metadata double %83, metadata !167, metadata !DIExpression()), !dbg !191
  %84 = tail call double @gsl_sf_pow_int(double noundef %handler_result6, i32 noundef 8) #6, !dbg !276
  tail call void @llvm.dbg.value(metadata double %84, metadata !168, metadata !DIExpression()), !dbg !191
  %85 = fdiv double 1.000000e+00, %84, !dbg !277
  %handler_result19 = call double @fAddHandlerDouble(double %85, double -1.000000e+00), !dbg !278
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !169, metadata !DIExpression()), !dbg !191
  %86 = fmul double %handler_result6, %84, !dbg !278
  %87 = fdiv double 1.000000e+00, %86, !dbg !279
  %handler_result20 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !280
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !170, metadata !DIExpression()), !dbg !191
  %88 = fmul double %0, %0, !dbg !280
  %89 = fmul double %88, %0, !dbg !281
  %90 = fmul double %89, %0, !dbg !282
  tail call void @llvm.dbg.value(metadata double %90, metadata !171, metadata !DIExpression()), !dbg !191
  %91 = fmul double %90, %0, !dbg !283
  %92 = fmul double %91, %0, !dbg !284
  tail call void @llvm.dbg.value(metadata double %92, metadata !172, metadata !DIExpression()), !dbg !191
  %93 = fmul double %0, 3.000000e+01, !dbg !285
  %94 = fmul double %93, %0, !dbg !286
  %95 = fdiv double %71, %94, !dbg !287
  %96 = fdiv double %61, %handler_result6, !dbg !288
  %handler_result21 = call double @fSubHandlerDouble(double %95, double %96), !dbg !289
  %97 = fmul double %90, 1.050000e+02, !dbg !289
  %98 = fdiv double %76, %97, !dbg !290
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %98), !dbg !291
  %99 = fmul double %92, 1.400000e+02, !dbg !291
  %100 = fdiv double %83, %99, !dbg !292
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %100), !dbg !293
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !173, metadata !DIExpression()), !dbg !191
  %101 = fmul double %92, 9.900000e+01, !dbg !293
  %102 = fmul double %101, %0, !dbg !294
  %103 = fmul double %102, %0, !dbg !295
  %104 = fdiv double %handler_result19, %103, !dbg !296
  %105 = fmul double %handler_result20, 0x3F5F6AB0D9993C7D, !dbg !297
  %106 = fmul double %90, %92, !dbg !298
  %107 = fdiv double %105, %106, !dbg !299
  %handler_result24 = call double @fSubHandlerDouble(double %104, double %107), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !174, metadata !DIExpression()), !dbg !191
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result24), !dbg !301
  %108 = fmul double %0, 1.200000e+01, !dbg !301
  %109 = fdiv double %handler_result25, %108, !dbg !302
  tail call void @llvm.dbg.value(metadata double %109, metadata !175, metadata !DIExpression()), !dbg !191
  %110 = fdiv double %0, 0x4005BF0A8B145769, !dbg !303
  %handler_result39 = call double @callHandler(i32 12, double %110, double %110), !dbg !304
  %111 = fmul double %handler_result39, %1, !dbg !304
  tail call void @llvm.dbg.value(metadata double %111, metadata !176, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !305
  %112 = call i32 @gsl_sf_log_1plusx_e(double noundef %61, ptr noundef nonnull %8) #6, !dbg !306
  %handler_result26 = call double @fAddHandlerDouble(double %0, double %1), !dbg !307
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double -5.000000e-01), !dbg !308
  %113 = load double, ptr %8, align 8, !dbg !308, !tbaa !116
  %114 = fmul double %handler_result27, %113, !dbg !309
  tail call void @llvm.dbg.value(metadata double %114, metadata !177, metadata !DIExpression()), !dbg !191
  %handler_result28 = call double @fAddHandlerDouble(double %111, double %114), !dbg !310
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %109), !dbg !311
  store double %handler_result29, ptr %2, align 8, !dbg !311, !tbaa !116
  %115 = call double @llvm.fabs.f64(double %111), !dbg !312
  %116 = fmul double %115, 0x3CB0000000000000, !dbg !313
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !314
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !315
  %119 = load double, ptr %118, align 8, !dbg !315, !tbaa !121
  %120 = fmul double %handler_result27, %119, !dbg !316
  %121 = call double @llvm.fabs.f64(double %120), !dbg !317
  %handler_result30 = call double @fAddHandlerDouble(double %116, double %121), !dbg !318
  %122 = call double @llvm.fabs.f64(double %113), !dbg !318
  %123 = fmul double %122, 0x3CB0000000000000, !dbg !319
  %124 = call double @llvm.fabs.f64(double %0), !dbg !320
  %handler_result31 = call double @fAddHandlerDouble(double %124, double %10), !dbg !321
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 5.000000e-01), !dbg !322
  %125 = fmul double %handler_result32, %123, !dbg !322
  %handler_result33 = call double @fAddHandlerDouble(double %125, double %handler_result30), !dbg !323
  %126 = call double @llvm.fabs.f64(double %handler_result29), !dbg !323
  %127 = fmul double %126, 0x3CC0000000000000, !dbg !324
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double %127), !dbg !325
  store double %handler_result34, ptr %117, align 8, !dbg !325, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !326
  br label %145

128:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !327
  %129 = call fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef nonnull %9), !dbg !328
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !181, metadata !DIExpression()), !dbg !193
  %130 = load double, ptr %9, align 8, !dbg !329, !tbaa !116
  %131 = fmul double %130, %1, !dbg !330
  tail call void @llvm.dbg.value(metadata double %131, metadata !182, metadata !DIExpression()), !dbg !193
  %132 = call i32 @gsl_sf_log_1plusx_e(double noundef %131, ptr noundef %2) #6, !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !183, metadata !DIExpression()), !dbg !193
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !332
  %134 = load double, ptr %133, align 8, !dbg !332, !tbaa !121
  %135 = fmul double %134, %1, !dbg !333
  %handler_result35 = call double @fAddHandlerDouble(double %131, double 1.000000e+00), !dbg !334
  %136 = fdiv double %135, %handler_result35, !dbg !334
  %137 = call double @llvm.fabs.f64(double %136), !dbg !335
  %138 = fmul double %137, 2.000000e+00, !dbg !336
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !337
  %140 = load double, ptr %2, align 8, !dbg !338, !tbaa !116
  %141 = call double @llvm.fabs.f64(double %140), !dbg !339
  %142 = fmul double %141, 0x3CC0000000000000, !dbg !340
  %handler_result36 = call double @fAddHandlerDouble(double %138, double %142), !dbg !341
  store double %handler_result36, ptr %139, align 8, !dbg !341, !tbaa !121
  %143 = icmp eq i32 %132, 0, !dbg !342
  %144 = select i1 %143, i32 %129, i32 %132, !dbg !342
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !343
  br label %145

145:                                              ; preds = %128, %60, %42, %22
  %146 = phi i32 [ 0, %22 ], [ %55, %42 ], [ 0, %60 ], [ %144, %128 ], !dbg !344
  ret i32 %146, !dbg !345
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !346 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !385, metadata ptr %5, metadata !DIExpression()), !dbg !386
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !387, metadata ptr %6, metadata !DIExpression()), !dbg !388
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !378, metadata !DIExpression(), metadata !389, metadata ptr %7, metadata !DIExpression()), !dbg !390
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !391, metadata ptr %8, metadata !DIExpression()), !dbg !390
  %9 = alloca double, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !381, metadata !DIExpression(), metadata !392, metadata ptr %9, metadata !DIExpression()), !dbg !390
  %10 = alloca double, align 8, !DIAssignID !393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !393, metadata ptr %10, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %0, metadata !351, metadata !DIExpression()), !dbg !394
  tail call void @llvm.dbg.value(metadata double %1, metadata !352, metadata !DIExpression()), !dbg !394
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !394
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !354, metadata !DIExpression()), !dbg !394
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !395
  br i1 %11, label %12, label %13, !dbg !396

12:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !397, !tbaa !399
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !400
  br label %111, !dbg !401

13:                                               ; preds = %4
  %14 = fcmp ogt double %0, 0.000000e+00, !dbg !402
  %handler_result = call double @fAddHandlerDouble(double %0, double %1)
  %15 = fcmp ogt double %handler_result, 0.000000e+00
  %16 = and i1 %14, %15, !dbg !403
  br i1 %16, label %17, label %19, !dbg !403

17:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !404, !tbaa !399
  %18 = tail call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef %2), !dbg !406
  br label %111, !dbg !407

19:                                               ; preds = %13
  %20 = fcmp ole double %0, 0.000000e+00, !dbg !408
  %21 = tail call double @llvm.floor.f64(double %0)
  %22 = fcmp oeq double %21, %0
  %23 = and i1 %20, %22, !dbg !409
  br i1 %23, label %24, label %52, !dbg !409

24:                                               ; preds = %19
  %25 = fcmp olt double %handler_result, 0.000000e+00, !dbg !410
  %26 = tail call double @llvm.floor.f64(double %1)
  %27 = fcmp oeq double %26, %1
  %28 = and i1 %25, %27, !dbg !411
  br i1 %28, label %29, label %41, !dbg !411

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !412
  %30 = fneg double %0, !dbg !413
  %31 = fneg double %1, !dbg !414
  %32 = call fastcc i32 @lnpoch_pos(double noundef %30, double noundef %31, ptr noundef nonnull %5), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !362, metadata !DIExpression()), !dbg !386
  %33 = fdiv double %0, %handler_result, !dbg !416
  %handler_result13 = call double @callHandler(i32 12, double %33, double %33), !dbg !417
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !363, metadata !DIExpression()), !dbg !386
  %handler_result14 = call double @callHandler(i32 30, double %1, double 2.000000e+00), !dbg !418
  %34 = fcmp oeq double %handler_result14, 0.000000e+00, !dbg !418
  %35 = select i1 %34, double 1.000000e+00, double -1.000000e+00, !dbg !419
  tail call void @llvm.dbg.value(metadata double %35, metadata !364, metadata !DIExpression()), !dbg !386
  %36 = load double, ptr %5, align 8, !dbg !420, !tbaa !116
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result13, double %36), !dbg !421
  store double %handler_result1, ptr %2, align 8, !dbg !421, !tbaa !116
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !422
  %38 = load double, ptr %37, align 8, !dbg !422, !tbaa !121
  %39 = fmul double %handler_result13, 0x3CC0000000000000, !dbg !423
  %handler_result2 = call double @fAddHandlerDouble(double %39, double %38), !dbg !424
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !424
  store double %handler_result2, ptr %40, align 8, !dbg !425, !tbaa !121
  store double %35, ptr %3, align 8, !dbg !426, !tbaa !399
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !427
  br label %111

41:                                               ; preds = %24
  %42 = fcmp oeq double %handler_result, 0.000000e+00, !dbg !428
  br i1 %42, label %43, label %50, !dbg !429

43:                                               ; preds = %41
  %44 = fneg double %0, !dbg !430
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !431
  %45 = tail call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result3, ptr noundef %2, ptr noundef %3) #6, !dbg !431
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !365, metadata !DIExpression()), !dbg !432
  %handler_result15 = call double @callHandler(i32 30, double %44, double 2.000000e+00), !dbg !433
  %46 = fcmp oeq double %handler_result15, 0.000000e+00, !dbg !433
  tail call void @llvm.dbg.value(metadata double poison, metadata !368, metadata !DIExpression()), !dbg !432
  %47 = load double, ptr %3, align 8, !dbg !434, !tbaa !399
  %48 = fneg double %47, !dbg !434
  %49 = select i1 %46, double %47, double %48, !dbg !434
  store double %49, ptr %3, align 8, !dbg !434, !tbaa !399
  br label %111

50:                                               ; preds = %41
  store double 0xFFF0000000000000, ptr %2, align 8, !dbg !435, !tbaa !116
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !437
  store double 0.000000e+00, ptr %51, align 8, !dbg !438, !tbaa !121
  store double 1.000000e+00, ptr %3, align 8, !dbg !439, !tbaa !399
  br label %111, !dbg !440

52:                                               ; preds = %19
  %53 = fcmp olt double %0, 0.000000e+00, !dbg !441
  %54 = fcmp olt double %handler_result, 0.000000e+00
  %55 = and i1 %53, %54, !dbg !442
  br i1 %55, label %56, label %83, !dbg !442

56:                                               ; preds = %52
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !443
  %57 = fmul double %handler_result4, 0x400921FB54442D18, !dbg !443
  %handler_result16 = call double @callHandler(i32 1, double %57, double %57), !dbg !444
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !369, metadata !DIExpression()), !dbg !445
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %1), !dbg !444
  %58 = fmul double %handler_result5, 0x400921FB54442D18, !dbg !444
  %handler_result17 = call double @callHandler(i32 1, double %58, double %58), !dbg !446
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !372, metadata !DIExpression()), !dbg !445
  %59 = fcmp oeq double %handler_result16, 0.000000e+00, !dbg !446
  %60 = fcmp oeq double %handler_result17, 0.000000e+00
  %61 = select i1 %59, i1 true, i1 %60, !dbg !447
  br i1 %61, label %62, label %64, !dbg !447

62:                                               ; preds = %56
  store double 0.000000e+00, ptr %3, align 8, !dbg !448, !tbaa !399
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !450, !tbaa !116
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !450
  store double 0x7FF8000000000000, ptr %63, align 8, !dbg !450, !tbaa !121
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 349, i32 noundef 1) #6, !dbg !452
  br label %111, !dbg !452

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !454
  %65 = fneg double %1, !dbg !455
  %66 = call fastcc i32 @lnpoch_pos(double noundef %handler_result4, double noundef %65, ptr noundef nonnull %6), !dbg !456
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !376, metadata !DIExpression()), !dbg !388
  %67 = fdiv double %handler_result16, %handler_result17, !dbg !457
  %68 = call double @llvm.fabs.f64(double %67), !dbg !458
  %handler_result18 = call double @callHandler(i32 12, double %68, double %68), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !377, metadata !DIExpression()), !dbg !388
  %69 = load double, ptr %6, align 8, !dbg !459, !tbaa !116
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result18, double %69), !dbg !460
  store double %handler_result6, ptr %2, align 8, !dbg !460, !tbaa !116
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !461
  %71 = load double, ptr %70, align 8, !dbg !461, !tbaa !121
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !462
  %73 = call double @llvm.fabs.f64(double %handler_result4), !dbg !463
  %74 = call double @llvm.fabs.f64(double %handler_result5), !dbg !464
  %handler_result7 = call double @fAddHandlerDouble(double %73, double %74), !dbg !465
  %75 = fmul double %handler_result7, 0x3CC0000000000000, !dbg !465
  %76 = call double @llvm.fabs.f64(double %handler_result18), !dbg !466
  %77 = fmul double %75, %76, !dbg !467
  %handler_result8 = call double @fAddHandlerDouble(double %77, double %71), !dbg !468
  %78 = call double @llvm.fabs.f64(double %handler_result6), !dbg !468
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !469
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %79), !dbg !470
  store double %handler_result9, ptr %72, align 8, !dbg !470, !tbaa !121
  %80 = fmul double %handler_result16, %handler_result17, !dbg !471
  %81 = fcmp oge double %80, 0.000000e+00, !dbg !471
  %82 = select i1 %81, double 1.000000e+00, double -1.000000e+00, !dbg !471
  store double %82, ptr %3, align 8, !dbg !472, !tbaa !399
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !473
  br label %111

83:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !474
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6, !dbg !476
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6, !dbg !476
  %84 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result, ptr noundef nonnull %7, ptr noundef nonnull %9) #6, !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !383, metadata !DIExpression()), !dbg !390
  %85 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %10) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !384, metadata !DIExpression()), !dbg !390
  %86 = icmp eq i32 %84, 0, !dbg !479
  %87 = icmp eq i32 %85, 0
  %88 = select i1 %86, i1 %87, i1 false, !dbg !481
  br i1 %88, label %89, label %102, !dbg !481

89:                                               ; preds = %83
  %90 = load double, ptr %7, align 8, !dbg !482, !tbaa !116
  %91 = load double, ptr %8, align 8, !dbg !484, !tbaa !116
  %handler_result10 = call double @fSubHandlerDouble(double %90, double %91), !dbg !485
  store double %handler_result10, ptr %2, align 8, !dbg !485, !tbaa !116
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !486
  %93 = load double, ptr %92, align 8, !dbg !486, !tbaa !121
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !487
  %95 = load double, ptr %94, align 8, !dbg !487, !tbaa !121
  %handler_result11 = call double @fAddHandlerDouble(double %93, double %95), !dbg !488
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !488
  %97 = call double @llvm.fabs.f64(double %handler_result10), !dbg !489
  %98 = fmul double %97, 0x3CC0000000000000, !dbg !490
  %handler_result12 = call double @fAddHandlerDouble(double %98, double %handler_result11), !dbg !491
  store double %handler_result12, ptr %96, align 8, !dbg !491, !tbaa !121
  %99 = load double, ptr %10, align 8, !dbg !492, !tbaa !399
  %100 = load double, ptr %9, align 8, !dbg !493, !tbaa !399
  %101 = fmul double %99, %100, !dbg !494
  store double %101, ptr %3, align 8, !dbg !495, !tbaa !399
  br label %109, !dbg !496

102:                                              ; preds = %83
  %103 = icmp eq i32 %84, 1, !dbg !497
  %104 = icmp eq i32 %85, 1
  %105 = select i1 %103, i1 true, i1 %104, !dbg !499
  br i1 %105, label %106, label %108, !dbg !499

106:                                              ; preds = %102
  store double 0.000000e+00, ptr %3, align 8, !dbg !500, !tbaa !399
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !502, !tbaa !116
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !502
  store double 0x7FF8000000000000, ptr %107, align 8, !dbg !502, !tbaa !121
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 380, i32 noundef 1) #6, !dbg !504
  br label %109, !dbg !504

108:                                              ; preds = %102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !506
  store double 0.000000e+00, ptr %3, align 8, !dbg !508, !tbaa !399
  br label %109, !dbg !509

109:                                              ; preds = %108, %106, %89
  %110 = phi i32 [ 0, %89 ], [ 1, %106 ], [ -1, %108 ], !dbg !510
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6, !dbg !511
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !511
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !511
  br label %111

111:                                              ; preds = %109, %64, %62, %50, %43, %29, %17, %12
  %112 = phi i32 [ 0, %12 ], [ %18, %17 ], [ %32, %29 ], [ %45, %43 ], [ 0, %50 ], [ %110, %109 ], [ 1, %62 ], [ %66, %64 ], !dbg !512
  ret i32 %112, !dbg !513
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !514 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !518 double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !519 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !523 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_poch_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !524 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !529, metadata !DIExpression(), metadata !537, metadata ptr %4, metadata !DIExpression()), !dbg !538
  %5 = alloca double, align 8, !DIAssignID !539
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !539, metadata ptr %5, metadata !DIExpression()), !dbg !538
  tail call void @llvm.dbg.value(metadata double %0, metadata !526, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata double %1, metadata !527, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !528, metadata !DIExpression()), !dbg !540
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !541
  br i1 %6, label %7, label %9, !dbg !542

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !543, !tbaa !116
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !545
  store double 0.000000e+00, ptr %8, align 8, !dbg !546, !tbaa !121
  br label %29, !dbg !547

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !549
  %10 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !533, metadata !DIExpression()), !dbg !538
  %11 = load double, ptr %4, align 8, !dbg !551, !tbaa !116
  %12 = fcmp oeq double %11, 0xFFF0000000000000, !dbg !552
  br i1 %12, label %13, label %14, !dbg !553

13:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !554
  br label %27, !dbg !556

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !557
  %16 = load double, ptr %15, align 8, !dbg !557, !tbaa !121
  %17 = call i32 @gsl_sf_exp_err_e(double noundef %11, double noundef %16, ptr noundef %2) #6, !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !534, metadata !DIExpression()), !dbg !559
  %18 = load double, ptr %5, align 8, !dbg !560, !tbaa !399
  %19 = load double, ptr %2, align 8, !dbg !561, !tbaa !116
  %20 = fmul double %18, %19, !dbg !561
  store double %20, ptr %2, align 8, !dbg !561, !tbaa !116
  %21 = call double @llvm.fabs.f64(double %20), !dbg !562
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !563
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !564
  %24 = load double, ptr %23, align 8, !dbg !565, !tbaa !121
  %handler_result = call double @fAddHandlerDouble(double %24, double %22), !dbg !565
  store double %handler_result, ptr %23, align 8, !dbg !565, !tbaa !121
  %25 = icmp eq i32 %17, 0, !dbg !566
  %26 = select i1 %25, i32 %10, i32 %17, !dbg !566
  br label %27

27:                                               ; preds = %14, %13
  %28 = phi i32 [ %10, %13 ], [ %26, %14 ], !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !568
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !568
  br label %29

29:                                               ; preds = %27, %7
  %30 = phi i32 [ 0, %7 ], [ %28, %27 ], !dbg !569
  ret i32 %30, !dbg !570
}

declare !dbg !571 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_pochrel_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !573 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !588
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !588, metadata ptr %4, metadata !DIExpression()), !dbg !589
  %5 = alloca double, align 8, !DIAssignID !590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !583, metadata !DIExpression(), metadata !590, metadata ptr %5, metadata !DIExpression()), !dbg !589
  tail call void @llvm.dbg.value(metadata double %0, metadata !575, metadata !DIExpression()), !dbg !591
  tail call void @llvm.dbg.value(metadata double %1, metadata !576, metadata !DIExpression()), !dbg !591
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !577, metadata !DIExpression()), !dbg !591
  %6 = tail call double @llvm.fabs.f64(double %1), !dbg !592
  tail call void @llvm.dbg.value(metadata double %6, metadata !578, metadata !DIExpression()), !dbg !591
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !593
  tail call void @llvm.dbg.value(metadata double %7, metadata !579, metadata !DIExpression()), !dbg !591
  %8 = fmul double %7, 1.000000e-01, !dbg !594
  %9 = fcmp ogt double %6, %8, !dbg !595
  br i1 %9, label %15, label %10, !dbg !596

10:                                               ; preds = %3
  %11 = fcmp ogt double %7, 2.000000e+00, !dbg !597
  %12 = select i1 %11, double %7, double 2.000000e+00, !dbg !597
  %handler_result4 = call double @callHandler(i32 12, double %12, double %12), !dbg !598
  %13 = fmul double %6, %handler_result4, !dbg !598
  %14 = fcmp ogt double %13, 1.000000e-01, !dbg !599
  br i1 %14, label %15, label %36, !dbg !600

15:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !601
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !602
  %16 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !584, metadata !DIExpression()), !dbg !589
  %17 = load double, ptr %4, align 8, !dbg !604, !tbaa !116
  %18 = fcmp ogt double %17, 0x40862E42FEFA39EF, !dbg !605
  br i1 %18, label %19, label %21, !dbg !606

19:                                               ; preds = %15
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !607, !tbaa !116
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !607
  store double 0x7FF0000000000000, ptr %20, align 8, !dbg !607, !tbaa !121
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 432, i32 noundef 16) #6, !dbg !610
  br label %34, !dbg !610

21:                                               ; preds = %15
  %22 = call double @exp(double noundef %17) #6, !dbg !612
  tail call void @llvm.dbg.value(metadata double %22, metadata !585, metadata !DIExpression()), !dbg !613
  %23 = load double, ptr %5, align 8, !dbg !614, !tbaa !399
  %24 = fmul double %22, %23, !dbg !615
  %handler_result = call double @fAddHandlerDouble(double %24, double -1.000000e+00), !dbg !616
  %25 = fdiv double %handler_result, %1, !dbg !616
  store double %25, ptr %2, align 8, !dbg !617, !tbaa !116
  %26 = call double @llvm.fabs.f64(double %25), !dbg !618
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !619
  %28 = load double, ptr %27, align 8, !dbg !619, !tbaa !121
  %handler_result1 = call double @fAddHandlerDouble(double %28, double 0x3CC0000000000000), !dbg !620
  %29 = fmul double %handler_result1, %26, !dbg !620
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !621
  %31 = call double @llvm.fabs.f64(double %24), !dbg !622
  %handler_result2 = call double @fAddHandlerDouble(double %31, double 1.000000e+00), !dbg !623
  %32 = fmul double %handler_result2, 0x3CC0000000000000, !dbg !623
  %33 = fdiv double %32, %6, !dbg !624
  %handler_result3 = call double @fAddHandlerDouble(double %29, double %33), !dbg !625
  store double %handler_result3, ptr %30, align 8, !dbg !625, !tbaa !121
  br label %34

34:                                               ; preds = %21, %19
  %35 = phi i32 [ 16, %19 ], [ %16, %21 ], !dbg !626
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !627
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !627
  br label %38

36:                                               ; preds = %10
  %37 = tail call fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef %2), !dbg !628
  br label %38, !dbg !630

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ], !dbg !631
  ret i32 %39, !dbg !632
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !633 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !634 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !648, metadata !DIExpression(), metadata !682, metadata ptr %4, metadata !DIExpression()), !dbg !683
  %5 = alloca [24 x double], align 16, !DIAssignID !684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !661, metadata !DIExpression(), metadata !684, metadata ptr %5, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double %0, metadata !636, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %1, metadata !637, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double 0x5FBA20BD700C2C3D, metadata !639, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double 0xC0425E4F7B2737FA, metadata !640, metadata !DIExpression()), !dbg !686
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !687
  br i1 %6, label %7, label %9, !dbg !688

7:                                                ; preds = %3
  %8 = tail call i32 @gsl_sf_psi_e(double noundef %0, ptr noundef %2) #6, !dbg !689
  br label %173, !dbg !691

9:                                                ; preds = %3
  %10 = fcmp olt double %0, -5.000000e-01, !dbg !692
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !693
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !693
  %11 = select i1 %10, double %handler_result1, double %0, !dbg !693
  tail call void @llvm.dbg.value(metadata double %11, metadata !641, metadata !DIExpression()), !dbg !683
  %12 = fcmp olt double %11, 1.000000e+01, !dbg !694
  %handler_result2 = call double @fSubHandlerDouble(double 1.100000e+01, double %11), !dbg !695
  %13 = select i1 %12, double %handler_result2, double 0.000000e+00, !dbg !695
  %14 = fptosi double %13 to i32, !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !644, metadata !DIExpression()), !dbg !683
  %15 = sitofp i32 %14 to double, !dbg !697
  %handler_result3 = call double @fAddHandlerDouble(double %11, double %15), !dbg !698
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !646, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !698
  %handler_result4 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !699
  %16 = fmul double %handler_result4, 5.000000e-01, !dbg !699
  %handler_result5 = call double @fAddHandlerDouble(double %16, double %handler_result3), !dbg !700
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !651, metadata !DIExpression()), !dbg !683
  %handler_result33 = call double @callHandler(i32 12, double %handler_result5, double %handler_result5), !dbg !701
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !652, metadata !DIExpression()), !dbg !683
  %17 = fmul double %handler_result33, %1, !dbg !701
  tail call void @llvm.dbg.value(metadata double %17, metadata !653, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !654, metadata !DIExpression()), !dbg !683
  %18 = fcmp olt double %handler_result5, 0x5FBA20BD700C2C3D, !dbg !702
  br i1 %18, label %19, label %100, !dbg !703

19:                                               ; preds = %9
  %20 = fdiv double 0x40325E4F7B2737FA, %handler_result33, !dbg !704
  %handler_result6 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !705
  %21 = fptosi double %handler_result6 to i32, !dbg !705
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !655, metadata !DIExpression()), !dbg !685
  %22 = fdiv double 1.000000e+00, %handler_result5, !dbg !706
  %23 = fdiv double %22, %handler_result5, !dbg !707
  tail call void @llvm.dbg.value(metadata double %23, metadata !658, metadata !DIExpression()), !dbg !685
  %handler_result7 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !708
  tail call void @llvm.dbg.value(metadata double poison, metadata !659, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double %23, metadata !660, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #6, !dbg !708
  %24 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 1, !dbg !709
  store double 1.000000e+00, ptr %24, align 8, !dbg !710, !tbaa !399, !DIAssignID !711
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !711, metadata ptr %24, metadata !DIExpression()), !dbg !685
  %25 = fmul double %handler_result7, -5.000000e-01, !dbg !712
  %26 = fdiv double %25, 1.200000e+01, !dbg !713
  %27 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 2, !dbg !714
  store double %26, ptr %27, align 16, !dbg !715, !tbaa !399, !DIAssignID !716
  call void @llvm.dbg.assign(metadata double %26, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !716, metadata ptr %27, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double poison, metadata !654, metadata !DIExpression()), !dbg !683
  %28 = icmp slt i32 %21, 21, !dbg !717
  br i1 %28, label %29, label %35, !dbg !719

29:                                               ; preds = %19
  %30 = fmul double %26, %23, !dbg !720
  tail call void @llvm.dbg.value(metadata double %30, metadata !654, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %30, metadata !654, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %23, metadata !660, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata i32 2, metadata !665, metadata !DIExpression()), !dbg !685
  %31 = icmp slt i32 %21, 2, !dbg !721
  br i1 %31, label %98, label %32, !dbg !722

32:                                               ; preds = %29
  %33 = add nuw nsw i32 %21, 1, !dbg !722
  %34 = zext nneg i32 %33 to i64, !dbg !721
  br label %36, !dbg !722

35:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !723
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 7) #6, !dbg !725
  tail call void @llvm.dbg.value(metadata double poison, metadata !654, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #6, !dbg !727
  br label %171

36:                                               ; preds = %78, %32
  %37 = phi i64 [ 0, %32 ], [ %97, %78 ]
  %38 = phi i64 [ 2, %32 ], [ %41, %78 ]
  %39 = phi double [ %30, %32 ], [ %handler_result13, %78 ]
  %40 = phi double [ %23, %32 ], [ %94, %78 ]
  tail call void @llvm.dbg.value(metadata double %39, metadata !654, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %40, metadata !660, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !665, metadata !DIExpression()), !dbg !685
  %41 = add nuw nsw i64 %38, 1, !dbg !728
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !667, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata i32 1, metadata !666, metadata !DIExpression()), !dbg !685
  %42 = and i64 %37, 1, !dbg !730
  %43 = icmp eq i64 %37, -1, !dbg !730
  br i1 %43, label %66, label %44, !dbg !730

44:                                               ; preds = %36
  %45 = and i64 %37, -2, !dbg !730
  br label %46, !dbg !730

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 1, %44 ], [ %63, %46 ]
  %48 = phi double [ 0.000000e+00, %44 ], [ %handler_result9, %46 ]
  %49 = phi i64 [ 0, %44 ], [ %64, %46 ]
  tail call void @llvm.dbg.value(metadata double %48, metadata !667, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !666, metadata !DIExpression()), !dbg !685
  %50 = sub nsw i64 %41, %47, !dbg !732
  %51 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %50, !dbg !735
  %52 = load double, ptr %51, align 8, !dbg !735, !tbaa !399
  %53 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %47, !dbg !736
  %54 = load double, ptr %53, align 8, !dbg !736, !tbaa !399
  %55 = fmul double %52, %54, !dbg !737
  %handler_result8 = call double @fAddHandlerDouble(double %48, double %55), !dbg !738
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !667, metadata !DIExpression()), !dbg !729
  %56 = add nuw nsw i64 %47, 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !666, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !667, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !666, metadata !DIExpression()), !dbg !685
  %57 = sub nsw i64 %38, %47, !dbg !732
  %58 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %57, !dbg !735
  %59 = load double, ptr %58, align 8, !dbg !735, !tbaa !399
  %60 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %56, !dbg !736
  %61 = load double, ptr %60, align 8, !dbg !736, !tbaa !399
  %62 = fmul double %59, %61, !dbg !737
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %62), !dbg !738
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !667, metadata !DIExpression()), !dbg !729
  %63 = add nuw nsw i64 %47, 2, !dbg !738
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !666, metadata !DIExpression()), !dbg !685
  %64 = add i64 %49, 2, !dbg !730
  %65 = icmp eq i64 %49, %45, !dbg !730
  br i1 %65, label %66, label %46, !dbg !730, !llvm.loop !739

66:                                               ; preds = %46, %36
  %67 = phi double [ undef, %36 ], [ %handler_result9, %46 ]
  %68 = phi i64 [ 1, %36 ], [ %63, %46 ]
  %69 = phi double [ 0.000000e+00, %36 ], [ %handler_result9, %46 ]
  %70 = icmp eq i64 %42, 0, !dbg !730
  br i1 %70, label %78, label %71, !dbg !730

71:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata double %69, metadata !667, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !666, metadata !DIExpression()), !dbg !685
  %72 = sub nsw i64 %41, %68, !dbg !732
  %73 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %72, !dbg !735
  %74 = load double, ptr %73, align 8, !dbg !735, !tbaa !399
  %75 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %68, !dbg !736
  %76 = load double, ptr %75, align 8, !dbg !736, !tbaa !399
  %77 = fmul double %74, %76, !dbg !737
  %handler_result10 = call double @fAddHandlerDouble(double %69, double %77), !dbg !742
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !667, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !666, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !685
  br label %78, !dbg !742

78:                                               ; preds = %71, %66
  %79 = phi double [ %67, %66 ], [ %handler_result10, %71 ], !dbg !743
  %80 = fmul double %25, %79, !dbg !742
  %81 = trunc i64 %38 to i32, !dbg !744
  %82 = sitofp i32 %81 to double, !dbg !744
  %83 = fdiv double %80, %82, !dbg !745
  %84 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %41, !dbg !746
  store double %83, ptr %84, align 8, !dbg !747, !tbaa !399
  %85 = shl nuw nsw i64 %38, 1, !dbg !748
  %86 = trunc i64 %85 to i32, !dbg !749
  %87 = add i32 %86, -2, !dbg !749
  %88 = sitofp i32 %87 to double, !dbg !749
  %handler_result11 = call double @fSubHandlerDouble(double %88, double %1), !dbg !750
  %89 = trunc i64 %85 to i32, !dbg !750
  %90 = add i32 %89, -1, !dbg !750
  %91 = sitofp i32 %90 to double, !dbg !750
  %handler_result12 = call double @fSubHandlerDouble(double %91, double %1), !dbg !751
  %92 = fmul double %handler_result11, %handler_result12, !dbg !751
  %93 = fmul double %23, %92, !dbg !752
  %94 = fmul double %40, %93, !dbg !753
  tail call void @llvm.dbg.value(metadata double %94, metadata !660, metadata !DIExpression()), !dbg !685
  %95 = fmul double %94, %83, !dbg !754
  %handler_result13 = call double @fAddHandlerDouble(double %39, double %95), !dbg !721
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !654, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !665, metadata !DIExpression()), !dbg !685
  %96 = icmp eq i64 %41, %34, !dbg !721
  %97 = add i64 %37, 1, !dbg !722
  br i1 %96, label %98, label %36, !dbg !722, !llvm.loop !755

98:                                               ; preds = %78, %29
  %99 = phi double [ %30, %29 ], [ %handler_result13, %78 ], !dbg !685
  tail call void @llvm.dbg.value(metadata double %99, metadata !654, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #6, !dbg !727
  br label %100

100:                                              ; preds = %98, %9
  %101 = phi double [ %99, %98 ], [ 0.000000e+00, %9 ], !dbg !683
  tail call void @llvm.dbg.value(metadata double %101, metadata !654, metadata !DIExpression()), !dbg !683
  %102 = call i32 @gsl_sf_expm1_e(double noundef %17, ptr noundef nonnull %4) #6, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !649, metadata !DIExpression()), !dbg !683
  %103 = icmp eq i32 %102, 0, !dbg !758
  br i1 %103, label %105, label %104, !dbg !760

104:                                              ; preds = %100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !761
  br label %171, !dbg !763

105:                                              ; preds = %100
  %106 = load double, ptr %4, align 8, !dbg !764, !tbaa !116
  %107 = fdiv double %106, %17, !dbg !765
  call void @llvm.dbg.assign(metadata double %107, metadata !648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !766, metadata ptr %4, metadata !DIExpression()), !dbg !683
  %108 = fmul double %handler_result4, %101, !dbg !767
  tail call void @llvm.dbg.value(metadata double %108, metadata !654, metadata !DIExpression()), !dbg !683
  %109 = fmul double %17, %108, !dbg !768
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result33, double %109), !dbg !769
  %110 = fmul double %handler_result14, %107, !dbg !769
  %handler_result15 = call double @fAddHandlerDouble(double %108, double %110), !dbg !770
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  %111 = icmp sgt i32 %14, 0, !dbg !770
  br i1 %111, label %112, label %140, !dbg !771

112:                                              ; preds = %105
  %113 = and i32 %14, 1, !dbg !771
  %114 = icmp eq i32 %113, 0, !dbg !771
  br i1 %114, label %121, label %115, !dbg !771

115:                                              ; preds = %112
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  %116 = add nsw i32 %14, -1, !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !650, metadata !DIExpression()), !dbg !683
  %117 = sitofp i32 %116 to double, !dbg !773
  %handler_result16 = call double @fAddHandlerDouble(double %11, double %117), !dbg !774
  %118 = fdiv double 1.000000e+00, %handler_result16, !dbg !774
  tail call void @llvm.dbg.value(metadata double %118, metadata !671, metadata !DIExpression()), !dbg !775
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result15, double %118), !dbg !776
  %119 = fmul double %118, %1, !dbg !776
  %handler_result18 = call double @fAddHandlerDouble(double %119, double 1.000000e+00), !dbg !777
  %120 = fdiv double %handler_result17, %handler_result18, !dbg !777
  tail call void @llvm.dbg.value(metadata double %120, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  br label %121, !dbg !771

121:                                              ; preds = %115, %112
  %122 = phi double [ %handler_result15, %112 ], [ %120, %115 ]
  %123 = phi i32 [ %14, %112 ], [ %116, %115 ]
  %124 = phi double [ undef, %112 ], [ %120, %115 ]
  %125 = icmp eq i32 %14, 1, !dbg !771
  br i1 %125, label %140, label %126, !dbg !771

126:                                              ; preds = %126, %121
  %127 = phi double [ %138, %126 ], [ %122, %121 ]
  %128 = phi i32 [ %134, %126 ], [ %123, %121 ]
  tail call void @llvm.dbg.value(metadata double %127, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  %129 = add nsw i32 %128, -1, !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !650, metadata !DIExpression()), !dbg !683
  %130 = sitofp i32 %129 to double, !dbg !773
  %handler_result19 = call double @fAddHandlerDouble(double %11, double %130), !dbg !774
  %131 = fdiv double 1.000000e+00, %handler_result19, !dbg !774
  tail call void @llvm.dbg.value(metadata double %131, metadata !671, metadata !DIExpression()), !dbg !775
  %handler_result20 = call double @fSubHandlerDouble(double %127, double %131), !dbg !776
  %132 = fmul double %131, %1, !dbg !776
  %handler_result21 = call double @fAddHandlerDouble(double %132, double 1.000000e+00), !dbg !777
  %133 = fdiv double %handler_result20, %handler_result21, !dbg !777
  tail call void @llvm.dbg.value(metadata double %133, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  tail call void @llvm.dbg.value(metadata double %133, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  %134 = add nsw i32 %128, -2, !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !650, metadata !DIExpression()), !dbg !683
  %135 = sitofp i32 %134 to double, !dbg !773
  %handler_result22 = call double @fAddHandlerDouble(double %11, double %135), !dbg !774
  %136 = fdiv double 1.000000e+00, %handler_result22, !dbg !774
  tail call void @llvm.dbg.value(metadata double %136, metadata !671, metadata !DIExpression()), !dbg !775
  %handler_result23 = call double @fSubHandlerDouble(double %133, double %136), !dbg !776
  %137 = fmul double %136, %1, !dbg !776
  %handler_result24 = call double @fAddHandlerDouble(double %137, double 1.000000e+00), !dbg !777
  %138 = fdiv double %handler_result23, %handler_result24, !dbg !777
  tail call void @llvm.dbg.value(metadata double %138, metadata !647, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !683
  %139 = icmp ugt i32 %129, 1, !dbg !770
  br i1 %139, label %126, label %140, !dbg !771, !llvm.loop !778

140:                                              ; preds = %126, %121, %105
  %141 = phi double [ %handler_result15, %105 ], [ %124, %121 ], [ %138, %126 ], !dbg !683
  %142 = fcmp oeq double %11, %0, !dbg !780
  br i1 %142, label %143, label %149, !dbg !781

143:                                              ; preds = %140
  store double %141, ptr %2, align 8, !dbg !782, !tbaa !116
  %144 = call double @llvm.fabs.f64(double %15), !dbg !784
  %handler_result25 = call double @fAddHandlerDouble(double %144, double 1.000000e+00), !dbg !785
  %145 = fmul double %handler_result25, 0x3CC0000000000000, !dbg !785
  %146 = call double @llvm.fabs.f64(double %141), !dbg !786
  %147 = fmul double %145, %146, !dbg !787
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !788
  store double %147, ptr %148, align 8, !dbg !789, !tbaa !121
  br label %171, !dbg !790

149:                                              ; preds = %140
  %150 = fmul double %1, 0x400921FB54442D18, !dbg !791
  %handler_result34 = call double @callHandler(i32 1, double %150, double %150), !dbg !792
  %151 = fdiv double %handler_result34, %1, !dbg !792
  tail call void @llvm.dbg.value(metadata double %151, metadata !675, metadata !DIExpression()), !dbg !793
  %152 = fmul double %1, 0x3FF921FB54442D18, !dbg !794
  %handler_result35 = call double @callHandler(i32 1, double %152, double %152), !dbg !795
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !678, metadata !DIExpression()), !dbg !793
  %153 = fmul double %handler_result3, 0x400921FB54442D18, !dbg !795
  %handler_result36 = call double @callHandler(i32 3, double %153, double %153), !dbg !796
  %154 = fdiv double %151, %handler_result36, !dbg !796
  tail call void @llvm.dbg.value(metadata double %154, metadata !679, metadata !DIExpression()), !dbg !793
  %155 = fmul double %handler_result35, 2.000000e+00, !dbg !797
  %156 = fdiv double %handler_result35, %1, !dbg !798
  %157 = fmul double %155, %156, !dbg !799
  tail call void @llvm.dbg.value(metadata double %157, metadata !680, metadata !DIExpression()), !dbg !793
  %handler_result26 = call double @fSubHandlerDouble(double %154, double %157), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !681, metadata !DIExpression()), !dbg !793
  %158 = fmul double %handler_result26, %1, !dbg !800
  %handler_result27 = call double @fAddHandlerDouble(double %158, double 1.000000e+00), !dbg !801
  %159 = fmul double %141, %handler_result27, !dbg !801
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result26, double %159), !dbg !802
  store double %handler_result28, ptr %2, align 8, !dbg !802, !tbaa !116
  %160 = fmul double %141, %1, !dbg !803
  %161 = call double @llvm.fabs.f64(double %160), !dbg !804
  %handler_result29 = call double @fAddHandlerDouble(double %161, double 1.000000e+00), !dbg !805
  %162 = fmul double %handler_result29, 0x3CB0000000000000, !dbg !805
  %163 = call double @llvm.fabs.f64(double %154), !dbg !806
  %164 = call double @llvm.fabs.f64(double %157), !dbg !807
  %handler_result30 = call double @fAddHandlerDouble(double %163, double %164), !dbg !808
  %165 = fmul double %162, %handler_result30, !dbg !808
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !809
  %167 = call double @llvm.fabs.f64(double %15), !dbg !810
  %handler_result31 = call double @fAddHandlerDouble(double %167, double 1.000000e+00), !dbg !811
  %168 = fmul double %handler_result31, 0x3CC0000000000000, !dbg !811
  %169 = call double @llvm.fabs.f64(double %handler_result28), !dbg !812
  %170 = fmul double %168, %169, !dbg !813
  %handler_result32 = call double @fAddHandlerDouble(double %165, double %170), !dbg !814
  store double %handler_result32, ptr %166, align 8, !dbg !814, !tbaa !121
  br label %171

171:                                              ; preds = %149, %143, %104, %35
  %172 = phi i32 [ %102, %104 ], [ 0, %143 ], [ 0, %149 ], [ 7, %35 ], !dbg !683
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !815
  br label %173

173:                                              ; preds = %171, %7
  %174 = phi i32 [ %8, %7 ], [ %172, %171 ], !dbg !816
  ret i32 %174, !dbg !817
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnpoch(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !818 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !826, metadata ptr %3, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %0, metadata !822, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %1, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !828
  call void @llvm.dbg.value(metadata double %0, metadata !106, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata double %1, metadata !107, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %3, metadata !108, metadata !DIExpression()), !dbg !829
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !831
  %handler_result = call double @fAddHandlerDouble(double %0, double %1)
  %5 = fcmp ugt double %handler_result, 0.000000e+00
  %6 = and i1 %4, %5, !dbg !832
  br i1 %6, label %9, label %7, !dbg !832

7:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !833, !tbaa !116, !DIAssignID !834
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !824, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !834, metadata ptr %3, metadata !DIExpression()), !dbg !827
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !833
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !833, !tbaa !121, !DIAssignID !835
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !824, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !835, metadata ptr %8, metadata !DIExpression()), !dbg !827
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 1) #6, !dbg !836
  tail call void @llvm.dbg.value(metadata i32 1, metadata !825, metadata !DIExpression()), !dbg !827
  br label %15, !dbg !828

9:                                                ; preds = %2
  %10 = fcmp oeq double %1, 0.000000e+00, !dbg !837
  br i1 %10, label %11, label %12, !dbg !838

11:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !839, !DIAssignID !840
  call void @llvm.dbg.assign(metadata i8 0, metadata !824, metadata !DIExpression(), metadata !840, metadata ptr %3, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 0, metadata !825, metadata !DIExpression()), !dbg !827
  br label %17, !dbg !828

12:                                               ; preds = %9
  %13 = call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !825, metadata !DIExpression()), !dbg !827
  %14 = icmp eq i32 %13, 0, !dbg !842
  br i1 %14, label %17, label %15, !dbg !828

15:                                               ; preds = %12, %7
  %16 = phi i32 [ 1, %7 ], [ %13, %12 ]
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 454, i32 noundef %16) #6, !dbg !844
  br label %17, !dbg !844

17:                                               ; preds = %15, %12, %11
  %18 = load double, ptr %3, align 8, !dbg !828, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !847
  ret double %18, !dbg !847
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_poch(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !848 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !854
  %4 = alloca double, align 8, !DIAssignID !855
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !856
  call void @llvm.dbg.assign(metadata i1 undef, metadata !852, metadata !DIExpression(), metadata !856, metadata ptr %5, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata double %0, metadata !850, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata double %1, metadata !851, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !858
  call void @llvm.dbg.assign(metadata i1 undef, metadata !529, metadata !DIExpression(), metadata !854, metadata ptr %3, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !855, metadata ptr %4, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata double %0, metadata !526, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata double %1, metadata !527, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata ptr %5, metadata !528, metadata !DIExpression()), !dbg !861
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !862
  br i1 %6, label %31, label %7, !dbg !863

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !865
  %8 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !866
  call void @llvm.dbg.value(metadata i32 %8, metadata !533, metadata !DIExpression()), !dbg !859
  %9 = load double, ptr %3, align 8, !dbg !867, !tbaa !116
  %10 = fcmp oeq double %9, 0xFFF0000000000000, !dbg !868
  br i1 %10, label %11, label %12, !dbg !869

11:                                               ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !870, !DIAssignID !871
  call void @llvm.dbg.assign(metadata i8 0, metadata !852, metadata !DIExpression(), metadata !871, metadata ptr %5, metadata !DIExpression()), !dbg !857
  br label %25, !dbg !872

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !873
  %14 = load double, ptr %13, align 8, !dbg !873, !tbaa !121
  %15 = call i32 @gsl_sf_exp_err_e(double noundef %9, double noundef %14, ptr noundef nonnull %5) #6, !dbg !874
  call void @llvm.dbg.value(metadata i32 %15, metadata !534, metadata !DIExpression()), !dbg !875
  %16 = load double, ptr %4, align 8, !dbg !876, !tbaa !399
  %17 = load double, ptr %5, align 8, !dbg !877, !tbaa !116
  %18 = fmul double %16, %17, !dbg !877
  store double %18, ptr %5, align 8, !dbg !877, !tbaa !116, !DIAssignID !878
  call void @llvm.dbg.assign(metadata double %18, metadata !852, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !878, metadata ptr %5, metadata !DIExpression()), !dbg !857
  %19 = call double @llvm.fabs.f64(double %18), !dbg !879
  %20 = fmul double %19, 0x3CC0000000000000, !dbg !880
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !881
  %22 = load double, ptr %21, align 8, !dbg !882, !tbaa !121
  %handler_result = call double @fAddHandlerDouble(double %22, double %20), !dbg !882
  store double %handler_result, ptr %21, align 8, !dbg !882, !tbaa !121, !DIAssignID !883
  call void @llvm.dbg.assign(metadata double %handler_result, metadata !852, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !883, metadata ptr %21, metadata !DIExpression()), !dbg !857
  %23 = icmp eq i32 %15, 0, !dbg !884
  %24 = select i1 %23, i32 %8, i32 %15, !dbg !884
  br label %25

25:                                               ; preds = %12, %11
  %26 = phi double [ 0.000000e+00, %11 ], [ %18, %12 ]
  %27 = phi i32 [ %8, %11 ], [ %24, %12 ], !dbg !885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !886
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !853, metadata !DIExpression()), !dbg !857
  %28 = icmp eq i32 %27, 0, !dbg !887
  br i1 %28, label %31, label %29, !dbg !858

29:                                               ; preds = %25
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef %27) #6, !dbg !889
  %30 = load double, ptr %5, align 8, !dbg !858, !tbaa !116
  br label %31, !dbg !889

31:                                               ; preds = %29, %25, %2
  %32 = phi double [ %26, %25 ], [ %30, %29 ], [ 1.000000e+00, %2 ], !dbg !858
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !892
  ret double %32, !dbg !892
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_pochrel(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !893 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !899
  call void @llvm.dbg.assign(metadata i1 undef, metadata !897, metadata !DIExpression(), metadata !899, metadata ptr %3, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata double %0, metadata !895, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata double %1, metadata !896, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !901
  %4 = call i32 @gsl_sf_pochrel_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !898, metadata !DIExpression()), !dbg !900
  %5 = icmp eq i32 %4, 0, !dbg !902
  br i1 %5, label %7, label %6, !dbg !901

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef %4) #6, !dbg !904
  br label %7, !dbg !904

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !901, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !907
  ret double %8, !dbg !907
}

declare !dbg !908 i32 @gsl_sf_gammainv_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !911 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !914 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !918 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !920 i32 @gsl_sf_psi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !922 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !923 double @tan(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "poch.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7b9015465010c1a2d62d01f1d94fb228")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 29)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 32)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "bern", scope: !39, file: !2, line: 34, type: !82, isLocal: true, isDefinition: true)
!39 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !80, globals: !81, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 39, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!45 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!46 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!47 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!48 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!49 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!50 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!51 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!52 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!53 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!54 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!55 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!56 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!57 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!58 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!59 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!60 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!61 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!62 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!63 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!64 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!65 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!66 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!67 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!68 = !DIEnumerator(name: "GSL_ESING", value: 21)
!69 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!70 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!71 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!72 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!73 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!74 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!75 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!76 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!77 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!78 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!79 = !DIEnumerator(name: "GSL_EOF", value: 32)
!80 = !{!43}
!81 = !{!0, !7, !12, !17, !22, !27, !32, !37}
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 1344, elements: !85)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !{!86}
!86 = !DISubrange(count: 21)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"PIE Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 2}
!93 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!94 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!95 = distinct !DISubprogram(name: "gsl_sf_lnpoch_e", scope: !2, file: !2, line: 282, type: !96, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !105)
!96 = !DISubroutineType(types: !97)
!97 = !{!43, !83, !83, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !100, line: 41, baseType: !101)
!100 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !100, line: 37, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !100, line: 38, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !101, file: !100, line: 39, baseType: !84, size: 64, offset: 64)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !95, file: !2, line: 282, type: !83)
!107 = !DILocalVariable(name: "x", arg: 2, scope: !95, file: !2, line: 282, type: !83)
!108 = !DILocalVariable(name: "result", arg: 3, scope: !95, file: !2, line: 282, type: !98)
!109 = !DILocation(line: 0, scope: !95)
!110 = !DILocation(line: 286, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !2, line: 286, column: 6)
!112 = !DILocation(line: 286, column: 15, scope: !111)
!113 = !DILocation(line: 287, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 287, column: 5)
!115 = distinct !DILexicalBlock(scope: !111, file: !2, line: 286, column: 30)
!116 = !{!117, !118, i64 0}
!117 = !{!"gsl_sf_result_struct", !118, i64 0, !118, i64 8}
!118 = !{!"double", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !{!117, !118, i64 8}
!122 = !DILocation(line: 287, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !114, file: !2, line: 287, column: 5)
!124 = !DILocation(line: 289, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !111, file: !2, line: 289, column: 11)
!126 = !DILocation(line: 289, column: 11, scope: !111)
!127 = !DILocation(line: 291, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !2, line: 289, column: 21)
!129 = !DILocation(line: 292, column: 5, scope: !128)
!130 = !DILocation(line: 295, column: 12, scope: !131)
!131 = distinct !DILexicalBlock(scope: !125, file: !2, line: 294, column: 8)
!132 = !DILocation(line: 295, column: 5, scope: !131)
!133 = !DILocation(line: 0, scope: !111)
!134 = !DILocation(line: 297, column: 1, scope: !95)
!135 = !DISubprogram(name: "gsl_error", scope: !42, file: !42, line: 77, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !138, !43, !43}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = distinct !DISubprogram(name: "lnpoch_pos", scope: !2, file: !2, line: 190, type: !96, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !141)
!141 = !{!142, !143, !144, !145, !146, !151, !152, !154, !155, !156, !157, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183}
!142 = !DILocalVariable(name: "a", arg: 1, scope: !140, file: !2, line: 190, type: !83)
!143 = !DILocalVariable(name: "x", arg: 2, scope: !140, file: !2, line: 190, type: !83)
!144 = !DILocalVariable(name: "result", arg: 3, scope: !140, file: !2, line: 190, type: !98)
!145 = !DILocalVariable(name: "absx", scope: !140, file: !2, line: 192, type: !84)
!146 = !DILocalVariable(name: "g1", scope: !147, file: !2, line: 200, type: !99)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 195, column: 58)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 195, column: 8)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 194, column: 58)
!150 = distinct !DILexicalBlock(scope: !140, file: !2, line: 194, column: 6)
!151 = !DILocalVariable(name: "g2", scope: !147, file: !2, line: 201, type: !99)
!152 = !DILocalVariable(name: "lg1", scope: !153, file: !2, line: 212, type: !99)
!153 = distinct !DILexicalBlock(scope: !148, file: !2, line: 209, column: 10)
!154 = !DILocalVariable(name: "lg2", scope: !153, file: !2, line: 213, type: !99)
!155 = !DILocalVariable(name: "stat_1", scope: !153, file: !2, line: 214, type: !43)
!156 = !DILocalVariable(name: "stat_2", scope: !153, file: !2, line: 215, type: !43)
!157 = !DILocalVariable(name: "eps", scope: !158, file: !2, line: 236, type: !83)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 222, column: 37)
!159 = distinct !DILexicalBlock(scope: !150, file: !2, line: 222, column: 11)
!160 = !DILocalVariable(name: "den", scope: !158, file: !2, line: 237, type: !83)
!161 = !DILocalVariable(name: "d3", scope: !158, file: !2, line: 238, type: !83)
!162 = !DILocalVariable(name: "d5", scope: !158, file: !2, line: 239, type: !83)
!163 = !DILocalVariable(name: "d7", scope: !158, file: !2, line: 240, type: !83)
!164 = !DILocalVariable(name: "c1", scope: !158, file: !2, line: 241, type: !83)
!165 = !DILocalVariable(name: "c3", scope: !158, file: !2, line: 242, type: !83)
!166 = !DILocalVariable(name: "c5", scope: !158, file: !2, line: 243, type: !83)
!167 = !DILocalVariable(name: "c7", scope: !158, file: !2, line: 244, type: !83)
!168 = !DILocalVariable(name: "p8", scope: !158, file: !2, line: 245, type: !83)
!169 = !DILocalVariable(name: "c8", scope: !158, file: !2, line: 246, type: !83)
!170 = !DILocalVariable(name: "c9", scope: !158, file: !2, line: 247, type: !83)
!171 = !DILocalVariable(name: "a4", scope: !158, file: !2, line: 248, type: !83)
!172 = !DILocalVariable(name: "a6", scope: !158, file: !2, line: 249, type: !83)
!173 = !DILocalVariable(name: "ser_1", scope: !158, file: !2, line: 250, type: !83)
!174 = !DILocalVariable(name: "ser_2", scope: !158, file: !2, line: 251, type: !83)
!175 = !DILocalVariable(name: "ser", scope: !158, file: !2, line: 252, type: !83)
!176 = !DILocalVariable(name: "term1", scope: !158, file: !2, line: 254, type: !84)
!177 = !DILocalVariable(name: "term2", scope: !158, file: !2, line: 255, type: !84)
!178 = !DILocalVariable(name: "ln_1peps", scope: !158, file: !2, line: 256, type: !99)
!179 = !DILocalVariable(name: "poch_rel", scope: !180, file: !2, line: 268, type: !99)
!180 = distinct !DILexicalBlock(scope: !159, file: !2, line: 267, column: 8)
!181 = !DILocalVariable(name: "stat_p", scope: !180, file: !2, line: 269, type: !43)
!182 = !DILocalVariable(name: "eps", scope: !180, file: !2, line: 270, type: !84)
!183 = !DILocalVariable(name: "stat_e", scope: !180, file: !2, line: 271, type: !43)
!184 = distinct !DIAssignID()
!185 = !DILocation(line: 0, scope: !147)
!186 = distinct !DIAssignID()
!187 = distinct !DIAssignID()
!188 = !DILocation(line: 0, scope: !153)
!189 = distinct !DIAssignID()
!190 = distinct !DIAssignID()
!191 = !DILocation(line: 0, scope: !158)
!192 = distinct !DIAssignID()
!193 = !DILocation(line: 0, scope: !180)
!194 = !DILocation(line: 0, scope: !140)
!195 = !DILocation(line: 192, column: 17, scope: !140)
!196 = !DILocation(line: 194, column: 16, scope: !150)
!197 = !DILocation(line: 194, column: 11, scope: !150)
!198 = !DILocation(line: 194, column: 19, scope: !150)
!199 = !DILocalVariable(name: "a", arg: 1, scope: !200, file: !201, line: 69, type: !84)
!200 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !201, file: !201, line: 69, type: !202, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !204)
!201 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!202 = !DISubroutineType(types: !203)
!203 = !{!84, !84, !84}
!204 = !{!199, !205}
!205 = !DILocalVariable(name: "b", arg: 2, scope: !200, file: !201, line: 69, type: !84)
!206 = !DILocation(line: 0, scope: !200, inlinedAt: !207)
!207 = distinct !DILocation(line: 194, column: 31, scope: !150)
!208 = !DILocation(line: 71, column: 10, scope: !200, inlinedAt: !207)
!209 = !DILocation(line: 194, column: 26, scope: !150)
!210 = !DILocation(line: 194, column: 51, scope: !150)
!211 = !DILocation(line: 194, column: 6, scope: !140)
!212 = !DILocation(line: 195, column: 10, scope: !148)
!213 = !DILocation(line: 195, column: 30, scope: !148)
!214 = !DILocation(line: 200, column: 7, scope: !147)
!215 = !DILocation(line: 201, column: 7, scope: !147)
!216 = !DILocation(line: 202, column: 7, scope: !147)
!217 = !DILocation(line: 203, column: 7, scope: !147)
!218 = !DILocation(line: 204, column: 30, scope: !147)
!219 = !DILocation(line: 204, column: 37, scope: !147)
!220 = !DILocation(line: 204, column: 33, scope: !147)
!221 = !DILocation(line: 204, column: 22, scope: !147)
!222 = !DILocation(line: 204, column: 20, scope: !147)
!223 = !DILocation(line: 205, column: 25, scope: !147)
!224 = !DILocation(line: 205, column: 37, scope: !147)
!225 = !DILocation(line: 205, column: 29, scope: !147)
!226 = !DILocation(line: 205, column: 28, scope: !147)
!227 = !DILocation(line: 205, column: 47, scope: !147)
!228 = !DILocation(line: 205, column: 59, scope: !147)
!229 = !DILocation(line: 205, column: 51, scope: !147)
!230 = !DILocation(line: 205, column: 50, scope: !147)
!231 = !DILocation(line: 205, column: 15, scope: !147)
!232 = !DILocation(line: 206, column: 46, scope: !147)
!233 = !DILocation(line: 206, column: 44, scope: !147)
!234 = !DILocation(line: 206, column: 19, scope: !147)
!235 = !DILocation(line: 208, column: 5, scope: !148)
!236 = !DILocation(line: 212, column: 7, scope: !153)
!237 = !DILocation(line: 213, column: 7, scope: !153)
!238 = !DILocation(line: 214, column: 20, scope: !153)
!239 = !DILocation(line: 215, column: 20, scope: !153)
!240 = !DILocation(line: 216, column: 26, scope: !153)
!241 = !DILocation(line: 216, column: 36, scope: !153)
!242 = !DILocation(line: 216, column: 20, scope: !153)
!243 = !DILocation(line: 217, column: 26, scope: !153)
!244 = !DILocation(line: 217, column: 36, scope: !153)
!245 = !DILocation(line: 217, column: 15, scope: !153)
!246 = !DILocation(line: 218, column: 46, scope: !153)
!247 = !DILocation(line: 218, column: 44, scope: !153)
!248 = !DILocation(line: 218, column: 19, scope: !153)
!249 = !DILocation(line: 219, column: 14, scope: !153)
!250 = !DILocation(line: 220, column: 5, scope: !148)
!251 = !DILocation(line: 222, column: 16, scope: !159)
!252 = !DILocation(line: 222, column: 24, scope: !159)
!253 = !DILocation(line: 236, column: 25, scope: !158)
!254 = !DILocation(line: 238, column: 26, scope: !158)
!255 = !DILocation(line: 238, column: 30, scope: !158)
!256 = !DILocation(line: 239, column: 25, scope: !158)
!257 = !DILocation(line: 239, column: 29, scope: !158)
!258 = !DILocation(line: 240, column: 25, scope: !158)
!259 = !DILocation(line: 240, column: 29, scope: !158)
!260 = !DILocation(line: 241, column: 23, scope: !158)
!261 = !DILocation(line: 242, column: 36, scope: !158)
!262 = !DILocation(line: 242, column: 27, scope: !158)
!263 = !DILocation(line: 242, column: 47, scope: !158)
!264 = !DILocation(line: 243, column: 56, scope: !158)
!265 = !DILocation(line: 243, column: 46, scope: !158)
!266 = !DILocation(line: 243, column: 36, scope: !158)
!267 = !DILocation(line: 243, column: 27, scope: !158)
!268 = !DILocation(line: 243, column: 69, scope: !158)
!269 = !DILocation(line: 244, column: 76, scope: !158)
!270 = !DILocation(line: 244, column: 66, scope: !158)
!271 = !DILocation(line: 244, column: 56, scope: !158)
!272 = !DILocation(line: 244, column: 46, scope: !158)
!273 = !DILocation(line: 244, column: 36, scope: !158)
!274 = !DILocation(line: 244, column: 27, scope: !158)
!275 = !DILocation(line: 244, column: 91, scope: !158)
!276 = !DILocation(line: 245, column: 23, scope: !158)
!277 = !DILocation(line: 246, column: 26, scope: !158)
!278 = !DILocation(line: 247, column: 30, scope: !158)
!279 = !DILocation(line: 247, column: 26, scope: !158)
!280 = !DILocation(line: 248, column: 24, scope: !158)
!281 = !DILocation(line: 248, column: 26, scope: !158)
!282 = !DILocation(line: 248, column: 28, scope: !158)
!283 = !DILocation(line: 249, column: 25, scope: !158)
!284 = !DILocation(line: 249, column: 27, scope: !158)
!285 = !DILocation(line: 250, column: 39, scope: !158)
!286 = !DILocation(line: 250, column: 41, scope: !158)
!287 = !DILocation(line: 250, column: 33, scope: !158)
!288 = !DILocation(line: 250, column: 29, scope: !158)
!289 = !DILocation(line: 250, column: 56, scope: !158)
!290 = !DILocation(line: 250, column: 49, scope: !158)
!291 = !DILocation(line: 250, column: 72, scope: !158)
!292 = !DILocation(line: 250, column: 65, scope: !158)
!293 = !DILocation(line: 251, column: 34, scope: !158)
!294 = !DILocation(line: 251, column: 37, scope: !158)
!295 = !DILocation(line: 251, column: 39, scope: !158)
!296 = !DILocation(line: 251, column: 28, scope: !158)
!297 = !DILocation(line: 251, column: 60, scope: !158)
!298 = !DILocation(line: 251, column: 68, scope: !158)
!299 = !DILocation(line: 251, column: 64, scope: !158)
!300 = !DILocation(line: 252, column: 31, scope: !158)
!301 = !DILocation(line: 252, column: 46, scope: !158)
!302 = !DILocation(line: 252, column: 39, scope: !158)
!303 = !DILocation(line: 254, column: 29, scope: !158)
!304 = !DILocation(line: 254, column: 22, scope: !158)
!305 = !DILocation(line: 256, column: 5, scope: !158)
!306 = !DILocation(line: 257, column: 5, scope: !158)
!307 = !DILocation(line: 258, column: 20, scope: !158)
!308 = !DILocation(line: 258, column: 38, scope: !158)
!309 = !DILocation(line: 258, column: 27, scope: !158)
!310 = !DILocation(line: 260, column: 34, scope: !158)
!311 = !DILocation(line: 260, column: 18, scope: !158)
!312 = !DILocation(line: 261, column: 36, scope: !158)
!313 = !DILocation(line: 261, column: 35, scope: !158)
!314 = !DILocation(line: 261, column: 13, scope: !158)
!315 = !DILocation(line: 262, column: 48, scope: !158)
!316 = !DILocation(line: 262, column: 38, scope: !158)
!317 = !DILocation(line: 262, column: 20, scope: !158)
!318 = !DILocation(line: 263, column: 20, scope: !158)
!319 = !DILocation(line: 263, column: 39, scope: !158)
!320 = !DILocation(line: 263, column: 70, scope: !158)
!321 = !DILocation(line: 263, column: 78, scope: !158)
!322 = !DILocation(line: 263, column: 57, scope: !158)
!323 = !DILocation(line: 264, column: 44, scope: !158)
!324 = !DILocation(line: 264, column: 42, scope: !158)
!325 = !DILocation(line: 264, column: 17, scope: !158)
!326 = !DILocation(line: 266, column: 3, scope: !159)
!327 = !DILocation(line: 268, column: 5, scope: !180)
!328 = !DILocation(line: 269, column: 18, scope: !180)
!329 = !DILocation(line: 270, column: 29, scope: !180)
!330 = !DILocation(line: 270, column: 19, scope: !180)
!331 = !DILocation(line: 271, column: 18, scope: !180)
!332 = !DILocation(line: 272, column: 44, scope: !180)
!333 = !DILocation(line: 272, column: 33, scope: !180)
!334 = !DILocation(line: 272, column: 48, scope: !180)
!335 = !DILocation(line: 272, column: 26, scope: !180)
!336 = !DILocation(line: 272, column: 24, scope: !180)
!337 = !DILocation(line: 272, column: 13, scope: !180)
!338 = !DILocation(line: 273, column: 57, scope: !180)
!339 = !DILocation(line: 273, column: 44, scope: !180)
!340 = !DILocation(line: 273, column: 42, scope: !180)
!341 = !DILocation(line: 273, column: 17, scope: !180)
!342 = !DILocation(line: 274, column: 12, scope: !180)
!343 = !DILocation(line: 275, column: 3, scope: !159)
!344 = !DILocation(line: 0, scope: !150)
!345 = !DILocation(line: 276, column: 1, scope: !140)
!346 = distinct !DISubprogram(name: "gsl_sf_lnpoch_sgn_e", scope: !2, file: !2, line: 301, type: !347, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{!43, !83, !83, !98, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!350 = !{!351, !352, !353, !354, !355, !362, !363, !364, !365, !368, !369, !372, !373, !376, !377, !378, !380, !381, !382, !383, !384}
!351 = !DILocalVariable(name: "a", arg: 1, scope: !346, file: !2, line: 301, type: !83)
!352 = !DILocalVariable(name: "x", arg: 2, scope: !346, file: !2, line: 301, type: !83)
!353 = !DILocalVariable(name: "result", arg: 3, scope: !346, file: !2, line: 302, type: !98)
!354 = !DILocalVariable(name: "sgn", arg: 4, scope: !346, file: !2, line: 302, type: !349)
!355 = !DILocalVariable(name: "result_pos", scope: !356, file: !2, line: 318, type: !99)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 316, column: 38)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 316, column: 9)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 314, column: 37)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 314, column: 12)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 310, column: 11)
!361 = distinct !DILexicalBlock(scope: !346, file: !2, line: 304, column: 6)
!362 = !DILocalVariable(name: "stat", scope: !356, file: !2, line: 321, type: !43)
!363 = !DILocalVariable(name: "f", scope: !356, file: !2, line: 322, type: !84)
!364 = !DILocalVariable(name: "s", scope: !356, file: !2, line: 323, type: !84)
!365 = !DILocalVariable(name: "stat", scope: !366, file: !2, line: 331, type: !43)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 328, column: 28)
!367 = distinct !DILexicalBlock(scope: !357, file: !2, line: 328, column: 16)
!368 = !DILocalVariable(name: "s", scope: !366, file: !2, line: 332, type: !84)
!369 = !DILocalVariable(name: "sin_1", scope: !370, file: !2, line: 345, type: !84)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 342, column: 35)
!371 = distinct !DILexicalBlock(scope: !359, file: !2, line: 342, column: 13)
!372 = !DILocalVariable(name: "sin_2", scope: !370, file: !2, line: 346, type: !84)
!373 = !DILocalVariable(name: "lnp_pos", scope: !374, file: !2, line: 352, type: !99)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 351, column: 10)
!375 = distinct !DILexicalBlock(scope: !370, file: !2, line: 347, column: 8)
!376 = !DILocalVariable(name: "stat_pp", scope: !374, file: !2, line: 353, type: !43)
!377 = !DILocalVariable(name: "lnterm", scope: !374, file: !2, line: 354, type: !84)
!378 = !DILocalVariable(name: "lg_apn", scope: !379, file: !2, line: 366, type: !99)
!379 = distinct !DILexicalBlock(scope: !371, file: !2, line: 363, column: 8)
!380 = !DILocalVariable(name: "lg_a", scope: !379, file: !2, line: 367, type: !99)
!381 = !DILocalVariable(name: "s_apn", scope: !379, file: !2, line: 368, type: !84)
!382 = !DILocalVariable(name: "s_a", scope: !379, file: !2, line: 368, type: !84)
!383 = !DILocalVariable(name: "stat_apn", scope: !379, file: !2, line: 369, type: !43)
!384 = !DILocalVariable(name: "stat_a", scope: !379, file: !2, line: 370, type: !43)
!385 = distinct !DIAssignID()
!386 = !DILocation(line: 0, scope: !356)
!387 = distinct !DIAssignID()
!388 = !DILocation(line: 0, scope: !374)
!389 = distinct !DIAssignID()
!390 = !DILocation(line: 0, scope: !379)
!391 = distinct !DIAssignID()
!392 = distinct !DIAssignID()
!393 = distinct !DIAssignID()
!394 = !DILocation(line: 0, scope: !346)
!395 = !DILocation(line: 304, column: 8, scope: !361)
!396 = !DILocation(line: 304, column: 6, scope: !346)
!397 = !DILocation(line: 305, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !361, file: !2, line: 304, column: 16)
!399 = !{!118, !118, i64 0}
!400 = !DILocation(line: 307, column: 17, scope: !398)
!401 = !DILocation(line: 308, column: 5, scope: !398)
!402 = !DILocation(line: 310, column: 13, scope: !360)
!403 = !DILocation(line: 310, column: 19, scope: !360)
!404 = !DILocation(line: 311, column: 10, scope: !405)
!405 = distinct !DILexicalBlock(scope: !360, file: !2, line: 310, column: 33)
!406 = !DILocation(line: 312, column: 12, scope: !405)
!407 = !DILocation(line: 312, column: 5, scope: !405)
!408 = !DILocation(line: 314, column: 14, scope: !359)
!409 = !DILocation(line: 314, column: 19, scope: !359)
!410 = !DILocation(line: 316, column: 15, scope: !357)
!411 = !DILocation(line: 316, column: 20, scope: !357)
!412 = !DILocation(line: 318, column: 7, scope: !356)
!413 = !DILocation(line: 321, column: 30, scope: !356)
!414 = !DILocation(line: 321, column: 34, scope: !356)
!415 = !DILocation(line: 321, column: 18, scope: !356)
!416 = !DILocation(line: 322, column: 25, scope: !356)
!417 = !DILocation(line: 323, column: 19, scope: !356)
!418 = !DILocation(line: 323, column: 30, scope: !356)
!419 = !DILocation(line: 323, column: 18, scope: !356)
!420 = !DILocation(line: 324, column: 36, scope: !356)
!421 = !DILocation(line: 324, column: 19, scope: !356)
!422 = !DILocation(line: 325, column: 32, scope: !356)
!423 = !DILocation(line: 325, column: 60, scope: !356)
!424 = !DILocation(line: 325, column: 15, scope: !356)
!425 = !DILocation(line: 325, column: 19, scope: !356)
!426 = !DILocation(line: 326, column: 12, scope: !356)
!427 = !DILocation(line: 328, column: 5, scope: !357)
!428 = !DILocation(line: 328, column: 22, scope: !367)
!429 = !DILocation(line: 328, column: 16, scope: !357)
!430 = !DILocation(line: 331, column: 40, scope: !366)
!431 = !DILocation(line: 331, column: 18, scope: !366)
!432 = !DILocation(line: 0, scope: !366)
!433 = !DILocation(line: 332, column: 31, scope: !366)
!434 = !DILocation(line: 333, column: 12, scope: !366)
!435 = !DILocation(line: 337, column: 19, scope: !436)
!436 = distinct !DILexicalBlock(scope: !367, file: !2, line: 335, column: 12)
!437 = !DILocation(line: 338, column: 15, scope: !436)
!438 = !DILocation(line: 338, column: 19, scope: !436)
!439 = !DILocation(line: 339, column: 12, scope: !436)
!440 = !DILocation(line: 340, column: 7, scope: !436)
!441 = !DILocation(line: 342, column: 15, scope: !371)
!442 = !DILocation(line: 342, column: 21, scope: !371)
!443 = !DILocation(line: 345, column: 29, scope: !370)
!444 = !DILocation(line: 346, column: 29, scope: !370)
!445 = !DILocation(line: 0, scope: !370)
!446 = !DILocation(line: 347, column: 14, scope: !375)
!447 = !DILocation(line: 347, column: 21, scope: !375)
!448 = !DILocation(line: 348, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !375, file: !2, line: 347, column: 38)
!450 = !DILocation(line: 349, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !2, line: 349, column: 7)
!452 = !DILocation(line: 349, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !451, file: !2, line: 349, column: 7)
!454 = !DILocation(line: 352, column: 7, scope: !374)
!455 = !DILocation(line: 353, column: 41, scope: !374)
!456 = !DILocation(line: 353, column: 23, scope: !374)
!457 = !DILocation(line: 354, column: 37, scope: !374)
!458 = !DILocation(line: 354, column: 27, scope: !374)
!459 = !DILocation(line: 355, column: 39, scope: !374)
!460 = !DILocation(line: 355, column: 20, scope: !374)
!461 = !DILocation(line: 356, column: 30, scope: !374)
!462 = !DILocation(line: 356, column: 15, scope: !374)
!463 = !DILocation(line: 357, column: 47, scope: !374)
!464 = !DILocation(line: 357, column: 61, scope: !374)
!465 = !DILocation(line: 357, column: 44, scope: !374)
!466 = !DILocation(line: 357, column: 78, scope: !374)
!467 = !DILocation(line: 357, column: 76, scope: !374)
!468 = !DILocation(line: 358, column: 46, scope: !374)
!469 = !DILocation(line: 358, column: 44, scope: !374)
!470 = !DILocation(line: 358, column: 19, scope: !374)
!471 = !DILocation(line: 359, column: 14, scope: !374)
!472 = !DILocation(line: 359, column: 12, scope: !374)
!473 = !DILocation(line: 361, column: 5, scope: !375)
!474 = !DILocation(line: 366, column: 5, scope: !379)
!475 = !DILocation(line: 367, column: 5, scope: !379)
!476 = !DILocation(line: 368, column: 5, scope: !379)
!477 = !DILocation(line: 369, column: 20, scope: !379)
!478 = !DILocation(line: 370, column: 20, scope: !379)
!479 = !DILocation(line: 371, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !379, file: !2, line: 371, column: 8)
!481 = !DILocation(line: 371, column: 32, scope: !480)
!482 = !DILocation(line: 372, column: 29, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !2, line: 371, column: 58)
!484 = !DILocation(line: 372, column: 40, scope: !483)
!485 = !DILocation(line: 372, column: 20, scope: !483)
!486 = !DILocation(line: 373, column: 29, scope: !483)
!487 = !DILocation(line: 373, column: 40, scope: !483)
!488 = !DILocation(line: 373, column: 15, scope: !483)
!489 = !DILocation(line: 374, column: 46, scope: !483)
!490 = !DILocation(line: 374, column: 44, scope: !483)
!491 = !DILocation(line: 374, column: 19, scope: !483)
!492 = !DILocation(line: 375, column: 14, scope: !483)
!493 = !DILocation(line: 375, column: 20, scope: !483)
!494 = !DILocation(line: 375, column: 18, scope: !483)
!495 = !DILocation(line: 375, column: 12, scope: !483)
!496 = !DILocation(line: 376, column: 7, scope: !483)
!497 = !DILocation(line: 378, column: 22, scope: !498)
!498 = distinct !DILexicalBlock(scope: !480, file: !2, line: 378, column: 13)
!499 = !DILocation(line: 378, column: 34, scope: !498)
!500 = !DILocation(line: 379, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !2, line: 378, column: 56)
!502 = !DILocation(line: 380, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !2, line: 380, column: 7)
!504 = !DILocation(line: 380, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !503, file: !2, line: 380, column: 7)
!506 = !DILocation(line: 384, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !2, line: 382, column: 10)
!508 = !DILocation(line: 385, column: 12, scope: !507)
!509 = !DILocation(line: 386, column: 7, scope: !507)
!510 = !DILocation(line: 0, scope: !480)
!511 = !DILocation(line: 388, column: 3, scope: !371)
!512 = !DILocation(line: 0, scope: !361)
!513 = !DILocation(line: 389, column: 1, scope: !346)
!514 = !DISubprogram(name: "log", scope: !515, file: !515, line: 104, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!516 = !DISubroutineType(types: !517)
!517 = !{!84, !84}
!518 = !DISubprogram(name: "fmod", scope: !515, file: !515, line: 168, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !520, file: !520, line: 58, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!521 = !DISubroutineType(types: !522)
!522 = !{!43, !84, !98, !349}
!523 = !DISubprogram(name: "sin", scope: !515, file: !515, line: 64, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = distinct !DISubprogram(name: "gsl_sf_poch_e", scope: !2, file: !2, line: 393, type: !96, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !525)
!525 = !{!526, !527, !528, !529, !532, !533, !534}
!526 = !DILocalVariable(name: "a", arg: 1, scope: !524, file: !2, line: 393, type: !83)
!527 = !DILocalVariable(name: "x", arg: 2, scope: !524, file: !2, line: 393, type: !83)
!528 = !DILocalVariable(name: "result", arg: 3, scope: !524, file: !2, line: 393, type: !98)
!529 = !DILocalVariable(name: "lnpoch", scope: !530, file: !2, line: 402, type: !99)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 401, column: 10)
!531 = distinct !DILexicalBlock(scope: !524, file: !2, line: 397, column: 6)
!532 = !DILocalVariable(name: "sgn", scope: !530, file: !2, line: 403, type: !84)
!533 = !DILocalVariable(name: "stat_lnpoch", scope: !530, file: !2, line: 404, type: !43)
!534 = !DILocalVariable(name: "stat_exp", scope: !535, file: !2, line: 410, type: !43)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 409, column: 12)
!536 = distinct !DILexicalBlock(scope: !530, file: !2, line: 405, column: 9)
!537 = distinct !DIAssignID()
!538 = !DILocation(line: 0, scope: !530)
!539 = distinct !DIAssignID()
!540 = !DILocation(line: 0, scope: !524)
!541 = !DILocation(line: 397, column: 8, scope: !531)
!542 = !DILocation(line: 397, column: 6, scope: !524)
!543 = !DILocation(line: 398, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !531, file: !2, line: 397, column: 16)
!545 = !DILocation(line: 399, column: 13, scope: !544)
!546 = !DILocation(line: 399, column: 17, scope: !544)
!547 = !DILocation(line: 400, column: 5, scope: !544)
!548 = !DILocation(line: 402, column: 5, scope: !530)
!549 = !DILocation(line: 403, column: 5, scope: !530)
!550 = !DILocation(line: 404, column: 23, scope: !530)
!551 = !DILocation(line: 405, column: 16, scope: !536)
!552 = !DILocation(line: 405, column: 20, scope: !536)
!553 = !DILocation(line: 405, column: 9, scope: !530)
!554 = !DILocation(line: 407, column: 19, scope: !555)
!555 = distinct !DILexicalBlock(scope: !536, file: !2, line: 405, column: 35)
!556 = !DILocation(line: 408, column: 7, scope: !555)
!557 = !DILocation(line: 410, column: 61, scope: !535)
!558 = !DILocation(line: 410, column: 25, scope: !535)
!559 = !DILocation(line: 0, scope: !535)
!560 = !DILocation(line: 411, column: 22, scope: !535)
!561 = !DILocation(line: 411, column: 19, scope: !535)
!562 = !DILocation(line: 412, column: 46, scope: !535)
!563 = !DILocation(line: 412, column: 44, scope: !535)
!564 = !DILocation(line: 412, column: 15, scope: !535)
!565 = !DILocation(line: 412, column: 19, scope: !535)
!566 = !DILocation(line: 413, column: 14, scope: !535)
!567 = !DILocation(line: 0, scope: !536)
!568 = !DILocation(line: 415, column: 3, scope: !531)
!569 = !DILocation(line: 0, scope: !531)
!570 = !DILocation(line: 416, column: 1, scope: !524)
!571 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !572, file: !572, line: 110, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!573 = distinct !DISubprogram(name: "gsl_sf_pochrel_e", scope: !2, file: !2, line: 420, type: !96, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !583, !584, !585}
!575 = !DILocalVariable(name: "a", arg: 1, scope: !573, file: !2, line: 420, type: !83)
!576 = !DILocalVariable(name: "x", arg: 2, scope: !573, file: !2, line: 420, type: !83)
!577 = !DILocalVariable(name: "result", arg: 3, scope: !573, file: !2, line: 420, type: !98)
!578 = !DILocalVariable(name: "absx", scope: !573, file: !2, line: 422, type: !83)
!579 = !DILocalVariable(name: "absa", scope: !573, file: !2, line: 423, type: !83)
!580 = !DILocalVariable(name: "lnpoch", scope: !581, file: !2, line: 428, type: !99)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 427, column: 60)
!582 = distinct !DILexicalBlock(scope: !573, file: !2, line: 427, column: 6)
!583 = !DILocalVariable(name: "sgn", scope: !581, file: !2, line: 429, type: !84)
!584 = !DILocalVariable(name: "stat_poch", scope: !581, file: !2, line: 430, type: !43)
!585 = !DILocalVariable(name: "el", scope: !586, file: !2, line: 435, type: !83)
!586 = distinct !DILexicalBlock(scope: !587, file: !2, line: 434, column: 10)
!587 = distinct !DILexicalBlock(scope: !581, file: !2, line: 431, column: 8)
!588 = distinct !DIAssignID()
!589 = !DILocation(line: 0, scope: !581)
!590 = distinct !DIAssignID()
!591 = !DILocation(line: 0, scope: !573)
!592 = !DILocation(line: 422, column: 23, scope: !573)
!593 = !DILocation(line: 423, column: 23, scope: !573)
!594 = !DILocation(line: 427, column: 16, scope: !582)
!595 = !DILocation(line: 427, column: 11, scope: !582)
!596 = !DILocation(line: 427, column: 22, scope: !582)
!597 = !DILocation(line: 427, column: 34, scope: !582)
!598 = !DILocation(line: 427, column: 29, scope: !582)
!599 = !DILocation(line: 427, column: 53, scope: !582)
!600 = !DILocation(line: 427, column: 6, scope: !573)
!601 = !DILocation(line: 428, column: 5, scope: !581)
!602 = !DILocation(line: 429, column: 5, scope: !581)
!603 = !DILocation(line: 430, column: 21, scope: !581)
!604 = !DILocation(line: 431, column: 15, scope: !587)
!605 = !DILocation(line: 431, column: 19, scope: !587)
!606 = !DILocation(line: 431, column: 8, scope: !581)
!607 = !DILocation(line: 432, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 432, column: 7)
!609 = distinct !DILexicalBlock(scope: !587, file: !2, line: 431, column: 38)
!610 = !DILocation(line: 432, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !2, line: 432, column: 7)
!612 = !DILocation(line: 435, column: 25, scope: !586)
!613 = !DILocation(line: 0, scope: !586)
!614 = !DILocation(line: 436, column: 23, scope: !586)
!615 = !DILocation(line: 436, column: 26, scope: !586)
!616 = !DILocation(line: 436, column: 36, scope: !586)
!617 = !DILocation(line: 436, column: 20, scope: !586)
!618 = !DILocation(line: 437, column: 22, scope: !586)
!619 = !DILocation(line: 437, column: 50, scope: !586)
!620 = !DILocation(line: 437, column: 40, scope: !586)
!621 = !DILocation(line: 437, column: 15, scope: !586)
!622 = !DILocation(line: 438, column: 47, scope: !586)
!623 = !DILocation(line: 438, column: 44, scope: !586)
!624 = !DILocation(line: 438, column: 67, scope: !586)
!625 = !DILocation(line: 438, column: 19, scope: !586)
!626 = !DILocation(line: 0, scope: !587)
!627 = !DILocation(line: 441, column: 3, scope: !582)
!628 = !DILocation(line: 443, column: 12, scope: !629)
!629 = distinct !DILexicalBlock(scope: !582, file: !2, line: 442, column: 8)
!630 = !DILocation(line: 443, column: 5, scope: !629)
!631 = !DILocation(line: 0, scope: !582)
!632 = !DILocation(line: 445, column: 1, scope: !573)
!633 = !DISubprogram(name: "exp", scope: !515, file: !515, line: 95, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = distinct !DISubprogram(name: "pochrel_smallx", scope: !2, file: !2, line: 84, type: !96, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !644, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !658, !659, !660, !661, !665, !666, !667, !671, !675, !678, !679, !680, !681}
!636 = !DILocalVariable(name: "a", arg: 1, scope: !634, file: !2, line: 84, type: !83)
!637 = !DILocalVariable(name: "x", arg: 2, scope: !634, file: !2, line: 84, type: !83)
!638 = !DILocalVariable(name: "result", arg: 3, scope: !634, file: !2, line: 84, type: !98)
!639 = !DILocalVariable(name: "SQTBIG", scope: !634, file: !2, line: 90, type: !83)
!640 = !DILocalVariable(name: "ALNEPS", scope: !634, file: !2, line: 91, type: !83)
!641 = !DILocalVariable(name: "bp", scope: !642, file: !2, line: 97, type: !83)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 96, column: 8)
!643 = distinct !DILexicalBlock(scope: !634, file: !2, line: 93, column: 6)
!644 = !DILocalVariable(name: "incr", scope: !642, file: !2, line: 98, type: !645)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!646 = !DILocalVariable(name: "b", scope: !642, file: !2, line: 99, type: !83)
!647 = !DILocalVariable(name: "dpoch1", scope: !642, file: !2, line: 100, type: !84)
!648 = !DILocalVariable(name: "dexprl", scope: !642, file: !2, line: 101, type: !99)
!649 = !DILocalVariable(name: "stat_dexprl", scope: !642, file: !2, line: 102, type: !43)
!650 = !DILocalVariable(name: "i", scope: !642, file: !2, line: 103, type: !43)
!651 = !DILocalVariable(name: "var", scope: !642, file: !2, line: 105, type: !84)
!652 = !DILocalVariable(name: "alnvar", scope: !642, file: !2, line: 106, type: !84)
!653 = !DILocalVariable(name: "q", scope: !642, file: !2, line: 107, type: !84)
!654 = !DILocalVariable(name: "poly1", scope: !642, file: !2, line: 109, type: !84)
!655 = !DILocalVariable(name: "nterms", scope: !656, file: !2, line: 112, type: !645)
!656 = distinct !DILexicalBlock(scope: !657, file: !2, line: 111, column: 22)
!657 = distinct !DILexicalBlock(scope: !642, file: !2, line: 111, column: 8)
!658 = !DILocalVariable(name: "var2", scope: !656, file: !2, line: 113, type: !83)
!659 = !DILocalVariable(name: "rho", scope: !656, file: !2, line: 114, type: !83)
!660 = !DILocalVariable(name: "term", scope: !656, file: !2, line: 115, type: !84)
!661 = !DILocalVariable(name: "gbern", scope: !656, file: !2, line: 116, type: !662)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1536, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 24)
!665 = !DILocalVariable(name: "k", scope: !656, file: !2, line: 117, type: !43)
!666 = !DILocalVariable(name: "j", scope: !656, file: !2, line: 117, type: !43)
!667 = !DILocalVariable(name: "gbk", scope: !668, file: !2, line: 132, type: !84)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 131, column: 32)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 131, column: 7)
!670 = distinct !DILexicalBlock(scope: !656, file: !2, line: 131, column: 7)
!671 = !DILocalVariable(name: "binv", scope: !672, file: !2, line: 158, type: !84)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 153, column: 32)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 153, column: 5)
!674 = distinct !DILexicalBlock(scope: !642, file: !2, line: 153, column: 5)
!675 = !DILocalVariable(name: "sinpxx", scope: !676, file: !2, line: 172, type: !84)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 167, column: 10)
!677 = distinct !DILexicalBlock(scope: !642, file: !2, line: 162, column: 8)
!678 = !DILocalVariable(name: "sinpx2", scope: !676, file: !2, line: 173, type: !84)
!679 = !DILocalVariable(name: "t1", scope: !676, file: !2, line: 174, type: !84)
!680 = !DILocalVariable(name: "t2", scope: !676, file: !2, line: 175, type: !84)
!681 = !DILocalVariable(name: "trig", scope: !676, file: !2, line: 176, type: !84)
!682 = distinct !DIAssignID()
!683 = !DILocation(line: 0, scope: !642)
!684 = distinct !DIAssignID()
!685 = !DILocation(line: 0, scope: !656)
!686 = !DILocation(line: 0, scope: !634)
!687 = !DILocation(line: 93, column: 8, scope: !643)
!688 = !DILocation(line: 93, column: 6, scope: !634)
!689 = !DILocation(line: 94, column: 12, scope: !690)
!690 = distinct !DILexicalBlock(scope: !643, file: !2, line: 93, column: 16)
!691 = !DILocation(line: 94, column: 5, scope: !690)
!692 = !DILocation(line: 97, column: 31, scope: !642)
!693 = !DILocation(line: 97, column: 28, scope: !642)
!694 = !DILocation(line: 98, column: 31, scope: !642)
!695 = !DILocation(line: 98, column: 27, scope: !642)
!696 = !DILocation(line: 98, column: 25, scope: !642)
!697 = !DILocation(line: 99, column: 30, scope: !642)
!698 = !DILocation(line: 101, column: 5, scope: !642)
!699 = !DILocation(line: 105, column: 28, scope: !642)
!700 = !DILocation(line: 106, column: 21, scope: !642)
!701 = !DILocation(line: 107, column: 17, scope: !642)
!702 = !DILocation(line: 111, column: 12, scope: !657)
!703 = !DILocation(line: 111, column: 8, scope: !642)
!704 = !DILocation(line: 112, column: 43, scope: !656)
!705 = !DILocation(line: 112, column: 26, scope: !656)
!706 = !DILocation(line: 113, column: 31, scope: !656)
!707 = !DILocation(line: 113, column: 36, scope: !656)
!708 = !DILocation(line: 116, column: 7, scope: !656)
!709 = !DILocation(line: 119, column: 7, scope: !656)
!710 = !DILocation(line: 119, column: 16, scope: !656)
!711 = distinct !DIAssignID()
!712 = !DILocation(line: 120, column: 18, scope: !656)
!713 = !DILocation(line: 120, column: 22, scope: !656)
!714 = !DILocation(line: 120, column: 7, scope: !656)
!715 = !DILocation(line: 120, column: 16, scope: !656)
!716 = distinct !DIAssignID()
!717 = !DILocation(line: 123, column: 17, scope: !718)
!718 = distinct !DILexicalBlock(scope: !656, file: !2, line: 123, column: 10)
!719 = !DILocation(line: 123, column: 10, scope: !656)
!720 = !DILocation(line: 121, column: 24, scope: !656)
!721 = !DILocation(line: 131, column: 17, scope: !669)
!722 = !DILocation(line: 131, column: 7, scope: !670)
!723 = !DILocation(line: 127, column: 21, scope: !724)
!724 = distinct !DILexicalBlock(scope: !718, file: !2, line: 123, column: 23)
!725 = !DILocation(line: 128, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !724, file: !2, line: 128, column: 9)
!727 = !DILocation(line: 141, column: 5, scope: !657)
!728 = !DILocation(line: 136, column: 16, scope: !668)
!729 = !DILocation(line: 0, scope: !668)
!730 = !DILocation(line: 133, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !668, file: !2, line: 133, column: 9)
!732 = !DILocation(line: 134, column: 26, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 133, column: 29)
!734 = distinct !DILexicalBlock(scope: !731, file: !2, line: 133, column: 9)
!735 = !DILocation(line: 134, column: 18, scope: !733)
!736 = !DILocation(line: 134, column: 30, scope: !733)
!737 = !DILocation(line: 134, column: 29, scope: !733)
!738 = !DILocation(line: 133, column: 25, scope: !734)
!739 = distinct !{!739, !730, !740, !741}
!740 = !DILocation(line: 135, column: 9, scope: !731)
!741 = !{!"llvm.loop.mustprogress"}
!742 = !DILocation(line: 136, column: 26, scope: !668)
!743 = !DILocation(line: 134, column: 15, scope: !733)
!744 = !DILocation(line: 136, column: 31, scope: !668)
!745 = !DILocation(line: 136, column: 30, scope: !668)
!746 = !DILocation(line: 136, column: 9, scope: !668)
!747 = !DILocation(line: 136, column: 20, scope: !668)
!748 = !DILocation(line: 138, column: 20, scope: !668)
!749 = !DILocation(line: 138, column: 19, scope: !668)
!750 = !DILocation(line: 138, column: 29, scope: !668)
!751 = !DILocation(line: 138, column: 27, scope: !668)
!752 = !DILocation(line: 138, column: 37, scope: !668)
!753 = !DILocation(line: 138, column: 15, scope: !668)
!754 = !DILocation(line: 139, column: 28, scope: !668)
!755 = distinct !{!755, !722, !756, !741}
!756 = !DILocation(line: 140, column: 7, scope: !670)
!757 = !DILocation(line: 143, column: 19, scope: !642)
!758 = !DILocation(line: 144, column: 20, scope: !759)
!759 = distinct !DILexicalBlock(scope: !642, file: !2, line: 144, column: 8)
!760 = !DILocation(line: 144, column: 8, scope: !642)
!761 = !DILocation(line: 146, column: 19, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !2, line: 144, column: 36)
!763 = !DILocation(line: 147, column: 7, scope: !762)
!764 = !DILocation(line: 149, column: 25, scope: !642)
!765 = !DILocation(line: 149, column: 28, scope: !642)
!766 = distinct !DIAssignID()
!767 = !DILocation(line: 150, column: 11, scope: !642)
!768 = !DILocation(line: 151, column: 39, scope: !642)
!769 = !DILocation(line: 151, column: 25, scope: !642)
!770 = !DILocation(line: 153, column: 21, scope: !673)
!771 = !DILocation(line: 153, column: 5, scope: !674)
!772 = !DILocation(line: 153, scope: !674)
!773 = !DILocation(line: 158, column: 29, scope: !672)
!774 = !DILocation(line: 158, column: 24, scope: !672)
!775 = !DILocation(line: 0, scope: !672)
!776 = !DILocation(line: 159, column: 42, scope: !672)
!777 = !DILocation(line: 159, column: 32, scope: !672)
!778 = distinct !{!778, !771, !779, !741}
!779 = !DILocation(line: 160, column: 5, scope: !674)
!780 = !DILocation(line: 162, column: 11, scope: !677)
!781 = !DILocation(line: 162, column: 8, scope: !642)
!782 = !DILocation(line: 163, column: 19, scope: !783)
!783 = distinct !DILexicalBlock(scope: !677, file: !2, line: 162, column: 17)
!784 = !DILocation(line: 164, column: 46, scope: !783)
!785 = !DILocation(line: 164, column: 43, scope: !783)
!786 = !DILocation(line: 164, column: 66, scope: !783)
!787 = !DILocation(line: 164, column: 64, scope: !783)
!788 = !DILocation(line: 164, column: 15, scope: !783)
!789 = !DILocation(line: 164, column: 19, scope: !783)
!790 = !DILocation(line: 165, column: 7, scope: !783)
!791 = !DILocation(line: 172, column: 31, scope: !676)
!792 = !DILocation(line: 172, column: 34, scope: !676)
!793 = !DILocation(line: 0, scope: !676)
!794 = !DILocation(line: 173, column: 35, scope: !676)
!795 = !DILocation(line: 174, column: 34, scope: !676)
!796 = !DILocation(line: 174, column: 25, scope: !676)
!797 = !DILocation(line: 175, column: 22, scope: !676)
!798 = !DILocation(line: 175, column: 37, scope: !676)
!799 = !DILocation(line: 175, column: 29, scope: !676)
!800 = !DILocation(line: 177, column: 39, scope: !676)
!801 = !DILocation(line: 177, column: 29, scope: !676)
!802 = !DILocation(line: 177, column: 20, scope: !676)
!803 = !DILocation(line: 178, column: 34, scope: !676)
!804 = !DILocation(line: 178, column: 23, scope: !676)
!805 = !DILocation(line: 178, column: 45, scope: !676)
!806 = !DILocation(line: 178, column: 66, scope: !676)
!807 = !DILocation(line: 178, column: 77, scope: !676)
!808 = !DILocation(line: 178, column: 63, scope: !676)
!809 = !DILocation(line: 178, column: 15, scope: !676)
!810 = !DILocation(line: 179, column: 47, scope: !676)
!811 = !DILocation(line: 179, column: 44, scope: !676)
!812 = !DILocation(line: 179, column: 67, scope: !676)
!813 = !DILocation(line: 179, column: 65, scope: !676)
!814 = !DILocation(line: 179, column: 19, scope: !676)
!815 = !DILocation(line: 182, column: 3, scope: !643)
!816 = !DILocation(line: 0, scope: !643)
!817 = !DILocation(line: 183, column: 1, scope: !634)
!818 = distinct !DISubprogram(name: "gsl_sf_lnpoch", scope: !2, file: !2, line: 452, type: !819, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!84, !83, !83}
!821 = !{!822, !823, !824, !825}
!822 = !DILocalVariable(name: "a", arg: 1, scope: !818, file: !2, line: 452, type: !83)
!823 = !DILocalVariable(name: "x", arg: 2, scope: !818, file: !2, line: 452, type: !83)
!824 = !DILocalVariable(name: "result", scope: !818, file: !2, line: 454, type: !99)
!825 = !DILocalVariable(name: "status", scope: !818, file: !2, line: 454, type: !43)
!826 = distinct !DIAssignID()
!827 = !DILocation(line: 0, scope: !818)
!828 = !DILocation(line: 454, column: 3, scope: !818)
!829 = !DILocation(line: 0, scope: !95, inlinedAt: !830)
!830 = distinct !DILocation(line: 454, column: 3, scope: !818)
!831 = !DILocation(line: 286, column: 8, scope: !111, inlinedAt: !830)
!832 = !DILocation(line: 286, column: 15, scope: !111, inlinedAt: !830)
!833 = !DILocation(line: 287, column: 5, scope: !114, inlinedAt: !830)
!834 = distinct !DIAssignID()
!835 = distinct !DIAssignID()
!836 = !DILocation(line: 287, column: 5, scope: !123, inlinedAt: !830)
!837 = !DILocation(line: 289, column: 13, scope: !125, inlinedAt: !830)
!838 = !DILocation(line: 289, column: 11, scope: !111, inlinedAt: !830)
!839 = !DILocation(line: 291, column: 17, scope: !128, inlinedAt: !830)
!840 = distinct !DIAssignID()
!841 = !DILocation(line: 295, column: 12, scope: !131, inlinedAt: !830)
!842 = !DILocation(line: 454, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !818, file: !2, line: 454, column: 3)
!844 = !DILocation(line: 454, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 454, column: 3)
!846 = distinct !DILexicalBlock(scope: !843, file: !2, line: 454, column: 3)
!847 = !DILocation(line: 455, column: 1, scope: !818)
!848 = distinct !DISubprogram(name: "gsl_sf_poch", scope: !2, file: !2, line: 457, type: !819, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !849)
!849 = !{!850, !851, !852, !853}
!850 = !DILocalVariable(name: "a", arg: 1, scope: !848, file: !2, line: 457, type: !83)
!851 = !DILocalVariable(name: "x", arg: 2, scope: !848, file: !2, line: 457, type: !83)
!852 = !DILocalVariable(name: "result", scope: !848, file: !2, line: 459, type: !99)
!853 = !DILocalVariable(name: "status", scope: !848, file: !2, line: 459, type: !43)
!854 = distinct !DIAssignID()
!855 = distinct !DIAssignID()
!856 = distinct !DIAssignID()
!857 = !DILocation(line: 0, scope: !848)
!858 = !DILocation(line: 459, column: 3, scope: !848)
!859 = !DILocation(line: 0, scope: !530, inlinedAt: !860)
!860 = distinct !DILocation(line: 459, column: 3, scope: !848)
!861 = !DILocation(line: 0, scope: !524, inlinedAt: !860)
!862 = !DILocation(line: 397, column: 8, scope: !531, inlinedAt: !860)
!863 = !DILocation(line: 397, column: 6, scope: !524, inlinedAt: !860)
!864 = !DILocation(line: 402, column: 5, scope: !530, inlinedAt: !860)
!865 = !DILocation(line: 403, column: 5, scope: !530, inlinedAt: !860)
!866 = !DILocation(line: 404, column: 23, scope: !530, inlinedAt: !860)
!867 = !DILocation(line: 405, column: 16, scope: !536, inlinedAt: !860)
!868 = !DILocation(line: 405, column: 20, scope: !536, inlinedAt: !860)
!869 = !DILocation(line: 405, column: 9, scope: !530, inlinedAt: !860)
!870 = !DILocation(line: 407, column: 19, scope: !555, inlinedAt: !860)
!871 = distinct !DIAssignID()
!872 = !DILocation(line: 408, column: 7, scope: !555, inlinedAt: !860)
!873 = !DILocation(line: 410, column: 61, scope: !535, inlinedAt: !860)
!874 = !DILocation(line: 410, column: 25, scope: !535, inlinedAt: !860)
!875 = !DILocation(line: 0, scope: !535, inlinedAt: !860)
!876 = !DILocation(line: 411, column: 22, scope: !535, inlinedAt: !860)
!877 = !DILocation(line: 411, column: 19, scope: !535, inlinedAt: !860)
!878 = distinct !DIAssignID()
!879 = !DILocation(line: 412, column: 46, scope: !535, inlinedAt: !860)
!880 = !DILocation(line: 412, column: 44, scope: !535, inlinedAt: !860)
!881 = !DILocation(line: 412, column: 15, scope: !535, inlinedAt: !860)
!882 = !DILocation(line: 412, column: 19, scope: !535, inlinedAt: !860)
!883 = distinct !DIAssignID()
!884 = !DILocation(line: 413, column: 14, scope: !535, inlinedAt: !860)
!885 = !DILocation(line: 0, scope: !536, inlinedAt: !860)
!886 = !DILocation(line: 415, column: 3, scope: !531, inlinedAt: !860)
!887 = !DILocation(line: 459, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !848, file: !2, line: 459, column: 3)
!889 = !DILocation(line: 459, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 459, column: 3)
!891 = distinct !DILexicalBlock(scope: !888, file: !2, line: 459, column: 3)
!892 = !DILocation(line: 460, column: 1, scope: !848)
!893 = distinct !DISubprogram(name: "gsl_sf_pochrel", scope: !2, file: !2, line: 462, type: !819, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !894)
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(name: "a", arg: 1, scope: !893, file: !2, line: 462, type: !83)
!896 = !DILocalVariable(name: "x", arg: 2, scope: !893, file: !2, line: 462, type: !83)
!897 = !DILocalVariable(name: "result", scope: !893, file: !2, line: 464, type: !99)
!898 = !DILocalVariable(name: "status", scope: !893, file: !2, line: 464, type: !43)
!899 = distinct !DIAssignID()
!900 = !DILocation(line: 0, scope: !893)
!901 = !DILocation(line: 464, column: 3, scope: !893)
!902 = !DILocation(line: 464, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !893, file: !2, line: 464, column: 3)
!904 = !DILocation(line: 464, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 464, column: 3)
!906 = distinct !DILexicalBlock(scope: !903, file: !2, line: 464, column: 3)
!907 = !DILocation(line: 465, column: 1, scope: !893)
!908 = !DISubprogram(name: "gsl_sf_gammainv_e", scope: !520, file: !520, line: 86, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!43, !83, !98}
!911 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !520, file: !520, line: 47, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!43, !84, !98}
!914 = !DISubprogram(name: "gsl_sf_pow_int", scope: !915, file: !915, line: 44, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!916 = !DISubroutineType(types: !917)
!917 = !{!84, !83, !645}
!918 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !919, file: !919, line: 69, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!920 = !DISubprogram(name: "gsl_sf_psi_e", scope: !921, file: !921, line: 60, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!922 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !572, file: !572, line: 75, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubprogram(name: "tan", scope: !515, file: !515, line: 66, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
