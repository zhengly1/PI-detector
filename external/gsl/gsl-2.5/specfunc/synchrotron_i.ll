; ModuleID = 'synchrotron.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 187, i32 noundef 1) #5, !dbg !163
  br label %113, !dbg !163

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !165
  br i1 %7, label %8, label %16, !dbg !166

8:                                                ; preds = %6
  %9 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #5, !dbg !167
  tail call void @llvm.dbg.value(metadata double %9, metadata !133, metadata !DIExpression()), !dbg !168
  %10 = fmul double %9, 0x3FEB00839F875D26, !dbg !169
  %11 = fmul double %9, %10, !dbg !170
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !171
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !137, metadata !DIExpression()), !dbg !168
  %12 = fmul double %9, 0x4001323BDCD9C076, !dbg !171
  %13 = fmul double %12, %handler_result, !dbg !172
  store double %13, ptr %1, align 8, !dbg !173, !tbaa !157
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !174
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !175
  store double %14, ptr %15, align 8, !dbg !176, !tbaa !162
  br label %113

16:                                               ; preds = %6
  %17 = fcmp ugt double %0, 4.000000e+00, !dbg !177
  br i1 %17, label %73, label %18, !dbg !178

18:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata double 0x3FFD05527B6E43D2, metadata !138, metadata !DIExpression()), !dbg !179
  %19 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #5, !dbg !180
  tail call void @llvm.dbg.value(metadata double %19, metadata !141, metadata !DIExpression()), !dbg !179
  %20 = tail call double @gsl_sf_pow_int(double noundef %19, i32 noundef 11) #5, !dbg !181
  tail call void @llvm.dbg.value(metadata double %20, metadata !142, metadata !DIExpression()), !dbg !179
  %21 = fmul double %0, %0, !dbg !182
  %22 = fmul double %21, 1.250000e-01, !dbg !183
  %handler_result1 = call double @fAddHandlerDouble(double %22, double -1.000000e+00), !dbg !184
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !143, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !193, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !209
  %23 = fmul double %handler_result1, 2.000000e+00, !dbg !184
  %handler_result2 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !210
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !211
  %24 = fmul double %handler_result3, 5.000000e-01, !dbg !211
  call void @llvm.dbg.value(metadata double %24, metadata !198, metadata !DIExpression()), !dbg !209
  %25 = fmul double %24, 2.000000e+00, !dbg !212
  call void @llvm.dbg.value(metadata double %25, metadata !199, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32 12, metadata !195, metadata !DIExpression()), !dbg !209
  br label %26, !dbg !213

26:                                               ; preds = %26, %18
  %27 = phi i64 [ 12, %18 ], [ %37, %26 ]
  %28 = phi double [ 0.000000e+00, %18 ], [ %handler_result5, %26 ]
  %29 = phi double [ 0.000000e+00, %18 ], [ %handler_result8, %26 ]
  %30 = phi double [ 0.000000e+00, %18 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !195, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %28, metadata !196, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %29, metadata !200, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %30, metadata !197, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %28, metadata !201, metadata !DIExpression()), !dbg !214
  %31 = fmul double %25, %28, !dbg !215
  %handler_result4 = call double @fSubHandlerDouble(double %31, double %30), !dbg !216
  %32 = getelementptr inbounds double, ptr @synchrotron1_data, i64 %27, !dbg !216
  %33 = load double, ptr %32, align 8, !dbg !216, !tbaa !217
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %33), !dbg !218
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !196, metadata !DIExpression()), !dbg !209
  %34 = tail call double @llvm.fabs.f64(double %31), !dbg !218
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !219
  %handler_result6 = call double @fAddHandlerDouble(double %34, double %35), !dbg !220
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !220
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %36), !dbg !221
  %handler_result8 = call double @fAddHandlerDouble(double %29, double %handler_result7), !dbg !222
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !200, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata double %28, metadata !197, metadata !DIExpression()), !dbg !209
  %37 = add nsw i64 %27, -1, !dbg !222
  call void @llvm.dbg.value(metadata i64 %37, metadata !195, metadata !DIExpression()), !dbg !209
  %38 = icmp ugt i64 %27, 1, !dbg !223
  br i1 %38, label %26, label %39, !dbg !213, !llvm.loop !224

39:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !205, metadata !DIExpression()), !dbg !227
  %40 = fmul double %24, %handler_result5, !dbg !228
  %handler_result9 = call double @fSubHandlerDouble(double %40, double %28), !dbg !229
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x402E5D5BDD2B3FF7), !dbg !230
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !196, metadata !DIExpression()), !dbg !209
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !230
  %42 = tail call double @llvm.fabs.f64(double %28), !dbg !231
  %handler_result11 = call double @fAddHandlerDouble(double %42, double %41), !dbg !232
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x402E5D5BDD2B3FF7), !dbg !233
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !234
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !200, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !179
  %43 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !234
  %handler_result14 = call double @fAddHandlerDouble(double %43, double 1.516700e-16), !dbg !235
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !179
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !193, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !237
  %handler_result15 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !238
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !239
  %44 = fmul double %handler_result16, 5.000000e-01, !dbg !239
  call void @llvm.dbg.value(metadata double %44, metadata !198, metadata !DIExpression()), !dbg !237
  %45 = fmul double %44, 2.000000e+00, !dbg !240
  call void @llvm.dbg.value(metadata double %45, metadata !199, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 11, metadata !195, metadata !DIExpression()), !dbg !237
  br label %46, !dbg !241

46:                                               ; preds = %46, %39
  %47 = phi i64 [ 11, %39 ], [ %57, %46 ]
  %48 = phi double [ 0.000000e+00, %39 ], [ %handler_result18, %46 ]
  %49 = phi double [ 0.000000e+00, %39 ], [ %handler_result21, %46 ]
  %50 = phi double [ 0.000000e+00, %39 ], [ %48, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !195, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %48, metadata !196, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %50, metadata !197, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %48, metadata !201, metadata !DIExpression()), !dbg !242
  %51 = fmul double %45, %48, !dbg !243
  %handler_result17 = call double @fSubHandlerDouble(double %51, double %50), !dbg !244
  %52 = getelementptr inbounds double, ptr @synchrotron2_data, i64 %47, !dbg !244
  %53 = load double, ptr %52, align 8, !dbg !244, !tbaa !217
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %53), !dbg !245
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !196, metadata !DIExpression()), !dbg !237
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !245
  %55 = tail call double @llvm.fabs.f64(double %50), !dbg !246
  %handler_result19 = call double @fAddHandlerDouble(double %54, double %55), !dbg !247
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !247
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %56), !dbg !248
  %handler_result21 = call double @fAddHandlerDouble(double %49, double %handler_result20), !dbg !249
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !200, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double %48, metadata !197, metadata !DIExpression()), !dbg !237
  %57 = add nsw i64 %47, -1, !dbg !249
  call void @llvm.dbg.value(metadata i64 %57, metadata !195, metadata !DIExpression()), !dbg !237
  %58 = icmp ugt i64 %47, 1, !dbg !250
  br i1 %58, label %46, label %59, !dbg !241, !llvm.loop !251

