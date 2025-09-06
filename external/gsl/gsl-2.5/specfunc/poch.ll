; ModuleID = 'poch.c'
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
  %5 = fadd double %0, %1
  %6 = fcmp ugt double %5, 0.000000e+00
  %7 = and i1 %4, %6, !dbg !112
  br i1 %7, label %10, label %8, !dbg !112

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !113, !tbaa !116
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !113
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !113, !tbaa !121
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 1) #7, !dbg !122
  br label %15, !dbg !122

10:                                               ; preds = %3
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  br i1 %11, label %12, label %13, !dbg !126

12:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !127
  br label %15, !dbg !129

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef %2), !dbg !130
  br label %15, !dbg !132

15:                                               ; preds = %8, %12, %13
  %16 = phi i32 [ 1, %8 ], [ 0, %12 ], [ %14, %13 ], !dbg !133
  ret i32 %16, !dbg !134
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
  br i1 %12, label %19, label %13, !dbg !198

13:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %0, metadata !199, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !205, metadata !DIExpression()), !dbg !206
  %14 = fcmp ogt double %0, 2.000000e+00, !dbg !208
  %15 = select i1 %14, double %0, double 2.000000e+00, !dbg !208
  %16 = tail call double @log(double noundef %15) #7, !dbg !209
  %17 = fmul double %10, %16, !dbg !210
  %18 = fcmp ogt double %17, 1.000000e-01, !dbg !211
  br i1 %18, label %19, label %64, !dbg !212

19:                                               ; preds = %13, %3
  %20 = fcmp olt double %0, 1.710000e+02, !dbg !213
  %21 = fadd double %0, %1, !dbg !214
  %22 = fcmp olt double %21, 1.710000e+02
  %23 = and i1 %20, %22, !dbg !215
  br i1 %23, label %24, label %47, !dbg !215

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !217
  %25 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %4) #7, !dbg !218
  %26 = call i32 @gsl_sf_gammainv_e(double noundef %21, ptr noundef nonnull %5) #7, !dbg !219
  %27 = load double, ptr %5, align 8, !dbg !220, !tbaa !116
  %28 = load double, ptr %4, align 8, !dbg !221, !tbaa !116
  %29 = fdiv double %27, %28, !dbg !222
  %30 = call double @log(double noundef %29) #7, !dbg !223
  %31 = fneg double %30, !dbg !224
  store double %31, ptr %2, align 8, !dbg !225, !tbaa !116
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !226
  %33 = load double, ptr %32, align 8, !dbg !226, !tbaa !121
  %34 = load double, ptr %4, align 8, !dbg !227, !tbaa !116
  %35 = call double @llvm.fabs.f64(double %34), !dbg !228
  %36 = fdiv double %33, %35, !dbg !229
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !230
  %38 = load double, ptr %37, align 8, !dbg !230, !tbaa !121
  %39 = load double, ptr %5, align 8, !dbg !231, !tbaa !116
  %40 = call double @llvm.fabs.f64(double %39), !dbg !232
  %41 = fdiv double %38, %40, !dbg !233
  %42 = fadd double %36, %41, !dbg !234
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !235
  %44 = call double @llvm.fabs.f64(double %31), !dbg !236
  %45 = fmul double %44, 0x3CC0000000000000, !dbg !237
  %46 = fadd double %45, %42, !dbg !238
  store double %46, ptr %43, align 8, !dbg !238, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !239
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !239
  br label %185

47:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !241
  %48 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %6) #7, !dbg !242
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !155, metadata !DIExpression()), !dbg !188
  %49 = call i32 @gsl_sf_lngamma_e(double noundef %21, ptr noundef nonnull %7) #7, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !156, metadata !DIExpression()), !dbg !188
  %50 = load double, ptr %7, align 8, !dbg !244, !tbaa !116
  %51 = load double, ptr %6, align 8, !dbg !245, !tbaa !116
  %52 = fsub double %50, %51, !dbg !246
  store double %52, ptr %2, align 8, !dbg !247, !tbaa !116
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !248
  %54 = load double, ptr %53, align 8, !dbg !248, !tbaa !121
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !249
  %56 = load double, ptr %55, align 8, !dbg !249, !tbaa !121
  %57 = fadd double %54, %56, !dbg !250
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !251
  %59 = call double @llvm.fabs.f64(double %52), !dbg !252
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !253
  %61 = fadd double %60, %57, !dbg !254
  store double %61, ptr %58, align 8, !dbg !254, !tbaa !121
  %62 = icmp eq i32 %48, 0, !dbg !255
  %63 = select i1 %62, i32 %49, i32 %48, !dbg !255
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !256
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !256
  br label %185

64:                                               ; preds = %13
  %65 = fcmp olt double %10, %11, !dbg !257
  %66 = fcmp ogt double %0, 1.500000e+01
  %67 = and i1 %66, %65, !dbg !258
  br i1 %67, label %68, label %166, !dbg !258

68:                                               ; preds = %64
  %69 = fdiv double %1, %0, !dbg !259
  tail call void @llvm.dbg.value(metadata double %69, metadata !157, metadata !DIExpression()), !dbg !191
  %70 = fadd double %69, 1.000000e+00, !dbg !260
  tail call void @llvm.dbg.value(metadata double %70, metadata !160, metadata !DIExpression()), !dbg !191
  %71 = fmul double %70, %70, !dbg !261
  %72 = fmul double %70, %71, !dbg !262
  tail call void @llvm.dbg.value(metadata double %72, metadata !161, metadata !DIExpression()), !dbg !191
  %73 = fmul double %70, %72, !dbg !263
  %74 = fmul double %70, %73, !dbg !264
  tail call void @llvm.dbg.value(metadata double %74, metadata !162, metadata !DIExpression()), !dbg !191
  %75 = fmul double %70, %74, !dbg !265
  %76 = fmul double %70, %75, !dbg !266
  tail call void @llvm.dbg.value(metadata double %76, metadata !163, metadata !DIExpression()), !dbg !191
  %77 = fneg double %69, !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !164, metadata !DIExpression()), !dbg !191
  %78 = fadd double %69, 3.000000e+00, !dbg !268
  %79 = fmul double %69, %78, !dbg !269
  %80 = fadd double %79, 3.000000e+00, !dbg !270
  %81 = fmul double %80, %77, !dbg !271
  %82 = fdiv double %81, %72, !dbg !272
  tail call void @llvm.dbg.value(metadata double %82, metadata !165, metadata !DIExpression()), !dbg !191
  %83 = fadd double %69, 5.000000e+00, !dbg !273
  %84 = fmul double %69, %83, !dbg !274
  %85 = fadd double %84, 1.000000e+01, !dbg !275
  %86 = fmul double %69, %85, !dbg !276
  %87 = fadd double %86, 1.000000e+01, !dbg !277
  %88 = fmul double %69, %87, !dbg !278
  %89 = fadd double %88, 5.000000e+00, !dbg !279
  %90 = fmul double %89, %77, !dbg !280
  %91 = fdiv double %90, %74, !dbg !281
  tail call void @llvm.dbg.value(metadata double %91, metadata !166, metadata !DIExpression()), !dbg !191
  %92 = fadd double %69, 7.000000e+00, !dbg !282
  %93 = fmul double %69, %92, !dbg !283
  %94 = fadd double %93, 2.100000e+01, !dbg !284
  %95 = fmul double %69, %94, !dbg !285
  %96 = fadd double %95, 3.500000e+01, !dbg !286
  %97 = fmul double %69, %96, !dbg !287
  %98 = fadd double %97, 3.500000e+01, !dbg !288
  %99 = fmul double %69, %98, !dbg !289
  %100 = fadd double %99, 2.100000e+01, !dbg !290
  %101 = fmul double %69, %100, !dbg !291
  %102 = fadd double %101, 7.000000e+00, !dbg !292
  %103 = fmul double %102, %77, !dbg !293
  %104 = fdiv double %103, %76, !dbg !294
  tail call void @llvm.dbg.value(metadata double %104, metadata !167, metadata !DIExpression()), !dbg !191
  %105 = tail call double @gsl_sf_pow_int(double noundef %70, i32 noundef 8) #7, !dbg !295
  tail call void @llvm.dbg.value(metadata double %105, metadata !168, metadata !DIExpression()), !dbg !191
  %106 = fdiv double 1.000000e+00, %105, !dbg !296
  %107 = fadd double %106, -1.000000e+00, !dbg !297
  tail call void @llvm.dbg.value(metadata double %107, metadata !169, metadata !DIExpression()), !dbg !191
  %108 = fmul double %70, %105, !dbg !298
  %109 = fdiv double 1.000000e+00, %108, !dbg !299
  %110 = fadd double %109, -1.000000e+00, !dbg !300
  tail call void @llvm.dbg.value(metadata double %110, metadata !170, metadata !DIExpression()), !dbg !191
  %111 = fmul double %0, %0, !dbg !301
  %112 = fmul double %111, %0, !dbg !302
  %113 = fmul double %112, %0, !dbg !303
  tail call void @llvm.dbg.value(metadata double %113, metadata !171, metadata !DIExpression()), !dbg !191
  %114 = fmul double %113, %0, !dbg !304
  %115 = fmul double %114, %0, !dbg !305
  tail call void @llvm.dbg.value(metadata double %115, metadata !172, metadata !DIExpression()), !dbg !191
  %116 = fmul double %0, 3.000000e+01, !dbg !306
  %117 = fmul double %116, %0, !dbg !307
  %118 = fdiv double %82, %117, !dbg !308
  %119 = fdiv double %69, %70, !dbg !309
  %120 = fsub double %118, %119, !dbg !309
  %121 = fmul double %113, 1.050000e+02, !dbg !310
  %122 = fdiv double %91, %121, !dbg !311
  %123 = fadd double %120, %122, !dbg !312
  %124 = fmul double %115, 1.400000e+02, !dbg !313
  %125 = fdiv double %104, %124, !dbg !314
  %126 = fadd double %123, %125, !dbg !315
  tail call void @llvm.dbg.value(metadata double %126, metadata !173, metadata !DIExpression()), !dbg !191
  %127 = fmul double %115, 9.900000e+01, !dbg !316
  %128 = fmul double %127, %0, !dbg !317
  %129 = fmul double %128, %0, !dbg !318
  %130 = fdiv double %107, %129, !dbg !319
  %131 = fmul double %110, 0x3F5F6AB0D9993C7D, !dbg !320
  %132 = fmul double %113, %115, !dbg !321
  %133 = fdiv double %131, %132, !dbg !322
  %134 = fsub double %130, %133, !dbg !323
  tail call void @llvm.dbg.value(metadata double %134, metadata !174, metadata !DIExpression()), !dbg !191
  %135 = fadd double %126, %134, !dbg !324
  %136 = fmul double %0, 1.200000e+01, !dbg !325
  %137 = fdiv double %135, %136, !dbg !326
  tail call void @llvm.dbg.value(metadata double %137, metadata !175, metadata !DIExpression()), !dbg !191
  %138 = fdiv double %0, 0x4005BF0A8B145769, !dbg !327
  %139 = tail call double @log(double noundef %138) #7, !dbg !328
  %140 = fmul double %139, %1, !dbg !329
  tail call void @llvm.dbg.value(metadata double %140, metadata !176, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !330
  %141 = call i32 @gsl_sf_log_1plusx_e(double noundef %69, ptr noundef nonnull %8) #7, !dbg !331
  %142 = fadd double %0, %1, !dbg !332
  %143 = fadd double %142, -5.000000e-01, !dbg !333
  %144 = load double, ptr %8, align 8, !dbg !334, !tbaa !116
  %145 = fmul double %143, %144, !dbg !335
  tail call void @llvm.dbg.value(metadata double %145, metadata !177, metadata !DIExpression()), !dbg !191
  %146 = fadd double %140, %145, !dbg !336
  %147 = fadd double %146, %137, !dbg !337
  store double %147, ptr %2, align 8, !dbg !338, !tbaa !116
  %148 = call double @llvm.fabs.f64(double %140), !dbg !339
  %149 = fmul double %148, 0x3CB0000000000000, !dbg !340
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !341
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !342
  %152 = load double, ptr %151, align 8, !dbg !342, !tbaa !121
  %153 = fmul double %143, %152, !dbg !343
  %154 = call double @llvm.fabs.f64(double %153), !dbg !344
  %155 = fadd double %149, %154, !dbg !345
  %156 = call double @llvm.fabs.f64(double %144), !dbg !346
  %157 = fmul double %156, 0x3CB0000000000000, !dbg !347
  %158 = call double @llvm.fabs.f64(double %0), !dbg !348
  %159 = fadd double %158, %10, !dbg !349
  %160 = fadd double %159, 5.000000e-01, !dbg !350
  %161 = fmul double %160, %157, !dbg !351
  %162 = fadd double %161, %155, !dbg !352
  %163 = call double @llvm.fabs.f64(double %147), !dbg !353
  %164 = fmul double %163, 0x3CC0000000000000, !dbg !354
  %165 = fadd double %162, %164, !dbg !355
  store double %165, ptr %150, align 8, !dbg !355, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !356
  br label %185

166:                                              ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !357
  %167 = call fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef nonnull %9), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !181, metadata !DIExpression()), !dbg !193
  %168 = load double, ptr %9, align 8, !dbg !359, !tbaa !116
  %169 = fmul double %168, %1, !dbg !360
  tail call void @llvm.dbg.value(metadata double %169, metadata !182, metadata !DIExpression()), !dbg !193
  %170 = call i32 @gsl_sf_log_1plusx_e(double noundef %169, ptr noundef %2) #7, !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !183, metadata !DIExpression()), !dbg !193
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !362
  %172 = load double, ptr %171, align 8, !dbg !362, !tbaa !121
  %173 = fmul double %172, %1, !dbg !363
  %174 = fadd double %169, 1.000000e+00, !dbg !364
  %175 = fdiv double %173, %174, !dbg !365
  %176 = call double @llvm.fabs.f64(double %175), !dbg !366
  %177 = fmul double %176, 2.000000e+00, !dbg !367
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !368
  %179 = load double, ptr %2, align 8, !dbg !369, !tbaa !116
  %180 = call double @llvm.fabs.f64(double %179), !dbg !370
  %181 = fmul double %180, 0x3CC0000000000000, !dbg !371
  %182 = fadd double %177, %181, !dbg !372
  store double %182, ptr %178, align 8, !dbg !372, !tbaa !121
  %183 = icmp eq i32 %170, 0, !dbg !373
  %184 = select i1 %183, i32 %167, i32 %170, !dbg !373
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !374
  br label %185

