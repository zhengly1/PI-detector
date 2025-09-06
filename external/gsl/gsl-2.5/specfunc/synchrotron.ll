; ModuleID = 'synchrotron.c'
source_filename = "synchrotron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"synchrotron.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [35 x i8] c"gsl_sf_synchrotron_1_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [35 x i8] c"gsl_sf_synchrotron_2_e(x, &result)\00", align 1, !dbg !22
@synchrotron1_data = internal unnamed_addr constant [13 x double] [double 0x403E5D5BDD2B3FF7, double 0x403114533FB7ED08, double 0x40123D93472C0F26, double 0x3FE193B643E06CA2, double 0x3FA318AC08EC30B0, double 0x3F5A7007E6BB0848, double 0x3F09442D6BA73EA8, double 0x3EB1A30D62566F26, double 0x3E52C06D39D2920D, double 0x3DEF5B7C557E2FAE, double 0x3D85264BFFD5F966, double 0x3D177E2E3163EC08, double 1.516700e-16], align 16, !dbg !24
@synchrotron2_data = internal unnamed_addr constant [12 x double] [double 0x3FDCBD992AB67B60, double 0x3FB6FF735EB8FE9A, double 0x3F809911DB188110, double 0x3F3BEDF982996C42, double 0x3EEEF4BB530D7213, double 0x3E9859F1F0F1776A, double 0x3E3C9E9316BFA69D, double 0x3DDA16896DAF61FD, double 0x3D72FBF26B2D3A30, double 1.002200e-14, double 0x3C963198E070F96A, double 5.000000e-19], align 16, !dbg !83
@synchrotron21_data = internal unnamed_addr constant [13 x double] [double 0x40434F1560ED88DB, double 0x403709A7BAAEEB1E, double 0x4015856040A704BA, double 0x3FE3B3A53E9DA35C, double 0x3FA4D28A7FF2181C, double 0x3F5C569556B23213, double 0x3F0AC5537E8EBD02, double 0x3EB28834175CE45B, double 0x3E53948B5C299ED9, double 0x3DF04AB3CCD5CAAD, double 0x3D85E41EEFFFB981, double 2.152900e-14, double 1.560000e-16], align 16, !dbg !97
@synchrotron22_data = internal unnamed_addr constant [13 x double] [double 0x401FA010FE7883CD, double 0x40091530791AD33F, double 0x3FDF123C0A8AC927, double 0x3FA436F0EE1E620B, double 0x3F601B574FB9CCDE, double 0x3F114700FBDF1135, double 0x3EBA9AC54F29F22E, double 0x3E5ECD4B194C1714, double 0x3DFBC55BBE87FC56, double 0x3D940A8CF9B8D955, double 4.204590e-14, double 3.232000e-16, double 2.100000e-18], align 16, !dbg !102

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_synchrotron_1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !119 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !131, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !132, metadata !DIExpression()), !dbg !151
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !152
  br i1 %3, label %4, label %6, !dbg !153

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !154, !tbaa !157
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !154
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !154, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 187, i32 noundef 1) #6, !dbg !163
  br label %196, !dbg !163

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !165
  br i1 %7, label %8, label %17, !dbg !166

8:                                                ; preds = %6
  %9 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #6, !dbg !167
  tail call void @llvm.dbg.value(metadata double %9, metadata !133, metadata !DIExpression()), !dbg !168
  %10 = fmul double %9, 0x3FEB00839F875D26, !dbg !169
  %11 = fmul double %9, %10, !dbg !170
  %12 = fsub double 1.000000e+00, %11, !dbg !171
  tail call void @llvm.dbg.value(metadata double %12, metadata !137, metadata !DIExpression()), !dbg !168
  %13 = fmul double %9, 0x4001323BDCD9C076, !dbg !172
  %14 = fmul double %13, %12, !dbg !173
  store double %14, ptr %1, align 8, !dbg !174, !tbaa !157
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !175
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !176
  store double %15, ptr %16, align 8, !dbg !177, !tbaa !162
  br label %196

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !178
  br i1 %18, label %106, label %19, !dbg !179

19:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata double 0x3FFD05527B6E43D2, metadata !138, metadata !DIExpression()), !dbg !180
  %20 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #6, !dbg !181
  tail call void @llvm.dbg.value(metadata double %20, metadata !141, metadata !DIExpression()), !dbg !180
  %21 = tail call double @gsl_sf_pow_int(double noundef %20, i32 noundef 11) #6, !dbg !182
  tail call void @llvm.dbg.value(metadata double %21, metadata !142, metadata !DIExpression()), !dbg !180
  %22 = fmul double %0, %0, !dbg !183
  %23 = fmul double %22, 1.250000e-01, !dbg !184
  %24 = fadd double %23, -1.000000e+00, !dbg !185
  tail call void @llvm.dbg.value(metadata double %24, metadata !143, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %24, metadata !195, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !209
  %25 = fmul double %24, 2.000000e+00, !dbg !211
  %26 = fadd double %25, 1.000000e+00, !dbg !212
  %27 = fadd double %26, -1.000000e+00, !dbg !213
  %28 = fmul double %27, 5.000000e-01, !dbg !214
  call void @llvm.dbg.value(metadata double %28, metadata !200, metadata !DIExpression()), !dbg !209
  %29 = fmul double %28, 2.000000e+00, !dbg !215
  call void @llvm.dbg.value(metadata double %29, metadata !201, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32 12, metadata !197, metadata !DIExpression()), !dbg !209
  br label %30, !dbg !216

30:                                               ; preds = %30, %19
  %31 = phi i64 [ 12, %19 ], [ %46, %30 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %39, %30 ]
  %33 = phi double [ 0.000000e+00, %19 ], [ %45, %30 ]
  %34 = phi double [ 0.000000e+00, %19 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata i64 %31, metadata !197, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %32, metadata !198, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %33, metadata !202, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %34, metadata !199, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %32, metadata !203, metadata !DIExpression()), !dbg !217
  %35 = fmul double %29, %32, !dbg !218
  %36 = fsub double %35, %34, !dbg !219
  %37 = getelementptr inbounds double, ptr @synchrotron1_data, i64 %31, !dbg !220
  %38 = load double, ptr %37, align 8, !dbg !220, !tbaa !221
  %39 = fadd double %36, %38, !dbg !222
  call void @llvm.dbg.value(metadata double %39, metadata !198, metadata !DIExpression()), !dbg !209
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !223
  %41 = tail call double @llvm.fabs.f64(double %34), !dbg !224
  %42 = fadd double %40, %41, !dbg !225
  %43 = tail call double @llvm.fabs.f64(double %38), !dbg !226
  %44 = fadd double %42, %43, !dbg !227
  %45 = fadd double %33, %44, !dbg !228
  call void @llvm.dbg.value(metadata double %45, metadata !202, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %32, metadata !199, metadata !DIExpression()), !dbg !209
  %46 = add nsw i64 %31, -1, !dbg !229
  call void @llvm.dbg.value(metadata i64 %46, metadata !197, metadata !DIExpression()), !dbg !209
  %47 = icmp ugt i64 %31, 1, !dbg !230
  br i1 %47, label %30, label %48, !dbg !216, !llvm.loop !231

48:                                               ; preds = %30
  call void @llvm.dbg.value(metadata double %39, metadata !207, metadata !DIExpression()), !dbg !234
  %49 = fmul double %28, %39, !dbg !235
  %50 = fsub double %49, %32, !dbg !236
  %51 = fadd double %50, 0x402E5D5BDD2B3FF7, !dbg !237
  call void @llvm.dbg.value(metadata double %51, metadata !198, metadata !DIExpression()), !dbg !209
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !238
  %53 = tail call double @llvm.fabs.f64(double %32), !dbg !239
  %54 = fadd double %53, %52, !dbg !240
  %55 = fadd double %54, 0x402E5D5BDD2B3FF7, !dbg !241
  %56 = fadd double %45, %55, !dbg !242
  call void @llvm.dbg.value(metadata double %56, metadata !202, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double %51, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  %57 = fmul double %56, 0x3CB0000000000000, !dbg !243
  %58 = fadd double %57, 1.516700e-16, !dbg !244
  tail call void @llvm.dbg.value(metadata double %58, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %24, metadata !195, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !245
  %59 = fadd double %25, 1.000000e+00, !dbg !247
  %60 = fadd double %59, -1.000000e+00, !dbg !248
  %61 = fmul double %60, 5.000000e-01, !dbg !249
  call void @llvm.dbg.value(metadata double %61, metadata !200, metadata !DIExpression()), !dbg !245
  %62 = fmul double %61, 2.000000e+00, !dbg !250
  call void @llvm.dbg.value(metadata double %62, metadata !201, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 11, metadata !197, metadata !DIExpression()), !dbg !245
  br label %63, !dbg !251

63:                                               ; preds = %63, %48
  %64 = phi i64 [ 11, %48 ], [ %79, %63 ]
  %65 = phi double [ 0.000000e+00, %48 ], [ %72, %63 ]
  %66 = phi double [ 0.000000e+00, %48 ], [ %78, %63 ]
  %67 = phi double [ 0.000000e+00, %48 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !197, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %65, metadata !198, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %66, metadata !202, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %67, metadata !199, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %65, metadata !203, metadata !DIExpression()), !dbg !252
  %68 = fmul double %62, %65, !dbg !253
  %69 = fsub double %68, %67, !dbg !254
  %70 = getelementptr inbounds double, ptr @synchrotron2_data, i64 %64, !dbg !255
  %71 = load double, ptr %70, align 8, !dbg !255, !tbaa !221
  %72 = fadd double %69, %71, !dbg !256
  call void @llvm.dbg.value(metadata double %72, metadata !198, metadata !DIExpression()), !dbg !245
  %73 = tail call double @llvm.fabs.f64(double %68), !dbg !257
  %74 = tail call double @llvm.fabs.f64(double %67), !dbg !258
  %75 = fadd double %73, %74, !dbg !259
  %76 = tail call double @llvm.fabs.f64(double %71), !dbg !260
  %77 = fadd double %75, %76, !dbg !261
  %78 = fadd double %66, %77, !dbg !262
  call void @llvm.dbg.value(metadata double %78, metadata !202, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double %65, metadata !199, metadata !DIExpression()), !dbg !245
  %79 = add nsw i64 %64, -1, !dbg !263
  call void @llvm.dbg.value(metadata i64 %79, metadata !197, metadata !DIExpression()), !dbg !245
  %80 = icmp ugt i64 %64, 1, !dbg !264
  br i1 %80, label %63, label %81, !dbg !251, !llvm.loop !265

81:                                               ; preds = %63
  call void @llvm.dbg.value(metadata double %72, metadata !207, metadata !DIExpression()), !dbg !267
  %82 = fmul double %61, %72, !dbg !268
  %83 = fsub double %82, %65, !dbg !269
  %84 = fadd double %83, 0x3FCCBD992AB67B60, !dbg !270
  call void @llvm.dbg.value(metadata double %84, metadata !198, metadata !DIExpression()), !dbg !245
  %85 = tail call double @llvm.fabs.f64(double %82), !dbg !271
  %86 = tail call double @llvm.fabs.f64(double %65), !dbg !272
  %87 = fadd double %86, %85, !dbg !273
  %88 = fadd double %87, 0x3FCCBD992AB67B60, !dbg !274
  %89 = fadd double %78, %88, !dbg !275
  call void @llvm.dbg.value(metadata double %89, metadata !202, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %84, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  %90 = fmul double %89, 0x3CB0000000000000, !dbg !276
  %91 = fadd double %90, 5.000000e-19, !dbg !277
  tail call void @llvm.dbg.value(metadata double %91, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  %92 = fmul double %20, %51, !dbg !278
  %93 = fmul double %21, %84, !dbg !279
  %94 = fsub double %92, %93, !dbg !280
  %95 = fmul double %0, 0x3FFD05527B6E43D2, !dbg !281
  %96 = fsub double %94, %95, !dbg !282
  store double %96, ptr %1, align 8, !dbg !283, !tbaa !157
  %97 = fmul double %20, %58, !dbg !284
  %98 = fmul double %21, %91, !dbg !285
  %99 = fadd double %97, %98, !dbg !286
  %100 = fmul double %95, 0x3CB0000000000000, !dbg !287
  %101 = fadd double %100, %99, !dbg !288
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !289
  %103 = tail call double @llvm.fabs.f64(double %96), !dbg !290
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !291
  %105 = fadd double %104, %101, !dbg !292
  store double %105, ptr %102, align 8, !dbg !292, !tbaa !162
  br label %196

106:                                              ; preds = %17
  %107 = fcmp olt double %0, 0x40894CC46AD56A15, !dbg !293
  br i1 %107, label %108, label %194, !dbg !294

108:                                              ; preds = %106
  tail call void @llvm.dbg.value(metadata double 0x3FCCE6BB25AA1316, metadata !146, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !149, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !195, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !201, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 22, metadata !197, metadata !DIExpression()), !dbg !296
  %109 = fsub double 1.200000e+01, %0, !dbg !298
  %110 = fadd double %0, 4.000000e+00, !dbg !299
  %111 = fdiv double %109, %110, !dbg !300
  tail call void @llvm.dbg.value(metadata double %111, metadata !149, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata double %111, metadata !195, metadata !DIExpression()), !dbg !296
  %112 = fmul double %111, 2.000000e+00, !dbg !301
  %113 = fadd double %112, 1.000000e+00, !dbg !302
  %114 = fadd double %113, -1.000000e+00, !dbg !303
  %115 = fmul double %114, 5.000000e-01, !dbg !304
  call void @llvm.dbg.value(metadata double %115, metadata !200, metadata !DIExpression()), !dbg !296
  %116 = fmul double %115, 2.000000e+00, !dbg !305
  call void @llvm.dbg.value(metadata double %116, metadata !201, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 22, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !203, metadata !DIExpression()), !dbg !306
  %117 = fmul double %116, 0.000000e+00, !dbg !307
  %118 = fadd double %117, 7.000000e-19, !dbg !308
  call void @llvm.dbg.value(metadata double %118, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 21, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 21, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %118, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %118, metadata !203, metadata !DIExpression()), !dbg !306
  %119 = fmul double %116, %118, !dbg !307
  %120 = fadd double %119, 4.100000e-18, !dbg !308
  call void @llvm.dbg.value(metadata double %120, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %118, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 20, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 20, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %120, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %118, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %120, metadata !203, metadata !DIExpression()), !dbg !306
  %121 = fmul double %116, %120, !dbg !307
  %122 = fsub double %121, %118, !dbg !309
  %123 = fadd double %122, 2.490000e-17, !dbg !308
  call void @llvm.dbg.value(metadata double %123, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %120, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 19, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 19, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %123, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %120, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %123, metadata !203, metadata !DIExpression()), !dbg !306
  %124 = fmul double %116, %123, !dbg !307
  %125 = fsub double %124, %120, !dbg !309
  %126 = fadd double %125, 1.520000e-16, !dbg !308
  call void @llvm.dbg.value(metadata double %126, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %123, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 18, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 18, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %126, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %123, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %126, metadata !203, metadata !DIExpression()), !dbg !306
  %127 = fmul double %116, %126, !dbg !307
  %128 = fsub double %127, %123, !dbg !309
  %129 = fadd double %128, 9.291000e-16, !dbg !308
  call void @llvm.dbg.value(metadata double %129, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %126, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 17, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 17, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %129, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %126, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %129, metadata !203, metadata !DIExpression()), !dbg !306
  %130 = fmul double %116, %129, !dbg !307
  %131 = fsub double %130, %126, !dbg !309
  %132 = fadd double %131, 5.699400e-15, !dbg !308
  call void @llvm.dbg.value(metadata double %132, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %129, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 16, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 16, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %132, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %129, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %132, metadata !203, metadata !DIExpression()), !dbg !306
  %133 = fmul double %116, %132, !dbg !307
  %134 = fsub double %133, %129, !dbg !309
  %135 = fadd double %134, 3.499670e-14, !dbg !308
  call void @llvm.dbg.value(metadata double %135, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %132, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 15, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 15, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %135, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %132, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %135, metadata !203, metadata !DIExpression()), !dbg !306
  %136 = fmul double %116, %135, !dbg !307
  %137 = fsub double %136, %132, !dbg !309
  %138 = fadd double %137, 2.159150e-13, !dbg !308
  call void @llvm.dbg.value(metadata double %138, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %135, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 14, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 14, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %138, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %135, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %138, metadata !203, metadata !DIExpression()), !dbg !306
  %139 = fmul double %116, %138, !dbg !307
  %140 = fsub double %139, %135, !dbg !309
  %141 = fadd double %140, 0x3D777D88B9C351EF, !dbg !308
  call void @llvm.dbg.value(metadata double %141, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %138, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 13, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 13, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %141, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %138, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %141, metadata !203, metadata !DIExpression()), !dbg !306
  %142 = fmul double %116, %141, !dbg !307
  %143 = fsub double %142, %138, !dbg !309
  %144 = fadd double %143, 0x3DA240A71F65D8A5, !dbg !308
  call void @llvm.dbg.value(metadata double %144, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %141, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 12, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 12, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %144, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %141, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %144, metadata !203, metadata !DIExpression()), !dbg !306
  %145 = fmul double %116, %144, !dbg !307
  %146 = fsub double %145, %141, !dbg !309
  %147 = fadd double %146, 0x3DCC78FDFC534C7C, !dbg !308
  call void @llvm.dbg.value(metadata double %147, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %144, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 11, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 11, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %147, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %144, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %147, metadata !203, metadata !DIExpression()), !dbg !306
  %148 = fmul double %116, %147, !dbg !307
  %149 = fsub double %148, %144, !dbg !309
  %150 = fadd double %149, 0x3DF658C2786FFBB9, !dbg !308
  call void @llvm.dbg.value(metadata double %150, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %147, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 10, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 10, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %150, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %147, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %150, metadata !203, metadata !DIExpression()), !dbg !306
  %151 = fmul double %116, %150, !dbg !307
  %152 = fsub double %151, %147, !dbg !309
  %153 = fadd double %152, 0x3E21A2D006C16A69, !dbg !308
  call void @llvm.dbg.value(metadata double %153, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %150, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 9, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 9, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %153, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %150, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %153, metadata !203, metadata !DIExpression()), !dbg !306
  %154 = fmul double %116, %153, !dbg !307
  %155 = fsub double %154, %150, !dbg !309
  %156 = fadd double %155, 0x3E4C113E764893FB, !dbg !308
  call void @llvm.dbg.value(metadata double %156, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %153, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 8, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 8, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %156, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %153, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %156, metadata !203, metadata !DIExpression()), !dbg !306
  %157 = fmul double %116, %156, !dbg !307
  %158 = fsub double %157, %153, !dbg !309
  %159 = fadd double %158, 0x3E768435970F66BC, !dbg !308
  call void @llvm.dbg.value(metadata double %159, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %156, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 7, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 7, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %159, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %156, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %159, metadata !203, metadata !DIExpression()), !dbg !306
  %160 = fmul double %116, %159, !dbg !307
  %161 = fsub double %160, %156, !dbg !309
  %162 = fadd double %161, 0x3EA247945F49427A, !dbg !308
  call void @llvm.dbg.value(metadata double %162, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %159, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 6, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 6, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %162, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %159, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %162, metadata !203, metadata !DIExpression()), !dbg !306
  %163 = fmul double %116, %162, !dbg !307
  %164 = fsub double %163, %159, !dbg !309
  %165 = fadd double %164, 0x3ECE0DF3BCC3D18E, !dbg !308
  call void @llvm.dbg.value(metadata double %165, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %162, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 5, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 5, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %165, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %162, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %165, metadata !203, metadata !DIExpression()), !dbg !306
  %166 = fmul double %116, %165, !dbg !307
  %167 = fsub double %166, %162, !dbg !309
  %168 = fadd double %167, 0x3EF92FD8D9B06693, !dbg !308
  call void @llvm.dbg.value(metadata double %168, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %165, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 4, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 4, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %168, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %165, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %168, metadata !203, metadata !DIExpression()), !dbg !306
  %169 = fmul double %116, %168, !dbg !307
  %170 = fsub double %169, %165, !dbg !309
  %171 = fadd double %170, 0x3F25900F1EE69498, !dbg !308
  call void @llvm.dbg.value(metadata double %171, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %168, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 3, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 3, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %171, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %168, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %171, metadata !203, metadata !DIExpression()), !dbg !306
  %172 = fmul double %116, %171, !dbg !307
  %173 = fsub double %172, %168, !dbg !309
  %174 = fadd double %173, 0x3F532CF0C63FFE18, !dbg !308
  call void @llvm.dbg.value(metadata double %174, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %171, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 2, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 2, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %174, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %171, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %174, metadata !203, metadata !DIExpression()), !dbg !306
  %175 = fmul double %116, %174, !dbg !307
  %176 = fsub double %175, %171, !dbg !309
  %177 = fadd double %176, 0x3F81CFA213ED45BE, !dbg !308
  call void @llvm.dbg.value(metadata double %177, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %174, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %177, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %174, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %177, metadata !203, metadata !DIExpression()), !dbg !306
  %178 = fmul double %116, %177, !dbg !307
  %179 = fsub double %178, %174, !dbg !309
  %180 = fadd double %179, 0x3FB2FA87B6FA3829, !dbg !308
  call void @llvm.dbg.value(metadata double %180, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %177, metadata !199, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %180, metadata !207, metadata !DIExpression()), !dbg !310
  %181 = fmul double %115, %180, !dbg !311
  %182 = fsub double %181, %177, !dbg !312
  %183 = fadd double %182, 0x3FF1103DDFDB89FB, !dbg !313
  call void @llvm.dbg.value(metadata double %183, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !296
  tail call void @llvm.dbg.value(metadata double %183, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !295
  %184 = tail call double @sqrt(double noundef %0) #6, !dbg !314
  %185 = fmul double %184, %183, !dbg !315
  %186 = fsub double 0x3FCCE6BB25AA1316, %0, !dbg !316
  %187 = tail call double @exp(double noundef %186) #6, !dbg !317
  %188 = fmul double %187, %185, !dbg !318
  store double %188, ptr %1, align 8, !dbg !319, !tbaa !157
  %189 = fmul double %188, 0x3CC0000000000000, !dbg !320
  %190 = tail call double @llvm.fabs.f64(double %186), !dbg !321
  %191 = fadd double %190, 1.000000e+00, !dbg !322
  %192 = fmul double %191, %189, !dbg !323
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !324
  store double %192, ptr %193, align 8, !dbg !325, !tbaa !162
  br label %196

194:                                              ; preds = %106
  store double 0.000000e+00, ptr %1, align 8, !dbg !326, !tbaa !157
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !326
  store double 0x10000000000000, ptr %195, align 8, !dbg !326, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 15) #6, !dbg !329
  br label %196, !dbg !329

196:                                              ; preds = %4, %8, %81, %108, %194
  %197 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %81 ], [ 0, %108 ], [ 15, %194 ], !dbg !331
  ret i32 %197, !dbg !332
}

declare !dbg !333 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !338 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !342 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !347 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !350 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_synchrotron_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !351 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !353, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !354, metadata !DIExpression()), !dbg !372
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !373
  br i1 %3, label %4, label %6, !dbg !374

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !375, !tbaa !157
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !375
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !375, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 1) #6, !dbg !378
  br label %174, !dbg !378

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !380
  br i1 %7, label %8, label %17, !dbg !381

8:                                                ; preds = %6
  %9 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #6, !dbg !382
  tail call void @llvm.dbg.value(metadata double %9, metadata !355, metadata !DIExpression()), !dbg !383
  %10 = fmul double %9, 0x3FF2D7BE2398B31C, !dbg !384
  %11 = fmul double %10, %0, !dbg !385
  %12 = fsub double 1.000000e+00, %11, !dbg !386
  tail call void @llvm.dbg.value(metadata double %12, metadata !359, metadata !DIExpression()), !dbg !383
  %13 = fmul double %9, 0x3FF1323BDCD9C076, !dbg !387
  %14 = fmul double %13, %12, !dbg !388
  store double %14, ptr %1, align 8, !dbg !389, !tbaa !157
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !390
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !391
  store double %15, ptr %16, align 8, !dbg !392, !tbaa !162
  br label %174

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !393
  br i1 %18, label %102, label %19, !dbg !394

19:                                               ; preds = %17
  %20 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #6, !dbg !395
  tail call void @llvm.dbg.value(metadata double %20, metadata !360, metadata !DIExpression()), !dbg !396
  %21 = tail call double @gsl_sf_pow_int(double noundef %20, i32 noundef 5) #6, !dbg !397
  tail call void @llvm.dbg.value(metadata double %21, metadata !363, metadata !DIExpression()), !dbg !396
  %22 = fmul double %0, %0, !dbg !398
  %23 = fmul double %22, 1.250000e-01, !dbg !399
  %24 = fadd double %23, -1.000000e+00, !dbg !400
  tail call void @llvm.dbg.value(metadata double %24, metadata !364, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %24, metadata !195, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !401
  %25 = fmul double %24, 2.000000e+00, !dbg !403
  %26 = fadd double %25, 1.000000e+00, !dbg !404
  %27 = fadd double %26, -1.000000e+00, !dbg !405
  %28 = fmul double %27, 5.000000e-01, !dbg !406
  call void @llvm.dbg.value(metadata double %28, metadata !200, metadata !DIExpression()), !dbg !401
  %29 = fmul double %28, 2.000000e+00, !dbg !407
  call void @llvm.dbg.value(metadata double %29, metadata !201, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 12, metadata !197, metadata !DIExpression()), !dbg !401
  br label %30, !dbg !408

30:                                               ; preds = %30, %19
  %31 = phi i64 [ 12, %19 ], [ %46, %30 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %39, %30 ]
  %33 = phi double [ 0.000000e+00, %19 ], [ %45, %30 ]
  %34 = phi double [ 0.000000e+00, %19 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata i64 %31, metadata !197, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %32, metadata !198, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %33, metadata !202, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %34, metadata !199, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %32, metadata !203, metadata !DIExpression()), !dbg !409
  %35 = fmul double %29, %32, !dbg !410
  %36 = fsub double %35, %34, !dbg !411
  %37 = getelementptr inbounds double, ptr @synchrotron21_data, i64 %31, !dbg !412
  %38 = load double, ptr %37, align 8, !dbg !412, !tbaa !221
  %39 = fadd double %36, %38, !dbg !413
  call void @llvm.dbg.value(metadata double %39, metadata !198, metadata !DIExpression()), !dbg !401
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !414
  %41 = tail call double @llvm.fabs.f64(double %34), !dbg !415
  %42 = fadd double %40, %41, !dbg !416
  %43 = tail call double @llvm.fabs.f64(double %38), !dbg !417
  %44 = fadd double %42, %43, !dbg !418
  %45 = fadd double %33, %44, !dbg !419
  call void @llvm.dbg.value(metadata double %45, metadata !202, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata double %32, metadata !199, metadata !DIExpression()), !dbg !401
  %46 = add nsw i64 %31, -1, !dbg !420
  call void @llvm.dbg.value(metadata i64 %46, metadata !197, metadata !DIExpression()), !dbg !401
  %47 = icmp ugt i64 %31, 1, !dbg !421
  br i1 %47, label %30, label %48, !dbg !408, !llvm.loop !422

48:                                               ; preds = %30
  call void @llvm.dbg.value(metadata double %39, metadata !207, metadata !DIExpression()), !dbg !424
  %49 = fmul double %28, %39, !dbg !425
  %50 = fsub double %49, %32, !dbg !426
  %51 = fadd double %50, 0x40334F1560ED88DB, !dbg !427
  call void @llvm.dbg.value(metadata double %51, metadata !198, metadata !DIExpression()), !dbg !401
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !428
  %53 = tail call double @llvm.fabs.f64(double %32), !dbg !429
  %54 = fadd double %53, %52, !dbg !430
  %55 = fadd double %54, 0x40334F1560ED88DB, !dbg !431
  %56 = fadd double %45, %55, !dbg !432
  call void @llvm.dbg.value(metadata double %56, metadata !202, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %51, metadata !365, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !396
  %57 = fmul double %56, 0x3CB0000000000000, !dbg !433
  %58 = fadd double %57, 1.560000e-16, !dbg !434
  tail call void @llvm.dbg.value(metadata double %58, metadata !365, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !396
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %24, metadata !195, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !435
  %59 = fadd double %25, 1.000000e+00, !dbg !437
  %60 = fadd double %59, -1.000000e+00, !dbg !438
  %61 = fmul double %60, 5.000000e-01, !dbg !439
  call void @llvm.dbg.value(metadata double %61, metadata !200, metadata !DIExpression()), !dbg !435
  %62 = fmul double %61, 2.000000e+00, !dbg !440
  call void @llvm.dbg.value(metadata double %62, metadata !201, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 12, metadata !197, metadata !DIExpression()), !dbg !435
  br label %63, !dbg !441

63:                                               ; preds = %63, %48
  %64 = phi i64 [ 12, %48 ], [ %79, %63 ]
  %65 = phi double [ 0.000000e+00, %48 ], [ %72, %63 ]
  %66 = phi double [ 0.000000e+00, %48 ], [ %78, %63 ]
  %67 = phi double [ 0.000000e+00, %48 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !197, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %65, metadata !198, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %66, metadata !202, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %67, metadata !199, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %65, metadata !203, metadata !DIExpression()), !dbg !442
  %68 = fmul double %62, %65, !dbg !443
  %69 = fsub double %68, %67, !dbg !444
  %70 = getelementptr inbounds double, ptr @synchrotron22_data, i64 %64, !dbg !445
  %71 = load double, ptr %70, align 8, !dbg !445, !tbaa !221
  %72 = fadd double %69, %71, !dbg !446
  call void @llvm.dbg.value(metadata double %72, metadata !198, metadata !DIExpression()), !dbg !435
  %73 = tail call double @llvm.fabs.f64(double %68), !dbg !447
  %74 = tail call double @llvm.fabs.f64(double %67), !dbg !448
  %75 = fadd double %73, %74, !dbg !449
  %76 = tail call double @llvm.fabs.f64(double %71), !dbg !450
  %77 = fadd double %75, %76, !dbg !451
  %78 = fadd double %66, %77, !dbg !452
  call void @llvm.dbg.value(metadata double %78, metadata !202, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %65, metadata !199, metadata !DIExpression()), !dbg !435
  %79 = add nsw i64 %64, -1, !dbg !453
  call void @llvm.dbg.value(metadata i64 %79, metadata !197, metadata !DIExpression()), !dbg !435
  %80 = icmp ugt i64 %64, 1, !dbg !454
  br i1 %80, label %63, label %81, !dbg !441, !llvm.loop !455

81:                                               ; preds = %63
  call void @llvm.dbg.value(metadata double %72, metadata !207, metadata !DIExpression()), !dbg !457
  %82 = fmul double %61, %72, !dbg !458
  %83 = fsub double %82, %65, !dbg !459
  %84 = fadd double %83, 0x400FA010FE7883CD, !dbg !460
  call void @llvm.dbg.value(metadata double %84, metadata !198, metadata !DIExpression()), !dbg !435
  %85 = tail call double @llvm.fabs.f64(double %82), !dbg !461
  %86 = tail call double @llvm.fabs.f64(double %65), !dbg !462
  %87 = fadd double %86, %85, !dbg !463
  %88 = fadd double %87, 0x400FA010FE7883CD, !dbg !464
  %89 = fadd double %78, %88, !dbg !465
  call void @llvm.dbg.value(metadata double %89, metadata !202, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %84, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !396
  %90 = fmul double %89, 0x3CB0000000000000, !dbg !466
  %91 = fadd double %90, 2.100000e-18, !dbg !467
  tail call void @llvm.dbg.value(metadata double %91, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !396
  %92 = fmul double %20, %51, !dbg !468
  %93 = fmul double %21, %84, !dbg !469
  %94 = fsub double %92, %93, !dbg !470
  store double %94, ptr %1, align 8, !dbg !471, !tbaa !157
  %95 = fmul double %20, %58, !dbg !472
  %96 = fmul double %21, %91, !dbg !473
  %97 = fadd double %95, %96, !dbg !474
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !475
  %99 = tail call double @llvm.fabs.f64(double %94), !dbg !476
  %100 = fmul double %99, 0x3CC0000000000000, !dbg !477
  %101 = fadd double %100, %97, !dbg !478
  store double %101, ptr %98, align 8, !dbg !478, !tbaa !162
  br label %174

102:                                              ; preds = %17
  %103 = fcmp olt double %0, 0x40894CC46AD56A15, !dbg !479
  br i1 %103, label %104, label %172, !dbg !480

104:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata double 0x3FCCE6BB25AA1316, metadata !367, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata !186, metadata !187, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !195, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr undef, metadata !196, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !201, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32 16, metadata !197, metadata !DIExpression()), !dbg !482
  %105 = fsub double 1.000000e+01, %0, !dbg !484
  %106 = fadd double %0, 2.000000e+00, !dbg !485
  %107 = fdiv double %105, %106, !dbg !486
  tail call void @llvm.dbg.value(metadata double %107, metadata !370, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata double %107, metadata !195, metadata !DIExpression()), !dbg !482
  %108 = fmul double %107, 2.000000e+00, !dbg !487
  %109 = fadd double %108, 1.000000e+00, !dbg !488
  %110 = fadd double %109, -1.000000e+00, !dbg !489
  %111 = fmul double %110, 5.000000e-01, !dbg !490
  call void @llvm.dbg.value(metadata double %111, metadata !200, metadata !DIExpression()), !dbg !482
  %112 = fmul double %111, 2.000000e+00, !dbg !491
  call void @llvm.dbg.value(metadata double %112, metadata !201, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 16, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !203, metadata !DIExpression()), !dbg !492
  %113 = fmul double %112, 0.000000e+00, !dbg !493
  %114 = fadd double %113, 3.000000e-18, !dbg !494
  call void @llvm.dbg.value(metadata double %114, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 15, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 15, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %114, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %114, metadata !203, metadata !DIExpression()), !dbg !492
  %115 = fmul double %112, %114, !dbg !493
  %116 = fadd double %115, 3.070000e-17, !dbg !494
  call void @llvm.dbg.value(metadata double %116, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %114, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 14, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 14, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %116, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %114, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %116, metadata !203, metadata !DIExpression()), !dbg !492
  %117 = fmul double %112, %116, !dbg !493
  %118 = fsub double %117, %114, !dbg !495
  %119 = fadd double %118, 3.190000e-16, !dbg !494
  call void @llvm.dbg.value(metadata double %119, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %116, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 13, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 13, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %119, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %116, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %119, metadata !203, metadata !DIExpression()), !dbg !492
  %120 = fmul double %112, %119, !dbg !493
  %121 = fsub double %120, %116, !dbg !495
  %122 = fadd double %121, 3.330100e-15, !dbg !494
  call void @llvm.dbg.value(metadata double %122, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %119, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 12, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 12, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %122, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %119, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %122, metadata !203, metadata !DIExpression()), !dbg !492
  %123 = fmul double %112, %122, !dbg !493
  %124 = fsub double %123, %119, !dbg !495
  %125 = fadd double %124, 3.480230e-14, !dbg !494
  call void @llvm.dbg.value(metadata double %125, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %122, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 11, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 11, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %125, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %122, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %125, metadata !203, metadata !DIExpression()), !dbg !492
  %126 = fmul double %112, %125, !dbg !493
  %127 = fsub double %126, %122, !dbg !495
  %128 = fadd double %127, 0x3D59C3A7357438EA, !dbg !494
  call void @llvm.dbg.value(metadata double %128, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %125, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 10, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 10, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %128, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %125, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %128, metadata !203, metadata !DIExpression()), !dbg !492
  %129 = fmul double %112, %128, !dbg !493
  %130 = fsub double %129, %125, !dbg !495
  %131 = fadd double %130, 0x3D90FC9241CF4DEF, !dbg !494
  call void @llvm.dbg.value(metadata double %131, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %128, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 9, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 9, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %131, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %128, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %131, metadata !203, metadata !DIExpression()), !dbg !492
  %132 = fmul double %112, %131, !dbg !493
  %133 = fsub double %132, %128, !dbg !495
  %134 = fadd double %133, 0x3DC68E02C94F5417, !dbg !494
  call void @llvm.dbg.value(metadata double %134, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %131, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 8, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 8, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %134, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %131, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %134, metadata !203, metadata !DIExpression()), !dbg !492
  %135 = fmul double %112, %134, !dbg !493
  %136 = fsub double %135, %131, !dbg !495
  %137 = fadd double %136, 0x3DFE1AAFCD0CDDF7, !dbg !494
  call void @llvm.dbg.value(metadata double %137, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %134, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 7, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 7, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %137, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %134, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %137, metadata !203, metadata !DIExpression()), !dbg !492
  %138 = fmul double %112, %137, !dbg !493
  %139 = fsub double %138, %134, !dbg !495
  %140 = fadd double %139, 0x3E3445504CDF18C3, !dbg !494
  call void @llvm.dbg.value(metadata double %140, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %137, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 6, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 6, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %140, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %137, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %140, metadata !203, metadata !DIExpression()), !dbg !492
  %141 = fmul double %112, %140, !dbg !493
  %142 = fsub double %141, %137, !dbg !495
  %143 = fadd double %142, 0x3E6B8850E14A648E, !dbg !494
  call void @llvm.dbg.value(metadata double %143, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %140, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 5, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 5, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %143, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %140, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %143, metadata !203, metadata !DIExpression()), !dbg !492
  %144 = fmul double %112, %143, !dbg !493
  %145 = fsub double %144, %140, !dbg !495
  %146 = fadd double %145, 0x3EA2F3C2CE92E7AF, !dbg !494
  call void @llvm.dbg.value(metadata double %146, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %143, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 4, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 4, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %146, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %143, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %146, metadata !203, metadata !DIExpression()), !dbg !492
  %147 = fmul double %112, %146, !dbg !493
  %148 = fsub double %147, %143, !dbg !495
  %149 = fadd double %148, 0x3EDA79EF10445095, !dbg !494
  call void @llvm.dbg.value(metadata double %149, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %146, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 3, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 3, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %149, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %146, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %149, metadata !203, metadata !DIExpression()), !dbg !492
  %150 = fmul double %112, %149, !dbg !493
  %151 = fsub double %150, %146, !dbg !495
  %152 = fadd double %151, 0x3F12F6DBB13E72B8, !dbg !494
  call void @llvm.dbg.value(metadata double %152, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %149, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 2, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 2, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %152, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %149, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %152, metadata !203, metadata !DIExpression()), !dbg !492
  %153 = fmul double %112, %152, !dbg !493
  %154 = fsub double %153, %149, !dbg !495
  %155 = fadd double %154, 0x3F4BFDDF26FC1FE5, !dbg !494
  call void @llvm.dbg.value(metadata double %155, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %152, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %155, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %152, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %155, metadata !203, metadata !DIExpression()), !dbg !492
  %156 = fmul double %112, %155, !dbg !493
  %157 = fsub double %156, %152, !dbg !495
  %158 = fadd double %157, 0x3F8670394100C94F, !dbg !494
  call void @llvm.dbg.value(metadata double %158, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %155, metadata !199, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double %158, metadata !207, metadata !DIExpression()), !dbg !496
  %159 = fmul double %111, %158, !dbg !497
  %160 = fsub double %159, %155, !dbg !498
  %161 = fadd double %160, 0x3FF029A67E92DF00, !dbg !499
  call void @llvm.dbg.value(metadata double %161, metadata !198, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double %161, metadata !371, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !481
  tail call void @llvm.dbg.value(metadata double poison, metadata !371, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !481
  %162 = tail call double @sqrt(double noundef %0) #6, !dbg !500
  %163 = fsub double 0x3FCCE6BB25AA1316, %0, !dbg !501
  %164 = tail call double @exp(double noundef %163) #6, !dbg !502
  %165 = fmul double %162, %164, !dbg !503
  %166 = fmul double %161, %165, !dbg !504
  store double %166, ptr %1, align 8, !dbg !505, !tbaa !157
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !506
  %168 = tail call double @llvm.fabs.f64(double %163), !dbg !507
  %169 = fadd double %168, 1.000000e+00, !dbg !508
  %170 = fmul double %169, %167, !dbg !509
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !510
  store double %170, ptr %171, align 8, !dbg !511, !tbaa !162
  br label %174

172:                                              ; preds = %102
  store double 0.000000e+00, ptr %1, align 8, !dbg !512, !tbaa !157
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !512
  store double 0x10000000000000, ptr %173, align 8, !dbg !512, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 15) #6, !dbg !515
  br label %174, !dbg !515

174:                                              ; preds = %4, %8, %81, %104, %172
  %175 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %81 ], [ 0, %104 ], [ 15, %172 ], !dbg !517
  ret i32 %175, !dbg !518
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_synchrotron_1(double noundef %0) local_unnamed_addr #0 !dbg !519 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !524, metadata !DIExpression(), metadata !526, metadata ptr %2, metadata !DIExpression()), !dbg !527
  tail call void @llvm.dbg.value(metadata double %0, metadata !523, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !528
  %3 = call i32 @gsl_sf_synchrotron_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !528, !range !529
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !525, metadata !DIExpression()), !dbg !527
  %4 = icmp eq i32 %3, 0, !dbg !530
  br i1 %4, label %6, label %5, !dbg !528

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef %3) #6, !dbg !532
  br label %6, !dbg !532

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !528, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !535
  ret double %7, !dbg !535
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_synchrotron_2(double noundef %0) local_unnamed_addr #0 !dbg !536 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !541, metadata ptr %2, metadata !DIExpression()), !dbg !542
  tail call void @llvm.dbg.value(metadata double %0, metadata !538, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !543
  %3 = call i32 @gsl_sf_synchrotron_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !543, !range !529
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !540, metadata !DIExpression()), !dbg !542
  %4 = icmp eq i32 %3, 0, !dbg !544
  br i1 %4, label %6, label %5, !dbg !543

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %3) #6, !dbg !546
  br label %6, !dbg !546

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !543, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !549
  ret double %7, !dbg !549
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "synchrotron.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ca235fb7ccd578a6840999a46c11eefa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 35)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "synchrotron1_data", scope: !26, file: !2, line: 34, type: !99, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !27, globals: !67, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 39, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!32 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!33 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!34 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!35 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!36 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!37 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!38 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!39 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!40 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!41 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!42 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!43 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!44 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!45 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!46 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!47 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!48 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!49 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!50 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!51 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!52 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!53 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!54 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!55 = !DIEnumerator(name: "GSL_ESING", value: 21)
!56 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!57 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!58 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!59 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!60 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!61 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!62 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!63 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!64 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!65 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!66 = !DIEnumerator(name: "GSL_EOF", value: 32)
!67 = !{!0, !7, !12, !17, !22, !68, !24, !81, !83, !88, !90, !95, !97, !100, !102, !104, !106}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "synchrotron1_cs", scope: !26, file: !2, line: 49, type: !70, isLocal: true, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !71, line: 29, baseType: !72)
!71 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !71, line: 22, size: 320, elements: !73)
!73 = !{!74, !77, !78, !79, !80}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !72, file: !71, line: 23, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !72, file: !71, line: 24, baseType: !30, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !72, file: !71, line: 25, baseType: !76, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !72, file: !71, line: 26, baseType: !76, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !72, file: !71, line: 27, baseType: !30, size: 32, offset: 256)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "synchrotron2_cs", scope: !26, file: !2, line: 70, type: !70, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "synchrotron2_data", scope: !26, file: !2, line: 56, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 768, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 12)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "synchrotron1a_cs", scope: !26, file: !2, line: 102, type: !70, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "synchrotron1a_data", scope: !26, file: !2, line: 77, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1472, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 23)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "synchrotron21_cs", scope: !26, file: !2, line: 124, type: !70, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "synchrotron21_data", scope: !26, file: !2, line: 109, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 832, elements: !5)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "synchrotron22_cs", scope: !26, file: !2, line: 146, type: !70, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "synchrotron22_data", scope: !26, file: !2, line: 131, type: !99, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "synchrotron2a_cs", scope: !26, file: !2, line: 172, type: !70, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "synchrotron2a_data", scope: !26, file: !2, line: 153, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1088, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 17)
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{i32 8, !"PIC Level", i32 2}
!115 = !{i32 7, !"PIE Level", i32 2}
!116 = !{i32 7, !"uwtable", i32 2}
!117 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!118 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!119 = distinct !DISubprogram(name: "gsl_sf_synchrotron_1_e", scope: !2, file: !2, line: 182, type: !120, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !130)
!120 = !DISubroutineType(types: !121)
!121 = !{!30, !122, !123}
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !125, line: 41, baseType: !126)
!125 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !125, line: 37, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !125, line: 38, baseType: !76, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !126, file: !125, line: 39, baseType: !76, size: 64, offset: 64)
!130 = !{!131, !132, !133, !137, !138, !141, !142, !143, !144, !145, !146, !149, !150}
!131 = !DILocalVariable(name: "x", arg: 1, scope: !119, file: !2, line: 182, type: !122)
!132 = !DILocalVariable(name: "result", arg: 2, scope: !119, file: !2, line: 182, type: !123)
!133 = !DILocalVariable(name: "z", scope: !134, file: !2, line: 193, type: !76)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 189, column: 51)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 189, column: 11)
!136 = distinct !DILexicalBlock(scope: !119, file: !2, line: 186, column: 6)
!137 = !DILocalVariable(name: "cf", scope: !134, file: !2, line: 194, type: !76)
!138 = !DILocalVariable(name: "c0", scope: !139, file: !2, line: 200, type: !122)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 199, column: 21)
!140 = distinct !DILexicalBlock(scope: !135, file: !2, line: 199, column: 11)
!141 = !DILocalVariable(name: "px", scope: !139, file: !2, line: 201, type: !122)
!142 = !DILocalVariable(name: "px11", scope: !139, file: !2, line: 202, type: !122)
!143 = !DILocalVariable(name: "t", scope: !139, file: !2, line: 203, type: !122)
!144 = !DILocalVariable(name: "result_c1", scope: !139, file: !2, line: 204, type: !124)
!145 = !DILocalVariable(name: "result_c2", scope: !139, file: !2, line: 205, type: !124)
!146 = !DILocalVariable(name: "c0", scope: !147, file: !2, line: 214, type: !122)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 213, column: 41)
!148 = distinct !DILexicalBlock(scope: !140, file: !2, line: 213, column: 11)
!149 = !DILocalVariable(name: "t", scope: !147, file: !2, line: 215, type: !122)
!150 = !DILocalVariable(name: "result_c1", scope: !147, file: !2, line: 216, type: !124)
!151 = !DILocation(line: 0, scope: !119)
!152 = !DILocation(line: 186, column: 8, scope: !136)
!153 = !DILocation(line: 186, column: 6, scope: !119)
!154 = !DILocation(line: 187, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 187, column: 5)
!156 = distinct !DILexicalBlock(scope: !136, file: !2, line: 186, column: 15)
!157 = !{!158, !159, i64 0}
!158 = !{!"gsl_sf_result_struct", !159, i64 0, !159, i64 8}
!159 = !{!"double", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !{!158, !159, i64 8}
!163 = !DILocation(line: 187, column: 5, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !2, line: 187, column: 5)
!165 = !DILocation(line: 189, column: 13, scope: !135)
!166 = !DILocation(line: 189, column: 11, scope: !136)
!167 = !DILocation(line: 193, column: 16, scope: !134)
!168 = !DILocation(line: 0, scope: !134)
!169 = !DILocation(line: 194, column: 42, scope: !134)
!170 = !DILocation(line: 194, column: 46, scope: !134)
!171 = !DILocation(line: 194, column: 19, scope: !134)
!172 = !DILocation(line: 195, column: 42, scope: !134)
!173 = !DILocation(line: 195, column: 46, scope: !134)
!174 = !DILocation(line: 195, column: 17, scope: !134)
!175 = !DILocation(line: 196, column: 35, scope: !134)
!176 = !DILocation(line: 196, column: 13, scope: !134)
!177 = !DILocation(line: 196, column: 17, scope: !134)
!178 = !DILocation(line: 199, column: 13, scope: !140)
!179 = !DILocation(line: 199, column: 11, scope: !135)
!180 = !DILocation(line: 0, scope: !139)
!181 = !DILocation(line: 201, column: 25, scope: !139)
!182 = !DILocation(line: 202, column: 25, scope: !139)
!183 = !DILocation(line: 203, column: 23, scope: !139)
!184 = !DILocation(line: 203, column: 25, scope: !139)
!185 = !DILocation(line: 203, column: 30, scope: !139)
!186 = !{}
!187 = !DILocalVariable(name: "cs", arg: 1, scope: !188, file: !189, line: 3, type: !192)
!188 = distinct !DISubprogram(name: "cheb_eval_e", scope: !189, file: !189, line: 3, type: !190, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !194)
!189 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!190 = !DISubroutineType(types: !191)
!191 = !{!30, !192, !122, !123}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!194 = !{!187, !195, !196, !197, !198, !199, !200, !201, !202, !203, !207}
!195 = !DILocalVariable(name: "x", arg: 2, scope: !188, file: !189, line: 4, type: !122)
!196 = !DILocalVariable(name: "result", arg: 3, scope: !188, file: !189, line: 5, type: !123)
!197 = !DILocalVariable(name: "j", scope: !188, file: !189, line: 7, type: !30)
!198 = !DILocalVariable(name: "d", scope: !188, file: !189, line: 8, type: !76)
!199 = !DILocalVariable(name: "dd", scope: !188, file: !189, line: 9, type: !76)
!200 = !DILocalVariable(name: "y", scope: !188, file: !189, line: 11, type: !76)
!201 = !DILocalVariable(name: "y2", scope: !188, file: !189, line: 12, type: !76)
!202 = !DILocalVariable(name: "e", scope: !188, file: !189, line: 14, type: !76)
!203 = !DILocalVariable(name: "temp", scope: !204, file: !189, line: 17, type: !76)
!204 = distinct !DILexicalBlock(scope: !205, file: !189, line: 16, column: 33)
!205 = distinct !DILexicalBlock(scope: !206, file: !189, line: 16, column: 3)
!206 = distinct !DILexicalBlock(scope: !188, file: !189, line: 16, column: 3)
!207 = !DILocalVariable(name: "temp", scope: !208, file: !189, line: 24, type: !76)
!208 = distinct !DILexicalBlock(scope: !188, file: !189, line: 23, column: 3)
!209 = !DILocation(line: 0, scope: !188, inlinedAt: !210)
!210 = distinct !DILocation(line: 206, column: 5, scope: !139)
!211 = !DILocation(line: 11, column: 19, scope: !188, inlinedAt: !210)
!212 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !210)
!213 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !210)
!214 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !210)
!215 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !210)
!216 = !DILocation(line: 16, column: 3, scope: !206, inlinedAt: !210)
!217 = !DILocation(line: 0, scope: !204, inlinedAt: !210)
!218 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !210)
!219 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !210)
!220 = !DILocation(line: 18, column: 21, scope: !204, inlinedAt: !210)
!221 = !{!159, !159, i64 0}
!222 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !210)
!223 = !DILocation(line: 19, column: 10, scope: !204, inlinedAt: !210)
!224 = !DILocation(line: 19, column: 26, scope: !204, inlinedAt: !210)
!225 = !DILocation(line: 19, column: 24, scope: !204, inlinedAt: !210)
!226 = !DILocation(line: 19, column: 37, scope: !204, inlinedAt: !210)
!227 = !DILocation(line: 19, column: 35, scope: !204, inlinedAt: !210)
!228 = !DILocation(line: 19, column: 7, scope: !204, inlinedAt: !210)
!229 = !DILocation(line: 16, column: 29, scope: !205, inlinedAt: !210)
!230 = !DILocation(line: 16, column: 23, scope: !205, inlinedAt: !210)
!231 = distinct !{!231, !216, !232, !233}
!232 = !DILocation(line: 21, column: 3, scope: !206, inlinedAt: !210)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 0, scope: !208, inlinedAt: !210)
!235 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !210)
!236 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !210)
!237 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !210)
!238 = !DILocation(line: 26, column: 10, scope: !208, inlinedAt: !210)
!239 = !DILocation(line: 26, column: 25, scope: !208, inlinedAt: !210)
!240 = !DILocation(line: 26, column: 23, scope: !208, inlinedAt: !210)
!241 = !DILocation(line: 26, column: 34, scope: !208, inlinedAt: !210)
!242 = !DILocation(line: 26, column: 7, scope: !208, inlinedAt: !210)
!243 = !DILocation(line: 30, column: 33, scope: !188, inlinedAt: !210)
!244 = !DILocation(line: 30, column: 37, scope: !188, inlinedAt: !210)
!245 = !DILocation(line: 0, scope: !188, inlinedAt: !246)
!246 = distinct !DILocation(line: 207, column: 5, scope: !139)
!247 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !246)
!248 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !246)
!249 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !246)
!250 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !246)
!251 = !DILocation(line: 16, column: 3, scope: !206, inlinedAt: !246)
!252 = !DILocation(line: 0, scope: !204, inlinedAt: !246)
!253 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !246)
!254 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !246)
!255 = !DILocation(line: 18, column: 21, scope: !204, inlinedAt: !246)
!256 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !246)
!257 = !DILocation(line: 19, column: 10, scope: !204, inlinedAt: !246)
!258 = !DILocation(line: 19, column: 26, scope: !204, inlinedAt: !246)
!259 = !DILocation(line: 19, column: 24, scope: !204, inlinedAt: !246)
!260 = !DILocation(line: 19, column: 37, scope: !204, inlinedAt: !246)
!261 = !DILocation(line: 19, column: 35, scope: !204, inlinedAt: !246)
!262 = !DILocation(line: 19, column: 7, scope: !204, inlinedAt: !246)
!263 = !DILocation(line: 16, column: 29, scope: !205, inlinedAt: !246)
!264 = !DILocation(line: 16, column: 23, scope: !205, inlinedAt: !246)
!265 = distinct !{!265, !251, !266, !233}
!266 = !DILocation(line: 21, column: 3, scope: !206, inlinedAt: !246)
!267 = !DILocation(line: 0, scope: !208, inlinedAt: !246)
!268 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !246)
!269 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !246)
!270 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !246)
!271 = !DILocation(line: 26, column: 10, scope: !208, inlinedAt: !246)
!272 = !DILocation(line: 26, column: 25, scope: !208, inlinedAt: !246)
!273 = !DILocation(line: 26, column: 23, scope: !208, inlinedAt: !246)
!274 = !DILocation(line: 26, column: 34, scope: !208, inlinedAt: !246)
!275 = !DILocation(line: 26, column: 7, scope: !208, inlinedAt: !246)
!276 = !DILocation(line: 30, column: 33, scope: !188, inlinedAt: !246)
!277 = !DILocation(line: 30, column: 37, scope: !188, inlinedAt: !246)
!278 = !DILocation(line: 208, column: 23, scope: !139)
!279 = !DILocation(line: 208, column: 46, scope: !139)
!280 = !DILocation(line: 208, column: 39, scope: !139)
!281 = !DILocation(line: 208, column: 67, scope: !139)
!282 = !DILocation(line: 208, column: 62, scope: !139)
!283 = !DILocation(line: 208, column: 18, scope: !139)
!284 = !DILocation(line: 209, column: 23, scope: !139)
!285 = !DILocation(line: 209, column: 46, scope: !139)
!286 = !DILocation(line: 209, column: 39, scope: !139)
!287 = !DILocation(line: 209, column: 71, scope: !139)
!288 = !DILocation(line: 209, column: 62, scope: !139)
!289 = !DILocation(line: 209, column: 13, scope: !139)
!290 = !DILocation(line: 210, column: 44, scope: !139)
!291 = !DILocation(line: 210, column: 42, scope: !139)
!292 = !DILocation(line: 210, column: 17, scope: !139)
!293 = !DILocation(line: 213, column: 13, scope: !148)
!294 = !DILocation(line: 213, column: 11, scope: !140)
!295 = !DILocation(line: 0, scope: !147)
!296 = !DILocation(line: 0, scope: !188, inlinedAt: !297)
!297 = distinct !DILocation(line: 217, column: 5, scope: !147)
!298 = !DILocation(line: 215, column: 28, scope: !147)
!299 = !DILocation(line: 215, column: 38, scope: !147)
!300 = !DILocation(line: 215, column: 33, scope: !147)
!301 = !DILocation(line: 11, column: 19, scope: !188, inlinedAt: !297)
!302 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !297)
!303 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !297)
!304 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !297)
!305 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !297)
!306 = !DILocation(line: 0, scope: !204, inlinedAt: !297)
!307 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !297)
!308 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !297)
!309 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !297)
!310 = !DILocation(line: 0, scope: !208, inlinedAt: !297)
!311 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !297)
!312 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !297)
!313 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !297)
!314 = !DILocation(line: 218, column: 19, scope: !147)
!315 = !DILocation(line: 218, column: 27, scope: !147)
!316 = !DILocation(line: 218, column: 52, scope: !147)
!317 = !DILocation(line: 218, column: 45, scope: !147)
!318 = !DILocation(line: 218, column: 43, scope: !147)
!319 = !DILocation(line: 218, column: 17, scope: !147)
!320 = !DILocation(line: 219, column: 41, scope: !147)
!321 = !DILocation(line: 219, column: 58, scope: !147)
!322 = !DILocation(line: 219, column: 68, scope: !147)
!323 = !DILocation(line: 219, column: 55, scope: !147)
!324 = !DILocation(line: 219, column: 13, scope: !147)
!325 = !DILocation(line: 219, column: 17, scope: !147)
!326 = !DILocation(line: 223, column: 5, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 223, column: 5)
!328 = distinct !DILexicalBlock(scope: !148, file: !2, line: 222, column: 8)
!329 = !DILocation(line: 223, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !2, line: 223, column: 5)
!331 = !DILocation(line: 0, scope: !136)
!332 = !DILocation(line: 225, column: 1, scope: !119)
!333 = !DISubprogram(name: "gsl_error", scope: !29, file: !29, line: 77, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336, !336, !30, !30}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!338 = !DISubprogram(name: "pow", scope: !339, file: !339, line: 140, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!340 = !DISubroutineType(types: !341)
!341 = !{!76, !76, !76}
!342 = !DISubprogram(name: "gsl_sf_pow_int", scope: !343, file: !343, line: 44, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!344 = !DISubroutineType(types: !345)
!345 = !{!76, !122, !346}
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!347 = !DISubprogram(name: "sqrt", scope: !339, file: !339, line: 143, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!76, !76}
!350 = !DISubprogram(name: "exp", scope: !339, file: !339, line: 95, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2_e", scope: !2, file: !2, line: 228, type: !120, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !352)
!352 = !{!353, !354, !355, !359, !360, !363, !364, !365, !366, !367, !370, !371}
!353 = !DILocalVariable(name: "x", arg: 1, scope: !351, file: !2, line: 228, type: !122)
!354 = !DILocalVariable(name: "result", arg: 2, scope: !351, file: !2, line: 228, type: !123)
!355 = !DILocalVariable(name: "z", scope: !356, file: !2, line: 240, type: !76)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 235, column: 49)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 235, column: 11)
!358 = distinct !DILexicalBlock(scope: !351, file: !2, line: 232, column: 6)
!359 = !DILocalVariable(name: "cf", scope: !356, file: !2, line: 241, type: !76)
!360 = !DILocalVariable(name: "px", scope: !361, file: !2, line: 247, type: !122)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 246, column: 21)
!362 = distinct !DILexicalBlock(scope: !357, file: !2, line: 246, column: 11)
!363 = !DILocalVariable(name: "px5", scope: !361, file: !2, line: 248, type: !122)
!364 = !DILocalVariable(name: "t", scope: !361, file: !2, line: 249, type: !122)
!365 = !DILocalVariable(name: "cheb1", scope: !361, file: !2, line: 250, type: !124)
!366 = !DILocalVariable(name: "cheb2", scope: !361, file: !2, line: 251, type: !124)
!367 = !DILocalVariable(name: "c0", scope: !368, file: !2, line: 260, type: !122)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 259, column: 41)
!369 = distinct !DILexicalBlock(scope: !362, file: !2, line: 259, column: 11)
!370 = !DILocalVariable(name: "t", scope: !368, file: !2, line: 261, type: !122)
!371 = !DILocalVariable(name: "cheb1", scope: !368, file: !2, line: 262, type: !124)
!372 = !DILocation(line: 0, scope: !351)
!373 = !DILocation(line: 232, column: 8, scope: !358)
!374 = !DILocation(line: 232, column: 6, scope: !351)
!375 = !DILocation(line: 233, column: 5, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 233, column: 5)
!377 = distinct !DILexicalBlock(scope: !358, file: !2, line: 232, column: 15)
!378 = !DILocation(line: 233, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !2, line: 233, column: 5)
!380 = !DILocation(line: 235, column: 13, scope: !357)
!381 = !DILocation(line: 235, column: 11, scope: !358)
!382 = !DILocation(line: 240, column: 16, scope: !356)
!383 = !DILocation(line: 0, scope: !356)
!384 = !DILocation(line: 241, column: 42, scope: !356)
!385 = !DILocation(line: 241, column: 46, scope: !356)
!386 = !DILocation(line: 241, column: 19, scope: !356)
!387 = !DILocation(line: 242, column: 42, scope: !356)
!388 = !DILocation(line: 242, column: 46, scope: !356)
!389 = !DILocation(line: 242, column: 17, scope: !356)
!390 = !DILocation(line: 243, column: 41, scope: !356)
!391 = !DILocation(line: 243, column: 13, scope: !356)
!392 = !DILocation(line: 243, column: 17, scope: !356)
!393 = !DILocation(line: 246, column: 13, scope: !362)
!394 = !DILocation(line: 246, column: 11, scope: !357)
!395 = !DILocation(line: 247, column: 24, scope: !361)
!396 = !DILocation(line: 0, scope: !361)
!397 = !DILocation(line: 248, column: 24, scope: !361)
!398 = !DILocation(line: 249, column: 23, scope: !361)
!399 = !DILocation(line: 249, column: 25, scope: !361)
!400 = !DILocation(line: 249, column: 30, scope: !361)
!401 = !DILocation(line: 0, scope: !188, inlinedAt: !402)
!402 = distinct !DILocation(line: 252, column: 5, scope: !361)
!403 = !DILocation(line: 11, column: 19, scope: !188, inlinedAt: !402)
!404 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !402)
!405 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !402)
!406 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !402)
!407 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !402)
!408 = !DILocation(line: 16, column: 3, scope: !206, inlinedAt: !402)
!409 = !DILocation(line: 0, scope: !204, inlinedAt: !402)
!410 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !402)
!411 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !402)
!412 = !DILocation(line: 18, column: 21, scope: !204, inlinedAt: !402)
!413 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !402)
!414 = !DILocation(line: 19, column: 10, scope: !204, inlinedAt: !402)
!415 = !DILocation(line: 19, column: 26, scope: !204, inlinedAt: !402)
!416 = !DILocation(line: 19, column: 24, scope: !204, inlinedAt: !402)
!417 = !DILocation(line: 19, column: 37, scope: !204, inlinedAt: !402)
!418 = !DILocation(line: 19, column: 35, scope: !204, inlinedAt: !402)
!419 = !DILocation(line: 19, column: 7, scope: !204, inlinedAt: !402)
!420 = !DILocation(line: 16, column: 29, scope: !205, inlinedAt: !402)
!421 = !DILocation(line: 16, column: 23, scope: !205, inlinedAt: !402)
!422 = distinct !{!422, !408, !423, !233}
!423 = !DILocation(line: 21, column: 3, scope: !206, inlinedAt: !402)
!424 = !DILocation(line: 0, scope: !208, inlinedAt: !402)
!425 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !402)
!426 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !402)
!427 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !402)
!428 = !DILocation(line: 26, column: 10, scope: !208, inlinedAt: !402)
!429 = !DILocation(line: 26, column: 25, scope: !208, inlinedAt: !402)
!430 = !DILocation(line: 26, column: 23, scope: !208, inlinedAt: !402)
!431 = !DILocation(line: 26, column: 34, scope: !208, inlinedAt: !402)
!432 = !DILocation(line: 26, column: 7, scope: !208, inlinedAt: !402)
!433 = !DILocation(line: 30, column: 33, scope: !188, inlinedAt: !402)
!434 = !DILocation(line: 30, column: 37, scope: !188, inlinedAt: !402)
!435 = !DILocation(line: 0, scope: !188, inlinedAt: !436)
!436 = distinct !DILocation(line: 253, column: 5, scope: !361)
!437 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !436)
!438 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !436)
!439 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !436)
!440 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !436)
!441 = !DILocation(line: 16, column: 3, scope: !206, inlinedAt: !436)
!442 = !DILocation(line: 0, scope: !204, inlinedAt: !436)
!443 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !436)
!444 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !436)
!445 = !DILocation(line: 18, column: 21, scope: !204, inlinedAt: !436)
!446 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !436)
!447 = !DILocation(line: 19, column: 10, scope: !204, inlinedAt: !436)
!448 = !DILocation(line: 19, column: 26, scope: !204, inlinedAt: !436)
!449 = !DILocation(line: 19, column: 24, scope: !204, inlinedAt: !436)
!450 = !DILocation(line: 19, column: 37, scope: !204, inlinedAt: !436)
!451 = !DILocation(line: 19, column: 35, scope: !204, inlinedAt: !436)
!452 = !DILocation(line: 19, column: 7, scope: !204, inlinedAt: !436)
!453 = !DILocation(line: 16, column: 29, scope: !205, inlinedAt: !436)
!454 = !DILocation(line: 16, column: 23, scope: !205, inlinedAt: !436)
!455 = distinct !{!455, !441, !456, !233}
!456 = !DILocation(line: 21, column: 3, scope: !206, inlinedAt: !436)
!457 = !DILocation(line: 0, scope: !208, inlinedAt: !436)
!458 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !436)
!459 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !436)
!460 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !436)
!461 = !DILocation(line: 26, column: 10, scope: !208, inlinedAt: !436)
!462 = !DILocation(line: 26, column: 25, scope: !208, inlinedAt: !436)
!463 = !DILocation(line: 26, column: 23, scope: !208, inlinedAt: !436)
!464 = !DILocation(line: 26, column: 34, scope: !208, inlinedAt: !436)
!465 = !DILocation(line: 26, column: 7, scope: !208, inlinedAt: !436)
!466 = !DILocation(line: 30, column: 33, scope: !188, inlinedAt: !436)
!467 = !DILocation(line: 30, column: 37, scope: !188, inlinedAt: !436)
!468 = !DILocation(line: 254, column: 23, scope: !361)
!469 = !DILocation(line: 254, column: 41, scope: !361)
!470 = !DILocation(line: 254, column: 35, scope: !361)
!471 = !DILocation(line: 254, column: 18, scope: !361)
!472 = !DILocation(line: 255, column: 23, scope: !361)
!473 = !DILocation(line: 255, column: 41, scope: !361)
!474 = !DILocation(line: 255, column: 35, scope: !361)
!475 = !DILocation(line: 255, column: 13, scope: !361)
!476 = !DILocation(line: 256, column: 44, scope: !361)
!477 = !DILocation(line: 256, column: 42, scope: !361)
!478 = !DILocation(line: 256, column: 17, scope: !361)
!479 = !DILocation(line: 259, column: 13, scope: !369)
!480 = !DILocation(line: 259, column: 11, scope: !362)
!481 = !DILocation(line: 0, scope: !368)
!482 = !DILocation(line: 0, scope: !188, inlinedAt: !483)
!483 = distinct !DILocation(line: 263, column: 5, scope: !368)
!484 = !DILocation(line: 261, column: 29, scope: !368)
!485 = !DILocation(line: 261, column: 39, scope: !368)
!486 = !DILocation(line: 261, column: 34, scope: !368)
!487 = !DILocation(line: 11, column: 19, scope: !188, inlinedAt: !483)
!488 = !DILocation(line: 11, column: 22, scope: !188, inlinedAt: !483)
!489 = !DILocation(line: 11, column: 30, scope: !188, inlinedAt: !483)
!490 = !DILocation(line: 11, column: 39, scope: !188, inlinedAt: !483)
!491 = !DILocation(line: 12, column: 19, scope: !188, inlinedAt: !483)
!492 = !DILocation(line: 0, scope: !204, inlinedAt: !483)
!493 = !DILocation(line: 18, column: 11, scope: !204, inlinedAt: !483)
!494 = !DILocation(line: 18, column: 19, scope: !204, inlinedAt: !483)
!495 = !DILocation(line: 18, column: 14, scope: !204, inlinedAt: !483)
!496 = !DILocation(line: 0, scope: !208, inlinedAt: !483)
!497 = !DILocation(line: 25, column: 10, scope: !208, inlinedAt: !483)
!498 = !DILocation(line: 25, column: 13, scope: !208, inlinedAt: !483)
!499 = !DILocation(line: 25, column: 18, scope: !208, inlinedAt: !483)
!500 = !DILocation(line: 264, column: 19, scope: !368)
!501 = !DILocation(line: 264, column: 35, scope: !368)
!502 = !DILocation(line: 264, column: 29, scope: !368)
!503 = !DILocation(line: 264, column: 27, scope: !368)
!504 = !DILocation(line: 264, column: 39, scope: !368)
!505 = !DILocation(line: 264, column: 17, scope: !368)
!506 = !DILocation(line: 265, column: 35, scope: !368)
!507 = !DILocation(line: 265, column: 52, scope: !368)
!508 = !DILocation(line: 265, column: 62, scope: !368)
!509 = !DILocation(line: 265, column: 49, scope: !368)
!510 = !DILocation(line: 265, column: 13, scope: !368)
!511 = !DILocation(line: 265, column: 17, scope: !368)
!512 = !DILocation(line: 269, column: 5, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 269, column: 5)
!514 = distinct !DILexicalBlock(scope: !369, file: !2, line: 268, column: 8)
!515 = !DILocation(line: 269, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !2, line: 269, column: 5)
!517 = !DILocation(line: 0, scope: !358)
!518 = !DILocation(line: 271, column: 1, scope: !351)
!519 = distinct !DISubprogram(name: "gsl_sf_synchrotron_1", scope: !2, file: !2, line: 277, type: !520, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!76, !122}
!522 = !{!523, !524, !525}
!523 = !DILocalVariable(name: "x", arg: 1, scope: !519, file: !2, line: 277, type: !122)
!524 = !DILocalVariable(name: "result", scope: !519, file: !2, line: 279, type: !124)
!525 = !DILocalVariable(name: "status", scope: !519, file: !2, line: 279, type: !30)
!526 = distinct !DIAssignID()
!527 = !DILocation(line: 0, scope: !519)
!528 = !DILocation(line: 279, column: 3, scope: !519)
!529 = !{i32 0, i32 16}
!530 = !DILocation(line: 279, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !519, file: !2, line: 279, column: 3)
!532 = !DILocation(line: 279, column: 3, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 279, column: 3)
!534 = distinct !DILexicalBlock(scope: !531, file: !2, line: 279, column: 3)
!535 = !DILocation(line: 280, column: 1, scope: !519)
!536 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2", scope: !2, file: !2, line: 282, type: !520, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !537)
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(name: "x", arg: 1, scope: !536, file: !2, line: 282, type: !122)
!539 = !DILocalVariable(name: "result", scope: !536, file: !2, line: 284, type: !124)
!540 = !DILocalVariable(name: "status", scope: !536, file: !2, line: 284, type: !30)
!541 = distinct !DIAssignID()
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocation(line: 284, column: 3, scope: !536)
!544 = !DILocation(line: 284, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !2, line: 284, column: 3)
!546 = !DILocation(line: 284, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 284, column: 3)
!548 = distinct !DILexicalBlock(scope: !545, file: !2, line: 284, column: 3)
!549 = !DILocation(line: 285, column: 1, scope: !536)