59:                                               ; preds = %46
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !205, metadata !DIExpression()), !dbg !253
  %60 = fmul double %44, %handler_result18, !dbg !254
  %handler_result22 = call double @fSubHandlerDouble(double %60, double %48), !dbg !255
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3FCCBD992AB67B60), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !196, metadata !DIExpression()), !dbg !237
  %61 = tail call double @llvm.fabs.f64(double %60), !dbg !256
  %62 = tail call double @llvm.fabs.f64(double %48), !dbg !257
  %handler_result24 = call double @fAddHandlerDouble(double %62, double %61), !dbg !258
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3FCCBD992AB67B60), !dbg !259
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result25), !dbg !260
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !200, metadata !DIExpression()), !dbg !237
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !179
  %63 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !260
  %handler_result27 = call double @fAddHandlerDouble(double %63, double 5.000000e-19), !dbg !261
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !179
  %64 = fmul double %19, %handler_result10, !dbg !261
  %65 = fmul double %20, %handler_result23, !dbg !262
  %handler_result28 = call double @fSubHandlerDouble(double %64, double %65), !dbg !263
  %66 = fmul double %0, 0x3FFD05527B6E43D2, !dbg !263
  %handler_result29 = call double @fSubHandlerDouble(double %handler_result28, double %66), !dbg !264
  store double %handler_result29, ptr %1, align 8, !dbg !264, !tbaa !157
  %67 = fmul double %19, %handler_result14, !dbg !265
  %68 = fmul double %20, %handler_result27, !dbg !266
  %handler_result30 = call double @fAddHandlerDouble(double %67, double %68), !dbg !267
  %69 = fmul double %66, 0x3CB0000000000000, !dbg !267
  %handler_result31 = call double @fAddHandlerDouble(double %69, double %handler_result30), !dbg !268
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !268
  %71 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !269
  %72 = fmul double %71, 0x3CC0000000000000, !dbg !270
  %handler_result32 = call double @fAddHandlerDouble(double %72, double %handler_result31), !dbg !271
  store double %handler_result32, ptr %70, align 8, !dbg !271, !tbaa !162
  br label %113

73:                                               ; preds = %16
  %74 = fcmp olt double %0, 0x40894CC46AD56A15, !dbg !272
  br i1 %74, label %75, label %111, !dbg !273

75:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata double 0x3FCCE6BB25AA1316, metadata !146, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !149, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !193, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !198, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i32 22, metadata !195, metadata !DIExpression()), !dbg !275
  %handler_result33 = call double @fSubHandlerDouble(double 1.200000e+01, double %0), !dbg !277
  %handler_result34 = call double @fAddHandlerDouble(double %0, double 4.000000e+00), !dbg !278
  %76 = fdiv double %handler_result33, %handler_result34, !dbg !278
  tail call void @llvm.dbg.value(metadata double %76, metadata !149, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %76, metadata !193, metadata !DIExpression()), !dbg !275
  %77 = fmul double %76, 2.000000e+00, !dbg !279
  %handler_result35 = call double @fAddHandlerDouble(double %77, double 1.000000e+00), !dbg !280
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double -1.000000e+00), !dbg !281
  %78 = fmul double %handler_result36, 5.000000e-01, !dbg !281
  call void @llvm.dbg.value(metadata double %78, metadata !198, metadata !DIExpression()), !dbg !275
  %79 = fmul double %78, 2.000000e+00, !dbg !282
  call void @llvm.dbg.value(metadata double %79, metadata !199, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 22, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !283
  %80 = fmul double %79, 0.000000e+00, !dbg !284
  %handler_result37 = call double @fAddHandlerDouble(double %80, double 7.000000e-19), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 21, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 21, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !201, metadata !DIExpression()), !dbg !283
  %81 = fmul double %79, %handler_result37, !dbg !284
  %handler_result38 = call double @fAddHandlerDouble(double %81, double 4.100000e-18), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 20, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 20, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !201, metadata !DIExpression()), !dbg !283
  %82 = fmul double %79, %handler_result38, !dbg !284
  %handler_result39 = call double @fSubHandlerDouble(double %82, double %handler_result37), !dbg !285
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 2.490000e-17), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 19, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 19, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !201, metadata !DIExpression()), !dbg !283
  %83 = fmul double %79, %handler_result40, !dbg !284
  %handler_result41 = call double @fSubHandlerDouble(double %83, double %handler_result38), !dbg !285
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 1.520000e-16), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 18, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 18, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !201, metadata !DIExpression()), !dbg !283
  %84 = fmul double %79, %handler_result42, !dbg !284
  %handler_result43 = call double @fSubHandlerDouble(double %84, double %handler_result40), !dbg !285
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 9.291000e-16), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 17, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 17, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !201, metadata !DIExpression()), !dbg !283
  %85 = fmul double %79, %handler_result44, !dbg !284
  %handler_result45 = call double @fSubHandlerDouble(double %85, double %handler_result42), !dbg !285
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 5.699400e-15), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 16, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 16, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !201, metadata !DIExpression()), !dbg !283
  %86 = fmul double %79, %handler_result46, !dbg !284
  %handler_result47 = call double @fSubHandlerDouble(double %86, double %handler_result44), !dbg !285
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 3.499670e-14), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 15, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 15, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !201, metadata !DIExpression()), !dbg !283
  %87 = fmul double %79, %handler_result48, !dbg !284
  %handler_result49 = call double @fSubHandlerDouble(double %87, double %handler_result46), !dbg !285
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 2.159150e-13), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 14, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 14, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !201, metadata !DIExpression()), !dbg !283
  %88 = fmul double %79, %handler_result50, !dbg !284
  %handler_result51 = call double @fSubHandlerDouble(double %88, double %handler_result48), !dbg !285
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 0x3D777D88B9C351EF), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 13, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 13, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !201, metadata !DIExpression()), !dbg !283
  %89 = fmul double %79, %handler_result52, !dbg !284
  %handler_result53 = call double @fSubHandlerDouble(double %89, double %handler_result50), !dbg !285
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double 0x3DA240A71F65D8A5), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 12, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 12, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !201, metadata !DIExpression()), !dbg !283
  %90 = fmul double %79, %handler_result54, !dbg !284
  %handler_result55 = call double @fSubHandlerDouble(double %90, double %handler_result52), !dbg !285
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0x3DCC78FDFC534C7C), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 11, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 11, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !201, metadata !DIExpression()), !dbg !283
  %91 = fmul double %79, %handler_result56, !dbg !284
  %handler_result57 = call double @fSubHandlerDouble(double %91, double %handler_result54), !dbg !285
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3DF658C2786FFBB9), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 10, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 10, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !201, metadata !DIExpression()), !dbg !283
  %92 = fmul double %79, %handler_result58, !dbg !284
  %handler_result59 = call double @fSubHandlerDouble(double %92, double %handler_result56), !dbg !285
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double 0x3E21A2D006C16A69), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 9, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 9, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !201, metadata !DIExpression()), !dbg !283
  %93 = fmul double %79, %handler_result60, !dbg !284
  %handler_result61 = call double @fSubHandlerDouble(double %93, double %handler_result58), !dbg !285
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double 0x3E4C113E764893FB), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 8, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 8, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !201, metadata !DIExpression()), !dbg !283
  %94 = fmul double %79, %handler_result62, !dbg !284
  %handler_result63 = call double @fSubHandlerDouble(double %94, double %handler_result60), !dbg !285
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result63, double 0x3E768435970F66BC), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 7, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 7, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !201, metadata !DIExpression()), !dbg !283
  %95 = fmul double %79, %handler_result64, !dbg !284
  %handler_result65 = call double @fSubHandlerDouble(double %95, double %handler_result62), !dbg !285
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 0x3EA247945F49427A), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 6, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 6, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !201, metadata !DIExpression()), !dbg !283
  %96 = fmul double %79, %handler_result66, !dbg !284
  %handler_result67 = call double @fSubHandlerDouble(double %96, double %handler_result64), !dbg !285
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double 0x3ECE0DF3BCC3D18E), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 5, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 5, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !201, metadata !DIExpression()), !dbg !283
  %97 = fmul double %79, %handler_result68, !dbg !284
  %handler_result69 = call double @fSubHandlerDouble(double %97, double %handler_result66), !dbg !285
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3EF92FD8D9B06693), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 4, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 4, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !201, metadata !DIExpression()), !dbg !283
  %98 = fmul double %79, %handler_result70, !dbg !284
  %handler_result71 = call double @fSubHandlerDouble(double %98, double %handler_result68), !dbg !285
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3F25900F1EE69498), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 3, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 3, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !201, metadata !DIExpression()), !dbg !283
  %99 = fmul double %79, %handler_result72, !dbg !284
  %handler_result73 = call double @fSubHandlerDouble(double %99, double %handler_result70), !dbg !285
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3F532CF0C63FFE18), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 2, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 2, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !201, metadata !DIExpression()), !dbg !283
  %100 = fmul double %79, %handler_result74, !dbg !284
  %handler_result75 = call double @fSubHandlerDouble(double %100, double %handler_result72), !dbg !285
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3F81CFA213ED45BE), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !201, metadata !DIExpression()), !dbg !283
  %101 = fmul double %79, %handler_result76, !dbg !284
  %handler_result77 = call double @fSubHandlerDouble(double %101, double %handler_result74), !dbg !285
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double 0x3FB2FA87B6FA3829), !dbg !286
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !197, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !205, metadata !DIExpression()), !dbg !287
  %102 = fmul double %78, %handler_result78, !dbg !286
  %handler_result79 = call double @fSubHandlerDouble(double %102, double %handler_result76), !dbg !288
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double 0x3FF1103DDFDB89FB), !dbg !289
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !196, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !274
  tail call void @llvm.dbg.value(metadata double poison, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !274
  %103 = tail call double @sqrt(double noundef %0) #5, !dbg !289
  %104 = fmul double %103, %handler_result80, !dbg !290
  %handler_result81 = call double @fSubHandlerDouble(double 0x3FCCE6BB25AA1316, double %0), !dbg !291
  %105 = tail call double @exp(double noundef %handler_result81) #5, !dbg !291
  %106 = fmul double %105, %104, !dbg !292
  store double %106, ptr %1, align 8, !dbg !293, !tbaa !157
  %107 = fmul double %106, 0x3CC0000000000000, !dbg !294
  %108 = tail call double @llvm.fabs.f64(double %handler_result81), !dbg !295
  %handler_result82 = call double @fAddHandlerDouble(double %108, double 1.000000e+00), !dbg !296
  %109 = fmul double %handler_result82, %107, !dbg !296
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !297
  store double %109, ptr %110, align 8, !dbg !298, !tbaa !162
  br label %113

111:                                              ; preds = %73
  store double 0.000000e+00, ptr %1, align 8, !dbg !299, !tbaa !157
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !299
  store double 0x10000000000000, ptr %112, align 8, !dbg !299, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 15) #5, !dbg !302
  br label %113, !dbg !302

113:                                              ; preds = %111, %75, %59, %8, %4
  %114 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %59 ], [ 0, %75 ], [ 15, %111 ], !dbg !304
  ret i32 %114, !dbg !305
}

declare !dbg !306 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !311 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !315 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !320 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !323 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_synchrotron_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !324 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !326, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !327, metadata !DIExpression()), !dbg !345
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !346
  br i1 %3, label %4, label %6, !dbg !347

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !348, !tbaa !157
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !348
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !348, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 1) #5, !dbg !351
  br label %105, !dbg !351

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !353
  br i1 %7, label %8, label %16, !dbg !354

8:                                                ; preds = %6
  %9 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #5, !dbg !355
  tail call void @llvm.dbg.value(metadata double %9, metadata !328, metadata !DIExpression()), !dbg !356
  %10 = fmul double %9, 0x3FF2D7BE2398B31C, !dbg !357
  %11 = fmul double %10, %0, !dbg !358
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !359
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !332, metadata !DIExpression()), !dbg !356
  %12 = fmul double %9, 0x3FF1323BDCD9C076, !dbg !359
  %13 = fmul double %12, %handler_result, !dbg !360
  store double %13, ptr %1, align 8, !dbg !361, !tbaa !157
  %14 = fmul double %13, 0x3CC0000000000000, !dbg !362
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !363
  store double %14, ptr %15, align 8, !dbg !364, !tbaa !162
  br label %105

16:                                               ; preds = %6
  %17 = fcmp ugt double %0, 4.000000e+00, !dbg !365
  br i1 %17, label %71, label %18, !dbg !366