185:                                              ; preds = %166, %68, %47, %24
  %186 = phi i32 [ 0, %24 ], [ %63, %47 ], [ 0, %68 ], [ %184, %166 ], !dbg !375
  ret i32 %186, !dbg !376
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !377 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !386, metadata !DIExpression(), metadata !416, metadata ptr %5, metadata !DIExpression()), !dbg !417
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !404, metadata !DIExpression(), metadata !418, metadata ptr %6, metadata !DIExpression()), !dbg !419
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !420, metadata ptr %7, metadata !DIExpression()), !dbg !421
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !411, metadata !DIExpression(), metadata !422, metadata ptr %8, metadata !DIExpression()), !dbg !421
  %9 = alloca double, align 8, !DIAssignID !423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !412, metadata !DIExpression(), metadata !423, metadata ptr %9, metadata !DIExpression()), !dbg !421
  %10 = alloca double, align 8, !DIAssignID !424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !413, metadata !DIExpression(), metadata !424, metadata ptr %10, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata double %0, metadata !382, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %1, metadata !383, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !385, metadata !DIExpression()), !dbg !425
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !426
  br i1 %11, label %12, label %13, !dbg !427

12:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !428, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !431
  br label %130, !dbg !432

13:                                               ; preds = %4
  %14 = fcmp ogt double %0, 0.000000e+00, !dbg !433
  %15 = fadd double %0, %1
  %16 = fcmp ogt double %15, 0.000000e+00
  %17 = and i1 %14, %16, !dbg !434
  br i1 %17, label %18, label %20, !dbg !434

18:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !435, !tbaa !430
  %19 = tail call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef %2), !dbg !437
  br label %130, !dbg !438

20:                                               ; preds = %13
  %21 = fcmp ole double %0, 0.000000e+00, !dbg !439
  %22 = tail call double @llvm.floor.f64(double %0)
  %23 = fcmp oeq double %22, %0
  %24 = and i1 %21, %23, !dbg !440
  br i1 %24, label %25, label %59, !dbg !440

25:                                               ; preds = %20
  %26 = fcmp olt double %15, 0.000000e+00, !dbg !441
  %27 = tail call double @llvm.floor.f64(double %1)
  %28 = fcmp oeq double %27, %1
  %29 = and i1 %26, %28, !dbg !442
  br i1 %29, label %30, label %46, !dbg !442

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !443
  %31 = fneg double %0, !dbg !444
  %32 = fneg double %1, !dbg !445
  %33 = call fastcc i32 @lnpoch_pos(double noundef %31, double noundef %32, ptr noundef nonnull %5), !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !393, metadata !DIExpression()), !dbg !417
  %34 = fdiv double %0, %15, !dbg !447
  %35 = call double @log(double noundef %34) #7, !dbg !448
  tail call void @llvm.dbg.value(metadata double %35, metadata !394, metadata !DIExpression()), !dbg !417
  %36 = call double @fmod(double noundef %1, double noundef 2.000000e+00) #7, !dbg !449
  %37 = fcmp oeq double %36, 0.000000e+00, !dbg !450
  %38 = select i1 %37, double 1.000000e+00, double -1.000000e+00, !dbg !451
  tail call void @llvm.dbg.value(metadata double %38, metadata !395, metadata !DIExpression()), !dbg !417
  %39 = load double, ptr %5, align 8, !dbg !452, !tbaa !116
  %40 = fsub double %35, %39, !dbg !453
  store double %40, ptr %2, align 8, !dbg !454, !tbaa !116
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !455
  %42 = load double, ptr %41, align 8, !dbg !455, !tbaa !121
  %43 = fmul double %35, 0x3CC0000000000000, !dbg !456
  %44 = fadd double %43, %42, !dbg !457
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !458
  store double %44, ptr %45, align 8, !dbg !459, !tbaa !121
  store double %38, ptr %3, align 8, !dbg !460, !tbaa !430
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !461
  br label %130

46:                                               ; preds = %25
  %47 = fcmp oeq double %15, 0.000000e+00, !dbg !462
  br i1 %47, label %48, label %57, !dbg !463

48:                                               ; preds = %46
  %49 = fneg double %0, !dbg !464
  %50 = fsub double 1.000000e+00, %0, !dbg !465
  %51 = tail call i32 @gsl_sf_lngamma_sgn_e(double noundef %50, ptr noundef %2, ptr noundef %3) #7, !dbg !466
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !396, metadata !DIExpression()), !dbg !467
  %52 = tail call double @fmod(double noundef %49, double noundef 2.000000e+00) #7, !dbg !468
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !469
  tail call void @llvm.dbg.value(metadata double poison, metadata !399, metadata !DIExpression()), !dbg !467
  %54 = load double, ptr %3, align 8, !dbg !470, !tbaa !430
  %55 = fneg double %54, !dbg !470
  %56 = select i1 %53, double %54, double %55, !dbg !470
  store double %56, ptr %3, align 8, !dbg !470, !tbaa !430
  br label %130

57:                                               ; preds = %46
  store double 0xFFF0000000000000, ptr %2, align 8, !dbg !471, !tbaa !116
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !473
  store double 0.000000e+00, ptr %58, align 8, !dbg !474, !tbaa !121
  store double 1.000000e+00, ptr %3, align 8, !dbg !475, !tbaa !430
  br label %130, !dbg !476

59:                                               ; preds = %20
  %60 = fcmp olt double %0, 0.000000e+00, !dbg !477
  %61 = fcmp olt double %15, 0.000000e+00
  %62 = and i1 %60, %61, !dbg !478
  br i1 %62, label %63, label %99, !dbg !478

63:                                               ; preds = %59
  %64 = fsub double 1.000000e+00, %0, !dbg !479
  %65 = fmul double %64, 0x400921FB54442D18, !dbg !480
  %66 = tail call double @sin(double noundef %65) #7, !dbg !481
  tail call void @llvm.dbg.value(metadata double %66, metadata !400, metadata !DIExpression()), !dbg !482
  %67 = fsub double %64, %1, !dbg !483
  %68 = fmul double %67, 0x400921FB54442D18, !dbg !484
  %69 = tail call double @sin(double noundef %68) #7, !dbg !485
  tail call void @llvm.dbg.value(metadata double %69, metadata !403, metadata !DIExpression()), !dbg !482
  %70 = fcmp oeq double %66, 0.000000e+00, !dbg !486
  %71 = fcmp oeq double %69, 0.000000e+00
  %72 = select i1 %70, i1 true, i1 %71, !dbg !487
  br i1 %72, label %73, label %75, !dbg !487

73:                                               ; preds = %63
  store double 0.000000e+00, ptr %3, align 8, !dbg !488, !tbaa !430
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !490, !tbaa !116
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !490
  store double 0x7FF8000000000000, ptr %74, align 8, !dbg !490, !tbaa !121
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 349, i32 noundef 1) #7, !dbg !492
  br label %130, !dbg !492

75:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !494
  %76 = fneg double %1, !dbg !495
  %77 = call fastcc i32 @lnpoch_pos(double noundef %64, double noundef %76, ptr noundef nonnull %6), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !407, metadata !DIExpression()), !dbg !419
  %78 = fdiv double %66, %69, !dbg !497
  %79 = call double @llvm.fabs.f64(double %78), !dbg !498
  %80 = call double @log(double noundef %79) #7, !dbg !499
  tail call void @llvm.dbg.value(metadata double %80, metadata !408, metadata !DIExpression()), !dbg !419
  %81 = load double, ptr %6, align 8, !dbg !500, !tbaa !116
  %82 = fsub double %80, %81, !dbg !501
  store double %82, ptr %2, align 8, !dbg !502, !tbaa !116
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !503
  %84 = load double, ptr %83, align 8, !dbg !503, !tbaa !121
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !504
  %86 = call double @llvm.fabs.f64(double %64), !dbg !505
  %87 = call double @llvm.fabs.f64(double %67), !dbg !506
  %88 = fadd double %86, %87, !dbg !507
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !508
  %90 = call double @llvm.fabs.f64(double %80), !dbg !509
  %91 = fmul double %89, %90, !dbg !510
  %92 = fadd double %91, %84, !dbg !511
  %93 = call double @llvm.fabs.f64(double %82), !dbg !512
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !513
  %95 = fadd double %92, %94, !dbg !514
  store double %95, ptr %85, align 8, !dbg !514, !tbaa !121
  %96 = fmul double %66, %69, !dbg !515
  %97 = fcmp oge double %96, 0.000000e+00, !dbg !515
  %98 = select i1 %97, double 1.000000e+00, double -1.000000e+00, !dbg !515
  store double %98, ptr %3, align 8, !dbg !516, !tbaa !430
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !517
  br label %130

99:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !518
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7, !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7, !dbg !520
  %100 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %15, ptr noundef nonnull %7, ptr noundef nonnull %9) #7, !dbg !521
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !414, metadata !DIExpression()), !dbg !421
  %101 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %10) #7, !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !415, metadata !DIExpression()), !dbg !421
  %102 = icmp eq i32 %100, 0, !dbg !523
  %103 = icmp eq i32 %101, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !525
  br i1 %104, label %105, label %121, !dbg !525

105:                                              ; preds = %99
  %106 = load double, ptr %7, align 8, !dbg !526, !tbaa !116
  %107 = load double, ptr %8, align 8, !dbg !528, !tbaa !116
  %108 = fsub double %106, %107, !dbg !529
  store double %108, ptr %2, align 8, !dbg !530, !tbaa !116
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !531
  %110 = load double, ptr %109, align 8, !dbg !531, !tbaa !121
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !532
  %112 = load double, ptr %111, align 8, !dbg !532, !tbaa !121
  %113 = fadd double %110, %112, !dbg !533
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !534
  %115 = call double @llvm.fabs.f64(double %108), !dbg !535
  %116 = fmul double %115, 0x3CC0000000000000, !dbg !536
  %117 = fadd double %116, %113, !dbg !537
  store double %117, ptr %114, align 8, !dbg !537, !tbaa !121
  %118 = load double, ptr %10, align 8, !dbg !538, !tbaa !430
  %119 = load double, ptr %9, align 8, !dbg !539, !tbaa !430
  %120 = fmul double %118, %119, !dbg !540
  store double %120, ptr %3, align 8, !dbg !541, !tbaa !430
  br label %128, !dbg !542

121:                                              ; preds = %99
  %122 = icmp eq i32 %100, 1, !dbg !543
  %123 = icmp eq i32 %101, 1
  %124 = select i1 %122, i1 true, i1 %123, !dbg !545
  br i1 %124, label %125, label %127, !dbg !545

125:                                              ; preds = %121
  store double 0.000000e+00, ptr %3, align 8, !dbg !546, !tbaa !430
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !548, !tbaa !116
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !548
  store double 0x7FF8000000000000, ptr %126, align 8, !dbg !548, !tbaa !121
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 380, i32 noundef 1) #7, !dbg !550
  br label %128, !dbg !550

127:                                              ; preds = %121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !552
  store double 0.000000e+00, ptr %3, align 8, !dbg !554, !tbaa !430
  br label %128, !dbg !555

128:                                              ; preds = %127, %125, %105
  %129 = phi i32 [ 0, %105 ], [ 1, %125 ], [ -1, %127 ], !dbg !556
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7, !dbg !557
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !557
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !557
  br label %130

130:                                              ; preds = %73, %75, %128, %12, %18, %30, %48, %57
  %131 = phi i32 [ 0, %12 ], [ %19, %18 ], [ %33, %30 ], [ %51, %48 ], [ 0, %57 ], [ %129, %128 ], [ 1, %73 ], [ %77, %75 ], !dbg !558
  ret i32 %131, !dbg !559
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !560 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !564 double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !565 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !569 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_poch_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !570 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !583, metadata ptr %4, metadata !DIExpression()), !dbg !584
  %5 = alloca double, align 8, !DIAssignID !585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !578, metadata !DIExpression(), metadata !585, metadata ptr %5, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %0, metadata !572, metadata !DIExpression()), !dbg !586
  tail call void @llvm.dbg.value(metadata double %1, metadata !573, metadata !DIExpression()), !dbg !586
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !586
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !587
  br i1 %6, label %7, label %9, !dbg !588

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !589, !tbaa !116
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !591
  store double 0.000000e+00, ptr %8, align 8, !dbg !592, !tbaa !121
  br label %30, !dbg !593

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !594
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7, !dbg !595
  %10 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !596
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !579, metadata !DIExpression()), !dbg !584
  %11 = load double, ptr %4, align 8, !dbg !597, !tbaa !116
  %12 = fcmp oeq double %11, 0xFFF0000000000000, !dbg !598
  br i1 %12, label %13, label %14, !dbg !599

13:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !600
  br label %28, !dbg !602

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !603
  %16 = load double, ptr %15, align 8, !dbg !603, !tbaa !121
  %17 = call i32 @gsl_sf_exp_err_e(double noundef %11, double noundef %16, ptr noundef %2) #7, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !580, metadata !DIExpression()), !dbg !605
  %18 = load double, ptr %5, align 8, !dbg !606, !tbaa !430
  %19 = load double, ptr %2, align 8, !dbg !607, !tbaa !116
  %20 = fmul double %18, %19, !dbg !607
  store double %20, ptr %2, align 8, !dbg !607, !tbaa !116
  %21 = call double @llvm.fabs.f64(double %20), !dbg !608
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !609
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !610
  %24 = load double, ptr %23, align 8, !dbg !611, !tbaa !121
  %25 = fadd double %24, %22, !dbg !611
  store double %25, ptr %23, align 8, !dbg !611, !tbaa !121
  %26 = icmp eq i32 %17, 0, !dbg !612
  %27 = select i1 %26, i32 %10, i32 %17, !dbg !612
  br label %28

28:                                               ; preds = %14, %13
  %29 = phi i32 [ %10, %13 ], [ %27, %14 ], !dbg !613
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7, !dbg !614
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !614
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i32 [ 0, %7 ], [ %29, %28 ], !dbg !615
  ret i32 %31, !dbg !616
}

declare !dbg !617 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_pochrel_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !619 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !626, metadata !DIExpression(), metadata !634, metadata ptr %4, metadata !DIExpression()), !dbg !635
  %5 = alloca double, align 8, !DIAssignID !636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !629, metadata !DIExpression(), metadata !636, metadata ptr %5, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %0, metadata !621, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata double %1, metadata !622, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !623, metadata !DIExpression()), !dbg !637
  %6 = tail call double @llvm.fabs.f64(double %1), !dbg !638
  tail call void @llvm.dbg.value(metadata double %6, metadata !624, metadata !DIExpression()), !dbg !637
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !639
  tail call void @llvm.dbg.value(metadata double %7, metadata !625, metadata !DIExpression()), !dbg !637
  %8 = fmul double %7, 1.000000e-01, !dbg !640
  %9 = fcmp ogt double %6, %8, !dbg !641
  br i1 %9, label %16, label %10, !dbg !642

10:                                               ; preds = %3
  %11 = fcmp ogt double %7, 2.000000e+00, !dbg !643
  %12 = select i1 %11, double %7, double 2.000000e+00, !dbg !643
  %13 = tail call double @log(double noundef %12) #7, !dbg !644
  %14 = fmul double %6, %13, !dbg !645
  %15 = fcmp ogt double %14, 1.000000e-01, !dbg !646
  br i1 %15, label %16, label %41, !dbg !647

16:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !648
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7, !dbg !649
  %17 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !630, metadata !DIExpression()), !dbg !635
  %18 = load double, ptr %4, align 8, !dbg !651, !tbaa !116
  %19 = fcmp ogt double %18, 0x40862E42FEFA39EF, !dbg !652
  br i1 %19, label %20, label %22, !dbg !653

20:                                               ; preds = %16
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !654, !tbaa !116
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !654
  store double 0x7FF0000000000000, ptr %21, align 8, !dbg !654, !tbaa !121
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 432, i32 noundef 16) #7, !dbg !657
  br label %39, !dbg !657

22:                                               ; preds = %16
  %23 = call double @exp(double noundef %18) #7, !dbg !659
  tail call void @llvm.dbg.value(metadata double %23, metadata !631, metadata !DIExpression()), !dbg !660
  %24 = load double, ptr %5, align 8, !dbg !661, !tbaa !430
  %25 = fmul double %23, %24, !dbg !662
  %26 = fadd double %25, -1.000000e+00, !dbg !663
  %27 = fdiv double %26, %1, !dbg !664
  store double %27, ptr %2, align 8, !dbg !665, !tbaa !116
  %28 = call double @llvm.fabs.f64(double %27), !dbg !666
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !667
  %30 = load double, ptr %29, align 8, !dbg !667, !tbaa !121
  %31 = fadd double %30, 0x3CC0000000000000, !dbg !668
  %32 = fmul double %31, %28, !dbg !669
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !670
  %34 = call double @llvm.fabs.f64(double %25), !dbg !671
  %35 = fadd double %34, 1.000000e+00, !dbg !672
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !673
  %37 = fdiv double %36, %6, !dbg !674
  %38 = fadd double %32, %37, !dbg !675
  store double %38, ptr %33, align 8, !dbg !675, !tbaa !121
  br label %39

39:                                               ; preds = %22, %20
  %40 = phi i32 [ 16, %20 ], [ %17, %22 ], !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7, !dbg !677
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !677
  br label %43

41:                                               ; preds = %10
  %42 = tail call fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef %2), !dbg !678
  br label %43, !dbg !680

43:                                               ; preds = %39, %41
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ], !dbg !681
  ret i32 %44, !dbg !682
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !683 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pochrel_smallx(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !684 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !698, metadata !DIExpression(), metadata !732, metadata ptr %4, metadata !DIExpression()), !dbg !733
  %5 = alloca [24 x double], align 16, !DIAssignID !734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !734, metadata ptr %5, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata double %0, metadata !686, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata double %1, metadata !687, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata double 0x5FBA20BD700C2C3D, metadata !689, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata double 0xC0425E4F7B2737FA, metadata !690, metadata !DIExpression()), !dbg !736
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !737
  br i1 %6, label %7, label %9, !dbg !738

7:                                                ; preds = %3
  %8 = tail call i32 @gsl_sf_psi_e(double noundef %0, ptr noundef %2) #7, !dbg !739
  br label %210, !dbg !741

9:                                                ; preds = %3
  %10 = fcmp olt double %0, -5.000000e-01, !dbg !742
  %11 = fsub double 1.000000e+00, %0, !dbg !743
  %12 = fsub double %11, %1, !dbg !743
  %13 = select i1 %10, double %12, double %0, !dbg !743
  tail call void @llvm.dbg.value(metadata double %13, metadata !691, metadata !DIExpression()), !dbg !733
  %14 = fcmp olt double %13, 1.000000e+01, !dbg !744
  %15 = fsub double 1.100000e+01, %13, !dbg !745
  %16 = select i1 %14, double %15, double 0.000000e+00, !dbg !745
  %17 = fptosi double %16 to i32, !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !694, metadata !DIExpression()), !dbg !733
  %18 = sitofp i32 %17 to double, !dbg !747
  %19 = fadd double %13, %18, !dbg !748
  tail call void @llvm.dbg.value(metadata double %19, metadata !696, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !749
  %20 = fadd double %1, -1.000000e+00, !dbg !750
  %21 = fmul double %20, 5.000000e-01, !dbg !751
  %22 = fadd double %21, %19, !dbg !752
  tail call void @llvm.dbg.value(metadata double %22, metadata !701, metadata !DIExpression()), !dbg !733
  %23 = tail call double @log(double noundef %22) #7, !dbg !753
  tail call void @llvm.dbg.value(metadata double %23, metadata !702, metadata !DIExpression()), !dbg !733
  %24 = fmul double %23, %1, !dbg !754
  tail call void @llvm.dbg.value(metadata double %24, metadata !703, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !704, metadata !DIExpression()), !dbg !733
  %25 = fcmp olt double %22, 0x5FBA20BD700C2C3D, !dbg !755
  br i1 %25, label %26, label %115, !dbg !756

26:                                               ; preds = %9
  %27 = fdiv double 0x40325E4F7B2737FA, %23, !dbg !757
  %28 = fadd double %27, 1.000000e+00, !dbg !758
  %29 = fptosi double %28 to i32, !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !705, metadata !DIExpression()), !dbg !735
  %30 = fdiv double 1.000000e+00, %22, !dbg !760
  %31 = fdiv double %30, %22, !dbg !761
  tail call void @llvm.dbg.value(metadata double %31, metadata !708, metadata !DIExpression()), !dbg !735
  %32 = fadd double %1, 1.000000e+00, !dbg !762
  tail call void @llvm.dbg.value(metadata double poison, metadata !709, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata double %31, metadata !710, metadata !DIExpression()), !dbg !735
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #7, !dbg !763
  %33 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 1, !dbg !764
  store double 1.000000e+00, ptr %33, align 8, !dbg !765, !tbaa !430, !DIAssignID !766
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !766, metadata ptr %33, metadata !DIExpression()), !dbg !735
  %34 = fmul double %32, -5.000000e-01, !dbg !767
  %35 = fdiv double %34, 1.200000e+01, !dbg !768
  %36 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 2, !dbg !769
  store double %35, ptr %36, align 16, !dbg !770, !tbaa !430, !DIAssignID !771
  call void @llvm.dbg.assign(metadata double %35, metadata !711, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !771, metadata ptr %36, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata double poison, metadata !704, metadata !DIExpression()), !dbg !733
  %37 = icmp slt i32 %29, 21, !dbg !772
  br i1 %37, label %38, label %44, !dbg !774

38:                                               ; preds = %26
  %39 = fmul double %35, %31, !dbg !775
  tail call void @llvm.dbg.value(metadata double %39, metadata !704, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double %39, metadata !704, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double %31, metadata !710, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata i32 2, metadata !715, metadata !DIExpression()), !dbg !735
  %40 = icmp slt i32 %29, 2, !dbg !776
  br i1 %40, label %113, label %41, !dbg !777

41:                                               ; preds = %38
  %42 = add nuw nsw i32 %29, 1, !dbg !777
  %43 = zext nneg i32 %42 to i64, !dbg !776
  br label %45, !dbg !777

44:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !778
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 7) #7, !dbg !780
  tail call void @llvm.dbg.value(metadata double poison, metadata !704, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #7, !dbg !782
  br label %208

45:                                               ; preds = %41, %90
  %46 = phi i64 [ 0, %41 ], [ %112, %90 ]
  %47 = phi i64 [ 2, %41 ], [ %50, %90 ]
  %48 = phi double [ %39, %41 ], [ %110, %90 ]
  %49 = phi double [ %31, %41 ], [ %108, %90 ]
  tail call void @llvm.dbg.value(metadata double %48, metadata !704, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double %49, metadata !710, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !715, metadata !DIExpression()), !dbg !735
  %50 = add nuw nsw i64 %47, 1, !dbg !783
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !717, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata i32 1, metadata !716, metadata !DIExpression()), !dbg !735
  %51 = and i64 %46, 1, !dbg !785
  %52 = icmp eq i64 %46, -1, !dbg !785
  br i1 %52, label %77, label %53, !dbg !785

53:                                               ; preds = %45
  %54 = and i64 %46, -2, !dbg !785
  br label %55, !dbg !785

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 1, %53 ], [ %74, %55 ]
  %57 = phi double [ 0.000000e+00, %53 ], [ %73, %55 ]
  %58 = phi i64 [ 0, %53 ], [ %75, %55 ]
  tail call void @llvm.dbg.value(metadata double %57, metadata !717, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !716, metadata !DIExpression()), !dbg !735
  %59 = sub nsw i64 %50, %56, !dbg !787
  %60 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %59, !dbg !790
  %61 = load double, ptr %60, align 8, !dbg !790, !tbaa !430
  %62 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %56, !dbg !791
  %63 = load double, ptr %62, align 8, !dbg !791, !tbaa !430
  %64 = fmul double %61, %63, !dbg !792
  %65 = fadd double %57, %64, !dbg !793
  tail call void @llvm.dbg.value(metadata double %65, metadata !717, metadata !DIExpression()), !dbg !784
  %66 = add nuw nsw i64 %56, 1, !dbg !794
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !716, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata double %65, metadata !717, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !716, metadata !DIExpression()), !dbg !735
  %67 = sub nsw i64 %47, %56, !dbg !787
  %68 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %67, !dbg !790
  %69 = load double, ptr %68, align 8, !dbg !790, !tbaa !430
  %70 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %66, !dbg !791
  %71 = load double, ptr %70, align 8, !dbg !791, !tbaa !430
  %72 = fmul double %69, %71, !dbg !792
  %73 = fadd double %65, %72, !dbg !793
  tail call void @llvm.dbg.value(metadata double %73, metadata !717, metadata !DIExpression()), !dbg !784
  %74 = add nuw nsw i64 %56, 2, !dbg !794
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !716, metadata !DIExpression()), !dbg !735
  %75 = add i64 %58, 2, !dbg !785
  %76 = icmp eq i64 %58, %54, !dbg !785
  br i1 %76, label %77, label %55, !dbg !785, !llvm.loop !795

77:                                               ; preds = %55, %45
  %78 = phi double [ undef, %45 ], [ %73, %55 ]
  %79 = phi i64 [ 1, %45 ], [ %74, %55 ]
  %80 = phi double [ 0.000000e+00, %45 ], [ %73, %55 ]
  %81 = icmp eq i64 %51, 0, !dbg !785
  br i1 %81, label %90, label %82, !dbg !785