18:                                               ; preds = %16
  %19 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #5, !dbg !367
  tail call void @llvm.dbg.value(metadata double %19, metadata !333, metadata !DIExpression()), !dbg !368
  %20 = tail call double @gsl_sf_pow_int(double noundef %19, i32 noundef 5) #5, !dbg !369
  tail call void @llvm.dbg.value(metadata double %20, metadata !336, metadata !DIExpression()), !dbg !368
  %21 = fmul double %0, %0, !dbg !370
  %22 = fmul double %21, 1.250000e-01, !dbg !371
  %handler_result1 = call double @fAddHandlerDouble(double %22, double -1.000000e+00), !dbg !372
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !337, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !193, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !374
  %23 = fmul double %handler_result1, 2.000000e+00, !dbg !372
  %handler_result2 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !375
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !376
  %24 = fmul double %handler_result3, 5.000000e-01, !dbg !376
  call void @llvm.dbg.value(metadata double %24, metadata !198, metadata !DIExpression()), !dbg !374
  %25 = fmul double %24, 2.000000e+00, !dbg !377
  call void @llvm.dbg.value(metadata double %25, metadata !199, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32 12, metadata !195, metadata !DIExpression()), !dbg !374
  br label %26, !dbg !378

26:                                               ; preds = %26, %18
  %27 = phi i64 [ 12, %18 ], [ %37, %26 ]
  %28 = phi double [ 0.000000e+00, %18 ], [ %handler_result5, %26 ]
  %29 = phi double [ 0.000000e+00, %18 ], [ %handler_result8, %26 ]
  %30 = phi double [ 0.000000e+00, %18 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !195, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %28, metadata !196, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %29, metadata !200, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %30, metadata !197, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %28, metadata !201, metadata !DIExpression()), !dbg !379
  %31 = fmul double %25, %28, !dbg !380
  %handler_result4 = call double @fSubHandlerDouble(double %31, double %30), !dbg !381
  %32 = getelementptr inbounds double, ptr @synchrotron21_data, i64 %27, !dbg !381
  %33 = load double, ptr %32, align 8, !dbg !381, !tbaa !217
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %33), !dbg !382
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !196, metadata !DIExpression()), !dbg !374
  %34 = tail call double @llvm.fabs.f64(double %31), !dbg !382
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !383
  %handler_result6 = call double @fAddHandlerDouble(double %34, double %35), !dbg !384
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !384
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %36), !dbg !385
  %handler_result8 = call double @fAddHandlerDouble(double %29, double %handler_result7), !dbg !386
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !200, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %28, metadata !197, metadata !DIExpression()), !dbg !374
  %37 = add nsw i64 %27, -1, !dbg !386
  call void @llvm.dbg.value(metadata i64 %37, metadata !195, metadata !DIExpression()), !dbg !374
  %38 = icmp ugt i64 %27, 1, !dbg !387
  br i1 %38, label %26, label %39, !dbg !378, !llvm.loop !388

39:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !205, metadata !DIExpression()), !dbg !390
  %40 = fmul double %24, %handler_result5, !dbg !391
  %handler_result9 = call double @fSubHandlerDouble(double %40, double %28), !dbg !392
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x40334F1560ED88DB), !dbg !393
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !196, metadata !DIExpression()), !dbg !374
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !393
  %42 = tail call double @llvm.fabs.f64(double %28), !dbg !394
  %handler_result11 = call double @fAddHandlerDouble(double %42, double %41), !dbg !395
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x40334F1560ED88DB), !dbg !396
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !397
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !200, metadata !DIExpression()), !dbg !374
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !338, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !368
  %43 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !397
  %handler_result14 = call double @fAddHandlerDouble(double %43, double 1.560000e-16), !dbg !398
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !338, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !368
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !193, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !400
  %handler_result15 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !401
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !402
  %44 = fmul double %handler_result16, 5.000000e-01, !dbg !402
  call void @llvm.dbg.value(metadata double %44, metadata !198, metadata !DIExpression()), !dbg !400
  %45 = fmul double %44, 2.000000e+00, !dbg !403
  call void @llvm.dbg.value(metadata double %45, metadata !199, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 12, metadata !195, metadata !DIExpression()), !dbg !400
  br label %46, !dbg !404

46:                                               ; preds = %46, %39
  %47 = phi i64 [ 12, %39 ], [ %57, %46 ]
  %48 = phi double [ 0.000000e+00, %39 ], [ %handler_result18, %46 ]
  %49 = phi double [ 0.000000e+00, %39 ], [ %handler_result21, %46 ]
  %50 = phi double [ 0.000000e+00, %39 ], [ %48, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !195, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %48, metadata !196, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %50, metadata !197, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %48, metadata !201, metadata !DIExpression()), !dbg !405
  %51 = fmul double %45, %48, !dbg !406
  %handler_result17 = call double @fSubHandlerDouble(double %51, double %50), !dbg !407
  %52 = getelementptr inbounds double, ptr @synchrotron22_data, i64 %47, !dbg !407
  %53 = load double, ptr %52, align 8, !dbg !407, !tbaa !217
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %53), !dbg !408
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !196, metadata !DIExpression()), !dbg !400
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !408
  %55 = tail call double @llvm.fabs.f64(double %50), !dbg !409
  %handler_result19 = call double @fAddHandlerDouble(double %54, double %55), !dbg !410
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !410
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %56), !dbg !411
  %handler_result21 = call double @fAddHandlerDouble(double %49, double %handler_result20), !dbg !412
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !200, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %48, metadata !197, metadata !DIExpression()), !dbg !400
  %57 = add nsw i64 %47, -1, !dbg !412
  call void @llvm.dbg.value(metadata i64 %57, metadata !195, metadata !DIExpression()), !dbg !400
  %58 = icmp ugt i64 %47, 1, !dbg !413
  br i1 %58, label %46, label %59, !dbg !404, !llvm.loop !414

59:                                               ; preds = %46
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !205, metadata !DIExpression()), !dbg !416
  %60 = fmul double %44, %handler_result18, !dbg !417
  %handler_result22 = call double @fSubHandlerDouble(double %60, double %48), !dbg !418
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x400FA010FE7883CD), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !196, metadata !DIExpression()), !dbg !400
  %61 = tail call double @llvm.fabs.f64(double %60), !dbg !419
  %62 = tail call double @llvm.fabs.f64(double %48), !dbg !420
  %handler_result24 = call double @fAddHandlerDouble(double %62, double %61), !dbg !421
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x400FA010FE7883CD), !dbg !422
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result25), !dbg !423
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !200, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !368
  %63 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !423
  %handler_result27 = call double @fAddHandlerDouble(double %63, double 2.100000e-18), !dbg !424
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !368
  %64 = fmul double %19, %handler_result10, !dbg !424
  %65 = fmul double %20, %handler_result23, !dbg !425
  %handler_result28 = call double @fSubHandlerDouble(double %64, double %65), !dbg !426
  store double %handler_result28, ptr %1, align 8, !dbg !426, !tbaa !157
  %66 = fmul double %19, %handler_result14, !dbg !427
  %67 = fmul double %20, %handler_result27, !dbg !428
  %handler_result29 = call double @fAddHandlerDouble(double %66, double %67), !dbg !429
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !429
  %69 = tail call double @llvm.fabs.f64(double %handler_result28), !dbg !430
  %70 = fmul double %69, 0x3CC0000000000000, !dbg !431
  %handler_result30 = call double @fAddHandlerDouble(double %70, double %handler_result29), !dbg !432
  store double %handler_result30, ptr %68, align 8, !dbg !432, !tbaa !162
  br label %105