82:                                               ; preds = %77
  tail call void @llvm.dbg.value(metadata double %80, metadata !717, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !716, metadata !DIExpression()), !dbg !735
  %83 = sub nsw i64 %50, %79, !dbg !787
  %84 = getelementptr inbounds [21 x double], ptr @bern, i64 0, i64 %83, !dbg !790
  %85 = load double, ptr %84, align 8, !dbg !790, !tbaa !430
  %86 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %79, !dbg !791
  %87 = load double, ptr %86, align 8, !dbg !791, !tbaa !430
  %88 = fmul double %85, %87, !dbg !792
  %89 = fadd double %80, %88, !dbg !793
  tail call void @llvm.dbg.value(metadata double %89, metadata !717, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !716, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !735
  br label %90, !dbg !798

90:                                               ; preds = %77, %82
  %91 = phi double [ %78, %77 ], [ %89, %82 ], !dbg !793
  %92 = fmul double %34, %91, !dbg !798
  %93 = trunc i64 %47 to i32, !dbg !799
  %94 = sitofp i32 %93 to double, !dbg !799
  %95 = fdiv double %92, %94, !dbg !800
  %96 = getelementptr inbounds [24 x double], ptr %5, i64 0, i64 %50, !dbg !801
  store double %95, ptr %96, align 8, !dbg !802, !tbaa !430
  %97 = shl nuw nsw i64 %47, 1, !dbg !803
  %98 = trunc i64 %97 to i32, !dbg !804
  %99 = add i32 %98, -2, !dbg !804
  %100 = sitofp i32 %99 to double, !dbg !804
  %101 = fsub double %100, %1, !dbg !805
  %102 = trunc i64 %97 to i32, !dbg !806
  %103 = add i32 %102, -1, !dbg !806
  %104 = sitofp i32 %103 to double, !dbg !806
  %105 = fsub double %104, %1, !dbg !807
  %106 = fmul double %101, %105, !dbg !808
  %107 = fmul double %31, %106, !dbg !809
  %108 = fmul double %49, %107, !dbg !810
  tail call void @llvm.dbg.value(metadata double %108, metadata !710, metadata !DIExpression()), !dbg !735
  %109 = fmul double %108, %95, !dbg !811
  %110 = fadd double %48, %109, !dbg !812
  tail call void @llvm.dbg.value(metadata double %110, metadata !704, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !715, metadata !DIExpression()), !dbg !735
  %111 = icmp eq i64 %50, %43, !dbg !776
  %112 = add i64 %46, 1, !dbg !777
  br i1 %111, label %113, label %45, !dbg !777, !llvm.loop !813

113:                                              ; preds = %90, %38
  %114 = phi double [ %39, %38 ], [ %110, %90 ], !dbg !735
  tail call void @llvm.dbg.value(metadata double %114, metadata !704, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #7, !dbg !782
  br label %115

115:                                              ; preds = %113, %9
  %116 = phi double [ %114, %113 ], [ 0.000000e+00, %9 ], !dbg !733
  tail call void @llvm.dbg.value(metadata double %116, metadata !704, metadata !DIExpression()), !dbg !733
  %117 = call i32 @gsl_sf_expm1_e(double noundef %24, ptr noundef nonnull %4) #7, !dbg !815
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !699, metadata !DIExpression()), !dbg !733
  %118 = icmp eq i32 %117, 0, !dbg !816
  br i1 %118, label %120, label %119, !dbg !818

119:                                              ; preds = %115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !819
  br label %208, !dbg !821

120:                                              ; preds = %115
  %121 = load double, ptr %4, align 8, !dbg !822, !tbaa !116
  %122 = fdiv double %121, %24, !dbg !823
  call void @llvm.dbg.assign(metadata double %122, metadata !698, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !824, metadata ptr %4, metadata !DIExpression()), !dbg !733
  %123 = fmul double %20, %116, !dbg !825
  tail call void @llvm.dbg.value(metadata double %123, metadata !704, metadata !DIExpression()), !dbg !733
  %124 = fmul double %24, %123, !dbg !826
  %125 = fadd double %23, %124, !dbg !827
  %126 = fmul double %125, %122, !dbg !828
  %127 = fadd double %123, %126, !dbg !829
  tail call void @llvm.dbg.value(metadata double %127, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  %128 = icmp sgt i32 %17, 0, !dbg !830
  br i1 %128, label %129, label %166, !dbg !831

129:                                              ; preds = %120
  %130 = and i32 %17, 1, !dbg !831
  %131 = icmp eq i32 %130, 0, !dbg !831
  br i1 %131, label %141, label %132, !dbg !831

132:                                              ; preds = %129
  tail call void @llvm.dbg.value(metadata double %127, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  %133 = add nsw i32 %17, -1, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !700, metadata !DIExpression()), !dbg !733
  %134 = sitofp i32 %133 to double, !dbg !833
  %135 = fadd double %13, %134, !dbg !834
  %136 = fdiv double 1.000000e+00, %135, !dbg !835
  tail call void @llvm.dbg.value(metadata double %136, metadata !721, metadata !DIExpression()), !dbg !836
  %137 = fsub double %127, %136, !dbg !837
  %138 = fmul double %136, %1, !dbg !838
  %139 = fadd double %138, 1.000000e+00, !dbg !839
  %140 = fdiv double %137, %139, !dbg !840
  tail call void @llvm.dbg.value(metadata double %140, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  br label %141, !dbg !831

141:                                              ; preds = %132, %129
  %142 = phi double [ %127, %129 ], [ %140, %132 ]
  %143 = phi i32 [ %17, %129 ], [ %133, %132 ]
  %144 = phi double [ undef, %129 ], [ %140, %132 ]
  %145 = icmp eq i32 %17, 1, !dbg !831
  br i1 %145, label %166, label %146, !dbg !831

146:                                              ; preds = %141, %146
  %147 = phi double [ %164, %146 ], [ %142, %141 ]
  %148 = phi i32 [ %157, %146 ], [ %143, %141 ]
  tail call void @llvm.dbg.value(metadata double %147, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  %149 = add nsw i32 %148, -1, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !700, metadata !DIExpression()), !dbg !733
  %150 = sitofp i32 %149 to double, !dbg !833
  %151 = fadd double %13, %150, !dbg !834
  %152 = fdiv double 1.000000e+00, %151, !dbg !835
  tail call void @llvm.dbg.value(metadata double %152, metadata !721, metadata !DIExpression()), !dbg !836
  %153 = fsub double %147, %152, !dbg !837
  %154 = fmul double %152, %1, !dbg !838
  %155 = fadd double %154, 1.000000e+00, !dbg !839
  %156 = fdiv double %153, %155, !dbg !840
  tail call void @llvm.dbg.value(metadata double %156, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  tail call void @llvm.dbg.value(metadata double %156, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  %157 = add nsw i32 %148, -2, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !700, metadata !DIExpression()), !dbg !733
  %158 = sitofp i32 %157 to double, !dbg !833
  %159 = fadd double %13, %158, !dbg !834
  %160 = fdiv double 1.000000e+00, %159, !dbg !835
  tail call void @llvm.dbg.value(metadata double %160, metadata !721, metadata !DIExpression()), !dbg !836
  %161 = fsub double %156, %160, !dbg !837
  %162 = fmul double %160, %1, !dbg !838
  %163 = fadd double %162, 1.000000e+00, !dbg !839
  %164 = fdiv double %161, %163, !dbg !840
  tail call void @llvm.dbg.value(metadata double %164, metadata !697, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !733
  %165 = icmp ugt i32 %149, 1, !dbg !830
  br i1 %165, label %146, label %166, !dbg !831, !llvm.loop !841

166:                                              ; preds = %141, %146, %120
  %167 = phi double [ %127, %120 ], [ %144, %141 ], [ %164, %146 ], !dbg !733
  %168 = fcmp oeq double %13, %0, !dbg !843
  br i1 %168, label %169, label %176, !dbg !844

169:                                              ; preds = %166
  store double %167, ptr %2, align 8, !dbg !845, !tbaa !116
  %170 = call double @llvm.fabs.f64(double %18), !dbg !847
  %171 = fadd double %170, 1.000000e+00, !dbg !848
  %172 = fmul double %171, 0x3CC0000000000000, !dbg !849
  %173 = call double @llvm.fabs.f64(double %167), !dbg !850
  %174 = fmul double %172, %173, !dbg !851
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !852
  store double %174, ptr %175, align 8, !dbg !853, !tbaa !121
  br label %208, !dbg !854

176:                                              ; preds = %166
  %177 = fmul double %1, 0x400921FB54442D18, !dbg !855
  %178 = call double @sin(double noundef %177) #7, !dbg !856
  %179 = fdiv double %178, %1, !dbg !857
  tail call void @llvm.dbg.value(metadata double %179, metadata !725, metadata !DIExpression()), !dbg !858
  %180 = fmul double %1, 0x3FF921FB54442D18, !dbg !859
  %181 = call double @sin(double noundef %180) #7, !dbg !860
  tail call void @llvm.dbg.value(metadata double %181, metadata !728, metadata !DIExpression()), !dbg !858
  %182 = fmul double %19, 0x400921FB54442D18, !dbg !861
  %183 = call double @tan(double noundef %182) #7, !dbg !862
  %184 = fdiv double %179, %183, !dbg !863
  tail call void @llvm.dbg.value(metadata double %184, metadata !729, metadata !DIExpression()), !dbg !858
  %185 = fmul double %181, 2.000000e+00, !dbg !864
  %186 = fdiv double %181, %1, !dbg !865
  %187 = fmul double %185, %186, !dbg !866
  tail call void @llvm.dbg.value(metadata double %187, metadata !730, metadata !DIExpression()), !dbg !858
  %188 = fsub double %184, %187, !dbg !867
  tail call void @llvm.dbg.value(metadata double %188, metadata !731, metadata !DIExpression()), !dbg !858
  %189 = fmul double %188, %1, !dbg !868
  %190 = fadd double %189, 1.000000e+00, !dbg !869
  %191 = fmul double %167, %190, !dbg !870
  %192 = fadd double %188, %191, !dbg !871
  store double %192, ptr %2, align 8, !dbg !872, !tbaa !116
  %193 = fmul double %167, %1, !dbg !873
  %194 = call double @llvm.fabs.f64(double %193), !dbg !874
  %195 = fadd double %194, 1.000000e+00, !dbg !875
  %196 = fmul double %195, 0x3CB0000000000000, !dbg !876
  %197 = call double @llvm.fabs.f64(double %184), !dbg !877
  %198 = call double @llvm.fabs.f64(double %187), !dbg !878
  %199 = fadd double %197, %198, !dbg !879
  %200 = fmul double %196, %199, !dbg !880
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !881
  %202 = call double @llvm.fabs.f64(double %18), !dbg !882
  %203 = fadd double %202, 1.000000e+00, !dbg !883
  %204 = fmul double %203, 0x3CC0000000000000, !dbg !884
  %205 = call double @llvm.fabs.f64(double %192), !dbg !885
  %206 = fmul double %204, %205, !dbg !886
  %207 = fadd double %200, %206, !dbg !887
  store double %207, ptr %201, align 8, !dbg !887, !tbaa !121
  br label %208

208:                                              ; preds = %44, %176, %169, %119
  %209 = phi i32 [ %117, %119 ], [ 0, %169 ], [ 0, %176 ], [ 7, %44 ], !dbg !733
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !888
  br label %210

210:                                              ; preds = %208, %7
  %211 = phi i32 [ %8, %7 ], [ %209, %208 ], !dbg !889
  ret i32 %211, !dbg !890
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnpoch(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !891 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !899
  call void @llvm.dbg.assign(metadata i1 undef, metadata !897, metadata !DIExpression(), metadata !899, metadata ptr %3, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata double %0, metadata !895, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata double %1, metadata !896, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !901
  call void @llvm.dbg.value(metadata double %0, metadata !106, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata double %1, metadata !107, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr %3, metadata !108, metadata !DIExpression()), !dbg !902
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !904
  %5 = fadd double %0, %1
  %6 = fcmp ugt double %5, 0.000000e+00
  %7 = and i1 %4, %6, !dbg !905
  br i1 %7, label %10, label %8, !dbg !905

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !906, !tbaa !116, !DIAssignID !907
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !897, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !907, metadata ptr %3, metadata !DIExpression()), !dbg !900
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !906
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !906, !tbaa !121, !DIAssignID !908
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !897, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !908, metadata ptr %9, metadata !DIExpression()), !dbg !900
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 1) #7, !dbg !909
  tail call void @llvm.dbg.value(metadata i32 1, metadata !898, metadata !DIExpression()), !dbg !900
  br label %16, !dbg !901

10:                                               ; preds = %2
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !910
  br i1 %11, label %12, label %13, !dbg !911

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !912, !DIAssignID !913
  call void @llvm.dbg.assign(metadata i8 0, metadata !897, metadata !DIExpression(), metadata !913, metadata ptr %3, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata i32 0, metadata !898, metadata !DIExpression()), !dbg !900
  br label %18, !dbg !901

13:                                               ; preds = %10
  %14 = call fastcc i32 @lnpoch_pos(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !914
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !898, metadata !DIExpression()), !dbg !900
  %15 = icmp eq i32 %14, 0, !dbg !915
  br i1 %15, label %18, label %16, !dbg !901

16:                                               ; preds = %8, %13
  %17 = phi i32 [ 1, %8 ], [ %14, %13 ]
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 454, i32 noundef %17) #7, !dbg !917
  br label %18, !dbg !917

18:                                               ; preds = %12, %13, %16
  %19 = load double, ptr %3, align 8, !dbg !901, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !920
  ret double %19, !dbg !920
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_poch(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !921 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !927
  %4 = alloca double, align 8, !DIAssignID !928
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !925, metadata !DIExpression(), metadata !929, metadata ptr %5, metadata !DIExpression()), !dbg !930
  tail call void @llvm.dbg.value(metadata double %0, metadata !923, metadata !DIExpression()), !dbg !930
  tail call void @llvm.dbg.value(metadata double %1, metadata !924, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !927, metadata ptr %3, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.assign(metadata i1 undef, metadata !578, metadata !DIExpression(), metadata !928, metadata ptr %4, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata double %0, metadata !572, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata double %1, metadata !573, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %5, metadata !574, metadata !DIExpression()), !dbg !934
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !935
  br i1 %6, label %32, label %7, !dbg !936

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !938
  %8 = call i32 @gsl_sf_lnpoch_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !939
  call void @llvm.dbg.value(metadata i32 %8, metadata !579, metadata !DIExpression()), !dbg !932
  %9 = load double, ptr %3, align 8, !dbg !940, !tbaa !116
  %10 = fcmp oeq double %9, 0xFFF0000000000000, !dbg !941
  br i1 %10, label %11, label %12, !dbg !942

11:                                               ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !943, !DIAssignID !944
  call void @llvm.dbg.assign(metadata i8 0, metadata !925, metadata !DIExpression(), metadata !944, metadata ptr %5, metadata !DIExpression()), !dbg !930
  br label %26, !dbg !945

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !946
  %14 = load double, ptr %13, align 8, !dbg !946, !tbaa !121
  %15 = call i32 @gsl_sf_exp_err_e(double noundef %9, double noundef %14, ptr noundef nonnull %5) #7, !dbg !947
  call void @llvm.dbg.value(metadata i32 %15, metadata !580, metadata !DIExpression()), !dbg !948
  %16 = load double, ptr %4, align 8, !dbg !949, !tbaa !430
  %17 = load double, ptr %5, align 8, !dbg !950, !tbaa !116
  %18 = fmul double %16, %17, !dbg !950
  store double %18, ptr %5, align 8, !dbg !950, !tbaa !116, !DIAssignID !951
  call void @llvm.dbg.assign(metadata double %18, metadata !925, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !951, metadata ptr %5, metadata !DIExpression()), !dbg !930
  %19 = call double @llvm.fabs.f64(double %18), !dbg !952
  %20 = fmul double %19, 0x3CC0000000000000, !dbg !953
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !954
  %22 = load double, ptr %21, align 8, !dbg !955, !tbaa !121
  %23 = fadd double %22, %20, !dbg !955
  store double %23, ptr %21, align 8, !dbg !955, !tbaa !121, !DIAssignID !956
  call void @llvm.dbg.assign(metadata double %23, metadata !925, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !956, metadata ptr %21, metadata !DIExpression()), !dbg !930
  %24 = icmp eq i32 %15, 0, !dbg !957
  %25 = select i1 %24, i32 %8, i32 %15, !dbg !957
  br label %26

26:                                               ; preds = %11, %12
  %27 = phi double [ 0.000000e+00, %11 ], [ %18, %12 ]
  %28 = phi i32 [ %8, %11 ], [ %25, %12 ], !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !959
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !926, metadata !DIExpression()), !dbg !930
  %29 = icmp eq i32 %28, 0, !dbg !960
  br i1 %29, label %32, label %30, !dbg !931

30:                                               ; preds = %26
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef %28) #7, !dbg !962
  %31 = load double, ptr %5, align 8, !dbg !931, !tbaa !116
  br label %32, !dbg !962

32:                                               ; preds = %2, %26, %30
  %33 = phi double [ %27, %26 ], [ %31, %30 ], [ 1.000000e+00, %2 ], !dbg !931
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !965
  ret double %33, !dbg !965
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_pochrel(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !966 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !970, metadata !DIExpression(), metadata !972, metadata ptr %3, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata double %0, metadata !968, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata double %1, metadata !969, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !974
  %4 = call i32 @gsl_sf_pochrel_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !971, metadata !DIExpression()), !dbg !973
  %5 = icmp eq i32 %4, 0, !dbg !975
  br i1 %5, label %7, label %6, !dbg !974

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef %4) #7, !dbg !977
  br label %7, !dbg !977

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !974, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !980
  ret double %8, !dbg !980
}