71:                                               ; preds = %16
  %72 = fcmp olt double %0, 0x40894CC46AD56A15, !dbg !433
  br i1 %72, label %73, label %103, !dbg !434

73:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata double 0x3FCCE6BB25AA1316, metadata !340, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double poison, metadata !343, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata !208, metadata !192, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !193, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !198, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !436
  %handler_result31 = call double @fSubHandlerDouble(double 1.000000e+01, double %0), !dbg !438
  %handler_result32 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !439
  %74 = fdiv double %handler_result31, %handler_result32, !dbg !439
  tail call void @llvm.dbg.value(metadata double %74, metadata !343, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %74, metadata !193, metadata !DIExpression()), !dbg !436
  %75 = fmul double %74, 2.000000e+00, !dbg !440
  %handler_result33 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !441
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double -1.000000e+00), !dbg !442
  %76 = fmul double %handler_result34, 5.000000e-01, !dbg !442
  call void @llvm.dbg.value(metadata double %76, metadata !198, metadata !DIExpression()), !dbg !436
  %77 = fmul double %76, 2.000000e+00, !dbg !443
  call void @llvm.dbg.value(metadata double %77, metadata !199, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 16, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !444
  %78 = fmul double %77, 0.000000e+00, !dbg !445
  %handler_result35 = call double @fAddHandlerDouble(double %78, double 3.000000e-18), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 15, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 15, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !201, metadata !DIExpression()), !dbg !444
  %79 = fmul double %77, %handler_result35, !dbg !445
  %handler_result36 = call double @fAddHandlerDouble(double %79, double 3.070000e-17), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 14, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 14, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !201, metadata !DIExpression()), !dbg !444
  %80 = fmul double %77, %handler_result36, !dbg !445
  %handler_result37 = call double @fSubHandlerDouble(double %80, double %handler_result35), !dbg !446
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 3.190000e-16), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 13, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 13, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !201, metadata !DIExpression()), !dbg !444
  %81 = fmul double %77, %handler_result38, !dbg !445
  %handler_result39 = call double @fSubHandlerDouble(double %81, double %handler_result36), !dbg !446
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 3.330100e-15), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 12, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 12, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !201, metadata !DIExpression()), !dbg !444
  %82 = fmul double %77, %handler_result40, !dbg !445
  %handler_result41 = call double @fSubHandlerDouble(double %82, double %handler_result38), !dbg !446
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 3.480230e-14), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 11, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 11, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !201, metadata !DIExpression()), !dbg !444
  %83 = fmul double %77, %handler_result42, !dbg !445
  %handler_result43 = call double @fSubHandlerDouble(double %83, double %handler_result40), !dbg !446
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3D59C3A7357438EA), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 10, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 10, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !201, metadata !DIExpression()), !dbg !444
  %84 = fmul double %77, %handler_result44, !dbg !445
  %handler_result45 = call double @fSubHandlerDouble(double %84, double %handler_result42), !dbg !446
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0x3D90FC9241CF4DEF), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 9, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 9, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !201, metadata !DIExpression()), !dbg !444
  %85 = fmul double %77, %handler_result46, !dbg !445
  %handler_result47 = call double @fSubHandlerDouble(double %85, double %handler_result44), !dbg !446
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 0x3DC68E02C94F5417), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 8, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 8, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !201, metadata !DIExpression()), !dbg !444
  %86 = fmul double %77, %handler_result48, !dbg !445
  %handler_result49 = call double @fSubHandlerDouble(double %86, double %handler_result46), !dbg !446
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 0x3DFE1AAFCD0CDDF7), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 7, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 7, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !201, metadata !DIExpression()), !dbg !444
  %87 = fmul double %77, %handler_result50, !dbg !445
  %handler_result51 = call double @fSubHandlerDouble(double %87, double %handler_result48), !dbg !446
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 0x3E3445504CDF18C3), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 6, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 6, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !201, metadata !DIExpression()), !dbg !444
  %88 = fmul double %77, %handler_result52, !dbg !445
  %handler_result53 = call double @fSubHandlerDouble(double %88, double %handler_result50), !dbg !446
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double 0x3E6B8850E14A648E), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 5, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 5, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !201, metadata !DIExpression()), !dbg !444
  %89 = fmul double %77, %handler_result54, !dbg !445
  %handler_result55 = call double @fSubHandlerDouble(double %89, double %handler_result52), !dbg !446
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0x3EA2F3C2CE92E7AF), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 4, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 4, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !201, metadata !DIExpression()), !dbg !444
  %90 = fmul double %77, %handler_result56, !dbg !445
  %handler_result57 = call double @fSubHandlerDouble(double %90, double %handler_result54), !dbg !446
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3EDA79EF10445095), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 3, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 3, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !201, metadata !DIExpression()), !dbg !444
  %91 = fmul double %77, %handler_result58, !dbg !445
  %handler_result59 = call double @fSubHandlerDouble(double %91, double %handler_result56), !dbg !446
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double 0x3F12F6DBB13E72B8), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 2, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 2, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !201, metadata !DIExpression()), !dbg !444
  %92 = fmul double %77, %handler_result60, !dbg !445
  %handler_result61 = call double @fSubHandlerDouble(double %92, double %handler_result58), !dbg !446
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double 0x3F4BFDDF26FC1FE5), !dbg !445
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !201, metadata !DIExpression()), !dbg !444
  %93 = fmul double %77, %handler_result62, !dbg !445
  %handler_result63 = call double @fSubHandlerDouble(double %93, double %handler_result60), !dbg !446
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result63, double 0x3F8670394100C94F), !dbg !447
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !197, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !205, metadata !DIExpression()), !dbg !448
  %94 = fmul double %76, %handler_result64, !dbg !447
  %handler_result65 = call double @fSubHandlerDouble(double %94, double %handler_result62), !dbg !449
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 0x3FF029A67E92DF00), !dbg !450
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !196, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double poison, metadata !200, metadata !DIExpression()), !dbg !436
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !435
  tail call void @llvm.dbg.value(metadata double poison, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !435
  %95 = tail call double @sqrt(double noundef %0) #5, !dbg !450
  %handler_result67 = call double @fSubHandlerDouble(double 0x3FCCE6BB25AA1316, double %0), !dbg !451
  %96 = tail call double @exp(double noundef %handler_result67) #5, !dbg !451
  %97 = fmul double %95, %96, !dbg !452
  %98 = fmul double %handler_result66, %97, !dbg !453
  store double %98, ptr %1, align 8, !dbg !454, !tbaa !157
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !455
  %100 = tail call double @llvm.fabs.f64(double %handler_result67), !dbg !456
  %handler_result68 = call double @fAddHandlerDouble(double %100, double 1.000000e+00), !dbg !457
  %101 = fmul double %handler_result68, %99, !dbg !457
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !458
  store double %101, ptr %102, align 8, !dbg !459, !tbaa !162
  br label %105

103:                                              ; preds = %71
  store double 0.000000e+00, ptr %1, align 8, !dbg !460, !tbaa !157
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !460
  store double 0x10000000000000, ptr %104, align 8, !dbg !460, !tbaa !162
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 15) #5, !dbg !463
  br label %105, !dbg !463

105:                                              ; preds = %103, %73, %59, %8, %4
  %106 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %59 ], [ 0, %73 ], [ 15, %103 ], !dbg !465
  ret i32 %106, !dbg !466
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_synchrotron_1(double noundef %0) local_unnamed_addr #0 !dbg !467 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !472, metadata !DIExpression(), metadata !474, metadata ptr %2, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata double %0, metadata !471, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !476
  %3 = call i32 @gsl_sf_synchrotron_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !476, !range !477
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !473, metadata !DIExpression()), !dbg !475
  %4 = icmp eq i32 %3, 0, !dbg !478
  br i1 %4, label %6, label %5, !dbg !476

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef %3) #5, !dbg !480
  br label %6, !dbg !480

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !476, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !483
  ret double %7, !dbg !483
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_synchrotron_2(double noundef %0) local_unnamed_addr #0 !dbg !484 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !489, metadata ptr %2, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double %0, metadata !486, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !491
  %3 = call i32 @gsl_sf_synchrotron_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !491, !range !477
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !488, metadata !DIExpression()), !dbg !490
  %4 = icmp eq i32 %3, 0, !dbg !492
  br i1 %4, label %6, label %5, !dbg !491

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %3) #5, !dbg !494
  br label %6, !dbg !494

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !491, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !497
  ret double %7, !dbg !497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!171 = !DILocation(line: 195, column: 42, scope: !134)