declare !dbg !981 i32 @gsl_sf_gammainv_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !984 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !987 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !991 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !993 i32 @gsl_sf_psi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !995 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !996 double @tan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!209 = !DILocation(line: 194, column: 27, scope: !150)
!210 = !DILocation(line: 194, column: 26, scope: !150)
!211 = !DILocation(line: 194, column: 51, scope: !150)
!212 = !DILocation(line: 194, column: 6, scope: !140)
!213 = !DILocation(line: 195, column: 10, scope: !148)
!214 = !DILocation(line: 0, scope: !148)
!215 = !DILocation(line: 195, column: 30, scope: !148)
!216 = !DILocation(line: 200, column: 7, scope: !147)
!217 = !DILocation(line: 201, column: 7, scope: !147)
!218 = !DILocation(line: 202, column: 7, scope: !147)
!219 = !DILocation(line: 203, column: 7, scope: !147)
!220 = !DILocation(line: 204, column: 30, scope: !147)
!221 = !DILocation(line: 204, column: 37, scope: !147)
!222 = !DILocation(line: 204, column: 33, scope: !147)
!223 = !DILocation(line: 204, column: 23, scope: !147)
!224 = !DILocation(line: 204, column: 22, scope: !147)
!225 = !DILocation(line: 204, column: 20, scope: !147)
!226 = !DILocation(line: 205, column: 25, scope: !147)
!227 = !DILocation(line: 205, column: 37, scope: !147)
!228 = !DILocation(line: 205, column: 29, scope: !147)
!229 = !DILocation(line: 205, column: 28, scope: !147)
!230 = !DILocation(line: 205, column: 47, scope: !147)
!231 = !DILocation(line: 205, column: 59, scope: !147)
!232 = !DILocation(line: 205, column: 51, scope: !147)
!233 = !DILocation(line: 205, column: 50, scope: !147)
!234 = !DILocation(line: 205, column: 42, scope: !147)
!235 = !DILocation(line: 205, column: 15, scope: !147)
!236 = !DILocation(line: 206, column: 46, scope: !147)
!237 = !DILocation(line: 206, column: 44, scope: !147)
!238 = !DILocation(line: 206, column: 19, scope: !147)
!239 = !DILocation(line: 208, column: 5, scope: !148)
!240 = !DILocation(line: 212, column: 7, scope: !153)
!241 = !DILocation(line: 213, column: 7, scope: !153)
!242 = !DILocation(line: 214, column: 20, scope: !153)
!243 = !DILocation(line: 215, column: 20, scope: !153)
!244 = !DILocation(line: 216, column: 26, scope: !153)
!245 = !DILocation(line: 216, column: 36, scope: !153)
!246 = !DILocation(line: 216, column: 30, scope: !153)
!247 = !DILocation(line: 216, column: 20, scope: !153)
!248 = !DILocation(line: 217, column: 26, scope: !153)
!249 = !DILocation(line: 217, column: 36, scope: !153)
!250 = !DILocation(line: 217, column: 30, scope: !153)
!251 = !DILocation(line: 217, column: 15, scope: !153)
!252 = !DILocation(line: 218, column: 46, scope: !153)
!253 = !DILocation(line: 218, column: 44, scope: !153)
!254 = !DILocation(line: 218, column: 19, scope: !153)
!255 = !DILocation(line: 219, column: 14, scope: !153)
!256 = !DILocation(line: 220, column: 5, scope: !148)
!257 = !DILocation(line: 222, column: 16, scope: !159)
!258 = !DILocation(line: 222, column: 24, scope: !159)
!259 = !DILocation(line: 236, column: 25, scope: !158)
!260 = !DILocation(line: 237, column: 28, scope: !158)
!261 = !DILocation(line: 238, column: 26, scope: !158)
!262 = !DILocation(line: 238, column: 30, scope: !158)
!263 = !DILocation(line: 239, column: 25, scope: !158)
!264 = !DILocation(line: 239, column: 29, scope: !158)
!265 = !DILocation(line: 240, column: 25, scope: !158)
!266 = !DILocation(line: 240, column: 29, scope: !158)
!267 = !DILocation(line: 241, column: 23, scope: !158)
!268 = !DILocation(line: 242, column: 41, scope: !158)
!269 = !DILocation(line: 242, column: 36, scope: !158)
!270 = !DILocation(line: 242, column: 32, scope: !158)
!271 = !DILocation(line: 242, column: 27, scope: !158)
!272 = !DILocation(line: 242, column: 47, scope: !158)
!273 = !DILocation(line: 243, column: 61, scope: !158)
!274 = !DILocation(line: 243, column: 56, scope: !158)
!275 = !DILocation(line: 243, column: 52, scope: !158)
!276 = !DILocation(line: 243, column: 46, scope: !158)
!277 = !DILocation(line: 243, column: 42, scope: !158)
!278 = !DILocation(line: 243, column: 36, scope: !158)
!279 = !DILocation(line: 243, column: 32, scope: !158)
!280 = !DILocation(line: 243, column: 27, scope: !158)
!281 = !DILocation(line: 243, column: 69, scope: !158)
!282 = !DILocation(line: 244, column: 81, scope: !158)
!283 = !DILocation(line: 244, column: 76, scope: !158)
!284 = !DILocation(line: 244, column: 72, scope: !158)
!285 = !DILocation(line: 244, column: 66, scope: !158)
!286 = !DILocation(line: 244, column: 62, scope: !158)
!287 = !DILocation(line: 244, column: 56, scope: !158)
!288 = !DILocation(line: 244, column: 52, scope: !158)
!289 = !DILocation(line: 244, column: 46, scope: !158)
!290 = !DILocation(line: 244, column: 42, scope: !158)
!291 = !DILocation(line: 244, column: 36, scope: !158)
!292 = !DILocation(line: 244, column: 32, scope: !158)
!293 = !DILocation(line: 244, column: 27, scope: !158)
!294 = !DILocation(line: 244, column: 91, scope: !158)
!295 = !DILocation(line: 245, column: 23, scope: !158)
!296 = !DILocation(line: 246, column: 26, scope: !158)
!297 = !DILocation(line: 246, column: 42, scope: !158)
!298 = !DILocation(line: 247, column: 30, scope: !158)
!299 = !DILocation(line: 247, column: 26, scope: !158)
!300 = !DILocation(line: 247, column: 42, scope: !158)
!301 = !DILocation(line: 248, column: 24, scope: !158)
!302 = !DILocation(line: 248, column: 26, scope: !158)
!303 = !DILocation(line: 248, column: 28, scope: !158)
!304 = !DILocation(line: 249, column: 25, scope: !158)
!305 = !DILocation(line: 249, column: 27, scope: !158)
!306 = !DILocation(line: 250, column: 39, scope: !158)
!307 = !DILocation(line: 250, column: 41, scope: !158)
!308 = !DILocation(line: 250, column: 33, scope: !158)
!309 = !DILocation(line: 250, column: 29, scope: !158)
!310 = !DILocation(line: 250, column: 56, scope: !158)
!311 = !DILocation(line: 250, column: 49, scope: !158)
!312 = !DILocation(line: 250, column: 45, scope: !158)
!313 = !DILocation(line: 250, column: 72, scope: !158)
!314 = !DILocation(line: 250, column: 65, scope: !158)
!315 = !DILocation(line: 250, column: 61, scope: !158)
!316 = !DILocation(line: 251, column: 34, scope: !158)
!317 = !DILocation(line: 251, column: 37, scope: !158)
!318 = !DILocation(line: 251, column: 39, scope: !158)
!319 = !DILocation(line: 251, column: 28, scope: !158)
!320 = !DILocation(line: 251, column: 60, scope: !158)
!321 = !DILocation(line: 251, column: 68, scope: !158)
!322 = !DILocation(line: 251, column: 64, scope: !158)
!323 = !DILocation(line: 251, column: 43, scope: !158)
!324 = !DILocation(line: 252, column: 31, scope: !158)
!325 = !DILocation(line: 252, column: 46, scope: !158)
!326 = !DILocation(line: 252, column: 39, scope: !158)
!327 = !DILocation(line: 254, column: 29, scope: !158)
!328 = !DILocation(line: 254, column: 24, scope: !158)
!329 = !DILocation(line: 254, column: 22, scope: !158)
!330 = !DILocation(line: 256, column: 5, scope: !158)
!331 = !DILocation(line: 257, column: 5, scope: !158)
!332 = !DILocation(line: 258, column: 16, scope: !158)
!333 = !DILocation(line: 258, column: 20, scope: !158)
!334 = !DILocation(line: 258, column: 38, scope: !158)
!335 = !DILocation(line: 258, column: 27, scope: !158)
!336 = !DILocation(line: 260, column: 26, scope: !158)
!337 = !DILocation(line: 260, column: 34, scope: !158)
!338 = !DILocation(line: 260, column: 18, scope: !158)
!339 = !DILocation(line: 261, column: 36, scope: !158)
!340 = !DILocation(line: 261, column: 35, scope: !158)
!341 = !DILocation(line: 261, column: 13, scope: !158)
!342 = !DILocation(line: 262, column: 48, scope: !158)
!343 = !DILocation(line: 262, column: 38, scope: !158)
!344 = !DILocation(line: 262, column: 20, scope: !158)
!345 = !DILocation(line: 262, column: 17, scope: !158)
!346 = !DILocation(line: 263, column: 20, scope: !158)
!347 = !DILocation(line: 263, column: 39, scope: !158)
!348 = !DILocation(line: 263, column: 70, scope: !158)
!349 = !DILocation(line: 263, column: 68, scope: !158)
!350 = !DILocation(line: 263, column: 78, scope: !158)
!351 = !DILocation(line: 263, column: 57, scope: !158)
!352 = !DILocation(line: 263, column: 17, scope: !158)
!353 = !DILocation(line: 264, column: 44, scope: !158)
!354 = !DILocation(line: 264, column: 42, scope: !158)
!355 = !DILocation(line: 264, column: 17, scope: !158)
!356 = !DILocation(line: 266, column: 3, scope: !159)
!357 = !DILocation(line: 268, column: 5, scope: !180)
!358 = !DILocation(line: 269, column: 18, scope: !180)
!359 = !DILocation(line: 270, column: 29, scope: !180)
!360 = !DILocation(line: 270, column: 19, scope: !180)
!361 = !DILocation(line: 271, column: 18, scope: !180)
!362 = !DILocation(line: 272, column: 44, scope: !180)
!363 = !DILocation(line: 272, column: 33, scope: !180)
!364 = !DILocation(line: 272, column: 55, scope: !180)
!365 = !DILocation(line: 272, column: 48, scope: !180)
!366 = !DILocation(line: 272, column: 26, scope: !180)
!367 = !DILocation(line: 272, column: 24, scope: !180)
!368 = !DILocation(line: 272, column: 13, scope: !180)
!369 = !DILocation(line: 273, column: 57, scope: !180)
!370 = !DILocation(line: 273, column: 44, scope: !180)
!371 = !DILocation(line: 273, column: 42, scope: !180)
!372 = !DILocation(line: 273, column: 17, scope: !180)
!373 = !DILocation(line: 274, column: 12, scope: !180)
!374 = !DILocation(line: 275, column: 3, scope: !159)
!375 = !DILocation(line: 0, scope: !150)
!376 = !DILocation(line: 276, column: 1, scope: !140)
!377 = distinct !DISubprogram(name: "gsl_sf_lnpoch_sgn_e", scope: !2, file: !2, line: 301, type: !378, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !381)
!378 = !DISubroutineType(types: !379)
!379 = !{!43, !83, !83, !98, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!381 = !{!382, !383, !384, !385, !386, !393, !394, !395, !396, !399, !400, !403, !404, !407, !408, !409, !411, !412, !413, !414, !415}
!382 = !DILocalVariable(name: "a", arg: 1, scope: !377, file: !2, line: 301, type: !83)
!383 = !DILocalVariable(name: "x", arg: 2, scope: !377, file: !2, line: 301, type: !83)
!384 = !DILocalVariable(name: "result", arg: 3, scope: !377, file: !2, line: 302, type: !98)
!385 = !DILocalVariable(name: "sgn", arg: 4, scope: !377, file: !2, line: 302, type: !380)
!386 = !DILocalVariable(name: "result_pos", scope: !387, file: !2, line: 318, type: !99)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 316, column: 38)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 316, column: 9)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 314, column: 37)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 314, column: 12)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 310, column: 11)
!392 = distinct !DILexicalBlock(scope: !377, file: !2, line: 304, column: 6)
!393 = !DILocalVariable(name: "stat", scope: !387, file: !2, line: 321, type: !43)
!394 = !DILocalVariable(name: "f", scope: !387, file: !2, line: 322, type: !84)
!395 = !DILocalVariable(name: "s", scope: !387, file: !2, line: 323, type: !84)
!396 = !DILocalVariable(name: "stat", scope: !397, file: !2, line: 331, type: !43)
!397 = distinct !DILexicalBlock(scope: !398, file: !2, line: 328, column: 28)
!398 = distinct !DILexicalBlock(scope: !388, file: !2, line: 328, column: 16)
!399 = !DILocalVariable(name: "s", scope: !397, file: !2, line: 332, type: !84)
!400 = !DILocalVariable(name: "sin_1", scope: !401, file: !2, line: 345, type: !84)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 342, column: 35)
!402 = distinct !DILexicalBlock(scope: !390, file: !2, line: 342, column: 13)
!403 = !DILocalVariable(name: "sin_2", scope: !401, file: !2, line: 346, type: !84)
!404 = !DILocalVariable(name: "lnp_pos", scope: !405, file: !2, line: 352, type: !99)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 351, column: 10)
!406 = distinct !DILexicalBlock(scope: !401, file: !2, line: 347, column: 8)
!407 = !DILocalVariable(name: "stat_pp", scope: !405, file: !2, line: 353, type: !43)
!408 = !DILocalVariable(name: "lnterm", scope: !405, file: !2, line: 354, type: !84)
!409 = !DILocalVariable(name: "lg_apn", scope: !410, file: !2, line: 366, type: !99)
!410 = distinct !DILexicalBlock(scope: !402, file: !2, line: 363, column: 8)
!411 = !DILocalVariable(name: "lg_a", scope: !410, file: !2, line: 367, type: !99)
!412 = !DILocalVariable(name: "s_apn", scope: !410, file: !2, line: 368, type: !84)
!413 = !DILocalVariable(name: "s_a", scope: !410, file: !2, line: 368, type: !84)
!414 = !DILocalVariable(name: "stat_apn", scope: !410, file: !2, line: 369, type: !43)
!415 = !DILocalVariable(name: "stat_a", scope: !410, file: !2, line: 370, type: !43)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 0, scope: !387)
!418 = distinct !DIAssignID()
!419 = !DILocation(line: 0, scope: !405)
!420 = distinct !DIAssignID()
!421 = !DILocation(line: 0, scope: !410)
!422 = distinct !DIAssignID()
!423 = distinct !DIAssignID()
!424 = distinct !DIAssignID()
!425 = !DILocation(line: 0, scope: !377)
!426 = !DILocation(line: 304, column: 8, scope: !392)
!427 = !DILocation(line: 304, column: 6, scope: !377)
!428 = !DILocation(line: 305, column: 10, scope: !429)
!429 = distinct !DILexicalBlock(scope: !392, file: !2, line: 304, column: 16)
!430 = !{!118, !118, i64 0}
!431 = !DILocation(line: 307, column: 17, scope: !429)
!432 = !DILocation(line: 308, column: 5, scope: !429)
!433 = !DILocation(line: 310, column: 13, scope: !391)
!434 = !DILocation(line: 310, column: 19, scope: !391)
!435 = !DILocation(line: 311, column: 10, scope: !436)
!436 = distinct !DILexicalBlock(scope: !391, file: !2, line: 310, column: 33)
!437 = !DILocation(line: 312, column: 12, scope: !436)
!438 = !DILocation(line: 312, column: 5, scope: !436)
!439 = !DILocation(line: 314, column: 14, scope: !390)
!440 = !DILocation(line: 314, column: 19, scope: !390)
!441 = !DILocation(line: 316, column: 15, scope: !388)
!442 = !DILocation(line: 316, column: 20, scope: !388)
!443 = !DILocation(line: 318, column: 7, scope: !387)
!444 = !DILocation(line: 321, column: 30, scope: !387)
!445 = !DILocation(line: 321, column: 34, scope: !387)
!446 = !DILocation(line: 321, column: 18, scope: !387)
!447 = !DILocation(line: 322, column: 25, scope: !387)
!448 = !DILocation(line: 322, column: 18, scope: !387)
!449 = !DILocation(line: 323, column: 19, scope: !387)
!450 = !DILocation(line: 323, column: 30, scope: !387)
!451 = !DILocation(line: 323, column: 18, scope: !387)
!452 = !DILocation(line: 324, column: 36, scope: !387)
!453 = !DILocation(line: 324, column: 23, scope: !387)
!454 = !DILocation(line: 324, column: 19, scope: !387)
!455 = !DILocation(line: 325, column: 32, scope: !387)
!456 = !DILocation(line: 325, column: 60, scope: !387)
!457 = !DILocation(line: 325, column: 36, scope: !387)
!458 = !DILocation(line: 325, column: 15, scope: !387)
!459 = !DILocation(line: 325, column: 19, scope: !387)
!460 = !DILocation(line: 326, column: 12, scope: !387)
!461 = !DILocation(line: 328, column: 5, scope: !388)
!462 = !DILocation(line: 328, column: 22, scope: !398)
!463 = !DILocation(line: 328, column: 16, scope: !388)
!464 = !DILocation(line: 331, column: 40, scope: !397)
!465 = !DILocation(line: 331, column: 43, scope: !397)
!466 = !DILocation(line: 331, column: 18, scope: !397)
!467 = !DILocation(line: 0, scope: !397)
!468 = !DILocation(line: 332, column: 19, scope: !397)
!469 = !DILocation(line: 332, column: 31, scope: !397)
!470 = !DILocation(line: 333, column: 12, scope: !397)
!471 = !DILocation(line: 337, column: 19, scope: !472)
!472 = distinct !DILexicalBlock(scope: !398, file: !2, line: 335, column: 12)
!473 = !DILocation(line: 338, column: 15, scope: !472)
!474 = !DILocation(line: 338, column: 19, scope: !472)
!475 = !DILocation(line: 339, column: 12, scope: !472)
!476 = !DILocation(line: 340, column: 7, scope: !472)
!477 = !DILocation(line: 342, column: 15, scope: !402)
!478 = !DILocation(line: 342, column: 21, scope: !402)
!479 = !DILocation(line: 345, column: 36, scope: !401)
!480 = !DILocation(line: 345, column: 29, scope: !401)
!481 = !DILocation(line: 345, column: 20, scope: !401)
!482 = !DILocation(line: 0, scope: !401)
!483 = !DILocation(line: 346, column: 40, scope: !401)
!484 = !DILocation(line: 346, column: 29, scope: !401)
!485 = !DILocation(line: 346, column: 20, scope: !401)
!486 = !DILocation(line: 347, column: 14, scope: !406)
!487 = !DILocation(line: 347, column: 21, scope: !406)
!488 = !DILocation(line: 348, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !406, file: !2, line: 347, column: 38)
!490 = !DILocation(line: 349, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !2, line: 349, column: 7)
!492 = !DILocation(line: 349, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !491, file: !2, line: 349, column: 7)
!494 = !DILocation(line: 352, column: 7, scope: !405)
!495 = !DILocation(line: 353, column: 41, scope: !405)
!496 = !DILocation(line: 353, column: 23, scope: !405)
!497 = !DILocation(line: 354, column: 37, scope: !405)
!498 = !DILocation(line: 354, column: 27, scope: !405)
!499 = !DILocation(line: 354, column: 23, scope: !405)
!500 = !DILocation(line: 355, column: 39, scope: !405)
!501 = !DILocation(line: 355, column: 29, scope: !405)
!502 = !DILocation(line: 355, column: 20, scope: !405)
!503 = !DILocation(line: 356, column: 30, scope: !405)
!504 = !DILocation(line: 356, column: 15, scope: !405)
!505 = !DILocation(line: 357, column: 47, scope: !405)
!506 = !DILocation(line: 357, column: 61, scope: !405)
!507 = !DILocation(line: 357, column: 59, scope: !405)
!508 = !DILocation(line: 357, column: 44, scope: !405)
!509 = !DILocation(line: 357, column: 78, scope: !405)
!510 = !DILocation(line: 357, column: 76, scope: !405)
!511 = !DILocation(line: 357, column: 19, scope: !405)
!512 = !DILocation(line: 358, column: 46, scope: !405)
!513 = !DILocation(line: 358, column: 44, scope: !405)
!514 = !DILocation(line: 358, column: 19, scope: !405)
!515 = !DILocation(line: 359, column: 14, scope: !405)
!516 = !DILocation(line: 359, column: 12, scope: !405)
!517 = !DILocation(line: 361, column: 5, scope: !406)
!518 = !DILocation(line: 366, column: 5, scope: !410)
!519 = !DILocation(line: 367, column: 5, scope: !410)
!520 = !DILocation(line: 368, column: 5, scope: !410)
!521 = !DILocation(line: 369, column: 20, scope: !410)
!522 = !DILocation(line: 370, column: 20, scope: !410)
!523 = !DILocation(line: 371, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !410, file: !2, line: 371, column: 8)
!525 = !DILocation(line: 371, column: 32, scope: !524)
!526 = !DILocation(line: 372, column: 29, scope: !527)
!527 = distinct !DILexicalBlock(scope: !524, file: !2, line: 371, column: 58)
!528 = !DILocation(line: 372, column: 40, scope: !527)
!529 = !DILocation(line: 372, column: 33, scope: !527)
!530 = !DILocation(line: 372, column: 20, scope: !527)
!531 = !DILocation(line: 373, column: 29, scope: !527)
!532 = !DILocation(line: 373, column: 40, scope: !527)
!533 = !DILocation(line: 373, column: 33, scope: !527)
!534 = !DILocation(line: 373, column: 15, scope: !527)
!535 = !DILocation(line: 374, column: 46, scope: !527)
!536 = !DILocation(line: 374, column: 44, scope: !527)
!537 = !DILocation(line: 374, column: 19, scope: !527)
!538 = !DILocation(line: 375, column: 14, scope: !527)
!539 = !DILocation(line: 375, column: 20, scope: !527)
!540 = !DILocation(line: 375, column: 18, scope: !527)
!541 = !DILocation(line: 375, column: 12, scope: !527)
!542 = !DILocation(line: 376, column: 7, scope: !527)
!543 = !DILocation(line: 378, column: 22, scope: !544)
!544 = distinct !DILexicalBlock(scope: !524, file: !2, line: 378, column: 13)
!545 = !DILocation(line: 378, column: 34, scope: !544)
!546 = !DILocation(line: 379, column: 12, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !2, line: 378, column: 56)
!548 = !DILocation(line: 380, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !547, file: !2, line: 380, column: 7)
!550 = !DILocation(line: 380, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !549, file: !2, line: 380, column: 7)
!552 = !DILocation(line: 384, column: 19, scope: !553)
!553 = distinct !DILexicalBlock(scope: !544, file: !2, line: 382, column: 10)
!554 = !DILocation(line: 385, column: 12, scope: !553)
!555 = !DILocation(line: 386, column: 7, scope: !553)
!556 = !DILocation(line: 0, scope: !524)
!557 = !DILocation(line: 388, column: 3, scope: !402)
!558 = !DILocation(line: 0, scope: !392)
!559 = !DILocation(line: 389, column: 1, scope: !377)
!560 = !DISubprogram(name: "log", scope: !561, file: !561, line: 104, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!562 = !DISubroutineType(types: !563)
!563 = !{!84, !84}
!564 = !DISubprogram(name: "fmod", scope: !561, file: !561, line: 168, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !566, file: !566, line: 58, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!567 = !DISubroutineType(types: !568)
!568 = !{!43, !84, !98, !380}
!569 = !DISubprogram(name: "sin", scope: !561, file: !561, line: 64, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = distinct !DISubprogram(name: "gsl_sf_poch_e", scope: !2, file: !2, line: 393, type: !96, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !578, !579, !580}
!572 = !DILocalVariable(name: "a", arg: 1, scope: !570, file: !2, line: 393, type: !83)
!573 = !DILocalVariable(name: "x", arg: 2, scope: !570, file: !2, line: 393, type: !83)
!574 = !DILocalVariable(name: "result", arg: 3, scope: !570, file: !2, line: 393, type: !98)
!575 = !DILocalVariable(name: "lnpoch", scope: !576, file: !2, line: 402, type: !99)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 401, column: 10)
!577 = distinct !DILexicalBlock(scope: !570, file: !2, line: 397, column: 6)
!578 = !DILocalVariable(name: "sgn", scope: !576, file: !2, line: 403, type: !84)
!579 = !DILocalVariable(name: "stat_lnpoch", scope: !576, file: !2, line: 404, type: !43)
!580 = !DILocalVariable(name: "stat_exp", scope: !581, file: !2, line: 410, type: !43)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 409, column: 12)
!582 = distinct !DILexicalBlock(scope: !576, file: !2, line: 405, column: 9)
!583 = distinct !DIAssignID()
!584 = !DILocation(line: 0, scope: !576)
!585 = distinct !DIAssignID()
!586 = !DILocation(line: 0, scope: !570)
!587 = !DILocation(line: 397, column: 8, scope: !577)
!588 = !DILocation(line: 397, column: 6, scope: !570)
!589 = !DILocation(line: 398, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !577, file: !2, line: 397, column: 16)
!591 = !DILocation(line: 399, column: 13, scope: !590)
!592 = !DILocation(line: 399, column: 17, scope: !590)
!593 = !DILocation(line: 400, column: 5, scope: !590)
!594 = !DILocation(line: 402, column: 5, scope: !576)
!595 = !DILocation(line: 403, column: 5, scope: !576)
!596 = !DILocation(line: 404, column: 23, scope: !576)
!597 = !DILocation(line: 405, column: 16, scope: !582)
!598 = !DILocation(line: 405, column: 20, scope: !582)
!599 = !DILocation(line: 405, column: 9, scope: !576)
!600 = !DILocation(line: 407, column: 19, scope: !601)
!601 = distinct !DILexicalBlock(scope: !582, file: !2, line: 405, column: 35)
!602 = !DILocation(line: 408, column: 7, scope: !601)
!603 = !DILocation(line: 410, column: 61, scope: !581)
!604 = !DILocation(line: 410, column: 25, scope: !581)
!605 = !DILocation(line: 0, scope: !581)
!606 = !DILocation(line: 411, column: 22, scope: !581)
!607 = !DILocation(line: 411, column: 19, scope: !581)
!608 = !DILocation(line: 412, column: 46, scope: !581)
!609 = !DILocation(line: 412, column: 44, scope: !581)
!610 = !DILocation(line: 412, column: 15, scope: !581)
!611 = !DILocation(line: 412, column: 19, scope: !581)
!612 = !DILocation(line: 413, column: 14, scope: !581)
!613 = !DILocation(line: 0, scope: !582)
!614 = !DILocation(line: 415, column: 3, scope: !577)
!615 = !DILocation(line: 0, scope: !577)
!616 = !DILocation(line: 416, column: 1, scope: !570)
!617 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !618, file: !618, line: 110, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!619 = distinct !DISubprogram(name: "gsl_sf_pochrel_e", scope: !2, file: !2, line: 420, type: !96, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !629, !630, !631}
!621 = !DILocalVariable(name: "a", arg: 1, scope: !619, file: !2, line: 420, type: !83)
!622 = !DILocalVariable(name: "x", arg: 2, scope: !619, file: !2, line: 420, type: !83)
!623 = !DILocalVariable(name: "result", arg: 3, scope: !619, file: !2, line: 420, type: !98)
!624 = !DILocalVariable(name: "absx", scope: !619, file: !2, line: 422, type: !83)
!625 = !DILocalVariable(name: "absa", scope: !619, file: !2, line: 423, type: !83)
!626 = !DILocalVariable(name: "lnpoch", scope: !627, file: !2, line: 428, type: !99)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 427, column: 60)
!628 = distinct !DILexicalBlock(scope: !619, file: !2, line: 427, column: 6)
!629 = !DILocalVariable(name: "sgn", scope: !627, file: !2, line: 429, type: !84)
!630 = !DILocalVariable(name: "stat_poch", scope: !627, file: !2, line: 430, type: !43)
!631 = !DILocalVariable(name: "el", scope: !632, file: !2, line: 435, type: !83)
!632 = distinct !DILexicalBlock(scope: !633, file: !2, line: 434, column: 10)
!633 = distinct !DILexicalBlock(scope: !627, file: !2, line: 431, column: 8)
!634 = distinct !DIAssignID()
!635 = !DILocation(line: 0, scope: !627)
!636 = distinct !DIAssignID()
!637 = !DILocation(line: 0, scope: !619)
!638 = !DILocation(line: 422, column: 23, scope: !619)
!639 = !DILocation(line: 423, column: 23, scope: !619)
!640 = !DILocation(line: 427, column: 16, scope: !628)
!641 = !DILocation(line: 427, column: 11, scope: !628)
!642 = !DILocation(line: 427, column: 22, scope: !628)
!643 = !DILocation(line: 427, column: 34, scope: !628)
!644 = !DILocation(line: 427, column: 30, scope: !628)
!645 = !DILocation(line: 427, column: 29, scope: !628)
!646 = !DILocation(line: 427, column: 53, scope: !628)
!647 = !DILocation(line: 427, column: 6, scope: !619)
!648 = !DILocation(line: 428, column: 5, scope: !627)
!649 = !DILocation(line: 429, column: 5, scope: !627)
!650 = !DILocation(line: 430, column: 21, scope: !627)
!651 = !DILocation(line: 431, column: 15, scope: !633)
!652 = !DILocation(line: 431, column: 19, scope: !633)
!653 = !DILocation(line: 431, column: 8, scope: !627)
!654 = !DILocation(line: 432, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !2, line: 432, column: 7)
!656 = distinct !DILexicalBlock(scope: !633, file: !2, line: 431, column: 38)
!657 = !DILocation(line: 432, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !2, line: 432, column: 7)
!659 = !DILocation(line: 435, column: 25, scope: !632)
!660 = !DILocation(line: 0, scope: !632)
!661 = !DILocation(line: 436, column: 23, scope: !632)
!662 = !DILocation(line: 436, column: 26, scope: !632)
!663 = !DILocation(line: 436, column: 30, scope: !632)
!664 = !DILocation(line: 436, column: 36, scope: !632)
!665 = !DILocation(line: 436, column: 20, scope: !632)
!666 = !DILocation(line: 437, column: 22, scope: !632)
!667 = !DILocation(line: 437, column: 50, scope: !632)
!668 = !DILocation(line: 437, column: 54, scope: !632)
!669 = !DILocation(line: 437, column: 40, scope: !632)
!670 = !DILocation(line: 437, column: 15, scope: !632)
!671 = !DILocation(line: 438, column: 47, scope: !632)
!672 = !DILocation(line: 438, column: 60, scope: !632)
!673 = !DILocation(line: 438, column: 44, scope: !632)
!674 = !DILocation(line: 438, column: 67, scope: !632)
!675 = !DILocation(line: 438, column: 19, scope: !632)
!676 = !DILocation(line: 0, scope: !633)
!677 = !DILocation(line: 441, column: 3, scope: !628)
!678 = !DILocation(line: 443, column: 12, scope: !679)
!679 = distinct !DILexicalBlock(scope: !628, file: !2, line: 442, column: 8)
!680 = !DILocation(line: 443, column: 5, scope: !679)
!681 = !DILocation(line: 0, scope: !628)
!682 = !DILocation(line: 445, column: 1, scope: !619)
!683 = !DISubprogram(name: "exp", scope: !561, file: !561, line: 95, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = distinct !DISubprogram(name: "pochrel_smallx", scope: !2, file: !2, line: 84, type: !96, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !694, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !708, !709, !710, !711, !715, !716, !717, !721, !725, !728, !729, !730, !731}
!686 = !DILocalVariable(name: "a", arg: 1, scope: !684, file: !2, line: 84, type: !83)
!687 = !DILocalVariable(name: "x", arg: 2, scope: !684, file: !2, line: 84, type: !83)
!688 = !DILocalVariable(name: "result", arg: 3, scope: !684, file: !2, line: 84, type: !98)
!689 = !DILocalVariable(name: "SQTBIG", scope: !684, file: !2, line: 90, type: !83)
!690 = !DILocalVariable(name: "ALNEPS", scope: !684, file: !2, line: 91, type: !83)
!691 = !DILocalVariable(name: "bp", scope: !692, file: !2, line: 97, type: !83)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 96, column: 8)
!693 = distinct !DILexicalBlock(scope: !684, file: !2, line: 93, column: 6)
!694 = !DILocalVariable(name: "incr", scope: !692, file: !2, line: 98, type: !695)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!696 = !DILocalVariable(name: "b", scope: !692, file: !2, line: 99, type: !83)
!697 = !DILocalVariable(name: "dpoch1", scope: !692, file: !2, line: 100, type: !84)
!698 = !DILocalVariable(name: "dexprl", scope: !692, file: !2, line: 101, type: !99)
!699 = !DILocalVariable(name: "stat_dexprl", scope: !692, file: !2, line: 102, type: !43)
!700 = !DILocalVariable(name: "i", scope: !692, file: !2, line: 103, type: !43)
!701 = !DILocalVariable(name: "var", scope: !692, file: !2, line: 105, type: !84)
!702 = !DILocalVariable(name: "alnvar", scope: !692, file: !2, line: 106, type: !84)
!703 = !DILocalVariable(name: "q", scope: !692, file: !2, line: 107, type: !84)
!704 = !DILocalVariable(name: "poly1", scope: !692, file: !2, line: 109, type: !84)
!705 = !DILocalVariable(name: "nterms", scope: !706, file: !2, line: 112, type: !695)
!706 = distinct !DILexicalBlock(scope: !707, file: !2, line: 111, column: 22)
!707 = distinct !DILexicalBlock(scope: !692, file: !2, line: 111, column: 8)
!708 = !DILocalVariable(name: "var2", scope: !706, file: !2, line: 113, type: !83)
!709 = !DILocalVariable(name: "rho", scope: !706, file: !2, line: 114, type: !83)
!710 = !DILocalVariable(name: "term", scope: !706, file: !2, line: 115, type: !84)
!711 = !DILocalVariable(name: "gbern", scope: !706, file: !2, line: 116, type: !712)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1536, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 24)
!715 = !DILocalVariable(name: "k", scope: !706, file: !2, line: 117, type: !43)
!716 = !DILocalVariable(name: "j", scope: !706, file: !2, line: 117, type: !43)
!717 = !DILocalVariable(name: "gbk", scope: !718, file: !2, line: 132, type: !84)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 131, column: 32)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 131, column: 7)
!720 = distinct !DILexicalBlock(scope: !706, file: !2, line: 131, column: 7)
!721 = !DILocalVariable(name: "binv", scope: !722, file: !2, line: 158, type: !84)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 153, column: 32)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 153, column: 5)
!724 = distinct !DILexicalBlock(scope: !692, file: !2, line: 153, column: 5)
!725 = !DILocalVariable(name: "sinpxx", scope: !726, file: !2, line: 172, type: !84)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 167, column: 10)
!727 = distinct !DILexicalBlock(scope: !692, file: !2, line: 162, column: 8)
!728 = !DILocalVariable(name: "sinpx2", scope: !726, file: !2, line: 173, type: !84)
!729 = !DILocalVariable(name: "t1", scope: !726, file: !2, line: 174, type: !84)
!730 = !DILocalVariable(name: "t2", scope: !726, file: !2, line: 175, type: !84)
!731 = !DILocalVariable(name: "trig", scope: !726, file: !2, line: 176, type: !84)
!732 = distinct !DIAssignID()
!733 = !DILocation(line: 0, scope: !692)
!734 = distinct !DIAssignID()
!735 = !DILocation(line: 0, scope: !706)
!736 = !DILocation(line: 0, scope: !684)
!737 = !DILocation(line: 93, column: 8, scope: !693)
!738 = !DILocation(line: 93, column: 6, scope: !684)
!739 = !DILocation(line: 94, column: 12, scope: !740)
!740 = distinct !DILexicalBlock(scope: !693, file: !2, line: 93, column: 16)
!741 = !DILocation(line: 94, column: 5, scope: !740)
!742 = !DILocation(line: 97, column: 31, scope: !692)
!743 = !DILocation(line: 97, column: 28, scope: !692)
!744 = !DILocation(line: 98, column: 31, scope: !692)
!745 = !DILocation(line: 98, column: 27, scope: !692)
!746 = !DILocation(line: 98, column: 25, scope: !692)
!747 = !DILocation(line: 99, column: 30, scope: !692)
!748 = !DILocation(line: 99, column: 28, scope: !692)
!749 = !DILocation(line: 101, column: 5, scope: !692)
!750 = !DILocation(line: 105, column: 31, scope: !692)
!751 = !DILocation(line: 105, column: 28, scope: !692)
!752 = !DILocation(line: 105, column: 23, scope: !692)
!753 = !DILocation(line: 106, column: 21, scope: !692)
!754 = !DILocation(line: 107, column: 17, scope: !692)
!755 = !DILocation(line: 111, column: 12, scope: !707)
!756 = !DILocation(line: 111, column: 8, scope: !692)
!757 = !DILocation(line: 112, column: 43, scope: !706)
!758 = !DILocation(line: 112, column: 51, scope: !706)
!759 = !DILocation(line: 112, column: 26, scope: !706)
!760 = !DILocation(line: 113, column: 31, scope: !706)
!761 = !DILocation(line: 113, column: 36, scope: !706)
!762 = !DILocation(line: 114, column: 36, scope: !706)
!763 = !DILocation(line: 116, column: 7, scope: !706)
!764 = !DILocation(line: 119, column: 7, scope: !706)
!765 = !DILocation(line: 119, column: 16, scope: !706)
!766 = distinct !DIAssignID()
!767 = !DILocation(line: 120, column: 18, scope: !706)
!768 = !DILocation(line: 120, column: 22, scope: !706)
!769 = !DILocation(line: 120, column: 7, scope: !706)
!770 = !DILocation(line: 120, column: 16, scope: !706)
!771 = distinct !DIAssignID()
!772 = !DILocation(line: 123, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !706, file: !2, line: 123, column: 10)
!774 = !DILocation(line: 123, column: 10, scope: !706)
!775 = !DILocation(line: 121, column: 24, scope: !706)
!776 = !DILocation(line: 131, column: 17, scope: !719)
!777 = !DILocation(line: 131, column: 7, scope: !720)
!778 = !DILocation(line: 127, column: 21, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !2, line: 123, column: 23)
!780 = !DILocation(line: 128, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !2, line: 128, column: 9)
!782 = !DILocation(line: 141, column: 5, scope: !707)
!783 = !DILocation(line: 136, column: 16, scope: !718)
!784 = !DILocation(line: 0, scope: !718)
!785 = !DILocation(line: 133, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !718, file: !2, line: 133, column: 9)
!787 = !DILocation(line: 134, column: 26, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 133, column: 29)
!789 = distinct !DILexicalBlock(scope: !786, file: !2, line: 133, column: 9)
!790 = !DILocation(line: 134, column: 18, scope: !788)
!791 = !DILocation(line: 134, column: 30, scope: !788)
!792 = !DILocation(line: 134, column: 29, scope: !788)
!793 = !DILocation(line: 134, column: 15, scope: !788)
!794 = !DILocation(line: 133, column: 25, scope: !789)
!795 = distinct !{!795, !785, !796, !797}
!796 = !DILocation(line: 135, column: 9, scope: !786)
!797 = !{!"llvm.loop.mustprogress"}
!798 = !DILocation(line: 136, column: 26, scope: !718)
!799 = !DILocation(line: 136, column: 31, scope: !718)
!800 = !DILocation(line: 136, column: 30, scope: !718)
!801 = !DILocation(line: 136, column: 9, scope: !718)
!802 = !DILocation(line: 136, column: 20, scope: !718)
!803 = !DILocation(line: 138, column: 20, scope: !718)
!804 = !DILocation(line: 138, column: 19, scope: !718)
!805 = !DILocation(line: 138, column: 24, scope: !718)
!806 = !DILocation(line: 138, column: 29, scope: !718)
!807 = !DILocation(line: 138, column: 34, scope: !718)
!808 = !DILocation(line: 138, column: 27, scope: !718)
!809 = !DILocation(line: 138, column: 37, scope: !718)
!810 = !DILocation(line: 138, column: 15, scope: !718)
!811 = !DILocation(line: 139, column: 28, scope: !718)
!812 = !DILocation(line: 139, column: 15, scope: !718)
!813 = distinct !{!813, !777, !814, !797}
!814 = !DILocation(line: 140, column: 7, scope: !720)
!815 = !DILocation(line: 143, column: 19, scope: !692)
!816 = !DILocation(line: 144, column: 20, scope: !817)
!817 = distinct !DILexicalBlock(scope: !692, file: !2, line: 144, column: 8)
!818 = !DILocation(line: 144, column: 8, scope: !692)
!819 = !DILocation(line: 146, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !2, line: 144, column: 36)
!821 = !DILocation(line: 147, column: 7, scope: !820)
!822 = !DILocation(line: 149, column: 25, scope: !692)
!823 = !DILocation(line: 149, column: 28, scope: !692)
!824 = distinct !DIAssignID()
!825 = !DILocation(line: 150, column: 11, scope: !692)
!826 = !DILocation(line: 151, column: 39, scope: !692)
!827 = !DILocation(line: 151, column: 35, scope: !692)
!828 = !DILocation(line: 151, column: 25, scope: !692)
!829 = !DILocation(line: 151, column: 48, scope: !692)
!830 = !DILocation(line: 153, column: 21, scope: !723)
!831 = !DILocation(line: 153, column: 5, scope: !724)
!832 = !DILocation(line: 153, scope: !724)
!833 = !DILocation(line: 158, column: 29, scope: !722)
!834 = !DILocation(line: 158, column: 28, scope: !722)
!835 = !DILocation(line: 158, column: 24, scope: !722)
!836 = !DILocation(line: 0, scope: !722)
!837 = !DILocation(line: 159, column: 24, scope: !722)
!838 = !DILocation(line: 159, column: 42, scope: !722)
!839 = !DILocation(line: 159, column: 39, scope: !722)
!840 = !DILocation(line: 159, column: 32, scope: !722)
!841 = distinct !{!841, !831, !842, !797}
!842 = !DILocation(line: 160, column: 5, scope: !724)
!843 = !DILocation(line: 162, column: 11, scope: !727)
!844 = !DILocation(line: 162, column: 8, scope: !692)
!845 = !DILocation(line: 163, column: 19, scope: !846)
!846 = distinct !DILexicalBlock(scope: !727, file: !2, line: 162, column: 17)
!847 = !DILocation(line: 164, column: 46, scope: !846)
!848 = !DILocation(line: 164, column: 57, scope: !846)
!849 = !DILocation(line: 164, column: 43, scope: !846)
!850 = !DILocation(line: 164, column: 66, scope: !846)
!851 = !DILocation(line: 164, column: 64, scope: !846)
!852 = !DILocation(line: 164, column: 15, scope: !846)
!853 = !DILocation(line: 164, column: 19, scope: !846)
!854 = !DILocation(line: 165, column: 7, scope: !846)
!855 = !DILocation(line: 172, column: 31, scope: !726)
!856 = !DILocation(line: 172, column: 23, scope: !726)
!857 = !DILocation(line: 172, column: 34, scope: !726)
!858 = !DILocation(line: 0, scope: !726)
!859 = !DILocation(line: 173, column: 35, scope: !726)
!860 = !DILocation(line: 173, column: 23, scope: !726)
!861 = !DILocation(line: 174, column: 34, scope: !726)
!862 = !DILocation(line: 174, column: 26, scope: !726)
!863 = !DILocation(line: 174, column: 25, scope: !726)
!864 = !DILocation(line: 175, column: 22, scope: !726)
!865 = !DILocation(line: 175, column: 37, scope: !726)
!866 = !DILocation(line: 175, column: 29, scope: !726)
!867 = !DILocation(line: 176, column: 25, scope: !726)
!868 = !DILocation(line: 177, column: 39, scope: !726)
!869 = !DILocation(line: 177, column: 36, scope: !726)
!870 = !DILocation(line: 177, column: 29, scope: !726)
!871 = !DILocation(line: 177, column: 46, scope: !726)
!872 = !DILocation(line: 177, column: 20, scope: !726)
!873 = !DILocation(line: 178, column: 34, scope: !726)
!874 = !DILocation(line: 178, column: 23, scope: !726)
!875 = !DILocation(line: 178, column: 38, scope: !726)
!876 = !DILocation(line: 178, column: 45, scope: !726)
!877 = !DILocation(line: 178, column: 66, scope: !726)
!878 = !DILocation(line: 178, column: 77, scope: !726)
!879 = !DILocation(line: 178, column: 75, scope: !726)
!880 = !DILocation(line: 178, column: 63, scope: !726)
!881 = !DILocation(line: 178, column: 15, scope: !726)
!882 = !DILocation(line: 179, column: 47, scope: !726)
!883 = !DILocation(line: 179, column: 58, scope: !726)
!884 = !DILocation(line: 179, column: 44, scope: !726)
!885 = !DILocation(line: 179, column: 67, scope: !726)
!886 = !DILocation(line: 179, column: 65, scope: !726)
!887 = !DILocation(line: 179, column: 19, scope: !726)
!888 = !DILocation(line: 182, column: 3, scope: !693)
!889 = !DILocation(line: 0, scope: !693)
!890 = !DILocation(line: 183, column: 1, scope: !684)
!891 = distinct !DISubprogram(name: "gsl_sf_lnpoch", scope: !2, file: !2, line: 452, type: !892, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!84, !83, !83}
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(name: "a", arg: 1, scope: !891, file: !2, line: 452, type: !83)
!896 = !DILocalVariable(name: "x", arg: 2, scope: !891, file: !2, line: 452, type: !83)
!897 = !DILocalVariable(name: "result", scope: !891, file: !2, line: 454, type: !99)
!898 = !DILocalVariable(name: "status", scope: !891, file: !2, line: 454, type: !43)
!899 = distinct !DIAssignID()
!900 = !DILocation(line: 0, scope: !891)
!901 = !DILocation(line: 454, column: 3, scope: !891)
!902 = !DILocation(line: 0, scope: !95, inlinedAt: !903)
!903 = distinct !DILocation(line: 454, column: 3, scope: !891)
!904 = !DILocation(line: 286, column: 8, scope: !111, inlinedAt: !903)
!905 = !DILocation(line: 286, column: 15, scope: !111, inlinedAt: !903)
!906 = !DILocation(line: 287, column: 5, scope: !114, inlinedAt: !903)
!907 = distinct !DIAssignID()
!908 = distinct !DIAssignID()
!909 = !DILocation(line: 287, column: 5, scope: !123, inlinedAt: !903)
!910 = !DILocation(line: 289, column: 13, scope: !125, inlinedAt: !903)
!911 = !DILocation(line: 289, column: 11, scope: !111, inlinedAt: !903)
!912 = !DILocation(line: 291, column: 17, scope: !128, inlinedAt: !903)
!913 = distinct !DIAssignID()
!914 = !DILocation(line: 295, column: 12, scope: !131, inlinedAt: !903)
!915 = !DILocation(line: 454, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !891, file: !2, line: 454, column: 3)
!917 = !DILocation(line: 454, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 454, column: 3)
!919 = distinct !DILexicalBlock(scope: !916, file: !2, line: 454, column: 3)
!920 = !DILocation(line: 455, column: 1, scope: !891)
!921 = distinct !DISubprogram(name: "gsl_sf_poch", scope: !2, file: !2, line: 457, type: !892, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !922)
!922 = !{!923, !924, !925, !926}
!923 = !DILocalVariable(name: "a", arg: 1, scope: !921, file: !2, line: 457, type: !83)
!924 = !DILocalVariable(name: "x", arg: 2, scope: !921, file: !2, line: 457, type: !83)
!925 = !DILocalVariable(name: "result", scope: !921, file: !2, line: 459, type: !99)
!926 = !DILocalVariable(name: "status", scope: !921, file: !2, line: 459, type: !43)
!927 = distinct !DIAssignID()
!928 = distinct !DIAssignID()
!929 = distinct !DIAssignID()
!930 = !DILocation(line: 0, scope: !921)
!931 = !DILocation(line: 459, column: 3, scope: !921)
!932 = !DILocation(line: 0, scope: !576, inlinedAt: !933)
!933 = distinct !DILocation(line: 459, column: 3, scope: !921)
!934 = !DILocation(line: 0, scope: !570, inlinedAt: !933)
!935 = !DILocation(line: 397, column: 8, scope: !577, inlinedAt: !933)
!936 = !DILocation(line: 397, column: 6, scope: !570, inlinedAt: !933)
!937 = !DILocation(line: 402, column: 5, scope: !576, inlinedAt: !933)
!938 = !DILocation(line: 403, column: 5, scope: !576, inlinedAt: !933)
!939 = !DILocation(line: 404, column: 23, scope: !576, inlinedAt: !933)
!940 = !DILocation(line: 405, column: 16, scope: !582, inlinedAt: !933)
!941 = !DILocation(line: 405, column: 20, scope: !582, inlinedAt: !933)
!942 = !DILocation(line: 405, column: 9, scope: !576, inlinedAt: !933)
!943 = !DILocation(line: 407, column: 19, scope: !601, inlinedAt: !933)
!944 = distinct !DIAssignID()
!945 = !DILocation(line: 408, column: 7, scope: !601, inlinedAt: !933)
!946 = !DILocation(line: 410, column: 61, scope: !581, inlinedAt: !933)
!947 = !DILocation(line: 410, column: 25, scope: !581, inlinedAt: !933)
!948 = !DILocation(line: 0, scope: !581, inlinedAt: !933)
!949 = !DILocation(line: 411, column: 22, scope: !581, inlinedAt: !933)
!950 = !DILocation(line: 411, column: 19, scope: !581, inlinedAt: !933)
!951 = distinct !DIAssignID()
!952 = !DILocation(line: 412, column: 46, scope: !581, inlinedAt: !933)
!953 = !DILocation(line: 412, column: 44, scope: !581, inlinedAt: !933)
!954 = !DILocation(line: 412, column: 15, scope: !581, inlinedAt: !933)
!955 = !DILocation(line: 412, column: 19, scope: !581, inlinedAt: !933)
!956 = distinct !DIAssignID()
!957 = !DILocation(line: 413, column: 14, scope: !581, inlinedAt: !933)
!958 = !DILocation(line: 0, scope: !582, inlinedAt: !933)
!959 = !DILocation(line: 415, column: 3, scope: !577, inlinedAt: !933)
!960 = !DILocation(line: 459, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !921, file: !2, line: 459, column: 3)
!962 = !DILocation(line: 459, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !2, line: 459, column: 3)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 459, column: 3)
!965 = !DILocation(line: 460, column: 1, scope: !921)
!966 = distinct !DISubprogram(name: "gsl_sf_pochrel", scope: !2, file: !2, line: 462, type: !892, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DILocalVariable(name: "a", arg: 1, scope: !966, file: !2, line: 462, type: !83)
!969 = !DILocalVariable(name: "x", arg: 2, scope: !966, file: !2, line: 462, type: !83)
!970 = !DILocalVariable(name: "result", scope: !966, file: !2, line: 464, type: !99)
!971 = !DILocalVariable(name: "status", scope: !966, file: !2, line: 464, type: !43)
!972 = distinct !DIAssignID()
!973 = !DILocation(line: 0, scope: !966)
!974 = !DILocation(line: 464, column: 3, scope: !966)
!975 = !DILocation(line: 464, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !2, line: 464, column: 3)
!977 = !DILocation(line: 464, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !2, line: 464, column: 3)
!979 = distinct !DILexicalBlock(scope: !976, file: !2, line: 464, column: 3)
!980 = !DILocation(line: 465, column: 1, scope: !966)
!981 = !DISubprogram(name: "gsl_sf_gammainv_e", scope: !566, file: !566, line: 86, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!43, !83, !98}
!984 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !566, file: !566, line: 47, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubroutineType(types: !986)
!986 = !{!43, !84, !98}
!987 = !DISubprogram(name: "gsl_sf_pow_int", scope: !988, file: !988, line: 44, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!989 = !DISubroutineType(types: !990)
!990 = !{!84, !83, !695}
!991 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !992, file: !992, line: 69, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!993 = !DISubprogram(name: "gsl_sf_psi_e", scope: !994, file: !994, line: 60, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!995 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !618, file: !618, line: 75, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubprogram(name: "tan", scope: !561, file: !561, line: 66, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