!172 = !DILocation(line: 195, column: 46, scope: !134)
!173 = !DILocation(line: 195, column: 17, scope: !134)
!174 = !DILocation(line: 196, column: 35, scope: !134)
!175 = !DILocation(line: 196, column: 13, scope: !134)
!176 = !DILocation(line: 196, column: 17, scope: !134)
!177 = !DILocation(line: 199, column: 13, scope: !140)
!178 = !DILocation(line: 199, column: 11, scope: !135)
!179 = !DILocation(line: 0, scope: !139)
!180 = !DILocation(line: 201, column: 25, scope: !139)
!181 = !DILocation(line: 202, column: 25, scope: !139)
!182 = !DILocation(line: 203, column: 23, scope: !139)
!183 = !DILocation(line: 203, column: 25, scope: !139)
!184 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !207)
!185 = distinct !DISubprogram(name: "cheb_eval_e", scope: !186, file: !186, line: 3, type: !187, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !191)
!186 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!187 = !DISubroutineType(types: !188)
!188 = !{!30, !189, !122, !123}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !205}
!192 = !DILocalVariable(name: "cs", arg: 1, scope: !185, file: !186, line: 3, type: !189)
!193 = !DILocalVariable(name: "x", arg: 2, scope: !185, file: !186, line: 4, type: !122)
!194 = !DILocalVariable(name: "result", arg: 3, scope: !185, file: !186, line: 5, type: !123)
!195 = !DILocalVariable(name: "j", scope: !185, file: !186, line: 7, type: !30)
!196 = !DILocalVariable(name: "d", scope: !185, file: !186, line: 8, type: !76)
!197 = !DILocalVariable(name: "dd", scope: !185, file: !186, line: 9, type: !76)
!198 = !DILocalVariable(name: "y", scope: !185, file: !186, line: 11, type: !76)
!199 = !DILocalVariable(name: "y2", scope: !185, file: !186, line: 12, type: !76)
!200 = !DILocalVariable(name: "e", scope: !185, file: !186, line: 14, type: !76)
!201 = !DILocalVariable(name: "temp", scope: !202, file: !186, line: 17, type: !76)
!202 = distinct !DILexicalBlock(scope: !203, file: !186, line: 16, column: 33)
!203 = distinct !DILexicalBlock(scope: !204, file: !186, line: 16, column: 3)
!204 = distinct !DILexicalBlock(scope: !185, file: !186, line: 16, column: 3)
!205 = !DILocalVariable(name: "temp", scope: !206, file: !186, line: 24, type: !76)
!206 = distinct !DILexicalBlock(scope: !185, file: !186, line: 23, column: 3)
!207 = distinct !DILocation(line: 206, column: 5, scope: !139)
!208 = !{}
!209 = !DILocation(line: 0, scope: !185, inlinedAt: !207)
!210 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !207)
!211 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !207)
!212 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !207)
!213 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !207)
!214 = !DILocation(line: 0, scope: !202, inlinedAt: !207)
!215 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !207)
!216 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !207)
!217 = !{!159, !159, i64 0}
!218 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !207)
!219 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !207)
!220 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !207)
!221 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !207)
!222 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !207)
!223 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !207)
!224 = distinct !{!224, !213, !225, !226}
!225 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !207)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 0, scope: !206, inlinedAt: !207)
!228 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !207)
!229 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !207)
!230 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !207)
!231 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !207)
!232 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !207)
!233 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !207)
!234 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !207)
!235 = !DILocation(line: 11, column: 22, scope: !185, inlinedAt: !236)
!236 = distinct !DILocation(line: 207, column: 5, scope: !139)
!237 = !DILocation(line: 0, scope: !185, inlinedAt: !236)
!238 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !236)
!239 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !236)
!240 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !236)
!241 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !236)
!242 = !DILocation(line: 0, scope: !202, inlinedAt: !236)
!243 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !236)
!244 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !236)
!245 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !236)
!246 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !236)
!247 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !236)
!248 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !236)
!249 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !236)
!250 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !236)
!251 = distinct !{!251, !241, !252, !226}
!252 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !236)
!253 = !DILocation(line: 0, scope: !206, inlinedAt: !236)
!254 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !236)
!255 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !236)
!256 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !236)
!257 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !236)
!258 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !236)
!259 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !236)
!260 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !236)
!261 = !DILocation(line: 208, column: 23, scope: !139)
!262 = !DILocation(line: 208, column: 46, scope: !139)
!263 = !DILocation(line: 208, column: 67, scope: !139)
!264 = !DILocation(line: 208, column: 18, scope: !139)
!265 = !DILocation(line: 209, column: 23, scope: !139)
!266 = !DILocation(line: 209, column: 46, scope: !139)
!267 = !DILocation(line: 209, column: 71, scope: !139)
!268 = !DILocation(line: 209, column: 13, scope: !139)
!269 = !DILocation(line: 210, column: 44, scope: !139)
!270 = !DILocation(line: 210, column: 42, scope: !139)
!271 = !DILocation(line: 210, column: 17, scope: !139)
!272 = !DILocation(line: 213, column: 13, scope: !148)
!273 = !DILocation(line: 213, column: 11, scope: !140)
!274 = !DILocation(line: 0, scope: !147)
!275 = !DILocation(line: 0, scope: !185, inlinedAt: !276)
!276 = distinct !DILocation(line: 217, column: 5, scope: !147)
!277 = !DILocation(line: 215, column: 38, scope: !147)
!278 = !DILocation(line: 215, column: 33, scope: !147)
!279 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !276)
!280 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !276)
!281 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !276)
!282 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !276)
!283 = !DILocation(line: 0, scope: !202, inlinedAt: !276)
!284 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !276)
!285 = !DILocation(line: 18, column: 19, scope: !202, inlinedAt: !276)
!286 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !276)
!287 = !DILocation(line: 0, scope: !206, inlinedAt: !276)
!288 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !276)
!289 = !DILocation(line: 218, column: 19, scope: !147)
!290 = !DILocation(line: 218, column: 27, scope: !147)
!291 = !DILocation(line: 218, column: 45, scope: !147)
!292 = !DILocation(line: 218, column: 43, scope: !147)
!293 = !DILocation(line: 218, column: 17, scope: !147)
!294 = !DILocation(line: 219, column: 41, scope: !147)
!295 = !DILocation(line: 219, column: 58, scope: !147)
!296 = !DILocation(line: 219, column: 55, scope: !147)
!297 = !DILocation(line: 219, column: 13, scope: !147)
!298 = !DILocation(line: 219, column: 17, scope: !147)
!299 = !DILocation(line: 223, column: 5, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 223, column: 5)
!301 = distinct !DILexicalBlock(scope: !148, file: !2, line: 222, column: 8)
!302 = !DILocation(line: 223, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !2, line: 223, column: 5)
!304 = !DILocation(line: 0, scope: !136)
!305 = !DILocation(line: 225, column: 1, scope: !119)
!306 = !DISubprogram(name: "gsl_error", scope: !29, file: !29, line: 77, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309, !309, !30, !30}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!311 = !DISubprogram(name: "pow", scope: !312, file: !312, line: 140, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!313 = !DISubroutineType(types: !314)
!314 = !{!76, !76, !76}
!315 = !DISubprogram(name: "gsl_sf_pow_int", scope: !316, file: !316, line: 44, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!317 = !DISubroutineType(types: !318)
!318 = !{!76, !122, !319}
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!320 = !DISubprogram(name: "sqrt", scope: !312, file: !312, line: 143, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!76, !76}
!323 = !DISubprogram(name: "exp", scope: !312, file: !312, line: 95, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2_e", scope: !2, file: !2, line: 228, type: !120, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !325)
!325 = !{!326, !327, !328, !332, !333, !336, !337, !338, !339, !340, !343, !344}
!326 = !DILocalVariable(name: "x", arg: 1, scope: !324, file: !2, line: 228, type: !122)
!327 = !DILocalVariable(name: "result", arg: 2, scope: !324, file: !2, line: 228, type: !123)
!328 = !DILocalVariable(name: "z", scope: !329, file: !2, line: 240, type: !76)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 235, column: 49)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 235, column: 11)
!331 = distinct !DILexicalBlock(scope: !324, file: !2, line: 232, column: 6)
!332 = !DILocalVariable(name: "cf", scope: !329, file: !2, line: 241, type: !76)
!333 = !DILocalVariable(name: "px", scope: !334, file: !2, line: 247, type: !122)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 246, column: 21)
!335 = distinct !DILexicalBlock(scope: !330, file: !2, line: 246, column: 11)
!336 = !DILocalVariable(name: "px5", scope: !334, file: !2, line: 248, type: !122)
!337 = !DILocalVariable(name: "t", scope: !334, file: !2, line: 249, type: !122)
!338 = !DILocalVariable(name: "cheb1", scope: !334, file: !2, line: 250, type: !124)
!339 = !DILocalVariable(name: "cheb2", scope: !334, file: !2, line: 251, type: !124)
!340 = !DILocalVariable(name: "c0", scope: !341, file: !2, line: 260, type: !122)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 41)
!342 = distinct !DILexicalBlock(scope: !335, file: !2, line: 259, column: 11)
!343 = !DILocalVariable(name: "t", scope: !341, file: !2, line: 261, type: !122)
!344 = !DILocalVariable(name: "cheb1", scope: !341, file: !2, line: 262, type: !124)
!345 = !DILocation(line: 0, scope: !324)
!346 = !DILocation(line: 232, column: 8, scope: !331)
!347 = !DILocation(line: 232, column: 6, scope: !324)
!348 = !DILocation(line: 233, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 233, column: 5)
!350 = distinct !DILexicalBlock(scope: !331, file: !2, line: 232, column: 15)
!351 = !DILocation(line: 233, column: 5, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !2, line: 233, column: 5)
!353 = !DILocation(line: 235, column: 13, scope: !330)
!354 = !DILocation(line: 235, column: 11, scope: !331)
!355 = !DILocation(line: 240, column: 16, scope: !329)
!356 = !DILocation(line: 0, scope: !329)
!357 = !DILocation(line: 241, column: 42, scope: !329)
!358 = !DILocation(line: 241, column: 46, scope: !329)
!359 = !DILocation(line: 242, column: 42, scope: !329)
!360 = !DILocation(line: 242, column: 46, scope: !329)
!361 = !DILocation(line: 242, column: 17, scope: !329)
!362 = !DILocation(line: 243, column: 41, scope: !329)
!363 = !DILocation(line: 243, column: 13, scope: !329)
!364 = !DILocation(line: 243, column: 17, scope: !329)
!365 = !DILocation(line: 246, column: 13, scope: !335)
!366 = !DILocation(line: 246, column: 11, scope: !330)
!367 = !DILocation(line: 247, column: 24, scope: !334)
!368 = !DILocation(line: 0, scope: !334)
!369 = !DILocation(line: 248, column: 24, scope: !334)
!370 = !DILocation(line: 249, column: 23, scope: !334)
!371 = !DILocation(line: 249, column: 25, scope: !334)
!372 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !373)
!373 = distinct !DILocation(line: 252, column: 5, scope: !334)
!374 = !DILocation(line: 0, scope: !185, inlinedAt: !373)
!375 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !373)
!376 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !373)
!377 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !373)
!378 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !373)
!379 = !DILocation(line: 0, scope: !202, inlinedAt: !373)
!380 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !373)
!381 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !373)
!382 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !373)
!383 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !373)
!384 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !373)
!385 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !373)
!386 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !373)
!387 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !373)
!388 = distinct !{!388, !378, !389, !226}
!389 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !373)
!390 = !DILocation(line: 0, scope: !206, inlinedAt: !373)
!391 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !373)
!392 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !373)
!393 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !373)
!394 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !373)
!395 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !373)
!396 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !373)
!397 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !373)
!398 = !DILocation(line: 11, column: 22, scope: !185, inlinedAt: !399)
!399 = distinct !DILocation(line: 253, column: 5, scope: !334)
!400 = !DILocation(line: 0, scope: !185, inlinedAt: !399)
!401 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !399)
!402 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !399)
!403 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !399)
!404 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !399)
!405 = !DILocation(line: 0, scope: !202, inlinedAt: !399)
!406 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !399)
!407 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !399)
!408 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !399)
!409 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !399)
!410 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !399)
!411 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !399)
!412 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !399)
!413 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !399)
!414 = distinct !{!414, !404, !415, !226}
!415 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !399)
!416 = !DILocation(line: 0, scope: !206, inlinedAt: !399)
!417 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !399)
!418 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !399)
!419 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !399)
!420 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !399)
!421 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !399)
!422 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !399)
!423 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !399)
!424 = !DILocation(line: 254, column: 23, scope: !334)
!425 = !DILocation(line: 254, column: 41, scope: !334)
!426 = !DILocation(line: 254, column: 18, scope: !334)
!427 = !DILocation(line: 255, column: 23, scope: !334)
!428 = !DILocation(line: 255, column: 41, scope: !334)
!429 = !DILocation(line: 255, column: 13, scope: !334)
!430 = !DILocation(line: 256, column: 44, scope: !334)
!431 = !DILocation(line: 256, column: 42, scope: !334)
!432 = !DILocation(line: 256, column: 17, scope: !334)
!433 = !DILocation(line: 259, column: 13, scope: !342)
!434 = !DILocation(line: 259, column: 11, scope: !335)
!435 = !DILocation(line: 0, scope: !341)
!436 = !DILocation(line: 0, scope: !185, inlinedAt: !437)
!437 = distinct !DILocation(line: 263, column: 5, scope: !341)
!438 = !DILocation(line: 261, column: 39, scope: !341)
!439 = !DILocation(line: 261, column: 34, scope: !341)
!440 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !437)
!441 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !437)
!442 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !437)
!443 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !437)
!444 = !DILocation(line: 0, scope: !202, inlinedAt: !437)
!445 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !437)
!446 = !DILocation(line: 18, column: 19, scope: !202, inlinedAt: !437)
!447 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !437)
!448 = !DILocation(line: 0, scope: !206, inlinedAt: !437)
!449 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !437)
!450 = !DILocation(line: 264, column: 19, scope: !341)
!451 = !DILocation(line: 264, column: 29, scope: !341)
!452 = !DILocation(line: 264, column: 27, scope: !341)
!453 = !DILocation(line: 264, column: 39, scope: !341)
!454 = !DILocation(line: 264, column: 17, scope: !341)
!455 = !DILocation(line: 265, column: 35, scope: !341)
!456 = !DILocation(line: 265, column: 52, scope: !341)
!457 = !DILocation(line: 265, column: 49, scope: !341)
!458 = !DILocation(line: 265, column: 13, scope: !341)
!459 = !DILocation(line: 265, column: 17, scope: !341)
!460 = !DILocation(line: 269, column: 5, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !2, line: 269, column: 5)
!462 = distinct !DILexicalBlock(scope: !342, file: !2, line: 268, column: 8)
!463 = !DILocation(line: 269, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !2, line: 269, column: 5)
!465 = !DILocation(line: 0, scope: !331)
!466 = !DILocation(line: 271, column: 1, scope: !324)
!467 = distinct !DISubprogram(name: "gsl_sf_synchrotron_1", scope: !2, file: !2, line: 277, type: !468, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!76, !122}
!470 = !{!471, !472, !473}
!471 = !DILocalVariable(name: "x", arg: 1, scope: !467, file: !2, line: 277, type: !122)
!472 = !DILocalVariable(name: "result", scope: !467, file: !2, line: 279, type: !124)
!473 = !DILocalVariable(name: "status", scope: !467, file: !2, line: 279, type: !30)
!474 = distinct !DIAssignID()
!475 = !DILocation(line: 0, scope: !467)
!476 = !DILocation(line: 279, column: 3, scope: !467)
!477 = !{i32 0, i32 16}
!478 = !DILocation(line: 279, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !467, file: !2, line: 279, column: 3)
!480 = !DILocation(line: 279, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !2, line: 279, column: 3)
!482 = distinct !DILexicalBlock(scope: !479, file: !2, line: 279, column: 3)
!483 = !DILocation(line: 280, column: 1, scope: !467)
!484 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2", scope: !2, file: !2, line: 282, type: !468, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !485)
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(name: "x", arg: 1, scope: !484, file: !2, line: 282, type: !122)
!487 = !DILocalVariable(name: "result", scope: !484, file: !2, line: 284, type: !124)
!488 = !DILocalVariable(name: "status", scope: !484, file: !2, line: 284, type: !30)
!489 = distinct !DIAssignID()
!490 = !DILocation(line: 0, scope: !484)
!491 = !DILocation(line: 284, column: 3, scope: !484)
!492 = !DILocation(line: 284, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !2, line: 284, column: 3)
!494 = !DILocation(line: 284, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !2, line: 284, column: 3)
!496 = distinct !DILexicalBlock(scope: !493, file: !2, line: 284, column: 3)
!497 = !DILocation(line: 285, column: 1, scope: !484)
